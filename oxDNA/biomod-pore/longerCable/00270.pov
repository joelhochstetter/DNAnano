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
	<24.496992, 35.364758, 34.982338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547012, 34.971333, 34.930229>,  <24.577024, 34.735279, 34.898964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547012, 34.971333, 34.930229>,  <24.496992, 35.364758, 34.982338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547012, 34.971333, 34.930229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788612, 0.178209, -0.588500,
		0.602041, -0.029139, 0.797934,
		0.125051, -0.983561, -0.130268,
		24.584528, 34.676266, 34.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257746, 35.270809, 35.060802>,  <24.496992, 35.364758, 34.982338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257746, 35.270809, 35.060802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078812, 34.974747, 34.859982>,  <24.971451, 34.797108, 34.739487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078812, 34.974747, 34.859982>,  <25.257746, 35.270809, 35.060802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078812, 34.974747, 34.859982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789372, -0.062842, -0.610690,
		0.420456, -0.669492, 0.612370,
		-0.447334, -0.740156, -0.502056,
		24.944611, 34.752701, 34.709366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956835, 35.212963, 34.761909>,  <25.257746, 35.270809, 35.060802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956835, 35.212963, 34.761909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676601, 35.110123, 34.495651>,  <25.508461, 35.048420, 34.335896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676601, 35.110123, 34.495651>,  <25.956835, 35.212963, 34.761909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676601, 35.110123, 34.495651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566642, 0.366530, -0.737952,
		0.433705, -0.894179, -0.111102,
		-0.700583, -0.257099, -0.665645,
		25.466427, 35.032993, 34.295959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279554, 34.923309, 34.268078>,  <25.956835, 35.212963, 34.761909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279554, 34.923309, 34.268078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935577, 35.018143, 34.087284>,  <25.729191, 35.075043, 33.978806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935577, 35.018143, 34.087284>,  <26.279554, 34.923309, 34.268078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935577, 35.018143, 34.087284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508195, 0.315641, -0.801316,
		-0.047310, -0.918783, -0.391916,
		-0.859942, 0.237080, -0.451988,
		25.677595, 35.089268, 33.951687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182022, 34.550617, 33.674057>,  <26.279554, 34.923309, 34.268078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182022, 34.550617, 33.674057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979176, 34.893368, 33.636978>,  <25.857468, 35.099018, 33.614731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979176, 34.893368, 33.636978>,  <26.182022, 34.550617, 33.674057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979176, 34.893368, 33.636978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437142, 0.163028, -0.884493,
		-0.742793, -0.489060, -0.457252,
		-0.507115, 0.856880, -0.092693,
		25.827042, 35.150433, 33.609169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828756, 34.547085, 32.957806>,  <26.182022, 34.550617, 33.674057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828756, 34.547085, 32.957806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912949, 34.914215, 33.092438>,  <25.963463, 35.134495, 33.173218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912949, 34.914215, 33.092438>,  <25.828756, 34.547085, 32.957806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912949, 34.914215, 33.092438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345254, 0.252319, -0.903955,
		-0.914603, 0.306470, -0.263777,
		0.210479, 0.917830, 0.336581,
		25.976093, 35.189564, 33.193413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669287, 35.007149, 32.470150>,  <25.828756, 34.547085, 32.957806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669287, 35.007149, 32.470150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932957, 35.207619, 32.694405>,  <26.091158, 35.327900, 32.828957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932957, 35.207619, 32.694405>,  <25.669287, 35.007149, 32.470150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932957, 35.207619, 32.694405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466554, 0.312130, -0.827588,
		-0.589760, 0.807090, -0.028079,
		0.659174, 0.501179, 0.560634,
		26.130709, 35.357971, 32.862595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667732, 35.660839, 32.278431>,  <25.669287, 35.007149, 32.470150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667732, 35.660839, 32.278431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024981, 35.595703, 32.446152>,  <26.239330, 35.556622, 32.546783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024981, 35.595703, 32.446152>,  <25.667732, 35.660839, 32.278431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024981, 35.595703, 32.446152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446403, 0.206245, -0.870740,
		0.055311, 0.964856, 0.256894,
		0.893121, -0.162839, 0.419306,
		26.292917, 35.546852, 32.571945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170397, 36.182117, 31.953726>,  <25.667732, 35.660839, 32.278431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170397, 36.182117, 31.953726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383448, 35.873337, 32.092522>,  <26.511278, 35.688068, 32.175800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383448, 35.873337, 32.092522>,  <26.170397, 36.182117, 31.953726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383448, 35.873337, 32.092522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609060, 0.064925, -0.790462,
		0.587668, 0.632360, 0.504745,
		0.532627, -0.771949, 0.346991,
		26.543236, 35.641750, 32.196617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855761, 36.405811, 31.906828>,  <26.170397, 36.182117, 31.953726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855761, 36.405811, 31.906828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862722, 36.005871, 31.906763>,  <26.866899, 35.765907, 31.906725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862722, 36.005871, 31.906763>,  <26.855761, 36.405811, 31.906828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862722, 36.005871, 31.906763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590955, 0.010417, -0.806637,
		0.806517, 0.013947, 0.591047,
		0.017407, -0.999848, -0.000160,
		26.867945, 35.705917, 31.906715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573643, 36.174946, 31.848793>,  <26.855761, 36.405811, 31.906828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573643, 36.174946, 31.848793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350691, 35.863907, 31.732405>,  <27.216921, 35.677284, 31.662571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350691, 35.863907, 31.732405>,  <27.573643, 36.174946, 31.848793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350691, 35.863907, 31.732405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517968, -0.051778, -0.853831,
		0.648875, -0.626621, 0.431632,
		-0.557378, -0.777602, -0.290973,
		27.183477, 35.630627, 31.645113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976627, 35.673420, 31.419113>,  <27.573643, 36.174946, 31.848793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976627, 35.673420, 31.419113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589254, 35.675144, 31.319416>,  <27.356831, 35.676178, 31.259598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589254, 35.675144, 31.319416>,  <27.976627, 35.673420, 31.419113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589254, 35.675144, 31.319416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245216, -0.163313, -0.955614,
		-0.044821, -0.986565, 0.157101,
		-0.968432, 0.004308, -0.249241,
		27.298725, 35.676437, 31.244644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820395, 35.096058, 30.945137>,  <27.976627, 35.673420, 31.419113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820395, 35.096058, 30.945137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535006, 35.369270, 30.882627>,  <27.363771, 35.533199, 30.845121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535006, 35.369270, 30.882627>,  <27.820395, 35.096058, 30.945137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535006, 35.369270, 30.882627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171482, -0.046037, -0.984111,
		-0.679375, -0.728935, -0.084282,
		-0.713473, 0.683033, -0.156276,
		27.320963, 35.574181, 30.835745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138977, 34.846451, 30.660732>,  <27.820395, 35.096058, 30.945137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138977, 34.846451, 30.660732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215113, 35.222538, 30.547762>,  <27.260794, 35.448189, 30.479980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215113, 35.222538, 30.547762>,  <27.138977, 34.846451, 30.660732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215113, 35.222538, 30.547762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062995, -0.275393, -0.959266,
		-0.979695, 0.200378, 0.006811,
		0.190340, 0.940217, -0.282424,
		27.272215, 35.504604, 30.463036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671740, 35.087582, 30.128012>,  <27.138977, 34.846451, 30.660732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671740, 35.087582, 30.128012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023266, 35.276890, 30.103685>,  <27.234182, 35.390476, 30.089088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023266, 35.276890, 30.103685>,  <26.671740, 35.087582, 30.128012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023266, 35.276890, 30.103685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013984, -0.152948, -0.988135,
		-0.476957, 0.867538, -0.141031,
		0.878815, 0.473270, -0.060818,
		27.286911, 35.418869, 30.085440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368891, 35.055855, 30.888103>,  <26.671740, 35.087582, 30.128012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368891, 35.055855, 30.888103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736282, 35.086792, 31.043236>,  <26.956717, 35.105354, 31.136316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736282, 35.086792, 31.043236>,  <26.368891, 35.055855, 30.888103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736282, 35.086792, 31.043236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389818, 0.011859, 0.920816,
		0.066622, -0.996934, 0.041043,
		0.918479, 0.077345, 0.387832,
		27.011826, 35.109993, 31.159586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539461, 34.586281, 31.405710>,  <26.368891, 35.055855, 30.888103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539461, 34.586281, 31.405710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768377, 34.906990, 31.474583>,  <26.905727, 35.099415, 31.515907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768377, 34.906990, 31.474583>,  <26.539461, 34.586281, 31.405710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768377, 34.906990, 31.474583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331976, 0.034522, 0.942656,
		0.749849, -0.596635, 0.285925,
		0.572292, 0.801770, 0.172182,
		26.940065, 35.147522, 31.526237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072405, 34.406513, 31.992102>,  <26.539461, 34.586281, 31.405710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072405, 34.406513, 31.992102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999344, 34.799679, 31.982908>,  <26.955507, 35.035576, 31.977392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999344, 34.799679, 31.982908>,  <27.072405, 34.406513, 31.992102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999344, 34.799679, 31.982908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233445, -0.020649, 0.972151,
		0.955062, 0.182929, 0.233227,
		-0.182650, 0.982910, -0.022983,
		26.944550, 35.094551, 31.976013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366882, 34.708073, 32.614704>,  <27.072405, 34.406513, 31.992102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366882, 34.708073, 32.614704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105083, 34.990135, 32.505608>,  <26.948004, 35.159374, 32.440151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105083, 34.990135, 32.505608>,  <27.366882, 34.708073, 32.614704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105083, 34.990135, 32.505608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279613, 0.109406, 0.953859,
		0.702460, 0.700560, 0.125565,
		-0.654498, 0.705157, -0.272739,
		26.908733, 35.201683, 32.423786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437393, 35.188911, 33.171844>,  <27.366882, 34.708073, 32.614704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437393, 35.188911, 33.171844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088999, 35.272137, 32.993813>,  <26.879963, 35.322071, 32.886993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088999, 35.272137, 32.993813>,  <27.437393, 35.188911, 33.171844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088999, 35.272137, 32.993813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452952, 0.010867, 0.891469,
		0.190317, 0.978055, 0.084777,
		-0.870985, 0.208061, -0.445080,
		26.827703, 35.334557, 32.860287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048576, 35.847221, 33.426376>,  <27.437393, 35.188911, 33.171844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048576, 35.847221, 33.426376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783785, 35.576118, 33.298363>,  <26.624910, 35.413456, 33.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783785, 35.576118, 33.298363>,  <27.048576, 35.847221, 33.426376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783785, 35.576118, 33.298363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521047, 0.109191, 0.846514,
		-0.538789, 0.727129, -0.425428,
		-0.661978, -0.677761, -0.320038,
		26.585192, 35.372791, 33.202351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374792, 35.997948, 33.708282>,  <27.048576, 35.847221, 33.426376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374792, 35.997948, 33.708282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347708, 35.604237, 33.643036>,  <26.331457, 35.368008, 33.603886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347708, 35.604237, 33.643036>,  <26.374792, 35.997948, 33.708282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347708, 35.604237, 33.643036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403697, -0.122485, 0.906657,
		-0.912384, 0.127242, -0.389057,
		-0.067711, -0.984280, -0.163121,
		26.327394, 35.308952, 33.594101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068916, 36.568020, 33.263847>,  <26.374792, 35.997948, 33.708282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068916, 36.568020, 33.263847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013741, 36.174423, 33.218716>,  <25.980635, 35.938267, 33.191639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013741, 36.174423, 33.218716>,  <26.068916, 36.568020, 33.263847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013741, 36.174423, 33.218716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925463, 0.087470, 0.368602,
		-0.352833, 0.155263, -0.922715,
		-0.137940, -0.983993, -0.112827,
		25.972359, 35.879227, 33.184868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489147, 36.381454, 33.698261>,  <26.068916, 36.568020, 33.263847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489147, 36.381454, 33.698261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557686, 36.041607, 33.498749>,  <25.598808, 35.837696, 33.379040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557686, 36.041607, 33.498749>,  <25.489147, 36.381454, 33.698261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557686, 36.041607, 33.498749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639971, -0.480898, 0.599311,
		-0.749051, 0.216518, -0.626133,
		0.171344, -0.849622, -0.498782,
		25.609089, 35.786720, 33.349113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905117, 36.092617, 33.527519>,  <25.489147, 36.381454, 33.698261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905117, 36.092617, 33.527519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179380, 35.801640, 33.538094>,  <25.343939, 35.627052, 33.544437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179380, 35.801640, 33.538094>,  <24.905117, 36.092617, 33.527519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179380, 35.801640, 33.538094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649914, -0.595417, 0.472324,
		-0.327852, -0.341031, -0.881029,
		0.685657, -0.727445, 0.026432,
		25.385077, 35.583405, 33.546024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551208, 35.435444, 33.387074>,  <24.905117, 36.092617, 33.527519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551208, 35.435444, 33.387074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896383, 35.334560, 33.562222>,  <25.103487, 35.274029, 33.667313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896383, 35.334560, 33.562222>,  <24.551208, 35.435444, 33.387074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896383, 35.334560, 33.562222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497943, -0.571897, 0.651909,
		0.085999, -0.780591, -0.619097,
		0.862935, -0.252211, 0.437873,
		25.155264, 35.258896, 33.693584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554686, 34.750526, 33.402756>,  <24.551208, 35.435444, 33.387074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554686, 34.750526, 33.402756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793570, 34.872021, 33.699696>,  <24.936899, 34.944916, 33.877861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793570, 34.872021, 33.699696>,  <24.554686, 34.750526, 33.402756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793570, 34.872021, 33.699696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383338, -0.704901, 0.596797,
		0.704553, -0.640984, -0.304540,
		0.597208, 0.303733, 0.742353,
		24.972733, 34.963142, 33.922401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001329, 34.160599, 33.711269>,  <24.554686, 34.750526, 33.402756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001329, 34.160599, 33.711269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.864748, 34.454716, 33.945450>,  <24.782799, 34.631187, 34.085957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.864748, 34.454716, 33.945450>,  <25.001329, 34.160599, 33.711269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.864748, 34.454716, 33.945450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587993, -0.653055, 0.477266,
		0.733262, -0.181275, 0.655337,
		-0.341455, 0.735295, 0.585449,
		24.762312, 34.675304, 34.121086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015350, 33.987709, 34.444061>,  <25.001329, 34.160599, 33.711269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015350, 33.987709, 34.444061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727297, 34.263798, 34.415756>,  <24.554464, 34.429451, 34.398773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727297, 34.263798, 34.415756>,  <25.015350, 33.987709, 34.444061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.727297, 34.263798, 34.415756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579503, -0.542248, 0.608394,
		0.381557, 0.479128, 0.790475,
		-0.720132, 0.690219, -0.070758,
		24.511257, 34.470863, 34.394527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831406, 33.247520, 34.473263>,  <25.015350, 33.987709, 34.444061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831406, 33.247520, 34.473263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145573, 33.125450, 34.257862>,  <25.334074, 33.052208, 34.128620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145573, 33.125450, 34.257862>,  <24.831406, 33.247520, 34.473263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145573, 33.125450, 34.257862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139233, -0.760599, 0.634116,
		-0.603101, -0.573024, -0.554899,
		0.785419, -0.305175, -0.538502,
		25.381199, 33.033897, 34.096310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876204, 32.506771, 34.474232>,  <24.831406, 33.247520, 34.473263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876204, 32.506771, 34.474232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252022, 32.619465, 34.396385>,  <25.477512, 32.687080, 34.349678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252022, 32.619465, 34.396385>,  <24.876204, 32.506771, 34.474232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252022, 32.619465, 34.396385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340212, -0.703647, 0.623808,
		0.038808, -0.652308, -0.756960,
		0.939547, 0.281736, -0.194616,
		25.533886, 32.703987, 34.338001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264494, 31.927347, 34.288448>,  <24.876204, 32.506771, 34.474232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264494, 31.927347, 34.288448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483576, 32.222698, 34.445835>,  <25.615025, 32.399910, 34.540268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483576, 32.222698, 34.445835>,  <25.264494, 31.927347, 34.288448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483576, 32.222698, 34.445835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335280, -0.624561, 0.705344,
		0.766555, -0.254399, -0.589639,
		0.547704, 0.738379, 0.393466,
		25.647886, 32.444214, 34.563873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894438, 31.602264, 34.461964>,  <25.264494, 31.927347, 34.288448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894438, 31.602264, 34.461964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886770, 31.946667, 34.665260>,  <25.882170, 32.153309, 34.787239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886770, 31.946667, 34.665260>,  <25.894438, 31.602264, 34.461964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886770, 31.946667, 34.665260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325633, -0.475238, 0.817381,
		0.945302, 0.181165, -0.271262,
		-0.019167, 0.861004, 0.508237,
		25.881020, 32.204967, 34.817730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544432, 31.575762, 34.823315>,  <25.894438, 31.602264, 34.461964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544432, 31.575762, 34.823315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279119, 31.811049, 35.008381>,  <26.119932, 31.952221, 35.119423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279119, 31.811049, 35.008381>,  <26.544432, 31.575762, 34.823315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279119, 31.811049, 35.008381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186291, -0.468999, 0.863328,
		0.724815, 0.658818, 0.201497,
		-0.663278, 0.588216, 0.462670,
		26.080135, 31.987513, 35.147182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146276, 31.023983, 35.146576>,  <26.544432, 31.575762, 34.823315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146276, 31.023983, 35.146576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538483, 31.077347, 35.088905>,  <26.773808, 31.109365, 35.054302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538483, 31.077347, 35.088905>,  <26.146276, 31.023983, 35.146576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538483, 31.077347, 35.088905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014186, -0.780163, -0.625415,
		-0.195917, 0.611185, -0.766857,
		0.980518, 0.133409, -0.144177,
		26.832638, 31.117369, 35.045650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661263, 31.159281, 35.730614>,  <26.146276, 31.023983, 35.146576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661263, 31.159281, 35.730614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469973, 31.481443, 35.590546>,  <26.355198, 31.674742, 35.506504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469973, 31.481443, 35.590546>,  <26.661263, 31.159281, 35.730614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469973, 31.481443, 35.590546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305279, 0.526304, 0.793605,
		0.823471, 0.272622, -0.497566,
		-0.478225, 0.805407, -0.350170,
		26.326506, 31.723066, 35.485493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060619, 31.754866, 35.794186>,  <26.661263, 31.159281, 35.730614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060619, 31.754866, 35.794186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691717, 31.905884, 35.760960>,  <26.470375, 31.996494, 35.741024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691717, 31.905884, 35.760960>,  <27.060619, 31.754866, 35.794186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691717, 31.905884, 35.760960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106032, 0.453684, 0.884832,
		0.371750, 0.807236, -0.458446,
		-0.922258, 0.377546, -0.083064,
		26.415039, 32.019146, 35.736042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153898, 32.491459, 35.956669>,  <27.060619, 31.754866, 35.794186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153898, 32.491459, 35.956669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774729, 32.378815, 36.016186>,  <26.547228, 32.311230, 36.051895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774729, 32.378815, 36.016186>,  <27.153898, 32.491459, 35.956669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774729, 32.378815, 36.016186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057265, 0.308855, 0.949384,
		-0.313312, 0.908462, -0.276644,
		-0.947922, -0.281611, 0.148790,
		26.490353, 32.294331, 36.060822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795528, 33.031483, 36.219780>,  <27.153898, 32.491459, 35.956669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795528, 33.031483, 36.219780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586649, 32.706505, 36.323505>,  <26.461321, 32.511517, 36.385742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586649, 32.706505, 36.323505>,  <26.795528, 33.031483, 36.219780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586649, 32.706505, 36.323505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178272, 0.193356, 0.964797,
		-0.833983, 0.550044, 0.043866,
		-0.522198, -0.812444, 0.259313,
		26.429989, 32.462772, 36.401299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311745, 33.159748, 36.735367>,  <26.795528, 33.031483, 36.219780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311745, 33.159748, 36.735367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418955, 32.776894, 36.779289>,  <26.483282, 32.547180, 36.805641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418955, 32.776894, 36.779289>,  <26.311745, 33.159748, 36.735367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418955, 32.776894, 36.779289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140833, 0.151676, 0.978346,
		-0.953062, -0.246759, 0.175449,
		0.268027, -0.957134, 0.109805,
		26.499363, 32.489754, 36.812229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439322, 32.678165, 37.413860>,  <26.311745, 33.159748, 36.735367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439322, 32.678165, 37.413860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322645, 32.337036, 37.587112>,  <26.252640, 32.132359, 37.691063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322645, 32.337036, 37.587112>,  <26.439322, 32.678165, 37.413860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322645, 32.337036, 37.587112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361225, -0.321074, -0.875459,
		0.885682, -0.411821, -0.214408,
		-0.291692, -0.852827, 0.433130,
		26.235138, 32.081188, 37.717052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764614, 32.008583, 37.416794>,  <26.439322, 32.678165, 37.413860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764614, 32.008583, 37.416794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368773, 32.065975, 37.412815>,  <26.131268, 32.100410, 37.410427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368773, 32.065975, 37.412815>,  <26.764614, 32.008583, 37.416794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368773, 32.065975, 37.412815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013842, -0.163881, -0.986383,
		-0.143144, -0.975992, 0.164163,
		-0.989605, 0.143467, -0.009949,
		26.071892, 32.109020, 37.409828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173429, 31.436546, 37.231895>,  <26.764614, 32.008583, 37.416794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173429, 31.436546, 37.231895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137121, 31.813839, 37.104095>,  <26.115337, 32.040215, 37.027416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137121, 31.813839, 37.104095>,  <26.173429, 31.436546, 37.231895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137121, 31.813839, 37.104095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205931, -0.331666, -0.920646,
		-0.974348, -0.017772, 0.224345,
		-0.090769, 0.943229, -0.319498,
		26.109890, 32.096809, 37.008247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632704, 31.537699, 36.818836>,  <26.173429, 31.436546, 37.231895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632704, 31.537699, 36.818836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881474, 31.817158, 36.677361>,  <26.030735, 31.984833, 36.592476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881474, 31.817158, 36.677361>,  <25.632704, 31.537699, 36.818836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881474, 31.817158, 36.677361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158368, -0.330122, -0.930558,
		-0.766896, 0.634751, -0.094667,
		0.621924, 0.698649, -0.353694,
		26.068050, 32.026752, 36.571251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254467, 31.732121, 36.271660>,  <25.632704, 31.537699, 36.818836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254467, 31.732121, 36.271660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608181, 31.913965, 36.229008>,  <25.820410, 32.023071, 36.203415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608181, 31.913965, 36.229008>,  <25.254467, 31.732121, 36.271660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608181, 31.913965, 36.229008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127804, 0.015996, -0.991671,
		-0.449121, 0.890546, 0.072246,
		0.884283, 0.454613, -0.106631,
		25.873466, 32.050350, 36.197018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084774, 32.205692, 35.850597>,  <25.254467, 31.732121, 36.271660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084774, 32.205692, 35.850597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483038, 32.196690, 35.814468>,  <25.721996, 32.191288, 35.792789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483038, 32.196690, 35.814468>,  <25.084774, 32.205692, 35.850597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483038, 32.196690, 35.814468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081629, 0.255302, -0.963409,
		0.044740, 0.966599, 0.252357,
		0.995658, -0.022503, -0.090325,
		25.781734, 32.189938, 35.787373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318895, 32.865456, 35.687920>,  <25.084774, 32.205692, 35.850597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318895, 32.865456, 35.687920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577833, 32.604542, 35.530201>,  <25.733196, 32.447994, 35.435570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577833, 32.604542, 35.530201>,  <25.318895, 32.865456, 35.687920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577833, 32.604542, 35.530201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016589, 0.505141, -0.862877,
		0.762016, 0.565121, 0.316181,
		0.647346, -0.652281, -0.394300,
		25.772038, 32.408859, 35.411911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897999, 33.288826, 35.536934>,  <25.318895, 32.865456, 35.687920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897999, 33.288826, 35.536934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879959, 32.962097, 35.306885>,  <25.869135, 32.766060, 35.168854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879959, 32.962097, 35.306885>,  <25.897999, 33.288826, 35.536934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879959, 32.962097, 35.306885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067785, 0.576889, -0.814006,
		0.996680, 0.002274, -0.081385,
		-0.045099, -0.816820, -0.575128,
		25.866428, 32.717052, 35.134346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504564, 33.295593, 35.099068>,  <25.897999, 33.288826, 35.536934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504564, 33.295593, 35.099068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231449, 33.057838, 34.929127>,  <26.067579, 32.915184, 34.827164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231449, 33.057838, 34.929127>,  <26.504564, 33.295593, 35.099068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231449, 33.057838, 34.929127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054577, 0.621369, -0.781615,
		0.728574, -0.510491, -0.456705,
		-0.682790, -0.594389, -0.424852,
		26.026611, 32.879520, 34.801670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541843, 33.227539, 34.362602>,  <26.504564, 33.295593, 35.099068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541843, 33.227539, 34.362602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158829, 33.119114, 34.401894>,  <25.929020, 33.054058, 34.425468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158829, 33.119114, 34.401894>,  <26.541843, 33.227539, 34.362602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158829, 33.119114, 34.401894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208082, 0.413916, -0.886214,
		0.199567, -0.869021, -0.452743,
		-0.957536, -0.271067, 0.098224,
		25.871569, 33.037792, 34.431362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146872, 33.519394, 34.454369>,  <26.541843, 33.227539, 34.362602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146872, 33.519394, 34.454369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277153, 33.394104, 34.097538>,  <27.355322, 33.318928, 33.883438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277153, 33.394104, 34.097538>,  <27.146872, 33.519394, 34.454369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277153, 33.394104, 34.097538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906952, 0.370079, 0.201194,
		0.267120, -0.874602, 0.404620,
		0.325706, -0.313228, -0.892078,
		27.374865, 33.300137, 33.829914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713999, 32.994698, 34.585346>,  <27.146872, 33.519394, 34.454369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713999, 32.994698, 34.585346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781422, 33.172443, 34.233406>,  <27.821875, 33.279091, 34.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781422, 33.172443, 34.233406>,  <27.713999, 32.994698, 34.585346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781422, 33.172443, 34.233406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915730, 0.259697, 0.306588,
		0.364729, -0.857380, -0.363141,
		0.168556, 0.444361, -0.879848,
		27.831989, 33.305752, 33.969452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408880, 32.735916, 34.324467>,  <27.713999, 32.994698, 34.585346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408880, 32.735916, 34.324467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286184, 33.093525, 34.193840>,  <28.212566, 33.308090, 34.115463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286184, 33.093525, 34.193840>,  <28.408880, 32.735916, 34.324467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286184, 33.093525, 34.193840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849127, 0.412046, 0.330457,
		0.429993, -0.175928, -0.885525,
		-0.306740, 0.894018, -0.326562,
		28.194162, 33.361729, 34.095871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912489, 32.205093, 33.962784>,  <28.408880, 32.735916, 34.324467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912489, 32.205093, 33.962784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727160, 32.544106, 33.859230>,  <28.615961, 32.747513, 33.797100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727160, 32.544106, 33.859230>,  <28.912489, 32.205093, 33.962784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727160, 32.544106, 33.859230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110550, -0.345122, -0.932024,
		-0.879267, -0.403209, 0.253598,
		-0.463323, 0.847533, -0.258880,
		28.588163, 32.798367, 33.781567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437353, 32.020199, 34.504536>,  <28.912489, 32.205093, 33.962784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437353, 32.020199, 34.504536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800230, 31.896057, 34.618153>,  <30.017956, 31.821573, 34.686321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800230, 31.896057, 34.618153>,  <29.437353, 32.020199, 34.504536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800230, 31.896057, 34.618153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307810, -0.029396, 0.950994,
		-0.286796, -0.950166, -0.122198,
		0.907194, -0.310354, 0.284040,
		30.072388, 31.802952, 34.703365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390215, 31.408562, 34.884491>,  <29.437353, 32.020199, 34.504536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390215, 31.408562, 34.884491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732449, 31.590092, 34.984104>,  <29.937788, 31.699009, 35.043873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732449, 31.590092, 34.984104>,  <29.390215, 31.408562, 34.884491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732449, 31.590092, 34.984104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218768, -0.119016, 0.968491,
		0.469165, -0.883107, -0.002546,
		0.855584, 0.453826, 0.249034,
		29.989124, 31.726238, 35.058815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629065, 31.042238, 35.489571>,  <29.390215, 31.408562, 34.884491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629065, 31.042238, 35.489571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818117, 31.394743, 35.489750>,  <29.931549, 31.606245, 35.489857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818117, 31.394743, 35.489750>,  <29.629065, 31.042238, 35.489571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818117, 31.394743, 35.489750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207235, 0.110651, 0.972013,
		0.856548, -0.459495, 0.234925,
		0.472630, 0.881260, 0.000446,
		29.959906, 31.659121, 35.489883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227982, 31.062864, 35.992611>,  <29.629065, 31.042238, 35.489571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227982, 31.062864, 35.992611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059025, 31.420376, 35.932281>,  <29.957651, 31.634882, 35.896084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059025, 31.420376, 35.932281>,  <30.227982, 31.062864, 35.992611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059025, 31.420376, 35.932281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033001, 0.151121, 0.987964,
		0.905812, 0.422285, -0.034337,
		-0.422392, 0.893777, -0.150824,
		29.932306, 31.688509, 35.887035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992163, 31.204659, 36.617573>,  <30.227982, 31.062864, 35.992611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992163, 31.204659, 36.617573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922050, 31.573805, 36.480404>,  <29.879984, 31.795292, 36.398102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922050, 31.573805, 36.480404>,  <29.992163, 31.204659, 36.617573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922050, 31.573805, 36.480404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019885, 0.351560, 0.935954,
		0.984318, 0.157235, -0.079972,
		-0.175279, 0.922867, -0.342921,
		29.869467, 31.850664, 36.377529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242308, 31.358032, 36.403416>,  <29.992163, 31.204659, 36.617573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242308, 31.358032, 36.403416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177223, 31.749083, 36.456741>,  <29.138172, 31.983713, 36.488735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177223, 31.749083, 36.456741>,  <29.242308, 31.358032, 36.403416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177223, 31.749083, 36.456741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929021, 0.197307, -0.313035,
		-0.332334, 0.072916, -0.940339,
		-0.162710, 0.977626, 0.133313,
		29.128410, 32.042370, 36.496735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222927, 31.730923, 35.819229>,  <29.242308, 31.358032, 36.403416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222927, 31.730923, 35.819229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366810, 31.937561, 36.130032>,  <29.453140, 32.061543, 36.316513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366810, 31.937561, 36.130032>,  <29.222927, 31.730923, 35.819229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366810, 31.937561, 36.130032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903602, 0.014752, -0.428120,
		-0.232627, 0.856103, -0.461489,
		0.359707, 0.516594, 0.777008,
		29.474722, 32.092541, 36.363132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127035, 32.447880, 35.698692>,  <29.222927, 31.730923, 35.819229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127035, 32.447880, 35.698692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434391, 32.330059, 35.925961>,  <29.618805, 32.259365, 36.062321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434391, 32.330059, 35.925961>,  <29.127035, 32.447880, 35.698692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434391, 32.330059, 35.925961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618080, 0.111290, -0.778198,
		0.165991, 0.949132, 0.267573,
		0.768391, -0.294555, 0.568166,
		29.664907, 32.241692, 36.096409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654055, 32.877262, 35.587616>,  <29.127035, 32.447880, 35.698692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654055, 32.877262, 35.587616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827175, 32.535900, 35.703815>,  <29.931047, 32.331085, 35.773537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827175, 32.535900, 35.703815>,  <29.654055, 32.877262, 35.587616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827175, 32.535900, 35.703815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452213, -0.073242, -0.888897,
		0.779863, 0.516082, 0.354220,
		0.432800, -0.853402, 0.290498,
		29.957016, 32.279881, 35.790966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403437, 32.866352, 35.326420>,  <29.654055, 32.877262, 35.587616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403437, 32.866352, 35.326420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266031, 32.493206, 35.369812>,  <30.183588, 32.269318, 35.395847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266031, 32.493206, 35.369812>,  <30.403437, 32.866352, 35.326420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266031, 32.493206, 35.369812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438607, -0.261497, -0.859793,
		0.830434, -0.247771, 0.498987,
		-0.343515, -0.932860, 0.108482,
		30.162977, 32.213348, 35.402355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989820, 32.514565, 35.240376>,  <30.403437, 32.866352, 35.326420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989820, 32.514565, 35.240376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695910, 32.250591, 35.177654>,  <30.519562, 32.092209, 35.140022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695910, 32.250591, 35.177654>,  <30.989820, 32.514565, 35.240376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695910, 32.250591, 35.177654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499428, -0.369929, -0.783406,
		0.458990, -0.653942, 0.601405,
		-0.734779, -0.659934, -0.156803,
		30.475475, 32.052612, 35.130611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567482, 32.926910, 35.115932>,  <30.989820, 32.514565, 35.240376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567482, 32.926910, 35.115932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484013, 33.194080, 34.830185>,  <31.433931, 33.354382, 34.658737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484013, 33.194080, 34.830185>,  <31.567482, 32.926910, 35.115932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484013, 33.194080, 34.830185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064757, -0.719414, -0.691556,
		-0.975839, -0.190569, 0.106869,
		-0.208673, 0.667927, -0.714373,
		31.421412, 33.394459, 34.615871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272360, 32.511154, 34.516731>,  <31.567482, 32.926910, 35.115932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272360, 32.511154, 34.516731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334629, 32.861076, 34.333221>,  <31.371990, 33.071030, 34.223114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334629, 32.861076, 34.333221>,  <31.272360, 32.511154, 34.516731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334629, 32.861076, 34.333221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159151, -0.480585, -0.862386,
		-0.974904, 0.061234, -0.214040,
		0.155672, 0.874808, -0.458779,
		31.381330, 33.123520, 34.195587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833839, 32.461243, 33.919926>,  <31.272360, 32.511154, 34.516731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833839, 32.461243, 33.919926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177290, 32.662159, 33.879009>,  <31.383360, 32.782707, 33.854462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177290, 32.662159, 33.879009>,  <30.833839, 32.461243, 33.919926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177290, 32.662159, 33.879009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291631, -0.642779, -0.708369,
		-0.421555, 0.578395, -0.698391,
		0.858629, 0.502289, -0.102289,
		31.434879, 32.812847, 33.848324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876743, 32.445644, 33.239559>,  <30.833839, 32.461243, 33.919926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876743, 32.445644, 33.239559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249014, 32.531292, 33.358212>,  <31.472376, 32.582680, 33.429405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249014, 32.531292, 33.358212>,  <30.876743, 32.445644, 33.239559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249014, 32.531292, 33.358212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365565, -0.575860, -0.731265,
		0.014241, 0.789010, -0.614215,
		0.930677, 0.214121, 0.296635,
		31.528217, 32.595528, 33.447201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194464, 32.521942, 32.611389>,  <30.876743, 32.445644, 33.239559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194464, 32.521942, 32.611389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495342, 32.488922, 32.872890>,  <31.675869, 32.469109, 33.029789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495342, 32.488922, 32.872890>,  <31.194464, 32.521942, 32.611389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495342, 32.488922, 32.872890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576182, -0.398971, -0.713328,
		0.319715, 0.913240, -0.252538,
		0.752195, -0.082554, 0.653749,
		31.721001, 32.464157, 33.069016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682579, 32.910583, 32.401001>,  <31.194464, 32.521942, 32.611389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682579, 32.910583, 32.401001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857031, 32.625309, 32.620510>,  <31.961702, 32.454144, 32.752216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857031, 32.625309, 32.620510>,  <31.682579, 32.910583, 32.401001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857031, 32.625309, 32.620510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593458, -0.230473, -0.771161,
		0.676459, 0.662003, 0.322730,
		0.436131, -0.713186, 0.548777,
		31.987869, 32.411354, 32.785145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405636, 32.873394, 32.255848>,  <31.682579, 32.910583, 32.401001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405636, 32.873394, 32.255848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366299, 32.518505, 32.436142>,  <32.342697, 32.305573, 32.544319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366299, 32.518505, 32.436142>,  <32.405636, 32.873394, 32.255848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366299, 32.518505, 32.436142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481383, -0.438828, -0.758749,
		0.870976, 0.142360, 0.470250,
		-0.098343, -0.887222, 0.450739,
		32.336796, 32.252338, 32.571365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050426, 32.528473, 32.303921>,  <32.405636, 32.873394, 32.255848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050426, 32.528473, 32.303921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809250, 32.213036, 32.352219>,  <32.664543, 32.023773, 32.381199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809250, 32.213036, 32.352219>,  <33.050426, 32.528473, 32.303921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809250, 32.213036, 32.352219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454745, -0.464079, -0.760157,
		0.655491, -0.403422, 0.638422,
		-0.602942, -0.788595, 0.120745,
		32.628368, 31.976458, 32.388443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509594, 32.005375, 32.291092>,  <33.050426, 32.528473, 32.303921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509594, 32.005375, 32.291092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142277, 31.874428, 32.202030>,  <32.921886, 31.795858, 32.148594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142277, 31.874428, 32.202030>,  <33.509594, 32.005375, 32.291092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142277, 31.874428, 32.202030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376431, -0.547730, -0.747189,
		0.122656, -0.769948, 0.626208,
		-0.918289, -0.327371, -0.222650,
		32.866791, 31.776217, 32.135235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641891, 31.299995, 32.070190>,  <33.509594, 32.005375, 32.291092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641891, 31.299995, 32.070190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276505, 31.373167, 31.924797>,  <33.057274, 31.417070, 31.837561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276505, 31.373167, 31.924797>,  <33.641891, 31.299995, 32.070190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276505, 31.373167, 31.924797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289462, -0.335707, -0.896388,
		-0.285996, -0.924034, 0.253707,
		-0.913465, 0.182925, -0.363484,
		33.002464, 31.428045, 31.815752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446415, 30.713717, 31.650698>,  <33.641891, 31.299995, 32.070190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446415, 30.713717, 31.650698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190269, 30.987831, 31.511951>,  <33.036583, 31.152300, 31.428703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190269, 30.987831, 31.511951>,  <33.446415, 30.713717, 31.650698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190269, 30.987831, 31.511951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196255, -0.290625, -0.936494,
		-0.742575, -0.667772, 0.051614,
		-0.640365, 0.685287, -0.346864,
		32.998161, 31.193417, 31.407892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904369, 30.353710, 31.198116>,  <33.446415, 30.713717, 31.650698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904369, 30.353710, 31.198116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938606, 30.738140, 31.093039>,  <32.959148, 30.968798, 31.029991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938606, 30.738140, 31.093039>,  <32.904369, 30.353710, 31.198116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938606, 30.738140, 31.093039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006341, -0.263133, -0.964739,
		-0.996310, 0.084242, -0.016429,
		0.085595, 0.961075, -0.262696,
		32.964283, 31.026463, 31.014229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565434, 30.374054, 30.592787>,  <32.904369, 30.353710, 31.198116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565434, 30.374054, 30.592787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760086, 30.723465, 30.588076>,  <32.876877, 30.933111, 30.585249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760086, 30.723465, 30.588076>,  <32.565434, 30.374054, 30.592787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760086, 30.723465, 30.588076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013553, -0.021027, -0.999687,
		-0.873502, 0.486320, -0.022071,
		0.486632, 0.873528, -0.011776,
		32.906075, 30.985523, 30.584543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378468, 30.563669, 30.000069>,  <32.565434, 30.374054, 30.592787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378468, 30.563669, 30.000069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669910, 30.826477, 30.077482>,  <32.844776, 30.984161, 30.123930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669910, 30.826477, 30.077482>,  <32.378468, 30.563669, 30.000069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669910, 30.826477, 30.077482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084932, 0.367046, -0.926317,
		-0.679645, 0.658485, 0.323234,
		0.728608, 0.657019, 0.193535,
		32.888493, 31.023582, 30.135542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093838, 31.218266, 29.876923>,  <32.378468, 30.563669, 30.000069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093838, 31.218266, 29.876923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491764, 31.228071, 29.837450>,  <32.730518, 31.233953, 29.813766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491764, 31.228071, 29.837450>,  <32.093838, 31.218266, 29.876923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491764, 31.228071, 29.837450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099772, 0.422490, -0.900859,
		0.019610, 0.906036, 0.422746,
		0.994817, 0.024513, -0.098682,
		32.790211, 31.235426, 29.807846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275650, 31.909071, 29.689428>,  <32.093838, 31.218266, 29.876923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275650, 31.909071, 29.689428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572422, 31.677900, 29.553465>,  <32.750484, 31.539198, 29.471888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572422, 31.677900, 29.553465>,  <32.275650, 31.909071, 29.689428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572422, 31.677900, 29.553465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026305, 0.531666, -0.846546,
		0.669958, 0.619139, 0.409663,
		0.741933, -0.577927, -0.339907,
		32.795002, 31.504522, 29.451492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652615, 32.500011, 29.318331>,  <32.275650, 31.909071, 29.689428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652615, 32.500011, 29.318331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776794, 32.136833, 29.205717>,  <32.851303, 31.918926, 29.138149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776794, 32.136833, 29.205717>,  <32.652615, 32.500011, 29.318331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776794, 32.136833, 29.205717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006742, 0.294055, -0.955765,
		0.950565, 0.298618, 0.085169,
		0.310453, -0.907942, -0.281532,
		32.869930, 31.864450, 29.121258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185383, 32.643269, 28.992159>,  <32.652615, 32.500011, 29.318331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185383, 32.643269, 28.992159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101646, 32.272400, 28.867887>,  <33.051403, 32.049877, 28.793325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101646, 32.272400, 28.867887>,  <33.185383, 32.643269, 28.992159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101646, 32.272400, 28.867887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118764, 0.339474, -0.933087,
		0.970604, -0.158435, -0.181180,
		-0.209339, -0.927176, -0.310679,
		33.038845, 31.994247, 28.774683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537926, 32.568520, 28.348856>,  <33.185383, 32.643269, 28.992159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537926, 32.568520, 28.348856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256256, 32.284508, 28.348778>,  <33.087254, 32.114101, 28.348730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256256, 32.284508, 28.348778>,  <33.537926, 32.568520, 28.348856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256256, 32.284508, 28.348778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343273, 0.340685, -0.875270,
		0.621533, -0.616274, -0.483635,
		-0.704173, -0.710028, -0.000197,
		33.045006, 32.071499, 28.348719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497200, 32.345463, 27.641953>,  <33.537926, 32.568520, 28.348856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497200, 32.345463, 27.641953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148380, 32.243076, 27.808809>,  <32.939087, 32.181644, 27.908924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148380, 32.243076, 27.808809>,  <33.497200, 32.345463, 27.641953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148380, 32.243076, 27.808809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488614, 0.406675, -0.771927,
		0.027943, -0.876983, -0.479709,
		-0.872052, -0.255963, 0.417142,
		32.886765, 32.166286, 27.933952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217270, 31.982897, 27.129881>,  <33.497200, 32.345463, 27.641953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217270, 31.982897, 27.129881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933846, 32.102718, 27.385448>,  <32.763790, 32.174610, 27.538788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933846, 32.102718, 27.385448>,  <33.217270, 31.982897, 27.129881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933846, 32.102718, 27.385448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563770, 0.304232, -0.767858,
		-0.424393, -0.904274, -0.046687,
		-0.708558, 0.299553, 0.638917,
		32.721279, 32.192585, 27.577124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661243, 31.927910, 26.676750>,  <33.217270, 31.982897, 27.129881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661243, 31.927910, 26.676750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527122, 32.131634, 26.993780>,  <32.446651, 32.253868, 27.183998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527122, 32.131634, 26.993780>,  <32.661243, 31.927910, 26.676750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527122, 32.131634, 26.993780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683316, 0.447686, -0.576764,
		-0.648576, -0.734971, 0.197908,
		-0.335304, 0.509309, 0.792576,
		32.426533, 32.284428, 27.231552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841282, 31.759510, 26.714092>,  <32.661243, 31.927910, 26.676750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841282, 31.759510, 26.714092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965544, 32.104000, 26.874981>,  <32.040100, 32.310696, 26.971514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965544, 32.104000, 26.874981>,  <31.841282, 31.759510, 26.714092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965544, 32.104000, 26.874981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614168, 0.504831, -0.606583,
		-0.725460, -0.058594, 0.685766,
		0.310654, 0.861227, 0.402221,
		32.058739, 32.362370, 26.995647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310480, 32.179237, 26.483088>,  <31.841282, 31.759510, 26.714092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310480, 32.179237, 26.483088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578199, 32.439571, 26.626450>,  <31.738831, 32.595772, 26.712467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578199, 32.439571, 26.626450>,  <31.310480, 32.179237, 26.483088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578199, 32.439571, 26.626450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330403, 0.692772, -0.641016,
		-0.665488, 0.310613, 0.678709,
		0.669298, 0.650835, 0.358404,
		31.778988, 32.634823, 26.733971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944824, 32.845226, 26.494858>,  <31.310480, 32.179237, 26.483088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944824, 32.845226, 26.494858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341713, 32.894455, 26.487362>,  <31.579845, 32.923992, 26.482864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341713, 32.894455, 26.487362>,  <30.944824, 32.845226, 26.494858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341713, 32.894455, 26.487362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107279, 0.768956, -0.630236,
		-0.063152, 0.627344, 0.776177,
		0.992221, 0.123068, -0.018740,
		31.639380, 32.931374, 26.481739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137047, 33.554607, 26.517633>,  <30.944824, 32.845226, 26.494858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137047, 33.554607, 26.517633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441940, 33.379562, 26.326849>,  <31.624878, 33.274536, 26.212379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441940, 33.379562, 26.326849>,  <31.137047, 33.554607, 26.517633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441940, 33.379562, 26.326849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059190, 0.686636, -0.724588,
		0.644587, 0.580538, 0.497476,
		0.762236, -0.437614, -0.476959,
		31.670610, 33.248280, 26.183762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448702, 34.106895, 26.214239>,  <31.137047, 33.554607, 26.517633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448702, 34.106895, 26.214239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644657, 33.812939, 26.026649>,  <31.762230, 33.636562, 25.914095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644657, 33.812939, 26.026649>,  <31.448702, 34.106895, 26.214239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644657, 33.812939, 26.026649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139550, 0.597115, -0.789923,
		0.860542, 0.321530, 0.395076,
		0.489890, -0.734895, -0.468974,
		31.791624, 33.592468, 25.885958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047424, 34.317928, 26.048048>,  <31.448702, 34.106895, 26.214239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047424, 34.317928, 26.048048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976788, 34.022770, 25.787489>,  <31.934404, 33.845673, 25.631153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976788, 34.022770, 25.787489>,  <32.047424, 34.317928, 26.048048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976788, 34.022770, 25.787489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173415, 0.628123, -0.758544,
		0.968887, -0.246917, 0.017040,
		-0.176594, -0.737898, -0.651399,
		31.923809, 33.801399, 25.592070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642643, 34.356178, 25.621048>,  <32.047424, 34.317928, 26.048048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642643, 34.356178, 25.621048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368626, 34.159229, 25.406279>,  <32.204216, 34.041061, 25.277416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368626, 34.159229, 25.406279>,  <32.642643, 34.356178, 25.621048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368626, 34.159229, 25.406279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243721, 0.539659, -0.805834,
		0.686527, -0.682889, -0.249687,
		-0.685041, -0.492373, -0.536924,
		32.163113, 34.011517, 25.245201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911411, 34.099117, 25.055323>,  <32.642643, 34.356178, 25.621048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911411, 34.099117, 25.055323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522728, 34.141113, 24.970688>,  <32.289520, 34.166309, 24.919907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522728, 34.141113, 24.970688>,  <32.911411, 34.099117, 25.055323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522728, 34.141113, 24.970688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235620, 0.493739, -0.837081,
		0.016587, -0.863249, -0.504505,
		-0.971703, 0.104987, -0.211589,
		32.231216, 34.172607, 24.907211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022861, 34.255615, 24.469231>,  <32.911411, 34.099117, 25.055323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022861, 34.255615, 24.469231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625031, 34.296844, 24.474850>,  <32.386333, 34.321583, 24.478222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625031, 34.296844, 24.474850>,  <33.022861, 34.255615, 24.469231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625031, 34.296844, 24.474850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031240, 0.424750, -0.904771,
		-0.099226, -0.899424, -0.425666,
		-0.994575, 0.103074, 0.014048,
		32.326656, 34.327766, 24.479065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754890, 33.934635, 23.858393>,  <33.022861, 34.255615, 24.469231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754890, 33.934635, 23.858393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493198, 34.217472, 23.965723>,  <32.336182, 34.387173, 24.030121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493198, 34.217472, 23.965723>,  <32.754890, 33.934635, 23.858393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493198, 34.217472, 23.965723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021843, 0.336979, -0.941259,
		-0.755976, -0.621665, -0.205018,
		-0.654235, 0.707091, 0.268327,
		32.296928, 34.429600, 24.046221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114033, 33.938248, 23.481174>,  <32.754890, 33.934635, 23.858393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114033, 33.938248, 23.481174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151039, 34.314892, 23.610674>,  <32.173244, 34.540878, 23.688374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151039, 34.314892, 23.610674>,  <32.114033, 33.938248, 23.481174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151039, 34.314892, 23.610674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129244, 0.333751, -0.933759,
		-0.987288, 0.044544, 0.152574,
		0.092515, 0.941608, 0.323751,
		32.178795, 34.597374, 23.707800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508732, 34.388050, 23.099619>,  <32.114033, 33.938248, 23.481174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508732, 34.388050, 23.099619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757109, 34.660923, 23.254047>,  <31.906136, 34.824646, 23.346704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757109, 34.660923, 23.254047>,  <31.508732, 34.388050, 23.099619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757109, 34.660923, 23.254047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061963, 0.533709, -0.843395,
		-0.781402, 0.499779, 0.373674,
		0.620944, 0.682185, 0.386073,
		31.943392, 34.865578, 23.369869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212421, 34.977924, 22.771391>,  <31.508732, 34.388050, 23.099619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212421, 34.977924, 22.771391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572910, 35.074501, 22.915335>,  <31.789204, 35.132446, 23.001701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572910, 35.074501, 22.915335>,  <31.212421, 34.977924, 22.771391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572910, 35.074501, 22.915335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068984, 0.739891, -0.669181,
		-0.427827, 0.627907, 0.650152,
		0.901225, 0.241443, 0.359861,
		31.843277, 35.146935, 23.023293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288815, 35.767830, 22.706657>,  <31.212421, 34.977924, 22.771391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288815, 35.767830, 22.706657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658468, 35.615810, 22.722361>,  <31.880260, 35.524597, 22.731783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658468, 35.615810, 22.722361>,  <31.288815, 35.767830, 22.706657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658468, 35.615810, 22.722361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298039, 0.652765, -0.696470,
		0.239066, 0.655332, 0.716511,
		0.924132, -0.380051, 0.039260,
		31.935707, 35.501797, 22.734138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793156, 36.476284, 22.745485>,  <31.288815, 35.767830, 22.706657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793156, 36.476284, 22.745485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018234, 36.164192, 22.636223>,  <32.153282, 35.976936, 22.570665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018234, 36.164192, 22.636223>,  <31.793156, 36.476284, 22.745485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018234, 36.164192, 22.636223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460058, 0.570096, -0.680689,
		0.686819, 0.257353, 0.679742,
		0.562695, -0.780231, -0.273155,
		32.187042, 35.930122, 22.554276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448151, 36.769337, 22.676876>,  <31.793156, 36.476284, 22.745485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448151, 36.769337, 22.676876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417217, 36.441620, 22.449619>,  <32.398659, 36.244991, 22.313265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417217, 36.441620, 22.449619>,  <32.448151, 36.769337, 22.676876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417217, 36.441620, 22.449619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364689, 0.507112, -0.780922,
		0.927912, -0.267587, 0.259569,
		-0.077334, -0.819289, -0.568141,
		32.394016, 36.195831, 22.279177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167259, 36.719006, 22.417305>,  <32.448151, 36.769337, 22.676876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167259, 36.719006, 22.417305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905308, 36.523174, 22.187017>,  <32.748138, 36.405674, 22.048845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905308, 36.523174, 22.187017>,  <33.167259, 36.719006, 22.417305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905308, 36.523174, 22.187017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266375, 0.563375, -0.782083,
		0.707238, -0.665522, -0.238527,
		-0.654873, -0.489581, -0.575718,
		32.708847, 36.376301, 22.014301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520741, 36.817764, 21.859659>,  <33.167259, 36.719006, 22.417305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520741, 36.817764, 21.859659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152798, 36.715988, 21.740246>,  <32.932030, 36.654922, 21.668598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152798, 36.715988, 21.740246>,  <33.520741, 36.817764, 21.859659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152798, 36.715988, 21.740246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021243, 0.727648, -0.685622,
		0.391674, -0.637017, -0.663928,
		-0.919859, -0.254436, -0.298532,
		32.876839, 36.639656, 21.650686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577339, 36.622623, 21.120089>,  <33.520741, 36.817764, 21.859659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577339, 36.622623, 21.120089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200336, 36.722652, 21.208765>,  <32.974136, 36.782669, 21.261971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200336, 36.722652, 21.208765>,  <33.577339, 36.622623, 21.120089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200336, 36.722652, 21.208765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008171, 0.680411, -0.732785,
		-0.334092, -0.688842, -0.643334,
		-0.942505, 0.250074, 0.221691,
		32.917583, 36.797676, 21.275272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199085, 36.634953, 20.405996>,  <33.577339, 36.622623, 21.120089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199085, 36.634953, 20.405996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008572, 36.860699, 20.675705>,  <32.894264, 36.996147, 20.837530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008572, 36.860699, 20.675705>,  <33.199085, 36.634953, 20.405996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008572, 36.860699, 20.675705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175234, 0.690529, -0.701757,
		-0.861651, -0.452394, -0.229995,
		-0.476289, 0.564366, 0.674270,
		32.865685, 37.030010, 20.877985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626678, 36.874378, 19.918846>,  <33.199085, 36.634953, 20.405996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626678, 36.874378, 19.918846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628597, 37.101334, 20.248222>,  <32.629749, 37.237507, 20.445848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628597, 37.101334, 20.248222>,  <32.626678, 36.874378, 19.918846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628597, 37.101334, 20.248222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297977, 0.786852, -0.540438,
		-0.954561, -0.242773, 0.172843,
		0.004798, 0.567384, 0.823439,
		32.630035, 37.271549, 20.495255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021587, 37.210876, 19.873304>,  <32.626678, 36.874378, 19.918846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021587, 37.210876, 19.873304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245636, 37.427341, 20.124191>,  <32.380066, 37.557220, 20.274723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245636, 37.427341, 20.124191>,  <32.021587, 37.210876, 19.873304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245636, 37.427341, 20.124191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132132, 0.805803, -0.577255,
		-0.817802, 0.240460, 0.522856,
		0.560126, 0.541166, 0.627215,
		32.413673, 37.589691, 20.312355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637888, 37.869595, 20.152912>,  <32.021587, 37.210876, 19.873304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637888, 37.869595, 20.152912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032017, 37.934486, 20.174147>,  <32.268494, 37.973423, 20.186888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032017, 37.934486, 20.174147>,  <31.637888, 37.869595, 20.152912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032017, 37.934486, 20.174147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070226, 0.668723, -0.740187,
		-0.155584, 0.725596, 0.670302,
		0.985323, 0.162234, 0.053087,
		32.327614, 37.983158, 20.190073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873947, 38.574318, 20.421055>,  <31.637888, 37.869595, 20.152912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873947, 38.574318, 20.421055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900333, 38.968597, 20.359022>,  <31.916166, 39.205166, 20.321802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900333, 38.968597, 20.359022>,  <31.873947, 38.574318, 20.421055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900333, 38.968597, 20.359022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469891, -0.106422, -0.876286,
		-0.880256, 0.130679, 0.456149,
		0.065968, 0.985696, -0.155084,
		31.920124, 39.264305, 20.312496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223406, 38.769459, 20.115620>,  <31.873947, 38.574318, 20.421055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223406, 38.769459, 20.115620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466810, 39.070705, 20.015598>,  <31.612852, 39.251453, 19.955585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466810, 39.070705, 20.015598>,  <31.223406, 38.769459, 20.115620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466810, 39.070705, 20.015598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359855, -0.018961, -0.932816,
		-0.707261, 0.657613, 0.259475,
		0.608512, 0.753117, -0.250055,
		31.649364, 39.296642, 19.940582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872168, 39.189930, 19.633698>,  <31.223406, 38.769459, 20.115620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872168, 39.189930, 19.633698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238552, 39.325737, 19.548151>,  <31.458384, 39.407223, 19.496822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238552, 39.325737, 19.548151>,  <30.872168, 39.189930, 19.633698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238552, 39.325737, 19.548151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167910, -0.159765, -0.972770,
		-0.364445, 0.926931, -0.089329,
		0.915962, 0.339522, -0.213867,
		31.513340, 39.427593, 19.483992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886101, 39.678368, 19.040138>,  <30.872168, 39.189930, 19.633698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886101, 39.678368, 19.040138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240742, 39.496021, 19.071447>,  <31.453526, 39.386612, 19.090233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240742, 39.496021, 19.071447>,  <30.886101, 39.678368, 19.040138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240742, 39.496021, 19.071447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031519, -0.228373, -0.973063,
		0.461462, 0.860251, -0.216844,
		0.886600, -0.455866, 0.078271,
		31.506721, 39.359261, 19.094929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764194, 39.731094, 18.276550>,  <30.886101, 39.678368, 19.040138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764194, 39.731094, 18.276550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494631, 40.025425, 18.303114>,  <30.332891, 40.202023, 18.319052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494631, 40.025425, 18.303114>,  <30.764194, 39.731094, 18.276550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494631, 40.025425, 18.303114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360904, -0.249435, -0.898627,
		-0.644665, -0.629561, 0.433658,
		-0.673911, 0.735822, 0.066409,
		30.292458, 40.246170, 18.323036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192644, 39.160538, 18.219980>,  <30.764194, 39.731094, 18.276550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192644, 39.160538, 18.219980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488058, 39.430222, 18.219601>,  <31.665306, 39.592033, 18.219372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488058, 39.430222, 18.219601>,  <31.192644, 39.160538, 18.219980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488058, 39.430222, 18.219601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126195, -0.136850, 0.982521,
		0.662299, -0.725746, -0.186151,
		0.738535, 0.674214, -0.000950,
		31.709620, 39.632484, 18.219316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875452, 38.871315, 18.589338>,  <31.192644, 39.160538, 18.219980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875452, 38.871315, 18.589338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854124, 39.270653, 18.598007>,  <31.841328, 39.510254, 18.603209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854124, 39.270653, 18.598007>,  <31.875452, 38.871315, 18.589338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854124, 39.270653, 18.598007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326284, -0.003092, 0.945266,
		0.943767, 0.057472, -0.325579,
		-0.053320, 0.998342, 0.021670,
		31.838127, 39.570156, 18.604507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464901, 39.112026, 18.898972>,  <31.875452, 38.871315, 18.589338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464901, 39.112026, 18.898972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164814, 39.370995, 18.952677>,  <31.984762, 39.526375, 18.984900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164814, 39.370995, 18.952677>,  <32.464901, 39.112026, 18.898972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164814, 39.370995, 18.952677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139782, -0.043177, 0.989241,
		0.646250, 0.760910, -0.058105,
		-0.750214, 0.647419, 0.134264,
		31.939749, 39.565220, 18.992956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792030, 39.652653, 19.316994>,  <32.464901, 39.112026, 18.898972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792030, 39.652653, 19.316994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395775, 39.617981, 19.359182>,  <32.158020, 39.597179, 19.384495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395775, 39.617981, 19.359182>,  <32.792030, 39.652653, 19.316994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395775, 39.617981, 19.359182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098872, 0.077190, 0.992102,
		-0.094138, 0.993241, -0.067896,
		-0.990637, -0.086681, 0.105471,
		32.098583, 39.591976, 19.390823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372005, 40.259800, 19.519033>,  <32.792030, 39.652653, 19.316994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372005, 40.259800, 19.519033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145344, 39.953629, 19.641031>,  <32.009346, 39.769928, 19.714230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145344, 39.953629, 19.641031>,  <32.372005, 40.259800, 19.519033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145344, 39.953629, 19.641031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248756, 0.193962, 0.948946,
		-0.785506, 0.613597, 0.080495,
		-0.566658, -0.765426, 0.304994,
		31.975346, 39.723999, 19.732529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025833, 40.519096, 20.012934>,  <32.372005, 40.259800, 19.519033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025833, 40.519096, 20.012934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018204, 40.130184, 20.106146>,  <32.013626, 39.896835, 20.162073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018204, 40.130184, 20.106146>,  <32.025833, 40.519096, 20.012934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018204, 40.130184, 20.106146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134912, 0.228437, 0.964166,
		-0.990674, 0.049825, 0.126816,
		-0.019070, -0.972283, 0.233029,
		32.012482, 39.838501, 20.176054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575506, 40.524567, 20.496485>,  <32.025833, 40.519096, 20.012934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575506, 40.524567, 20.496485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833755, 40.219696, 20.515471>,  <31.988705, 40.036774, 20.526863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833755, 40.219696, 20.515471>,  <31.575506, 40.524567, 20.496485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833755, 40.219696, 20.515471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033500, 0.090364, 0.995345,
		-0.762922, -0.641027, 0.083874,
		0.645623, -0.762180, 0.047466,
		32.027443, 39.991043, 20.529711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215227, 40.089867, 20.959461>,  <31.575506, 40.524567, 20.496485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215227, 40.089867, 20.959461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589392, 39.948811, 20.949230>,  <31.813890, 39.864178, 20.943090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589392, 39.948811, 20.949230>,  <31.215227, 40.089867, 20.959461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589392, 39.948811, 20.949230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007088, -0.091036, 0.995822,
		-0.353494, -0.931321, -0.087656,
		0.935409, -0.352639, -0.025579,
		31.870014, 39.843018, 20.941557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124744, 39.553600, 21.354126>,  <31.215227, 40.089867, 20.959461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124744, 39.553600, 21.354126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515987, 39.635414, 21.338787>,  <31.750732, 39.684502, 21.329584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515987, 39.635414, 21.338787>,  <31.124744, 39.553600, 21.354126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515987, 39.635414, 21.338787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081011, -0.204518, 0.975505,
		0.191682, -0.957256, -0.216610,
		0.978108, 0.204534, -0.038346,
		31.809420, 39.696774, 21.327284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379372, 39.073650, 21.825640>,  <31.124744, 39.553600, 21.354126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379372, 39.073650, 21.825640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690418, 39.321461, 21.782732>,  <31.877047, 39.470146, 21.756989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690418, 39.321461, 21.782732>,  <31.379372, 39.073650, 21.825640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690418, 39.321461, 21.782732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237875, -0.131961, 0.962290,
		0.582006, -0.773807, -0.249984,
		0.777614, 0.619523, -0.107268,
		31.923702, 39.507317, 21.750551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011353, 38.728409, 22.104244>,  <31.379372, 39.073650, 21.825640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011353, 38.728409, 22.104244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038506, 39.126949, 22.124910>,  <32.054798, 39.366074, 22.137310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038506, 39.126949, 22.124910>,  <32.011353, 38.728409, 22.104244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038506, 39.126949, 22.124910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242273, -0.066696, 0.967913,
		0.967831, -0.053183, -0.245917,
		0.067878, 0.996355, 0.051665,
		32.058868, 39.425858, 22.140409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577057, 38.739136, 22.571331>,  <32.011353, 38.728409, 22.104244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577057, 38.739136, 22.571331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398220, 39.096516, 22.554085>,  <32.290916, 39.310944, 22.543737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398220, 39.096516, 22.554085>,  <32.577057, 38.739136, 22.571331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398220, 39.096516, 22.554085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194433, 0.144119, 0.970271,
		0.873098, 0.425421, -0.238151,
		-0.447096, 0.893446, -0.043114,
		32.264091, 39.364548, 22.541151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133774, 39.269398, 22.817804>,  <32.577057, 38.739136, 22.571331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133774, 39.269398, 22.817804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752357, 39.385277, 22.850874>,  <32.523506, 39.454803, 22.870716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752357, 39.385277, 22.850874>,  <33.133774, 39.269398, 22.817804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752357, 39.385277, 22.850874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100389, 0.046810, 0.993846,
		0.284045, 0.955973, -0.073718,
		-0.953541, 0.289697, 0.082673,
		32.466293, 39.472187, 22.875675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167889, 39.601151, 23.322042>,  <33.133774, 39.269398, 22.817804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167889, 39.601151, 23.322042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769966, 39.562477, 23.309261>,  <32.531212, 39.539272, 23.301592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769966, 39.562477, 23.309261>,  <33.167889, 39.601151, 23.322042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769966, 39.562477, 23.309261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028920, -0.032624, 0.999049,
		-0.097638, 0.994780, 0.029658,
		-0.994802, -0.096688, -0.031955,
		32.471527, 39.533470, 23.299675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932152, 40.002174, 23.790880>,  <33.167889, 39.601151, 23.322042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932152, 40.002174, 23.790880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604790, 39.778423, 23.738245>,  <32.408375, 39.644173, 23.706663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604790, 39.778423, 23.738245>,  <32.932152, 40.002174, 23.790880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604790, 39.778423, 23.738245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094866, -0.094333, 0.991010,
		-0.566764, 0.823527, 0.024136,
		-0.818401, -0.559379, -0.131589,
		32.359268, 39.610611, 23.698769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448074, 40.227394, 24.263847>,  <32.932152, 40.002174, 23.790880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448074, 40.227394, 24.263847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325478, 39.856392, 24.178253>,  <32.251919, 39.633789, 24.126896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325478, 39.856392, 24.178253>,  <32.448074, 40.227394, 24.263847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325478, 39.856392, 24.178253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138035, -0.179121, 0.974096,
		-0.941810, 0.328094, -0.073128,
		-0.306496, -0.927507, -0.213986,
		32.233528, 39.578140, 24.114058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922247, 40.084797, 24.714025>,  <32.448074, 40.227394, 24.263847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922247, 40.084797, 24.714025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017288, 39.718475, 24.584509>,  <32.074314, 39.498680, 24.506800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017288, 39.718475, 24.584509>,  <31.922247, 40.084797, 24.714025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017288, 39.718475, 24.584509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191388, -0.370941, 0.908721,
		-0.952322, -0.153943, -0.263411,
		0.237601, -0.915808, -0.323792,
		32.088570, 39.443733, 24.487371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316275, 39.653221, 24.905663>,  <31.922247, 40.084797, 24.714025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316275, 39.653221, 24.905663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623978, 39.408310, 24.832611>,  <31.808599, 39.261364, 24.788780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623978, 39.408310, 24.832611>,  <31.316275, 39.653221, 24.905663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623978, 39.408310, 24.832611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139574, -0.439957, 0.887106,
		-0.623508, -0.656923, -0.423899,
		0.769258, -0.612283, -0.182627,
		31.854755, 39.224625, 24.777822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055578, 39.017826, 25.008450>,  <31.316275, 39.653221, 24.905663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055578, 39.017826, 25.008450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451193, 39.019367, 25.067495>,  <31.688562, 39.020294, 25.102922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451193, 39.019367, 25.067495>,  <31.055578, 39.017826, 25.008450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451193, 39.019367, 25.067495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137614, -0.338413, 0.930881,
		0.053545, -0.940990, -0.334172,
		0.989038, 0.003858, 0.147613,
		31.747904, 39.020523, 25.111780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207621, 38.423096, 25.391569>,  <31.055578, 39.017826, 25.008450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207621, 38.423096, 25.391569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538641, 38.639286, 25.452293>,  <31.737253, 38.769001, 25.488728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538641, 38.639286, 25.452293>,  <31.207621, 38.423096, 25.391569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538641, 38.639286, 25.452293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063131, -0.179107, 0.981802,
		0.557831, -0.822074, -0.114099,
		0.827550, 0.540476, 0.151810,
		31.786905, 38.801430, 25.497837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588570, 38.009167, 25.755877>,  <31.207621, 38.423096, 25.391569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588570, 38.009167, 25.755877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713358, 38.380009, 25.838970>,  <31.788231, 38.602512, 25.888826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713358, 38.380009, 25.838970>,  <31.588570, 38.009167, 25.755877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713358, 38.380009, 25.838970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043747, -0.232432, 0.971628,
		0.949084, -0.294033, -0.113070,
		0.311972, 0.927103, 0.207735,
		31.806950, 38.658138, 25.901291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181362, 37.949726, 26.225885>,  <31.588570, 38.009167, 25.755877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181362, 37.949726, 26.225885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044418, 38.322113, 26.276628>,  <31.962252, 38.545544, 26.307074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044418, 38.322113, 26.276628>,  <32.181362, 37.949726, 26.225885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044418, 38.322113, 26.276628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073693, -0.107994, 0.991416,
		0.936675, 0.348768, -0.031633,
		-0.342358, 0.930966, 0.126857,
		31.941711, 38.601402, 26.314686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679901, 38.149708, 26.680492>,  <32.181362, 37.949726, 26.225885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679901, 38.149708, 26.680492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378014, 38.408516, 26.723873>,  <32.196880, 38.563801, 26.749903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378014, 38.408516, 26.723873>,  <32.679901, 38.149708, 26.680492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378014, 38.408516, 26.723873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091921, -0.059390, 0.993994,
		0.649577, 0.760155, -0.014652,
		-0.754719, 0.647022, 0.108453,
		32.151600, 38.602623, 26.756409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814133, 38.542343, 27.251328>,  <32.679901, 38.149708, 26.680492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814133, 38.542343, 27.251328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421310, 38.601521, 27.204536>,  <32.185619, 38.637028, 27.176462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421310, 38.601521, 27.204536>,  <32.814133, 38.542343, 27.251328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421310, 38.601521, 27.204536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124105, -0.039881, 0.991467,
		0.142016, 0.988191, 0.057526,
		-0.982054, 0.147944, -0.116976,
		32.126694, 38.645905, 27.169443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611317, 38.930946, 27.802826>,  <32.814133, 38.542343, 27.251328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611317, 38.930946, 27.802826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263050, 38.771488, 27.687571>,  <32.054092, 38.675812, 27.618418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263050, 38.771488, 27.687571>,  <32.611317, 38.930946, 27.802826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263050, 38.771488, 27.687571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206600, -0.235233, 0.949727,
		-0.446387, 0.886423, 0.122448,
		-0.870664, -0.398648, -0.288140,
		32.001850, 38.651894, 27.601130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214569, 39.129383, 28.326029>,  <32.611317, 38.930946, 27.802826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214569, 39.129383, 28.326029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995344, 38.854454, 28.135359>,  <31.863810, 38.689499, 28.020956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995344, 38.854454, 28.135359>,  <32.214569, 39.129383, 28.326029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995344, 38.854454, 28.135359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260778, -0.401076, 0.878141,
		-0.794747, 0.605583, 0.040578,
		-0.548062, -0.687319, -0.476677,
		31.830925, 38.648258, 27.992355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553453, 39.212639, 28.650909>,  <32.214569, 39.129383, 28.326029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553453, 39.212639, 28.650909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609940, 38.863636, 28.463812>,  <31.643831, 38.654232, 28.351553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609940, 38.863636, 28.463812>,  <31.553453, 39.212639, 28.650909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609940, 38.863636, 28.463812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287827, -0.488256, 0.823870,
		-0.947214, 0.018287, -0.320081,
		0.141215, -0.872509, -0.467746,
		31.652304, 38.601883, 28.323488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050381, 38.789158, 28.989029>,  <31.553453, 39.212639, 28.650909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050381, 38.789158, 28.989029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308418, 38.516388, 28.851137>,  <31.463242, 38.352726, 28.768402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308418, 38.516388, 28.851137>,  <31.050381, 38.789158, 28.989029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308418, 38.516388, 28.851137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146932, -0.553441, 0.819826,
		-0.749844, -0.478212, -0.457217,
		0.645093, -0.681921, -0.344729,
		31.501945, 38.311813, 28.747719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656904, 38.154984, 29.056208>,  <31.050381, 38.789158, 28.989029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656904, 38.154984, 29.056208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043320, 38.057522, 29.021791>,  <31.275169, 37.999046, 29.001143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043320, 38.057522, 29.021791>,  <30.656904, 38.154984, 29.056208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043320, 38.057522, 29.021791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110166, -0.689563, 0.715797,
		-0.233735, -0.682009, -0.692987,
		0.966039, -0.243651, -0.086041,
		31.333132, 37.984428, 28.995979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700268, 37.397915, 28.982960>,  <30.656904, 38.154984, 29.056208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700268, 37.397915, 28.982960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053720, 37.509094, 29.133659>,  <31.265793, 37.575802, 29.224079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053720, 37.509094, 29.133659>,  <30.700268, 37.397915, 28.982960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053720, 37.509094, 29.133659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027783, -0.772160, 0.634820,
		0.467358, -0.571414, -0.674583,
		0.883631, 0.277947, 0.376751,
		31.318810, 37.592480, 29.246685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000578, 36.778500, 29.076603>,  <30.700268, 37.397915, 28.982960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000578, 36.778500, 29.076603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300135, 36.982506, 29.245857>,  <31.479868, 37.104912, 29.347410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300135, 36.982506, 29.245857>,  <31.000578, 36.778500, 29.076603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300135, 36.982506, 29.245857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104200, -0.721193, 0.684852,
		0.654451, -0.468788, -0.593238,
		0.748890, 0.510018, 0.423138,
		31.524801, 37.135509, 29.372799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769152, 36.332729, 29.152367>,  <31.000578, 36.778500, 29.076603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769152, 36.332729, 29.152367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732189, 36.611362, 29.436966>,  <31.710011, 36.778542, 29.607725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732189, 36.611362, 29.436966>,  <31.769152, 36.332729, 29.152367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732189, 36.611362, 29.436966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043172, -0.711079, 0.701785,
		0.994785, 0.095567, 0.035636,
		-0.092407, 0.696586, 0.711497,
		31.704468, 36.820339, 29.650415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292492, 36.119049, 29.672060>,  <31.769152, 36.332729, 29.152367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292492, 36.119049, 29.672060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046967, 36.375568, 29.856222>,  <31.899652, 36.529480, 29.966719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046967, 36.375568, 29.856222>,  <32.292492, 36.119049, 29.672060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046967, 36.375568, 29.856222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041507, -0.556169, 0.830032,
		0.788363, 0.528591, 0.314763,
		-0.613809, 0.641301, 0.460403,
		31.862823, 36.567959, 29.994343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631504, 36.446518, 30.185701>,  <32.292492, 36.119049, 29.672060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631504, 36.446518, 30.185701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266342, 36.522530, 30.330202>,  <32.047245, 36.568138, 30.416903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266342, 36.522530, 30.330202>,  <32.631504, 36.446518, 30.185701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266342, 36.522530, 30.330202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175181, -0.616975, 0.767237,
		0.368680, 0.763695, 0.529947,
		-0.912900, 0.190028, 0.361252,
		31.992472, 36.579536, 30.438578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697468, 36.593494, 30.867151>,  <32.631504, 36.446518, 30.185701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697468, 36.593494, 30.867151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311432, 36.492493, 30.839317>,  <32.079811, 36.431892, 30.822617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311432, 36.492493, 30.839317>,  <32.697468, 36.593494, 30.867151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311432, 36.492493, 30.839317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085540, -0.554965, 0.827464,
		-0.247560, 0.792624, 0.557191,
		-0.965089, -0.252509, -0.069586,
		32.021904, 36.416740, 30.818441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357677, 36.781219, 31.524111>,  <32.697468, 36.593494, 30.867151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357677, 36.781219, 31.524111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154724, 36.489964, 31.339771>,  <32.032951, 36.315212, 31.229168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154724, 36.489964, 31.339771>,  <32.357677, 36.781219, 31.524111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154724, 36.489964, 31.339771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066730, -0.566394, 0.821429,
		-0.859135, 0.386025, 0.335965,
		-0.507380, -0.728137, -0.460849,
		32.002510, 36.271523, 31.201517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785828, 36.600029, 31.898991>,  <32.357677, 36.781219, 31.524111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785828, 36.600029, 31.898991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834492, 36.274418, 31.671816>,  <31.863689, 36.079052, 31.535511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834492, 36.274418, 31.671816>,  <31.785828, 36.600029, 31.898991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834492, 36.274418, 31.671816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037765, -0.575569, 0.816880,
		-0.991853, -0.077933, -0.100765,
		0.121659, -0.814031, -0.567937,
		31.870989, 36.030209, 31.501434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147417, 36.127369, 32.055794>,  <31.785828, 36.600029, 31.898991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147417, 36.127369, 32.055794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434940, 35.896381, 31.900955>,  <31.607454, 35.757790, 31.808052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434940, 35.896381, 31.900955>,  <31.147417, 36.127369, 32.055794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434940, 35.896381, 31.900955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112738, -0.646259, 0.754745,
		-0.686009, -0.498874, -0.529638,
		0.718806, -0.577472, -0.387097,
		31.650583, 35.723141, 31.784826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979187, 35.435211, 32.240955>,  <31.147417, 36.127369, 32.055794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979187, 35.435211, 32.240955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359329, 35.380390, 32.129211>,  <31.587414, 35.347500, 32.062164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359329, 35.380390, 32.129211>,  <30.979187, 35.435211, 32.240955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359329, 35.380390, 32.129211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077741, -0.764738, 0.639634,
		-0.301300, -0.629597, -0.716119,
		0.950355, -0.137050, -0.279361,
		31.644436, 35.339275, 32.045403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096718, 34.808788, 32.047832>,  <30.979187, 35.435211, 32.240955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096718, 34.808788, 32.047832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471792, 34.910080, 32.143017>,  <31.696836, 34.970856, 32.200127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471792, 34.910080, 32.143017>,  <31.096718, 34.808788, 32.047832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471792, 34.910080, 32.143017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000599, -0.683618, 0.729840,
		0.347485, -0.684503, -0.640867,
		0.937685, 0.253225, 0.237957,
		31.753098, 34.986046, 32.214405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425285, 34.160118, 32.253616>,  <31.096718, 34.808788, 32.047832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425285, 34.160118, 32.253616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659372, 34.451725, 32.395634>,  <31.799824, 34.626690, 32.480843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659372, 34.451725, 32.395634>,  <31.425285, 34.160118, 32.253616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659372, 34.451725, 32.395634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222781, -0.565555, 0.794050,
		0.779673, -0.385594, -0.493383,
		0.585217, 0.729016, 0.355045,
		31.834938, 34.670429, 32.502148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907440, 33.794609, 32.574768>,  <31.425285, 34.160118, 32.253616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907440, 33.794609, 32.574768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946945, 34.154499, 32.744820>,  <31.970648, 34.370434, 32.846851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946945, 34.154499, 32.744820>,  <31.907440, 33.794609, 32.574768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946945, 34.154499, 32.744820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305199, -0.434015, 0.847635,
		0.947154, 0.046036, -0.317460,
		0.098761, 0.899729, 0.425129,
		31.976574, 34.424419, 32.872360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558044, 33.806328, 32.919834>,  <31.907440, 33.794609, 32.574768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558044, 33.806328, 32.919834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353809, 34.101875, 33.095730>,  <32.231266, 34.279205, 33.201267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353809, 34.101875, 33.095730>,  <32.558044, 33.806328, 32.919834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353809, 34.101875, 33.095730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317927, -0.312941, 0.894981,
		0.798886, 0.596773, -0.075122,
		-0.510592, 0.738870, 0.439735,
		32.200630, 34.323536, 33.227650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095032, 34.201988, 33.391701>,  <32.558044, 33.806328, 32.919834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095032, 34.201988, 33.391701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725750, 34.272297, 33.528404>,  <32.504181, 34.314480, 33.610424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725750, 34.272297, 33.528404>,  <33.095032, 34.201988, 33.391701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725750, 34.272297, 33.528404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309193, -0.188413, 0.932148,
		0.228234, 0.966233, 0.119597,
		-0.923206, 0.175770, 0.341754,
		32.448788, 34.325027, 33.630932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299480, 34.716934, 33.836353>,  <33.095032, 34.201988, 33.391701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299480, 34.716934, 33.836353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686657, 34.807858, 33.879116>,  <33.918961, 34.862411, 33.904774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686657, 34.807858, 33.879116>,  <33.299480, 34.716934, 33.836353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686657, 34.807858, 33.879116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044684, 0.262999, -0.963761,
		-0.247183, 0.937638, 0.244410,
		0.967938, 0.227304, 0.106906,
		33.977039, 34.876049, 33.911186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361046, 35.422737, 33.580559>,  <33.299480, 34.716934, 33.836353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361046, 35.422737, 33.580559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720760, 35.248852, 33.561340>,  <33.936588, 35.144520, 33.549809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720760, 35.248852, 33.561340>,  <33.361046, 35.422737, 33.580559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720760, 35.248852, 33.561340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113198, 0.337454, -0.934511,
		0.422457, 0.834955, 0.352677,
		0.899286, -0.434713, -0.048045,
		33.990547, 35.118439, 33.546928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801266, 35.919529, 33.363964>,  <33.361046, 35.422737, 33.580559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801266, 35.919529, 33.363964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020153, 35.594147, 33.285133>,  <34.151485, 35.398918, 33.237835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020153, 35.594147, 33.285133>,  <33.801266, 35.919529, 33.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020153, 35.594147, 33.285133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311714, 0.416590, -0.853983,
		0.776778, 0.405885, 0.481532,
		0.547221, -0.813456, -0.197078,
		34.184319, 35.350109, 33.226009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445625, 36.187145, 33.224323>,  <33.801266, 35.919529, 33.363964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445625, 36.187145, 33.224323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455540, 35.826454, 33.051685>,  <34.461487, 35.610039, 32.948101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455540, 35.826454, 33.051685>,  <34.445625, 36.187145, 33.224323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455540, 35.826454, 33.051685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463698, 0.392845, -0.794139,
		0.885647, -0.180446, 0.427866,
		0.024786, -0.901727, -0.431595,
		34.462975, 35.555935, 32.922207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159256, 36.136570, 32.929878>,  <34.445625, 36.187145, 33.224323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159256, 36.136570, 32.929878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927269, 35.883114, 32.725082>,  <34.788074, 35.731041, 32.602207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927269, 35.883114, 32.725082>,  <35.159256, 36.136570, 32.929878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927269, 35.883114, 32.725082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360757, 0.363726, -0.858812,
		0.730403, -0.682789, 0.017641,
		-0.579971, -0.633643, -0.511987,
		34.753277, 35.693020, 32.571487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582817, 35.730282, 32.486202>,  <35.159256, 36.136570, 32.929878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582817, 35.730282, 32.486202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218395, 35.723442, 32.321430>,  <34.999741, 35.719337, 32.222569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218395, 35.723442, 32.321430>,  <35.582817, 35.730282, 32.486202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218395, 35.723442, 32.321430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397743, 0.226549, -0.889087,
		0.108520, -0.973850, -0.199600,
		-0.911057, -0.017094, -0.411927,
		34.945080, 35.718311, 32.197853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682777, 35.534924, 31.757963>,  <35.582817, 35.730282, 32.486202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682777, 35.534924, 31.757963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307819, 35.672646, 31.778912>,  <35.082844, 35.755280, 31.791481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307819, 35.672646, 31.778912>,  <35.682777, 35.534924, 31.757963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307819, 35.672646, 31.778912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026037, 0.219247, -0.975322,
		-0.347287, -0.912901, -0.214486,
		-0.937397, 0.344301, 0.052372,
		35.026600, 35.775936, 31.794622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394966, 35.273830, 31.172693>,  <35.682777, 35.534924, 31.757963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394966, 35.273830, 31.172693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157085, 35.572464, 31.291992>,  <35.014359, 35.751644, 31.363571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157085, 35.572464, 31.291992>,  <35.394966, 35.273830, 31.172693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157085, 35.572464, 31.291992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001410, 0.370008, -0.929028,
		-0.803946, -0.552913, -0.218991,
		-0.594700, 0.746580, 0.298246,
		34.978676, 35.796436, 31.381466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876160, 35.330212, 30.661375>,  <35.394966, 35.273830, 31.172693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876160, 35.330212, 30.661375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956181, 35.678036, 30.841970>,  <35.004192, 35.886730, 30.950327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956181, 35.678036, 30.841970>,  <34.876160, 35.330212, 30.661375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956181, 35.678036, 30.841970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121197, 0.435302, -0.892090,
		-0.972261, 0.233181, -0.018307,
		0.200049, 0.869563, 0.451488,
		35.016197, 35.938904, 30.977417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618713, 35.857193, 30.183657>,  <34.876160, 35.330212, 30.661375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618713, 35.857193, 30.183657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852467, 36.059731, 30.437307>,  <34.992718, 36.181252, 30.589499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852467, 36.059731, 30.437307>,  <34.618713, 35.857193, 30.183657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852467, 36.059731, 30.437307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220258, 0.653136, -0.724499,
		-0.781017, 0.563054, 0.270153,
		0.584379, 0.506343, 0.634128,
		35.027779, 36.211632, 30.627546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417118, 36.508259, 30.034266>,  <34.618713, 35.857193, 30.183657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417118, 36.508259, 30.034266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726665, 36.568859, 30.280251>,  <34.912392, 36.605217, 30.427841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726665, 36.568859, 30.280251>,  <34.417118, 36.508259, 30.034266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726665, 36.568859, 30.280251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376563, 0.670653, -0.639081,
		-0.509247, 0.726135, 0.461947,
		0.773865, 0.151498, 0.614964,
		34.958824, 36.614307, 30.464741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431572, 37.252243, 30.172581>,  <34.417118, 36.508259, 30.034266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431572, 37.252243, 30.172581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791851, 37.083790, 30.215260>,  <35.008018, 36.982719, 30.240866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791851, 37.083790, 30.215260>,  <34.431572, 37.252243, 30.172581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791851, 37.083790, 30.215260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400250, 0.708908, -0.580732,
		0.168927, 0.565771, 0.807073,
		0.900702, -0.421133, 0.106696,
		35.062061, 36.957451, 30.247269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879494, 37.797897, 30.295742>,  <34.431572, 37.252243, 30.172581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879494, 37.797897, 30.295742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095615, 37.496696, 30.145510>,  <35.225288, 37.315975, 30.055370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095615, 37.496696, 30.145510>,  <34.879494, 37.797897, 30.295742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095615, 37.496696, 30.145510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321724, 0.597289, -0.734670,
		0.777536, 0.276114, 0.564977,
		0.540307, -0.752999, -0.375581,
		35.257706, 37.270798, 30.032835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635303, 38.109436, 30.089497>,  <34.879494, 37.797897, 30.295742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635303, 38.109436, 30.089497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563431, 37.773335, 29.884874>,  <35.520309, 37.571674, 29.762100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563431, 37.773335, 29.884874>,  <35.635303, 38.109436, 30.089497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563431, 37.773335, 29.884874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194984, 0.479281, -0.855728,
		0.964208, -0.253500, 0.077720,
		-0.179677, -0.840254, -0.511555,
		35.509529, 37.521259, 29.731407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010506, 38.240494, 29.438559>,  <35.635303, 38.109436, 30.089497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010506, 38.240494, 29.438559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769825, 37.932789, 29.352592>,  <35.625416, 37.748165, 29.301012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769825, 37.932789, 29.352592>,  <36.010506, 38.240494, 29.438559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769825, 37.932789, 29.352592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130391, 0.360069, -0.923769,
		0.788009, -0.527807, -0.316958,
		-0.601698, -0.769266, -0.214916,
		35.589317, 37.702007, 29.288118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316128, 37.832386, 28.811928>,  <36.010506, 38.240494, 29.438559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316128, 37.832386, 28.811928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926727, 37.743683, 28.834242>,  <35.693085, 37.690460, 28.847630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926727, 37.743683, 28.834242>,  <36.316128, 37.832386, 28.811928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926727, 37.743683, 28.834242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077287, 0.089504, -0.992983,
		0.215208, -0.970986, -0.104272,
		-0.973505, -0.221757, 0.055783,
		35.634674, 37.677155, 28.850977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243122, 37.310207, 28.346508>,  <36.316128, 37.832386, 28.811928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243122, 37.310207, 28.346508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893070, 37.499252, 28.388052>,  <35.683041, 37.612679, 28.412977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893070, 37.499252, 28.388052>,  <36.243122, 37.310207, 28.346508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893070, 37.499252, 28.388052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078785, 0.072603, -0.994244,
		-0.477432, -0.878275, -0.026302,
		-0.875130, 0.472612, 0.103858,
		35.630531, 37.641037, 28.419209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814362, 37.099030, 27.864319>,  <36.243122, 37.310207, 28.346508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814362, 37.099030, 27.864319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597958, 37.422771, 27.955755>,  <35.468117, 37.617016, 28.010618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597958, 37.422771, 27.955755>,  <35.814362, 37.099030, 27.864319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597958, 37.422771, 27.955755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350085, 0.030414, -0.936224,
		-0.764691, -0.586530, 0.266889,
		-0.541006, 0.809356, 0.228593,
		35.435658, 37.665577, 28.024334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197948, 37.016411, 27.506601>,  <35.814362, 37.099030, 27.864319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197948, 37.016411, 27.506601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178677, 37.407215, 27.589664>,  <35.167114, 37.641697, 27.639503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178677, 37.407215, 27.589664>,  <35.197948, 37.016411, 27.506601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178677, 37.407215, 27.589664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286509, 0.185646, -0.939919,
		-0.956865, -0.104782, 0.270979,
		-0.048181, 0.977014, 0.207659,
		35.164223, 37.700321, 27.651962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543297, 37.329571, 27.284346>,  <35.197948, 37.016411, 27.506601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543297, 37.329571, 27.284346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774841, 37.655727, 27.281134>,  <34.913769, 37.851421, 27.279207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774841, 37.655727, 27.281134>,  <34.543297, 37.329571, 27.284346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774841, 37.655727, 27.281134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232042, 0.155275, -0.960232,
		-0.781715, 0.557703, 0.279087,
		0.578860, 0.815388, -0.008030,
		34.948498, 37.900345, 27.278725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105309, 37.893772, 27.056391>,  <34.543297, 37.329571, 27.284346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105309, 37.893772, 27.056391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483047, 38.005913, 26.987568>,  <34.709690, 38.073196, 26.946274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483047, 38.005913, 26.987568>,  <34.105309, 37.893772, 27.056391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483047, 38.005913, 26.987568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301566, 0.528991, -0.793238,
		-0.131368, 0.800982, 0.584098,
		0.944352, 0.280350, -0.172056,
		34.766354, 38.090019, 26.935951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995152, 38.591137, 26.847374>,  <34.105309, 37.893772, 27.056391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995152, 38.591137, 26.847374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363579, 38.493519, 26.725994>,  <34.584633, 38.434948, 26.653166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363579, 38.493519, 26.725994>,  <33.995152, 38.591137, 26.847374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363579, 38.493519, 26.725994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157848, 0.478383, -0.863848,
		0.355979, 0.843560, 0.402101,
		0.921066, -0.244041, -0.303449,
		34.639900, 38.420307, 26.634960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325089, 39.163780, 26.606672>,  <33.995152, 38.591137, 26.847374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325089, 39.163780, 26.606672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510384, 38.857002, 26.429037>,  <34.621559, 38.672935, 26.322456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510384, 38.857002, 26.429037>,  <34.325089, 39.163780, 26.606672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510384, 38.857002, 26.429037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104268, 0.450449, -0.886693,
		0.880079, 0.457053, 0.128697,
		0.463237, -0.766941, -0.444087,
		34.649353, 38.626919, 26.295811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781548, 39.491928, 26.118443>,  <34.325089, 39.163780, 26.606672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781548, 39.491928, 26.118443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750435, 39.119820, 25.975027>,  <34.731770, 38.896557, 25.888977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750435, 39.119820, 25.975027>,  <34.781548, 39.491928, 26.118443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750435, 39.119820, 25.975027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106505, 0.349818, -0.930744,
		0.991265, -0.110579, 0.071870,
		-0.077779, -0.930269, -0.358540,
		34.727100, 38.840740, 25.867466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171387, 39.533989, 25.513609>,  <34.781548, 39.491928, 26.118443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171387, 39.533989, 25.513609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924793, 39.220821, 25.480158>,  <34.776836, 39.032921, 25.460087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924793, 39.220821, 25.480158>,  <35.171387, 39.533989, 25.513609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924793, 39.220821, 25.480158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026929, 0.085184, -0.996001,
		0.786910, -0.616267, -0.031431,
		-0.616481, -0.782917, -0.083627,
		34.739849, 38.985947, 25.455070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457035, 39.107674, 24.926899>,  <35.171387, 39.533989, 25.513609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457035, 39.107674, 24.926899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082668, 38.972488, 24.966593>,  <34.858047, 38.891376, 24.990410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082668, 38.972488, 24.966593>,  <35.457035, 39.107674, 24.926899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082668, 38.972488, 24.966593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040075, -0.177734, -0.983262,
		0.349943, -0.924225, 0.152800,
		-0.935913, -0.337962, 0.099235,
		34.801895, 38.871101, 24.996363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436970, 38.461998, 24.544035>,  <35.457035, 39.107674, 24.926899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436970, 38.461998, 24.544035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045338, 38.541653, 24.560719>,  <34.810356, 38.589443, 24.570728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045338, 38.541653, 24.560719>,  <35.436970, 38.461998, 24.544035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045338, 38.541653, 24.560719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043984, -0.007020, -0.999007,
		-0.198645, -0.979946, 0.015632,
		-0.979083, 0.199136, 0.041708,
		34.751614, 38.601395, 24.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215012, 38.070679, 24.112488>,  <35.436970, 38.461998, 24.544035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215012, 38.070679, 24.112488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931320, 38.352161, 24.129417>,  <34.761105, 38.521049, 24.139574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931320, 38.352161, 24.129417>,  <35.215012, 38.070679, 24.112488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931320, 38.352161, 24.129417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158362, -0.100531, -0.982250,
		-0.686959, -0.703345, 0.182740,
		-0.709231, 0.703704, 0.042323,
		34.718552, 38.563274, 24.142115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658714, 37.895889, 23.596903>,  <35.215012, 38.070679, 24.112488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658714, 37.895889, 23.596903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600845, 38.288090, 23.650091>,  <34.566124, 38.523411, 23.682005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600845, 38.288090, 23.650091>,  <34.658714, 37.895889, 23.596903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600845, 38.288090, 23.650091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119500, 0.116088, -0.986024,
		-0.982237, -0.158541, 0.100376,
		-0.144673, 0.980504, 0.132972,
		34.557442, 38.582241, 23.689983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123508, 38.129745, 23.029408>,  <34.658714, 37.895889, 23.596903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123508, 38.129745, 23.029408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329010, 38.449699, 23.153505>,  <34.452309, 38.641670, 23.227964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329010, 38.449699, 23.153505>,  <34.123508, 38.129745, 23.029408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329010, 38.449699, 23.153505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068688, 0.322106, -0.944208,
		-0.855186, 0.506397, 0.110540,
		0.513750, 0.799881, 0.310244,
		34.483135, 38.689663, 23.246578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806305, 38.695465, 22.609974>,  <34.123508, 38.129745, 23.029408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806305, 38.695465, 22.609974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162792, 38.819126, 22.742735>,  <34.376686, 38.893322, 22.822392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162792, 38.819126, 22.742735>,  <33.806305, 38.695465, 22.609974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162792, 38.819126, 22.742735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238162, 0.303801, -0.922488,
		-0.386019, 0.901183, 0.197125,
		0.891217, 0.309150, 0.331901,
		34.430157, 38.911873, 22.842306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955692, 39.388409, 22.270752>,  <33.806305, 38.695465, 22.609974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955692, 39.388409, 22.270752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325123, 39.280926, 22.380157>,  <34.546780, 39.216434, 22.445801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325123, 39.280926, 22.380157>,  <33.955692, 39.388409, 22.270752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325123, 39.280926, 22.380157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351910, 0.310845, -0.882913,
		0.152224, 0.911687, 0.381648,
		0.923573, -0.268706, 0.273514,
		34.602196, 39.200314, 22.462212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415314, 39.976521, 22.112597>,  <33.955692, 39.388409, 22.270752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415314, 39.976521, 22.112597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647968, 39.651154, 22.115688>,  <34.787560, 39.455933, 22.117544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647968, 39.651154, 22.115688>,  <34.415314, 39.976521, 22.112597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647968, 39.651154, 22.115688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389062, 0.269828, -0.880809,
		0.714375, 0.515317, 0.473410,
		0.581635, -0.813413, 0.007732,
		34.822460, 39.407131, 22.118008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907936, 40.143608, 21.612101>,  <34.415314, 39.976521, 22.112597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907936, 40.143608, 21.612101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988674, 39.757080, 21.675953>,  <35.037117, 39.525162, 21.714264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988674, 39.757080, 21.675953>,  <34.907936, 40.143608, 21.612101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988674, 39.757080, 21.675953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384818, -0.071632, -0.920209,
		0.900651, 0.247172, 0.357399,
		0.201848, -0.966320, 0.159631,
		35.049229, 39.467182, 21.723843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587318, 40.097706, 21.434057>,  <34.907936, 40.143608, 21.612101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587318, 40.097706, 21.434057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434204, 39.728325, 21.423370>,  <35.342335, 39.506695, 21.416958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434204, 39.728325, 21.423370>,  <35.587318, 40.097706, 21.434057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434204, 39.728325, 21.423370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214900, -0.060879, -0.974737,
		0.898497, -0.378852, 0.221754,
		-0.382781, -0.923453, -0.026716,
		35.319370, 39.451290, 21.415356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102364, 39.644073, 21.089157>,  <35.587318, 40.097706, 21.434057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102364, 39.644073, 21.089157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762459, 39.434814, 21.063133>,  <35.558517, 39.309261, 21.047520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762459, 39.434814, 21.063133>,  <36.102364, 39.644073, 21.089157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762459, 39.434814, 21.063133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164098, -0.145212, -0.975698,
		0.500984, -0.839782, 0.209242,
		-0.849757, -0.523145, -0.065058,
		35.507530, 39.277870, 21.043615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291538, 39.027763, 20.849566>,  <36.102364, 39.644073, 21.089157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291538, 39.027763, 20.849566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899597, 39.066574, 20.779747>,  <35.664433, 39.089859, 20.737856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899597, 39.066574, 20.779747>,  <36.291538, 39.027763, 20.849566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899597, 39.066574, 20.779747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147354, -0.238638, -0.959864,
		-0.134782, -0.966250, 0.219534,
		-0.979858, 0.097023, -0.174545,
		35.605640, 39.095680, 20.727383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096508, 38.467968, 20.535904>,  <36.291538, 39.027763, 20.849566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096508, 38.467968, 20.535904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798157, 38.709240, 20.422882>,  <35.619148, 38.854004, 20.355068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798157, 38.709240, 20.422882>,  <36.096508, 38.467968, 20.535904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798157, 38.709240, 20.422882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154801, -0.255615, -0.954305,
		-0.647848, -0.755533, 0.097283,
		-0.745875, 0.603185, -0.282557,
		35.574394, 38.890194, 20.338116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148636, 38.090889, 19.959179>,  <36.096508, 38.467968, 20.535904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148636, 38.090889, 19.959179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430939, 37.827953, 19.853493>,  <36.600319, 37.670193, 19.790081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430939, 37.827953, 19.853493>,  <36.148636, 38.090889, 19.959179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430939, 37.827953, 19.853493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141406, -0.234737, 0.961719,
		-0.694201, -0.716099, -0.072714,
		0.705755, -0.657344, -0.264215,
		36.642666, 37.630749, 19.774229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014332, 37.420818, 20.365356>,  <36.148636, 38.090889, 19.959179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014332, 37.420818, 20.365356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400166, 37.404308, 20.261143>,  <36.631664, 37.394402, 20.198614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400166, 37.404308, 20.261143>,  <36.014332, 37.420818, 20.365356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400166, 37.404308, 20.261143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224897, -0.387479, 0.894025,
		-0.137854, -0.920954, -0.364472,
		0.964582, -0.041277, -0.260535,
		36.689541, 37.391926, 20.182981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302242, 36.677322, 20.547142>,  <36.014332, 37.420818, 20.365356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302242, 36.677322, 20.547142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609390, 36.932213, 20.520872>,  <36.793678, 37.085148, 20.505110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609390, 36.932213, 20.520872>,  <36.302242, 36.677322, 20.547142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609390, 36.932213, 20.520872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230097, -0.178681, 0.956623,
		0.597854, -0.749675, -0.283829,
		0.767871, 0.637229, -0.065673,
		36.839752, 37.123383, 20.501171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793766, 36.272346, 20.829321>,  <36.302242, 36.677322, 20.547142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793766, 36.272346, 20.829321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916405, 36.652348, 20.852962>,  <36.989986, 36.880348, 20.867147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916405, 36.652348, 20.852962>,  <36.793766, 36.272346, 20.829321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916405, 36.652348, 20.852962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465937, -0.203942, 0.860994,
		0.830000, -0.236439, -0.505170,
		0.306598, 0.950002, 0.059106,
		37.008385, 36.937347, 20.870695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553642, 36.196636, 20.965040>,  <36.793766, 36.272346, 20.829321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553642, 36.196636, 20.965040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406456, 36.548931, 21.084305>,  <37.318142, 36.760307, 21.155863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406456, 36.548931, 21.084305>,  <37.553642, 36.196636, 20.965040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406456, 36.548931, 21.084305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501543, -0.082015, 0.861236,
		0.782977, 0.466448, -0.411549,
		-0.367968, 0.880738, 0.298160,
		37.296066, 36.813152, 21.173752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060390, 36.367157, 21.371178>,  <37.553642, 36.196636, 20.965040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060390, 36.367157, 21.371178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792324, 36.644730, 21.476507>,  <37.631485, 36.811272, 21.539705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792324, 36.644730, 21.476507>,  <38.060390, 36.367157, 21.371178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792324, 36.644730, 21.476507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282455, -0.089642, 0.955083,
		0.686368, 0.714438, -0.135930,
		-0.670163, 0.693932, 0.263324,
		37.591274, 36.852909, 21.555504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480927, 36.877125, 21.765280>,  <38.060390, 36.367157, 21.371178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480927, 36.877125, 21.765280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093044, 36.903328, 21.859406>,  <37.860313, 36.919048, 21.915880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093044, 36.903328, 21.859406>,  <38.480927, 36.877125, 21.765280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093044, 36.903328, 21.859406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231447, -0.061524, 0.970900,
		0.078076, 0.995954, 0.044499,
		-0.969710, 0.065505, 0.235314,
		37.802132, 36.922981, 21.930000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428745, 37.280357, 22.382816>,  <38.480927, 36.877125, 21.765280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428745, 37.280357, 22.382816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094246, 37.061577, 22.367153>,  <37.893547, 36.930309, 22.357756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094246, 37.061577, 22.367153>,  <38.428745, 37.280357, 22.382816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094246, 37.061577, 22.367153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003085, -0.066713, 0.997767,
		-0.548345, 0.834500, 0.054101,
		-0.836246, -0.546954, -0.039157,
		37.843372, 36.897491, 22.355406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036407, 37.567581, 22.969637>,  <38.428745, 37.280357, 22.382816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036407, 37.567581, 22.969637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819740, 37.238873, 22.898884>,  <37.689739, 37.041649, 22.856432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819740, 37.238873, 22.898884>,  <38.036407, 37.567581, 22.969637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819740, 37.238873, 22.898884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201924, -0.077060, 0.976365,
		-0.815978, 0.564585, -0.124194,
		-0.541670, -0.821770, -0.176883,
		37.657238, 36.992340, 22.845819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316765, 37.730457, 23.174040>,  <38.036407, 37.567581, 22.969637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316765, 37.730457, 23.174040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386894, 37.336716, 23.167116>,  <37.428970, 37.100471, 23.162962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386894, 37.336716, 23.167116>,  <37.316765, 37.730457, 23.174040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386894, 37.336716, 23.167116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171370, -0.047829, 0.984045,
		-0.969481, -0.169561, -0.177075,
		0.175325, -0.984359, -0.017312,
		37.439491, 37.041409, 23.161922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762535, 37.313423, 23.575972>,  <37.316765, 37.730457, 23.174040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762535, 37.313423, 23.575972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088943, 37.082382, 23.567139>,  <37.284786, 36.943756, 23.561838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088943, 37.082382, 23.567139>,  <36.762535, 37.313423, 23.575972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088943, 37.082382, 23.567139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036632, -0.089803, 0.995285,
		-0.576865, -0.811361, -0.094440,
		0.816018, -0.577605, -0.022083,
		37.333748, 36.909100, 23.560514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546623, 36.798996, 23.993771>,  <36.762535, 37.313423, 23.575972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546623, 36.798996, 23.993771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943172, 36.747673, 23.983078>,  <37.181103, 36.716881, 23.976664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943172, 36.747673, 23.983078>,  <36.546623, 36.798996, 23.993771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943172, 36.747673, 23.983078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023691, -0.376035, 0.926303,
		-0.128901, -0.917680, -0.375831,
		0.991374, -0.128305, -0.026730,
		37.240585, 36.709183, 23.975060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575027, 36.216789, 24.371334>,  <36.546623, 36.798996, 23.993771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575027, 36.216789, 24.371334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956188, 36.333492, 24.338228>,  <37.184887, 36.403515, 24.318365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956188, 36.333492, 24.338228>,  <36.575027, 36.216789, 24.371334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956188, 36.333492, 24.338228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188316, -0.355318, 0.915580,
		0.237721, -0.888046, -0.393527,
		0.952904, 0.291759, -0.082767,
		37.242058, 36.421021, 24.313398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915478, 35.714016, 24.606037>,  <36.575027, 36.216789, 24.371334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915478, 35.714016, 24.606037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163692, 36.025078, 24.646418>,  <37.312622, 36.211716, 24.670645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163692, 36.025078, 24.646418>,  <36.915478, 35.714016, 24.606037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163692, 36.025078, 24.646418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098656, -0.205129, 0.973750,
		0.777948, -0.594287, -0.204010,
		0.620536, 0.777653, 0.100950,
		37.349854, 36.258373, 24.676702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603508, 35.551159, 24.999826>,  <36.915478, 35.714016, 24.606037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603508, 35.551159, 24.999826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547203, 35.946342, 25.025522>,  <37.513420, 36.183453, 25.040939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547203, 35.946342, 25.025522>,  <37.603508, 35.551159, 24.999826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547203, 35.946342, 25.025522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063545, -0.073767, 0.995249,
		0.988002, 0.136014, 0.073164,
		-0.140765, 0.987957, 0.064239,
		37.504974, 36.242729, 25.044794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161137, 35.786526, 25.503317>,  <37.603508, 35.551159, 24.999826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161137, 35.786526, 25.503317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881260, 36.072071, 25.514820>,  <37.713333, 36.243401, 25.521721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881260, 36.072071, 25.514820>,  <38.161137, 35.786526, 25.503317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881260, 36.072071, 25.514820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072210, -0.110704, 0.991226,
		0.710787, 0.691476, 0.129007,
		-0.699691, 0.713867, 0.028756,
		37.671352, 36.286232, 25.523447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413994, 36.205219, 26.078476>,  <38.161137, 35.786526, 25.503317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413994, 36.205219, 26.078476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025299, 36.280460, 26.021429>,  <37.792080, 36.325603, 25.987202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025299, 36.280460, 26.021429>,  <38.413994, 36.205219, 26.078476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025299, 36.280460, 26.021429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174119, -0.163232, 0.971101,
		0.159387, 0.968490, 0.191371,
		-0.971740, 0.188102, -0.142615,
		37.733776, 36.336891, 25.978645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203339, 36.755249, 26.434732>,  <38.413994, 36.205219, 26.078476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203339, 36.755249, 26.434732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869003, 36.542233, 26.381414>,  <37.668400, 36.414421, 26.349424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869003, 36.542233, 26.381414>,  <38.203339, 36.755249, 26.434732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869003, 36.542233, 26.381414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117353, -0.063862, 0.991035,
		-0.536283, 0.843989, -0.009118,
		-0.835840, -0.532545, -0.133293,
		37.618252, 36.382469, 26.341427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775452, 37.061893, 26.940195>,  <38.203339, 36.755249, 26.434732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775452, 37.061893, 26.940195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594368, 36.719585, 26.840029>,  <37.485718, 36.514202, 26.779928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594368, 36.719585, 26.840029>,  <37.775452, 37.061893, 26.940195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594368, 36.719585, 26.840029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237088, -0.155206, 0.959010,
		-0.859559, 0.493526, -0.132629,
		-0.452711, -0.855771, -0.250417,
		37.458553, 36.462852, 26.764904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191284, 37.141624, 27.266085>,  <37.775452, 37.061893, 26.940195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191284, 37.141624, 27.266085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229660, 36.747761, 27.207796>,  <37.252686, 36.511440, 27.172823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229660, 36.747761, 27.207796>,  <37.191284, 37.141624, 27.266085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229660, 36.747761, 27.207796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327121, -0.169452, 0.929665,
		-0.940100, -0.041521, -0.338361,
		0.095936, -0.984663, -0.145719,
		37.258442, 36.452362, 27.164080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641876, 36.818260, 27.703039>,  <37.191284, 37.141624, 27.266085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641876, 36.818260, 27.703039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903492, 36.521736, 27.642771>,  <37.060459, 36.343822, 27.606609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903492, 36.521736, 27.642771>,  <36.641876, 36.818260, 27.703039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903492, 36.521736, 27.642771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257165, -0.405206, 0.877311,
		-0.711409, -0.535045, -0.455658,
		0.654036, -0.741306, -0.150673,
		37.099701, 36.299343, 27.597569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265072, 36.262653, 27.980223>,  <36.641876, 36.818260, 27.703039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265072, 36.262653, 27.980223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646847, 36.156300, 27.926025>,  <36.875912, 36.092487, 27.893507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646847, 36.156300, 27.926025>,  <36.265072, 36.262653, 27.980223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646847, 36.156300, 27.926025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052026, -0.595340, 0.801788,
		-0.293847, -0.758205, -0.582047,
		0.954435, -0.265885, -0.135492,
		36.933178, 36.076534, 27.885378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319664, 35.618740, 28.176758>,  <36.265072, 36.262653, 27.980223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319664, 35.618740, 28.176758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704941, 35.720161, 28.212460>,  <36.936108, 35.781013, 28.233881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704941, 35.720161, 28.212460>,  <36.319664, 35.618740, 28.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704941, 35.720161, 28.212460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063424, -0.537031, 0.841175,
		0.261216, -0.804554, -0.533347,
		0.963194, 0.253556, 0.089253,
		36.993900, 35.796227, 28.239235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616302, 35.025707, 28.390881>,  <36.319664, 35.618740, 28.176758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616302, 35.025707, 28.390881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870377, 35.323074, 28.474661>,  <37.022820, 35.501495, 28.524929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870377, 35.323074, 28.474661>,  <36.616302, 35.025707, 28.390881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870377, 35.323074, 28.474661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334926, -0.509477, 0.792627,
		0.695963, -0.433316, -0.572602,
		0.635186, 0.743418, 0.209449,
		37.060932, 35.546101, 28.537495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331650, 34.797852, 28.505188>,  <36.616302, 35.025707, 28.390881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331650, 34.797852, 28.505188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300026, 35.144615, 28.702051>,  <37.281052, 35.352673, 28.820169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300026, 35.144615, 28.702051>,  <37.331650, 34.797852, 28.505188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300026, 35.144615, 28.702051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267755, -0.457096, 0.848157,
		0.960238, 0.198830, -0.195982,
		-0.079056, 0.866908, 0.492158,
		37.276310, 35.404686, 28.849699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996105, 34.911312, 28.877996>,  <37.331650, 34.797852, 28.505188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996105, 34.911312, 28.877996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726479, 35.137554, 29.068035>,  <37.564701, 35.273300, 29.182058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726479, 35.137554, 29.068035>,  <37.996105, 34.911312, 28.877996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726479, 35.137554, 29.068035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364034, -0.305284, 0.879932,
		0.642736, 0.766088, -0.000117,
		-0.674069, 0.565607, 0.475099,
		37.524258, 35.307236, 29.210566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327503, 35.244957, 29.402918>,  <37.996105, 34.911312, 28.877996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327503, 35.244957, 29.402918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951473, 35.283138, 29.533852>,  <37.725857, 35.306049, 29.612411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951473, 35.283138, 29.533852>,  <38.327503, 35.244957, 29.402918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951473, 35.283138, 29.533852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283938, -0.312375, 0.906532,
		0.188786, 0.945150, 0.266552,
		-0.940074, 0.095456, 0.327336,
		37.669453, 35.311775, 29.632053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428097, 35.667274, 29.995953>,  <38.327503, 35.244957, 29.402918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428097, 35.667274, 29.995953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068924, 35.492222, 30.014706>,  <37.853420, 35.387192, 30.025957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068924, 35.492222, 30.014706>,  <38.428097, 35.667274, 29.995953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068924, 35.492222, 30.014706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172713, -0.252377, 0.952090,
		-0.404831, 0.863010, 0.302202,
		-0.897932, -0.437630, 0.046883,
		37.799545, 35.360931, 30.028770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167538, 35.748573, 30.744383>,  <38.428097, 35.667274, 29.995953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167538, 35.748573, 30.744383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941845, 35.455410, 30.592333>,  <37.806431, 35.279514, 30.501102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941845, 35.455410, 30.592333>,  <38.167538, 35.748573, 30.744383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941845, 35.455410, 30.592333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223658, -0.578883, 0.784138,
		-0.794748, 0.357414, 0.490542,
		-0.564228, -0.732905, -0.380127,
		37.772575, 35.235538, 30.478294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739254, 35.581406, 31.305555>,  <38.167538, 35.748573, 30.744383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739254, 35.581406, 31.305555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695110, 35.282711, 31.043196>,  <37.668625, 35.103493, 30.885780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695110, 35.282711, 31.043196>,  <37.739254, 35.581406, 31.305555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695110, 35.282711, 31.043196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111867, -0.646402, 0.754752,
		-0.987576, 0.156665, -0.012201,
		-0.110356, -0.746740, -0.655897,
		37.662003, 35.058689, 30.846426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323311, 35.097477, 31.612209>,  <37.739254, 35.581406, 31.305555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323311, 35.097477, 31.612209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475464, 34.854408, 31.333340>,  <37.566753, 34.708569, 31.166018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475464, 34.854408, 31.333340>,  <37.323311, 35.097477, 31.612209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475464, 34.854408, 31.333340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126232, -0.712669, 0.690049,
		-0.916175, -0.350486, -0.194377,
		0.380379, -0.607669, -0.697173,
		37.589577, 34.672108, 31.124187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965504, 34.411823, 31.695253>,  <37.323311, 35.097477, 31.612209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965504, 34.411823, 31.695253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303406, 34.333839, 31.495899>,  <37.506145, 34.287048, 31.376287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303406, 34.333839, 31.495899>,  <36.965504, 34.411823, 31.695253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303406, 34.333839, 31.495899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300820, -0.597243, 0.743511,
		-0.442610, -0.778005, -0.445875,
		0.844751, -0.194957, -0.498385,
		37.556831, 34.275352, 31.346384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094181, 33.638744, 31.580660>,  <36.965504, 34.411823, 31.695253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094181, 33.638744, 31.580660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448864, 33.822849, 31.598173>,  <37.661674, 33.933311, 31.608681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448864, 33.822849, 31.598173>,  <37.094181, 33.638744, 31.580660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448864, 33.822849, 31.598173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286296, -0.620970, 0.729678,
		0.363028, -0.634475, -0.682388,
		0.886705, 0.460258, 0.043782,
		37.714874, 33.960926, 31.611307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528633, 33.027611, 31.755943>,  <37.094181, 33.638744, 31.580660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528633, 33.027611, 31.755943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731201, 33.369968, 31.797857>,  <37.852741, 33.575382, 31.823006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731201, 33.369968, 31.797857>,  <37.528633, 33.027611, 31.755943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731201, 33.369968, 31.797857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648707, -0.458218, 0.607632,
		0.568085, -0.239740, -0.787276,
		0.506418, 0.855898, 0.104786,
		37.883125, 33.626740, 31.829292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259830, 32.872799, 31.718939>,  <37.528633, 33.027611, 31.755943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259830, 32.872799, 31.718939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247761, 33.228638, 31.901237>,  <38.240520, 33.442142, 32.010616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247761, 33.228638, 31.901237>,  <38.259830, 32.872799, 31.718939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247761, 33.228638, 31.901237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662099, -0.323792, 0.675858,
		0.748809, 0.322140, -0.579233,
		-0.030170, 0.889598, 0.455747,
		38.238708, 33.495518, 32.037960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963284, 32.897602, 31.982113>,  <38.259830, 32.872799, 31.718939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963284, 32.897602, 31.982113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756935, 33.182220, 32.172935>,  <38.633125, 33.352989, 32.287430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756935, 33.182220, 32.172935>,  <38.963284, 32.897602, 31.982113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756935, 33.182220, 32.172935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562330, -0.138842, 0.815174,
		0.646266, 0.688789, -0.328497,
		-0.515874, 0.711542, 0.477055,
		38.602173, 33.395683, 32.316051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443043, 33.411507, 32.123825>,  <38.963284, 32.897602, 31.982113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443043, 33.411507, 32.123825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153996, 33.438641, 32.398991>,  <38.980568, 33.454922, 32.564091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153996, 33.438641, 32.398991>,  <39.443043, 33.411507, 32.123825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153996, 33.438641, 32.398991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658188, -0.236566, 0.714720,
		0.211222, 0.969244, 0.126296,
		-0.722615, 0.067838, 0.687913,
		38.937210, 33.458992, 32.605366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811363, 33.605953, 32.656879>,  <39.443043, 33.411507, 32.123825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811363, 33.605953, 32.656879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468494, 33.483372, 32.822456>,  <39.262775, 33.409821, 32.921803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468494, 33.483372, 32.822456>,  <39.811363, 33.605953, 32.656879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468494, 33.483372, 32.822456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498620, -0.292464, 0.815992,
		-0.129003, 0.905842, 0.403496,
		-0.857168, -0.306457, 0.413942,
		39.211346, 33.391434, 32.946640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775982, 33.883236, 33.421261>,  <39.811363, 33.605953, 32.656879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775982, 33.883236, 33.421261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548595, 33.554489, 33.406395>,  <39.412163, 33.357243, 33.397476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548595, 33.554489, 33.406395>,  <39.775982, 33.883236, 33.421261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548595, 33.554489, 33.406395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532556, -0.402042, 0.744813,
		-0.627079, 0.403608, 0.666238,
		-0.568468, -0.821865, -0.037168,
		39.378056, 33.307930, 33.395245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574146, 33.742481, 34.076885>,  <39.775982, 33.883236, 33.421261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574146, 33.742481, 34.076885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515392, 33.392063, 33.893158>,  <39.480141, 33.181812, 33.782921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515392, 33.392063, 33.893158>,  <39.574146, 33.742481, 34.076885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515392, 33.392063, 33.893158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491994, -0.467543, 0.734401,
		-0.858118, -0.118106, 0.499685,
		-0.146887, -0.876045, -0.459314,
		39.471325, 33.129250, 33.755363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266087, 33.389877, 34.608303>,  <39.574146, 33.742481, 34.076885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266087, 33.389877, 34.608303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448463, 33.170479, 34.327942>,  <39.557892, 33.038841, 34.159725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448463, 33.170479, 34.327942>,  <39.266087, 33.389877, 34.608303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448463, 33.170479, 34.327942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626696, -0.361331, 0.690429,
		-0.631955, -0.754052, 0.178992,
		0.455944, -0.548494, -0.700906,
		39.585247, 33.005932, 34.117672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447372, 32.821095, 34.996025>,  <39.266087, 33.389877, 34.608303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447372, 32.821095, 34.996025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646687, 32.725208, 34.662739>,  <39.766273, 32.667679, 34.462769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646687, 32.725208, 34.662739>,  <39.447372, 32.821095, 34.996025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646687, 32.725208, 34.662739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600445, -0.597848, 0.531078,
		-0.625443, -0.764929, -0.153964,
		0.498284, -0.239712, -0.833217,
		39.796173, 32.653294, 34.412773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482487, 32.049465, 34.938740>,  <39.447372, 32.821095, 34.996025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482487, 32.049465, 34.938740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797260, 32.168793, 34.722687>,  <39.986126, 32.240391, 34.593056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797260, 32.168793, 34.722687>,  <39.482487, 32.049465, 34.938740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797260, 32.168793, 34.722687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545288, -0.745902, 0.382480,
		-0.288784, -0.595514, -0.749645,
		0.786934, 0.298318, -0.540131,
		40.033340, 32.258289, 34.560646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867611, 31.444298, 34.806614>,  <39.482487, 32.049465, 34.938740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867611, 31.444298, 34.806614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119102, 31.750479, 34.751801>,  <40.269997, 31.934187, 34.718910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119102, 31.750479, 34.751801>,  <39.867611, 31.444298, 34.806614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119102, 31.750479, 34.751801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749611, -0.549722, 0.368632,
		0.206839, -0.334494, -0.919419,
		0.628730, 0.765454, -0.137036,
		40.307720, 31.980114, 34.710690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367535, 31.137434, 34.396637>,  <39.867611, 31.444298, 34.806614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367535, 31.137434, 34.396637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520264, 31.453022, 34.589195>,  <40.611900, 31.642374, 34.704731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520264, 31.453022, 34.589195>,  <40.367535, 31.137434, 34.396637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520264, 31.453022, 34.589195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785046, -0.551734, 0.281587,
		0.487766, 0.270402, -0.830040,
		0.381820, 0.788969, 0.481395,
		40.634811, 31.689713, 34.733612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939133, 30.842514, 34.695469>,  <40.367535, 31.137434, 34.396637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939133, 30.842514, 34.695469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969910, 31.210035, 34.850330>,  <40.988377, 31.430548, 34.943245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969910, 31.210035, 34.850330>,  <40.939133, 30.842514, 34.695469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969910, 31.210035, 34.850330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889550, -0.238637, 0.389556,
		0.450312, 0.314415, -0.835680,
		0.076942, 0.918801, 0.387149,
		40.992992, 31.485676, 34.966476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547909, 31.183090, 34.493179>,  <40.939133, 30.842514, 34.695469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547909, 31.183090, 34.493179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438858, 31.320152, 34.852795>,  <41.373428, 31.402390, 35.068562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438858, 31.320152, 34.852795>,  <41.547909, 31.183090, 34.493179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438858, 31.320152, 34.852795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779358, -0.469275, 0.415189,
		0.564161, 0.813861, -0.139115,
		-0.272623, 0.342654, 0.899035,
		41.357071, 31.422949, 35.122505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166286, 31.217615, 34.804619>,  <41.547909, 31.183090, 34.493179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166286, 31.217615, 34.804619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909985, 31.200510, 35.111240>,  <41.756203, 31.190247, 35.295212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909985, 31.200510, 35.111240>,  <42.166286, 31.217615, 34.804619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909985, 31.200510, 35.111240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702616, -0.435102, 0.563042,
		0.309451, 0.899365, 0.308840,
		-0.640758, -0.042762, 0.766551,
		41.717758, 31.187681, 35.341206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575027, 31.405800, 35.348663>,  <42.166286, 31.217615, 34.804619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575027, 31.405800, 35.348663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257061, 31.229643, 35.515598>,  <42.066280, 31.123949, 35.615761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257061, 31.229643, 35.515598>,  <42.575027, 31.405800, 35.348663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257061, 31.229643, 35.515598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600100, -0.469317, 0.647783,
		-0.089416, 0.765374, 0.637345,
		-0.794912, -0.440392, 0.417336,
		42.018589, 31.097525, 35.640800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634693, 31.601332, 36.037663>,  <42.575027, 31.405800, 35.348663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634693, 31.601332, 36.037663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408108, 31.272474, 36.015034>,  <42.272156, 31.075159, 36.001457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408108, 31.272474, 36.015034>,  <42.634693, 31.601332, 36.037663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408108, 31.272474, 36.015034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579838, -0.446410, 0.681547,
		-0.585583, 0.353269, 0.729584,
		-0.566464, -0.822143, -0.056571,
		42.238167, 31.025831, 35.998062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575371, 31.322109, 36.786003>,  <42.634693, 31.601332, 36.037663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575371, 31.322109, 36.786003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478016, 31.020428, 36.542057>,  <42.419601, 30.839418, 36.395691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478016, 31.020428, 36.542057>,  <42.575371, 31.322109, 36.786003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478016, 31.020428, 36.542057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562685, -0.621945, 0.544583,
		-0.790030, -0.210616, 0.575755,
		-0.243390, -0.754205, -0.609866,
		42.404999, 30.794167, 36.359097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660137, 30.782122, 37.256001>,  <42.575371, 31.322109, 36.786003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660137, 30.782122, 37.256001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640686, 30.586870, 36.907436>,  <42.629013, 30.469719, 36.698296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640686, 30.586870, 36.907436>,  <42.660137, 30.782122, 37.256001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640686, 30.586870, 36.907436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666305, -0.665804, 0.335772,
		-0.744092, -0.564299, 0.357623,
		-0.048632, -0.488131, -0.871414,
		42.626095, 30.440432, 36.646011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618061, 29.970284, 37.415283>,  <42.660137, 30.782122, 37.256001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618061, 29.970284, 37.415283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776005, 30.047779, 37.056049>,  <42.870773, 30.094276, 36.840511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776005, 30.047779, 37.056049>,  <42.618061, 29.970284, 37.415283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776005, 30.047779, 37.056049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704822, -0.690908, 0.160847,
		-0.589329, -0.696500, -0.409365,
		0.394863, 0.193738, -0.898080,
		42.894463, 30.105900, 36.786625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626240, 29.401068, 37.028469>,  <42.618061, 29.970284, 37.415283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626240, 29.401068, 37.028469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909901, 29.626575, 36.859112>,  <43.080097, 29.761881, 36.757496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909901, 29.626575, 36.859112>,  <42.626240, 29.401068, 37.028469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909901, 29.626575, 36.859112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651875, -0.753076, 0.089085,
		-0.268622, -0.339174, -0.901556,
		0.709155, 0.563771, -0.423392,
		43.122646, 29.795708, 36.732094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954201, 28.896273, 36.654057>,  <42.626240, 29.401068, 37.028469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954201, 28.896273, 36.654057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223415, 29.192007, 36.646042>,  <43.384945, 29.369448, 36.641232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223415, 29.192007, 36.646042>,  <42.954201, 28.896273, 36.654057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223415, 29.192007, 36.646042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739560, -0.673056, 0.006844,
		-0.008427, -0.019425, -0.999776,
		0.673038, 0.739336, -0.020038,
		43.425327, 29.413809, 36.640030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438038, 28.745474, 36.135654>,  <42.954201, 28.896273, 36.654057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438038, 28.745474, 36.135654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609741, 29.014462, 36.376823>,  <43.712765, 29.175854, 36.521526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609741, 29.014462, 36.376823>,  <43.438038, 28.745474, 36.135654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609741, 29.014462, 36.376823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847949, -0.529926, -0.012655,
		0.310997, 0.516684, -0.797696,
		0.429259, 0.672470, 0.602927,
		43.738518, 29.216202, 36.557701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083054, 28.696392, 35.890942>,  <43.438038, 28.745474, 36.135654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083054, 28.696392, 35.890942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121136, 28.856195, 36.255650>,  <44.143986, 28.952078, 36.474476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121136, 28.856195, 36.255650>,  <44.083054, 28.696392, 35.890942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121136, 28.856195, 36.255650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848016, -0.512249, 0.135908,
		0.521351, 0.760258, -0.387558,
		0.095201, 0.399511, 0.911772,
		44.149696, 28.976049, 36.529182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776619, 29.029657, 35.932236>,  <44.083054, 28.696392, 35.890942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776619, 29.029657, 35.932236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684475, 28.958015, 36.314827>,  <44.629189, 28.915030, 36.544384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684475, 28.958015, 36.314827>,  <44.776619, 29.029657, 35.932236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684475, 28.958015, 36.314827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724770, -0.687466, 0.045819,
		0.649342, 0.703783, 0.288173,
		-0.230356, -0.179107, 0.956482,
		44.615368, 28.904284, 36.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390255, 29.139320, 36.380100>,  <44.776619, 29.029657, 35.932236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390255, 29.139320, 36.380100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143799, 28.901520, 36.586765>,  <44.995926, 28.758839, 36.710766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143799, 28.901520, 36.586765>,  <45.390255, 29.139320, 36.380100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143799, 28.901520, 36.586765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739647, -0.662193, 0.120097,
		0.270732, 0.456143, 0.847725,
		-0.616139, -0.594503, 0.516661,
		44.958958, 28.723169, 36.741764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772686, 29.033333, 36.974861>,  <45.390255, 29.139320, 36.380100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772686, 29.033333, 36.974861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.524509, 28.734674, 36.878887>,  <45.375603, 28.555479, 36.821301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.524509, 28.734674, 36.878887>,  <45.772686, 29.033333, 36.974861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524509, 28.734674, 36.878887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743078, -0.657507, 0.124579,
		-0.250778, -0.100999, 0.962762,
		-0.620440, -0.746648, -0.239939,
		45.338379, 28.510679, 36.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787750, 28.446705, 37.535480>,  <45.772686, 29.033333, 36.974861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787750, 28.446705, 37.535480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632317, 28.286600, 37.203506>,  <45.539055, 28.190536, 37.004322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632317, 28.286600, 37.203506>,  <45.787750, 28.446705, 37.535480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632317, 28.286600, 37.203506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589932, -0.799979, 0.109604,
		-0.707800, -0.447014, 0.546989,
		-0.388585, -0.400264, -0.829934,
		45.515739, 28.166521, 36.954525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556969, 27.691990, 37.628151>,  <45.787750, 28.446705, 37.535480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556969, 27.691990, 37.628151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643417, 27.771065, 37.245693>,  <45.695286, 27.818510, 37.016220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643417, 27.771065, 37.245693>,  <45.556969, 27.691990, 37.628151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643417, 27.771065, 37.245693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546923, -0.835738, -0.049167,
		-0.808805, -0.512310, -0.288743,
		0.216125, 0.197686, -0.956143,
		45.708256, 27.830370, 36.958851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430809, 27.124723, 37.171486>,  <45.556969, 27.691990, 37.628151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430809, 27.124723, 37.171486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708931, 27.350540, 36.993565>,  <45.875805, 27.486031, 36.886810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708931, 27.350540, 36.993565>,  <45.430809, 27.124723, 37.171486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708931, 27.350540, 36.993565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619244, -0.784701, -0.027957,
		-0.364819, -0.256002, -0.895193,
		0.695301, 0.564542, -0.444802,
		45.917522, 27.519903, 36.860123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900070, 26.675976, 36.807648>,  <45.430809, 27.124723, 37.171486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900070, 26.675976, 36.807648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525002, 26.779585, 36.714970>,  <44.299961, 26.841751, 36.659363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525002, 26.779585, 36.714970>,  <44.900070, 26.675976, 36.807648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525002, 26.779585, 36.714970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148945, 0.302848, 0.941328,
		0.313995, 0.917164, -0.245391,
		-0.937669, 0.259023, -0.231700,
		44.243702, 26.857292, 36.645458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849323, 27.382692, 36.488655>,  <44.900070, 26.675976, 36.807648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849323, 27.382692, 36.488655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.015968, 27.615377, 36.768097>,  <45.115955, 27.754988, 36.935760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.015968, 27.615377, 36.768097>,  <44.849323, 27.382692, 36.488655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015968, 27.615377, 36.768097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796709, 0.603733, -0.027601,
		-0.437826, -0.545086, 0.714975,
		0.416609, 0.581711, 0.698605,
		45.140949, 27.789890, 36.977680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430908, 27.521656, 37.016441>,  <44.849323, 27.382692, 36.488655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430908, 27.521656, 37.016441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686684, 27.829056, 37.025562>,  <44.840149, 28.013496, 37.031036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686684, 27.829056, 37.025562>,  <44.430908, 27.521656, 37.016441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686684, 27.829056, 37.025562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768089, 0.639847, -0.025206,
		-0.033961, -0.001397, 0.999422,
		0.639441, 0.768501, 0.022803,
		44.878517, 28.059607, 37.032402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131893, 28.094337, 37.514359>,  <44.430908, 27.521656, 37.016441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131893, 28.094337, 37.514359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403099, 28.284273, 37.289925>,  <44.565823, 28.398235, 37.155262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403099, 28.284273, 37.289925>,  <44.131893, 28.094337, 37.514359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403099, 28.284273, 37.289925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499638, 0.857599, 0.122008,
		0.539122, 0.197617, 0.818716,
		0.678019, 0.474839, -0.561087,
		44.606506, 28.426725, 37.121597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164837, 28.764902, 37.795055>,  <44.131893, 28.094337, 37.514359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164837, 28.764902, 37.795055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313335, 28.790279, 37.424511>,  <44.402435, 28.805506, 37.202183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313335, 28.790279, 37.424511>,  <44.164837, 28.764902, 37.795055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313335, 28.790279, 37.424511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340244, 0.937566, -0.072142,
		0.863951, 0.341972, 0.369654,
		0.371246, 0.063445, -0.926365,
		44.424709, 28.809313, 37.146603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437256, 29.436607, 37.732510>,  <44.164837, 28.764902, 37.795055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437256, 29.436607, 37.732510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341293, 29.291998, 37.372124>,  <44.283714, 29.205233, 37.155891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341293, 29.291998, 37.372124>,  <44.437256, 29.436607, 37.732510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341293, 29.291998, 37.372124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487569, 0.847404, -0.210198,
		0.839475, 0.388855, -0.379570,
		-0.239913, -0.361523, -0.900968,
		44.269321, 29.183542, 37.101833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526867, 30.008158, 37.242001>,  <44.437256, 29.436607, 37.732510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526867, 30.008158, 37.242001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273888, 29.740965, 37.085129>,  <44.122101, 29.580648, 36.991005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273888, 29.740965, 37.085129>,  <44.526867, 30.008158, 37.242001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273888, 29.740965, 37.085129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510986, 0.740295, -0.436872,
		0.582151, -0.075902, -0.809530,
		-0.632450, -0.667984, -0.392179,
		44.084152, 29.540569, 36.967476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324078, 30.363632, 36.623158>,  <44.526867, 30.008158, 37.242001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324078, 30.363632, 36.623158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050644, 30.074171, 36.661182>,  <43.886585, 29.900494, 36.683998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050644, 30.074171, 36.661182>,  <44.324078, 30.363632, 36.623158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050644, 30.074171, 36.661182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671694, 0.572782, -0.469838,
		0.285551, -0.385026, -0.877619,
		-0.683585, -0.723655, 0.095061,
		43.845570, 29.857075, 36.689701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959343, 30.432257, 36.058292>,  <44.324078, 30.363632, 36.623158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959343, 30.432257, 36.058292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694920, 30.243248, 36.291435>,  <43.536266, 30.129843, 36.431320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694920, 30.243248, 36.291435>,  <43.959343, 30.432257, 36.058292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694920, 30.243248, 36.291435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728456, 0.590370, -0.347584,
		-0.179860, -0.654360, -0.734482,
		-0.661062, -0.472521, 0.582856,
		43.496601, 30.101492, 36.466293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217594, 30.051586, 35.497604>,  <43.959343, 30.432257, 36.058292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217594, 30.051586, 35.497604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962124, 29.922323, 35.776936>,  <43.808842, 29.844765, 35.944534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962124, 29.922323, 35.776936>,  <44.217594, 30.051586, 35.497604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962124, 29.922323, 35.776936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601594, 0.775554, -0.191313,
		-0.479763, -0.542295, -0.689741,
		-0.638680, -0.323159, 0.698324,
		43.770519, 29.825375, 35.986431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433708, 30.077950, 35.573185>,  <44.217594, 30.051586, 35.497604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433708, 30.077950, 35.573185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257584, 30.084114, 35.932270>,  <43.151909, 30.087812, 36.147720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257584, 30.084114, 35.932270>,  <43.433708, 30.077950, 35.573185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257584, 30.084114, 35.932270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809083, 0.426660, -0.404161,
		-0.389249, -0.904281, -0.175390,
		-0.440307, 0.015414, 0.897715,
		43.125492, 30.088737, 36.201584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699612, 29.858038, 35.500793>,  <43.433708, 30.077950, 35.573185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699612, 29.858038, 35.500793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666142, 30.048738, 35.850811>,  <42.646061, 30.163158, 36.060822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666142, 30.048738, 35.850811>,  <42.699612, 29.858038, 35.500793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666142, 30.048738, 35.850811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849063, 0.425555, -0.313043,
		-0.521624, -0.769162, 0.369186,
		-0.083672, 0.476753, 0.875046,
		42.641041, 30.191765, 36.113323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039177, 29.666370, 35.733864>,  <42.699612, 29.858038, 35.500793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039177, 29.666370, 35.733864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140118, 29.999466, 35.930992>,  <42.200684, 30.199324, 36.049267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140118, 29.999466, 35.930992>,  <42.039177, 29.666370, 35.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140118, 29.999466, 35.930992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836425, 0.443800, -0.321613,
		-0.486531, -0.331046, 0.808515,
		0.252350, 0.832737, 0.492817,
		42.215824, 30.249287, 36.078838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470474, 29.921453, 36.124432>,  <42.039177, 29.666370, 35.733864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470474, 29.921453, 36.124432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697353, 30.248066, 36.081413>,  <41.833481, 30.444033, 36.055603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697353, 30.248066, 36.081413>,  <41.470474, 29.921453, 36.124432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697353, 30.248066, 36.081413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806768, 0.524605, -0.271874,
		-0.165575, 0.240970, 0.956305,
		0.567195, 0.816531, -0.107546,
		41.867512, 30.493025, 36.049149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038464, 30.452604, 36.184834>,  <41.470474, 29.921453, 36.124432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038464, 30.452604, 36.184834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343185, 30.667561, 36.040131>,  <41.526016, 30.796534, 35.953308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343185, 30.667561, 36.040131>,  <41.038464, 30.452604, 36.184834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343185, 30.667561, 36.040131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645328, 0.678372, -0.351232,
		0.056658, 0.501022, 0.863578,
		0.761802, 0.537391, -0.361758,
		41.571728, 30.828777, 35.931602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895599, 31.146526, 36.392986>,  <41.038464, 30.452604, 36.184834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895599, 31.146526, 36.392986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129734, 31.149698, 36.068687>,  <41.270214, 31.151602, 35.874107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129734, 31.149698, 36.068687>,  <40.895599, 31.146526, 36.392986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129734, 31.149698, 36.068687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519883, 0.771002, -0.367801,
		0.622172, 0.636783, 0.455422,
		0.585341, 0.007930, -0.810749,
		41.305336, 31.152077, 35.825462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644661, 31.689926, 36.137894>,  <40.895599, 31.146526, 36.392986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644661, 31.689926, 36.137894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886082, 31.597176, 35.832748>,  <41.030933, 31.541525, 35.649662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886082, 31.597176, 35.832748>,  <40.644661, 31.689926, 36.137894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886082, 31.597176, 35.832748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420507, 0.720330, -0.551633,
		0.677425, 0.653727, 0.337248,
		0.603547, -0.231875, -0.762866,
		41.067146, 31.527613, 35.603889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872173, 32.331043, 35.823582>,  <40.644661, 31.689926, 36.137894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872173, 32.331043, 35.823582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952980, 32.090782, 35.514156>,  <41.001465, 31.946627, 35.328499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952980, 32.090782, 35.514156>,  <40.872173, 32.331043, 35.823582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952980, 32.090782, 35.514156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447588, 0.645921, -0.618426,
		0.871122, 0.471173, -0.138357,
		0.202018, -0.600652, -0.773567,
		41.013584, 31.910587, 35.282085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058224, 32.786743, 35.326759>,  <40.872173, 32.331043, 35.823582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058224, 32.786743, 35.326759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928230, 32.453888, 35.147011>,  <40.850235, 32.254173, 35.039162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928230, 32.453888, 35.147011>,  <41.058224, 32.786743, 35.326759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928230, 32.453888, 35.147011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572390, 0.551318, -0.606974,
		0.752831, 0.059958, -0.655477,
		-0.324983, -0.832137, -0.449369,
		40.830734, 32.204247, 35.012199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166092, 32.886852, 34.551765>,  <41.058224, 32.786743, 35.326759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166092, 32.886852, 34.551765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914055, 32.581211, 34.607079>,  <40.762833, 32.397827, 34.640266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914055, 32.581211, 34.607079>,  <41.166092, 32.886852, 34.551765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914055, 32.581211, 34.607079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590574, 0.355929, -0.724249,
		0.504186, -0.538009, -0.675531,
		-0.630094, -0.764107, 0.138280,
		40.725025, 32.351978, 34.648563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023766, 32.835613, 33.942410>,  <41.166092, 32.886852, 34.551765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023766, 32.835613, 33.942410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710712, 32.657169, 34.116062>,  <40.522881, 32.550102, 34.220253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710712, 32.657169, 34.116062>,  <41.023766, 32.835613, 33.942410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710712, 32.657169, 34.116062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612705, 0.428922, -0.663791,
		0.109918, -0.785499, -0.609024,
		-0.782631, -0.446114, 0.434132,
		40.475922, 32.523335, 34.246304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596619, 32.514645, 33.425327>,  <41.023766, 32.835613, 33.942410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596619, 32.514645, 33.425327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328827, 32.540348, 33.721348>,  <40.168152, 32.555771, 33.898960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328827, 32.540348, 33.721348>,  <40.596619, 32.514645, 33.425327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328827, 32.540348, 33.721348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713797, 0.220164, -0.664847,
		-0.205657, -0.973344, -0.101524,
		-0.669477, 0.064263, 0.740048,
		40.127983, 32.559628, 33.943363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943146, 32.110962, 33.200901>,  <40.596619, 32.514645, 33.425327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943146, 32.110962, 33.200901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835995, 32.381683, 33.475178>,  <39.771702, 32.544117, 33.639744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835995, 32.381683, 33.475178>,  <39.943146, 32.110962, 33.200901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835995, 32.381683, 33.475178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759252, 0.289831, -0.582696,
		-0.593107, -0.676705, 0.436227,
		-0.267882, 0.676808, 0.685690,
		39.755630, 32.584724, 33.680885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466362, 31.852249, 32.549568>,  <39.943146, 32.110962, 33.200901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466362, 31.852249, 32.549568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698395, 31.548697, 32.431171>,  <40.837612, 31.366566, 32.360134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698395, 31.548697, 32.431171>,  <40.466362, 31.852249, 32.549568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698395, 31.548697, 32.431171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795743, 0.450286, 0.405013,
		-0.174076, -0.470472, 0.865074,
		0.580078, -0.758880, -0.295991,
		40.872417, 31.321032, 32.342373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983395, 31.392015, 33.063210>,  <40.466362, 31.852249, 32.549568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983395, 31.392015, 33.063210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167770, 31.409046, 32.708645>,  <41.278397, 31.419264, 32.495907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167770, 31.409046, 32.708645>,  <40.983395, 31.392015, 33.063210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167770, 31.409046, 32.708645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791655, 0.431644, 0.432395,
		0.401025, -0.901039, 0.165254,
		0.460936, 0.042577, -0.886412,
		41.306049, 31.421820, 32.442722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487720, 30.919470, 33.236549>,  <40.983395, 31.392015, 33.063210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487720, 30.919470, 33.236549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554661, 31.205309, 32.964859>,  <41.594826, 31.376812, 32.801846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554661, 31.205309, 32.964859>,  <41.487720, 30.919470, 33.236549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554661, 31.205309, 32.964859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565489, 0.494770, 0.659867,
		0.807599, -0.494523, -0.321296,
		0.167352, 0.714597, -0.679223,
		41.604866, 31.419687, 32.761093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211586, 30.985413, 33.127762>,  <41.487720, 30.919470, 33.236549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211586, 30.985413, 33.127762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030453, 31.332245, 33.044704>,  <41.921772, 31.540344, 32.994869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030453, 31.332245, 33.044704>,  <42.211586, 30.985413, 33.127762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030453, 31.332245, 33.044704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764613, 0.497449, 0.409770,
		0.458594, 0.026792, -0.888242,
		-0.452834, 0.867079, -0.207641,
		41.894604, 31.592369, 32.982410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549618, 31.311716, 32.659153>,  <42.211586, 30.985413, 33.127762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549618, 31.311716, 32.659153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363926, 31.557009, 32.914791>,  <42.252510, 31.704184, 33.068172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363926, 31.557009, 32.914791>,  <42.549618, 31.311716, 32.659153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363926, 31.557009, 32.914791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843137, 0.526990, 0.106782,
		-0.271313, 0.588413, -0.761682,
		-0.464231, 0.613231, 0.639092,
		42.224655, 31.740978, 33.106518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076878, 31.740986, 32.599571>,  <42.549618, 31.311716, 32.659153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076878, 31.740986, 32.599571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833439, 31.892740, 32.878334>,  <42.687374, 31.983793, 33.045589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833439, 31.892740, 32.878334>,  <43.076878, 31.740986, 32.599571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833439, 31.892740, 32.878334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716346, 0.640438, 0.276926,
		-0.341263, 0.667761, -0.661540,
		-0.608596, 0.379386, 0.696905,
		42.650860, 32.006557, 33.087406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296684, 31.798286, 33.311726>,  <43.076878, 31.740986, 32.599571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296684, 31.798286, 33.311726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596954, 31.884924, 33.062061>,  <43.777115, 31.936907, 32.912262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596954, 31.884924, 33.062061>,  <43.296684, 31.798286, 33.311726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596954, 31.884924, 33.062061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094897, 0.899590, 0.426300,
		0.653824, -0.379243, 0.654743,
		0.750671, 0.216592, -0.624163,
		43.822155, 31.949902, 32.874813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013546, 32.184669, 33.894753>,  <43.296684, 31.798286, 33.311726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013546, 32.184669, 33.894753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956467, 32.574043, 33.823128>,  <42.922218, 32.807667, 33.780151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956467, 32.574043, 33.823128>,  <43.013546, 32.184669, 33.894753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956467, 32.574043, 33.823128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323352, 0.125140, 0.937968,
		0.935457, 0.191747, 0.296905,
		-0.142697, 0.973434, -0.179065,
		42.913658, 32.866074, 33.769409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315697, 32.536339, 34.380207>,  <43.013546, 32.184669, 33.894753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315697, 32.536339, 34.380207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030666, 32.790485, 34.261181>,  <42.859650, 32.942974, 34.189766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030666, 32.790485, 34.261181>,  <43.315697, 32.536339, 34.380207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030666, 32.790485, 34.261181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278202, 0.133470, 0.951204,
		0.644079, 0.760588, 0.081653,
		-0.712577, 0.635367, -0.297562,
		42.816895, 32.981094, 34.171913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506638, 33.260677, 34.428989>,  <43.315697, 32.536339, 34.380207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506638, 33.260677, 34.428989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614105, 33.638542, 34.504292>,  <43.678585, 33.865261, 34.549473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614105, 33.638542, 34.504292>,  <43.506638, 33.260677, 34.428989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614105, 33.638542, 34.504292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768848, 0.092578, 0.632694,
		0.580251, -0.314722, 0.751172,
		0.268665, 0.944659, 0.188255,
		43.694706, 33.921940, 34.560768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656803, 33.372772, 35.127171>,  <43.506638, 33.260677, 34.428989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656803, 33.372772, 35.127171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542114, 33.728722, 34.985237>,  <43.473301, 33.942291, 34.900078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542114, 33.728722, 34.985237>,  <43.656803, 33.372772, 35.127171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542114, 33.728722, 34.985237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782061, -0.003488, 0.623193,
		0.553326, 0.456190, 0.696937,
		-0.286725, 0.889875, -0.354838,
		43.456097, 33.995686, 34.878784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322403, 33.851105, 34.990986>,  <43.656803, 33.372772, 35.127171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322403, 33.851105, 34.990986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650337, 33.755264, 35.199005>,  <44.847099, 33.697762, 35.323818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650337, 33.755264, 35.199005>,  <44.322403, 33.851105, 34.990986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650337, 33.755264, 35.199005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197210, 0.970827, 0.136393,
		-0.537561, -0.009261, 0.843174,
		0.819839, -0.239602, 0.520052,
		44.896290, 33.683384, 35.355022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324482, 34.252110, 35.584206>,  <44.322403, 33.851105, 34.990986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324482, 34.252110, 35.584206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712666, 34.158825, 35.559452>,  <44.945576, 34.102852, 35.544598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712666, 34.158825, 35.559452>,  <44.324482, 34.252110, 35.584206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712666, 34.158825, 35.559452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240572, 0.954920, 0.173930,
		0.018535, -0.183680, 0.982811,
		0.970454, -0.233213, -0.061887,
		45.003803, 34.088860, 35.540886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586365, 34.477962, 36.171814>,  <44.324482, 34.252110, 35.584206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586365, 34.477962, 36.171814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886372, 34.484226, 35.907318>,  <45.066376, 34.487984, 35.748623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886372, 34.484226, 35.907318>,  <44.586365, 34.477962, 36.171814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886372, 34.484226, 35.907318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218603, 0.937671, 0.270159,
		0.624254, -0.347171, 0.699843,
		0.750014, 0.015660, -0.661237,
		45.111374, 34.488926, 35.708946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028572, 34.952419, 36.460068>,  <44.586365, 34.477962, 36.171814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028572, 34.952419, 36.460068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341415, 34.893261, 36.702202>,  <45.529121, 34.857765, 36.847481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341415, 34.893261, 36.702202>,  <45.028572, 34.952419, 36.460068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341415, 34.893261, 36.702202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598025, -0.094869, -0.795843,
		0.175131, 0.984442, 0.014249,
		0.782109, -0.147898, 0.605336,
		45.576050, 34.848892, 36.883804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630493, 35.391003, 36.124329>,  <45.028572, 34.952419, 36.460068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630493, 35.391003, 36.124329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762859, 35.069080, 36.321423>,  <45.842281, 34.875927, 36.439678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762859, 35.069080, 36.321423>,  <45.630493, 35.391003, 36.124329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762859, 35.069080, 36.321423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476698, -0.308063, -0.823321,
		0.814403, 0.507337, 0.281704,
		0.330918, -0.804802, 0.492734,
		45.862133, 34.827641, 36.469242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382381, 35.370083, 36.057690>,  <45.630493, 35.391003, 36.124329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382381, 35.370083, 36.057690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238197, 35.003326, 36.126263>,  <46.151688, 34.783272, 36.167408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238197, 35.003326, 36.126263>,  <46.382381, 35.370083, 36.057690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238197, 35.003326, 36.126263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646278, -0.378016, -0.662894,
		0.672603, -0.128152, 0.728823,
		-0.360458, -0.916886, 0.171433,
		46.130058, 34.728260, 36.177692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715229, 34.746162, 36.184696>,  <46.382381, 35.370083, 36.057690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715229, 34.746162, 36.184696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429630, 34.550228, 35.984585>,  <46.258270, 34.432667, 35.864517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429630, 34.550228, 35.984585>,  <46.715229, 34.746162, 36.184696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429630, 34.550228, 35.984585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693809, -0.399022, -0.599510,
		0.094040, -0.775141, 0.624751,
		-0.713993, -0.489835, -0.500275,
		46.215431, 34.403278, 35.834503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.751728, 34.513382, 35.388447>,  <46.715229, 34.746162, 36.184696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.751728, 34.513382, 35.388447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119381, 34.361248, 35.347359>,  <47.339973, 34.269970, 35.322708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119381, 34.361248, 35.347359>,  <46.751728, 34.513382, 35.388447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119381, 34.361248, 35.347359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168145, 0.614517, -0.770777,
		0.356272, 0.691171, 0.628771,
		0.919129, -0.380331, -0.102718,
		47.395119, 34.247150, 35.316544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.185829, 35.093372, 35.463299>,  <46.751728, 34.513382, 35.388447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.185829, 35.093372, 35.463299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276115, 34.775146, 35.238396>,  <47.330288, 34.584209, 35.103455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276115, 34.775146, 35.238396>,  <47.185829, 35.093372, 35.463299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276115, 34.775146, 35.238396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085600, 0.591114, -0.802033,
		0.970425, 0.132903, 0.201524,
		0.225716, -0.795564, -0.562255,
		47.343830, 34.536476, 35.069717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.962681, 34.998646, 35.195705>,  <47.185829, 35.093372, 35.463299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.962681, 34.998646, 35.195705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694351, 34.881836, 34.923027>,  <47.533352, 34.811752, 34.759418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694351, 34.881836, 34.923027>,  <47.962681, 34.998646, 35.195705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694351, 34.881836, 34.923027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461330, 0.555395, -0.691889,
		0.580661, -0.778626, -0.237854,
		-0.670826, -0.292024, -0.681700,
		47.493103, 34.794228, 34.718517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.436810, 31.771553, 24.438120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052105, 31.716946, 24.533096>,  <34.821281, 31.684181, 24.590082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052105, 31.716946, 24.533096>,  <35.436810, 31.771553, 24.438120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052105, 31.716946, 24.533096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238355, 0.009842, 0.971128,
		-0.134914, 0.990588, 0.023075,
		-0.961761, -0.136519, 0.237440,
		34.763577, 31.675989, 24.604328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206146, 32.214836, 25.127552>,  <35.436810, 31.771553, 24.438120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206146, 32.214836, 25.127552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924423, 31.933090, 25.092184>,  <34.755390, 31.764042, 25.070963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924423, 31.933090, 25.092184>,  <35.206146, 32.214836, 25.127552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924423, 31.933090, 25.092184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132706, -0.252993, 0.958323,
		-0.697380, 0.663221, 0.271659,
		-0.704308, -0.704367, -0.088419,
		34.713131, 31.721781, 25.065659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680271, 32.318520, 25.574793>,  <35.206146, 32.214836, 25.127552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680271, 32.318520, 25.574793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659111, 31.927025, 25.495514>,  <34.646416, 31.692129, 25.447947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659111, 31.927025, 25.495514>,  <34.680271, 32.318520, 25.574793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659111, 31.927025, 25.495514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074570, -0.194048, 0.978154,
		-0.995812, 0.066521, -0.062720,
		-0.052897, -0.978734, -0.198196,
		34.643242, 31.633404, 25.436054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192478, 32.104786, 26.034452>,  <34.680271, 32.318520, 25.574793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192478, 32.104786, 26.034452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359509, 31.754478, 25.937572>,  <34.459724, 31.544294, 25.879444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359509, 31.754478, 25.937572>,  <34.192478, 32.104786, 26.034452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359509, 31.754478, 25.937572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045572, -0.286400, 0.957026,
		-0.907501, -0.388589, -0.159503,
		0.417571, -0.875770, -0.242200,
		34.484779, 31.491747, 25.864912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865154, 31.618868, 26.311354>,  <34.192478, 32.104786, 26.034452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865154, 31.618868, 26.311354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.190739, 31.394171, 26.252136>,  <34.386089, 31.259352, 26.216606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.190739, 31.394171, 26.252136>,  <33.865154, 31.618868, 26.311354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190739, 31.394171, 26.252136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094485, -0.379463, 0.920370,
		-0.573191, -0.735153, -0.361943,
		0.813956, -0.561745, -0.148043,
		34.434925, 31.225647, 26.207724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775837, 30.959063, 26.661989>,  <33.865154, 31.618868, 26.311354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775837, 30.959063, 26.661989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173611, 30.977325, 26.624006>,  <34.412273, 30.988283, 26.601215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173611, 30.977325, 26.624006>,  <33.775837, 30.959063, 26.661989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173611, 30.977325, 26.624006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104209, -0.559287, 0.822398,
		-0.015562, -0.827716, -0.560932,
		0.994434, 0.045656, -0.094959,
		34.471939, 30.991022, 26.595518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974857, 30.260990, 26.798227>,  <33.775837, 30.959063, 26.661989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974857, 30.260990, 26.798227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283222, 30.503429, 26.876551>,  <34.468243, 30.648893, 26.923546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283222, 30.503429, 26.876551>,  <33.974857, 30.260990, 26.798227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283222, 30.503429, 26.876551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213415, -0.535447, 0.817160,
		0.600124, -0.588170, -0.542133,
		0.770912, 0.606097, 0.195810,
		34.514496, 30.685259, 26.935293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416119, 29.843670, 27.109123>,  <33.974857, 30.260990, 26.798227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416119, 29.843670, 27.109123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.539360, 30.211817, 27.205452>,  <34.613304, 30.432705, 27.263250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.539360, 30.211817, 27.205452>,  <34.416119, 29.843670, 27.109123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539360, 30.211817, 27.205452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358854, -0.346874, 0.866546,
		0.881075, -0.180569, -0.437151,
		0.308107, 0.920366, 0.240824,
		34.631794, 30.487926, 27.277699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014866, 29.741743, 27.410587>,  <34.416119, 29.843670, 27.109123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014866, 29.741743, 27.410587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.905128, 30.111794, 27.515564>,  <34.839287, 30.333824, 27.578550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.905128, 30.111794, 27.515564>,  <35.014866, 29.741743, 27.410587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905128, 30.111794, 27.515564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346749, -0.159385, 0.924317,
		0.896940, 0.344581, -0.277060,
		-0.274342, 0.925127, 0.262442,
		34.822826, 30.389332, 27.594297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599171, 30.150993, 27.724096>,  <35.014866, 29.741743, 27.410587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599171, 30.150993, 27.724096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275532, 30.345509, 27.856085>,  <35.081348, 30.462217, 27.935278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275532, 30.345509, 27.856085>,  <35.599171, 30.150993, 27.724096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275532, 30.345509, 27.856085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353595, -0.045638, 0.934285,
		0.469390, 0.872606, -0.135023,
		-0.809100, 0.486288, 0.329971,
		35.032803, 30.491394, 27.955076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903976, 30.727442, 28.133728>,  <35.599171, 30.150993, 27.724096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903976, 30.727442, 28.133728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533642, 30.624327, 28.244274>,  <35.311443, 30.562458, 28.310602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533642, 30.624327, 28.244274>,  <35.903976, 30.727442, 28.133728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533642, 30.624327, 28.244274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281771, 0.016499, 0.959340,
		-0.251866, 0.966061, 0.057362,
		-0.925834, -0.257788, 0.276363,
		35.255890, 30.546989, 28.327183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796284, 31.163660, 28.632824>,  <35.903976, 30.727442, 28.133728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796284, 31.163660, 28.632824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.532825, 30.871462, 28.704998>,  <35.374752, 30.696142, 28.748302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.532825, 30.871462, 28.704998>,  <35.796284, 31.163660, 28.632824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532825, 30.871462, 28.704998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233804, 0.029243, 0.971844,
		-0.715206, 0.682289, 0.151533,
		-0.658647, -0.730498, 0.180436,
		35.335232, 30.652313, 28.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376064, 31.385582, 29.207632>,  <35.796284, 31.163660, 28.632824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376064, 31.385582, 29.207632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343315, 30.987097, 29.195896>,  <35.323666, 30.748007, 29.188854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343315, 30.987097, 29.195896>,  <35.376064, 31.385582, 29.207632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343315, 30.987097, 29.195896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173156, -0.043208, 0.983946,
		-0.981486, 0.075477, 0.176038,
		-0.081872, -0.996211, -0.029339,
		35.318752, 30.688234, 29.187094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878510, 31.244328, 29.561642>,  <35.376064, 31.385582, 29.207632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878510, 31.244328, 29.561642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.063545, 30.889698, 29.561556>,  <35.174564, 30.676920, 29.561504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.063545, 30.889698, 29.561556>,  <34.878510, 31.244328, 29.561642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063545, 30.889698, 29.561556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078361, 0.040647, 0.996096,
		-0.883105, -0.460797, 0.088276,
		0.462586, -0.886575, -0.000213,
		35.202320, 30.623726, 29.561493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563778, 30.850723, 30.166431>,  <34.878510, 31.244328, 29.561642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563778, 30.850723, 30.166431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910545, 30.662882, 30.099594>,  <35.118607, 30.550177, 30.059492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910545, 30.662882, 30.099594>,  <34.563778, 30.850723, 30.166431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910545, 30.662882, 30.099594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111258, -0.144460, 0.983236,
		-0.485868, -0.870979, -0.072988,
		0.866922, -0.469602, -0.167092,
		35.170624, 30.522001, 30.049467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586880, 30.120733, 30.564234>,  <34.563778, 30.850723, 30.166431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586880, 30.120733, 30.564234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969658, 30.214964, 30.496408>,  <35.199326, 30.271502, 30.455713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969658, 30.214964, 30.496408>,  <34.586880, 30.120733, 30.564234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969658, 30.214964, 30.496408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222246, -0.218937, 0.950091,
		0.186695, -0.946874, -0.261867,
		0.956949, 0.235576, -0.169565,
		35.256744, 30.285637, 30.445539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846302, 29.671665, 31.007999>,  <34.586880, 30.120733, 30.564234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846302, 29.671665, 31.007999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135956, 29.916220, 30.880348>,  <35.309746, 30.062952, 30.803759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135956, 29.916220, 30.880348>,  <34.846302, 29.671665, 31.007999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135956, 29.916220, 30.880348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385825, 0.024414, 0.922249,
		0.571642, -0.790955, -0.218209,
		0.724130, 0.611387, -0.319126,
		35.353195, 30.099636, 30.784611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540157, 29.353775, 31.126760>,  <34.846302, 29.671665, 31.007999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540157, 29.353775, 31.126760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613155, 29.745155, 31.088123>,  <35.656952, 29.979984, 31.064941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613155, 29.745155, 31.088123>,  <35.540157, 29.353775, 31.126760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613155, 29.745155, 31.088123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511162, -0.010494, 0.859420,
		0.839887, -0.206212, -0.502062,
		0.182492, 0.978451, -0.096594,
		35.667904, 30.038691, 31.059145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193863, 29.414127, 31.182543>,  <35.540157, 29.353775, 31.126760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193863, 29.414127, 31.182543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049835, 29.774090, 31.280947>,  <35.963421, 29.990067, 31.339989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049835, 29.774090, 31.280947>,  <36.193863, 29.414127, 31.182543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049835, 29.774090, 31.280947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587385, 0.013813, 0.809189,
		0.724797, 0.435863, -0.533566,
		-0.360066, 0.899907, 0.246009,
		35.941814, 30.044062, 31.354750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803734, 29.920481, 31.386440>,  <36.193863, 29.414127, 31.182543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803734, 29.920481, 31.386440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469349, 30.055820, 31.559267>,  <36.268719, 30.137024, 31.662964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469349, 30.055820, 31.559267>,  <36.803734, 29.920481, 31.386440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469349, 30.055820, 31.559267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475497, 0.053508, 0.878089,
		0.273981, 0.939498, -0.205615,
		-0.835965, 0.338348, 0.432069,
		36.218559, 30.157326, 31.688889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068241, 30.269526, 31.833233>,  <36.803734, 29.920481, 31.386440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068241, 30.269526, 31.833233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684032, 30.278646, 31.944147>,  <36.453506, 30.284119, 32.010696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684032, 30.278646, 31.944147>,  <37.068241, 30.269526, 31.833233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684032, 30.278646, 31.944147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277101, -0.010902, 0.960779,
		0.024930, 0.999680, 0.004153,
		-0.960517, 0.022802, 0.277284,
		36.395878, 30.285486, 32.027332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087204, 30.776377, 32.365131>,  <37.068241, 30.269526, 31.833233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087204, 30.776377, 32.365131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749588, 30.569511, 32.421902>,  <36.547020, 30.445393, 32.455963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749588, 30.569511, 32.421902>,  <37.087204, 30.776377, 32.365131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749588, 30.569511, 32.421902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280750, -0.200631, 0.938577,
		-0.456924, 0.832039, 0.314534,
		-0.844038, -0.517164, 0.141922,
		36.496376, 30.414362, 32.464478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439766, 30.913097, 33.007713>,  <37.087204, 30.776377, 32.365131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439766, 30.913097, 33.007713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834305, 30.860268, 32.968369>,  <38.071030, 30.828569, 32.944763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834305, 30.860268, 32.968369>,  <37.439766, 30.913097, 33.007713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834305, 30.860268, 32.968369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030784, 0.438890, -0.898013,
		0.161773, 0.888781, 0.428833,
		0.986348, -0.132073, -0.098361,
		38.130211, 30.820646, 32.938862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695755, 31.461874, 32.596832>,  <37.439766, 30.913097, 33.007713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695755, 31.461874, 32.596832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011871, 31.221607, 32.548435>,  <38.201542, 31.077448, 32.519398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011871, 31.221607, 32.548435>,  <37.695755, 31.461874, 32.596832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011871, 31.221607, 32.548435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093222, 0.313038, -0.945154,
		0.605597, 0.735669, 0.303387,
		0.790292, -0.600665, -0.120994,
		38.248959, 31.041409, 32.512138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218052, 31.809099, 32.474506>,  <37.695755, 31.461874, 32.596832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218052, 31.809099, 32.474506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312973, 31.453070, 32.318836>,  <38.369926, 31.239452, 32.225433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312973, 31.453070, 32.318836>,  <38.218052, 31.809099, 32.474506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312973, 31.453070, 32.318836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139920, 0.427761, -0.892997,
		0.961308, 0.157453, 0.226046,
		0.237298, -0.890073, -0.389179,
		38.384163, 31.186049, 32.202084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876282, 31.875765, 32.103699>,  <38.218052, 31.809099, 32.474506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876282, 31.875765, 32.103699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.681953, 31.559486, 31.954683>,  <38.565357, 31.369719, 31.865274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.681953, 31.559486, 31.954683>,  <38.876282, 31.875765, 32.103699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681953, 31.559486, 31.954683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256382, 0.278556, -0.925567,
		0.835614, -0.545167, 0.067393,
		-0.485816, -0.790695, -0.372537,
		38.536209, 31.322277, 31.842922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323669, 31.725878, 31.496819>,  <38.876282, 31.875765, 32.103699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323669, 31.725878, 31.496819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963291, 31.561611, 31.440746>,  <38.747063, 31.463051, 31.407103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963291, 31.561611, 31.440746>,  <39.323669, 31.725878, 31.496819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963291, 31.561611, 31.440746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061780, 0.198362, -0.978180,
		0.429511, -0.889947, -0.153343,
		-0.900946, -0.410666, -0.140180,
		38.693008, 31.438412, 31.398693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399830, 31.265879, 30.844391>,  <39.323669, 31.725878, 31.496819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399830, 31.265879, 30.844391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002380, 31.294647, 30.879131>,  <38.763912, 31.311909, 30.899977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002380, 31.294647, 30.879131>,  <39.399830, 31.265879, 30.844391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002380, 31.294647, 30.879131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076479, 0.136186, -0.987727,
		-0.082866, -0.988069, -0.129817,
		-0.993622, 0.071920, 0.086852,
		38.704292, 31.316223, 30.905188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082493, 30.776175, 30.417145>,  <39.399830, 31.265879, 30.844391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082493, 30.776175, 30.417145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796131, 31.050253, 30.470787>,  <38.624313, 31.214701, 30.502972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796131, 31.050253, 30.470787>,  <39.082493, 30.776175, 30.417145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796131, 31.050253, 30.470787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116196, 0.072470, -0.990579,
		-0.688459, -0.724745, 0.027735,
		-0.715907, 0.685196, 0.134105,
		38.581360, 31.255812, 30.511019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669319, 30.785711, 29.782917>,  <39.082493, 30.776175, 30.417145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669319, 30.785711, 29.782917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519173, 31.106239, 29.969246>,  <38.429085, 31.298555, 30.081043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519173, 31.106239, 29.969246>,  <38.669319, 30.785711, 29.782917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519173, 31.106239, 29.969246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317403, 0.361058, -0.876865,
		-0.870838, -0.476996, 0.118814,
		-0.375362, 0.801319, 0.465823,
		38.406563, 31.346636, 30.108994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929508, 30.851736, 29.614063>,  <38.669319, 30.785711, 29.782917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929508, 30.851736, 29.614063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077599, 31.207256, 29.722115>,  <38.166454, 31.420568, 29.786945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077599, 31.207256, 29.722115>,  <37.929508, 30.851736, 29.614063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077599, 31.207256, 29.722115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335744, 0.399159, -0.853199,
		-0.866146, 0.225183, 0.446188,
		0.370225, 0.888800, 0.270126,
		38.188667, 31.473896, 29.803152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362164, 31.300058, 29.585104>,  <37.929508, 30.851736, 29.614063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362164, 31.300058, 29.585104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694065, 31.523016, 29.573595>,  <37.893204, 31.656790, 29.566690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694065, 31.523016, 29.573595>,  <37.362164, 31.300058, 29.585104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694065, 31.523016, 29.573595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326848, 0.443475, -0.834566,
		-0.452422, 0.701885, 0.550156,
		0.829750, 0.557393, -0.028771,
		37.942989, 31.690233, 29.564964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169304, 31.878183, 29.421888>,  <37.362164, 31.300058, 29.585104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169304, 31.878183, 29.421888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551903, 31.951185, 29.330837>,  <37.781460, 31.994986, 29.276207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551903, 31.951185, 29.330837>,  <37.169304, 31.878183, 29.421888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551903, 31.951185, 29.330837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281320, 0.370122, -0.885364,
		-0.077333, 0.910880, 0.405361,
		0.956493, 0.182504, -0.227626,
		37.838852, 32.005936, 29.262548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256355, 32.570438, 29.217411>,  <37.169304, 31.878183, 29.421888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256355, 32.570438, 29.217411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577698, 32.393913, 29.057480>,  <37.770504, 32.287998, 28.961521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577698, 32.393913, 29.057480>,  <37.256355, 32.570438, 29.217411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577698, 32.393913, 29.057480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262978, 0.339486, -0.903101,
		0.534285, 0.830658, 0.156673,
		0.803357, -0.441312, -0.399827,
		37.818707, 32.261520, 28.937532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634705, 33.012165, 28.791994>,  <37.256355, 32.570438, 29.217411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634705, 33.012165, 28.791994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737728, 32.649712, 28.657778>,  <37.799541, 32.432240, 28.577248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737728, 32.649712, 28.657778>,  <37.634705, 33.012165, 28.791994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737728, 32.649712, 28.657778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146910, 0.306495, -0.940467,
		0.955028, 0.291523, -0.054179,
		0.257562, -0.906132, -0.335540,
		37.814995, 32.377872, 28.557116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203377, 33.149441, 28.255898>,  <37.634705, 33.012165, 28.791994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203377, 33.149441, 28.255898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064335, 32.779610, 28.193516>,  <37.980907, 32.557713, 28.156086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064335, 32.779610, 28.193516>,  <38.203377, 33.149441, 28.255898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064335, 32.779610, 28.193516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027571, 0.176335, -0.983944,
		0.937234, -0.337728, -0.086787,
		-0.347609, -0.924579, -0.155955,
		37.960052, 32.502235, 28.146729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490643, 32.898956, 27.609749>,  <38.203377, 33.149441, 28.255898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490643, 32.898956, 27.609749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.163479, 32.682949, 27.689154>,  <37.967182, 32.553345, 27.736797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.163479, 32.682949, 27.689154>,  <38.490643, 32.898956, 27.609749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163479, 32.682949, 27.689154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318333, 0.137339, -0.937978,
		0.479260, -0.830374, -0.284236,
		-0.817909, -0.540017, 0.198514,
		37.918106, 32.520943, 27.748709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599613, 32.317226, 27.176291>,  <38.490643, 32.898956, 27.609749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599613, 32.317226, 27.176291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216625, 32.392979, 27.263372>,  <37.986832, 32.438431, 27.315620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216625, 32.392979, 27.263372>,  <38.599613, 32.317226, 27.176291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216625, 32.392979, 27.263372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225311, -0.019347, -0.974095,
		-0.180264, -0.981713, 0.061194,
		-0.957465, 0.189382, 0.217703,
		37.929386, 32.449791, 27.328684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324562, 31.897142, 26.702265>,  <38.599613, 32.317226, 27.176291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324562, 31.897142, 26.702265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009731, 32.104248, 26.836386>,  <37.820831, 32.228512, 26.916859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009731, 32.104248, 26.836386>,  <38.324562, 31.897142, 26.702265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009731, 32.104248, 26.836386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438816, -0.087941, -0.894263,
		-0.433531, -0.850991, 0.296420,
		-0.787078, 0.517765, 0.335304,
		37.773609, 32.259579, 26.936977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684002, 31.476498, 26.604620>,  <38.324562, 31.897142, 26.702265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684002, 31.476498, 26.604620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584572, 31.863874, 26.597307>,  <37.524914, 32.096298, 26.592920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584572, 31.863874, 26.597307>,  <37.684002, 31.476498, 26.604620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584572, 31.863874, 26.597307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503281, -0.145259, -0.851826,
		-0.827598, -0.202544, 0.523505,
		-0.248576, 0.968440, -0.018280,
		37.509998, 32.154408, 26.591824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.983124, 31.551382, 26.357439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089001, 31.935806, 26.325672>,  <37.152527, 32.166462, 26.306612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089001, 31.935806, 26.325672>,  <36.983124, 31.551382, 26.357439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089001, 31.935806, 26.325672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512692, 0.070495, -0.855674,
		-0.816754, 0.267202, 0.511386,
		0.264688, 0.961058, -0.079416,
		37.168407, 32.224125, 26.301847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439766, 31.818846, 25.951351>,  <36.983124, 31.551382, 26.357439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439766, 31.818846, 25.951351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737083, 32.084270, 25.917402>,  <36.915474, 32.243526, 25.897034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737083, 32.084270, 25.917402>,  <36.439766, 31.818846, 25.951351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737083, 32.084270, 25.917402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351023, 0.278871, -0.893876,
		-0.569472, 0.694204, 0.440208,
		0.743293, 0.663560, -0.084872,
		36.960072, 32.283337, 25.891941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067982, 32.400940, 25.858315>,  <36.439766, 31.818846, 25.951351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067982, 32.400940, 25.858315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436691, 32.471542, 25.720230>,  <36.657917, 32.513905, 25.637379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436691, 32.471542, 25.720230>,  <36.067982, 32.400940, 25.858315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436691, 32.471542, 25.720230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387074, 0.367656, -0.845578,
		-0.022329, 0.913058, 0.407218,
		0.921778, 0.176504, -0.345211,
		36.713226, 32.524494, 25.616667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114315, 33.129593, 25.685675>,  <36.067982, 32.400940, 25.858315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114315, 33.129593, 25.685675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403713, 32.934696, 25.490063>,  <36.577351, 32.817757, 25.372696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403713, 32.934696, 25.490063>,  <36.114315, 33.129593, 25.685675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403713, 32.934696, 25.490063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343446, 0.360450, -0.867249,
		0.598832, 0.795405, 0.093442,
		0.723495, -0.487244, -0.489028,
		36.620762, 32.788525, 25.343355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340088, 33.573910, 25.237316>,  <36.114315, 33.129593, 25.685675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340088, 33.573910, 25.237316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480007, 33.229042, 25.090727>,  <36.563957, 33.022121, 25.002773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480007, 33.229042, 25.090727>,  <36.340088, 33.573910, 25.237316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480007, 33.229042, 25.090727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357147, 0.238915, -0.902976,
		0.866077, 0.446740, -0.224352,
		0.349795, -0.862173, -0.366471,
		36.584946, 32.970390, 24.980785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677010, 33.725819, 24.651470>,  <36.340088, 33.573910, 25.237316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677010, 33.725819, 24.651470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607571, 33.341194, 24.566362>,  <36.565907, 33.110420, 24.515297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607571, 33.341194, 24.566362>,  <36.677010, 33.725819, 24.651470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607571, 33.341194, 24.566362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189964, 0.244688, -0.950811,
		0.966322, -0.124635, -0.225137,
		-0.173593, -0.961558, -0.212772,
		36.555492, 33.052727, 24.502531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248642, 33.528244, 24.074829>,  <36.677010, 33.725819, 24.651470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248642, 33.528244, 24.074829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953453, 33.258888, 24.057219>,  <36.776340, 33.097275, 24.046652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953453, 33.258888, 24.057219>,  <37.248642, 33.528244, 24.074829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953453, 33.258888, 24.057219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100890, 0.174603, -0.979456,
		0.667243, -0.718373, -0.196791,
		-0.737976, -0.673390, -0.044026,
		36.732059, 33.056870, 24.044010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409378, 33.137569, 23.417986>,  <37.248642, 33.528244, 24.074829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409378, 33.137569, 23.417986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.030293, 33.071209, 23.527033>,  <36.802841, 33.031391, 23.592461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.030293, 33.071209, 23.527033>,  <37.409378, 33.137569, 23.417986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030293, 33.071209, 23.527033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305394, 0.223553, -0.925613,
		0.092617, -0.960469, -0.262529,
		-0.947711, -0.165902, 0.272617,
		36.745979, 33.021439, 23.608818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243042, 32.575714, 23.038876>,  <37.409378, 33.137569, 23.417986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243042, 32.575714, 23.038876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910294, 32.773407, 23.139849>,  <36.710644, 32.892021, 23.200432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910294, 32.773407, 23.139849>,  <37.243042, 32.575714, 23.038876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910294, 32.773407, 23.139849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103557, 0.308632, -0.945527,
		-0.545219, -0.812700, -0.205562,
		-0.831873, 0.494232, 0.252433,
		36.660732, 32.921677, 23.215578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826080, 32.354294, 22.583504>,  <37.243042, 32.575714, 23.038876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826080, 32.354294, 22.583504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669647, 32.704334, 22.697525>,  <36.575787, 32.914356, 22.765938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669647, 32.704334, 22.697525>,  <36.826080, 32.354294, 22.583504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669647, 32.704334, 22.697525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158176, 0.241204, -0.957497,
		-0.906660, -0.419551, 0.044089,
		-0.391084, 0.875099, 0.285053,
		36.552322, 32.966866, 22.783041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241680, 32.443192, 22.093895>,  <36.826080, 32.354294, 22.583504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241680, 32.443192, 22.093895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.349438, 32.797363, 22.245392>,  <36.414093, 33.009865, 22.336290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.349438, 32.797363, 22.245392>,  <36.241680, 32.443192, 22.093895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349438, 32.797363, 22.245392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141222, 0.425353, -0.893941,
		-0.952620, 0.187334, 0.239629,
		0.269392, 0.885427, 0.378744,
		36.430256, 33.062992, 22.359015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761833, 32.915779, 21.876282>,  <36.241680, 32.443192, 22.093895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761833, 32.915779, 21.876282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.056870, 33.165150, 21.980047>,  <36.233891, 33.314770, 22.042307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.056870, 33.165150, 21.980047>,  <35.761833, 32.915779, 21.876282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056870, 33.165150, 21.980047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145383, 0.521790, -0.840594,
		-0.659407, 0.582303, 0.475505,
		0.737594, 0.623424, 0.259416,
		36.278149, 33.352177, 22.057873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433250, 33.575089, 21.924747>,  <35.761833, 32.915779, 21.876282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433250, 33.575089, 21.924747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822300, 33.660194, 21.887369>,  <36.055729, 33.711258, 21.864943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822300, 33.660194, 21.887369>,  <35.433250, 33.575089, 21.924747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822300, 33.660194, 21.887369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220724, 0.720105, -0.657823,
		-0.072669, 0.660441, 0.747354,
		0.972625, 0.212763, -0.093446,
		36.114086, 33.724022, 21.859335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422489, 34.267933, 21.835989>,  <35.433250, 33.575089, 21.924747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422489, 34.267933, 21.835989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806374, 34.208519, 21.740574>,  <36.036705, 34.172871, 21.683325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806374, 34.208519, 21.740574>,  <35.422489, 34.267933, 21.835989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806374, 34.208519, 21.740574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109142, 0.585210, -0.803503,
		0.258943, 0.797162, 0.545418,
		0.959707, -0.148533, -0.238540,
		36.094284, 34.163960, 21.669012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792389, 34.994854, 21.622385>,  <35.422489, 34.267933, 21.835989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792389, 34.994854, 21.622385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008030, 34.698082, 21.462929>,  <36.137413, 34.520020, 21.367256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008030, 34.698082, 21.462929>,  <35.792389, 34.994854, 21.622385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008030, 34.698082, 21.462929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077393, 0.514941, -0.853725,
		0.838679, 0.429390, 0.335024,
		0.539099, -0.741930, -0.398638,
		36.169758, 34.475502, 21.343338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404839, 35.367214, 21.237860>,  <35.792389, 34.994854, 21.622385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404839, 35.367214, 21.237860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334965, 35.007587, 21.077278>,  <36.293041, 34.791813, 20.980930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334965, 35.007587, 21.077278>,  <36.404839, 35.367214, 21.237860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334965, 35.007587, 21.077278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054722, 0.398226, -0.915654,
		0.983102, -0.181922, -0.020366,
		-0.174688, -0.899067, -0.401452,
		36.282558, 34.737869, 20.956842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788616, 35.370312, 20.595566>,  <36.404839, 35.367214, 21.237860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788616, 35.370312, 20.595566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556290, 35.050179, 20.536076>,  <36.416893, 34.858097, 20.500381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556290, 35.050179, 20.536076>,  <36.788616, 35.370312, 20.595566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556290, 35.050179, 20.536076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011906, 0.191035, -0.981511,
		0.813949, -0.568305, -0.120485,
		-0.580814, -0.800334, -0.148727,
		36.382046, 34.810078, 20.491457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088150, 35.068497, 20.050089>,  <36.788616, 35.370312, 20.595566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088150, 35.068497, 20.050089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710602, 34.937355, 20.066216>,  <36.484074, 34.858669, 20.075891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710602, 34.937355, 20.066216>,  <37.088150, 35.068497, 20.050089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710602, 34.937355, 20.066216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098344, 0.162391, -0.981814,
		0.315347, -0.930666, -0.185518,
		-0.943867, -0.327856, 0.040316,
		36.427441, 34.838997, 20.078310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879520, 34.791275, 19.394157>,  <37.088150, 35.068497, 20.050089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879520, 34.791275, 19.394157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513386, 34.856785, 19.541313>,  <36.293705, 34.896091, 19.629606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513386, 34.856785, 19.541313>,  <36.879520, 34.791275, 19.394157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513386, 34.856785, 19.541313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301815, 0.325794, -0.895972,
		-0.266597, -0.931147, -0.248779,
		-0.915333, 0.163779, 0.367890,
		36.238785, 34.905918, 19.651680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345905, 34.559135, 18.956347>,  <36.879520, 34.791275, 19.394157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345905, 34.559135, 18.956347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175571, 34.859436, 19.158350>,  <36.073372, 35.039616, 19.279552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175571, 34.859436, 19.158350>,  <36.345905, 34.559135, 18.956347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175571, 34.859436, 19.158350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132410, 0.500427, -0.855594,
		-0.895062, -0.431207, -0.113689,
		-0.425831, 0.750756, 0.505009,
		36.047821, 35.084663, 19.309853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710247, 34.759762, 18.523003>,  <36.345905, 34.559135, 18.956347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710247, 34.759762, 18.523003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786476, 35.062355, 18.773256>,  <35.832214, 35.243912, 18.923409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786476, 35.062355, 18.773256>,  <35.710247, 34.759762, 18.523003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786476, 35.062355, 18.773256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313100, 0.650868, -0.691621,
		-0.930403, -0.064080, 0.360893,
		0.190575, 0.756482, 0.625633,
		35.843647, 35.289299, 18.960947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085209, 35.197071, 18.574587>,  <35.710247, 34.759762, 18.523003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085209, 35.197071, 18.574587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417488, 35.406834, 18.649359>,  <35.616856, 35.532692, 18.694221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417488, 35.406834, 18.649359>,  <35.085209, 35.197071, 18.574587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417488, 35.406834, 18.649359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310315, 0.714911, -0.626583,
		-0.462225, 0.462491, 0.756604,
		0.830694, 0.524408, 0.186932,
		35.666695, 35.564156, 18.705439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962082, 35.986439, 18.831066>,  <35.085209, 35.197071, 18.574587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962082, 35.986439, 18.831066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280804, 35.918705, 18.599058>,  <35.472038, 35.878063, 18.459852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280804, 35.918705, 18.599058>,  <34.962082, 35.986439, 18.831066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280804, 35.918705, 18.599058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350125, 0.652954, -0.671612,
		0.492455, 0.738225, 0.460990,
		0.796806, -0.169334, -0.580022,
		35.519844, 35.867905, 18.425051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602787, 36.025757, 18.244911>,  <34.962082, 35.986439, 18.831066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602787, 36.025757, 18.244911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403793, 35.707317, 18.382746>,  <34.284397, 35.516254, 18.465446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403793, 35.707317, 18.382746>,  <34.602787, 36.025757, 18.244911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403793, 35.707317, 18.382746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071403, 0.433460, 0.898339,
		-0.864530, 0.422304, -0.272483,
		-0.497483, -0.796098, 0.344586,
		34.254547, 35.468487, 18.486122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875961, 36.030994, 18.158613>,  <34.602787, 36.025757, 18.244911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875961, 36.030994, 18.158613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516209, 35.875362, 18.078884>,  <33.300358, 35.781982, 18.031048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516209, 35.875362, 18.078884>,  <33.875961, 36.030994, 18.158613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516209, 35.875362, 18.078884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091853, -0.277579, 0.956302,
		-0.427405, 0.878389, 0.213911,
		-0.899382, -0.389080, -0.199321,
		33.246395, 35.758640, 18.019087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536636, 36.278175, 18.697773>,  <33.875961, 36.030994, 18.158613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536636, 36.278175, 18.697773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354313, 35.951817, 18.555481>,  <33.244919, 35.756001, 18.470106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354313, 35.951817, 18.555481>,  <33.536636, 36.278175, 18.697773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354313, 35.951817, 18.555481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110130, -0.344893, 0.932159,
		-0.883238, 0.464063, 0.067350,
		-0.455808, -0.815901, -0.355730,
		33.217571, 35.707047, 18.448763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010742, 36.100864, 19.167412>,  <33.536636, 36.278175, 18.697773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010742, 36.100864, 19.167412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039932, 35.752880, 18.972334>,  <33.057446, 35.544090, 18.855288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039932, 35.752880, 18.972334>,  <33.010742, 36.100864, 19.167412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039932, 35.752880, 18.972334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017038, -0.490015, 0.871548,
		-0.997188, -0.055295, -0.050583,
		0.072979, -0.869959, -0.487695,
		33.061825, 35.491894, 18.826025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524052, 35.554157, 19.484015>,  <33.010742, 36.100864, 19.167412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524052, 35.554157, 19.484015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796051, 35.345245, 19.278170>,  <32.959251, 35.219898, 19.154663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796051, 35.345245, 19.278170>,  <32.524052, 35.554157, 19.484015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796051, 35.345245, 19.278170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073538, -0.649738, 0.756593,
		-0.729515, -0.552327, -0.403414,
		0.680000, -0.522279, -0.514611,
		33.000050, 35.188560, 19.123787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350693, 34.942501, 19.689991>,  <32.524052, 35.554157, 19.484015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350693, 34.942501, 19.689991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734100, 34.920712, 19.578083>,  <32.964146, 34.907639, 19.510939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734100, 34.920712, 19.578083>,  <32.350693, 34.942501, 19.689991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734100, 34.920712, 19.578083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207981, -0.537489, 0.817220,
		-0.194894, -0.841509, -0.503864,
		0.958520, -0.054477, -0.279771,
		33.021656, 34.904369, 19.494152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494476, 34.261322, 19.798885>,  <32.350693, 34.942501, 19.689991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494476, 34.261322, 19.798885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847954, 34.447910, 19.783463>,  <33.060040, 34.559864, 19.774208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847954, 34.447910, 19.783463>,  <32.494476, 34.261322, 19.798885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847954, 34.447910, 19.783463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279589, -0.460005, 0.842748,
		0.375378, -0.755515, -0.536925,
		0.883697, 0.466467, -0.038558,
		33.113064, 34.587849, 19.771894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858627, 33.813908, 20.016800>,  <32.494476, 34.261322, 19.798885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858627, 33.813908, 20.016800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095974, 34.133434, 20.056427>,  <33.238380, 34.325150, 20.080204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095974, 34.133434, 20.056427>,  <32.858627, 33.813908, 20.016800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095974, 34.133434, 20.056427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308325, -0.339248, 0.888733,
		0.743541, -0.496798, -0.447592,
		0.593365, 0.798813, 0.099070,
		33.273983, 34.373077, 20.086147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467152, 33.557785, 20.140257>,  <32.858627, 33.813908, 20.016800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467152, 33.557785, 20.140257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506027, 33.930401, 20.280422>,  <33.529354, 34.153969, 20.364521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506027, 33.930401, 20.280422>,  <33.467152, 33.557785, 20.140257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506027, 33.930401, 20.280422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417391, -0.357772, 0.835335,
		0.903515, 0.065070, -0.423589,
		0.097193, 0.931539, 0.350412,
		33.535187, 34.209862, 20.385546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142204, 33.680553, 20.360851>,  <33.467152, 33.557785, 20.140257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142204, 33.680553, 20.360851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.941128, 33.968380, 20.552485>,  <33.820480, 34.141075, 20.667465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.941128, 33.968380, 20.552485>,  <34.142204, 33.680553, 20.360851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941128, 33.968380, 20.552485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561686, -0.149395, 0.813751,
		0.657123, 0.678160, -0.329073,
		-0.502691, 0.719570, 0.479084,
		33.790321, 34.184250, 20.696209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577557, 33.882980, 20.806648>,  <34.142204, 33.680553, 20.360851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577557, 33.882980, 20.806648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.242420, 34.015442, 20.980251>,  <34.041340, 34.094917, 21.084414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.242420, 34.015442, 20.980251>,  <34.577557, 33.882980, 20.806648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242420, 34.015442, 20.980251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389465, -0.194512, 0.900268,
		0.382546, 0.923311, 0.033998,
		-0.837840, 0.331153, 0.434007,
		33.991070, 34.114788, 21.110453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763885, 34.288860, 21.444128>,  <34.577557, 33.882980, 20.806648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763885, 34.288860, 21.444128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391579, 34.155830, 21.504873>,  <34.168194, 34.076012, 21.541321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391579, 34.155830, 21.504873>,  <34.763885, 34.288860, 21.444128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391579, 34.155830, 21.504873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252777, -0.285280, 0.924510,
		-0.264143, 0.898894, 0.349597,
		-0.930769, -0.332573, 0.151865,
		34.112347, 34.056057, 21.550432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593807, 34.374798, 22.130194>,  <34.763885, 34.288860, 21.444128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593807, 34.374798, 22.130194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312874, 34.106846, 22.033861>,  <34.144314, 33.946075, 21.976063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312874, 34.106846, 22.033861>,  <34.593807, 34.374798, 22.130194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312874, 34.106846, 22.033861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019679, -0.319913, 0.947242,
		-0.711580, 0.670015, 0.211502,
		-0.702329, -0.669877, -0.240829,
		34.102177, 33.905884, 21.961613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006985, 34.305546, 22.639338>,  <34.593807, 34.374798, 22.130194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006985, 34.305546, 22.639338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970772, 33.956394, 22.447552>,  <33.949043, 33.746902, 22.332479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970772, 33.956394, 22.447552>,  <34.006985, 34.305546, 22.639338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970772, 33.956394, 22.447552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302433, -0.434609, 0.848321,
		-0.948861, 0.221807, -0.224641,
		-0.090533, -0.872878, -0.479465,
		33.943611, 33.694530, 22.303713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339767, 33.997490, 22.897219>,  <34.006985, 34.305546, 22.639338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339767, 33.997490, 22.897219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570793, 33.704296, 22.753464>,  <33.709408, 33.528381, 22.667212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570793, 33.704296, 22.753464>,  <33.339767, 33.997490, 22.897219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570793, 33.704296, 22.753464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190560, -0.549128, 0.813723,
		-0.793796, -0.401489, -0.456831,
		0.577559, -0.732984, -0.359388,
		33.744061, 33.484402, 22.645647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064056, 33.448708, 23.151901>,  <33.339767, 33.997490, 22.897219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064056, 33.448708, 23.151901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424423, 33.312229, 23.044617>,  <33.640644, 33.230343, 22.980246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424423, 33.312229, 23.044617>,  <33.064056, 33.448708, 23.151901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424423, 33.312229, 23.044617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036112, -0.556926, 0.829777,
		-0.432493, -0.757243, -0.489421,
		0.900914, -0.341199, -0.268212,
		33.694698, 33.209869, 22.964153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970638, 32.711674, 23.326204>,  <33.064056, 33.448708, 23.151901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970638, 32.711674, 23.326204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364445, 32.775169, 23.296469>,  <33.600727, 32.813267, 23.278627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364445, 32.775169, 23.296469>,  <32.970638, 32.711674, 23.326204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364445, 32.775169, 23.296469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167875, -0.731883, 0.660428,
		0.050430, -0.662683, -0.747200,
		0.984518, 0.158741, -0.074339,
		33.659801, 32.822792, 23.274166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247990, 32.100399, 23.402227>,  <32.970638, 32.711674, 23.326204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247990, 32.100399, 23.402227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570145, 32.333229, 23.447018>,  <33.763439, 32.472927, 23.473892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570145, 32.333229, 23.447018>,  <33.247990, 32.100399, 23.402227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570145, 32.333229, 23.447018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364685, -0.635518, 0.680530,
		0.467279, -0.507258, -0.724113,
		0.805391, 0.582071, 0.111975,
		33.811764, 32.507851, 23.480610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903915, 31.741098, 23.107643>,  <33.247990, 32.100399, 23.402227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903915, 31.741098, 23.107643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981495, 31.998068, 23.404203>,  <34.028042, 32.152248, 23.582140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981495, 31.998068, 23.404203>,  <33.903915, 31.741098, 23.107643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981495, 31.998068, 23.404203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432033, -0.734450, 0.523384,
		0.880757, 0.218802, -0.419991,
		0.193945, 0.642424, 0.741402,
		34.039677, 32.190796, 23.626623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612858, 31.659182, 23.288750>,  <33.903915, 31.741098, 23.107643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612858, 31.659182, 23.288750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471313, 31.816784, 23.628052>,  <34.386387, 31.911345, 23.831633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471313, 31.816784, 23.628052>,  <34.612858, 31.659182, 23.288750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471313, 31.816784, 23.628052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407676, -0.751273, 0.519027,
		0.841772, 0.529479, 0.105222,
		-0.353864, 0.394006, 0.848257,
		34.365154, 31.934986, 23.882528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102222, 31.462494, 23.749163>,  <34.612858, 31.659182, 23.288750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102222, 31.462494, 23.749163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807697, 31.604099, 23.979820>,  <34.630981, 31.689062, 24.118216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807697, 31.604099, 23.979820>,  <35.102222, 31.462494, 23.749163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807697, 31.604099, 23.979820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449484, -0.381107, 0.807912,
		0.505774, 0.854068, 0.121491,
		-0.736313, 0.354013, 0.576644,
		34.586803, 31.710302, 24.152813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.871593, 31.728502, 28.404114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556400, 31.887651, 28.592062>,  <38.367283, 31.983141, 28.704830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556400, 31.887651, 28.592062>,  <38.871593, 31.728502, 28.404114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556400, 31.887651, 28.592062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455785, -0.136114, 0.879621,
		0.413934, 0.907287, -0.074090,
		-0.787984, 0.397874, 0.469870,
		38.320004, 32.007015, 28.733023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075714, 32.162670, 28.889118>,  <38.871593, 31.728502, 28.404114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075714, 32.162670, 28.889118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700382, 32.086548, 29.004585>,  <38.475185, 32.040874, 29.073866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700382, 32.086548, 29.004585>,  <39.075714, 32.162670, 28.889118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700382, 32.086548, 29.004585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304040, -0.056620, 0.950975,
		-0.164628, 0.980092, 0.110987,
		-0.938327, -0.190301, 0.288666,
		38.418884, 32.029457, 29.091185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066936, 32.412720, 29.505911>,  <39.075714, 32.162670, 28.889118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066936, 32.412720, 29.505911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728497, 32.199776, 29.516537>,  <38.525433, 32.072010, 29.522913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728497, 32.199776, 29.516537>,  <39.066936, 32.412720, 29.505911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728497, 32.199776, 29.516537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081376, -0.079754, 0.993487,
		-0.526779, 0.842750, 0.110801,
		-0.846098, -0.532364, 0.026567,
		38.474667, 32.040066, 29.524508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833950, 32.591564, 30.121925>,  <39.066936, 32.412720, 29.505911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833950, 32.591564, 30.121925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.634678, 32.260303, 30.019171>,  <38.515114, 32.061546, 29.957518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.634678, 32.260303, 30.019171>,  <38.833950, 32.591564, 30.121925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634678, 32.260303, 30.019171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106483, -0.235591, 0.966001,
		-0.860512, 0.508593, 0.029183,
		-0.498177, -0.828148, -0.256885,
		38.485226, 32.011860, 29.942104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235367, 32.535748, 30.594028>,  <38.833950, 32.591564, 30.121925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235367, 32.535748, 30.594028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.287388, 32.167458, 30.446863>,  <38.318600, 31.946484, 30.358564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.287388, 32.167458, 30.446863>,  <38.235367, 32.535748, 30.594028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287388, 32.167458, 30.446863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102295, -0.381542, 0.918674,
		-0.986217, -0.081836, -0.143804,
		0.130048, -0.920722, -0.367912,
		38.326401, 31.891241, 30.336491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597561, 32.079288, 30.778074>,  <38.235367, 32.535748, 30.594028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597561, 32.079288, 30.778074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.902905, 31.833012, 30.699890>,  <38.086109, 31.685246, 30.652979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.902905, 31.833012, 30.699890>,  <37.597561, 32.079288, 30.778074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902905, 31.833012, 30.699890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163397, -0.476780, 0.863702,
		-0.624968, -0.627377, -0.464557,
		0.763359, -0.615694, -0.195461,
		38.131912, 31.648304, 30.641253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373211, 31.484982, 31.030401>,  <37.597561, 32.079288, 30.778074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373211, 31.484982, 31.030401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772758, 31.466690, 31.025143>,  <38.012486, 31.455715, 31.021988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772758, 31.466690, 31.025143>,  <37.373211, 31.484982, 31.030401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772758, 31.466690, 31.025143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013029, -0.528627, 0.848754,
		-0.045764, -0.847622, -0.528624,
		0.998867, -0.045730, -0.013148,
		38.072418, 31.452971, 31.021198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505280, 30.876215, 31.201962>,  <37.373211, 31.484982, 31.030401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505280, 30.876215, 31.201962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863312, 31.046471, 31.255123>,  <38.078133, 31.148624, 31.287020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863312, 31.046471, 31.255123>,  <37.505280, 30.876215, 31.201962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863312, 31.046471, 31.255123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114491, -0.507439, 0.854048,
		0.430958, -0.749224, -0.502930,
		0.895079, 0.425640, 0.132906,
		38.131836, 31.174162, 31.294994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109612, 30.306910, 31.223173>,  <37.505280, 30.876215, 31.201962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109612, 30.306910, 31.223173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215405, 30.633856, 31.427902>,  <38.278881, 30.830025, 31.550739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215405, 30.633856, 31.427902>,  <38.109612, 30.306910, 31.223173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215405, 30.633856, 31.427902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260287, -0.571524, 0.778210,
		0.928601, -0.072602, -0.363907,
		0.264481, 0.817367, 0.511821,
		38.294750, 30.879066, 31.581448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534199, 30.027435, 31.690603>,  <38.109612, 30.306910, 31.223173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534199, 30.027435, 31.690603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.499771, 30.392622, 31.850145>,  <38.479115, 30.611734, 31.945871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.499771, 30.392622, 31.850145>,  <38.534199, 30.027435, 31.690603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499771, 30.392622, 31.850145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342898, -0.348739, 0.872240,
		0.935422, 0.211836, -0.283040,
		-0.086065, 0.912966, 0.398856,
		38.473953, 30.666512, 31.969803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021660, 30.119232, 32.204056>,  <38.534199, 30.027435, 31.690603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021660, 30.119232, 32.204056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.798607, 30.430813, 32.318794>,  <38.664776, 30.617762, 32.387638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.798607, 30.430813, 32.318794>,  <39.021660, 30.119232, 32.204056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798607, 30.430813, 32.318794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163410, -0.235787, 0.957967,
		0.813843, 0.581069, 0.004195,
		-0.557635, 0.778950, 0.286846,
		38.631317, 30.664497, 32.404850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370975, 30.571178, 32.751514>,  <39.021660, 30.119232, 32.204056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370975, 30.571178, 32.751514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984978, 30.654377, 32.815426>,  <38.753380, 30.704296, 32.853775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984978, 30.654377, 32.815426>,  <39.370975, 30.571178, 32.751514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984978, 30.654377, 32.815426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132508, -0.139123, 0.981370,
		0.226351, 0.968185, 0.106691,
		-0.964991, 0.207997, 0.159783,
		38.695480, 30.716776, 32.863361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344597, 31.114939, 33.223747>,  <39.370975, 30.571178, 32.751514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344597, 31.114939, 33.223747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025673, 30.877913, 33.269642>,  <38.834320, 30.735697, 33.297180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025673, 30.877913, 33.269642>,  <39.344597, 31.114939, 33.223747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025673, 30.877913, 33.269642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234429, -0.128859, 0.963555,
		-0.556185, 0.795148, 0.241655,
		-0.797309, -0.592566, 0.114736,
		38.786480, 30.700142, 33.304062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940735, 31.464054, 33.630993>,  <39.344597, 31.114939, 33.223747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940735, 31.464054, 33.630993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906361, 31.067905, 33.674412>,  <38.885735, 30.830217, 33.700462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906361, 31.067905, 33.674412>,  <38.940735, 31.464054, 33.630993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906361, 31.067905, 33.674412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129442, 0.096925, 0.986839,
		-0.987856, 0.098858, 0.119866,
		-0.085939, -0.990370, 0.108544,
		38.880581, 30.770794, 33.706974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220398, 31.981834, 33.187832>,  <38.940735, 31.464054, 33.630993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220398, 31.981834, 33.187832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315678, 32.331493, 33.357124>,  <39.372845, 32.541290, 33.458698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315678, 32.331493, 33.357124>,  <39.220398, 31.981834, 33.187832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315678, 32.331493, 33.357124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792808, 0.426725, -0.435157,
		-0.560994, -0.231883, 0.794680,
		0.238204, 0.874149, 0.423229,
		39.387138, 32.593739, 33.484093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583538, 32.294136, 33.514706>,  <39.220398, 31.981834, 33.187832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583538, 32.294136, 33.514706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.838100, 32.595947, 33.450611>,  <38.990837, 32.777035, 33.412155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.838100, 32.595947, 33.450611>,  <38.583538, 32.294136, 33.514706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838100, 32.595947, 33.450611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697258, 0.473883, -0.537835,
		-0.329877, 0.454008, 0.827682,
		0.636405, 0.754528, -0.160238,
		39.029022, 32.822304, 33.402538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069916, 32.912193, 33.515823>,  <38.583538, 32.294136, 33.514706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069916, 32.912193, 33.515823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.404190, 33.081871, 33.376286>,  <38.604755, 33.183678, 33.292564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.404190, 33.081871, 33.376286>,  <38.069916, 32.912193, 33.515823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404190, 33.081871, 33.376286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535825, 0.490355, -0.687345,
		-0.120509, 0.761323, 0.637075,
		0.835685, 0.424192, -0.348843,
		38.654896, 33.209129, 33.271633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912312, 33.574383, 33.443157>,  <38.069916, 32.912193, 33.515823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912312, 33.574383, 33.443157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214424, 33.521137, 33.186459>,  <38.395691, 33.489189, 33.032440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214424, 33.521137, 33.186459>,  <37.912312, 33.574383, 33.443157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214424, 33.521137, 33.186459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539533, 0.429632, -0.724100,
		0.372102, 0.893139, 0.252671,
		0.755277, -0.133115, -0.641745,
		38.441006, 33.481201, 32.993935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992222, 34.242241, 33.059845>,  <37.912312, 33.574383, 33.443157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992222, 34.242241, 33.059845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.164139, 33.981991, 32.809418>,  <38.267288, 33.825840, 32.659161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.164139, 33.981991, 32.809418>,  <37.992222, 34.242241, 33.059845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164139, 33.981991, 32.809418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553763, 0.357722, -0.751918,
		0.713177, 0.669864, -0.206546,
		0.429797, -0.650628, -0.626065,
		38.293079, 33.786804, 32.621597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287651, 34.682011, 32.636707>,  <37.992222, 34.242241, 33.059845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287651, 34.682011, 32.636707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269642, 34.326397, 32.454460>,  <38.258835, 34.113029, 32.345112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269642, 34.326397, 32.454460>,  <38.287651, 34.682011, 32.636707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269642, 34.326397, 32.454460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449620, 0.425308, -0.785465,
		0.892085, 0.169490, -0.418877,
		-0.045023, -0.889037, -0.455617,
		38.256134, 34.059685, 32.317776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660690, 34.741135, 31.998980>,  <38.287651, 34.682011, 32.636707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660690, 34.741135, 31.998980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423538, 34.420879, 31.964397>,  <38.281246, 34.228725, 31.943647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423538, 34.420879, 31.964397>,  <38.660690, 34.741135, 31.998980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423538, 34.420879, 31.964397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225715, 0.268278, -0.936525,
		0.773009, -0.535735, -0.339773,
		-0.592883, -0.800634, -0.086457,
		38.245674, 34.180691, 31.938459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851528, 34.577808, 31.416185>,  <38.660690, 34.741135, 31.998980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851528, 34.577808, 31.416185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504738, 34.392090, 31.488604>,  <38.296661, 34.280659, 31.532055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504738, 34.392090, 31.488604>,  <38.851528, 34.577808, 31.416185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504738, 34.392090, 31.488604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334633, 0.273191, -0.901880,
		0.369279, -0.842495, -0.392219,
		-0.866980, -0.464295, 0.181043,
		38.244644, 34.252800, 31.542917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688526, 34.071869, 30.815523>,  <38.851528, 34.577808, 31.416185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688526, 34.071869, 30.815523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338604, 34.167545, 30.984047>,  <38.128651, 34.224953, 31.085161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338604, 34.167545, 30.984047>,  <38.688526, 34.071869, 30.815523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338604, 34.167545, 30.984047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348777, 0.292642, -0.890346,
		-0.336259, -0.925822, -0.172579,
		-0.874806, 0.239195, 0.421308,
		38.076160, 34.239304, 31.110439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233524, 34.056232, 30.216251>,  <38.688526, 34.071869, 30.815523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233524, 34.056232, 30.216251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056049, 34.249882, 30.517918>,  <37.949566, 34.366070, 30.698917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056049, 34.249882, 30.517918>,  <38.233524, 34.056232, 30.216251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056049, 34.249882, 30.517918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606289, 0.457573, -0.650416,
		-0.659967, -0.745824, 0.090498,
		-0.443686, 0.484121, 0.754168,
		37.922943, 34.395119, 30.744167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560551, 33.992897, 30.058504>,  <38.233524, 34.056232, 30.216251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560551, 33.992897, 30.058504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.579113, 34.306644, 30.305925>,  <37.590252, 34.494892, 30.454378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.579113, 34.306644, 30.305925>,  <37.560551, 33.992897, 30.058504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579113, 34.306644, 30.305925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524161, 0.546247, -0.653353,
		-0.850354, -0.293900, 0.436487,
		0.046409, 0.784370, 0.618554,
		37.593037, 34.541954, 30.491491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955666, 34.303699, 30.025330>,  <37.560551, 33.992897, 30.058504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955666, 34.303699, 30.025330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200195, 34.590992, 30.158258>,  <37.346912, 34.763367, 30.238016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200195, 34.590992, 30.158258>,  <36.955666, 34.303699, 30.025330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200195, 34.590992, 30.158258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392904, 0.639964, -0.660358,
		-0.686960, 0.273121, 0.673417,
		0.611321, 0.718228, 0.332320,
		37.383591, 34.806461, 30.257954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559284, 34.980354, 30.185818>,  <36.955666, 34.303699, 30.025330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559284, 34.980354, 30.185818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940659, 35.080700, 30.118855>,  <37.169483, 35.140907, 30.078676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940659, 35.080700, 30.118855>,  <36.559284, 34.980354, 30.185818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940659, 35.080700, 30.118855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294765, 0.657716, -0.693197,
		-0.063790, 0.710267, 0.701037,
		0.953438, 0.250860, -0.167406,
		37.226688, 35.155956, 30.068632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538826, 35.707676, 30.123760>,  <36.559284, 34.980354, 30.185818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538826, 35.707676, 30.123760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.882538, 35.582474, 29.961939>,  <37.088764, 35.507355, 29.864845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.882538, 35.582474, 29.961939>,  <36.538826, 35.707676, 30.123760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882538, 35.582474, 29.961939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149607, 0.602531, -0.783948,
		0.489133, 0.734157, 0.470917,
		0.859283, -0.313002, -0.404553,
		37.140324, 35.488575, 29.840572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212265, 36.346386, 30.389368>,  <36.538826, 35.707676, 30.123760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212265, 36.346386, 30.389368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.875999, 36.562214, 30.370815>,  <35.674240, 36.691711, 30.359684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.875999, 36.562214, 30.370815>,  <36.212265, 36.346386, 30.389368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875999, 36.562214, 30.370815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278632, -0.357494, 0.891382,
		0.464378, 0.762277, 0.450873,
		-0.840665, 0.539566, -0.046382,
		35.623798, 36.724083, 30.356901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130619, 36.663048, 31.089691>,  <36.212265, 36.346386, 30.389368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130619, 36.663048, 31.089691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.781437, 36.631626, 30.897116>,  <35.571930, 36.612774, 30.781570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.781437, 36.631626, 30.897116>,  <36.130619, 36.663048, 31.089691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781437, 36.631626, 30.897116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442286, -0.288835, 0.849092,
		-0.205758, 0.954150, 0.217395,
		-0.872953, -0.078557, -0.481438,
		35.519550, 36.608059, 30.752684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674202, 36.923595, 31.564703>,  <36.130619, 36.663048, 31.089691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674202, 36.923595, 31.564703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.480705, 36.717812, 31.281487>,  <35.364605, 36.594341, 31.111557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.480705, 36.717812, 31.281487>,  <35.674202, 36.923595, 31.564703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480705, 36.717812, 31.281487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623497, -0.365161, 0.691309,
		-0.614199, 0.775879, -0.144119,
		-0.483746, -0.514460, -0.708040,
		35.335583, 36.563473, 31.069075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825100, 37.091129, 31.585384>,  <35.674202, 36.923595, 31.564703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825100, 37.091129, 31.585384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.890751, 36.733902, 31.417818>,  <34.930141, 36.519566, 31.317278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.890751, 36.733902, 31.417818>,  <34.825100, 37.091129, 31.585384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890751, 36.733902, 31.417818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320457, -0.449915, 0.833597,
		-0.932936, -0.002572, -0.360033,
		0.164128, -0.893068, -0.418917,
		34.939991, 36.465981, 31.292143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234623, 36.744404, 31.808899>,  <34.825100, 37.091129, 31.585384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234623, 36.744404, 31.808899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468784, 36.451477, 31.669746>,  <34.609280, 36.275723, 31.586254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468784, 36.451477, 31.669746>,  <34.234623, 36.744404, 31.808899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468784, 36.451477, 31.669746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355458, -0.617479, 0.701690,
		-0.728668, -0.287111, -0.621780,
		0.585399, -0.732316, -0.347881,
		34.644405, 36.231781, 31.565382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789867, 36.206486, 31.764122>,  <34.234623, 36.744404, 31.808899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789867, 36.206486, 31.764122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.162712, 36.061886, 31.772938>,  <34.386417, 35.975124, 31.778227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.162712, 36.061886, 31.772938>,  <33.789867, 36.206486, 31.764122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162712, 36.061886, 31.772938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266480, -0.643345, 0.717701,
		-0.245270, -0.674851, -0.696002,
		0.932111, -0.361501, 0.022041,
		34.442345, 35.953434, 31.779551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726902, 35.523331, 31.781906>,  <33.789867, 36.206486, 31.764122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726902, 35.523331, 31.781906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.106213, 35.571869, 31.899244>,  <34.333797, 35.600990, 31.969646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.106213, 35.571869, 31.899244>,  <33.726902, 35.523331, 31.781906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106213, 35.571869, 31.899244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206536, -0.465913, 0.860389,
		0.241078, -0.876470, -0.416751,
		0.948274, 0.121347, 0.293344,
		34.390694, 35.608273, 31.987247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086475, 34.792988, 31.906042>,  <33.726902, 35.523331, 31.781906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086475, 34.792988, 31.906042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.258648, 35.074028, 32.132698>,  <34.361954, 35.242653, 32.268692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.258648, 35.074028, 32.132698>,  <34.086475, 34.792988, 31.906042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258648, 35.074028, 32.132698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099753, -0.586900, 0.803491,
		0.897093, -0.402374, -0.182535,
		0.430434, 0.702598, 0.566642,
		34.387779, 35.284809, 32.302689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389202, 34.374313, 32.434544>,  <34.086475, 34.792988, 31.906042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389202, 34.374313, 32.434544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.388550, 34.750694, 32.569962>,  <34.388157, 34.976521, 32.651215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.388550, 34.750694, 32.569962>,  <34.389202, 34.374313, 32.434544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388550, 34.750694, 32.569962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061412, -0.337814, 0.939207,
		0.998111, 0.022325, -0.057234,
		-0.001633, 0.940948, 0.338547,
		34.388062, 35.032978, 32.671524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880043, 34.292400, 33.020012>,  <34.389202, 34.374313, 32.434544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880043, 34.292400, 33.020012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.665947, 34.626762, 33.068645>,  <34.537491, 34.827381, 33.097824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.665947, 34.626762, 33.068645>,  <34.880043, 34.292400, 33.020012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665947, 34.626762, 33.068645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022157, -0.129993, 0.991267,
		0.844409, 0.533260, 0.051057,
		-0.535240, 0.835904, 0.121583,
		34.505375, 34.877533, 33.105122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201984, 34.608444, 33.534309>,  <34.880043, 34.292400, 33.020012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201984, 34.608444, 33.534309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.830818, 34.757545, 33.535896>,  <34.608116, 34.847008, 33.536850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.830818, 34.757545, 33.535896>,  <35.201984, 34.608444, 33.534309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830818, 34.757545, 33.535896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081815, -0.214023, 0.973396,
		0.363690, 0.902910, 0.229093,
		-0.927920, 0.372758, 0.003967,
		34.552441, 34.869373, 33.537086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217468, 35.226242, 34.003880>,  <35.201984, 34.608444, 33.534309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217468, 35.226242, 34.003880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.836216, 35.108921, 33.974178>,  <34.607464, 35.038528, 33.956356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.836216, 35.108921, 33.974178>,  <35.217468, 35.226242, 34.003880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836216, 35.108921, 33.974178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006983, -0.266689, 0.963757,
		-0.302475, 0.918069, 0.256238,
		-0.953132, -0.293302, -0.074256,
		34.550278, 35.020931, 33.951900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.996777, 38.538933, 26.815243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614418, 38.423546, 26.837307>,  <35.385002, 38.354313, 26.850546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614418, 38.423546, 26.837307>,  <35.996777, 38.538933, 26.815243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614418, 38.423546, 26.837307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093921, -0.122292, 0.988040,
		-0.278274, 0.949647, 0.143992,
		-0.955899, -0.288470, 0.055161,
		35.327648, 38.337006, 26.853855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793434, 38.889206, 27.378386>,  <35.996777, 38.538933, 26.815243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793434, 38.889206, 27.378386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523148, 38.595375, 27.353737>,  <35.360973, 38.419075, 27.338947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523148, 38.595375, 27.353737>,  <35.793434, 38.889206, 27.378386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523148, 38.595375, 27.353737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064960, -0.023928, 0.997601,
		-0.734291, 0.678102, -0.031550,
		-0.675720, -0.734578, -0.061619,
		35.320431, 38.375000, 27.335251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284866, 38.976353, 27.827566>,  <35.793434, 38.889206, 27.378386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284866, 38.976353, 27.827566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222549, 38.585201, 27.771725>,  <35.185162, 38.350510, 27.738220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222549, 38.585201, 27.771725>,  <35.284866, 38.976353, 27.827566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222549, 38.585201, 27.771725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025094, -0.137364, 0.990203,
		-0.987471, 0.157767, -0.003138,
		-0.155790, -0.977876, -0.139602,
		35.175812, 38.291840, 27.729843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734638, 38.696705, 28.284515>,  <35.284866, 38.976353, 27.827566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734638, 38.696705, 28.284515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987301, 38.394241, 28.216122>,  <35.138897, 38.212765, 28.175085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987301, 38.394241, 28.216122>,  <34.734638, 38.696705, 28.284515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987301, 38.394241, 28.216122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162973, -0.345145, 0.924292,
		-0.757925, -0.555968, -0.341246,
		0.631656, -0.756158, -0.170986,
		35.176796, 38.167393, 28.164825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470955, 38.077942, 28.699093>,  <34.734638, 38.696705, 28.284515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470955, 38.077942, 28.699093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835983, 37.950649, 28.596369>,  <35.055000, 37.874275, 28.534735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835983, 37.950649, 28.596369>,  <34.470955, 38.077942, 28.699093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835983, 37.950649, 28.596369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059992, -0.517030, 0.853863,
		-0.404502, -0.794614, -0.452733,
		0.912567, -0.318229, -0.256810,
		35.109753, 37.855179, 28.519325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421345, 37.368412, 28.962868>,  <34.470955, 38.077942, 28.699093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421345, 37.368412, 28.962868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802456, 37.475327, 28.905224>,  <35.031124, 37.539474, 28.870638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802456, 37.475327, 28.905224>,  <34.421345, 37.368412, 28.962868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802456, 37.475327, 28.905224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258909, -0.467094, 0.845452,
		0.158662, -0.842842, -0.514241,
		0.952782, 0.267283, -0.144110,
		35.088291, 37.555511, 28.861990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803104, 36.783348, 28.955532>,  <34.421345, 37.368412, 28.962868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803104, 36.783348, 28.955532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037132, 37.077572, 29.092144>,  <35.177547, 37.254108, 29.174110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037132, 37.077572, 29.092144>,  <34.803104, 36.783348, 28.955532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037132, 37.077572, 29.092144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175555, -0.526015, 0.832159,
		0.791755, -0.426912, -0.436886,
		0.585068, 0.735564, 0.341529,
		35.212654, 37.298241, 29.194603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400028, 36.412540, 29.087849>,  <34.803104, 36.783348, 28.955532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400028, 36.412540, 29.087849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408363, 36.762852, 29.280754>,  <35.413364, 36.973038, 29.396498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408363, 36.762852, 29.280754>,  <35.400028, 36.412540, 29.087849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408363, 36.762852, 29.280754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125674, -0.480837, 0.867757,
		0.991853, 0.042522, -0.120085,
		0.020842, 0.875778, 0.482264,
		35.414616, 37.025585, 29.425434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995758, 36.295689, 29.577230>,  <35.400028, 36.412540, 29.087849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995758, 36.295689, 29.577230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752083, 36.586712, 29.703436>,  <35.605877, 36.761326, 29.779160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752083, 36.586712, 29.703436>,  <35.995758, 36.295689, 29.577230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752083, 36.586712, 29.703436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089002, -0.458071, 0.884449,
		0.788015, 0.510716, 0.343806,
		-0.609189, 0.727558, 0.315511,
		35.569324, 36.804981, 29.798090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720711, 36.239990, 29.644037>,  <35.995758, 36.295689, 29.577230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720711, 36.239990, 29.644037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991268, 35.955486, 29.567503>,  <37.153603, 35.784786, 29.521582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991268, 35.955486, 29.567503>,  <36.720711, 36.239990, 29.644037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991268, 35.955486, 29.567503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263308, 0.476113, -0.839038,
		0.687871, 0.517136, 0.509318,
		0.676390, -0.711257, -0.191338,
		37.194183, 35.742107, 29.510101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322983, 36.550476, 29.385588>,  <36.720711, 36.239990, 29.644037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322983, 36.550476, 29.385588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305641, 36.189682, 29.213751>,  <37.295235, 35.973206, 29.110649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305641, 36.189682, 29.213751>,  <37.322983, 36.550476, 29.385588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305641, 36.189682, 29.213751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166162, 0.417497, -0.893357,
		0.985145, -0.110114, 0.131774,
		-0.043356, -0.901982, -0.429591,
		37.292633, 35.919086, 29.084873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877964, 36.504284, 28.869383>,  <37.322983, 36.550476, 29.385588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877964, 36.504284, 28.869383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631779, 36.208427, 28.760469>,  <37.484066, 36.030914, 28.695122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631779, 36.208427, 28.760469>,  <37.877964, 36.504284, 28.869383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631779, 36.208427, 28.760469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097079, 0.271692, -0.957475,
		0.782162, -0.615726, -0.095414,
		-0.615465, -0.739638, -0.272281,
		37.447140, 35.986534, 28.678785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192894, 36.376678, 28.244162>,  <37.877964, 36.504284, 28.869383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192894, 36.376678, 28.244162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845894, 36.177975, 28.254585>,  <37.637695, 36.058754, 28.260839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845894, 36.177975, 28.254585>,  <38.192894, 36.376678, 28.244162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845894, 36.177975, 28.254585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031687, 0.002906, -0.999493,
		0.496434, -0.867882, -0.018262,
		-0.867496, -0.496761, 0.026058,
		37.585644, 36.028946, 28.262403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269974, 35.824730, 27.773932>,  <38.192894, 36.376678, 28.244162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269974, 35.824730, 27.773932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874130, 35.859444, 27.819786>,  <37.636623, 35.880272, 27.847300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874130, 35.859444, 27.819786>,  <38.269974, 35.824730, 27.773932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874130, 35.859444, 27.819786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119443, -0.052333, -0.991461,
		-0.080056, -0.994851, 0.062157,
		-0.989608, 0.086796, 0.114638,
		37.577248, 35.885479, 27.854177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906448, 35.334270, 27.363756>,  <38.269974, 35.824730, 27.773932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906448, 35.334270, 27.363756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655529, 35.639221, 27.427355>,  <37.504978, 35.822189, 27.465513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655529, 35.639221, 27.427355>,  <37.906448, 35.334270, 27.363756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655529, 35.639221, 27.427355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090921, 0.131071, -0.987195,
		-0.773453, -0.633722, -0.012905,
		-0.627299, 0.762375, 0.158996,
		37.467339, 35.867935, 27.475054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401348, 35.159523, 26.951281>,  <37.906448, 35.334270, 27.363756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401348, 35.159523, 26.951281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379551, 35.553486, 27.017002>,  <37.366474, 35.789864, 27.056435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379551, 35.553486, 27.017002>,  <37.401348, 35.159523, 26.951281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379551, 35.553486, 27.017002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062922, 0.167608, -0.983844,
		-0.996530, -0.043270, -0.071105,
		-0.054488, 0.984904, 0.164304,
		37.363205, 35.848957, 27.066294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803127, 35.362621, 26.481833>,  <37.401348, 35.159523, 26.951281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803127, 35.362621, 26.481833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007317, 35.695965, 26.566610>,  <37.129829, 35.895973, 26.617477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007317, 35.695965, 26.566610>,  <36.803127, 35.362621, 26.481833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007317, 35.695965, 26.566610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087645, 0.194768, -0.976926,
		-0.855413, 0.517274, 0.026384,
		0.510477, 0.833363, 0.211943,
		37.160461, 35.945972, 26.630194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427662, 35.954147, 26.181416>,  <36.803127, 35.362621, 26.481833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427662, 35.954147, 26.181416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811306, 36.059990, 26.221617>,  <37.041492, 36.123493, 26.245737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811306, 36.059990, 26.221617>,  <36.427662, 35.954147, 26.181416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811306, 36.059990, 26.221617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011133, 0.390059, -0.920723,
		-0.282829, 0.881951, 0.377054,
		0.959106, 0.264605, 0.100501,
		37.099037, 36.139370, 26.251766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439857, 36.516525, 25.705898>,  <36.427662, 35.954147, 26.181416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439857, 36.516525, 25.705898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824863, 36.437836, 25.780584>,  <37.055866, 36.390621, 25.825396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824863, 36.437836, 25.780584>,  <36.439857, 36.516525, 25.705898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824863, 36.437836, 25.780584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264079, 0.522764, -0.810543,
		0.061843, 0.829469, 0.555119,
		0.962516, -0.196721, 0.186716,
		37.113617, 36.378819, 25.836599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739441, 37.136120, 25.673979>,  <36.439857, 36.516525, 25.705898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739441, 37.136120, 25.673979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023998, 36.862328, 25.610224>,  <37.194733, 36.698051, 25.571970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023998, 36.862328, 25.610224>,  <36.739441, 37.136120, 25.673979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023998, 36.862328, 25.610224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197692, 0.412535, -0.889232,
		0.674412, 0.601088, 0.428792,
		0.711398, -0.684477, -0.159388,
		37.237419, 36.656986, 25.562407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246628, 37.499477, 25.286308>,  <36.739441, 37.136120, 25.673979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246628, 37.499477, 25.286308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345032, 37.119198, 25.210783>,  <37.404072, 36.891029, 25.165468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345032, 37.119198, 25.210783>,  <37.246628, 37.499477, 25.286308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345032, 37.119198, 25.210783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233160, 0.247123, -0.940514,
		0.940806, 0.187350, 0.282459,
		0.246007, -0.950700, -0.188812,
		37.418835, 36.833988, 25.154139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914753, 37.446064, 24.798771>,  <37.246628, 37.499477, 25.286308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914753, 37.446064, 24.798771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758377, 37.079308, 24.766579>,  <37.664551, 36.859253, 24.747263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758377, 37.079308, 24.766579>,  <37.914753, 37.446064, 24.798771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758377, 37.079308, 24.766579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174481, 0.012026, -0.984587,
		0.903728, -0.398954, 0.155279,
		-0.390938, -0.916892, -0.080478,
		37.641094, 36.804241, 24.742435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383904, 37.029232, 24.407425>,  <37.914753, 37.446064, 24.798771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383904, 37.029232, 24.407425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028839, 36.851692, 24.358360>,  <37.815800, 36.745167, 24.328922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028839, 36.851692, 24.358360>,  <38.383904, 37.029232, 24.407425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028839, 36.851692, 24.358360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128167, 0.017707, -0.991594,
		0.442295, -0.895924, 0.041170,
		-0.887664, -0.443854, -0.122660,
		37.762539, 36.718536, 24.321562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.921684, 34.053749, 24.565876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.309643, 34.094727, 24.654247>,  <31.542418, 34.119312, 24.707270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.309643, 34.094727, 24.654247>,  <30.921684, 34.053749, 24.565876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309643, 34.094727, 24.654247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018312, -0.873962, 0.485649,
		0.242835, -0.475074, -0.845775,
		0.969895, 0.102445, 0.220928,
		31.600611, 34.125462, 24.720526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234856, 33.398754, 24.602530>,  <30.921684, 34.053749, 24.565876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234856, 33.398754, 24.602530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.534777, 33.573238, 24.801533>,  <31.714729, 33.677929, 24.920935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.534777, 33.573238, 24.801533>,  <31.234856, 33.398754, 24.602530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534777, 33.573238, 24.801533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047327, -0.785339, 0.617255,
		0.659966, -0.439274, -0.609494,
		0.749803, 0.436213, 0.497507,
		31.759718, 33.704102, 24.950785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778236, 32.917763, 24.695932>,  <31.234856, 33.398754, 24.602530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778236, 32.917763, 24.695932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.835512, 33.185989, 24.987091>,  <31.869877, 33.346928, 25.161785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.835512, 33.185989, 24.987091>,  <31.778236, 32.917763, 24.695932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835512, 33.185989, 24.987091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038051, -0.731200, 0.681101,
		0.988964, -0.125224, -0.079184,
		0.143190, 0.670571, 0.727895,
		31.878469, 33.387161, 25.205460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303249, 32.639034, 25.147238>,  <31.778236, 32.917763, 24.695932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303249, 32.639034, 25.147238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.145580, 32.929195, 25.372952>,  <32.050980, 33.103294, 25.508379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.145580, 32.929195, 25.372952>,  <32.303249, 32.639034, 25.147238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145580, 32.929195, 25.372952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090494, -0.580376, 0.809305,
		0.914572, 0.370067, 0.163121,
		-0.394169, 0.725406, 0.564285,
		32.027328, 33.146816, 25.542236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807167, 32.858318, 25.711048>,  <32.303249, 32.639034, 25.147238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807167, 32.858318, 25.711048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.445095, 32.970116, 25.839125>,  <32.227852, 33.037193, 25.915972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.445095, 32.970116, 25.839125>,  <32.807167, 32.858318, 25.711048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445095, 32.970116, 25.839125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161013, -0.471706, 0.866930,
		0.393339, 0.836287, 0.381979,
		-0.905185, 0.279494, 0.320194,
		32.173538, 33.053963, 25.935183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932236, 33.145920, 26.374493>,  <32.807167, 32.858318, 25.711048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932236, 33.145920, 26.374493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.538483, 33.088696, 26.415518>,  <32.302231, 33.054359, 26.440132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.538483, 33.088696, 26.415518>,  <32.932236, 33.145920, 26.374493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538483, 33.088696, 26.415518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135802, -0.246490, 0.959584,
		-0.112001, 0.958528, 0.262069,
		-0.984385, -0.143064, 0.102562,
		32.243168, 33.045776, 26.446287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740601, 33.416889, 27.064224>,  <32.932236, 33.145920, 26.374493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740601, 33.416889, 27.064224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.429825, 33.180313, 26.977901>,  <32.243359, 33.038368, 26.926107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.429825, 33.180313, 26.977901>,  <32.740601, 33.416889, 27.064224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429825, 33.180313, 26.977901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077793, -0.430337, 0.899310,
		-0.624754, 0.681919, 0.380354,
		-0.776937, -0.591436, -0.215806,
		32.196743, 33.002884, 26.913160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335552, 33.507820, 27.623537>,  <32.740601, 33.416889, 27.064224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335552, 33.507820, 27.623537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.258270, 33.161480, 27.438938>,  <32.211903, 32.953678, 27.328178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.258270, 33.161480, 27.438938>,  <32.335552, 33.507820, 27.623537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258270, 33.161480, 27.438938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213884, -0.496215, 0.841441,
		-0.957563, 0.063860, 0.281061,
		-0.193202, -0.865847, -0.461499,
		32.200310, 32.901726, 27.300488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023643, 33.116165, 28.159040>,  <32.335552, 33.507820, 27.623537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023643, 33.116165, 28.159040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.129745, 32.856297, 27.874065>,  <32.193405, 32.700375, 27.703079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.129745, 32.856297, 27.874065>,  <32.023643, 33.116165, 28.159040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129745, 32.856297, 27.874065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251213, -0.666820, 0.701600,
		-0.930877, -0.365077, -0.013672,
		0.265255, -0.649669, -0.712440,
		32.209320, 32.661396, 27.660334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757166, 32.505371, 28.422453>,  <32.023643, 33.116165, 28.159040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757166, 32.505371, 28.422453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.018295, 32.389919, 28.142307>,  <32.174973, 32.320648, 27.974220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.018295, 32.389919, 28.142307>,  <31.757166, 32.505371, 28.422453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018295, 32.389919, 28.142307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283775, -0.764055, 0.579389,
		-0.702347, -0.576986, -0.416889,
		0.652825, -0.288629, -0.700366,
		32.214142, 32.303329, 27.932198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742426, 31.672354, 28.315882>,  <31.757166, 32.505371, 28.422453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742426, 31.672354, 28.315882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099785, 31.804016, 28.193573>,  <32.314201, 31.883013, 28.120188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099785, 31.804016, 28.193573>,  <31.742426, 31.672354, 28.315882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099785, 31.804016, 28.193573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447437, -0.590567, 0.671589,
		0.040479, -0.736810, -0.674888,
		0.893399, 0.329155, -0.305771,
		32.367805, 31.902763, 28.101841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115627, 31.196722, 28.403851>,  <31.742426, 31.672354, 28.315882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115627, 31.196722, 28.403851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.410252, 31.465973, 28.377403>,  <32.587029, 31.627523, 28.361534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.410252, 31.465973, 28.377403>,  <32.115627, 31.196722, 28.403851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410252, 31.465973, 28.377403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518233, -0.498836, 0.694692,
		0.434635, -0.545949, -0.716263,
		0.736564, 0.673128, -0.066117,
		32.631222, 31.667912, 28.357569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695354, 30.822222, 28.309713>,  <32.115627, 31.196722, 28.403851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695354, 30.822222, 28.309713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.786644, 31.180965, 28.461271>,  <32.841415, 31.396212, 28.552206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.786644, 31.180965, 28.461271>,  <32.695354, 30.822222, 28.309713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786644, 31.180965, 28.461271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415218, -0.441657, 0.795319,
		0.880630, -0.024184, -0.473187,
		0.228221, 0.896858, 0.378895,
		32.855110, 31.450024, 28.574940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361420, 30.696579, 28.616425>,  <32.695354, 30.822222, 28.309713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361420, 30.696579, 28.616425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.215210, 31.044706, 28.748444>,  <33.127483, 31.253584, 28.827656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.215210, 31.044706, 28.748444>,  <33.361420, 30.696579, 28.616425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215210, 31.044706, 28.748444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483615, -0.125391, 0.866253,
		0.795302, 0.476256, -0.375066,
		-0.365528, 0.870320, 0.330048,
		33.105553, 31.305803, 28.847458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035755, 31.145082, 28.357203>,  <33.361420, 30.696579, 28.616425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035755, 31.145082, 28.357203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339989, 30.915287, 28.236221>,  <34.522530, 30.777411, 28.163631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339989, 30.915287, 28.236221>,  <34.035755, 31.145082, 28.357203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339989, 30.915287, 28.236221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084314, 0.374512, -0.923381,
		0.643744, 0.727808, 0.236409,
		0.760582, -0.574488, -0.302454,
		34.568165, 30.742941, 28.145485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479607, 31.547678, 28.026136>,  <34.035755, 31.145082, 28.357203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479607, 31.547678, 28.026136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591312, 31.190058, 27.886030>,  <34.658337, 30.975485, 27.801968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591312, 31.190058, 27.886030>,  <34.479607, 31.547678, 28.026136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591312, 31.190058, 27.886030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013858, 0.368491, -0.929528,
		0.960113, 0.254733, 0.115297,
		0.279268, -0.894050, -0.350263,
		34.675091, 30.921843, 27.780951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024872, 31.719595, 27.547314>,  <34.479607, 31.547678, 28.026136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024872, 31.719595, 27.547314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919559, 31.342369, 27.466015>,  <34.856373, 31.116034, 27.417234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919559, 31.342369, 27.466015>,  <35.024872, 31.719595, 27.547314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919559, 31.342369, 27.466015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016088, 0.206360, -0.978344,
		0.964586, -0.260846, -0.039158,
		-0.263278, -0.943067, -0.203248,
		34.840576, 31.059448, 27.405041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515697, 31.513395, 27.120579>,  <35.024872, 31.719595, 27.547314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515697, 31.513395, 27.120579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218822, 31.250887, 27.066231>,  <35.040695, 31.093382, 27.033623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218822, 31.250887, 27.066231>,  <35.515697, 31.513395, 27.120579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218822, 31.250887, 27.066231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052363, 0.145330, -0.987997,
		0.668140, -0.740396, -0.073498,
		-0.742191, -0.656271, -0.135870,
		34.996166, 31.054005, 27.025471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723801, 31.088694, 26.611300>,  <35.515697, 31.513395, 27.120579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723801, 31.088694, 26.611300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324127, 31.074476, 26.603600>,  <35.084324, 31.065947, 26.598980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324127, 31.074476, 26.603600>,  <35.723801, 31.088694, 26.611300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324127, 31.074476, 26.603600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007531, 0.304226, -0.952570,
		0.039714, -0.951937, -0.303709,
		-0.999183, -0.035543, -0.019251,
		35.024372, 31.063814, 26.597824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608456, 30.793491, 25.993660>,  <35.723801, 31.088694, 26.611300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608456, 30.793491, 25.993660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244003, 30.942616, 26.063917>,  <35.025333, 31.032091, 26.106071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244003, 30.942616, 26.063917>,  <35.608456, 30.793491, 25.993660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244003, 30.942616, 26.063917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138053, 0.125472, -0.982445,
		-0.388306, -0.919384, -0.062853,
		-0.911131, 0.372813, 0.175645,
		34.970665, 31.054459, 26.116611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104313, 30.441732, 25.486279>,  <35.608456, 30.793491, 25.993660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104313, 30.441732, 25.486279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.922195, 30.777988, 25.603601>,  <34.812923, 30.979742, 25.673994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.922195, 30.777988, 25.603601>,  <35.104313, 30.441732, 25.486279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922195, 30.777988, 25.603601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369280, 0.121460, -0.921347,
		-0.810148, -0.527796, 0.255133,
		-0.455294, 0.840642, 0.293305,
		34.785606, 31.030182, 25.691593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443680, 30.377581, 25.216814>,  <35.104313, 30.441732, 25.486279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443680, 30.377581, 25.216814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529984, 30.765553, 25.261860>,  <34.581764, 30.998337, 25.288887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529984, 30.765553, 25.261860>,  <34.443680, 30.377581, 25.216814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529984, 30.765553, 25.261860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444123, 0.200191, -0.873314,
		-0.869600, 0.138407, 0.473961,
		0.215756, 0.969931, 0.112616,
		34.594711, 31.056532, 25.295645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939926, 30.686283, 24.866034>,  <34.443680, 30.377581, 25.216814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939926, 30.686283, 24.866034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.169769, 31.004915, 24.941174>,  <34.307674, 31.196095, 24.986258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.169769, 31.004915, 24.941174>,  <33.939926, 30.686283, 24.866034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169769, 31.004915, 24.941174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328800, 0.434873, -0.838317,
		-0.749477, 0.419939, 0.511797,
		0.574609, 0.796578, 0.187851,
		34.342152, 31.243889, 24.997528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534176, 31.298923, 24.985537>,  <33.939926, 30.686283, 24.866034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534176, 31.298923, 24.985537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897182, 31.409657, 24.859182>,  <34.114986, 31.476095, 24.783371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897182, 31.409657, 24.859182>,  <33.534176, 31.298923, 24.985537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897182, 31.409657, 24.859182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419272, 0.552132, -0.720667,
		-0.025093, 0.786457, 0.617135,
		0.907514, 0.276830, -0.315885,
		34.169437, 31.492706, 24.764418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467796, 31.961126, 24.760033>,  <33.534176, 31.298923, 24.985537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467796, 31.961126, 24.760033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.834499, 31.904209, 24.610735>,  <34.054520, 31.870060, 24.521156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.834499, 31.904209, 24.610735>,  <33.467796, 31.961126, 24.760033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834499, 31.904209, 24.610735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138593, 0.763052, -0.631303,
		0.374634, 0.630480, 0.679812,
		0.916756, -0.142291, -0.373246,
		34.109528, 31.861523, 24.498762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871933, 32.623283, 24.857965>,  <33.467796, 31.961126, 24.760033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871933, 32.623283, 24.857965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053478, 32.406101, 24.575346>,  <34.162403, 32.275791, 24.405773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053478, 32.406101, 24.575346>,  <33.871933, 32.623283, 24.857965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053478, 32.406101, 24.575346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090261, 0.760830, -0.642644,
		0.886489, 0.355445, 0.296304,
		0.453861, -0.542952, -0.706550,
		34.189636, 32.243214, 24.363380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314693, 33.141159, 24.489803>,  <33.871933, 32.623283, 24.857965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314693, 33.141159, 24.489803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244495, 32.838596, 24.237757>,  <34.202377, 32.657059, 24.086529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244495, 32.838596, 24.237757>,  <34.314693, 33.141159, 24.489803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244495, 32.838596, 24.237757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209044, 0.654086, -0.726961,
		0.962029, 0.004141, -0.272914,
		-0.175499, -0.756409, -0.630116,
		34.191845, 32.611675, 24.048721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880337, 33.065002, 23.873940>,  <34.314693, 33.141159, 24.489803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880337, 33.065002, 23.873940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.528671, 32.917717, 23.752949>,  <34.317673, 32.829346, 23.680353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.528671, 32.917717, 23.752949>,  <34.880337, 33.065002, 23.873940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528671, 32.917717, 23.752949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016012, 0.611578, -0.791022,
		0.476253, -0.700281, -0.531781,
		-0.879163, -0.368212, -0.302478,
		34.264923, 32.807255, 23.662205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489227, 32.780701, 23.692553>,  <34.880337, 33.065002, 23.873940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489227, 32.780701, 23.692553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885239, 32.834381, 23.675426>,  <36.122845, 32.866589, 23.665152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885239, 32.834381, 23.675426>,  <35.489227, 32.780701, 23.692553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885239, 32.834381, 23.675426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115694, -0.601279, 0.790619,
		0.080355, -0.787690, -0.610810,
		0.990029, 0.134197, -0.042815,
		36.182247, 32.874641, 23.662582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840698, 32.116302, 23.936815>,  <35.489227, 32.780701, 23.692553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840698, 32.116302, 23.936815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115986, 32.403938, 23.975323>,  <36.281158, 32.576519, 23.998428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115986, 32.403938, 23.975323>,  <35.840698, 32.116302, 23.936815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115986, 32.403938, 23.975323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279161, -0.384951, 0.879706,
		0.669645, -0.578555, -0.465671,
		0.688219, 0.719087, 0.096271,
		36.322453, 32.619663, 24.004204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418304, 31.788073, 24.298058>,  <35.840698, 32.116302, 23.936815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418304, 31.788073, 24.298058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.460602, 32.179001, 24.371445>,  <36.485981, 32.413559, 24.415476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.460602, 32.179001, 24.371445>,  <36.418304, 31.788073, 24.298058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460602, 32.179001, 24.371445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570237, -0.210748, 0.793987,
		0.814646, 0.020660, -0.579591,
		0.105744, 0.977322, 0.183466,
		36.492325, 32.472198, 24.426485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109615, 31.912060, 24.418722>,  <36.418304, 31.788073, 24.298058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109615, 31.912060, 24.418722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938641, 32.229877, 24.591234>,  <36.836056, 32.420567, 24.694740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938641, 32.229877, 24.591234>,  <37.109615, 31.912060, 24.418722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938641, 32.229877, 24.591234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535242, -0.162049, 0.829009,
		0.728573, 0.585184, -0.356008,
		-0.427432, 0.794544, 0.431279,
		36.810410, 32.468239, 24.720617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578266, 32.248249, 24.739851>,  <37.109615, 31.912060, 24.418722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578266, 32.248249, 24.739851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.267811, 32.420170, 24.924406>,  <37.081539, 32.523323, 25.035139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.267811, 32.420170, 24.924406>,  <37.578266, 32.248249, 24.739851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267811, 32.420170, 24.924406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469426, -0.094704, 0.877878,
		0.421013, 0.897941, -0.128259,
		-0.776136, 0.429806, 0.461388,
		37.034969, 32.549110, 25.062822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941486, 32.614525, 25.240753>,  <37.578266, 32.248249, 24.739851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941486, 32.614525, 25.240753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557125, 32.626759, 25.350822>,  <37.326508, 32.634098, 25.416864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557125, 32.626759, 25.350822>,  <37.941486, 32.614525, 25.240753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557125, 32.626759, 25.350822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268601, -0.138111, 0.953299,
		0.067156, 0.989945, 0.124498,
		-0.960908, 0.030580, 0.275175,
		37.268852, 32.635933, 25.433374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885063, 33.159920, 25.733936>,  <37.941486, 32.614525, 25.240753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885063, 33.159920, 25.733936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579624, 32.908680, 25.793812>,  <37.396362, 32.757935, 25.829737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579624, 32.908680, 25.793812>,  <37.885063, 33.159920, 25.733936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579624, 32.908680, 25.793812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299235, -0.138806, 0.944029,
		-0.572167, 0.765652, 0.293942,
		-0.763599, -0.628101, 0.149690,
		37.350544, 32.720249, 25.838718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538422, 33.494762, 26.285103>,  <37.885063, 33.159920, 25.733936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538422, 33.494762, 26.285103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.424240, 33.112118, 26.261730>,  <37.355732, 32.882530, 26.247707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.424240, 33.112118, 26.261730>,  <37.538422, 33.494762, 26.285103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424240, 33.112118, 26.261730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308584, -0.149458, 0.939382,
		-0.907356, 0.250115, 0.337857,
		-0.285450, -0.956611, -0.058431,
		37.338604, 32.825134, 26.244202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101692, 33.385952, 26.870426>,  <37.538422, 33.494762, 26.285103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101692, 33.385952, 26.870426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206490, 33.013866, 26.767620>,  <37.269367, 32.790615, 26.705936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206490, 33.013866, 26.767620>,  <37.101692, 33.385952, 26.870426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206490, 33.013866, 26.767620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184773, -0.213041, 0.959412,
		-0.947217, -0.298846, 0.116064,
		0.261991, -0.930217, -0.257015,
		37.285088, 32.734802, 26.690516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750839, 32.910782, 27.276987>,  <37.101692, 33.385952, 26.870426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750839, 32.910782, 27.276987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.092781, 32.742573, 27.155405>,  <37.297947, 32.641647, 27.082457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.092781, 32.742573, 27.155405>,  <36.750839, 32.910782, 27.276987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092781, 32.742573, 27.155405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218686, -0.239225, 0.946017,
		-0.470539, -0.875173, -0.112538,
		0.854850, -0.420527, -0.303953,
		37.349236, 32.616413, 27.064219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702538, 32.313892, 27.577784>,  <36.750839, 32.910782, 27.276987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702538, 32.313892, 27.577784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091022, 32.353321, 27.491032>,  <37.324112, 32.376976, 27.438980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091022, 32.353321, 27.491032>,  <36.702538, 32.313892, 27.577784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091022, 32.353321, 27.491032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237870, -0.351422, 0.905495,
		0.013036, -0.931014, -0.364750,
		0.971209, 0.098568, -0.216879,
		37.382385, 32.382893, 27.425968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017620, 31.623552, 27.819962>,  <36.702538, 32.313892, 27.577784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017620, 31.623552, 27.819962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299034, 31.907326, 27.803246>,  <37.467880, 32.077591, 27.793217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299034, 31.907326, 27.803246>,  <37.017620, 31.623552, 27.819962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299034, 31.907326, 27.803246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434376, -0.382736, 0.815371,
		0.562457, -0.591792, -0.577428,
		0.703533, 0.709432, -0.041788,
		37.510094, 32.120155, 27.790709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513721, 31.241398, 27.974020>,  <37.017620, 31.623552, 27.819962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513721, 31.241398, 27.974020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.630684, 31.620020, 28.028467>,  <37.700863, 31.847193, 28.061134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.630684, 31.620020, 28.028467>,  <37.513721, 31.241398, 27.974020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630684, 31.620020, 28.028467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398107, -0.249907, 0.882642,
		0.869488, -0.203901, -0.449905,
		0.292406, 0.946557, 0.136116,
		37.718407, 31.903988, 28.069302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144981, 31.170317, 28.206768>,  <37.513721, 31.241398, 27.974020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144981, 31.170317, 28.206768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032745, 31.535172, 28.326281>,  <37.965405, 31.754086, 28.397989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032745, 31.535172, 28.326281>,  <38.144981, 31.170317, 28.206768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032745, 31.535172, 28.326281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399668, -0.171986, 0.900381,
		0.872659, 0.372054, -0.316294,
		-0.280592, 0.912139, 0.298783,
		37.948566, 31.808813, 28.415915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.456032, 36.474724, 23.932306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059361, 36.524628, 23.919615>,  <37.821358, 36.554569, 23.912001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059361, 36.524628, 23.919615>,  <38.456032, 36.474724, 23.932306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059361, 36.524628, 23.919615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022391, -0.075540, -0.996891,
		-0.126766, -0.989308, 0.072118,
		-0.991680, 0.124757, -0.031728,
		37.761856, 36.562054, 23.910097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153828, 35.920971, 23.534386>,  <38.456032, 36.474724, 23.932306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153828, 35.920971, 23.534386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896339, 36.226540, 23.552485>,  <37.741848, 36.409882, 23.563345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896339, 36.226540, 23.552485>,  <38.153828, 35.920971, 23.534386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896339, 36.226540, 23.552485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207026, -0.116918, -0.971324,
		-0.736725, -0.634629, 0.233414,
		-0.643721, 0.763921, 0.045249,
		37.703224, 36.455715, 23.566059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608822, 35.747566, 23.115582>,  <38.153828, 35.920971, 23.534386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608822, 35.747566, 23.115582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574368, 36.145710, 23.132759>,  <37.553696, 36.384594, 23.143064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574368, 36.145710, 23.132759>,  <37.608822, 35.747566, 23.115582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574368, 36.145710, 23.132759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154899, 0.029198, -0.987499,
		-0.984168, -0.091714, 0.151664,
		-0.086139, 0.995357, 0.042943,
		37.548527, 36.444317, 23.145641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005428, 35.911716, 22.747643>,  <37.608822, 35.747566, 23.115582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005428, 35.911716, 22.747643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244080, 36.232513, 22.759277>,  <37.387272, 36.424992, 22.766258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244080, 36.232513, 22.759277>,  <37.005428, 35.911716, 22.747643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244080, 36.232513, 22.759277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144212, 0.142797, -0.979190,
		-0.789454, 0.580018, 0.200853,
		0.596628, 0.801990, 0.029086,
		37.423069, 36.473110, 22.768003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761913, 36.279072, 22.157978>,  <37.005428, 35.911716, 22.747643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761913, 36.279072, 22.157978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.087906, 36.499146, 22.230751>,  <37.283501, 36.631191, 22.274416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.087906, 36.499146, 22.230751>,  <36.761913, 36.279072, 22.157978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087906, 36.499146, 22.230751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132337, 0.482370, -0.865914,
		-0.564170, 0.681629, 0.465933,
		0.814984, 0.550183, 0.181934,
		37.332401, 36.664200, 22.285332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561646, 37.022881, 22.257393>,  <36.761913, 36.279072, 22.157978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561646, 37.022881, 22.257393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940353, 36.966454, 22.141645>,  <37.167576, 36.932598, 22.072197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940353, 36.966454, 22.141645>,  <36.561646, 37.022881, 22.257393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940353, 36.966454, 22.141645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186413, 0.492606, -0.850052,
		0.262459, 0.858743, 0.440086,
		0.946766, -0.141066, -0.289370,
		37.224384, 36.924133, 22.054834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772251, 37.689545, 22.036600>,  <36.561646, 37.022881, 22.257393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772251, 37.689545, 22.036600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.009377, 37.410042, 21.876444>,  <37.151649, 37.242340, 21.780350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.009377, 37.410042, 21.876444>,  <36.772251, 37.689545, 22.036600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009377, 37.410042, 21.876444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066869, 0.452745, -0.889129,
		0.802562, 0.553858, 0.221666,
		0.592809, -0.698759, -0.400392,
		37.187218, 37.200413, 21.756327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965424, 38.016743, 21.477720>,  <36.772251, 37.689545, 22.036600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965424, 38.016743, 21.477720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095661, 37.647179, 21.397346>,  <37.173805, 37.425442, 21.349121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095661, 37.647179, 21.397346>,  <36.965424, 38.016743, 21.477720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095661, 37.647179, 21.397346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075097, 0.237114, -0.968575,
		0.942521, 0.300277, 0.146587,
		0.325598, -0.923910, -0.200935,
		37.193340, 37.370007, 21.337067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429714, 38.159386, 20.910957>,  <36.965424, 38.016743, 21.477720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429714, 38.159386, 20.910957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329891, 37.772312, 20.896511>,  <37.269997, 37.540070, 20.887842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329891, 37.772312, 20.896511>,  <37.429714, 38.159386, 20.910957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329891, 37.772312, 20.896511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061316, 0.053014, -0.996709,
		0.966416, -0.246525, -0.072565,
		-0.249561, -0.967685, -0.036117,
		37.255024, 37.482006, 20.885675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905647, 37.830681, 20.445368>,  <37.429714, 38.159386, 20.910957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905647, 37.830681, 20.445368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574936, 37.606930, 20.469130>,  <37.376507, 37.472679, 20.483387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574936, 37.606930, 20.469130>,  <37.905647, 37.830681, 20.445368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574936, 37.606930, 20.469130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004393, -0.099180, -0.995060,
		0.562507, -0.822958, 0.079543,
		-0.826781, -0.559379, 0.059405,
		37.326900, 37.439117, 20.486952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978706, 37.357655, 19.872528>,  <37.905647, 37.830681, 20.445368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978706, 37.357655, 19.872528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.588940, 37.357151, 19.962418>,  <37.355080, 37.356850, 20.016352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.588940, 37.357151, 19.962418>,  <37.978706, 37.357655, 19.872528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588940, 37.357151, 19.962418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224314, 0.066229, -0.972264,
		-0.013662, -0.997804, -0.064816,
		-0.974421, -0.001256, 0.224726,
		37.296612, 37.356773, 20.029835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700031, 37.029716, 19.361141>,  <37.978706, 37.357655, 19.872528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700031, 37.029716, 19.361141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370373, 37.219471, 19.484905>,  <37.172577, 37.333324, 19.559164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370373, 37.219471, 19.484905>,  <37.700031, 37.029716, 19.361141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370373, 37.219471, 19.484905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318507, 0.063535, -0.945789,
		-0.468329, -0.878020, 0.098734,
		-0.824149, 0.474388, 0.309410,
		37.123127, 37.361786, 19.577728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097870, 36.654484, 19.136154>,  <37.700031, 37.029716, 19.361141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097870, 36.654484, 19.136154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052471, 37.051746, 19.147137>,  <37.025234, 37.290104, 19.153727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052471, 37.051746, 19.147137>,  <37.097870, 36.654484, 19.136154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052471, 37.051746, 19.147137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391002, -0.019242, -0.920189,
		-0.913365, -0.115172, 0.390512,
		-0.113494, 0.993159, 0.027457,
		37.018421, 37.349693, 19.155375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637737, 36.642563, 18.533684>,  <37.097870, 36.654484, 19.136154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637737, 36.642563, 18.533684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261395, 36.509251, 18.509306>,  <36.035587, 36.429264, 18.494680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261395, 36.509251, 18.509306>,  <36.637737, 36.642563, 18.533684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261395, 36.509251, 18.509306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165734, -0.609618, 0.775177,
		-0.295503, 0.719229, 0.628798,
		-0.940856, -0.333280, -0.060943,
		35.979137, 36.409267, 18.491022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361881, 36.615856, 19.295223>,  <36.637737, 36.642563, 18.533684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361881, 36.615856, 19.295223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169582, 36.344200, 19.073357>,  <36.054203, 36.181206, 18.940237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169582, 36.344200, 19.073357>,  <36.361881, 36.615856, 19.295223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169582, 36.344200, 19.073357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033783, -0.646437, 0.762219,
		-0.876208, 0.347697, 0.333716,
		-0.480747, -0.679136, -0.554668,
		36.025360, 36.140461, 18.906956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923267, 36.317371, 19.787285>,  <36.361881, 36.615856, 19.295223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923267, 36.317371, 19.787285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913364, 36.002251, 19.541113>,  <35.907425, 35.813179, 19.393410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913364, 36.002251, 19.541113>,  <35.923267, 36.317371, 19.787285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913364, 36.002251, 19.541113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020337, -0.615095, 0.788191,
		-0.999487, 0.032028, -0.000795,
		-0.024755, -0.787802, -0.615430,
		35.905937, 35.765911, 19.356483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386230, 35.920216, 20.070503>,  <35.923267, 36.317371, 19.787285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386230, 35.920216, 20.070503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.598278, 35.657841, 19.855570>,  <35.725506, 35.500416, 19.726610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.598278, 35.657841, 19.855570>,  <35.386230, 35.920216, 20.070503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598278, 35.657841, 19.855570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101419, -0.678205, 0.727841,
		-0.841838, -0.331343, -0.426051,
		0.530115, -0.655934, -0.537334,
		35.757313, 35.461060, 19.694370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090260, 35.211128, 20.195402>,  <35.386230, 35.920216, 20.070503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090260, 35.211128, 20.195402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451550, 35.126812, 20.045866>,  <35.668324, 35.076221, 19.956144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451550, 35.126812, 20.045866>,  <35.090260, 35.211128, 20.195402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451550, 35.126812, 20.045866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141948, -0.675326, 0.723731,
		-0.405018, -0.706756, -0.580048,
		0.903223, -0.210788, -0.373842,
		35.722515, 35.063576, 19.933714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160797, 34.494186, 20.279755>,  <35.090260, 35.211128, 20.195402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160797, 34.494186, 20.279755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533363, 34.625916, 20.217758>,  <35.756901, 34.704952, 20.180561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533363, 34.625916, 20.217758>,  <35.160797, 34.494186, 20.279755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533363, 34.625916, 20.217758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332132, -0.594857, 0.732007,
		0.148868, -0.733276, -0.663434,
		0.931411, 0.329320, -0.154990,
		35.812786, 34.724712, 20.171261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505150, 33.845093, 20.248970>,  <35.160797, 34.494186, 20.279755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505150, 33.845093, 20.248970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756790, 34.140965, 20.344557>,  <35.907772, 34.318489, 20.401909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756790, 34.140965, 20.344557>,  <35.505150, 33.845093, 20.248970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756790, 34.140965, 20.344557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326553, -0.530465, 0.782285,
		0.705406, -0.414099, -0.575261,
		0.629099, 0.739682, 0.238967,
		35.945518, 34.362869, 20.416246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110508, 33.601646, 20.302002>,  <35.505150, 33.845093, 20.248970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110508, 33.601646, 20.302002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167068, 33.938293, 20.510498>,  <36.201004, 34.140282, 20.635595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167068, 33.938293, 20.510498>,  <36.110508, 33.601646, 20.302002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167068, 33.938293, 20.510498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457847, -0.522434, 0.719333,
		0.877714, 0.136932, -0.459204,
		0.141404, 0.841613, 0.521241,
		36.209492, 34.190777, 20.666870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752132, 33.536011, 20.619761>,  <36.110508, 33.601646, 20.302002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752132, 33.536011, 20.619761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590656, 33.828705, 20.839430>,  <36.493771, 34.004322, 20.971231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590656, 33.828705, 20.839430>,  <36.752132, 33.536011, 20.619761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590656, 33.828705, 20.839430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207333, -0.511472, 0.833912,
		0.891093, 0.450505, 0.054763,
		-0.403692, 0.731739, 0.549173,
		36.469547, 34.048225, 21.004183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165741, 33.764400, 21.089380>,  <36.752132, 33.536011, 20.619761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165741, 33.764400, 21.089380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848854, 33.915131, 21.281378>,  <36.658722, 34.005569, 21.396576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848854, 33.915131, 21.281378>,  <37.165741, 33.764400, 21.089380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848854, 33.915131, 21.281378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317257, -0.417582, 0.851453,
		0.521282, 0.826820, 0.211268,
		-0.792220, 0.376821, 0.479993,
		36.611187, 34.028175, 21.425375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397694, 33.907368, 21.777481>,  <37.165741, 33.764400, 21.089380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397694, 33.907368, 21.777481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998886, 33.889473, 21.802603>,  <36.759602, 33.878735, 21.817677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998886, 33.889473, 21.802603>,  <37.397694, 33.907368, 21.777481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998886, 33.889473, 21.802603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076862, -0.511387, 0.855906,
		-0.006172, 0.858185, 0.513303,
		-0.997023, -0.044736, 0.062805,
		36.699780, 33.876053, 21.821444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258335, 34.082657, 22.441629>,  <37.397694, 33.907368, 21.777481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258335, 34.082657, 22.441629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940598, 33.876465, 22.313068>,  <36.749954, 33.752750, 22.235931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940598, 33.876465, 22.313068>,  <37.258335, 34.082657, 22.441629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940598, 33.876465, 22.313068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114411, -0.392664, 0.912538,
		-0.596596, 0.761641, 0.252934,
		-0.794344, -0.515478, -0.321402,
		36.702293, 33.721821, 22.216648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653297, 34.206192, 22.879002>,  <37.258335, 34.082657, 22.441629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653297, 34.206192, 22.879002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.607986, 33.843796, 22.715857>,  <36.580799, 33.626358, 22.617970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.607986, 33.843796, 22.715857>,  <36.653297, 34.206192, 22.879002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607986, 33.843796, 22.715857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174907, -0.385910, 0.905804,
		-0.978047, 0.173945, -0.114749,
		-0.113277, -0.905989, -0.407862,
		36.574005, 33.571999, 22.593498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010330, 34.054245, 23.206100>,  <36.653297, 34.206192, 22.879002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010330, 34.054245, 23.206100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197029, 33.723606, 23.080318>,  <36.309048, 33.525223, 23.004848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197029, 33.723606, 23.080318>,  <36.010330, 34.054245, 23.206100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197029, 33.723606, 23.080318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105084, -0.404879, 0.908312,
		-0.878124, -0.390910, -0.275839,
		0.466750, -0.826597, -0.314455,
		36.337055, 33.475628, 22.985981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602539, 33.569252, 23.533947>,  <36.010330, 34.054245, 23.206100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602539, 33.569252, 23.533947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924374, 33.353081, 23.435503>,  <36.117474, 33.223377, 23.376436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924374, 33.353081, 23.435503>,  <35.602539, 33.569252, 23.533947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924374, 33.353081, 23.435503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089370, -0.519923, 0.849525,
		-0.587070, -0.661523, -0.466623,
		0.804588, -0.540432, -0.246111,
		36.165749, 33.190952, 23.361670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955364, 33.229259, 23.190475>,  <35.602539, 33.569252, 23.533947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955364, 33.229259, 23.190475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585205, 33.078667, 23.207912>,  <34.363110, 32.988312, 23.218374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585205, 33.078667, 23.207912>,  <34.955364, 33.229259, 23.190475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585205, 33.078667, 23.207912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117202, 0.174897, -0.977586,
		0.360418, -0.909766, -0.205973,
		-0.925398, -0.376481, 0.043590,
		34.307587, 32.965721, 23.220989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891659, 32.783493, 22.619387>,  <34.955364, 33.229259, 23.190475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891659, 32.783493, 22.619387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523746, 32.909096, 22.713537>,  <34.302998, 32.984459, 22.770027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523746, 32.909096, 22.713537>,  <34.891659, 32.783493, 22.619387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523746, 32.909096, 22.713537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218299, 0.089032, -0.971812,
		-0.326111, -0.945237, -0.013342,
		-0.919781, 0.314007, 0.235378,
		34.247810, 33.003296, 22.784151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412525, 32.532825, 22.120495>,  <34.891659, 32.783493, 22.619387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412525, 32.532825, 22.120495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203835, 32.835663, 22.277775>,  <34.078621, 33.017365, 22.372143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203835, 32.835663, 22.277775>,  <34.412525, 32.532825, 22.120495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203835, 32.835663, 22.277775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258834, 0.298700, -0.918577,
		-0.812901, -0.581019, 0.040123,
		-0.521726, 0.757097, 0.393201,
		34.047318, 33.062790, 22.395735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804047, 32.580364, 21.613855>,  <34.412525, 32.532825, 22.120495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804047, 32.580364, 21.613855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842758, 32.912777, 21.832954>,  <33.865986, 33.112225, 21.964415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842758, 32.912777, 21.832954>,  <33.804047, 32.580364, 21.613855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842758, 32.912777, 21.832954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274236, 0.551292, -0.787954,
		-0.956781, -0.073957, 0.281250,
		0.096776, 0.831028, 0.547747,
		33.871792, 33.162086, 21.997278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264561, 33.040596, 21.453270>,  <33.804047, 32.580364, 21.613855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264561, 33.040596, 21.453270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507362, 33.304688, 21.630196>,  <33.653042, 33.463142, 21.736351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507362, 33.304688, 21.630196>,  <33.264561, 33.040596, 21.453270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507362, 33.304688, 21.630196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249042, 0.686583, -0.683068,
		-0.754667, 0.304471, 0.581184,
		0.607005, 0.660228, 0.442316,
		33.689465, 33.502754, 21.762890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933689, 33.616886, 21.465408>,  <33.264561, 33.040596, 21.453270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933689, 33.616886, 21.465408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288296, 33.783318, 21.546364>,  <33.501060, 33.883179, 21.594936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288296, 33.783318, 21.546364>,  <32.933689, 33.616886, 21.465408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288296, 33.783318, 21.546364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183975, 0.718334, -0.670932,
		-0.424546, 0.557558, 0.713365,
		0.886518, 0.416083, 0.202389,
		33.554253, 33.908142, 21.607080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938698, 34.344776, 21.747776>,  <32.933689, 33.616886, 21.465408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938698, 34.344776, 21.747776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293579, 34.296116, 21.569757>,  <33.506508, 34.266922, 21.462946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293579, 34.296116, 21.569757>,  <32.938698, 34.344776, 21.747776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293579, 34.296116, 21.569757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243406, 0.696043, -0.675483,
		0.391943, 0.707620, 0.587924,
		0.887206, -0.121646, -0.445048,
		33.559742, 34.259621, 21.436243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881222, 34.919735, 22.150057>,  <32.938698, 34.344776, 21.747776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881222, 34.919735, 22.150057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663498, 35.224617, 22.290211>,  <32.532864, 35.407547, 22.374302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663498, 35.224617, 22.290211>,  <32.881222, 34.919735, 22.150057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663498, 35.224617, 22.290211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074754, -0.460087, 0.884722,
		0.835547, 0.455370, 0.307407,
		-0.544310, 0.762206, 0.350384,
		32.500206, 35.453278, 22.395327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160641, 35.109642, 22.869202>,  <32.881222, 34.919735, 22.150057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160641, 35.109642, 22.869202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781929, 35.232986, 22.832260>,  <32.554703, 35.306995, 22.810095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781929, 35.232986, 22.832260>,  <33.160641, 35.109642, 22.869202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781929, 35.232986, 22.832260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211645, -0.380163, 0.900379,
		0.242535, 0.872002, 0.425192,
		-0.946775, 0.308363, -0.092352,
		32.497898, 35.325497, 22.804554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103554, 35.406254, 23.476513>,  <33.160641, 35.109642, 22.869202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103554, 35.406254, 23.476513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728092, 35.359501, 23.346731>,  <32.502815, 35.331451, 23.268862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728092, 35.359501, 23.346731>,  <33.103554, 35.406254, 23.476513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728092, 35.359501, 23.346731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240530, -0.452339, 0.858799,
		-0.247139, 0.884154, 0.396476,
		-0.938652, -0.116878, -0.324456,
		32.446495, 35.324436, 23.249393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698952, 35.760513, 23.919899>,  <33.103554, 35.406254, 23.476513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698952, 35.760513, 23.919899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.470150, 35.478203, 23.752712>,  <32.332870, 35.308815, 23.652401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.470150, 35.478203, 23.752712>,  <32.698952, 35.760513, 23.919899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470150, 35.478203, 23.752712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133786, -0.422459, 0.896454,
		-0.809268, 0.568691, 0.147224,
		-0.572002, -0.705775, -0.417966,
		32.298550, 35.266472, 23.627323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151115, 35.748196, 24.297224>,  <32.698952, 35.760513, 23.919899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151115, 35.748196, 24.297224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.147793, 35.397560, 24.104757>,  <32.145798, 35.187180, 23.989277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.147793, 35.397560, 24.104757>,  <32.151115, 35.748196, 24.297224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147793, 35.397560, 24.104757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291342, -0.458188, 0.839752,
		-0.956583, 0.147162, -0.251580,
		-0.008309, -0.876588, -0.481169,
		32.145302, 35.134583, 23.960407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541155, 35.366585, 24.494083>,  <32.151115, 35.748196, 24.297224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541155, 35.366585, 24.494083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760883, 35.067482, 24.344894>,  <31.892719, 34.888020, 24.255381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760883, 35.067482, 24.344894>,  <31.541155, 35.366585, 24.494083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760883, 35.067482, 24.344894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270860, -0.581585, 0.767069,
		-0.790496, -0.320342, -0.522013,
		0.549319, -0.747757, -0.372973,
		31.925678, 34.843155, 24.233004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092289, 34.807430, 24.445982>,  <31.541155, 35.366585, 24.494083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092289, 34.807430, 24.445982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456884, 34.643375, 24.458479>,  <31.675642, 34.544941, 24.465977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456884, 34.643375, 24.458479>,  <31.092289, 34.807430, 24.445982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456884, 34.643375, 24.458479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312508, -0.641123, 0.700928,
		-0.267445, -0.648652, -0.712547,
		0.911489, -0.410136, 0.031243,
		31.730331, 34.520336, 24.467852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.694843, 39.795879, 20.130320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.972855, 39.513561, 20.185141>,  <35.139660, 39.344170, 20.218033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.972855, 39.513561, 20.185141>,  <34.694843, 39.795879, 20.130320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972855, 39.513561, 20.185141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275341, -0.085200, 0.957564,
		-0.664172, -0.703269, -0.253552,
		0.695027, -0.705800, 0.137052,
		35.181362, 39.301823, 20.226255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354786, 39.203430, 20.363857>,  <34.694843, 39.795879, 20.130320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354786, 39.203430, 20.363857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.737103, 39.194637, 20.481152>,  <34.966492, 39.189362, 20.551529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.737103, 39.194637, 20.481152>,  <34.354786, 39.203430, 20.363857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737103, 39.194637, 20.481152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293374, -0.139301, 0.945794,
		0.020056, -0.990006, -0.139592,
		0.955787, -0.021984, 0.293236,
		35.023838, 39.188042, 20.569122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393597, 38.725597, 20.839613>,  <34.354786, 39.203430, 20.363857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393597, 38.725597, 20.839613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.743774, 38.906128, 20.908783>,  <34.953880, 39.014446, 20.950285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.743774, 38.906128, 20.908783>,  <34.393597, 38.725597, 20.839613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743774, 38.906128, 20.908783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113067, -0.156619, 0.981166,
		0.469909, -0.878508, -0.086081,
		0.875444, 0.451326, 0.172927,
		35.006409, 39.041527, 20.960661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801727, 38.273808, 21.268002>,  <34.393597, 38.725597, 20.839613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801727, 38.273808, 21.268002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.978954, 38.627647, 21.326193>,  <35.085293, 38.839951, 21.361107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.978954, 38.627647, 21.326193>,  <34.801727, 38.273808, 21.268002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978954, 38.627647, 21.326193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044795, -0.140228, 0.989106,
		0.895367, -0.444761, -0.022506,
		0.443071, 0.884604, 0.145479,
		35.111877, 38.893028, 21.369837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329327, 38.195133, 21.774336>,  <34.801727, 38.273808, 21.268002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329327, 38.195133, 21.774336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.226700, 38.581432, 21.758856>,  <35.165123, 38.813213, 21.749567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.226700, 38.581432, 21.758856>,  <35.329327, 38.195133, 21.774336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226700, 38.581432, 21.758856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002155, 0.039468, 0.999219,
		0.966525, 0.256446, -0.008045,
		-0.256563, 0.965752, -0.038700,
		35.149731, 38.871159, 21.747246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661079, 38.470829, 22.295893>,  <35.329327, 38.195133, 21.774336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661079, 38.470829, 22.295893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379444, 38.748837, 22.237644>,  <35.210464, 38.915642, 22.202696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379444, 38.748837, 22.237644>,  <35.661079, 38.470829, 22.295893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379444, 38.748837, 22.237644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185110, 0.018338, 0.982547,
		0.685561, 0.718755, 0.115744,
		-0.704088, 0.695021, -0.145621,
		35.168217, 38.957344, 22.193958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807571, 38.867622, 22.877762>,  <35.661079, 38.470829, 22.295893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807571, 38.867622, 22.877762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.446758, 38.980122, 22.746775>,  <35.230270, 39.047623, 22.668182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.446758, 38.980122, 22.746775>,  <35.807571, 38.867622, 22.877762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446758, 38.980122, 22.746775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364450, -0.089654, 0.926897,
		0.231328, 0.955438, 0.183371,
		-0.902033, 0.281247, -0.327470,
		35.176147, 39.064495, 22.648533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534702, 39.378231, 23.303246>,  <35.807571, 38.867622, 22.877762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534702, 39.378231, 23.303246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.181679, 39.277363, 23.144499>,  <34.969864, 39.216843, 23.049252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.181679, 39.277363, 23.144499>,  <35.534702, 39.378231, 23.303246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181679, 39.277363, 23.144499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407686, -0.010148, 0.913066,
		-0.234279, 0.967629, -0.093852,
		-0.882556, -0.252174, -0.396867,
		34.916912, 39.201710, 23.025438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994610, 39.835651, 23.557760>,  <35.534702, 39.378231, 23.303246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994610, 39.835651, 23.557760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.846966, 39.474342, 23.470249>,  <34.758381, 39.257557, 23.417742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.846966, 39.474342, 23.470249>,  <34.994610, 39.835651, 23.557760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846966, 39.474342, 23.470249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414231, -0.050837, 0.908751,
		-0.831970, 0.426049, -0.355399,
		-0.369106, -0.903271, -0.218777,
		34.736233, 39.203362, 23.404615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309120, 39.813274, 23.744522>,  <34.994610, 39.835651, 23.557760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309120, 39.813274, 23.744522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.401821, 39.424206, 23.750223>,  <34.457443, 39.190765, 23.753645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.401821, 39.424206, 23.750223>,  <34.309120, 39.813274, 23.744522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401821, 39.424206, 23.750223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297700, -0.056966, 0.952958,
		-0.926103, -0.225093, -0.302765,
		0.231751, -0.972670, 0.014254,
		34.471348, 39.132404, 23.754499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778877, 39.458679, 24.150999>,  <34.309120, 39.813274, 23.744522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778877, 39.458679, 24.150999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.083096, 39.199528, 24.168079>,  <34.265625, 39.044037, 24.178328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.083096, 39.199528, 24.168079>,  <33.778877, 39.458679, 24.150999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083096, 39.199528, 24.168079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173759, -0.139724, 0.974826,
		-0.625601, -0.748820, -0.218842,
		0.760547, -0.647878, 0.042703,
		34.311260, 39.005165, 24.180891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518578, 38.879894, 24.623468>,  <33.778877, 39.458679, 24.150999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518578, 38.879894, 24.623468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912643, 38.813835, 24.604801>,  <34.149082, 38.774200, 24.593601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912643, 38.813835, 24.604801>,  <33.518578, 38.879894, 24.623468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912643, 38.813835, 24.604801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005716, -0.240192, 0.970709,
		-0.171519, -0.956574, -0.235685,
		0.985164, -0.165147, -0.046666,
		34.208191, 38.764290, 24.590801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898270, 38.438534, 24.526115>,  <33.518578, 38.879894, 24.623468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898270, 38.438534, 24.526115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.583401, 38.665455, 24.622883>,  <32.394482, 38.801609, 24.680944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.583401, 38.665455, 24.622883>,  <32.898270, 38.438534, 24.526115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583401, 38.665455, 24.622883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163100, 0.186805, -0.968763,
		-0.594779, -0.802039, -0.054520,
		-0.787170, 0.567307, 0.241920,
		32.347248, 38.835648, 24.695459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457466, 38.244934, 24.030621>,  <32.898270, 38.438534, 24.526115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457466, 38.244934, 24.030621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.327019, 38.594677, 24.174370>,  <32.248753, 38.804523, 24.260618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.327019, 38.594677, 24.174370>,  <32.457466, 38.244934, 24.030621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327019, 38.594677, 24.174370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187691, 0.312698, -0.931124,
		-0.926511, -0.371103, 0.062134,
		-0.326114, 0.874358, 0.359371,
		32.229183, 38.856983, 24.282181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771919, 38.452011, 23.753658>,  <32.457466, 38.244934, 24.030621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771919, 38.452011, 23.753658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.938457, 38.796886, 23.869097>,  <32.038380, 39.003811, 23.938360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.938457, 38.796886, 23.869097>,  <31.771919, 38.452011, 23.753658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938457, 38.796886, 23.869097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192532, 0.393822, -0.898797,
		-0.888588, 0.318646, 0.329965,
		0.416345, 0.862188, 0.288596,
		32.063362, 39.055542, 23.955675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265514, 38.901943, 23.583469>,  <31.771919, 38.452011, 23.753658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265514, 38.901943, 23.583469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.612883, 39.099121, 23.604824>,  <31.821304, 39.217426, 23.617638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.612883, 39.099121, 23.604824>,  <31.265514, 38.901943, 23.583469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612883, 39.099121, 23.604824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087494, 0.258335, -0.962085,
		-0.488048, 0.830823, 0.267473,
		0.868421, 0.492946, 0.053388,
		31.873409, 39.247005, 23.620840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168989, 39.499687, 23.319580>,  <31.265514, 38.901943, 23.583469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168989, 39.499687, 23.319580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.568316, 39.486111, 23.300741>,  <31.807911, 39.477966, 23.289438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.568316, 39.486111, 23.300741>,  <31.168989, 39.499687, 23.319580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568316, 39.486111, 23.300741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026650, 0.452813, -0.891207,
		0.051575, 0.890959, 0.451145,
		0.998313, -0.033941, -0.047098,
		31.867809, 39.475929, 23.286612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321499, 40.113575, 22.973125>,  <31.168989, 39.499687, 23.319580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321499, 40.113575, 22.973125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.651106, 39.887367, 22.959383>,  <31.848871, 39.751644, 22.951138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.651106, 39.887367, 22.959383>,  <31.321499, 40.113575, 22.973125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651106, 39.887367, 22.959383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007728, 0.071853, -0.997385,
		0.566510, 0.821599, 0.063578,
		0.824019, -0.565520, -0.034356,
		31.898312, 39.717712, 22.949076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779366, 40.512745, 22.530655>,  <31.321499, 40.113575, 22.973125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779366, 40.512745, 22.530655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.920607, 40.138630, 22.521168>,  <32.005352, 39.914162, 22.515476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.920607, 40.138630, 22.521168>,  <31.779366, 40.512745, 22.530655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920607, 40.138630, 22.521168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127453, 0.073201, -0.989140,
		0.926862, 0.346247, 0.145052,
		0.353105, -0.935283, -0.023717,
		32.026539, 39.858044, 22.514053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343113, 40.654865, 22.186951>,  <31.779366, 40.512745, 22.530655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343113, 40.654865, 22.186951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.279617, 40.261715, 22.149509>,  <32.241520, 40.025826, 22.127045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.279617, 40.261715, 22.149509>,  <32.343113, 40.654865, 22.186951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279617, 40.261715, 22.149509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198784, 0.061046, -0.978140,
		0.967102, -0.173877, 0.185689,
		-0.158740, -0.982874, -0.093602,
		32.231995, 39.966854, 22.121429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871693, 40.391766, 21.666780>,  <32.343113, 40.654865, 22.186951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871693, 40.391766, 21.666780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.590256, 40.108936, 21.695101>,  <32.421394, 39.939240, 21.712093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.590256, 40.108936, 21.695101>,  <32.871693, 40.391766, 21.666780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590256, 40.108936, 21.695101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097350, -0.194603, -0.976039,
		0.703909, -0.679836, 0.205754,
		-0.703587, -0.707073, 0.070801,
		32.379181, 39.896816, 21.716341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110035, 39.804688, 21.328262>,  <32.871693, 40.391766, 21.666780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110035, 39.804688, 21.328262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.710835, 39.779415, 21.327780>,  <32.471313, 39.764252, 21.327490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.710835, 39.779415, 21.327780>,  <33.110035, 39.804688, 21.328262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710835, 39.779415, 21.327780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009589, -0.132558, -0.991129,
		0.062456, -0.989160, 0.132899,
		-0.998002, -0.063177, -0.001206,
		32.411434, 39.760464, 21.327417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041660, 39.302956, 20.796341>,  <33.110035, 39.804688, 21.328262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041660, 39.302956, 20.796341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695484, 39.496456, 20.848490>,  <32.487778, 39.612556, 20.879778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695484, 39.496456, 20.848490>,  <33.041660, 39.302956, 20.796341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695484, 39.496456, 20.848490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247054, -0.185678, -0.951046,
		-0.435868, -0.855280, 0.280208,
		-0.865438, 0.483757, 0.130369,
		32.435852, 39.641582, 20.887600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557804, 38.831585, 20.578005>,  <33.041660, 39.302956, 20.796341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557804, 38.831585, 20.578005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.386028, 39.192284, 20.558231>,  <32.282963, 39.408703, 20.546368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.386028, 39.192284, 20.558231>,  <32.557804, 38.831585, 20.578005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386028, 39.192284, 20.558231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398359, -0.238268, -0.885741,
		-0.810490, -0.360677, 0.461539,
		-0.429437, 0.901743, -0.049435,
		32.257198, 39.462807, 20.543402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099529, 38.792732, 19.998909>,  <32.557804, 38.831585, 20.578005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099529, 38.792732, 19.998909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.763123, 38.582226, 19.948727>,  <32.561279, 38.455921, 19.918617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.763123, 38.582226, 19.948727>,  <33.099529, 38.792732, 19.998909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763123, 38.582226, 19.948727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191230, 0.506088, -0.841015,
		0.506088, -0.683315, -0.526265,
		0.841015, 0.526265, 0.125455,
		32.510818, 38.424347, 19.911091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546295, 38.204872, 20.303873>,  <33.099529, 38.792732, 19.998909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546295, 38.204872, 20.303873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.148338, 38.171978, 20.280481>,  <32.909565, 38.152241, 20.266447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.148338, 38.171978, 20.280481>,  <33.546295, 38.204872, 20.303873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148338, 38.171978, 20.280481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007411, -0.518378, 0.855119,
		-0.100638, 0.851188, 0.515123,
		-0.994896, -0.082240, -0.058477,
		32.849869, 38.147305, 20.262938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264278, 38.310333, 20.990080>,  <33.546295, 38.204872, 20.303873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264278, 38.310333, 20.990080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.016552, 38.072140, 20.785397>,  <32.867916, 37.929222, 20.662586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.016552, 38.072140, 20.785397>,  <33.264278, 38.310333, 20.990080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016552, 38.072140, 20.785397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026487, -0.635523, 0.771628,
		-0.784694, 0.491436, 0.377817,
		-0.619317, -0.595484, -0.511708,
		32.830757, 37.893494, 20.631884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683079, 38.085323, 21.471197>,  <33.264278, 38.310333, 20.990080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683079, 38.085323, 21.471197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.664093, 37.829727, 21.164099>,  <32.652702, 37.676369, 20.979839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.664093, 37.829727, 21.164099>,  <32.683079, 38.085323, 21.471197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664093, 37.829727, 21.164099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209568, -0.745136, 0.633130,
		-0.976641, 0.190948, -0.098544,
		-0.047466, -0.638992, -0.767747,
		32.649853, 37.638031, 20.933775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104465, 37.684593, 21.623985>,  <32.683079, 38.085323, 21.471197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104465, 37.684593, 21.623985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309429, 37.454384, 21.369047>,  <32.432407, 37.316257, 21.216084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309429, 37.454384, 21.369047>,  <32.104465, 37.684593, 21.623985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309429, 37.454384, 21.369047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184343, -0.798604, 0.572930,
		-0.838722, -0.176084, -0.515306,
		0.512409, -0.575522, -0.637347,
		32.463154, 37.281727, 21.177843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716660, 37.126884, 21.407587>,  <32.104465, 37.684593, 21.623985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716660, 37.126884, 21.407587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088608, 36.990040, 21.353483>,  <32.311779, 36.907932, 21.321020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088608, 36.990040, 21.353483>,  <31.716660, 37.126884, 21.407587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088608, 36.990040, 21.353483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231499, -0.829912, 0.507596,
		-0.285910, -0.440686, -0.850912,
		0.929873, -0.342112, -0.135262,
		32.367569, 36.887405, 21.312904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713781, 36.349724, 21.231836>,  <31.716660, 37.126884, 21.407587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713781, 36.349724, 21.231836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.077595, 36.433239, 21.375587>,  <32.295883, 36.483349, 21.461838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.077595, 36.433239, 21.375587>,  <31.713781, 36.349724, 21.231836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077595, 36.433239, 21.375587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083485, -0.755268, 0.650077,
		0.407157, -0.621270, -0.669512,
		0.909534, 0.208789, 0.359379,
		32.350456, 36.495876, 21.483400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006897, 35.733276, 21.153576>,  <31.713781, 36.349724, 21.231836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006897, 35.733276, 21.153576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.203667, 35.942520, 21.431961>,  <32.321728, 36.068066, 21.598991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.203667, 35.942520, 21.431961>,  <32.006897, 35.733276, 21.153576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203667, 35.942520, 21.431961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006443, -0.801539, 0.597909,
		0.870612, -0.289644, -0.397670,
		0.491929, 0.523109, 0.695962,
		32.351246, 36.099453, 21.640749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352772, 35.200653, 21.439699>,  <32.006897, 35.733276, 21.153576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352772, 35.200653, 21.439699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.359100, 35.486240, 21.719700>,  <32.362896, 35.657593, 21.887701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.359100, 35.486240, 21.719700>,  <32.352772, 35.200653, 21.439699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359100, 35.486240, 21.719700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124656, -0.696037, 0.707102,
		0.992074, 0.076072, -0.100012,
		0.015821, 0.713965, 0.700003,
		32.363846, 35.700428, 21.929701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082062, 35.079964, 21.372875>,  <32.352772, 35.200653, 21.439699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082062, 35.079964, 21.372875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.306282, 34.818821, 21.169085>,  <33.440815, 34.662136, 21.046810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.306282, 34.818821, 21.169085>,  <33.082062, 35.079964, 21.372875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306282, 34.818821, 21.169085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361541, 0.360560, -0.859816,
		0.745032, 0.666165, -0.033923,
		0.560549, -0.652855, -0.509475,
		33.474445, 34.622963, 21.016241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676964, 35.406139, 20.934385>,  <33.082062, 35.079964, 21.372875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676964, 35.406139, 20.934385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.630913, 35.045799, 20.766951>,  <33.603283, 34.829594, 20.666489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.630913, 35.045799, 20.766951>,  <33.676964, 35.406139, 20.934385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630913, 35.045799, 20.766951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035956, 0.417335, -0.908041,
		0.992700, -0.119591, -0.015656,
		-0.115128, -0.900849, -0.418589,
		33.596375, 34.775543, 20.641375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044804, 35.398228, 20.357624>,  <33.676964, 35.406139, 20.934385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044804, 35.398228, 20.357624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.794949, 35.096771, 20.275795>,  <33.645035, 34.915897, 20.226698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.794949, 35.096771, 20.275795>,  <34.044804, 35.398228, 20.357624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794949, 35.096771, 20.275795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012536, 0.271606, -0.962327,
		0.780815, -0.598540, -0.179103,
		-0.624636, -0.753645, -0.204571,
		33.607559, 34.870678, 20.214424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258099, 35.247795, 19.686245>,  <34.044804, 35.398228, 20.357624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258099, 35.247795, 19.686245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.906139, 35.063877, 19.734196>,  <33.694965, 34.953526, 19.762966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.906139, 35.063877, 19.734196>,  <34.258099, 35.247795, 19.686245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906139, 35.063877, 19.734196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195151, 0.119656, -0.973447,
		0.433240, -0.879928, -0.195014,
		-0.879897, -0.459793, 0.119878,
		33.642170, 34.925938, 19.770159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187355, 34.696678, 19.163109>,  <34.258099, 35.247795, 19.686245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187355, 34.696678, 19.163109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.811138, 34.795971, 19.255857>,  <33.585407, 34.855549, 19.311506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.811138, 34.795971, 19.255857>,  <34.187355, 34.696678, 19.163109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811138, 34.795971, 19.255857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224746, 0.057077, -0.972744,
		-0.254705, -0.967016, 0.002107,
		-0.940539, 0.248237, 0.231871,
		33.528976, 34.870441, 19.325418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922531, 34.454754, 18.570271>,  <34.187355, 34.696678, 19.163109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922531, 34.454754, 18.570271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654743, 34.705597, 18.729542>,  <33.494068, 34.856102, 18.825104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654743, 34.705597, 18.729542>,  <33.922531, 34.454754, 18.570271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654743, 34.705597, 18.729542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365287, 0.188814, -0.911545,
		-0.646818, -0.755703, 0.102668,
		-0.669472, 0.627107, 0.398177,
		33.453903, 34.893730, 18.848995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188839, 34.286831, 18.274048>,  <33.922531, 34.454754, 18.570271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188839, 34.286831, 18.274048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.177525, 34.657032, 18.425121>,  <33.170734, 34.879154, 18.515764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.177525, 34.657032, 18.425121>,  <33.188839, 34.286831, 18.274048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177525, 34.657032, 18.425121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506681, 0.312420, -0.803535,
		-0.861669, -0.214096, 0.460096,
		-0.028291, 0.925503, 0.377681,
		33.169037, 34.934685, 18.538425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685993, 34.605736, 17.865503>,  <33.188839, 34.286831, 18.274048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685993, 34.605736, 17.865503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.859974, 34.915802, 18.048775>,  <32.964363, 35.101841, 18.158737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.859974, 34.915802, 18.048775>,  <32.685993, 34.605736, 17.865503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859974, 34.915802, 18.048775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353106, 0.614909, -0.705126,
		-0.828330, 0.144913, 0.541175,
		0.434955, 0.775169, 0.458178,
		32.990459, 35.148354, 18.186228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230228, 35.112339, 18.169752>,  <32.685993, 34.605736, 17.865503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230228, 35.112339, 18.169752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.568806, 35.294201, 18.058884>,  <32.771954, 35.403316, 17.992363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.568806, 35.294201, 18.058884>,  <32.230228, 35.112339, 18.169752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568806, 35.294201, 18.058884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471657, 0.398590, -0.786553,
		-0.247132, 0.796502, 0.551824,
		0.846443, 0.454654, -0.277171,
		32.822739, 35.430595, 17.975733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.512741, 29.560381, 32.459583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790733, 29.842619, 32.514927>,  <35.957527, 30.011961, 32.548134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790733, 29.842619, 32.514927>,  <35.512741, 29.560381, 32.459583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790733, 29.842619, 32.514927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296454, 0.456486, -0.838889,
		-0.655072, 0.541994, 0.526424,
		0.694978, 0.705594, 0.138355,
		35.999226, 30.054296, 32.556435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195995, 30.205257, 32.489223>,  <35.512741, 29.560381, 32.459583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195995, 30.205257, 32.489223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568371, 30.261547, 32.354431>,  <35.791794, 30.295321, 32.273556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568371, 30.261547, 32.354431>,  <35.195995, 30.205257, 32.489223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568371, 30.261547, 32.354431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364368, 0.419634, -0.831351,
		0.024416, 0.896718, 0.441928,
		0.930935, 0.140725, -0.336981,
		35.847652, 30.303764, 32.253338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193127, 30.801638, 32.201611>,  <35.195995, 30.205257, 32.489223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193127, 30.801638, 32.201611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.510559, 30.621199, 32.038277>,  <35.701019, 30.512936, 31.940277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.510559, 30.621199, 32.038277>,  <35.193127, 30.801638, 32.201611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510559, 30.621199, 32.038277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316680, 0.266825, -0.910230,
		0.519554, 0.851655, 0.068896,
		0.793585, -0.451096, -0.408332,
		35.748634, 30.485870, 31.915777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535568, 31.209881, 31.670250>,  <35.193127, 30.801638, 32.201611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535568, 31.209881, 31.670250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668327, 30.848885, 31.560448>,  <35.747982, 30.632286, 31.494566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668327, 30.848885, 31.560448>,  <35.535568, 31.209881, 31.670250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668327, 30.848885, 31.560448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266508, 0.189433, -0.945034,
		0.904885, 0.386813, -0.177649,
		0.331899, -0.902492, -0.274504,
		35.767899, 30.578136, 31.478096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030315, 31.297297, 31.135511>,  <35.535568, 31.209881, 31.670250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030315, 31.297297, 31.135511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939671, 30.911888, 31.078558>,  <35.885284, 30.680643, 31.044386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939671, 30.911888, 31.078558>,  <36.030315, 31.297297, 31.135511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939671, 30.911888, 31.078558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073965, 0.162786, -0.983885,
		0.971173, -0.212426, -0.108156,
		-0.226609, -0.963523, -0.142381,
		35.871689, 30.622831, 31.035843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372429, 31.038212, 30.587612>,  <36.030315, 31.297297, 31.135511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372429, 31.038212, 30.587612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078018, 30.768654, 30.613317>,  <35.901371, 30.606918, 30.628740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078018, 30.768654, 30.613317>,  <36.372429, 31.038212, 30.587612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078018, 30.768654, 30.613317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060809, -0.160360, -0.985184,
		0.674216, -0.721214, 0.159008,
		-0.736027, -0.673895, 0.064262,
		35.857208, 30.566484, 30.632595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522808, 30.372301, 30.186380>,  <36.372429, 31.038212, 30.587612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522808, 30.372301, 30.186380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128986, 30.348240, 30.252151>,  <35.892693, 30.333803, 30.291615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128986, 30.348240, 30.252151>,  <36.522808, 30.372301, 30.186380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128986, 30.348240, 30.252151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159182, -0.083537, -0.983709,
		0.072910, -0.994687, 0.072671,
		-0.984553, -0.060155, 0.164427,
		35.833622, 30.330194, 30.301479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262493, 29.793264, 29.718060>,  <36.522808, 30.372301, 30.186380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262493, 29.793264, 29.718060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942657, 30.007694, 29.826336>,  <35.750755, 30.136353, 29.891302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942657, 30.007694, 29.826336>,  <36.262493, 29.793264, 29.718060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942657, 30.007694, 29.826336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425107, -0.186871, -0.885643,
		-0.424187, -0.823227, 0.377310,
		-0.799593, 0.536076, 0.270691,
		35.702778, 30.168516, 29.907543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708294, 29.407267, 29.638271>,  <36.262493, 29.793264, 29.718060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708294, 29.407267, 29.638271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575302, 29.783514, 29.610865>,  <35.495506, 30.009262, 29.594421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575302, 29.783514, 29.610865>,  <35.708294, 29.407267, 29.638271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575302, 29.783514, 29.610865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353700, -0.191710, -0.915502,
		-0.874272, -0.280154, 0.396436,
		-0.332482, 0.940617, -0.068517,
		35.475559, 30.065699, 29.590309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075878, 29.342409, 29.184019>,  <35.708294, 29.407267, 29.638271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075878, 29.342409, 29.184019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132042, 29.738319, 29.194035>,  <35.165741, 29.975866, 29.200045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132042, 29.738319, 29.194035>,  <35.075878, 29.342409, 29.184019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132042, 29.738319, 29.194035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401040, 0.079980, -0.912562,
		-0.905235, 0.118095, 0.408170,
		0.140414, 0.989776, 0.025040,
		35.174168, 30.035252, 29.201546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482265, 29.663776, 28.965305>,  <35.075878, 29.342409, 29.184019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482265, 29.663776, 28.965305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740452, 29.962252, 28.900101>,  <34.895363, 30.141336, 28.860979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740452, 29.962252, 28.900101>,  <34.482265, 29.663776, 28.965305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740452, 29.962252, 28.900101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420162, 0.168665, -0.891636,
		-0.637834, 0.644015, 0.422389,
		0.645469, 0.746188, -0.163010,
		34.934093, 30.186108, 28.851198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093361, 30.268351, 28.815252>,  <34.482265, 29.663776, 28.965305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093361, 30.268351, 28.815252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454369, 30.349285, 28.663189>,  <34.670975, 30.397846, 28.571951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454369, 30.349285, 28.663189>,  <34.093361, 30.268351, 28.815252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454369, 30.349285, 28.663189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423849, 0.261057, -0.867296,
		-0.076242, 0.943880, 0.321368,
		0.902518, 0.202336, -0.380159,
		34.725124, 30.409986, 28.549141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796410, 30.797974, 29.179588>,  <34.093361, 30.268351, 28.815252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796410, 30.797974, 29.179588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501785, 31.054808, 29.264633>,  <33.325012, 31.208908, 29.315660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501785, 31.054808, 29.264633>,  <33.796410, 30.797974, 29.179588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501785, 31.054808, 29.264633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088847, -0.219771, 0.971497,
		0.670510, 0.734458, 0.104828,
		-0.736562, 0.642085, 0.212612,
		33.280815, 31.247433, 29.328417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081215, 31.311195, 29.657207>,  <33.796410, 30.797974, 29.179588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081215, 31.311195, 29.657207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685032, 31.274399, 29.698265>,  <33.447323, 31.252321, 29.722900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685032, 31.274399, 29.698265>,  <34.081215, 31.311195, 29.657207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685032, 31.274399, 29.698265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108738, -0.063846, 0.992018,
		-0.084704, 0.993711, 0.073240,
		-0.990455, -0.091992, 0.102646,
		33.387894, 31.246801, 29.729059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950954, 31.712818, 30.125519>,  <34.081215, 31.311195, 29.657207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950954, 31.712818, 30.125519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618744, 31.490278, 30.136118>,  <33.419418, 31.356754, 30.142477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618744, 31.490278, 30.136118>,  <33.950954, 31.712818, 30.125519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618744, 31.490278, 30.136118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093969, 0.186855, 0.977883,
		-0.548999, 0.809665, -0.207468,
		-0.830524, -0.556352, 0.026500,
		33.369587, 31.323372, 30.144068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618198, 32.062366, 30.559628>,  <33.950954, 31.712818, 30.125519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618198, 32.062366, 30.559628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387272, 31.735806, 30.554142>,  <33.248714, 31.539869, 30.550852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387272, 31.735806, 30.554142>,  <33.618198, 32.062366, 30.559628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387272, 31.735806, 30.554142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304998, 0.200041, 0.931107,
		-0.757416, 0.541728, -0.364489,
		-0.577319, -0.816404, -0.013712,
		33.214077, 31.490885, 30.550028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977257, 32.266487, 30.633337>,  <33.618198, 32.062366, 30.559628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977257, 32.266487, 30.633337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946209, 31.882729, 30.741800>,  <32.927582, 31.652473, 30.806877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946209, 31.882729, 30.741800>,  <32.977257, 32.266487, 30.633337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946209, 31.882729, 30.741800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322321, 0.281521, 0.903800,
		-0.943443, -0.017246, -0.331087,
		-0.077621, -0.959400, 0.271157,
		32.922924, 31.594908, 30.823147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304043, 32.201698, 30.949453>,  <32.977257, 32.266487, 30.633337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304043, 32.201698, 30.949453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471874, 31.870070, 31.097292>,  <32.572571, 31.671093, 31.185995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471874, 31.870070, 31.097292>,  <32.304043, 32.201698, 30.949453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471874, 31.870070, 31.097292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381782, 0.208223, 0.900492,
		-0.823529, -0.518928, -0.229159,
		0.419575, -0.829070, 0.369595,
		32.597748, 31.621349, 31.208170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863562, 31.776648, 31.313725>,  <32.304043, 32.201698, 30.949453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863562, 31.776648, 31.313725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.217461, 31.670021, 31.466652>,  <32.429798, 31.606045, 31.558409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.217461, 31.670021, 31.466652>,  <31.863562, 31.776648, 31.313725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217461, 31.670021, 31.466652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349454, 0.163365, 0.922601,
		-0.308394, -0.949870, 0.051383,
		0.884746, -0.266568, 0.382317,
		32.482883, 31.590052, 31.581347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721869, 31.290630, 31.894390>,  <31.863562, 31.776648, 31.313725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721869, 31.290630, 31.894390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.081554, 31.449507, 31.967770>,  <32.297367, 31.544832, 32.011799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.081554, 31.449507, 31.967770>,  <31.721869, 31.290630, 31.894390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081554, 31.449507, 31.967770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293151, 0.235727, 0.926550,
		0.324776, -0.886944, 0.328407,
		0.899213, 0.397194, 0.183450,
		32.351318, 31.568665, 32.022804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722288, 31.065239, 32.496033>,  <31.721869, 31.290630, 31.894390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722288, 31.065239, 32.496033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.995970, 31.355145, 32.463581>,  <32.160179, 31.529087, 32.444111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.995970, 31.355145, 32.463581>,  <31.722288, 31.065239, 32.496033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995970, 31.355145, 32.463581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289358, 0.371895, 0.882024,
		0.669430, -0.580010, 0.464168,
		0.684204, 0.724764, -0.081127,
		32.201233, 31.572575, 32.439243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162659, 31.108097, 33.169273>,  <31.722288, 31.065239, 32.496033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162659, 31.108097, 33.169273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.201595, 31.459139, 32.981514>,  <32.224957, 31.669764, 32.868858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.201595, 31.459139, 32.981514>,  <32.162659, 31.108097, 33.169273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201595, 31.459139, 32.981514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196745, 0.479301, 0.855314,
		0.975610, 0.009091, 0.219322,
		0.097346, 0.877603, -0.469400,
		32.230801, 31.722420, 32.840694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525806, 31.534275, 33.589417>,  <32.162659, 31.108097, 33.169273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525806, 31.534275, 33.589417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350353, 31.796680, 33.343735>,  <32.245079, 31.954124, 33.196327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350353, 31.796680, 33.343735>,  <32.525806, 31.534275, 33.589417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350353, 31.796680, 33.343735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228530, 0.579565, 0.782226,
		0.869121, 0.483477, -0.104300,
		-0.438637, 0.656014, -0.614201,
		32.218761, 31.993484, 33.159473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661484, 32.147655, 33.938736>,  <32.525806, 31.534275, 33.589417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661484, 32.147655, 33.938736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389977, 32.274220, 33.673656>,  <32.227074, 32.350159, 33.514610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389977, 32.274220, 33.673656>,  <32.661484, 32.147655, 33.938736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389977, 32.274220, 33.673656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351499, 0.652347, 0.671485,
		0.644769, 0.688717, -0.331574,
		-0.678765, 0.316405, -0.662696,
		32.186348, 32.369141, 33.474846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711613, 32.836483, 33.879982>,  <32.661484, 32.147655, 33.938736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711613, 32.836483, 33.879982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343674, 32.772007, 33.736931>,  <32.122910, 32.733322, 33.651100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343674, 32.772007, 33.736931>,  <32.711613, 32.836483, 33.879982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343674, 32.772007, 33.736931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324144, 0.825783, 0.461533,
		0.220927, 0.540462, -0.811845,
		-0.919849, -0.161190, -0.357625,
		32.067719, 32.723652, 33.629642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500011, 33.573151, 33.781738>,  <32.711613, 32.836483, 33.879982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500011, 33.573151, 33.781738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179764, 33.334465, 33.803452>,  <31.987616, 33.191254, 33.816479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179764, 33.334465, 33.803452>,  <32.500011, 33.573151, 33.781738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179764, 33.334465, 33.803452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505176, 0.720960, 0.474356,
		-0.322192, 0.352354, -0.878657,
		-0.800618, -0.596711, 0.054287,
		31.939579, 33.155453, 33.819736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925980, 33.916031, 33.423187>,  <32.500011, 33.573151, 33.781738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925980, 33.916031, 33.423187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788794, 33.662582, 33.700577>,  <31.706482, 33.510513, 33.867008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788794, 33.662582, 33.700577>,  <31.925980, 33.916031, 33.423187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788794, 33.662582, 33.700577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539276, 0.737281, 0.406938,
		-0.769127, -0.234406, -0.594557,
		-0.342967, -0.633617, 0.693472,
		31.685904, 33.472496, 33.908619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253386, 34.156685, 33.423901>,  <31.925980, 33.916031, 33.423187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253386, 34.156685, 33.423901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313938, 33.977726, 33.776474>,  <31.350269, 33.870350, 33.988018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313938, 33.977726, 33.776474>,  <31.253386, 34.156685, 33.423901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313938, 33.977726, 33.776474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625727, 0.646928, 0.435832,
		-0.765212, -0.617513, -0.182013,
		0.151383, -0.447394, 0.881432,
		31.359354, 33.843506, 34.040905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257637, 34.769165, 33.693596>,  <31.253386, 34.156685, 33.423901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257637, 34.769165, 33.693596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637201, 34.643520, 33.705608>,  <31.864941, 34.568134, 33.712818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637201, 34.643520, 33.705608>,  <31.257637, 34.769165, 33.693596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637201, 34.643520, 33.705608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204712, 0.540383, -0.816137,
		0.240127, 0.780590, 0.577078,
		0.948911, -0.314111, 0.030036,
		31.921875, 34.549286, 33.714619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624083, 35.368832, 33.708084>,  <31.257637, 34.769165, 33.693596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624083, 35.368832, 33.708084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805397, 35.042698, 33.563992>,  <31.914185, 34.847019, 33.477535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805397, 35.042698, 33.563992>,  <31.624083, 35.368832, 33.708084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805397, 35.042698, 33.563992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179822, 0.479464, -0.858941,
		0.873039, 0.324568, 0.363948,
		0.453285, -0.815334, -0.360227,
		31.941383, 34.798100, 33.455925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983448, 35.665726, 33.321056>,  <31.624083, 35.368832, 33.708084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983448, 35.665726, 33.321056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001343, 35.286526, 33.195015>,  <32.012077, 35.059006, 33.119389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001343, 35.286526, 33.195015>,  <31.983448, 35.665726, 33.321056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001343, 35.286526, 33.195015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186961, 0.317792, -0.929545,
		0.981348, -0.017329, 0.191456,
		0.044735, -0.948002, -0.315104,
		32.014763, 35.002125, 33.100483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535553, 35.697849, 32.974342>,  <31.983448, 35.665726, 33.321056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535553, 35.697849, 32.974342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.335278, 35.375595, 32.847683>,  <32.215111, 35.182243, 32.771687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.335278, 35.375595, 32.847683>,  <32.535553, 35.697849, 32.974342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335278, 35.375595, 32.847683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073867, 0.324707, -0.942926,
		0.862470, -0.495503, -0.103067,
		-0.500689, -0.805632, -0.316651,
		32.185070, 35.133907, 32.752689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918747, 35.469810, 32.472847>,  <32.535553, 35.697849, 32.974342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918747, 35.469810, 32.472847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547527, 35.337479, 32.404411>,  <32.324795, 35.258080, 32.363350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547527, 35.337479, 32.404411>,  <32.918747, 35.469810, 32.472847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547527, 35.337479, 32.404411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028398, 0.395168, -0.918170,
		0.371368, -0.856967, -0.357341,
		-0.928051, -0.330831, -0.171089,
		32.269112, 35.238228, 32.353085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928192, 35.239964, 31.780878>,  <32.918747, 35.469810, 32.472847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928192, 35.239964, 31.780878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535633, 35.270370, 31.851395>,  <32.300098, 35.288612, 31.893705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535633, 35.270370, 31.851395>,  <32.928192, 35.239964, 31.780878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535633, 35.270370, 31.851395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129007, 0.418936, -0.898804,
		-0.142176, -0.904828, -0.401337,
		-0.981398, 0.076013, 0.176292,
		32.241215, 35.293175, 31.904282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594879, 34.982990, 31.227648>,  <32.928192, 35.239964, 31.780878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594879, 34.982990, 31.227648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322453, 35.212040, 31.410187>,  <32.158997, 35.349472, 31.519711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322453, 35.212040, 31.410187>,  <32.594879, 34.982990, 31.227648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322453, 35.212040, 31.410187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261966, 0.391429, -0.882132,
		-0.683759, -0.720335, -0.116580,
		-0.681064, 0.572626, 0.456346,
		32.118134, 35.383827, 31.547091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050835, 34.932255, 30.755131>,  <32.594879, 34.982990, 31.227648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050835, 34.932255, 30.755131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.005280, 35.265362, 30.971842>,  <31.977945, 35.465225, 31.101868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.005280, 35.265362, 30.971842>,  <32.050835, 34.932255, 30.755131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005280, 35.265362, 30.971842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125831, 0.528843, -0.839340,
		-0.985493, -0.163766, 0.044558,
		-0.113891, 0.832770, 0.541777,
		31.971111, 35.515194, 31.134375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434868, 35.395679, 30.466387>,  <32.050835, 34.932255, 30.755131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434868, 35.395679, 30.466387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600603, 35.657490, 30.719343>,  <31.700045, 35.814575, 30.871117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600603, 35.657490, 30.719343>,  <31.434868, 35.395679, 30.466387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600603, 35.657490, 30.719343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393415, 0.755374, -0.524056,
		-0.820700, -0.031655, 0.570482,
		0.414338, 0.654529, 0.632389,
		31.724905, 35.853848, 30.909060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901253, 35.888130, 30.490459>,  <31.434868, 35.395679, 30.466387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901253, 35.888130, 30.490459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.234949, 36.061478, 30.626833>,  <31.435167, 36.165485, 30.708656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.234949, 36.061478, 30.626833>,  <30.901253, 35.888130, 30.490459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234949, 36.061478, 30.626833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239641, 0.841811, -0.483659,
		-0.496603, 0.321787, 0.806126,
		0.834241, 0.433367, 0.340932,
		31.485222, 36.191486, 30.729113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730488, 36.668560, 30.651367>,  <30.901253, 35.888130, 30.490459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730488, 36.668560, 30.651367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122971, 36.643375, 30.578413>,  <31.358461, 36.628265, 30.534639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122971, 36.643375, 30.578413>,  <30.730488, 36.668560, 30.651367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122971, 36.643375, 30.578413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043699, 0.848181, -0.527901,
		0.187936, 0.525951, 0.829491,
		0.981209, -0.062964, -0.182388,
		31.417334, 36.624485, 30.523697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077785, 37.383499, 30.665138>,  <30.730488, 36.668560, 30.651367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077785, 37.383499, 30.665138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328867, 37.158302, 30.450094>,  <31.479517, 37.023186, 30.321068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328867, 37.158302, 30.450094>,  <31.077785, 37.383499, 30.665138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328867, 37.158302, 30.450094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161009, 0.769578, -0.617921,
		0.761618, 0.301313, 0.573715,
		0.627706, -0.562993, -0.537610,
		31.517179, 36.989403, 30.288811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635361, 37.722263, 30.540852>,  <31.077785, 37.383499, 30.665138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635361, 37.722263, 30.540852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684965, 37.438137, 30.263700>,  <31.714727, 37.267662, 30.097410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684965, 37.438137, 30.263700>,  <31.635361, 37.722263, 30.540852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684965, 37.438137, 30.263700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111714, 0.703821, -0.701539,
		0.985972, 0.009596, 0.166634,
		0.124013, -0.710313, -0.692876,
		31.722168, 37.225044, 30.055838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144276, 37.996998, 30.074036>,  <31.635361, 37.722263, 30.540852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144276, 37.996998, 30.074036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.961794, 37.714008, 29.858128>,  <31.852304, 37.544212, 29.728582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.961794, 37.714008, 29.858128>,  <32.144276, 37.996998, 30.074036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961794, 37.714008, 29.858128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087302, 0.568058, -0.818344,
		0.885581, -0.420456, -0.197388,
		-0.456206, -0.707479, -0.539769,
		31.824932, 37.501766, 29.696198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569183, 37.858036, 29.524992>,  <32.144276, 37.996998, 30.074036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569183, 37.858036, 29.524992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191345, 37.772018, 29.425802>,  <31.964642, 37.720406, 29.366289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191345, 37.772018, 29.425802>,  <32.569183, 37.858036, 29.524992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191345, 37.772018, 29.425802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139462, 0.420953, -0.896298,
		0.297129, -0.881223, -0.367641,
		-0.944598, -0.215044, -0.247974,
		31.907967, 37.707504, 29.351410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652927, 37.687523, 28.880365>,  <32.569183, 37.858036, 29.524992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652927, 37.687523, 28.880365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.261871, 37.766628, 28.908945>,  <32.027237, 37.814091, 28.926092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.261871, 37.766628, 28.908945>,  <32.652927, 37.687523, 28.880365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261871, 37.766628, 28.908945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040854, 0.511950, -0.858043,
		-0.206267, -0.835940, -0.508584,
		-0.977642, 0.197764, 0.071447,
		31.968578, 37.825958, 28.930380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255127, 37.322376, 28.438160>,  <32.652927, 37.687523, 28.880365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255127, 37.322376, 28.438160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024014, 37.642090, 28.504272>,  <31.885345, 37.833916, 28.543940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024014, 37.642090, 28.504272>,  <32.255127, 37.322376, 28.438160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024014, 37.642090, 28.504272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022702, 0.218163, -0.975648,
		-0.815875, -0.559961, -0.144196,
		-0.577783, 0.799280, 0.165281,
		31.850679, 37.881874, 28.553856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851004, 37.324757, 27.912718>,  <32.255127, 37.322376, 28.438160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851004, 37.324757, 27.912718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802269, 37.702560, 28.034739>,  <31.773027, 37.929241, 28.107952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802269, 37.702560, 28.034739>,  <31.851004, 37.324757, 27.912718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802269, 37.702560, 28.034739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166320, 0.283570, -0.944418,
		-0.978516, -0.165802, 0.122542,
		-0.121838, 0.944509, 0.305054,
		31.765718, 37.985912, 28.126255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318933, 37.600662, 27.368914>,  <31.851004, 37.324757, 27.912718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318933, 37.600662, 27.368914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443911, 37.927700, 27.562376>,  <31.518896, 38.123920, 27.678453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443911, 37.927700, 27.562376>,  <31.318933, 37.600662, 27.368914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443911, 37.927700, 27.562376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082183, 0.483973, -0.871215,
		-0.946375, 0.311952, 0.084022,
		0.312442, 0.817591, 0.483657,
		31.537643, 38.172977, 27.707474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816992, 38.209908, 27.190599>,  <31.318933, 37.600662, 27.368914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816992, 38.209908, 27.190599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179220, 38.333614, 27.306732>,  <31.396557, 38.407841, 27.376411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179220, 38.333614, 27.306732>,  <30.816992, 38.209908, 27.190599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179220, 38.333614, 27.306732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154639, 0.396646, -0.904853,
		-0.395002, 0.864306, 0.311367,
		0.905572, 0.309269, 0.290331,
		31.450891, 38.426395, 27.393831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824701, 38.904339, 26.985979>,  <30.816992, 38.209908, 27.190599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824701, 38.904339, 26.985979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208557, 38.800087, 27.028236>,  <31.438871, 38.737534, 27.053591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208557, 38.800087, 27.028236>,  <30.824701, 38.904339, 26.985979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208557, 38.800087, 27.028236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214272, 0.434324, -0.874900,
		0.182144, 0.862226, 0.472641,
		0.959641, -0.260632, 0.105642,
		31.496449, 38.721897, 27.059929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075212, 39.490589, 26.671333>,  <30.824701, 38.904339, 26.985979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075212, 39.490589, 26.671333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375988, 39.227829, 26.693493>,  <31.556454, 39.070171, 26.706789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375988, 39.227829, 26.693493>,  <31.075212, 39.490589, 26.671333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375988, 39.227829, 26.693493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392242, 0.378277, -0.838482,
		0.529847, 0.652215, 0.542105,
		0.751937, -0.656904, 0.055397,
		31.601568, 39.030758, 26.710112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599600, 39.859131, 26.276236>,  <31.075212, 39.490589, 26.671333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599600, 39.859131, 26.276236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.714359, 39.477711, 26.312973>,  <31.783215, 39.248859, 26.335014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.714359, 39.477711, 26.312973>,  <31.599600, 39.859131, 26.276236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714359, 39.477711, 26.312973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333326, 0.009487, -0.942764,
		0.898099, 0.301092, 0.320564,
		0.286900, -0.953548, 0.091841,
		31.800430, 39.191647, 26.340525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367687, 39.831211, 26.086023>,  <31.599600, 39.859131, 26.276236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367687, 39.831211, 26.086023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232193, 39.458839, 26.031431>,  <32.150898, 39.235416, 25.998676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232193, 39.458839, 26.031431>,  <32.367687, 39.831211, 26.086023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232193, 39.458839, 26.031431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324976, 0.020367, -0.945503,
		0.882977, -0.364628, 0.295631,
		-0.338736, -0.930930, -0.136479,
		32.130573, 39.179562, 25.990488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838707, 39.503254, 25.720455>,  <32.367687, 39.831211, 26.086023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838707, 39.503254, 25.720455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495117, 39.316147, 25.637169>,  <32.288963, 39.203884, 25.587198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495117, 39.316147, 25.637169>,  <32.838707, 39.503254, 25.720455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495117, 39.316147, 25.637169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254030, -0.036266, -0.966516,
		0.444551, -0.883109, 0.149979,
		-0.858978, -0.467765, -0.208214,
		32.237423, 39.175816, 25.574705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051304, 38.814583, 25.274111>,  <32.838707, 39.503254, 25.720455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051304, 38.814583, 25.274111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667992, 38.915955, 25.221222>,  <32.438004, 38.976776, 25.189487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667992, 38.915955, 25.221222>,  <33.051304, 38.814583, 25.274111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667992, 38.915955, 25.221222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075432, -0.221973, -0.972130,
		-0.275716, -0.941542, 0.193595,
		-0.958275, 0.253429, -0.132224,
		32.380508, 38.991982, 25.181555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638905, 38.284271, 25.103420>,  <33.051304, 38.814583, 25.274111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638905, 38.284271, 25.103420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985859, 38.477303, 25.054819>,  <34.194031, 38.593121, 25.025660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985859, 38.477303, 25.054819>,  <33.638905, 38.284271, 25.103420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985859, 38.477303, 25.054819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274777, -0.260879, 0.925440,
		0.414902, -0.836097, -0.358884,
		0.867383, 0.482580, -0.121501,
		34.246075, 38.622078, 25.018368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169937, 37.820427, 25.237936>,  <33.638905, 38.284271, 25.103420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169937, 37.820427, 25.237936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343010, 38.174717, 25.305191>,  <34.446854, 38.387291, 25.345545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343010, 38.174717, 25.305191>,  <34.169937, 37.820427, 25.237936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343010, 38.174717, 25.305191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379256, -0.348020, 0.857349,
		0.817895, -0.307191, -0.486500,
		0.432682, 0.885729, 0.168140,
		34.472816, 38.440437, 25.355633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771626, 37.646412, 25.371857>,  <34.169937, 37.820427, 25.237936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771626, 37.646412, 25.371857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771229, 38.015987, 25.524872>,  <34.770992, 38.237732, 25.616682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771229, 38.015987, 25.524872>,  <34.771626, 37.646412, 25.371857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771229, 38.015987, 25.524872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454110, -0.340406, 0.823351,
		0.890945, 0.174532, -0.419232,
		-0.000992, 0.923939, 0.382540,
		34.770931, 38.293167, 25.639633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485497, 37.785194, 25.733286>,  <34.771626, 37.646412, 25.371857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485497, 37.785194, 25.733286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238995, 38.051964, 25.900827>,  <35.091095, 38.212025, 26.001352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238995, 38.051964, 25.900827>,  <35.485497, 37.785194, 25.733286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238995, 38.051964, 25.900827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324931, -0.269153, 0.906629,
		0.717391, 0.694814, -0.050838,
		-0.616256, 0.666926, 0.418854,
		35.054119, 38.252041, 26.026484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845520, 38.192322, 26.127558>,  <35.485497, 37.785194, 25.733286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845520, 38.192322, 26.127558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478390, 38.252724, 26.274416>,  <35.258114, 38.288967, 26.362532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478390, 38.252724, 26.274416>,  <35.845520, 38.192322, 26.127558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478390, 38.252724, 26.274416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338035, -0.187661, 0.922234,
		0.208165, 0.970556, 0.121194,
		-0.917823, 0.151009, 0.367147,
		35.203041, 38.298027, 26.384560>
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
