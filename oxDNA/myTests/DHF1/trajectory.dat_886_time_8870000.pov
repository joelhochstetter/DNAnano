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
	<2.698497, 1.962041, 2.364216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.671959, 2.312500, 2.173233>,  <2.656036, 2.522775, 2.058643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.671959, 2.312500, 2.173233>,  <2.698497, 1.962041, 2.364216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.671959, 2.312500, 2.173233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828771, -0.218080, -0.515345,
		-0.555642, -0.429894, -0.711655,
		-0.066346, 0.876146, -0.477458,
		2.652055, 2.575344, 2.029995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.702039, 2.002187, 1.537089>,  <2.698497, 1.962041, 2.364216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.702039, 2.002187, 1.537089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.874771, 2.321869, 1.704322>,  <2.978410, 2.513678, 1.804661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.874771, 2.321869, 1.704322>,  <2.702039, 2.002187, 1.537089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.874771, 2.321869, 1.704322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828316, -0.167953, -0.534495,
		-0.356953, 0.577115, -0.734522,
		0.431830, 0.799206, 0.418082,
		3.004320, 2.561631, 1.829746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.250443, 2.387918, 1.046366>,  <2.702039, 2.002187, 1.537089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.250443, 2.387918, 1.046366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.312904, 2.420322, 1.440128>,  <3.350381, 2.439765, 1.676385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.312904, 2.420322, 1.440128>,  <3.250443, 2.387918, 1.046366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.312904, 2.420322, 1.440128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948475, -0.290482, -0.126549,
		0.275700, 0.953445, -0.122196,
		0.156153, 0.081010, 0.984405,
		3.359750, 2.444625, 1.735450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.803657, 2.970105, 1.321481>,  <3.250443, 2.387918, 1.046366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.803657, 2.970105, 1.321481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780441, 2.644588, 1.552782>,  <3.766512, 2.449279, 1.691563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780441, 2.644588, 1.552782>,  <3.803657, 2.970105, 1.321481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.780441, 2.644588, 1.552782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974133, -0.172881, -0.145525,
		0.218395, 0.554849, 0.802774,
		-0.058040, -0.813790, 0.578253,
		3.763029, 2.400451, 1.726258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.305317, 3.027410, 1.791636>,  <3.803657, 2.970105, 1.321481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.305317, 3.027410, 1.791636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.205994, 2.639950, 1.788531>,  <4.146399, 2.407474, 1.786668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.205994, 2.639950, 1.788531>,  <4.305317, 3.027410, 1.791636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.205994, 2.639950, 1.788531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966330, -0.247141, -0.071608,
		0.067444, -0.025282, 0.997403,
		-0.248309, -0.968650, -0.007762,
		4.131501, 2.349355, 1.786202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.560217, 2.700730, 2.451009>,  <4.305317, 3.027410, 1.791636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.560217, 2.700730, 2.451009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.530403, 2.405182, 2.183123>,  <4.512515, 2.227853, 2.022392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.530403, 2.405182, 2.183123>,  <4.560217, 2.700730, 2.451009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.530403, 2.405182, 2.183123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910237, -0.324723, 0.256950,
		-0.407324, -0.590446, 0.696750,
		-0.074536, -0.738870, -0.669713,
		4.508042, 2.183521, 1.982209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.804913, 2.013536, 2.769887>,  <4.560217, 2.700730, 2.451009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.804913, 2.013536, 2.769887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.834106, 1.967461, 2.373624>,  <4.851623, 1.939816, 2.135866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.834106, 1.967461, 2.373624>,  <4.804913, 2.013536, 2.769887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.834106, 1.967461, 2.373624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883272, -0.453811, 0.117839,
		-0.463145, -0.883622, 0.068620,
		0.072985, -0.115187, -0.990659,
		4.856002, 1.932904, 2.076426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.126757, 1.334497, 2.652374>,  <4.804913, 2.013536, 2.769887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.126757, 1.334497, 2.652374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.173553, 1.528065, 2.305471>,  <5.201632, 1.644206, 2.097329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.173553, 1.528065, 2.305471>,  <5.126757, 1.334497, 2.652374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.173553, 1.528065, 2.305471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937543, -0.341877, -0.064290,
		-0.327606, -0.805569, -0.493693,
		0.116992, 0.483920, -0.867257,
		5.208651, 1.673241, 2.045294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.161702, 1.816983, 2.584040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.295471, 1.739594, 2.215100>,  <1.375733, 1.693160, 1.993736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.295471, 1.739594, 2.215100>,  <1.161702, 1.816983, 2.584040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.295471, 1.739594, 2.215100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906005, 0.203438, -0.371171,
		0.259453, 0.959782, -0.107252,
		0.334424, -0.193473, -0.922350,
		1.395798, 1.681552, 1.938395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.893411, 2.362197, 2.129323>,  <1.161702, 1.816983, 2.584040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.893411, 2.362197, 2.129323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.961052, 2.040840, 1.900949>,  <1.001637, 1.848026, 1.763925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.961052, 2.040840, 1.900949>,  <0.893411, 2.362197, 2.129323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.961052, 2.040840, 1.900949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928835, 0.063846, -0.364950,
		0.329650, 0.592017, -0.735422,
		0.169103, -0.803392, -0.570934,
		1.011783, 1.799822, 1.729669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.911221, 2.523906, 1.376344>,  <0.893411, 2.362197, 2.129323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.911221, 2.523906, 1.376344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.790359, 2.158257, 1.484478>,  <0.717843, 1.938867, 1.549358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.790359, 2.158257, 1.484478>,  <0.911221, 2.523906, 1.376344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.790359, 2.158257, 1.484478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926148, 0.214356, -0.310324,
		0.225727, -0.344133, -0.911383,
		-0.302153, -0.914125, 0.270332,
		0.699713, 1.884019, 1.565578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.363611, 2.218613, 0.900511>,  <0.911221, 2.523906, 1.376344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.363611, 2.218613, 0.900511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.301430, 2.060028, 1.262428>,  <0.264121, 1.964877, 1.479579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.301430, 2.060028, 1.262428>,  <0.363611, 2.218613, 0.900511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.301430, 2.060028, 1.262428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973298, 0.218072, -0.071669,
		-0.168897, -0.891775, -0.419776,
		-0.155454, -0.396462, 0.904794,
		0.254794, 1.941090, 1.533866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.198897, 1.686473, 0.802672>,  <0.363611, 2.218613, 0.900511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.198897, 1.686473, 0.802672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.180710, 1.785332, 1.189837>,  <-0.169798, 1.844647, 1.422135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.180710, 1.785332, 1.189837>,  <-0.198897, 1.686473, 0.802672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.180710, 1.785332, 1.189837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998965, 0.012283, 0.043789,
		-0.001067, -0.968902, 0.247444,
		0.045467, 0.247141, 0.967912,
		-0.167070, 1.859476, 1.480210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.767132, 1.328079, 1.039879>,  <-0.198897, 1.686473, 0.802672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.767132, 1.328079, 1.039879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.673538, 1.568916, 1.345228>,  <-0.617382, 1.713419, 1.528437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.673538, 1.568916, 1.345228>,  <-0.767132, 1.328079, 1.039879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.673538, 1.568916, 1.345228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965336, 0.050467, 0.256084,
		0.115662, -0.796829, 0.593031,
		0.233984, 0.602094, 0.763371,
		-0.603343, 1.749544, 1.574239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.054708, 1.072937, 1.709662>,  <-0.767132, 1.328079, 1.039879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.054708, 1.072937, 1.709662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.994698, 1.467392, 1.738016>,  <-0.958691, 1.704065, 1.755028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.994698, 1.467392, 1.738016>,  <-1.054708, 1.072937, 1.709662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.994698, 1.467392, 1.738016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953258, 0.125259, 0.274970,
		0.262279, -0.108824, 0.958836,
		0.150026, 0.986138, 0.070885,
		-0.949690, 1.763233, 1.759282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.394124, 1.297392, 2.425639>,  <-1.054708, 1.072937, 1.709662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.394124, 1.297392, 2.425639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.351639, 1.604210, 2.172542>,  <-1.326148, 1.788300, 2.020683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.351639, 1.604210, 2.172542>,  <-1.394124, 1.297392, 2.425639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.351639, 1.604210, 2.172542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884684, 0.363395, 0.292023,
		0.453930, 0.528761, 0.717188,
		0.106212, 0.767044, -0.632742,
		-1.319775, 1.834323, 1.982719>
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
