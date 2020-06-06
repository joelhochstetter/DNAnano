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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.507350, 15.204082, 14.956832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.156528, 15.114341, 14.786920>,  <3.946035, 15.060496, 14.684972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.156528, 15.114341, 14.786920>,  <4.507350, 15.204082, 14.956832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.156528, 15.114341, 14.786920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237673, 0.565789, -0.789554,
		0.417472, -0.793442, -0.442907,
		-0.877057, -0.224350, -0.424781,
		3.893411, 15.047035, 14.659485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.142426, 14.636880, 15.018040>,  <4.507350, 15.204082, 14.956832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.142426, 14.636880, 15.018040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.538804, 14.662297, 15.065356>,  <5.776630, 14.677547, 15.093746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.538804, 14.662297, 15.065356>,  <5.142426, 14.636880, 15.018040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.538804, 14.662297, 15.065356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130978, -0.263316, -0.955777,
		-0.029585, 0.962615, -0.269254,
		0.990944, 0.063543, 0.118291,
		5.836087, 14.681360, 15.100843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.533225, 14.954004, 14.454363>,  <5.142426, 14.636880, 15.018040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.533225, 14.954004, 14.454363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.770308, 14.679146, 14.622424>,  <5.912557, 14.514231, 14.723261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.770308, 14.679146, 14.622424>,  <5.533225, 14.954004, 14.454363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.770308, 14.679146, 14.622424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110320, -0.447480, -0.887464,
		0.797827, 0.572357, -0.189419,
		0.592707, -0.687146, 0.420153,
		5.948120, 14.473002, 14.748470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.186485, 14.875424, 13.969361>,  <5.533225, 14.954004, 14.454363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.186485, 14.875424, 13.969361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.164604, 14.528744, 14.167688>,  <6.151475, 14.320735, 14.286685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.164604, 14.528744, 14.167688>,  <6.186485, 14.875424, 13.969361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.164604, 14.528744, 14.167688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223299, -0.494603, -0.839943,
		0.973214, 0.064769, 0.220590,
		-0.054702, -0.866702, 0.495818,
		6.148193, 14.268733, 14.316434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.467227, 14.475794, 13.430045>,  <6.186485, 14.875424, 13.969361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.467227, 14.475794, 13.430045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.339661, 14.246557, 13.732001>,  <6.263121, 14.109015, 13.913176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.339661, 14.246557, 13.732001>,  <6.467227, 14.475794, 13.430045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.339661, 14.246557, 13.732001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061367, -0.807295, -0.586948,
		0.945795, -0.140860, 0.292627,
		-0.318914, -0.573090, 0.754891,
		6.243987, 14.074630, 13.958468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.002495, 13.974320, 13.479234>,  <6.467227, 14.475794, 13.430045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.002495, 13.974320, 13.479234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672599, 13.820761, 13.645330>,  <6.474662, 13.728625, 13.744988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672599, 13.820761, 13.645330>,  <7.002495, 13.974320, 13.479234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.672599, 13.820761, 13.645330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181353, -0.875040, -0.448795,
		0.535645, -0.294834, 0.791302,
		-0.824740, -0.383900, 0.415241,
		6.425177, 13.705591, 13.769903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.121599, 13.206960, 13.735525>,  <7.002495, 13.974320, 13.479234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.121599, 13.206960, 13.735525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.725974, 13.253135, 13.698805>,  <6.488598, 13.280840, 13.676772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.725974, 13.253135, 13.698805>,  <7.121599, 13.206960, 13.735525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.725974, 13.253135, 13.698805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033992, -0.784083, -0.619724,
		-0.143519, -0.609826, 0.779432,
		-0.989064, 0.115436, -0.091802,
		6.429255, 13.287766, 13.671265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.899243, 12.522245, 13.732212>,  <7.121599, 13.206960, 13.735525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.899243, 12.522245, 13.732212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.583058, 12.692417, 13.555950>,  <6.393347, 12.794520, 13.450192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.583058, 12.692417, 13.555950>,  <6.899243, 12.522245, 13.732212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.583058, 12.692417, 13.555950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088300, -0.791061, -0.605331,
		-0.606110, -0.439583, 0.662871,
		-0.790464, 0.425429, -0.440655,
		6.345919, 12.820046, 13.423754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.379063, 11.996779, 13.521663>,  <6.899243, 12.522245, 13.732212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.379063, 11.996779, 13.521663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.289272, 12.321290, 13.305721>,  <6.235397, 12.515996, 13.176157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.289272, 12.321290, 13.305721>,  <6.379063, 11.996779, 13.521663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.289272, 12.321290, 13.305721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163944, -0.577536, -0.799734,
		-0.960589, -0.091017, 0.262648,
		-0.224478, 0.811275, -0.539853,
		6.221928, 12.564672, 13.143765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.764087, 11.734044, 13.093138>,  <6.379063, 11.996779, 13.521663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.764087, 11.734044, 13.093138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.902143, 12.059044, 12.905212>,  <5.984976, 12.254044, 12.792458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.902143, 12.059044, 12.905212>,  <5.764087, 11.734044, 13.093138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.902143, 12.059044, 12.905212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148508, -0.446989, -0.882125,
		-0.926728, 0.374227, -0.033611,
		0.345139, 0.812499, -0.469813,
		6.005684, 12.302794, 12.764269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.320392, 11.866247, 12.525281>,  <5.764087, 11.734044, 13.093138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.320392, 11.866247, 12.525281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.685910, 11.997587, 12.429643>,  <5.905220, 12.076391, 12.372259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.685910, 11.997587, 12.429643>,  <5.320392, 11.866247, 12.525281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.685910, 11.997587, 12.429643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094456, -0.400727, -0.911316,
		-0.395044, 0.855339, -0.335167,
		0.913794, 0.328351, -0.239097,
		5.960048, 12.096092, 12.357914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.325956, 11.802723, 11.791327>,  <5.320392, 11.866247, 12.525281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.325956, 11.802723, 11.791327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.715793, 11.853277, 11.865298>,  <5.949695, 11.883610, 11.909680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.715793, 11.853277, 11.865298>,  <5.325956, 11.802723, 11.791327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.715793, 11.853277, 11.865298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223891, -0.525321, -0.820920,
		-0.006606, 0.841466, -0.540270,
		0.974592, 0.126385, 0.184926,
		6.008170, 11.891192, 11.920776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.633560, 11.909755, 11.185668>,  <5.325956, 11.802723, 11.791327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.633560, 11.909755, 11.185668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.947816, 11.813373, 11.413602>,  <6.136369, 11.755544, 11.550363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.947816, 11.813373, 11.413602>,  <5.633560, 11.909755, 11.185668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.947816, 11.813373, 11.413602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386514, -0.528029, -0.756169,
		0.483092, 0.814326, -0.321708,
		0.785639, -0.240954, 0.569835,
		6.183507, 11.741086, 11.584553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.359952, 11.974661, 10.788980>,  <5.633560, 11.909755, 11.185668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.359952, 11.974661, 10.788980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.404358, 11.735666, 11.106644>,  <6.431002, 11.592270, 11.297241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.404358, 11.735666, 11.106644>,  <6.359952, 11.974661, 10.788980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.404358, 11.735666, 11.106644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476179, -0.669418, -0.570205,
		0.872313, 0.441463, 0.210194,
		0.111016, -0.597487, 0.794157,
		6.437663, 11.556420, 11.344891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.980165, 11.555943, 10.559540>,  <6.359952, 11.974661, 10.788980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.980165, 11.555943, 10.559540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.807007, 11.353237, 10.857745>,  <6.703113, 11.231613, 11.036669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.807007, 11.353237, 10.857745>,  <6.980165, 11.555943, 10.559540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.807007, 11.353237, 10.857745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309922, -0.860275, -0.404814,
		0.846493, 0.055809, 0.529467,
		-0.432895, -0.506766, 0.745513,
		6.677139, 11.201207, 11.081399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.563816, 11.038975, 10.754912>,  <6.980165, 11.555943, 10.559540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.563816, 11.038975, 10.754912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.193958, 10.919531, 10.849455>,  <6.972044, 10.847865, 10.906180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.193958, 10.919531, 10.849455>,  <7.563816, 11.038975, 10.754912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.193958, 10.919531, 10.849455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241186, -0.939469, -0.243369,
		0.294722, -0.168023, 0.940695,
		-0.924645, -0.298609, 0.236358,
		6.916565, 10.829948, 10.920362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.699153, 10.325498, 11.056632>,  <7.563816, 11.038975, 10.754912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.699153, 10.325498, 11.056632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.303943, 10.321873, 10.995019>,  <7.066817, 10.319698, 10.958051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.303943, 10.321873, 10.995019>,  <7.699153, 10.325498, 11.056632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.303943, 10.321873, 10.995019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015950, -0.998924, -0.043543,
		-0.153473, -0.045478, 0.987106,
		-0.988024, -0.009061, -0.154033,
		7.007536, 10.319155, 10.948809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.455158, 9.795777, 11.478043>,  <7.699153, 10.325498, 11.056632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.455158, 9.795777, 11.478043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.173124, 9.850283, 11.199679>,  <7.003903, 9.882986, 11.032661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.173124, 9.850283, 11.199679>,  <7.455158, 9.795777, 11.478043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.173124, 9.850283, 11.199679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144976, -0.988335, -0.046635,
		-0.694146, 0.068009, 0.716615,
		-0.705084, 0.136263, -0.695908,
		6.961598, 9.891162, 10.990907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.773675, 9.508984, 11.779189>,  <7.455158, 9.795777, 11.478043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.773675, 9.508984, 11.779189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.758722, 9.497737, 11.379627>,  <6.749750, 9.490989, 11.139890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.758722, 9.497737, 11.379627>,  <6.773675, 9.508984, 11.779189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.758722, 9.497737, 11.379627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207457, -0.977608, 0.035282,
		-0.977530, 0.208549, 0.030713,
		-0.037383, -0.028118, -0.998905,
		6.747508, 9.489302, 11.079956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.211936, 9.139962, 11.650087>,  <6.773675, 9.508984, 11.779189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.211936, 9.139962, 11.650087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.406770, 9.114262, 11.301692>,  <6.523670, 9.098842, 11.092655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.406770, 9.114262, 11.301692>,  <6.211936, 9.139962, 11.650087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.406770, 9.114262, 11.301692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090013, -0.995672, 0.023110,
		-0.868704, 0.067143, -0.490760,
		0.487084, -0.064251, -0.870988,
		6.552896, 9.094986, 11.040396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.945261, 8.568623, 11.476415>,  <6.211936, 9.139962, 11.650087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.945261, 8.568623, 11.476415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.242355, 8.607480, 11.211414>,  <6.420612, 8.630795, 11.052414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.242355, 8.607480, 11.211414>,  <5.945261, 8.568623, 11.476415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.242355, 8.607480, 11.211414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040532, -0.994128, -0.100328,
		-0.668358, 0.047664, -0.742311,
		0.742735, 0.097143, -0.662502,
		6.465176, 8.636622, 11.012664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.693963, 8.222575, 10.931048>,  <5.945261, 8.568623, 11.476415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.693963, 8.222575, 10.931048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.089899, 8.237796, 10.876247>,  <6.327460, 8.246928, 10.843367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.089899, 8.237796, 10.876247>,  <5.693963, 8.222575, 10.931048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.089899, 8.237796, 10.876247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013056, -0.983780, -0.178903,
		-0.141588, 0.175296, -0.974281,
		0.989839, 0.038051, -0.137002,
		6.386850, 8.249211, 10.835147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.804328, 7.949055, 10.355229>,  <5.693963, 8.222575, 10.931048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.804328, 7.949055, 10.355229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.154933, 7.930052, 10.546842>,  <6.365296, 7.918651, 10.661809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.154933, 7.930052, 10.546842>,  <5.804328, 7.949055, 10.355229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.154933, 7.930052, 10.546842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046080, -0.982268, -0.181730,
		0.479171, 0.181362, -0.858780,
		0.876511, -0.047507, 0.479032,
		6.417886, 7.915800, 10.690551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.354117, 7.494366, 9.926229>,  <5.804328, 7.949055, 10.355229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.354117, 7.494366, 9.926229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.474635, 7.494674, 10.307641>,  <6.546946, 7.494859, 10.536489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.474635, 7.494674, 10.307641>,  <6.354117, 7.494366, 9.926229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.474635, 7.494674, 10.307641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289893, -0.952739, -0.090830,
		0.908396, 0.303788, -0.287279,
		0.301295, 0.000771, 0.953531,
		6.565024, 7.494905, 10.593700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.974480, 7.134425, 9.900909>,  <6.354117, 7.494366, 9.926229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.974480, 7.134425, 9.900909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.839895, 7.141264, 10.277526>,  <6.759144, 7.145368, 10.503496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.839895, 7.141264, 10.277526>,  <6.974480, 7.134425, 9.900909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.839895, 7.141264, 10.277526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127964, -0.989731, 0.063701,
		0.932962, 0.141917, 0.330820,
		-0.336463, 0.017098, 0.941542,
		6.738956, 7.146393, 10.559988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.506003, 6.720919, 10.388673>,  <6.974480, 7.134425, 9.900909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.506003, 6.720919, 10.388673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.137089, 6.740739, 10.542001>,  <6.915740, 6.752632, 10.633998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.137089, 6.740739, 10.542001>,  <7.506003, 6.720919, 10.388673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.137089, 6.740739, 10.542001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009994, -0.988360, 0.151807,
		0.386380, 0.143840, 0.911055,
		-0.922286, 0.049550, 0.383320,
		6.860403, 6.755604, 10.656997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.518806, 6.390931, 11.009472>,  <7.506003, 6.720919, 10.388673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.518806, 6.390931, 11.009472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.136884, 6.386768, 10.890653>,  <6.907731, 6.384271, 10.819361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.136884, 6.386768, 10.890653>,  <7.518806, 6.390931, 11.009472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.136884, 6.386768, 10.890653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062365, -0.970126, 0.234447,
		-0.290614, 0.242377, 0.925633,
		-0.954806, -0.010406, -0.297048,
		6.850442, 6.383646, 10.801538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.096796, 6.139623, 11.501172>,  <7.518806, 6.390931, 11.009472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.096796, 6.139623, 11.501172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.924799, 6.075809, 11.145721>,  <6.821601, 6.037521, 10.932451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.924799, 6.075809, 11.145721>,  <7.096796, 6.139623, 11.501172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.924799, 6.075809, 11.145721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134073, -0.962067, 0.237594,
		-0.892822, 0.221304, 0.392293,
		-0.429993, -0.159533, -0.888626,
		6.795801, 6.027949, 10.879133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.362109, 5.870039, 11.610922>,  <7.096796, 6.139623, 11.501172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.362109, 5.870039, 11.610922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.538381, 5.755327, 11.270673>,  <6.644144, 5.686499, 11.066524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.538381, 5.755327, 11.270673>,  <6.362109, 5.870039, 11.610922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.538381, 5.755327, 11.270673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213059, -0.953932, 0.211233,
		-0.872014, 0.088147, -0.481479,
		0.440679, -0.286782, -0.850622,
		6.670584, 5.669292, 11.015486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.455287, 5.166325, 11.517086>,  <6.362109, 5.870039, 11.610922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.455287, 5.166325, 11.517086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.624594, 5.427217, 11.768622>,  <6.726178, 5.583753, 11.919544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.624594, 5.427217, 11.768622>,  <6.455287, 5.166325, 11.517086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.624594, 5.427217, 11.768622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529418, -0.385197, 0.755870,
		0.735230, -0.652854, 0.182262,
		0.423266, 0.652231, 0.628840,
		6.751574, 5.622887, 11.957274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.729501, 4.564517, 11.970360>,  <6.455287, 5.166325, 11.517086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.729501, 4.564517, 11.970360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.509717, 4.583070, 11.636666>,  <6.377847, 4.594202, 11.436450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.509717, 4.583070, 11.636666>,  <6.729501, 4.564517, 11.970360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.509717, 4.583070, 11.636666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539460, -0.742756, -0.396606,
		-0.638026, -0.667954, 0.383093,
		-0.549459, 0.046382, -0.834233,
		6.344880, 4.596985, 11.386396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.325679, 4.646583, 12.312201>,  <6.729501, 4.564517, 11.970360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.325679, 4.646583, 12.312201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.482523, 4.680876, 12.678568>,  <7.576629, 4.701452, 12.898388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.482523, 4.680876, 12.678568>,  <7.325679, 4.646583, 12.312201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.482523, 4.680876, 12.678568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675445, 0.702763, 0.223380,
		-0.624520, -0.706239, 0.333468,
		0.392109, 0.085734, 0.915915,
		7.600156, 4.706596, 12.953342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.780335, 4.606023, 12.837649>,  <7.325679, 4.646583, 12.312201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.780335, 4.606023, 12.837649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.073566, 4.834903, 12.984719>,  <7.249505, 4.972231, 13.072961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.073566, 4.834903, 12.984719>,  <6.780335, 4.606023, 12.837649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.073566, 4.834903, 12.984719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677451, 0.662364, 0.319898,
		-0.060488, -0.483591, 0.873201,
		0.733077, 0.572201, 0.367674,
		7.293489, 5.006564, 13.095021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.593934, 4.754895, 13.560121>,  <6.780335, 4.606023, 12.837649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.593934, 4.754895, 13.560121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.829099, 5.054370, 13.437597>,  <6.970198, 5.234056, 13.364083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.829099, 5.054370, 13.437597>,  <6.593934, 4.754895, 13.560121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.829099, 5.054370, 13.437597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667037, 0.662908, 0.340023,
		0.457626, 0.004416, 0.889134,
		0.587913, 0.748688, -0.306309,
		7.005473, 5.278977, 13.345705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.502460, 5.102217, 14.103664>,  <6.593934, 4.754895, 13.560121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.502460, 5.102217, 14.103664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.593015, 5.270110, 13.752080>,  <6.647348, 5.370846, 13.541129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.593015, 5.270110, 13.752080>,  <6.502460, 5.102217, 14.103664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.593015, 5.270110, 13.752080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437684, 0.849991, 0.293168,
		0.870161, 0.318337, 0.376140,
		0.226390, 0.419734, -0.878960,
		6.660932, 5.396030, 13.488392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.869328, 5.585714, 14.200114>,  <6.502460, 5.102217, 14.103664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.869328, 5.585714, 14.200114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.662790, 5.669044, 13.867852>,  <6.538867, 5.719042, 13.668495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.662790, 5.669044, 13.867852>,  <6.869328, 5.585714, 14.200114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.662790, 5.669044, 13.867852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312083, 0.857487, 0.409048,
		0.797491, 0.470443, -0.377745,
		-0.516346, 0.208324, -0.830655,
		6.507886, 5.731541, 13.618655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.957201, 6.323344, 14.092308>,  <6.869328, 5.585714, 14.200114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.957201, 6.323344, 14.092308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.626025, 6.220074, 13.893165>,  <6.427320, 6.158112, 13.773679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.626025, 6.220074, 13.893165>,  <6.957201, 6.323344, 14.092308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.626025, 6.220074, 13.893165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490488, 0.763773, 0.419611,
		0.271918, 0.591606, -0.758988,
		-0.827939, -0.258175, -0.497859,
		6.377644, 6.142622, 13.743807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.823865, 6.930700, 13.821691>,  <6.957201, 6.323344, 14.092308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.823865, 6.930700, 13.821691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.500067, 6.697014, 13.845047>,  <6.305788, 6.556803, 13.859061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.500067, 6.697014, 13.845047>,  <6.823865, 6.930700, 13.821691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.500067, 6.697014, 13.845047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545903, 0.785539, 0.291407,
		-0.216113, 0.204017, -0.954815,
		-0.809497, -0.584213, 0.058392,
		6.257218, 6.521750, 13.862564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.327906, 7.495459, 13.817405>,  <6.823865, 6.930700, 13.821691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.327906, 7.495459, 13.817405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.126846, 7.162901, 13.912169>,  <6.006211, 6.963366, 13.969027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.126846, 7.162901, 13.912169>,  <6.327906, 7.495459, 13.817405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.126846, 7.162901, 13.912169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722973, 0.554523, 0.412085,
		-0.473978, 0.035855, -0.879807,
		-0.502648, -0.831396, 0.236910,
		5.976052, 6.913482, 13.983241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.690937, 7.744118, 13.736947>,  <6.327906, 7.495459, 13.817405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.690937, 7.744118, 13.736947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.620720, 7.416184, 13.954959>,  <5.578589, 7.219424, 14.085766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.620720, 7.416184, 13.954959>,  <5.690937, 7.744118, 13.736947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.620720, 7.416184, 13.954959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663603, 0.507485, 0.549626,
		-0.727197, -0.265200, -0.633130,
		-0.175543, -0.819834, 0.545029,
		5.568057, 7.170234, 14.118467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.038487, 7.597273, 13.681685>,  <5.690937, 7.744118, 13.736947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.038487, 7.597273, 13.681685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148259, 7.439225, 14.032357>,  <5.214122, 7.344396, 14.242761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148259, 7.439225, 14.032357>,  <5.038487, 7.597273, 13.681685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.148259, 7.439225, 14.032357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522664, 0.703965, 0.480890,
		-0.807162, -0.590179, -0.013327,
		0.274430, -0.395122, 0.876680,
		5.230588, 7.320688, 14.295362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.448079, 7.498225, 14.064405>,  <5.038487, 7.597273, 13.681685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.448079, 7.498225, 14.064405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.736669, 7.513457, 14.340962>,  <4.909823, 7.522597, 14.506897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.736669, 7.513457, 14.340962>,  <4.448079, 7.498225, 14.064405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.736669, 7.513457, 14.340962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499153, 0.720634, 0.481178,
		-0.479917, -0.692269, 0.538928,
		0.721475, 0.038081, 0.691393,
		4.953112, 7.524882, 14.548380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.083189, 7.606649, 14.707733>,  <4.448079, 7.498225, 14.064405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.083189, 7.606649, 14.707733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.462975, 7.710660, 14.778046>,  <4.690847, 7.773067, 14.820233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.462975, 7.710660, 14.778046>,  <4.083189, 7.606649, 14.707733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.462975, 7.710660, 14.778046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313121, 0.823349, 0.473340,
		-0.021648, -0.504462, 0.863163,
		0.949466, 0.260028, 0.175782,
		4.747815, 7.788669, 14.830780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.179164, 7.853609, 15.451892>,  <4.083189, 7.606649, 14.707733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.179164, 7.853609, 15.451892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.506721, 7.993613, 15.269941>,  <4.703254, 8.077615, 15.160770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.506721, 7.993613, 15.269941>,  <4.179164, 7.853609, 15.451892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.506721, 7.993613, 15.269941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256950, 0.932244, 0.254750,
		0.513221, -0.091731, 0.853340,
		0.818890, 0.350009, -0.454877,
		4.752388, 8.098616, 15.133478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.510996, 8.340943, 15.900340>,  <4.179164, 7.853609, 15.451892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.510996, 8.340943, 15.900340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.665411, 8.427505, 15.541643>,  <4.758059, 8.479443, 15.326426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.665411, 8.427505, 15.541643>,  <4.510996, 8.340943, 15.900340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.665411, 8.427505, 15.541643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157594, 0.973275, 0.167031,
		0.908923, 0.076841, 0.409822,
		0.386035, 0.216404, -0.896742,
		4.781221, 8.492427, 15.272620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.041357, 8.858519, 16.012182>,  <4.510996, 8.340943, 15.900340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.041357, 8.858519, 16.012182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.960051, 8.883586, 15.621335>,  <4.911267, 8.898626, 15.386827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.960051, 8.883586, 15.621335>,  <5.041357, 8.858519, 16.012182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.960051, 8.883586, 15.621335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128461, 0.987616, 0.090065,
		0.970660, 0.143828, -0.192698,
		-0.203266, 0.062669, -0.977116,
		4.899071, 8.902387, 15.328200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.535374, 9.351418, 15.763600>,  <5.041357, 8.858519, 16.012182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.535374, 9.351418, 15.763600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.218405, 9.349490, 15.519619>,  <5.028224, 9.348333, 15.373230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.218405, 9.349490, 15.519619>,  <5.535374, 9.351418, 15.763600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.218405, 9.349490, 15.519619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042237, 0.997135, -0.062754,
		0.608508, -0.075490, -0.789949,
		-0.792423, -0.004821, -0.609953,
		4.980679, 9.348043, 15.336633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.680831, 9.749000, 15.226632>,  <5.535374, 9.351418, 15.763600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.680831, 9.749000, 15.226632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.281309, 9.733982, 15.239149>,  <5.041596, 9.724972, 15.246659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.281309, 9.733982, 15.239149>,  <5.680831, 9.749000, 15.226632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.281309, 9.733982, 15.239149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038879, 0.998310, -0.043185,
		-0.029619, -0.044350, -0.998577,
		-0.998805, -0.037544, 0.031294,
		4.981668, 9.722719, 15.248537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.540273, 10.260384, 14.816315>,  <5.680831, 9.749000, 15.226632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.540273, 10.260384, 14.816315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.179491, 10.196321, 14.976727>,  <4.963022, 10.157883, 15.072975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.179491, 10.196321, 14.976727>,  <5.540273, 10.260384, 14.816315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.179491, 10.196321, 14.976727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168297, 0.985620, 0.015105,
		-0.397684, -0.053868, -0.915940,
		-0.901955, -0.160157, 0.401032,
		4.908905, 10.148273, 15.097037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.036678, 10.720474, 14.496285>,  <5.540273, 10.260384, 14.816315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.036678, 10.720474, 14.496285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.878242, 10.604108, 14.844648>,  <4.783180, 10.534288, 15.053666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.878242, 10.604108, 14.844648>,  <5.036678, 10.720474, 14.496285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.878242, 10.604108, 14.844648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231330, 0.949504, 0.211961,
		-0.888593, -0.117511, -0.443388,
		-0.396091, -0.290916, 0.870907,
		4.759415, 10.516833, 15.105921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.372437, 11.045510, 14.553098>,  <5.036678, 10.720474, 14.496285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.372437, 11.045510, 14.553098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.501323, 10.968953, 14.923944>,  <4.578655, 10.923018, 15.146453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.501323, 10.968953, 14.923944>,  <4.372437, 11.045510, 14.553098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.501323, 10.968953, 14.923944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063431, 0.972783, 0.222866,
		-0.944539, -0.130619, 0.301306,
		0.322216, -0.191394, 0.927117,
		4.597988, 10.911535, 15.202080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.995708, 11.467850, 14.914605>,  <4.372437, 11.045510, 14.553098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.995708, 11.467850, 14.914605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.283650, 11.364119, 15.172151>,  <4.456415, 11.301880, 15.326677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.283650, 11.364119, 15.172151>,  <3.995708, 11.467850, 14.914605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.283650, 11.364119, 15.172151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014324, 0.921841, 0.387304,
		-0.693978, -0.288025, 0.659876,
		0.719853, -0.259328, 0.643863,
		4.499606, 11.286320, 15.365310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.775759, 11.757321, 15.511885>,  <3.995708, 11.467850, 14.914605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.775759, 11.757321, 15.511885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.169818, 11.715264, 15.566180>,  <4.406254, 11.690030, 15.598758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.169818, 11.715264, 15.566180>,  <3.775759, 11.757321, 15.511885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.169818, 11.715264, 15.566180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043431, 0.917462, 0.395446,
		-0.166113, -0.383678, 0.908404,
		0.985150, -0.105142, 0.135739,
		4.465364, 11.683722, 15.606902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.914874, 12.057780, 16.221853>,  <3.775759, 11.757321, 15.511885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.914874, 12.057780, 16.221853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.259274, 12.045444, 16.018787>,  <4.465914, 12.038041, 15.896947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.259274, 12.045444, 16.018787>,  <3.914874, 12.057780, 16.221853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.259274, 12.045444, 16.018787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195955, 0.941217, 0.275158,
		0.469338, -0.336391, 0.816433,
		0.861001, -0.030842, -0.507667,
		4.517574, 12.036191, 15.866488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.434052, 12.307219, 16.605762>,  <3.914874, 12.057780, 16.221853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.434052, 12.307219, 16.605762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.588384, 12.354160, 16.239733>,  <4.680983, 12.382325, 16.020115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.588384, 12.354160, 16.239733>,  <4.434052, 12.307219, 16.605762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.588384, 12.354160, 16.239733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385485, 0.880635, 0.275472,
		0.838175, -0.459033, 0.294535,
		0.385829, 0.117355, -0.915076,
		4.704132, 12.389367, 15.965210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.216590, 12.364396, 16.720125>,  <4.434052, 12.307219, 16.605762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.216590, 12.364396, 16.720125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.105888, 12.530451, 16.373468>,  <5.039467, 12.630083, 16.165474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.105888, 12.530451, 16.373468>,  <5.216590, 12.364396, 16.720125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.105888, 12.530451, 16.373468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070197, 0.908193, 0.412622,
		0.958373, 0.053359, -0.280488,
		-0.276755, 0.415136, -0.866642,
		5.022861, 12.654991, 16.113476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.714580, 12.787944, 16.471680>,  <5.216590, 12.364396, 16.720125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.714580, 12.787944, 16.471680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.348463, 12.910305, 16.366865>,  <5.128792, 12.983722, 16.303976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.348463, 12.910305, 16.366865>,  <5.714580, 12.787944, 16.471680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.348463, 12.910305, 16.366865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113449, 0.820003, 0.561003,
		0.386483, 0.483754, -0.785248,
		-0.915293, 0.305903, -0.262036,
		5.073875, 13.002076, 16.288254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.763112, 13.472214, 16.235329>,  <5.714580, 12.787944, 16.471680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.763112, 13.472214, 16.235329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.429080, 13.336408, 16.408476>,  <5.228662, 13.254924, 16.512365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.429080, 13.336408, 16.408476>,  <5.763112, 13.472214, 16.235329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.429080, 13.336408, 16.408476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223900, 0.508979, 0.831149,
		-0.502508, 0.790994, -0.349019,
		-0.835077, -0.339514, 0.432869,
		5.178557, 13.234553, 16.538338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.271609, 14.001738, 16.476694>,  <5.763112, 13.472214, 16.235329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.271609, 14.001738, 16.476694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.282618, 13.663269, 16.689573>,  <5.289224, 13.460188, 16.817301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.282618, 13.663269, 16.689573>,  <5.271609, 14.001738, 16.476694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.282618, 13.663269, 16.689573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216118, 0.524847, 0.823304,
		-0.975979, 0.092358, 0.197318,
		0.027523, -0.846171, 0.532200,
		5.290875, 13.409418, 16.849234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.828578, 13.906621, 16.945316>,  <5.271609, 14.001738, 16.476694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.828578, 13.906621, 16.945316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.724864, 14.210657, 16.706976>,  <5.662637, 14.393079, 16.563972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.724864, 14.210657, 16.706976>,  <5.828578, 13.906621, 16.945316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.724864, 14.210657, 16.706976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911999, 0.395732, 0.107956,
		0.317853, -0.515422, -0.795808,
		-0.259283, 0.760090, -0.595849,
		5.647079, 14.438684, 16.528221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.333842, 13.949945, 16.445614>,  <5.828578, 13.906621, 16.945316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.333842, 13.949945, 16.445614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.145684, 14.297205, 16.508917>,  <6.032790, 14.505561, 16.546898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.145684, 14.297205, 16.508917>,  <6.333842, 13.949945, 16.445614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.145684, 14.297205, 16.508917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882115, 0.457602, 0.111686,
		0.024542, 0.192136, -0.981061,
		-0.470394, 0.868150, 0.158255,
		6.004566, 14.557650, 16.556393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.551509, 14.498698, 15.946939>,  <6.333842, 13.949945, 16.445614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.551509, 14.498698, 15.946939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.430692, 14.636977, 16.302301>,  <6.358201, 14.719945, 16.515518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.430692, 14.636977, 16.302301>,  <6.551509, 14.498698, 15.946939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.430692, 14.636977, 16.302301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905881, 0.394331, 0.154543,
		-0.296900, 0.851467, -0.432266,
		-0.302044, 0.345698, 0.888404,
		6.340078, 14.740686, 16.568823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.571684, 15.197988, 16.025763>,  <6.551509, 14.498698, 15.946939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.571684, 15.197988, 16.025763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.625545, 15.034459, 16.386814>,  <6.657861, 14.936342, 16.603445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.625545, 15.034459, 16.386814>,  <6.571684, 15.197988, 16.025763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.625545, 15.034459, 16.386814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837114, 0.534339, 0.117137,
		-0.530197, 0.739829, 0.414179,
		0.134651, -0.408821, 0.902627,
		6.665940, 14.911813, 16.657602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.655328, 15.825854, 16.515131>,  <6.571684, 15.197988, 16.025763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.655328, 15.825854, 16.515131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.796028, 15.483731, 16.667299>,  <6.880448, 15.278458, 16.758600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.796028, 15.483731, 16.667299>,  <6.655328, 15.825854, 16.515131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.796028, 15.483731, 16.667299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735242, 0.503968, 0.453250,
		-0.579389, 0.120272, 0.806129,
		0.351749, -0.855307, 0.380423,
		6.901553, 15.227139, 16.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.661564, 15.899762, 17.253218>,  <6.655328, 15.825854, 16.515131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.661564, 15.899762, 17.253218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.916178, 15.618679, 17.126078>,  <7.068946, 15.450029, 17.049793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.916178, 15.618679, 17.126078>,  <6.661564, 15.899762, 17.253218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.916178, 15.618679, 17.126078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771223, 0.583366, 0.254755,
		0.006405, -0.407293, 0.913275,
		0.636533, -0.702707, -0.317850,
		7.107138, 15.407867, 17.030724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.101136, 15.592825, 17.744497>,  <6.661564, 15.899762, 17.253218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.101136, 15.592825, 17.744497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.302948, 15.581738, 17.399319>,  <7.424036, 15.575085, 17.192211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.302948, 15.581738, 17.399319>,  <7.101136, 15.592825, 17.744497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.302948, 15.581738, 17.399319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725094, 0.556189, 0.406068,
		0.468706, -0.830593, 0.300714,
		0.504532, -0.027720, -0.862948,
		7.454308, 15.573421, 17.140434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.667482, 15.660765, 18.089405>,  <7.101136, 15.592825, 17.744497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.667482, 15.660765, 18.089405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.715122, 15.742287, 17.700708>,  <7.743706, 15.791200, 17.467491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.715122, 15.742287, 17.700708>,  <7.667482, 15.660765, 18.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.715122, 15.742287, 17.700708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791037, 0.572017, 0.216923,
		0.600063, -0.794518, -0.093090,
		0.119101, 0.203805, -0.971740,
		7.750853, 15.803429, 17.409187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.372849, 15.562180, 17.924984>,  <7.667482, 15.660765, 18.089405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.372849, 15.562180, 17.924984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238684, 15.800441, 17.633039>,  <8.158185, 15.943398, 17.457872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238684, 15.800441, 17.633039>,  <8.372849, 15.562180, 17.924984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.238684, 15.800441, 17.633039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695014, 0.679464, 0.235127,
		0.635967, -0.428398, -0.641888,
		-0.335412, 0.595654, -0.729860,
		8.138061, 15.979137, 17.414082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.989246, 15.774592, 17.620455>,  <8.372849, 15.562180, 17.924984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.989246, 15.774592, 17.620455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.713193, 16.046579, 17.521372>,  <8.547561, 16.209772, 17.461922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.713193, 16.046579, 17.521372>,  <8.989246, 15.774592, 17.620455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.713193, 16.046579, 17.521372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621050, 0.732198, 0.279610,
		0.371497, 0.039129, -0.927609,
		-0.690135, 0.679966, -0.247709,
		8.506152, 16.250568, 17.447060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.368517, 16.389660, 17.363567>,  <8.989246, 15.774592, 17.620455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.368517, 16.389660, 17.363567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.989084, 16.502789, 17.420424>,  <8.761425, 16.570665, 17.454538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.989084, 16.502789, 17.420424>,  <9.368517, 16.389660, 17.363567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.989084, 16.502789, 17.420424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316244, 0.827580, 0.463789,
		0.013536, 0.484893, -0.874468,
		-0.948581, 0.282824, 0.142142,
		8.704510, 16.587635, 17.463066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.292558, 17.076979, 17.088673>,  <9.368517, 16.389660, 17.363567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.292558, 17.076979, 17.088673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.010163, 17.010340, 17.364014>,  <8.840727, 16.970356, 17.529219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.010163, 17.010340, 17.364014>,  <9.292558, 17.076979, 17.088673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.010163, 17.010340, 17.364014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332090, 0.780594, 0.529517,
		-0.625540, 0.602427, -0.495764,
		-0.705986, -0.166596, 0.688353,
		8.798368, 16.960361, 17.570520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.016111, 17.747650, 17.278774>,  <9.292558, 17.076979, 17.088673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.016111, 17.747650, 17.278774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.878220, 17.540773, 17.592123>,  <8.795485, 17.416647, 17.780132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.878220, 17.540773, 17.592123>,  <9.016111, 17.747650, 17.278774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.878220, 17.540773, 17.592123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482824, 0.617981, 0.620468,
		-0.805011, 0.592125, 0.036677,
		-0.344729, -0.517192, 0.783373,
		8.774801, 17.385616, 17.827135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.825195, 18.189995, 17.801958>,  <9.016111, 17.747650, 17.278774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.825195, 18.189995, 17.801958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.904221, 17.851496, 17.999882>,  <8.951635, 17.648396, 18.118635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.904221, 17.851496, 17.999882>,  <8.825195, 18.189995, 17.801958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.904221, 17.851496, 17.999882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406412, 0.530041, 0.744235,
		-0.892075, 0.054063, 0.448642,
		0.197563, -0.846247, 0.494808,
		8.963490, 17.597622, 18.148325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.675142, 18.380280, 18.474316>,  <8.825195, 18.189995, 17.801958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.675142, 18.380280, 18.474316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.884534, 18.040489, 18.500731>,  <9.010169, 17.836615, 18.516581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.884534, 18.040489, 18.500731>,  <8.675142, 18.380280, 18.474316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.884534, 18.040489, 18.500731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470567, 0.352853, 0.808741,
		-0.710307, -0.392283, 0.584446,
		0.523479, -0.849476, 0.066038,
		9.041577, 17.785646, 18.520542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.655834, 18.123602, 19.167114>,  <8.675142, 18.380280, 18.474316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.655834, 18.123602, 19.167114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.995947, 17.973377, 19.019617>,  <9.200015, 17.883242, 18.931118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.995947, 17.973377, 19.019617>,  <8.655834, 18.123602, 19.167114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.995947, 17.973377, 19.019617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468816, 0.221986, 0.854947,
		-0.239229, -0.899820, 0.364820,
		0.850283, -0.375562, -0.368744,
		9.251032, 17.860708, 18.908993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.828827, 17.605993, 19.658024>,  <8.655834, 18.123602, 19.167114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.828827, 17.605993, 19.658024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.167795, 17.643356, 19.448967>,  <9.371176, 17.665773, 19.323534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.167795, 17.643356, 19.448967>,  <8.828827, 17.605993, 19.658024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.167795, 17.643356, 19.448967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497154, 0.205860, 0.842887,
		0.186316, -0.974114, 0.128016,
		0.847422, 0.093400, -0.522640,
		9.422021, 17.671379, 19.292175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.378581, 17.170977, 19.965803>,  <8.828827, 17.605993, 19.658024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.378581, 17.170977, 19.965803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.567694, 17.451099, 19.751869>,  <9.681162, 17.619173, 19.623508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.567694, 17.451099, 19.751869>,  <9.378581, 17.170977, 19.965803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.567694, 17.451099, 19.751869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567327, 0.222515, 0.792860,
		0.674253, -0.678278, -0.292101,
		0.472783, 0.700305, -0.534836,
		9.709529, 17.661190, 19.591419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.017993, 16.949768, 19.840559>,  <9.378581, 17.170977, 19.965803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.017993, 16.949768, 19.840559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.028809, 17.349554, 19.833197>,  <10.035298, 17.589426, 19.828779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.028809, 17.349554, 19.833197>,  <10.017993, 16.949768, 19.840559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.028809, 17.349554, 19.833197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614459, -0.002094, 0.788946,
		0.788485, -0.032643, -0.614187,
		0.027039, 0.999465, -0.018407,
		10.036921, 17.649393, 19.827675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.516765, 17.042757, 20.217970>,  <10.017993, 16.949768, 19.840559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.516765, 17.042757, 20.217970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.349836, 17.406252, 20.215555>,  <10.249680, 17.624350, 20.214108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.349836, 17.406252, 20.215555>,  <10.516765, 17.042757, 20.217970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.349836, 17.406252, 20.215555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143805, 0.072594, 0.986940,
		0.897309, 0.411002, -0.160977,
		-0.417320, 0.908739, -0.006035,
		10.224640, 17.678873, 20.213745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.919456, 17.445587, 20.567112>,  <10.516765, 17.042757, 20.217970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.919456, 17.445587, 20.567112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574798, 17.648329, 20.577436>,  <10.368003, 17.769974, 20.583632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574798, 17.648329, 20.577436>,  <10.919456, 17.445587, 20.567112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574798, 17.648329, 20.577436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159938, 0.222922, 0.961627,
		0.481650, 0.832709, -0.273145,
		-0.861645, 0.506854, 0.025812,
		10.316304, 17.800385, 20.585180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.042669, 18.213512, 20.813557>,  <10.919456, 17.445587, 20.567112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.042669, 18.213512, 20.813557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.663725, 18.103607, 20.879297>,  <10.436358, 18.037664, 20.918741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.663725, 18.103607, 20.879297>,  <11.042669, 18.213512, 20.813557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.663725, 18.103607, 20.879297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117171, 0.180177, 0.976630,
		-0.297953, 0.944480, -0.138499,
		-0.947362, -0.274762, 0.164350,
		10.379517, 18.021179, 20.928602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.689013, 18.823179, 21.246136>,  <11.042669, 18.213512, 20.813557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.689013, 18.823179, 21.246136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.445950, 18.510799, 21.303921>,  <10.300112, 18.323372, 21.338593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.445950, 18.510799, 21.303921>,  <10.689013, 18.823179, 21.246136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.445950, 18.510799, 21.303921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019883, 0.196802, 0.980242,
		-0.793949, 0.592780, -0.135116,
		-0.607659, -0.780948, 0.144465,
		10.263652, 18.276514, 21.347260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.175107, 19.129963, 21.614120>,  <10.689013, 18.823179, 21.246136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.175107, 19.129963, 21.614120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136145, 18.733673, 21.652012>,  <10.112767, 18.495899, 21.674746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136145, 18.733673, 21.652012>,  <10.175107, 19.129963, 21.614120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136145, 18.733673, 21.652012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039722, 0.098973, 0.994297,
		-0.994452, 0.093087, -0.048994,
		-0.097405, -0.990726, 0.094727,
		10.106923, 18.436455, 21.680429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.557121, 18.978451, 21.877522>,  <10.175107, 19.129963, 21.614120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.557121, 18.978451, 21.877522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.765443, 18.646059, 21.955736>,  <9.890436, 18.446625, 22.002665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.765443, 18.646059, 21.955736>,  <9.557121, 18.978451, 21.877522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.765443, 18.646059, 21.955736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371228, -0.014191, 0.928433,
		-0.768735, -0.556121, -0.315874,
		0.520804, -0.830980, 0.195538,
		9.921684, 18.396765, 22.014397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.038857, 18.544230, 22.176851>,  <9.557121, 18.978451, 21.877522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.038857, 18.544230, 22.176851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.401381, 18.420286, 22.291805>,  <9.618895, 18.345921, 22.360777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.401381, 18.420286, 22.291805>,  <9.038857, 18.544230, 22.176851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.401381, 18.420286, 22.291805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277204, 0.077429, 0.957686,
		-0.318999, -0.947625, -0.015720,
		0.906310, -0.309859, 0.287385,
		9.673273, 18.327328, 22.378021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.979371, 18.056549, 22.712770>,  <9.038857, 18.544230, 22.176851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.979371, 18.056549, 22.712770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.363765, 18.152048, 22.768641>,  <9.594401, 18.209347, 22.802162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.363765, 18.152048, 22.768641>,  <8.979371, 18.056549, 22.712770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.363765, 18.152048, 22.768641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168256, 0.103766, 0.980267,
		0.219546, -0.965521, 0.139888,
		0.960984, 0.238751, 0.139674,
		9.652061, 18.223673, 22.810543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.179997, 17.843590, 23.365046>,  <8.979371, 18.056549, 22.712770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.179997, 17.843590, 23.365046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524380, 18.038710, 23.307348>,  <9.731009, 18.155783, 23.272730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524380, 18.038710, 23.307348>,  <9.179997, 17.843590, 23.365046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.524380, 18.038710, 23.307348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048879, 0.202915, 0.977976,
		0.506326, -0.849044, 0.150857,
		0.860956, 0.487801, -0.144242,
		9.782666, 18.185049, 23.264076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.610677, 17.662035, 23.970266>,  <9.179997, 17.843590, 23.365046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.610677, 17.662035, 23.970266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.780758, 17.989004, 23.814821>,  <9.882807, 18.185186, 23.721554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.780758, 17.989004, 23.814821>,  <9.610677, 17.662035, 23.970266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.780758, 17.989004, 23.814821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197448, 0.335246, 0.921208,
		0.883299, -0.468430, -0.018851,
		0.425202, 0.817425, -0.388613,
		9.908319, 18.234232, 23.698236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.263610, 17.647741, 24.184774>,  <9.610677, 17.662035, 23.970266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.263610, 17.647741, 24.184774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.163821, 18.030060, 24.122526>,  <10.103948, 18.259451, 24.085176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.163821, 18.030060, 24.122526>,  <10.263610, 17.647741, 24.184774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.163821, 18.030060, 24.122526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263943, 0.221730, 0.938706,
		0.931718, 0.193107, -0.307591,
		-0.249473, 0.955796, -0.155621,
		10.088980, 18.316799, 24.075840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.872768, 18.066210, 24.454424>,  <10.263610, 17.647741, 24.184774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.872768, 18.066210, 24.454424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.566568, 18.323584, 24.454411>,  <10.382849, 18.478008, 24.454403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.566568, 18.323584, 24.454411>,  <10.872768, 18.066210, 24.454424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.566568, 18.323584, 24.454411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288612, 0.343409, 0.893741,
		0.575076, 0.684150, -0.448583,
		-0.765500, 0.643436, -0.000032,
		10.336919, 18.516615, 24.454401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101562, 18.722021, 24.725891>,  <10.872768, 18.066210, 24.454424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101562, 18.722021, 24.725891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.703331, 18.736774, 24.760448>,  <10.464393, 18.745626, 24.781183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.703331, 18.736774, 24.760448>,  <11.101562, 18.722021, 24.725891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.703331, 18.736774, 24.760448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093758, 0.333514, 0.938071,
		0.005788, 0.942023, -0.335498,
		-0.995578, 0.036885, 0.086392,
		10.404657, 18.747841, 24.786366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.811555, 19.437258, 24.881266>,  <11.101562, 18.722021, 24.725891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.811555, 19.437258, 24.881266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.562733, 19.154503, 25.015938>,  <10.413439, 18.984850, 25.096741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.562733, 19.154503, 25.015938>,  <10.811555, 19.437258, 24.881266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.562733, 19.154503, 25.015938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070584, 0.377624, 0.923265,
		-0.779785, 0.598087, -0.185008,
		-0.622056, -0.706889, 0.336681,
		10.376116, 18.942436, 25.116941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.495159, 19.837675, 25.308504>,  <10.811555, 19.437258, 24.881266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.495159, 19.837675, 25.308504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.413280, 19.461407, 25.416752>,  <10.364153, 19.235645, 25.481701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.413280, 19.461407, 25.416752>,  <10.495159, 19.837675, 25.308504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.413280, 19.461407, 25.416752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190245, 0.232969, 0.953694,
		-0.960159, 0.246703, 0.131270,
		-0.204697, -0.940672, 0.270622,
		10.351871, 19.179205, 25.497938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.103018, 19.906212, 25.914278>,  <10.495159, 19.837675, 25.308504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.103018, 19.906212, 25.914278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.218194, 19.523962, 25.939152>,  <10.287300, 19.294611, 25.954077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.218194, 19.523962, 25.939152>,  <10.103018, 19.906212, 25.914278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.218194, 19.523962, 25.939152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341387, 0.163099, 0.925664,
		-0.894732, -0.245308, 0.373201,
		0.287941, -0.955627, 0.062185,
		10.304577, 19.237274, 25.957808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.755617, 19.548000, 26.528625>,  <10.103018, 19.906212, 25.914278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.755617, 19.548000, 26.528625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114812, 19.394911, 26.441774>,  <10.330329, 19.303057, 26.389664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114812, 19.394911, 26.441774>,  <9.755617, 19.548000, 26.528625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.114812, 19.394911, 26.441774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346375, 0.310498, 0.885221,
		-0.271378, -0.870123, 0.411389,
		0.897986, -0.382724, -0.217126,
		10.384208, 19.280094, 26.376637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.888431, 19.203384, 27.132881>,  <9.755617, 19.548000, 26.528625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.888431, 19.203384, 27.132881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.245974, 19.219446, 26.954260>,  <10.460499, 19.229084, 26.847088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.245974, 19.219446, 26.954260>,  <9.888431, 19.203384, 27.132881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.245974, 19.219446, 26.954260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445609, 0.030469, 0.894709,
		0.049552, -0.998728, 0.009332,
		0.893855, 0.040176, -0.446551,
		10.514131, 19.231493, 26.820295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.173264, 18.896393, 27.559618>,  <9.888431, 19.203384, 27.132881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.173264, 18.896393, 27.559618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.459159, 19.089569, 27.357265>,  <10.630696, 19.205475, 27.235855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.459159, 19.089569, 27.357265>,  <10.173264, 18.896393, 27.559618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.459159, 19.089569, 27.357265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466552, 0.209625, 0.859294,
		0.521035, -0.850190, -0.075491,
		0.714739, 0.482942, -0.505880,
		10.673580, 19.234451, 27.205502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.866987, 18.683266, 27.859943>,  <10.173264, 18.896393, 27.559618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.866987, 18.683266, 27.859943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.950298, 19.026976, 27.673069>,  <11.000285, 19.233202, 27.560944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.950298, 19.026976, 27.673069>,  <10.866987, 18.683266, 27.859943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.950298, 19.026976, 27.673069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422875, 0.351596, 0.835199,
		0.881928, -0.371514, -0.290137,
		0.208277, 0.859277, -0.467187,
		11.012781, 19.284760, 27.532913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.429053, 18.722307, 28.014299>,  <10.866987, 18.683266, 27.859943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.429053, 18.722307, 28.014299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336398, 19.095123, 27.902838>,  <11.280805, 19.318813, 27.835960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336398, 19.095123, 27.902838>,  <11.429053, 18.722307, 28.014299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.336398, 19.095123, 27.902838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577190, 0.362254, 0.731863,
		0.783068, 0.008691, -0.621875,
		-0.231638, 0.932039, -0.278653,
		11.266907, 19.374735, 27.819242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040811, 19.092546, 27.914543>,  <11.429053, 18.722307, 28.014299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040811, 19.092546, 27.914543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752914, 19.360796, 27.986362>,  <11.580177, 19.521746, 28.029455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752914, 19.360796, 27.986362>,  <12.040811, 19.092546, 27.914543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.752914, 19.360796, 27.986362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459329, 0.266069, 0.847481,
		0.520568, 0.692438, -0.499537,
		-0.719740, 0.670624, 0.179550,
		11.536992, 19.561983, 28.040228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329587, 19.693451, 27.964594>,  <12.040811, 19.092546, 27.914543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329587, 19.693451, 27.964594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.989066, 19.716192, 28.173229>,  <11.784754, 19.729837, 28.298410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.989066, 19.716192, 28.173229>,  <12.329587, 19.693451, 27.964594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.989066, 19.716192, 28.173229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510094, 0.322416, 0.797403,
		-0.122834, 0.944889, -0.303473,
		-0.851302, 0.056851, 0.521587,
		11.733675, 19.733248, 28.329704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.526370, 20.208508, 28.421125>,  <12.329587, 19.693451, 27.964594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.526370, 20.208508, 28.421125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.195385, 20.077429, 28.603519>,  <11.996794, 19.998781, 28.712955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.195385, 20.077429, 28.603519>,  <12.526370, 20.208508, 28.421125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.195385, 20.077429, 28.603519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347798, 0.338434, 0.874356,
		-0.440843, 0.882088, -0.166070,
		-0.827463, -0.327695, 0.455985,
		11.947146, 19.979120, 28.740314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.445767, 20.726450, 28.997526>,  <12.526370, 20.208508, 28.421125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.445767, 20.726450, 28.997526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229926, 20.411432, 29.116589>,  <12.100421, 20.222422, 29.188026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229926, 20.411432, 29.116589>,  <12.445767, 20.726450, 28.997526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229926, 20.411432, 29.116589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127301, 0.273159, 0.953508,
		-0.832239, 0.552409, -0.047142,
		-0.539604, -0.787546, 0.297656,
		12.068045, 20.175169, 29.205885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.000932, 20.934912, 29.470732>,  <12.445767, 20.726450, 28.997526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.000932, 20.934912, 29.470732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004923, 20.543779, 29.554396>,  <12.007318, 20.309099, 29.604593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004923, 20.543779, 29.554396>,  <12.000932, 20.934912, 29.470732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004923, 20.543779, 29.554396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103522, 0.209057, 0.972409,
		-0.994577, 0.011950, 0.103313,
		0.009977, -0.977831, 0.209160,
		12.007916, 20.250431, 29.617144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647851, 20.866146, 30.075266>,  <12.000932, 20.934912, 29.470732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647851, 20.866146, 30.075266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856895, 20.525150, 30.070509>,  <11.982323, 20.320553, 30.067656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856895, 20.525150, 30.070509>,  <11.647851, 20.866146, 30.075266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.856895, 20.525150, 30.070509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062261, -0.052071, 0.996701,
		-0.850295, -0.520147, -0.080289,
		0.522612, -0.852488, -0.011891,
		12.013680, 20.269403, 30.066942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.051657, 20.928127, 30.656651>,  <11.647851, 20.866146, 30.075266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.051657, 20.928127, 30.656651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838332, 21.074680, 30.961634>,  <11.710338, 21.162611, 31.144625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838332, 21.074680, 30.961634>,  <12.051657, 20.928127, 30.656651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.838332, 21.074680, 30.961634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252052, -0.791573, 0.556671,
		0.807496, 0.489058, 0.329808,
		-0.533311, 0.366381, 0.762459,
		11.678339, 21.184595, 31.190371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.419090, 21.022575, 31.248623>,  <12.051657, 20.928127, 30.656651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.419090, 21.022575, 31.248623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.042479, 20.914188, 31.328722>,  <11.816511, 20.849157, 31.376781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.042479, 20.914188, 31.328722>,  <12.419090, 21.022575, 31.248623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.042479, 20.914188, 31.328722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333393, -0.835149, 0.437465,
		0.048699, 0.478647, 0.876656,
		-0.941530, -0.270967, 0.200248,
		11.760019, 20.832899, 31.388796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376298, 20.960646, 31.959217>,  <12.419090, 21.022575, 31.248623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376298, 20.960646, 31.959217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112540, 20.716717, 31.783344>,  <11.954286, 20.570360, 31.677820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112540, 20.716717, 31.783344>,  <12.376298, 20.960646, 31.959217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.112540, 20.716717, 31.783344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457990, -0.789627, 0.408330,
		-0.596193, 0.067881, 0.799967,
		-0.659393, -0.609820, -0.439682,
		11.914722, 20.533772, 31.651440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.252832, 20.382450, 32.464016>,  <12.376298, 20.960646, 31.959217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.252832, 20.382450, 32.464016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.197878, 20.276123, 32.082344>,  <12.164905, 20.212326, 31.853340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.197878, 20.276123, 32.082344>,  <12.252832, 20.382450, 32.464016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.197878, 20.276123, 32.082344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517855, -0.840454, 0.159572,
		-0.844364, -0.472205, 0.253123,
		-0.137387, -0.265818, -0.954183,
		12.156662, 20.196377, 31.796089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.907030, 19.701660, 32.355541>,  <12.252832, 20.382450, 32.464016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.907030, 19.701660, 32.355541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.138268, 19.769342, 32.036247>,  <12.277010, 19.809952, 31.844671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.138268, 19.769342, 32.036247>,  <11.907030, 19.701660, 32.355541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.138268, 19.769342, 32.036247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502030, -0.844948, 0.184469,
		-0.643253, -0.507378, -0.573405,
		0.578093, 0.169207, -0.798234,
		12.311695, 19.820105, 31.796778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831202, 19.108377, 31.895147>,  <11.907030, 19.701660, 32.355541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831202, 19.108377, 31.895147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.195938, 19.270035, 31.866259>,  <12.414780, 19.367029, 31.848927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.195938, 19.270035, 31.866259>,  <11.831202, 19.108377, 31.895147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.195938, 19.270035, 31.866259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406624, -0.864801, 0.294577,
		0.056594, -0.297974, -0.952895,
		0.911841, 0.404142, -0.072221,
		12.469490, 19.391277, 31.844593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.211777, 18.605345, 31.669020>,  <11.831202, 19.108377, 31.895147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.211777, 18.605345, 31.669020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.494759, 18.836065, 31.832388>,  <12.664548, 18.974497, 31.930408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.494759, 18.836065, 31.832388>,  <12.211777, 18.605345, 31.669020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.494759, 18.836065, 31.832388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499784, -0.816884, 0.287951,
		0.499725, 0.000411, -0.866184,
		0.707454, 0.576801, 0.408423,
		12.706995, 19.009106, 31.954914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.857404, 18.392082, 31.403049>,  <12.211777, 18.605345, 31.669020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.857404, 18.392082, 31.403049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.893670, 18.569401, 31.759762>,  <12.915430, 18.675791, 31.973789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.893670, 18.569401, 31.759762>,  <12.857404, 18.392082, 31.403049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.893670, 18.569401, 31.759762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283396, -0.869929, 0.403622,
		0.954708, 0.216133, -0.204500,
		0.090665, 0.443295, 0.891779,
		12.920870, 18.702389, 32.027294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.560190, 18.419632, 31.670044>,  <12.857404, 18.392082, 31.403049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.560190, 18.419632, 31.670044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.266787, 18.377409, 31.938618>,  <13.090744, 18.352076, 32.099762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.266787, 18.377409, 31.938618>,  <13.560190, 18.419632, 31.670044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266787, 18.377409, 31.938618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369460, -0.891097, 0.263524,
		0.570494, 0.441365, 0.692628,
		-0.733509, -0.105559, 0.671432,
		13.046734, 18.345741, 32.140049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.903637, 18.126610, 32.222118>,  <13.560190, 18.419632, 31.670044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.903637, 18.126610, 32.222118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511553, 18.076118, 32.283115>,  <13.276302, 18.045824, 32.319714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511553, 18.076118, 32.283115>,  <13.903637, 18.126610, 32.222118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511553, 18.076118, 32.283115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184854, -0.859285, 0.476926,
		0.070836, 0.495677, 0.865613,
		-0.980210, -0.126229, 0.152496,
		13.217490, 18.038250, 32.328865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159428, 17.724001, 31.736284>,  <13.903637, 18.126610, 32.222118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159428, 17.724001, 31.736284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018455, 17.943426, 31.433004>,  <13.933871, 18.075081, 31.251036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018455, 17.943426, 31.433004>,  <14.159428, 17.724001, 31.736284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018455, 17.943426, 31.433004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194010, -0.749757, -0.632634,
		-0.915506, -0.370060, 0.157811,
		-0.352432, 0.548563, -0.758202,
		13.912724, 18.107994, 31.205544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934529, 17.202993, 31.310524>,  <14.159428, 17.724001, 31.736284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934529, 17.202993, 31.310524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913010, 17.522682, 31.071075>,  <13.900098, 17.714495, 30.927406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913010, 17.522682, 31.071075>,  <13.934529, 17.202993, 31.310524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913010, 17.522682, 31.071075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166992, -0.583848, -0.794503,
		-0.984490, -0.142708, -0.102054,
		-0.053798, 0.799222, -0.598623,
		13.896871, 17.762449, 30.891489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.511401, 17.005753, 30.711298>,  <13.934529, 17.202993, 31.310524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.511401, 17.005753, 30.711298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721156, 17.327026, 30.598221>,  <13.847010, 17.519791, 30.530375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721156, 17.327026, 30.598221>,  <13.511401, 17.005753, 30.711298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721156, 17.327026, 30.598221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199977, -0.438885, -0.876007,
		-0.827663, 0.402837, -0.390764,
		0.524388, 0.803183, -0.282691,
		13.878472, 17.567982, 30.513414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.147225, 17.227570, 30.140640>,  <13.511401, 17.005753, 30.711298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.147225, 17.227570, 30.140640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.520990, 17.365786, 30.106060>,  <13.745250, 17.448715, 30.085312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.520990, 17.365786, 30.106060>,  <13.147225, 17.227570, 30.140640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.520990, 17.365786, 30.106060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043242, -0.130865, -0.990457,
		-0.353556, 0.929234, -0.107340,
		0.934413, 0.345540, -0.086450,
		13.801314, 17.469448, 30.080126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164710, 17.752722, 29.662394>,  <13.147225, 17.227570, 30.140640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164710, 17.752722, 29.662394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548313, 17.639446, 29.666521>,  <13.778475, 17.571482, 29.668997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548313, 17.639446, 29.666521>,  <13.164710, 17.752722, 29.662394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548313, 17.639446, 29.666521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019586, 0.029916, -0.999361,
		0.282700, 0.958597, 0.034236,
		0.959009, -0.283189, 0.010317,
		13.836016, 17.554489, 29.669617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506560, 17.954800, 28.979919>,  <13.164710, 17.752722, 29.662394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506560, 17.954800, 28.979919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.783670, 17.686975, 29.087065>,  <13.949936, 17.526281, 29.151352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.783670, 17.686975, 29.087065>,  <13.506560, 17.954800, 28.979919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.783670, 17.686975, 29.087065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091183, -0.287124, -0.953544,
		0.715367, 0.685015, -0.137859,
		0.692774, -0.669563, 0.267861,
		13.991503, 17.486107, 29.167423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085892, 18.085037, 28.511511>,  <13.506560, 17.954800, 28.979919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085892, 18.085037, 28.511511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.138883, 17.714045, 28.651354>,  <14.170677, 17.491449, 28.735260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.138883, 17.714045, 28.651354>,  <14.085892, 18.085037, 28.511511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.138883, 17.714045, 28.651354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255199, -0.308907, -0.916215,
		0.957770, 0.210597, 0.195770,
		0.132478, -0.927483, 0.349606,
		14.178626, 17.435801, 28.756235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.741891, 17.834051, 28.208101>,  <14.085892, 18.085037, 28.511511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.741891, 17.834051, 28.208101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508090, 17.525736, 28.309488>,  <14.367809, 17.340748, 28.370321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508090, 17.525736, 28.309488>,  <14.741891, 17.834051, 28.208101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508090, 17.525736, 28.309488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219758, -0.451095, -0.864997,
		0.781066, -0.449891, 0.433052,
		-0.584502, -0.770786, 0.253468,
		14.332740, 17.294500, 28.385529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237668, 17.176779, 27.981678>,  <14.741891, 17.834051, 28.208101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237668, 17.176779, 27.981678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.853945, 17.065626, 28.001722>,  <14.623711, 16.998934, 28.013750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.853945, 17.065626, 28.001722>,  <15.237668, 17.176779, 27.981678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853945, 17.065626, 28.001722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115982, -0.549597, -0.827340,
		0.257444, -0.787861, 0.559462,
		-0.959308, -0.277881, 0.050113,
		14.566153, 16.982262, 28.016756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211942, 16.418753, 27.798994>,  <15.237668, 17.176779, 27.981678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211942, 16.418753, 27.798994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.824060, 16.508551, 27.760462>,  <14.591331, 16.562429, 27.737343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.824060, 16.508551, 27.760462>,  <15.211942, 16.418753, 27.798994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.824060, 16.508551, 27.760462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054676, -0.583771, -0.810075,
		-0.238092, -0.780265, 0.578358,
		-0.969702, 0.224495, -0.096329,
		14.533150, 16.575899, 27.731564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.910958, 15.767697, 27.643606>,  <15.211942, 16.418753, 27.798994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.910958, 15.767697, 27.643606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664711, 16.058071, 27.520947>,  <14.516963, 16.232296, 27.447350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664711, 16.058071, 27.520947>,  <14.910958, 15.767697, 27.643606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664711, 16.058071, 27.520947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248101, -0.547879, -0.798921,
		-0.747971, -0.415749, 0.517389,
		-0.615618, 0.725935, -0.306650,
		14.480025, 16.275852, 27.428951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.306123, 15.410738, 27.408987>,  <14.910958, 15.767697, 27.643606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.306123, 15.410738, 27.408987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.317728, 15.764527, 27.222712>,  <14.324691, 15.976801, 27.110947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.317728, 15.764527, 27.222712>,  <14.306123, 15.410738, 27.408987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.317728, 15.764527, 27.222712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355252, -0.426345, -0.831881,
		-0.934321, 0.189572, 0.301841,
		0.029013, 0.884473, -0.465689,
		14.326432, 16.029869, 27.083004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.657982, 15.521517, 27.084608>,  <14.306123, 15.410738, 27.408987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.657982, 15.521517, 27.084608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896198, 15.753495, 26.862259>,  <14.039128, 15.892682, 26.728849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896198, 15.753495, 26.862259>,  <13.657982, 15.521517, 27.084608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896198, 15.753495, 26.862259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401023, -0.384948, -0.831262,
		-0.696069, 0.717967, 0.003320,
		0.595541, 0.579947, -0.555871,
		14.074861, 15.927479, 26.695498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.253972, 15.669280, 26.619928>,  <13.657982, 15.521517, 27.084608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.253972, 15.669280, 26.619928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607666, 15.796974, 26.483566>,  <13.819882, 15.873590, 26.401749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607666, 15.796974, 26.483566>,  <13.253972, 15.669280, 26.619928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607666, 15.796974, 26.483566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274342, -0.235696, -0.932300,
		-0.377973, 0.917898, -0.120831,
		0.884236, 0.319235, -0.340905,
		13.872937, 15.892745, 26.381294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.028042, 15.987250, 25.984776>,  <13.253972, 15.669280, 26.619928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.028042, 15.987250, 25.984776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409711, 15.868123, 25.996494>,  <13.638712, 15.796647, 26.003525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409711, 15.868123, 25.996494>,  <13.028042, 15.987250, 25.984776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.409711, 15.868123, 25.996494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110167, -0.440596, -0.890920,
		0.278240, 0.846864, -0.453214,
		0.954173, -0.297819, 0.029295,
		13.695963, 15.778777, 26.005283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374816, 16.221594, 25.325766>,  <13.028042, 15.987250, 25.984776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374816, 16.221594, 25.325766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.587709, 15.911862, 25.462669>,  <13.715446, 15.726024, 25.544811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.587709, 15.911862, 25.462669>,  <13.374816, 16.221594, 25.325766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.587709, 15.911862, 25.462669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003974, -0.406556, -0.913617,
		0.846588, 0.484898, -0.219460,
		0.532234, -0.774329, 0.342258,
		13.747379, 15.679564, 25.565348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815460, 16.115129, 24.868954>,  <13.374816, 16.221594, 25.325766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815460, 16.115129, 24.868954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.814184, 15.764529, 25.061512>,  <13.813418, 15.554170, 25.177046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.814184, 15.764529, 25.061512>,  <13.815460, 16.115129, 24.868954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.814184, 15.764529, 25.061512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019720, -0.481358, -0.876302,
		0.999801, 0.006697, 0.018820,
		-0.003190, -0.876499, 0.481394,
		13.813227, 15.501579, 25.205931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210918, 15.662838, 24.518742>,  <13.815460, 16.115129, 24.868954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210918, 15.662838, 24.518742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984892, 15.400616, 24.719120>,  <13.849276, 15.243282, 24.839348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984892, 15.400616, 24.719120>,  <14.210918, 15.662838, 24.518742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.984892, 15.400616, 24.719120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147097, -0.517397, -0.843008,
		0.811827, -0.550043, 0.195934,
		-0.565067, -0.655555, 0.500946,
		13.815372, 15.203949, 24.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213586, 15.011532, 24.104351>,  <14.210918, 15.662838, 24.518742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213586, 15.011532, 24.104351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918427, 14.939098, 24.364418>,  <13.741332, 14.895638, 24.520458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918427, 14.939098, 24.364418>,  <14.213586, 15.011532, 24.104351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918427, 14.939098, 24.364418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532245, -0.436213, -0.725558,
		0.414999, -0.881434, 0.225498,
		-0.737897, -0.181085, 0.650167,
		13.697059, 14.884773, 24.559467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.009518, 14.396394, 23.970936>,  <14.213586, 15.011532, 24.104351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.009518, 14.396394, 23.970936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.686895, 14.533834, 24.163353>,  <13.493321, 14.616299, 24.278803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.686895, 14.533834, 24.163353>,  <14.009518, 14.396394, 23.970936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686895, 14.533834, 24.163353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589804, -0.412707, -0.694122,
		-0.039970, -0.843571, 0.535529,
		-0.806557, 0.343601, 0.481045,
		13.444928, 14.636915, 24.307667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615380, 13.905457, 23.920744>,  <14.009518, 14.396394, 23.970936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.615380, 13.905457, 23.920744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375949, 14.217937, 23.991653>,  <13.232290, 14.405426, 24.034199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375949, 14.217937, 23.991653>,  <13.615380, 13.905457, 23.920744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.375949, 14.217937, 23.991653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625807, -0.317880, -0.712263,
		-0.500070, -0.537284, 0.679158,
		-0.598578, 0.781203, 0.177273,
		13.196375, 14.452298, 24.044836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.933857, 13.590350, 24.042793>,  <13.615380, 13.905457, 23.920744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.933857, 13.590350, 24.042793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907355, 13.970901, 23.922464>,  <12.891455, 14.199231, 23.850267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907355, 13.970901, 23.922464>,  <12.933857, 13.590350, 24.042793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907355, 13.970901, 23.922464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433916, -0.298956, -0.849907,
		-0.898514, 0.074222, 0.432624,
		-0.066253, 0.951376, -0.300822,
		12.887479, 14.256313, 23.832218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245346, 13.688581, 23.891373>,  <12.933857, 13.590350, 24.042793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245346, 13.688581, 23.891373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.407883, 13.982643, 23.674326>,  <12.505404, 14.159081, 23.544098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.407883, 13.982643, 23.674326>,  <12.245346, 13.688581, 23.891373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.407883, 13.982643, 23.674326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688867, -0.143667, -0.710508,
		-0.600290, 0.662500, 0.448047,
		0.406342, 0.735155, -0.542616,
		12.529785, 14.203190, 23.511541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.630521, 14.097640, 23.688328>,  <12.245346, 13.688581, 23.891373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.630521, 14.097640, 23.688328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924729, 14.237529, 23.456224>,  <12.101254, 14.321463, 23.316961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924729, 14.237529, 23.456224>,  <11.630521, 14.097640, 23.688328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.924729, 14.237529, 23.456224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641019, 0.081970, -0.763135,
		-0.219322, 0.933261, 0.284469,
		0.735522, 0.349723, -0.580260,
		12.145386, 14.342445, 23.282146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.400857, 14.710960, 23.381815>,  <11.630521, 14.097640, 23.688328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.400857, 14.710960, 23.381815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.689375, 14.549796, 23.156464>,  <11.862486, 14.453097, 23.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.689375, 14.549796, 23.156464>,  <11.400857, 14.710960, 23.381815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.689375, 14.549796, 23.156464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599114, 0.045219, -0.799386,
		0.347557, 0.914121, -0.208774,
		0.721295, -0.402912, -0.563379,
		11.905764, 14.428923, 22.987450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.249147, 14.990069, 22.757076>,  <11.400857, 14.710960, 23.381815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.249147, 14.990069, 22.757076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.527285, 14.723602, 22.649210>,  <11.694167, 14.563722, 22.584490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.527285, 14.723602, 22.649210>,  <11.249147, 14.990069, 22.757076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.527285, 14.723602, 22.649210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515445, -0.200795, -0.833065,
		0.500814, 0.718262, -0.482994,
		0.695342, -0.666168, -0.269664,
		11.735888, 14.523752, 22.568312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.476786, 15.128025, 22.074923>,  <11.249147, 14.990069, 22.757076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.476786, 15.128025, 22.074923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.556979, 14.740829, 22.135323>,  <11.605096, 14.508512, 22.171562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.556979, 14.740829, 22.135323>,  <11.476786, 15.128025, 22.074923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.556979, 14.740829, 22.135323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434927, -0.226049, -0.871631,
		0.877864, 0.109074, -0.466324,
		0.200484, -0.967990, 0.151001,
		11.617125, 14.450433, 22.180622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.672655, 14.895394, 21.407539>,  <11.476786, 15.128025, 22.074923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.672655, 14.895394, 21.407539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.594846, 14.561945, 21.614319>,  <11.548160, 14.361876, 21.738386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.594846, 14.561945, 21.614319>,  <11.672655, 14.895394, 21.407539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.594846, 14.561945, 21.614319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473321, -0.381826, -0.793836,
		0.859143, -0.399102, -0.320297,
		-0.194524, -0.833623, 0.516947,
		11.536489, 14.311858, 21.769403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.033084, 14.355715, 21.151159>,  <11.672655, 14.895394, 21.407539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.033084, 14.355715, 21.151159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.694710, 14.232471, 21.325268>,  <11.491685, 14.158525, 21.429733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.694710, 14.232471, 21.325268>,  <12.033084, 14.355715, 21.151159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.694710, 14.232471, 21.325268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341039, -0.314936, -0.885724,
		0.409983, -0.897711, 0.161338,
		-0.845935, -0.308109, 0.435273,
		11.440929, 14.140038, 21.455851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.931005, 13.788412, 20.785248>,  <12.033084, 14.355715, 21.151159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.931005, 13.788412, 20.785248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.597207, 13.864002, 20.992289>,  <11.396929, 13.909356, 21.116512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.597207, 13.864002, 20.992289>,  <11.931005, 13.788412, 20.785248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.597207, 13.864002, 20.992289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546482, -0.404136, -0.733506,
		0.070568, -0.894965, 0.440519,
		-0.834493, 0.188974, 0.517601,
		11.346859, 13.920694, 21.147570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.581727, 13.217215, 20.524164>,  <11.931005, 13.788412, 20.785248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.581727, 13.217215, 20.524164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.331960, 13.483346, 20.687843>,  <11.182099, 13.643024, 20.786051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.331960, 13.483346, 20.687843>,  <11.581727, 13.217215, 20.524164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.331960, 13.483346, 20.687843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703741, -0.251905, -0.664298,
		-0.338899, -0.702766, 0.625514,
		-0.624416, 0.665330, 0.409195,
		11.144634, 13.682944, 20.810602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.992876, 12.957754, 20.792711>,  <11.581727, 13.217215, 20.524164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.992876, 12.957754, 20.792711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.888541, 13.336717, 20.718538>,  <10.825940, 13.564095, 20.674034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.888541, 13.336717, 20.718538>,  <10.992876, 12.957754, 20.792711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.888541, 13.336717, 20.718538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749978, -0.319810, -0.579011,
		-0.607862, -0.011958, 0.793953,
		-0.260838, 0.947406, -0.185432,
		10.810289, 13.620938, 20.662909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.334041, 12.996750, 20.768330>,  <10.992876, 12.957754, 20.792711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.334041, 12.996750, 20.768330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.427867, 13.328860, 20.566095>,  <10.484163, 13.528127, 20.444754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.427867, 13.328860, 20.566095>,  <10.334041, 12.996750, 20.768330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.427867, 13.328860, 20.566095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684387, -0.228310, -0.692452,
		-0.690358, 0.508443, 0.514677,
		0.234566, 0.830277, -0.505587,
		10.498237, 13.577944, 20.414419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.793262, 13.115363, 20.424303>,  <10.334041, 12.996750, 20.768330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.793262, 13.115363, 20.424303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.038065, 13.368725, 20.234884>,  <10.184946, 13.520742, 20.121233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.038065, 13.368725, 20.234884>,  <9.793262, 13.115363, 20.424303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.038065, 13.368725, 20.234884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584354, -0.041296, -0.810447,
		-0.532897, 0.772718, 0.344859,
		0.612006, 0.633405, -0.473547,
		10.221666, 13.558746, 20.092819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.321803, 13.634413, 20.111834>,  <9.793262, 13.115363, 20.424303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.321803, 13.634413, 20.111834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.658707, 13.668324, 19.898888>,  <9.860849, 13.688671, 19.771120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.658707, 13.668324, 19.898888>,  <9.321803, 13.634413, 20.111834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.658707, 13.668324, 19.898888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535563, 0.019102, -0.844279,
		-0.061409, 0.996217, 0.061494,
		0.842260, 0.084780, -0.532364,
		9.911385, 13.693758, 19.739178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.224495, 14.167351, 19.617220>,  <9.321803, 13.634413, 20.111834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.224495, 14.167351, 19.617220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.532123, 13.968507, 19.456514>,  <9.716700, 13.849200, 19.360090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.532123, 13.968507, 19.456514>,  <9.224495, 14.167351, 19.617220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.532123, 13.968507, 19.456514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497979, -0.071970, -0.864198,
		0.400687, 0.864698, -0.302900,
		0.769069, -0.497110, -0.401764,
		9.762843, 13.819374, 19.335985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.386420, 14.509544, 18.983397>,  <9.224495, 14.167351, 19.617220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.386420, 14.509544, 18.983397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.556698, 14.150283, 18.939386>,  <9.658865, 13.934726, 18.912981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.556698, 14.150283, 18.939386>,  <9.386420, 14.509544, 18.983397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556698, 14.150283, 18.939386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268237, -0.009128, -0.963310,
		0.864195, 0.439589, -0.244803,
		0.425695, -0.898153, -0.110026,
		9.684406, 13.880837, 18.906378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.653085, 14.563013, 18.339472>,  <9.386420, 14.509544, 18.983397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.653085, 14.563013, 18.339472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.643567, 14.167754, 18.400131>,  <9.637856, 13.930598, 18.436527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.643567, 14.167754, 18.400131>,  <9.653085, 14.563013, 18.339472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.643567, 14.167754, 18.400131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363260, -0.132777, -0.922178,
		0.931384, -0.077031, -0.355796,
		-0.023795, -0.988148, 0.151649,
		9.636429, 13.871310, 18.445625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.070471, 14.206165, 17.792379>,  <9.653085, 14.563013, 18.339472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.070471, 14.206165, 17.792379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.784963, 13.965102, 17.935114>,  <9.613658, 13.820464, 18.020756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.784963, 13.965102, 17.935114>,  <10.070471, 14.206165, 17.792379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.784963, 13.965102, 17.935114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449761, 0.003851, -0.893140,
		0.536885, -0.797990, -0.273801,
		-0.713772, -0.602658, 0.356838,
		9.570831, 13.784305, 18.042166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.975492, 13.779470, 17.234276>,  <10.070471, 14.206165, 17.792379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.975492, 13.779470, 17.234276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.644812, 13.697925, 17.444040>,  <9.446404, 13.648997, 17.569899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.644812, 13.697925, 17.444040>,  <9.975492, 13.779470, 17.234276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.644812, 13.697925, 17.444040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509469, -0.124300, -0.851464,
		0.238767, -0.971076, -0.001104,
		-0.826699, -0.203864, 0.524412,
		9.396802, 13.636765, 17.601364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.636064, 13.984911, 17.373121>,  <9.975492, 13.779470, 17.234276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.636064, 13.984911, 17.373121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.790749, 14.223873, 17.092106>,  <10.883559, 14.367250, 16.923496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.790749, 14.223873, 17.092106>,  <10.636064, 13.984911, 17.373121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.790749, 14.223873, 17.092106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840575, 0.085009, 0.534983,
		0.379324, -0.797420, -0.469291,
		0.386712, 0.597406, -0.702538,
		10.906762, 14.403095, 16.881344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.364861, 13.764302, 17.201353>,  <10.636064, 13.984911, 17.373121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.364861, 13.764302, 17.201353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.297789, 14.152590, 17.132547>,  <11.257545, 14.385562, 17.091263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.297789, 14.152590, 17.132547>,  <11.364861, 13.764302, 17.201353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.297789, 14.152590, 17.132547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876203, 0.226718, 0.425284,
		0.451830, -0.079407, -0.888563,
		-0.167683, 0.970718, -0.172015,
		11.247484, 14.443805, 17.080942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.037433, 14.016328, 17.016460>,  <11.364861, 13.764302, 17.201353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.037433, 14.016328, 17.016460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.832211, 14.343680, 17.120022>,  <11.709079, 14.540092, 17.182158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.832211, 14.343680, 17.120022>,  <12.037433, 14.016328, 17.016460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832211, 14.343680, 17.120022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858321, 0.491898, 0.146017,
		-0.007856, 0.297136, -0.954803,
		-0.513053, 0.818380, 0.258902,
		11.678296, 14.589194, 17.197693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.413204, 14.609930, 16.843967>,  <12.037433, 14.016328, 17.016460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.413204, 14.609930, 16.843967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.161279, 14.810081, 17.081608>,  <12.010123, 14.930173, 17.224192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.161279, 14.810081, 17.081608>,  <12.413204, 14.609930, 16.843967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.161279, 14.810081, 17.081608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766859, 0.522209, 0.373128,
		-0.123539, 0.690593, -0.712615,
		-0.629813, 0.500379, 0.594101,
		11.972335, 14.960196, 17.259838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.615418, 15.279159, 16.804108>,  <12.413204, 14.609930, 16.843967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.615418, 15.279159, 16.804108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.427632, 15.254837, 17.156450>,  <12.314960, 15.240244, 17.367855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.427632, 15.254837, 17.156450>,  <12.615418, 15.279159, 16.804108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.427632, 15.254837, 17.156450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772177, 0.455525, 0.442989,
		-0.428186, 0.888144, -0.166902,
		-0.469466, -0.060804, 0.880854,
		12.286793, 15.236596, 17.420706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.892231, 15.883482, 17.191702>,  <12.615418, 15.279159, 16.804108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.892231, 15.883482, 17.191702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.686258, 15.681241, 17.468603>,  <12.562675, 15.559896, 17.634745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.686258, 15.681241, 17.468603>,  <12.892231, 15.883482, 17.191702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.686258, 15.681241, 17.468603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583120, 0.385331, 0.715187,
		-0.628345, 0.771938, 0.096407,
		-0.514931, -0.505601, 0.692253,
		12.531779, 15.529561, 17.676279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.737171, 16.346029, 17.758204>,  <12.892231, 15.883482, 17.191702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.737171, 16.346029, 17.758204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715498, 15.986733, 17.932667>,  <12.702494, 15.771156, 18.037344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715498, 15.986733, 17.932667>,  <12.737171, 16.346029, 17.758204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715498, 15.986733, 17.932667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565987, 0.332227, 0.754510,
		-0.822632, 0.287742, 0.490389,
		-0.054184, -0.898237, 0.436158,
		12.699243, 15.717262, 18.063515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.531142, 16.432281, 18.510746>,  <12.737171, 16.346029, 17.758204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.531142, 16.432281, 18.510746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733163, 16.087925, 18.486135>,  <12.854375, 15.881310, 18.471369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733163, 16.087925, 18.486135>,  <12.531142, 16.432281, 18.510746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733163, 16.087925, 18.486135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504713, 0.236761, 0.830186,
		-0.700134, -0.450340, 0.554081,
		0.505051, -0.860894, -0.061528,
		12.884678, 15.829657, 18.467676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.484362, 16.193586, 19.173634>,  <12.531142, 16.432281, 18.510746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.484362, 16.193586, 19.173634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.795712, 15.986927, 19.030968>,  <12.982521, 15.862931, 18.945368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.795712, 15.986927, 19.030968>,  <12.484362, 16.193586, 19.173634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.795712, 15.986927, 19.030968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482026, 0.127838, 0.866780,
		-0.402225, -0.846601, 0.348543,
		0.778374, -0.516648, -0.356664,
		13.029223, 15.831933, 18.923969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.678840, 15.622985, 19.669645>,  <12.484362, 16.193586, 19.173634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.678840, 15.622985, 19.669645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.998265, 15.717334, 19.448137>,  <13.189920, 15.773943, 19.315233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.998265, 15.717334, 19.448137>,  <12.678840, 15.622985, 19.669645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.998265, 15.717334, 19.448137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575361, -0.028909, 0.817389,
		0.176791, -0.971354, -0.158798,
		0.798564, 0.235873, -0.553768,
		13.237835, 15.788095, 19.282007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231945, 15.152942, 19.879807>,  <12.678840, 15.622985, 19.669645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231945, 15.152942, 19.879807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.408508, 15.458302, 19.691177>,  <13.514446, 15.641518, 19.578001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.408508, 15.458302, 19.691177>,  <13.231945, 15.152942, 19.879807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.408508, 15.458302, 19.691177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561759, 0.174703, 0.808644,
		0.699704, -0.621850, -0.351732,
		0.441408, 0.763401, -0.471570,
		13.540931, 15.687322, 19.549706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.906719, 15.000274, 19.968414>,  <13.231945, 15.152942, 19.879807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.906719, 15.000274, 19.968414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885980, 15.388784, 19.875521>,  <13.873536, 15.621891, 19.819784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885980, 15.388784, 19.875521>,  <13.906719, 15.000274, 19.968414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885980, 15.388784, 19.875521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538651, 0.223017, 0.812477,
		0.840932, -0.082965, -0.534742,
		-0.051849, 0.971277, -0.232232,
		13.870425, 15.680168, 19.805851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.541621, 15.173092, 19.951595>,  <13.906719, 15.000274, 19.968414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.541621, 15.173092, 19.951595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.354788, 15.524050, 19.995440>,  <14.242688, 15.734624, 20.021746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.354788, 15.524050, 19.995440>,  <14.541621, 15.173092, 19.951595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.354788, 15.524050, 19.995440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535695, 0.182173, 0.824526,
		0.703466, 0.443840, -0.555105,
		-0.467083, 0.877393, 0.109610,
		14.214663, 15.787268, 20.028322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048450, 15.598750, 20.217686>,  <14.541621, 15.173092, 19.951595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.048450, 15.598750, 20.217686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722354, 15.806414, 20.320339>,  <14.526697, 15.931012, 20.381931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722354, 15.806414, 20.320339>,  <15.048450, 15.598750, 20.217686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722354, 15.806414, 20.320339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447370, 0.283152, 0.848343,
		0.367759, 0.806411, -0.463092,
		-0.815238, 0.519159, 0.256632,
		14.477782, 15.962161, 20.397329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279891, 16.184004, 20.474854>,  <15.048450, 15.598750, 20.217686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279891, 16.184004, 20.474854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.917968, 16.148914, 20.641529>,  <14.700814, 16.127861, 20.741533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.917968, 16.148914, 20.641529>,  <15.279891, 16.184004, 20.474854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.917968, 16.148914, 20.641529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367101, 0.335169, 0.867697,
		-0.215779, 0.938065, -0.271060,
		-0.904807, -0.087724, 0.416687,
		14.646525, 16.122597, 20.766535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259599, 16.831135, 20.896994>,  <15.279891, 16.184004, 20.474854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259599, 16.831135, 20.896994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955070, 16.610472, 21.033264>,  <14.772353, 16.478073, 21.115026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955070, 16.610472, 21.033264>,  <15.259599, 16.831135, 20.896994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.955070, 16.610472, 21.033264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228795, 0.263056, 0.937259,
		-0.606665, 0.791501, -0.074054,
		-0.761321, -0.551659, 0.340679,
		14.726674, 16.444975, 21.135468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.719026, 17.281210, 21.260958>,  <15.259599, 16.831135, 20.896994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.719026, 17.281210, 21.260958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.706327, 16.906792, 21.401133>,  <14.698709, 16.682140, 21.485237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.706327, 16.906792, 21.401133>,  <14.719026, 17.281210, 21.260958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706327, 16.906792, 21.401133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033124, 0.349437, 0.936374,
		-0.998947, 0.041334, 0.019913,
		-0.031746, -0.936048, 0.350438,
		14.696804, 16.625977, 21.506264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522886, 17.364565, 21.833799>,  <14.719026, 17.281210, 21.260958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.522886, 17.364565, 21.833799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614743, 16.983097, 21.911551>,  <14.669857, 16.754217, 21.958200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614743, 16.983097, 21.911551>,  <14.522886, 17.364565, 21.833799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614743, 16.983097, 21.911551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175827, 0.237080, 0.955446,
		-0.957262, -0.185234, 0.222124,
		0.229642, -0.953668, 0.194378,
		14.683636, 16.696997, 21.969864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.240517, 17.243725, 22.548742>,  <14.522886, 17.364565, 21.833799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.240517, 17.243725, 22.548742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.525021, 16.969910, 22.484848>,  <14.695723, 16.805620, 22.446510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.525021, 16.969910, 22.484848>,  <14.240517, 17.243725, 22.548742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.525021, 16.969910, 22.484848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384593, 0.188754, 0.903582,
		-0.588386, -0.704115, 0.397522,
		0.711259, -0.684539, -0.159738,
		14.738399, 16.764547, 22.436926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.257748, 16.958450, 23.113667>,  <14.240517, 17.243725, 22.548742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.257748, 16.958450, 23.113667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.617000, 16.862947, 22.965961>,  <14.832551, 16.805645, 22.877338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.617000, 16.862947, 22.965961>,  <14.257748, 16.958450, 23.113667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.617000, 16.862947, 22.965961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396021, 0.074191, 0.915239,
		-0.191125, -0.968241, 0.161186,
		0.898131, -0.238759, -0.369264,
		14.886438, 16.791321, 22.855183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.548476, 16.623928, 23.637714>,  <14.257748, 16.958450, 23.113667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.548476, 16.623928, 23.637714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866257, 16.689617, 23.403833>,  <15.056925, 16.729031, 23.263504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866257, 16.689617, 23.403833>,  <14.548476, 16.623928, 23.637714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.866257, 16.689617, 23.403833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596063, -0.026271, 0.802508,
		0.116430, -0.986073, -0.118759,
		0.794451, 0.164224, -0.584703,
		15.104592, 16.738884, 23.228422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.983292, 16.064083, 23.615900>,  <14.548476, 16.623928, 23.637714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.983292, 16.064083, 23.615900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.213556, 16.384912, 23.552288>,  <15.351715, 16.577410, 23.514120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.213556, 16.384912, 23.552288>,  <14.983292, 16.064083, 23.615900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.213556, 16.384912, 23.552288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432514, -0.133626, 0.891670,
		0.693935, -0.582083, -0.423832,
		0.575661, 0.802075, -0.159032,
		15.386254, 16.625534, 23.504578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620862, 15.948176, 23.926180>,  <14.983292, 16.064083, 23.615900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620862, 15.948176, 23.926180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.644090, 16.346308, 23.895323>,  <15.658026, 16.585186, 23.876808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.644090, 16.346308, 23.895323>,  <15.620862, 15.948176, 23.926180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.644090, 16.346308, 23.895323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536755, 0.034025, 0.843052,
		0.841738, -0.090361, -0.532271,
		0.058068, 0.995328, -0.077142,
		15.661510, 16.644907, 23.872181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171698, 16.035116, 24.443396>,  <15.620862, 15.948176, 23.926180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171698, 16.035116, 24.443396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046984, 16.399549, 24.335531>,  <15.972156, 16.618210, 24.270813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046984, 16.399549, 24.335531>,  <16.171698, 16.035116, 24.443396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046984, 16.399549, 24.335531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457187, 0.392645, 0.798004,
		0.832929, 0.125519, -0.538956,
		-0.311783, 0.911085, -0.269660,
		15.953449, 16.672874, 24.254633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784481, 16.472694, 24.425631>,  <16.171698, 16.035116, 24.443396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784481, 16.472694, 24.425631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462332, 16.695292, 24.507301>,  <16.269041, 16.828850, 24.556303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462332, 16.695292, 24.507301>,  <16.784481, 16.472694, 24.425631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462332, 16.695292, 24.507301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427913, 0.307456, 0.849919,
		0.410198, 0.771873, -0.485747,
		-0.805375, 0.556492, 0.204176,
		16.220718, 16.862240, 24.568554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110388, 17.117731, 24.688810>,  <16.784481, 16.472694, 24.425631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.110388, 17.117731, 24.688810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.727509, 17.120678, 24.804546>,  <16.497782, 17.122446, 24.873989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.727509, 17.120678, 24.804546>,  <17.110388, 17.117731, 24.688810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727509, 17.120678, 24.804546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248263, 0.534794, 0.807688,
		-0.148789, 0.844950, -0.513733,
		-0.957198, 0.007365, 0.289341,
		16.440350, 17.122887, 24.891348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908678, 17.781549, 24.866821>,  <17.110388, 17.117731, 24.688810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908678, 17.781549, 24.866821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.670443, 17.518730, 25.051670>,  <16.527500, 17.361038, 25.162580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.670443, 17.518730, 25.051670>,  <16.908678, 17.781549, 24.866821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.670443, 17.518730, 25.051670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348745, 0.306745, 0.885598,
		-0.723636, 0.688617, 0.046448,
		-0.595591, -0.657049, 0.462124,
		16.491766, 17.321615, 25.190308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691774, 18.111559, 25.400955>,  <16.908678, 17.781549, 24.866821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.691774, 18.111559, 25.400955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.573730, 17.748228, 25.519514>,  <16.502905, 17.530230, 25.590651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.573730, 17.748228, 25.519514>,  <16.691774, 18.111559, 25.400955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573730, 17.748228, 25.519514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143745, 0.264476, 0.953619,
		-0.944589, 0.324027, 0.052519,
		-0.295109, -0.908327, 0.296399,
		16.485197, 17.475729, 25.608433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207752, 18.223066, 25.867821>,  <16.691774, 18.111559, 25.400955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207752, 18.223066, 25.867821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.374193, 17.867357, 25.943771>,  <16.474058, 17.653933, 25.989342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.374193, 17.867357, 25.943771>,  <16.207752, 18.223066, 25.867821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.374193, 17.867357, 25.943771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111533, 0.257148, 0.959914,
		-0.902451, -0.378247, 0.206183,
		0.416104, -0.889271, 0.189877,
		16.499025, 17.600576, 26.000734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002893, 18.059946, 26.613832>,  <16.207752, 18.223066, 25.867821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002893, 18.059946, 26.613832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275087, 17.773621, 26.551155>,  <16.438404, 17.601826, 26.513550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275087, 17.773621, 26.551155>,  <16.002893, 18.059946, 26.613832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275087, 17.773621, 26.551155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129744, -0.092758, 0.987199,
		-0.721186, -0.692102, 0.029752,
		0.680483, -0.715814, -0.156692,
		16.479233, 17.558876, 26.504147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781169, 17.434942, 26.991453>,  <16.002893, 18.059946, 26.613832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781169, 17.434942, 26.991453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177748, 17.415749, 26.942902>,  <16.415695, 17.404232, 26.913771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177748, 17.415749, 26.942902>,  <15.781169, 17.434942, 26.991453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.177748, 17.415749, 26.942902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114387, -0.128379, 0.985106,
		-0.062848, -0.990564, -0.121793,
		0.991446, -0.047980, -0.121376,
		16.475182, 17.401354, 26.906488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013132, 16.690630, 27.230606>,  <15.781169, 17.434942, 26.991453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013132, 16.690630, 27.230606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252550, 17.006912, 27.282028>,  <16.396202, 17.196682, 27.312881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252550, 17.006912, 27.282028>,  <16.013132, 16.690630, 27.230606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252550, 17.006912, 27.282028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186142, -0.018808, 0.982343,
		0.779161, -0.611908, 0.135926,
		0.598547, 0.790705, 0.128556,
		16.432114, 17.244123, 27.320595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492014, 16.504717, 27.673344>,  <16.013132, 16.690630, 27.230606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492014, 16.504717, 27.673344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416857, 16.897156, 27.691879>,  <16.371763, 17.132618, 27.703001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416857, 16.897156, 27.691879>,  <16.492014, 16.504717, 27.673344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416857, 16.897156, 27.691879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405846, -0.120515, 0.905961,
		0.894420, 0.151415, 0.420817,
		-0.187891, 0.981096, 0.046340,
		16.360489, 17.191484, 27.705782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693218, 16.845284, 28.397570>,  <16.492014, 16.504717, 27.673344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693218, 16.845284, 28.397570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396700, 17.013205, 28.188095>,  <16.218788, 17.113956, 28.062410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396700, 17.013205, 28.188095>,  <16.693218, 16.845284, 28.397570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396700, 17.013205, 28.188095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518065, 0.138176, 0.844107,
		0.426718, 0.897036, 0.115055,
		-0.741297, 0.419801, -0.523686,
		16.174311, 17.139145, 28.030989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531454, 17.555315, 28.619808>,  <16.693218, 16.845284, 28.397570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531454, 17.555315, 28.619808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.204552, 17.428156, 28.427544>,  <16.008411, 17.351860, 28.312185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.204552, 17.428156, 28.427544>,  <16.531454, 17.555315, 28.619808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.204552, 17.428156, 28.427544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549601, 0.179129, 0.815997,
		-0.173302, 0.931050, -0.321111,
		-0.817254, -0.317897, -0.480663,
		15.959375, 17.332787, 28.283344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008608, 18.055098, 28.583101>,  <16.531454, 17.555315, 28.619808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008608, 18.055098, 28.583101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838988, 17.693045, 28.595253>,  <15.737217, 17.475813, 28.602545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838988, 17.693045, 28.595253>,  <16.008608, 18.055098, 28.583101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838988, 17.693045, 28.595253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520915, 0.271211, 0.809378,
		-0.740831, 0.327390, -0.586502,
		-0.424048, -0.905130, 0.030379,
		15.711774, 17.421505, 28.604366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.354157, 18.231573, 28.664185>,  <16.008608, 18.055098, 28.583101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.354157, 18.231573, 28.664185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.404182, 17.860441, 28.804749>,  <15.434197, 17.637762, 28.889086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.404182, 17.860441, 28.804749>,  <15.354157, 18.231573, 28.664185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.404182, 17.860441, 28.804749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621424, 0.202853, 0.756758,
		-0.773428, -0.313016, -0.551208,
		0.125063, -0.927832, 0.351408,
		15.441701, 17.582092, 28.910172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.403540, 18.507633, 29.323578>,  <15.354157, 18.231573, 28.664185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.403540, 18.507633, 29.323578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.290448, 18.884268, 29.396769>,  <15.222593, 19.110249, 29.440683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.290448, 18.884268, 29.396769>,  <15.403540, 18.507633, 29.323578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.290448, 18.884268, 29.396769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380788, 0.064905, -0.922382,
		-0.880378, -0.330457, 0.340194,
		-0.282728, 0.941587, 0.182975,
		15.205630, 19.166744, 29.451660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.566870, 18.733456, 29.303200>,  <15.403540, 18.507633, 29.323578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.566870, 18.733456, 29.303200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.795177, 19.045021, 29.199263>,  <14.932162, 19.231960, 29.136900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.795177, 19.045021, 29.199263>,  <14.566870, 18.733456, 29.303200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.795177, 19.045021, 29.199263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637127, 0.220497, -0.738546,
		-0.517967, 0.587092, 0.622119,
		0.570770, 0.778911, -0.259842,
		14.966409, 19.278694, 29.121309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018508, 19.310814, 29.265259>,  <14.566870, 18.733456, 29.303200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018508, 19.310814, 29.265259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.350375, 19.410557, 29.065470>,  <14.549496, 19.470402, 28.945597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.350375, 19.410557, 29.065470>,  <14.018508, 19.310814, 29.265259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350375, 19.410557, 29.065470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558124, 0.390150, -0.732312,
		0.012262, 0.886343, 0.462867,
		0.829667, 0.249358, -0.499473,
		14.599276, 19.485365, 28.915628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869697, 19.922506, 28.975168>,  <14.018508, 19.310814, 29.265259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869697, 19.922506, 28.975168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.188169, 19.792124, 28.771267>,  <14.379251, 19.713894, 28.648926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.188169, 19.792124, 28.771267>,  <13.869697, 19.922506, 28.975168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.188169, 19.792124, 28.771267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386320, 0.374553, -0.842892,
		0.465675, 0.868023, 0.172289,
		0.796181, -0.325955, -0.509754,
		14.427023, 19.694338, 28.618341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.965816, 20.480795, 28.488697>,  <13.869697, 19.922506, 28.975168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.965816, 20.480795, 28.488697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.140698, 20.146860, 28.354891>,  <14.245627, 19.946499, 28.274607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.140698, 20.146860, 28.354891>,  <13.965816, 20.480795, 28.488697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140698, 20.146860, 28.354891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384258, 0.162894, -0.908742,
		0.813140, 0.525847, -0.249574,
		0.437205, -0.834836, -0.334516,
		14.271860, 19.896410, 28.254536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.207890, 20.658783, 27.877668>,  <13.965816, 20.480795, 28.488697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.207890, 20.658783, 27.877668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192458, 20.261881, 27.830437>,  <14.183200, 20.023739, 27.802097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192458, 20.261881, 27.830437>,  <14.207890, 20.658783, 27.877668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192458, 20.261881, 27.830437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428827, 0.123171, -0.894950,
		0.902562, 0.016110, -0.430257,
		-0.038577, -0.992255, -0.118078,
		14.180885, 19.964205, 27.795013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.566571, 20.434587, 27.298223>,  <14.207890, 20.658783, 27.877668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.566571, 20.434587, 27.298223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.307937, 20.135193, 27.357138>,  <14.152756, 19.955555, 27.392487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.307937, 20.135193, 27.357138>,  <14.566571, 20.434587, 27.298223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307937, 20.135193, 27.357138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257485, 0.032393, -0.965739,
		0.718073, -0.662357, -0.213669,
		-0.646585, -0.748488, 0.147287,
		14.113961, 19.910646, 27.401323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590567, 20.089737, 26.794086>,  <14.566571, 20.434587, 27.298223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590567, 20.089737, 26.794086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243556, 19.936628, 26.921135>,  <14.035349, 19.844763, 26.997364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243556, 19.936628, 26.921135>,  <14.590567, 20.089737, 26.794086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243556, 19.936628, 26.921135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292014, -0.124986, -0.948212,
		0.402647, -0.915349, -0.003346,
		-0.867527, -0.382771, 0.317620,
		13.983297, 19.821796, 27.016420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.431567, 19.693014, 26.309145>,  <14.590567, 20.089737, 26.794086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.431567, 19.693014, 26.309145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.083155, 19.703184, 26.505373>,  <13.874107, 19.709286, 26.623110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.083155, 19.703184, 26.505373>,  <14.431567, 19.693014, 26.309145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.083155, 19.703184, 26.505373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458675, -0.399594, -0.793689,
		0.175848, -0.916340, 0.359721,
		-0.871031, 0.025427, 0.490570,
		13.821845, 19.710812, 26.652544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.366879, 19.094614, 25.966715>,  <14.431567, 19.693014, 26.309145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.366879, 19.094614, 25.966715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.032099, 19.271324, 26.095926>,  <13.831230, 19.377350, 26.173452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.032099, 19.271324, 26.095926>,  <14.366879, 19.094614, 25.966715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.032099, 19.271324, 26.095926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489998, -0.342012, -0.801829,
		-0.243745, -0.829377, 0.502715,
		-0.836953, 0.441772, 0.323029,
		13.781013, 19.403856, 26.192835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.769149, 18.589544, 26.043940>,  <14.366879, 19.094614, 25.966715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.769149, 18.589544, 26.043940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607915, 18.953133, 26.001427>,  <13.511174, 19.171286, 25.975920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607915, 18.953133, 26.001427>,  <13.769149, 18.589544, 26.043940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607915, 18.953133, 26.001427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591103, -0.347250, -0.728021,
		-0.698655, -0.230631, 0.677267,
		-0.403085, 0.908970, -0.106282,
		13.486989, 19.225824, 25.969542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.148000, 18.416815, 25.892391>,  <13.769149, 18.589544, 26.043940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.148000, 18.416815, 25.892391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134908, 18.801117, 25.782209>,  <13.127052, 19.031698, 25.716101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134908, 18.801117, 25.782209>,  <13.148000, 18.416815, 25.892391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.134908, 18.801117, 25.782209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272683, -0.273732, -0.922342,
		-0.961547, 0.044925, 0.270941,
		-0.032729, 0.960756, -0.275456,
		13.125089, 19.089344, 25.699572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540000, 18.401056, 25.447573>,  <13.148000, 18.416815, 25.892391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.540000, 18.401056, 25.447573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747387, 18.725735, 25.339989>,  <12.871819, 18.920542, 25.275438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747387, 18.725735, 25.339989>,  <12.540000, 18.401056, 25.447573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747387, 18.725735, 25.339989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307408, -0.116582, -0.944409,
		-0.797930, 0.572325, 0.189079,
		0.518466, 0.811697, -0.268962,
		12.902926, 18.969244, 25.259300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.021858, 18.881746, 25.198666>,  <12.540000, 18.401056, 25.447573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.021858, 18.881746, 25.198666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.361952, 18.968430, 25.006773>,  <12.566008, 19.020439, 24.891638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.361952, 18.968430, 25.006773>,  <12.021858, 18.881746, 25.198666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.361952, 18.968430, 25.006773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410738, -0.296879, -0.862066,
		-0.329237, 0.930001, -0.163407,
		0.850234, 0.216706, -0.479730,
		12.617023, 19.033442, 24.862854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.750975, 19.225695, 24.724749>,  <12.021858, 18.881746, 25.198666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.750975, 19.225695, 24.724749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.123255, 19.134199, 24.610573>,  <12.346622, 19.079302, 24.542067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.123255, 19.134199, 24.610573>,  <11.750975, 19.225695, 24.724749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.123255, 19.134199, 24.610573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312672, -0.092531, -0.945343,
		0.189825, 0.969080, -0.157639,
		0.930700, -0.228739, -0.285439,
		12.402465, 19.065577, 24.524940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034727, 19.603149, 24.126190>,  <11.750975, 19.225695, 24.724749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.034727, 19.603149, 24.126190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.227811, 19.253284, 24.108501>,  <12.343661, 19.043365, 24.097889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.227811, 19.253284, 24.108501>,  <12.034727, 19.603149, 24.126190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.227811, 19.253284, 24.108501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231781, -0.078895, -0.969563,
		0.844552, 0.478268, -0.240814,
		0.482710, -0.874663, -0.044223,
		12.372624, 18.990885, 24.095234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317938, 19.684778, 23.512642>,  <12.034727, 19.603149, 24.126190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.317938, 19.684778, 23.512642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374275, 19.295502, 23.585375>,  <12.408077, 19.061935, 23.629015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374275, 19.295502, 23.585375>,  <12.317938, 19.684778, 23.512642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.374275, 19.295502, 23.585375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052052, -0.176129, -0.982990,
		0.988663, 0.147912, 0.025850,
		0.140843, -0.973191, 0.181832,
		12.416528, 19.003544, 23.639925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909016, 19.601887, 23.134888>,  <12.317938, 19.684778, 23.512642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909016, 19.601887, 23.134888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780196, 19.233109, 23.220959>,  <12.702905, 19.011841, 23.272602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780196, 19.233109, 23.220959>,  <12.909016, 19.601887, 23.134888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780196, 19.233109, 23.220959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411625, -0.341039, -0.845138,
		0.852554, -0.183604, 0.489327,
		-0.322050, -0.921945, 0.215178,
		12.683581, 18.956526, 23.285513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.487965, 19.196680, 23.066996>,  <12.909016, 19.601887, 23.134888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.487965, 19.196680, 23.066996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.174854, 18.949331, 23.039055>,  <12.986988, 18.800922, 23.022291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.174854, 18.949331, 23.039055>,  <13.487965, 19.196680, 23.066996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.174854, 18.949331, 23.039055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468806, -0.512153, -0.719667,
		0.409247, -0.596084, 0.690797,
		-0.782776, -0.618371, -0.069850,
		12.940022, 18.763821, 23.018099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794011, 18.567762, 22.920521>,  <13.487965, 19.196680, 23.066996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794011, 18.567762, 22.920521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418669, 18.546803, 22.783852>,  <13.193463, 18.534227, 22.701849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418669, 18.546803, 22.783852>,  <13.794011, 18.567762, 22.920521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418669, 18.546803, 22.783852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338218, -0.343305, -0.876214,
		-0.071385, -0.937761, 0.339865,
		-0.938357, -0.052400, -0.341675,
		13.137162, 18.531082, 22.681349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.749895, 17.930372, 22.593212>,  <13.794011, 18.567762, 22.920521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.749895, 17.930372, 22.593212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.452324, 18.133307, 22.419231>,  <13.273782, 18.255068, 22.314844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.452324, 18.133307, 22.419231>,  <13.749895, 17.930372, 22.593212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.452324, 18.133307, 22.419231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393498, -0.193498, -0.898731,
		-0.540122, -0.839742, -0.055688,
		-0.743927, 0.507338, -0.434950,
		13.229146, 18.285507, 22.288746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.640182, 17.541090, 22.010328>,  <13.749895, 17.930372, 22.593212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.640182, 17.541090, 22.010328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.453526, 17.885208, 21.928215>,  <13.341532, 18.091679, 21.878948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.453526, 17.885208, 21.928215>,  <13.640182, 17.541090, 22.010328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.453526, 17.885208, 21.928215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184220, -0.132470, -0.973917,
		-0.865049, -0.492287, -0.096668,
		-0.466641, 0.860294, -0.205282,
		13.313533, 18.143297, 21.866631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.345620, 17.387163, 21.409138>,  <13.640182, 17.541090, 22.010328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.345620, 17.387163, 21.409138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.368430, 17.785028, 21.443539>,  <13.382116, 18.023746, 21.464180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.368430, 17.785028, 21.443539>,  <13.345620, 17.387163, 21.409138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.368430, 17.785028, 21.443539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153680, 0.076372, -0.985165,
		-0.986474, 0.069397, -0.148504,
		0.057026, 0.994662, 0.086004,
		13.385538, 18.083427, 21.469339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985126, 17.631227, 20.835497>,  <13.345620, 17.387163, 21.409138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985126, 17.631227, 20.835497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221108, 17.937801, 20.937109>,  <13.362698, 18.121746, 20.998075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221108, 17.937801, 20.937109>,  <12.985126, 17.631227, 20.835497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.221108, 17.937801, 20.937109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150740, 0.204536, -0.967183,
		-0.793239, 0.608888, 0.005135,
		0.589957, 0.766433, 0.254030,
		13.398095, 18.167732, 21.013317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631605, 18.323009, 20.507889>,  <12.985126, 17.631227, 20.835497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.631605, 18.323009, 20.507889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.010289, 18.380957, 20.622957>,  <13.237499, 18.415726, 20.691998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.010289, 18.380957, 20.622957>,  <12.631605, 18.323009, 20.507889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.010289, 18.380957, 20.622957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216665, 0.374425, -0.901589,
		-0.238323, 0.915871, 0.323084,
		0.946709, 0.144868, 0.287671,
		13.294302, 18.424417, 20.709259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730890, 18.969238, 20.211979>,  <12.631605, 18.323009, 20.507889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.730890, 18.969238, 20.211979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.088154, 18.802752, 20.280132>,  <13.302512, 18.702860, 20.321024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.088154, 18.802752, 20.280132>,  <12.730890, 18.969238, 20.211979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.088154, 18.802752, 20.280132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320363, 0.322910, -0.890560,
		0.315648, 0.849996, 0.421751,
		0.893160, -0.416217, 0.170381,
		13.356102, 18.677887, 20.331247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385909, 19.343584, 19.880096>,  <12.730890, 18.969238, 20.211979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385909, 19.343584, 19.880096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554351, 18.985886, 19.940752>,  <13.655416, 18.771267, 19.977146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554351, 18.985886, 19.940752>,  <13.385909, 19.343584, 19.880096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.554351, 18.985886, 19.940752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425228, 0.046970, -0.903867,
		0.801156, 0.445105, 0.400037,
		0.421105, -0.894246, 0.151641,
		13.680682, 18.717611, 19.986244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.048076, 19.366886, 19.699745>,  <13.385909, 19.343584, 19.880096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.048076, 19.366886, 19.699745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953152, 18.981945, 19.646732>,  <13.896197, 18.750980, 19.614925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953152, 18.981945, 19.646732>,  <14.048076, 19.366886, 19.699745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953152, 18.981945, 19.646732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546615, -0.019502, -0.837157,
		0.803054, -0.271108, 0.530664,
		-0.237309, -0.962351, -0.132531,
		13.881959, 18.693239, 19.606974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631472, 19.063387, 19.460752>,  <14.048076, 19.366886, 19.699745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631472, 19.063387, 19.460752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407393, 18.742289, 19.378992>,  <14.272946, 18.549629, 19.329935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407393, 18.742289, 19.378992>,  <14.631472, 19.063387, 19.460752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.407393, 18.742289, 19.378992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652921, -0.276042, -0.705334,
		0.509779, -0.528584, 0.678766,
		-0.560196, -0.802745, -0.204403,
		14.239335, 18.501465, 19.317671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908294, 18.357491, 19.435198>,  <14.631472, 19.063387, 19.460752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908294, 18.357491, 19.435198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.596140, 18.303562, 19.190960>,  <14.408848, 18.271206, 19.044418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.596140, 18.303562, 19.190960>,  <14.908294, 18.357491, 19.435198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596140, 18.303562, 19.190960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624646, -0.212733, -0.751373,
		-0.028594, -0.967765, 0.250228,
		-0.780384, -0.134819, -0.610593,
		14.362024, 18.263117, 19.007782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009336, 17.646982, 19.115093>,  <14.908294, 18.357491, 19.435198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009336, 17.646982, 19.115093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772980, 17.868750, 18.880669>,  <14.631166, 18.001810, 18.740015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772980, 17.868750, 18.880669>,  <15.009336, 17.646982, 19.115093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772980, 17.868750, 18.880669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611230, -0.166466, -0.773749,
		-0.526539, -0.815420, -0.240514,
		-0.590893, 0.554418, -0.586060,
		14.595712, 18.035074, 18.704851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019726, 17.299673, 18.403650>,  <15.009336, 17.646982, 19.115093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019726, 17.299673, 18.403650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883994, 17.671080, 18.343367>,  <14.802555, 17.893923, 18.307196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883994, 17.671080, 18.343367>,  <15.019726, 17.299673, 18.403650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883994, 17.671080, 18.343367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584662, 0.082672, -0.807054,
		-0.736904, -0.361970, -0.570921,
		-0.339328, 0.928517, -0.150709,
		14.782196, 17.949635, 18.298155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929486, 17.209984, 17.669760>,  <15.019726, 17.299673, 18.403650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929486, 17.209984, 17.669760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916802, 17.608442, 17.702473>,  <14.909192, 17.847517, 17.722101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916802, 17.608442, 17.702473>,  <14.929486, 17.209984, 17.669760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.916802, 17.608442, 17.702473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280639, 0.087408, -0.955825,
		-0.959289, -0.007357, -0.282329,
		-0.031710, 0.996146, 0.081784,
		14.907290, 17.907286, 17.727009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508821, 17.427393, 17.078228>,  <14.929486, 17.209984, 17.669760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508821, 17.427393, 17.078228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.732391, 17.741684, 17.184237>,  <14.866533, 17.930258, 17.247843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.732391, 17.741684, 17.184237>,  <14.508821, 17.427393, 17.078228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.732391, 17.741684, 17.184237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224207, 0.164505, -0.960557,
		-0.798331, 0.596300, -0.084219,
		0.558926, 0.785725, 0.265024,
		14.900069, 17.977402, 17.263744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.407756, 17.851183, 16.550943>,  <14.508821, 17.427393, 17.078228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.407756, 17.851183, 16.550943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740653, 17.976006, 16.734243>,  <14.940392, 18.050900, 16.844223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740653, 17.976006, 16.734243>,  <14.407756, 17.851183, 16.550943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.740653, 17.976006, 16.734243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475310, 0.023884, -0.879494,
		-0.285398, 0.949763, -0.128448,
		0.832243, 0.312059, 0.458248,
		14.990326, 18.069624, 16.871717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.596255, 18.477602, 16.127831>,  <14.407756, 17.851183, 16.550943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.596255, 18.477602, 16.127831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920134, 18.362104, 16.332190>,  <15.114461, 18.292805, 16.454805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920134, 18.362104, 16.332190>,  <14.596255, 18.477602, 16.127831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920134, 18.362104, 16.332190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554800, 0.092873, -0.826784,
		0.191281, 0.952891, 0.235395,
		0.809697, -0.288746, 0.510898,
		15.163043, 18.275480, 16.485458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.109718, 18.979008, 15.941584>,  <14.596255, 18.477602, 16.127831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.109718, 18.979008, 15.941584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277942, 18.635612, 16.058977>,  <15.378876, 18.429575, 16.129414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277942, 18.635612, 16.058977>,  <15.109718, 18.979008, 15.941584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277942, 18.635612, 16.058977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654600, 0.063141, -0.753334,
		0.628196, 0.508935, 0.588520,
		0.420558, -0.858486, 0.293484,
		15.404109, 18.378067, 16.147022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.819965, 19.158270, 15.853437>,  <15.109718, 18.979008, 15.941584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.819965, 19.158270, 15.853437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.794017, 18.759161, 15.859640>,  <15.778448, 18.519695, 15.863361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.794017, 18.759161, 15.859640>,  <15.819965, 19.158270, 15.853437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794017, 18.759161, 15.859640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638077, -0.053423, -0.768117,
		0.767235, -0.039934, 0.640121,
		-0.064871, -0.997773, 0.015507,
		15.774555, 18.459829, 15.864292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448736, 18.891684, 15.991188>,  <15.819965, 19.158270, 15.853437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448736, 18.891684, 15.991188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.253763, 18.591583, 15.812510>,  <16.136780, 18.411524, 15.705304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.253763, 18.591583, 15.812510>,  <16.448736, 18.891684, 15.991188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253763, 18.591583, 15.812510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706660, -0.038463, -0.706507,
		0.512875, -0.660036, 0.548919,
		-0.487433, -0.750249, -0.446694,
		16.107533, 18.366508, 15.678502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034235, 18.414696, 15.818597>,  <16.448736, 18.891684, 15.991188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.034235, 18.414696, 15.818597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.720903, 18.304384, 15.595763>,  <16.532904, 18.238197, 15.462063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.720903, 18.304384, 15.595763>,  <17.034235, 18.414696, 15.818597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.720903, 18.304384, 15.595763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611201, -0.178406, -0.771106,
		0.113268, -0.944519, 0.308307,
		-0.783329, -0.275779, -0.557083,
		16.485905, 18.221651, 15.428638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213173, 17.823881, 15.593932>,  <17.034235, 18.414696, 15.818597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213173, 17.823881, 15.593932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.938307, 17.921522, 15.320226>,  <16.773388, 17.980106, 15.156002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.938307, 17.921522, 15.320226>,  <17.213173, 17.823881, 15.593932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938307, 17.921522, 15.320226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643225, -0.233435, -0.729226,
		-0.337737, -0.941234, 0.003396,
		-0.687165, 0.244102, -0.684265,
		16.732157, 17.994753, 15.114946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201828, 17.300339, 15.075234>,  <17.213173, 17.823881, 15.593932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.201828, 17.300339, 15.075234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054811, 17.635269, 14.913346>,  <16.966600, 17.836227, 14.816214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054811, 17.635269, 14.913346>,  <17.201828, 17.300339, 15.075234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054811, 17.635269, 14.913346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674383, -0.059708, -0.735964,
		-0.640407, -0.543434, -0.542733,
		-0.367542, 0.837326, -0.404720,
		16.944550, 17.886467, 14.791930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102812, 17.226759, 14.331170>,  <17.201828, 17.300339, 15.075234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102812, 17.226759, 14.331170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163054, 17.620855, 14.363702>,  <17.199200, 17.857313, 14.383221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163054, 17.620855, 14.363702>,  <17.102812, 17.226759, 14.331170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163054, 17.620855, 14.363702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671629, -0.041604, -0.739718,
		-0.725418, 0.166030, -0.667983,
		0.150607, 0.985243, 0.081330,
		17.208235, 17.916428, 14.388101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.510994, 16.687223, 13.982942>,  <17.102812, 17.226759, 14.331170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.510994, 16.687223, 13.982942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682455, 16.801790, 13.640194>,  <17.785332, 16.870529, 13.434546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682455, 16.801790, 13.640194>,  <17.510994, 16.687223, 13.982942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682455, 16.801790, 13.640194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889178, 0.034285, 0.456276,
		0.160062, -0.957492, -0.239977,
		0.428653, 0.286415, -0.856868,
		17.811050, 16.887714, 13.383134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.952122, 16.149529, 13.770868>,  <17.510994, 16.687223, 13.982942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.952122, 16.149529, 13.770868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050482, 16.524101, 13.670763>,  <18.109497, 16.748844, 13.610700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050482, 16.524101, 13.670763>,  <17.952122, 16.149529, 13.770868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.050482, 16.524101, 13.670763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746851, -0.018465, 0.664735,
		0.617857, -0.350366, -0.703915,
		0.245899, 0.936431, -0.250262,
		18.124250, 16.805031, 13.595684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447060, 15.854873, 13.187024>,  <17.952122, 16.149529, 13.770868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.447060, 15.854873, 13.187024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823109, 15.988791, 13.161475>,  <19.048738, 16.069143, 13.146146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823109, 15.988791, 13.161475>,  <18.447060, 15.854873, 13.187024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823109, 15.988791, 13.161475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340484, -0.914002, 0.220617,
		0.015483, -0.229155, -0.973267,
		0.940123, 0.334798, -0.063872,
		19.105146, 16.089231, 13.142314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737867, 15.419256, 12.753741>,  <18.447060, 15.854873, 13.187024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737867, 15.419256, 12.753741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.030590, 15.569551, 12.981174>,  <19.206223, 15.659727, 13.117633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.030590, 15.569551, 12.981174>,  <18.737867, 15.419256, 12.753741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030590, 15.569551, 12.981174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329017, -0.925407, 0.188069,
		0.596833, 0.049443, -0.800841,
		0.731805, 0.375736, 0.568581,
		19.250132, 15.682271, 13.151748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.020985, 14.785137, 13.044383>,  <18.737867, 15.419256, 12.753741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.020985, 14.785137, 13.044383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.247927, 15.099842, 13.141635>,  <19.384092, 15.288665, 13.199986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.247927, 15.099842, 13.141635>,  <19.020985, 14.785137, 13.044383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.247927, 15.099842, 13.141635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658350, -0.610723, 0.439991,
		0.494654, -0.089566, -0.864462,
		0.567356, 0.786762, 0.243131,
		19.418133, 15.335871, 13.214574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523945, 14.518702, 13.369138>,  <19.020985, 14.785137, 13.044383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.523945, 14.518702, 13.369138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.663576, 14.888725, 13.429016>,  <19.747355, 15.110740, 13.464943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.663576, 14.888725, 13.429016>,  <19.523945, 14.518702, 13.369138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.663576, 14.888725, 13.429016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772547, -0.374503, 0.512756,
		0.530391, -0.063345, -0.845383,
		0.349079, 0.925059, 0.149696,
		19.768299, 15.166243, 13.473925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.778296, 13.872475, 13.234759>,  <19.523945, 14.518702, 13.369138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.778296, 13.872475, 13.234759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.845968, 13.486040, 13.156732>,  <19.886572, 13.254179, 13.109915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.845968, 13.486040, 13.156732>,  <19.778296, 13.872475, 13.234759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.845968, 13.486040, 13.156732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329180, 0.131168, -0.935113,
		0.928987, 0.222419, -0.295825,
		0.169184, -0.966087, -0.195069,
		19.896723, 13.196214, 13.098211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227926, 13.817059, 12.606519>,  <19.778296, 13.872475, 13.234759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227926, 13.817059, 12.606519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055672, 13.456763, 12.629219>,  <19.952318, 13.240586, 12.642839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055672, 13.456763, 12.629219>,  <20.227926, 13.817059, 12.606519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055672, 13.456763, 12.629219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283713, 0.075412, -0.955939,
		0.856772, -0.427763, -0.288027,
		-0.430637, -0.900739, 0.056751,
		19.926481, 13.186542, 12.646244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483990, 13.459484, 12.091434>,  <20.227926, 13.817059, 12.606519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483990, 13.459484, 12.091434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.138601, 13.279076, 12.181766>,  <19.931368, 13.170831, 12.235965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.138601, 13.279076, 12.181766>,  <20.483990, 13.459484, 12.091434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138601, 13.279076, 12.181766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235182, -0.036079, -0.971281,
		0.446218, -0.891783, -0.074919,
		-0.863469, -0.451023, 0.225831,
		19.879560, 13.143769, 12.249515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334917, 12.892992, 11.579137>,  <20.483990, 13.459484, 12.091434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334917, 12.892992, 11.579137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.985954, 13.007724, 11.737447>,  <19.776577, 13.076563, 11.832433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.985954, 13.007724, 11.737447>,  <20.334917, 12.892992, 11.579137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985954, 13.007724, 11.737447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369929, 0.141769, -0.918180,
		-0.319469, -0.947434, -0.017574,
		-0.872406, 0.286829, 0.395774,
		19.724232, 13.093772, 11.856179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809313, 12.707979, 11.007270>,  <20.334917, 12.892992, 11.579137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.809313, 12.707979, 11.007270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.617092, 12.965514, 11.245443>,  <19.501759, 13.120035, 11.388348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.617092, 12.965514, 11.245443>,  <19.809313, 12.707979, 11.007270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.617092, 12.965514, 11.245443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508425, 0.348678, -0.787354,
		-0.714543, -0.681100, 0.159785,
		-0.480553, 0.643837, 0.595434,
		19.472925, 13.158666, 11.424073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021860, 12.813235, 10.744661>,  <19.809313, 12.707979, 11.007270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021860, 12.813235, 10.744661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.120264, 13.123684, 10.976908>,  <19.179306, 13.309953, 11.116256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.120264, 13.123684, 10.976908>,  <19.021860, 12.813235, 10.744661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.120264, 13.123684, 10.976908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453350, 0.621600, -0.638817,
		-0.856710, -0.106067, 0.504775,
		0.246011, 0.776121, 0.580616,
		19.194067, 13.356520, 11.151093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.478931, 13.234484, 10.644593>,  <19.021860, 12.813235, 10.744661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.478931, 13.234484, 10.644593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.743282, 13.474307, 10.825156>,  <18.901894, 13.618201, 10.933495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.743282, 13.474307, 10.825156>,  <18.478931, 13.234484, 10.644593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.743282, 13.474307, 10.825156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236208, 0.737085, -0.633176,
		-0.712352, 0.311826, 0.628744,
		0.660878, 0.599559, 0.451408,
		18.941545, 13.654175, 10.960579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126490, 13.825607, 10.825636>,  <18.478931, 13.234484, 10.644593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126490, 13.825607, 10.825636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509464, 13.940170, 10.811283>,  <18.739248, 14.008908, 10.802671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509464, 13.940170, 10.811283>,  <18.126490, 13.825607, 10.825636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509464, 13.940170, 10.811283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246818, 0.747886, -0.616237,
		-0.149660, 0.598863, 0.786743,
		0.957435, 0.286408, -0.035881,
		18.796696, 14.026093, 10.800519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153185, 14.472088, 11.057465>,  <18.126490, 13.825607, 10.825636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153185, 14.472088, 11.057465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460737, 14.435538, 10.804334>,  <18.645269, 14.413609, 10.652455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460737, 14.435538, 10.804334>,  <18.153185, 14.472088, 11.057465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460737, 14.435538, 10.804334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396623, 0.708142, -0.584145,
		0.501507, 0.700132, 0.508237,
		0.768883, -0.091374, -0.632827,
		18.691402, 14.408126, 10.614486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316807, 15.132966, 11.038698>,  <18.153185, 14.472088, 11.057465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316807, 15.132966, 11.038698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.494965, 14.973424, 10.718064>,  <18.601860, 14.877699, 10.525684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.494965, 14.973424, 10.718064>,  <18.316807, 15.132966, 11.038698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.494965, 14.973424, 10.718064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247604, 0.805502, -0.538385,
		0.860416, 0.438270, 0.260008,
		0.445395, -0.398856, -0.801584,
		18.628584, 14.853767, 10.477589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640547, 15.681207, 10.811146>,  <18.316807, 15.132966, 11.038698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640547, 15.681207, 10.811146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.645531, 15.431383, 10.498795>,  <18.648521, 15.281488, 10.311384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.645531, 15.431383, 10.498795>,  <18.640547, 15.681207, 10.811146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.645531, 15.431383, 10.498795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199054, 0.763759, -0.614044,
		0.979909, 0.163087, -0.114806,
		0.012458, -0.624560, -0.780878,
		18.649267, 15.244015, 10.264531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091497, 15.954399, 10.407395>,  <18.640547, 15.681207, 10.811146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.091497, 15.954399, 10.407395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837412, 15.730392, 10.194650>,  <18.684959, 15.595987, 10.067002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837412, 15.730392, 10.194650>,  <19.091497, 15.954399, 10.407395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837412, 15.730392, 10.194650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178037, 0.776273, -0.604733,
		0.751529, -0.289449, -0.592809,
		-0.635222, -0.560017, -0.531860,
		18.646847, 15.562386, 10.035090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258406, 16.051069, 9.728533>,  <19.091497, 15.954399, 10.407395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258406, 16.051069, 9.728533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876188, 15.937929, 9.695221>,  <18.646858, 15.870046, 9.675234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876188, 15.937929, 9.695221>,  <19.258406, 16.051069, 9.728533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876188, 15.937929, 9.695221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168930, 0.756659, -0.631609,
		0.241665, -0.589460, -0.770801,
		-0.955542, -0.282849, -0.083280,
		18.589525, 15.853074, 9.670237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093615, 16.227207, 9.025203>,  <19.258406, 16.051069, 9.728533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093615, 16.227207, 9.025203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738081, 16.133549, 9.182759>,  <18.524761, 16.077353, 9.277293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738081, 16.133549, 9.182759>,  <19.093615, 16.227207, 9.025203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738081, 16.133549, 9.182759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416921, 0.769912, -0.483128,
		-0.190138, -0.593642, -0.781944,
		-0.888833, -0.234148, 0.393891,
		18.471432, 16.063305, 9.300926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.668638, 16.232805, 8.535976>,  <19.093615, 16.227207, 9.025203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.668638, 16.232805, 8.535976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.413866, 16.263926, 8.842771>,  <18.261003, 16.282597, 9.026847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.413866, 16.263926, 8.842771>,  <18.668638, 16.232805, 8.535976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413866, 16.263926, 8.842771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595006, 0.582995, -0.553249,
		-0.490191, -0.808742, -0.325036,
		-0.636930, 0.077800, 0.766986,
		18.222786, 16.287266, 9.072866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928417, 16.136261, 8.311666>,  <18.668638, 16.232805, 8.535976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.928417, 16.136261, 8.311666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.857811, 16.298506, 8.670403>,  <17.815447, 16.395853, 8.885644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.857811, 16.298506, 8.670403>,  <17.928417, 16.136261, 8.311666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857811, 16.298506, 8.670403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705541, 0.583188, -0.402621,
		-0.686334, -0.703826, 0.183234,
		-0.176516, 0.405612, 0.896840,
		17.804855, 16.420189, 8.939454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.230032, 16.256500, 8.348368>,  <17.928417, 16.136261, 8.311666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.230032, 16.256500, 8.348368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.351282, 16.511589, 8.631613>,  <17.424032, 16.664642, 8.801560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.351282, 16.511589, 8.631613>,  <17.230032, 16.256500, 8.348368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351282, 16.511589, 8.631613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711211, 0.645972, -0.277307,
		-0.634266, -0.419560, 0.649366,
		0.303125, 0.637723, 0.708113,
		17.442221, 16.702906, 8.844047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683407, 16.375200, 8.851152>,  <17.230032, 16.256500, 8.348368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683407, 16.375200, 8.851152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931820, 16.688618, 8.858917>,  <17.080868, 16.876669, 8.863576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931820, 16.688618, 8.858917>,  <16.683407, 16.375200, 8.851152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931820, 16.688618, 8.858917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774210, 0.617118, -0.140587,
		-0.122136, 0.072280, 0.989878,
		0.621033, 0.783544, 0.019412,
		17.118130, 16.923681, 8.864741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355614, 16.804886, 9.283644>,  <16.683407, 16.375200, 8.851152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355614, 16.804886, 9.283644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.610214, 17.039165, 9.082917>,  <16.762974, 17.179733, 8.962481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.610214, 17.039165, 9.082917>,  <16.355614, 16.804886, 9.283644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610214, 17.039165, 9.082917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726856, 0.673131, -0.136288,
		0.257964, 0.451496, 0.854170,
		0.636502, 0.585701, -0.501817,
		16.801165, 17.214876, 8.932372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189138, 17.457005, 9.495987>,  <16.355614, 16.804886, 9.283644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189138, 17.457005, 9.495987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435965, 17.559416, 9.198348>,  <16.584061, 17.620863, 9.019765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435965, 17.559416, 9.198348>,  <16.189138, 17.457005, 9.495987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435965, 17.559416, 9.198348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456210, 0.886858, -0.073176,
		0.641174, 0.384619, 0.664051,
		0.617064, 0.256029, -0.744098,
		16.621084, 17.636225, 8.975119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404539, 18.196667, 9.596684>,  <16.189138, 17.457005, 9.495987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404539, 18.196667, 9.596684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.419348, 18.099983, 9.208827>,  <16.428234, 18.041973, 8.976112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.419348, 18.099983, 9.208827>,  <16.404539, 18.196667, 9.596684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.419348, 18.099983, 9.208827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573602, 0.789405, -0.218680,
		0.818297, 0.564285, -0.109416,
		0.037024, -0.241707, -0.969643,
		16.430454, 18.027472, 8.917934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662206, 18.358980, 9.554217>,  <16.404539, 18.196667, 9.596684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662206, 18.358980, 9.554217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.397130, 18.133888, 9.751875>,  <15.238085, 17.998833, 9.870469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.397130, 18.133888, 9.751875>,  <15.662206, 18.358980, 9.554217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.397130, 18.133888, 9.751875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689026, -0.199635, 0.696698,
		-0.293405, 0.802172, 0.520032,
		-0.662689, -0.562730, 0.494144,
		15.198323, 17.965069, 9.900118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.328120, 18.501007, 10.235283>,  <15.662206, 18.358980, 9.554217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.328120, 18.501007, 10.235283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430608, 18.121845, 10.159568>,  <15.492101, 17.894348, 10.114139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430608, 18.121845, 10.159568>,  <15.328120, 18.501007, 10.235283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430608, 18.121845, 10.159568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786322, 0.090503, 0.611152,
		-0.562183, -0.305429, 0.768546,
		0.256219, -0.947904, -0.189287,
		15.507474, 17.837475, 10.102782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184920, 18.040314, 10.827454>,  <15.328120, 18.501007, 10.235283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184920, 18.040314, 10.827454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495749, 17.917780, 10.607520>,  <15.682247, 17.844259, 10.475560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495749, 17.917780, 10.607520>,  <15.184920, 18.040314, 10.827454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495749, 17.917780, 10.607520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534696, -0.139572, 0.833438,
		-0.332053, -0.941636, 0.055339,
		0.777072, -0.306336, -0.549835,
		15.728871, 17.825880, 10.442570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453224, 17.361599, 11.009311>,  <15.184920, 18.040314, 10.827454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453224, 17.361599, 11.009311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735540, 17.592247, 10.844693>,  <15.904930, 17.730637, 10.745923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735540, 17.592247, 10.844693>,  <15.453224, 17.361599, 11.009311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735540, 17.592247, 10.844693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515160, -0.018991, 0.856884,
		0.486281, -0.816791, -0.310456,
		0.705791, 0.576621, -0.411543,
		15.947278, 17.765234, 10.721231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042149, 17.034109, 11.214917>,  <15.453224, 17.361599, 11.009311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042149, 17.034109, 11.214917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.119106, 17.413013, 11.112401>,  <16.165281, 17.640356, 11.050892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.119106, 17.413013, 11.112401>,  <16.042149, 17.034109, 11.214917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119106, 17.413013, 11.112401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459789, 0.143711, 0.876322,
		0.866937, -0.286437, -0.407891,
		0.192393, 0.947260, -0.256289,
		16.176825, 17.697191, 11.035514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759096, 17.221691, 11.142130>,  <16.042149, 17.034109, 11.214917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.759096, 17.221691, 11.142130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.566938, 17.534485, 11.300989>,  <16.451643, 17.722160, 11.396304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.566938, 17.534485, 11.300989>,  <16.759096, 17.221691, 11.142130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.566938, 17.534485, 11.300989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509249, -0.119970, 0.852216,
		0.714063, 0.611646, -0.340591,
		-0.480394, 0.781982, 0.397147,
		16.422821, 17.769079, 11.420134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911304, 17.865404, 11.714163>,  <16.759096, 17.221691, 11.142130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.911304, 17.865404, 11.714163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249130, 18.017033, 11.562892>,  <17.451826, 18.108009, 11.472130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249130, 18.017033, 11.562892>,  <16.911304, 17.865404, 11.714163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249130, 18.017033, 11.562892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459620, 0.150885, -0.875204,
		-0.274704, 0.912983, 0.301661,
		0.844563, 0.379072, -0.378176,
		17.502499, 18.130754, 11.449439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.398325, 17.239283, 11.693917>,  <16.911304, 17.865404, 11.714163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.398325, 17.239283, 11.693917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.510717, 17.388962, 11.340415>,  <17.578154, 17.478769, 11.128314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.510717, 17.388962, 11.340415>,  <17.398325, 17.239283, 11.693917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.510717, 17.388962, 11.340415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944234, 0.056932, 0.324315,
		0.171673, -0.925599, -0.337336,
		0.280980, 0.374201, -0.883756,
		17.595011, 17.501223, 11.075288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904245, 16.828209, 11.178133>,  <17.398325, 17.239283, 11.693917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.904245, 16.828209, 11.178133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.932119, 17.224543, 11.131851>,  <17.948843, 17.462343, 11.104082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.932119, 17.224543, 11.131851>,  <17.904245, 16.828209, 11.178133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932119, 17.224543, 11.131851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977275, -0.044530, 0.207247,
		0.200196, -0.127516, -0.971422,
		0.069685, 0.990836, -0.115703,
		17.953024, 17.521793, 11.097140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586231, 16.801023, 11.131304>,  <17.904245, 16.828209, 11.178133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586231, 16.801023, 11.131304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.474518, 17.179222, 11.198277>,  <18.407490, 17.406141, 11.238461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.474518, 17.179222, 11.198277>,  <18.586231, 16.801023, 11.131304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.474518, 17.179222, 11.198277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940455, 0.234158, 0.246401,
		0.193766, 0.226281, -0.954595,
		-0.279282, 0.945498, 0.167435,
		18.390734, 17.462872, 11.248508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.948025, 17.212011, 10.723898>,  <18.586231, 16.801023, 11.131304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.948025, 17.212011, 10.723898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.865940, 17.457336, 11.028984>,  <18.816689, 17.604532, 11.212036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.865940, 17.457336, 11.028984>,  <18.948025, 17.212011, 10.723898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865940, 17.457336, 11.028984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973044, 0.211643, 0.091616,
		-0.105234, 0.760957, -0.640211,
		-0.205211, 0.613312, 0.762716,
		18.804377, 17.641331, 11.257799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276007, 17.829079, 10.632308>,  <18.948025, 17.212011, 10.723898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.276007, 17.829079, 10.632308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.199085, 17.795443, 11.023398>,  <19.152933, 17.775261, 11.258053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.199085, 17.795443, 11.023398>,  <19.276007, 17.829079, 10.632308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.199085, 17.795443, 11.023398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906897, 0.365406, 0.209800,
		-0.374909, 0.927042, 0.005992,
		-0.192304, -0.084089, 0.977726,
		19.141394, 17.770216, 11.316716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.568335, 18.382095, 10.908751>,  <19.276007, 17.829079, 10.632308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.568335, 18.382095, 10.908751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.524670, 18.166573, 11.242881>,  <19.498470, 18.037258, 11.443358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.524670, 18.166573, 11.242881>,  <19.568335, 18.382095, 10.908751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.524670, 18.166573, 11.242881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902826, 0.297875, 0.310123,
		-0.415920, 0.788007, 0.453933,
		-0.109164, -0.538809, 0.835325,
		19.491920, 18.004930, 11.493479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985310, 18.729082, 11.334791>,  <19.568335, 18.382095, 10.908751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985310, 18.729082, 11.334791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.944386, 18.371592, 11.509506>,  <19.919830, 18.157097, 11.614335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.944386, 18.371592, 11.509506>,  <19.985310, 18.729082, 11.334791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.944386, 18.371592, 11.509506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927696, 0.072762, 0.366177,
		-0.359044, 0.442670, 0.821663,
		-0.102310, -0.893728, 0.436788,
		19.913692, 18.103474, 11.640543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324532, 18.830845, 11.947818>,  <19.985310, 18.729082, 11.334791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324532, 18.830845, 11.947818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311428, 18.431110, 11.954185>,  <20.303566, 18.191269, 11.958006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311428, 18.431110, 11.954185>,  <20.324532, 18.830845, 11.947818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311428, 18.431110, 11.954185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878719, -0.021206, 0.476868,
		-0.476214, 0.029610, 0.878831,
		-0.032757, -0.999337, 0.015920,
		20.301601, 18.131310, 11.958961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454845, 18.599409, 12.628540>,  <20.324532, 18.830845, 11.947818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.454845, 18.599409, 12.628540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537939, 18.279926, 12.402650>,  <20.587795, 18.088236, 12.267116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537939, 18.279926, 12.402650>,  <20.454845, 18.599409, 12.628540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537939, 18.279926, 12.402650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726747, -0.260407, 0.635632,
		-0.654741, -0.542454, 0.526363,
		0.207732, -0.798707, -0.564725,
		20.600258, 18.040314, 12.233232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742292, 18.112696, 13.037588>,  <20.454845, 18.599409, 12.628540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742292, 18.112696, 13.037588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.862337, 17.967360, 12.684790>,  <20.934364, 17.880157, 12.473110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.862337, 17.967360, 12.684790>,  <20.742292, 18.112696, 13.037588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.862337, 17.967360, 12.684790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794381, -0.416694, 0.441956,
		-0.528103, -0.833277, 0.163576,
		0.300110, -0.363340, -0.881997,
		20.952370, 17.858358, 12.420191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.908981, 17.327335, 13.141469>,  <20.742292, 18.112696, 13.037588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.908981, 17.327335, 13.141469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081219, 17.443096, 12.799513>,  <21.184561, 17.512552, 12.594339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081219, 17.443096, 12.799513>,  <20.908981, 17.327335, 13.141469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081219, 17.443096, 12.799513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784782, -0.587872, 0.196274,
		-0.445764, -0.755416, -0.480250,
		0.430594, 0.289400, -0.854890,
		21.210398, 17.529917, 12.543046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210865, 16.726646, 12.854340>,  <20.908981, 17.327335, 13.141469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210865, 16.726646, 12.854340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410578, 17.027708, 12.682652>,  <21.530405, 17.208345, 12.579640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410578, 17.027708, 12.682652>,  <21.210865, 16.726646, 12.854340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.410578, 17.027708, 12.682652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854314, -0.510233, 0.099050,
		-0.144451, -0.416141, -0.897753,
		0.499282, 0.752655, -0.429219,
		21.560362, 17.253504, 12.553886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507292, 16.446400, 12.322870>,  <21.210865, 16.726646, 12.854340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507292, 16.446400, 12.322870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.712929, 16.782444, 12.392066>,  <21.836311, 16.984070, 12.433583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.712929, 16.782444, 12.392066>,  <21.507292, 16.446400, 12.322870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.712929, 16.782444, 12.392066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829666, -0.538222, 0.148225,
		0.217632, 0.067322, -0.973706,
		0.514091, 0.840110, 0.172989,
		21.867157, 17.034477, 12.443963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.213602, 16.291077, 11.987719>,  <21.507292, 16.446400, 12.322870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.213602, 16.291077, 11.987719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.269722, 16.610689, 12.221595>,  <22.303394, 16.802458, 12.361920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.269722, 16.610689, 12.221595>,  <22.213602, 16.291077, 11.987719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.269722, 16.610689, 12.221595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910994, -0.335486, 0.239871,
		0.387820, 0.498995, -0.774984,
		0.140302, 0.799033, 0.584690,
		22.311813, 16.850399, 12.397002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.840500, 16.603569, 11.672367>,  <22.213602, 16.291077, 11.987719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.840500, 16.603569, 11.672367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.765141, 16.693434, 12.054788>,  <22.719925, 16.747353, 12.284240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.765141, 16.693434, 12.054788>,  <22.840500, 16.603569, 11.672367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.765141, 16.693434, 12.054788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937554, -0.248696, 0.243195,
		0.292403, 0.942166, -0.163781,
		-0.188398, 0.224664, 0.956050,
		22.708622, 16.760834, 12.341602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396185, 16.817465, 11.840980>,  <22.840500, 16.603569, 11.672367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396185, 16.817465, 11.840980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254503, 16.782137, 12.213374>,  <23.169495, 16.760941, 12.436811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254503, 16.782137, 12.213374>,  <23.396185, 16.817465, 11.840980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.254503, 16.782137, 12.213374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933344, -0.095522, 0.346041,
		0.058366, 0.991501, 0.116269,
		-0.354207, -0.088322, 0.930987,
		23.148241, 16.755640, 12.492670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.655001, 17.246218, 12.421597>,  <23.396185, 16.817465, 11.840980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.655001, 17.246218, 12.421597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.540575, 16.904486, 12.595165>,  <23.471920, 16.699446, 12.699306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.540575, 16.904486, 12.595165>,  <23.655001, 17.246218, 12.421597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.540575, 16.904486, 12.595165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894296, -0.075419, 0.441074,
		-0.344097, 0.514228, 0.785600,
		-0.286062, -0.854331, 0.433921,
		23.454756, 16.648186, 12.725342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.751234, 17.315485, 13.177748>,  <23.655001, 17.246218, 12.421597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.751234, 17.315485, 13.177748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.788877, 16.936172, 13.056483>,  <23.811464, 16.708586, 12.983725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.788877, 16.936172, 13.056483>,  <23.751234, 17.315485, 13.177748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.788877, 16.936172, 13.056483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916328, -0.036544, 0.398759,
		-0.389214, -0.315322, 0.865497,
		0.094108, -0.948281, -0.303162,
		23.817110, 16.651688, 12.965534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.158869, 17.073011, 13.748744>,  <23.751234, 17.315485, 13.177748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.158869, 17.073011, 13.748744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.231758, 16.820293, 13.447378>,  <24.275492, 16.668663, 13.266559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.231758, 16.820293, 13.447378>,  <24.158869, 17.073011, 13.748744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.231758, 16.820293, 13.447378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941887, -0.107764, 0.318176,
		-0.282212, -0.767610, 0.575441,
		0.182223, -0.631793, -0.753414,
		24.286425, 16.630756, 13.221354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.339958, 16.480032, 14.036268>,  <24.158869, 17.073011, 13.748744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.339958, 16.480032, 14.036268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522379, 16.498634, 13.680774>,  <24.631832, 16.509796, 13.467477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522379, 16.498634, 13.680774>,  <24.339958, 16.480032, 14.036268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.522379, 16.498634, 13.680774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887994, -0.089982, 0.450965,
		-0.058999, -0.994857, -0.082332,
		0.456054, 0.046504, -0.888736,
		24.659195, 16.512585, 13.414153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847818, 15.921015, 13.950745>,  <24.339958, 16.480032, 14.036268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847818, 15.921015, 13.950745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945415, 16.245392, 13.738013>,  <25.003975, 16.440018, 13.610374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945415, 16.245392, 13.738013>,  <24.847818, 15.921015, 13.950745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945415, 16.245392, 13.738013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962406, -0.134995, 0.235693,
		0.119339, -0.569342, -0.813393,
		0.243994, 0.810942, -0.531828,
		25.018614, 16.488674, 13.578465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047424, 15.577356, 14.631923>,  <24.847818, 15.921015, 13.950745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047424, 15.577356, 14.631923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351139, 15.628560, 14.887138>,  <25.533369, 15.659283, 15.040268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351139, 15.628560, 14.887138>,  <25.047424, 15.577356, 14.631923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351139, 15.628560, 14.887138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419036, -0.846317, -0.328872,
		0.497884, 0.517070, -0.696240,
		0.759289, 0.128010, 0.638039,
		25.578926, 15.666963, 15.078550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762629, 15.466525, 14.269080>,  <25.047424, 15.577356, 14.631923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762629, 15.466525, 14.269080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754221, 15.391886, 14.661964>,  <25.749176, 15.347102, 14.897696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754221, 15.391886, 14.661964>,  <25.762629, 15.466525, 14.269080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754221, 15.391886, 14.661964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330422, -0.928520, -0.169327,
		0.943599, 0.320985, 0.081172,
		-0.021018, -0.186598, 0.982212,
		25.747915, 15.335906, 14.956628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629709, 14.626656, 14.312531>,  <25.762629, 15.466525, 14.269080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629709, 14.626656, 14.312531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011490, 14.729869, 14.252615>,  <26.240559, 14.791797, 14.216665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011490, 14.729869, 14.252615>,  <25.629709, 14.626656, 14.312531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011490, 14.729869, 14.252615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053931, 0.344568, 0.937211,
		0.293444, -0.902603, 0.314958,
		0.954453, 0.258033, -0.149790,
		26.297827, 14.807279, 14.207678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171867, 14.438001, 14.761560>,  <25.629709, 14.626656, 14.312531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171867, 14.438001, 14.761560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364138, 14.757618, 14.617073>,  <26.479500, 14.949389, 14.530380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364138, 14.757618, 14.617073>,  <26.171867, 14.438001, 14.761560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364138, 14.757618, 14.617073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120242, 0.347977, 0.929760,
		0.868615, -0.490347, 0.071185,
		0.480676, 0.799044, -0.361219,
		26.508341, 14.997332, 14.508707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823725, 14.498025, 14.912657>,  <26.171867, 14.438001, 14.761560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823725, 14.498025, 14.912657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709806, 14.876962, 14.854093>,  <26.641457, 15.104323, 14.818954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709806, 14.876962, 14.854093>,  <26.823725, 14.498025, 14.912657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709806, 14.876962, 14.854093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070113, 0.172911, 0.982439,
		0.956021, 0.269528, -0.115666,
		-0.284795, 0.947342, -0.146409,
		26.624369, 15.161164, 14.810170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231472, 14.961905, 15.313687>,  <26.823725, 14.498025, 14.912657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231472, 14.961905, 15.313687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908913, 15.188336, 15.245241>,  <26.715378, 15.324195, 15.204174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908913, 15.188336, 15.245241>,  <27.231472, 14.961905, 15.313687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908913, 15.188336, 15.245241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049668, 0.353159, 0.934244,
		0.589284, 0.744873, -0.312902,
		-0.806398, 0.566077, -0.171115,
		26.666994, 15.358159, 15.193907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.268406, 21.968580, 22.029198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.905201, 21.848133, 22.145708>,  <11.687278, 21.775866, 22.215614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.905201, 21.848133, 22.145708>,  <12.268406, 21.968580, 22.029198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905201, 21.848133, 22.145708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086063, -0.546365, -0.833113,
		0.410008, -0.781546, 0.470192,
		-0.908013, -0.301117, 0.291276,
		11.632797, 21.757797, 22.233091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.248544, 21.330549, 21.827765>,  <12.268406, 21.968580, 22.029198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.248544, 21.330549, 21.827765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.865936, 21.409729, 21.913448>,  <11.636372, 21.457237, 21.964859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.865936, 21.409729, 21.913448>,  <12.248544, 21.330549, 21.827765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.865936, 21.409729, 21.913448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290892, -0.593909, -0.750103,
		-0.021260, -0.779800, 0.625667,
		-0.956520, 0.197949, 0.214211,
		11.578980, 21.469114, 21.977711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.952537, 20.685818, 21.756323>,  <12.248544, 21.330549, 21.827765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.952537, 20.685818, 21.756323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.646828, 20.942377, 21.729509>,  <11.463403, 21.096313, 21.713421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.646828, 20.942377, 21.729509>,  <11.952537, 20.685818, 21.756323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.646828, 20.942377, 21.729509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379667, -0.531534, -0.757182,
		-0.521276, -0.553252, 0.649757,
		-0.764280, 0.641392, -0.067025,
		11.417546, 21.134796, 21.709398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.434140, 20.282396, 21.817076>,  <11.952537, 20.685818, 21.756323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.434140, 20.282396, 21.817076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.322363, 20.601603, 21.603504>,  <11.255297, 20.793127, 21.475361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.322363, 20.601603, 21.603504>,  <11.434140, 20.282396, 21.817076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.322363, 20.601603, 21.603504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346015, -0.602415, -0.719284,
		-0.895648, -0.016251, 0.444467,
		-0.279443, 0.798018, -0.533929,
		11.238530, 20.841007, 21.443325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.700990, 20.157288, 21.527084>,  <11.434140, 20.282396, 21.817076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.700990, 20.157288, 21.527084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.871264, 20.443010, 21.304892>,  <10.973428, 20.614443, 21.171576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.871264, 20.443010, 21.304892>,  <10.700990, 20.157288, 21.527084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.871264, 20.443010, 21.304892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308401, -0.462598, -0.831199,
		-0.850695, 0.525140, 0.023371,
		0.425684, 0.714304, -0.555483,
		10.998969, 20.657301, 21.138247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.249733, 20.184536, 20.894272>,  <10.700990, 20.157288, 21.527084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.249733, 20.184536, 20.894272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.594234, 20.355623, 20.784508>,  <10.800936, 20.458275, 20.718649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.594234, 20.355623, 20.784508>,  <10.249733, 20.184536, 20.894272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.594234, 20.355623, 20.784508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147983, -0.305494, -0.940624,
		-0.486151, 0.850724, -0.199814,
		0.861254, 0.427716, -0.274409,
		10.852611, 20.483938, 20.702185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.164535, 20.238287, 20.110483>,  <10.249733, 20.184536, 20.894272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.164535, 20.238287, 20.110483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.558117, 20.282288, 20.166674>,  <10.794266, 20.308687, 20.200388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.558117, 20.282288, 20.166674>,  <10.164535, 20.238287, 20.110483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.558117, 20.282288, 20.166674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167241, -0.294329, -0.940958,
		-0.062159, 0.949353, -0.308003,
		0.983955, 0.109999, 0.140475,
		10.853303, 20.315287, 20.208817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.418122, 20.695587, 19.612907>,  <10.164535, 20.238287, 20.110483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.418122, 20.695587, 19.612907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.750657, 20.507193, 19.730925>,  <10.950178, 20.394156, 19.801735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.750657, 20.507193, 19.730925>,  <10.418122, 20.695587, 19.612907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.750657, 20.507193, 19.730925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262281, -0.135557, -0.955423,
		0.489987, 0.871662, 0.010838,
		0.831337, -0.470987, 0.295042,
		11.000058, 20.365896, 19.819437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.032411, 20.981281, 19.140848>,  <10.418122, 20.695587, 19.612907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.032411, 20.981281, 19.140848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.110374, 20.620937, 19.296005>,  <11.157153, 20.404730, 19.389099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.110374, 20.620937, 19.296005>,  <11.032411, 20.981281, 19.140848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.110374, 20.620937, 19.296005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182452, -0.355273, -0.916784,
		0.963702, 0.249462, 0.095118,
		0.194910, -0.900861, 0.387892,
		11.168847, 20.350679, 19.412373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.623045, 20.701620, 18.822880>,  <11.032411, 20.981281, 19.140848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.623045, 20.701620, 18.822880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.442407, 20.372637, 18.961226>,  <11.334023, 20.175247, 19.044233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.442407, 20.372637, 18.961226>,  <11.623045, 20.701620, 18.822880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.442407, 20.372637, 18.961226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146842, -0.450870, -0.880428,
		0.880056, -0.346811, 0.324383,
		-0.451597, -0.822459, 0.345864,
		11.306928, 20.125898, 19.064985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974288, 20.212542, 18.616831>,  <11.623045, 20.701620, 18.822880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974288, 20.212542, 18.616831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.623905, 20.029125, 18.676752>,  <11.413675, 19.919075, 18.712706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.623905, 20.029125, 18.676752>,  <11.974288, 20.212542, 18.616831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.623905, 20.029125, 18.676752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107352, -0.488056, -0.866185,
		0.470293, -0.742659, 0.476741,
		-0.875957, -0.458540, 0.149804,
		11.361118, 19.891563, 18.721693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086627, 19.469755, 18.525330>,  <11.974288, 20.212542, 18.616831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086627, 19.469755, 18.525330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.690776, 19.518373, 18.494701>,  <11.453265, 19.547544, 18.476324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.690776, 19.518373, 18.494701>,  <12.086627, 19.469755, 18.525330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.690776, 19.518373, 18.494701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001058, -0.526845, -0.849961,
		-0.143650, -0.841226, 0.521252,
		-0.989628, 0.121545, -0.076572,
		11.393888, 19.554838, 18.471729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.850225, 18.807961, 18.446949>,  <12.086627, 19.469755, 18.525330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.850225, 18.807961, 18.446949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.566965, 19.048716, 18.299299>,  <11.397009, 19.193169, 18.210709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.566965, 19.048716, 18.299299>,  <11.850225, 18.807961, 18.446949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.566965, 19.048716, 18.299299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010272, -0.531521, -0.846983,
		-0.705986, -0.596000, 0.382580,
		-0.708151, 0.601888, -0.369124,
		11.354520, 19.229282, 18.188562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.329777, 18.299763, 18.169247>,  <11.850225, 18.807961, 18.446949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.329777, 18.299763, 18.169247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.242597, 18.641508, 17.980543>,  <11.190289, 18.846556, 17.867321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.242597, 18.641508, 17.980543>,  <11.329777, 18.299763, 18.169247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.242597, 18.641508, 17.980543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043589, -0.491420, -0.869831,
		-0.974986, -0.169016, 0.144346,
		-0.217950, 0.854365, -0.471761,
		11.177212, 18.897818, 17.839014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.888579, 18.082264, 17.614809>,  <11.329777, 18.299763, 18.169247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.888579, 18.082264, 17.614809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.016260, 18.439312, 17.487474>,  <11.092869, 18.653542, 17.411074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.016260, 18.439312, 17.487474>,  <10.888579, 18.082264, 17.614809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016260, 18.439312, 17.487474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061871, -0.315563, -0.946885,
		-0.945664, 0.321945, -0.045501,
		0.319203, 0.892621, -0.318336,
		11.112021, 18.707098, 17.391973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.418415, 18.204573, 17.079334>,  <10.888579, 18.082264, 17.614809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.418415, 18.204573, 17.079334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.742746, 18.433386, 17.029797>,  <10.937345, 18.570673, 17.000074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.742746, 18.433386, 17.029797>,  <10.418415, 18.204573, 17.079334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.742746, 18.433386, 17.029797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004807, -0.205082, -0.978733,
		-0.585265, 0.794179, -0.163537,
		0.810827, 0.572033, -0.123845,
		10.985994, 18.604996, 16.992643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.363171, 18.694302, 16.438427>,  <10.418415, 18.204573, 17.079334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.363171, 18.694302, 16.438427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.759434, 18.659679, 16.480581>,  <10.997191, 18.638906, 16.505875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.759434, 18.659679, 16.480581>,  <10.363171, 18.694302, 16.438427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.759434, 18.659679, 16.480581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079460, -0.261683, -0.961878,
		0.110835, 0.961265, -0.252360,
		0.990657, -0.086557, 0.105386,
		11.056631, 18.633713, 16.512197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.581959, 18.785599, 15.813014>,  <10.363171, 18.694302, 16.438427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.581959, 18.785599, 15.813014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.923628, 18.640871, 15.962399>,  <11.128629, 18.554033, 16.052031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.923628, 18.640871, 15.962399>,  <10.581959, 18.785599, 15.813014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.923628, 18.640871, 15.962399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295168, -0.253909, -0.921090,
		0.428096, 0.897004, -0.110084,
		0.854172, -0.361821, 0.373464,
		11.179879, 18.532324, 16.074438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.064718, 19.096695, 15.324971>,  <10.581959, 18.785599, 15.813014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.064718, 19.096695, 15.324971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.249602, 18.810215, 15.534129>,  <11.360533, 18.638327, 15.659624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.249602, 18.810215, 15.534129>,  <11.064718, 19.096695, 15.324971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.249602, 18.810215, 15.534129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383018, -0.370582, -0.846148,
		0.799786, 0.591377, 0.103030,
		0.462211, -0.716200, 0.522894,
		11.388266, 18.595354, 15.690997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.721151, 19.084286, 15.133836>,  <11.064718, 19.096695, 15.324971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.721151, 19.084286, 15.133836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.717927, 18.714838, 15.287128>,  <11.715993, 18.493170, 15.379104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.717927, 18.714838, 15.287128>,  <11.721151, 19.084286, 15.133836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.717927, 18.714838, 15.287128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585230, -0.315111, -0.747136,
		0.810828, 0.218256, 0.543068,
		-0.008060, -0.923618, 0.383231,
		11.715509, 18.437754, 15.402098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374464, 18.839302, 14.941343>,  <11.721151, 19.084286, 15.133836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374464, 18.839302, 14.941343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.158259, 18.513010, 15.023736>,  <12.028537, 18.317234, 15.073172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.158259, 18.513010, 15.023736>,  <12.374464, 18.839302, 14.941343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.158259, 18.513010, 15.023736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509667, -0.512260, -0.691252,
		0.669393, -0.268648, 0.692634,
		-0.540512, -0.815731, 0.205983,
		11.996106, 18.268291, 15.085530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826661, 18.210255, 15.071198>,  <12.374464, 18.839302, 14.941343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826661, 18.210255, 15.071198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.485863, 18.049793, 14.936629>,  <12.281384, 17.953516, 14.855888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.485863, 18.049793, 14.936629>,  <12.826661, 18.210255, 15.071198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.485863, 18.049793, 14.936629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484481, -0.360539, -0.797050,
		0.198445, -0.842074, 0.501528,
		-0.851996, -0.401152, -0.336422,
		12.230264, 17.929447, 14.835703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251423, 17.822405, 14.573142>,  <12.826661, 18.210255, 15.071198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251423, 17.822405, 14.573142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.473470, 18.119829, 14.424031>,  <13.606698, 18.298285, 14.334565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.473470, 18.119829, 14.424031>,  <13.251423, 17.822405, 14.573142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.473470, 18.119829, 14.424031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005615, 0.451512, 0.892247,
		0.831754, -0.493208, 0.254817,
		0.555116, 0.743561, -0.372777,
		13.640005, 18.342897, 14.312198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.824222, 17.967039, 15.026363>,  <13.251423, 17.822405, 14.573142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.824222, 17.967039, 15.026363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.824642, 18.295712, 14.798384>,  <13.824895, 18.492914, 14.661595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.824642, 18.295712, 14.798384>,  <13.824222, 17.967039, 15.026363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824642, 18.295712, 14.798384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163380, 0.562150, 0.810736,
		0.986562, -0.093972, -0.133655,
		0.001052, 0.821679, -0.569950,
		13.824958, 18.542215, 14.627398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513775, 18.291155, 15.006783>,  <13.824222, 17.967039, 15.026363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.513775, 18.291155, 15.006783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.255791, 18.587229, 14.930726>,  <14.101000, 18.764874, 14.885092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.255791, 18.587229, 14.930726>,  <14.513775, 18.291155, 15.006783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255791, 18.587229, 14.930726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300995, 0.474735, 0.827060,
		0.702444, 0.476189, -0.528977,
		-0.644961, 0.740183, -0.190144,
		14.062303, 18.809284, 14.873683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829800, 18.879255, 15.279157>,  <14.513775, 18.291155, 15.006783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829800, 18.879255, 15.279157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.462082, 19.012949, 15.196031>,  <14.241451, 19.093164, 15.146154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.462082, 19.012949, 15.196031>,  <14.829800, 18.879255, 15.279157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.462082, 19.012949, 15.196031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102163, 0.712577, 0.694116,
		0.380081, 0.616865, -0.689214,
		-0.919294, 0.334232, -0.207816,
		14.186294, 19.113218, 15.133686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939314, 19.616190, 15.073098>,  <14.829800, 18.879255, 15.279157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939314, 19.616190, 15.073098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.582721, 19.548096, 15.241039>,  <14.368765, 19.507238, 15.341805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.582721, 19.548096, 15.241039>,  <14.939314, 19.616190, 15.073098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582721, 19.548096, 15.241039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167063, 0.737892, 0.653916,
		-0.421126, 0.653097, -0.629379,
		-0.891484, -0.170235, 0.419853,
		14.315275, 19.497025, 15.366995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733435, 20.229782, 15.158081>,  <14.939314, 19.616190, 15.073098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733435, 20.229782, 15.158081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.493049, 20.008932, 15.389252>,  <14.348817, 19.876423, 15.527954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.493049, 20.008932, 15.389252>,  <14.733435, 20.229782, 15.158081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.493049, 20.008932, 15.389252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095558, 0.668247, 0.737777,
		-0.793542, 0.498604, -0.348834,
		-0.600966, -0.552123, 0.577928,
		14.312759, 19.843296, 15.562630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.283856, 20.671059, 15.346369>,  <14.733435, 20.229782, 15.158081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.283856, 20.671059, 15.346369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.243313, 20.408642, 15.645524>,  <14.218987, 20.251192, 15.825017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.243313, 20.408642, 15.645524>,  <14.283856, 20.671059, 15.346369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243313, 20.408642, 15.645524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078026, 0.744201, 0.663383,
		-0.991786, 0.125595, -0.024243,
		-0.101359, -0.656042, 0.747887,
		14.212905, 20.211830, 15.869890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.729216, 20.915337, 15.794075>,  <14.283856, 20.671059, 15.346369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.729216, 20.915337, 15.794075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.946039, 20.670877, 16.024784>,  <14.076134, 20.524202, 16.163210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.946039, 20.670877, 16.024784>,  <13.729216, 20.915337, 15.794075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.946039, 20.670877, 16.024784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069522, 0.716618, 0.693992,
		-0.837460, -0.336086, 0.430938,
		0.542059, -0.611150, 0.576774,
		14.108657, 20.487532, 16.197817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397183, 20.944609, 16.453596>,  <13.729216, 20.915337, 15.794075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397183, 20.944609, 16.453596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.756812, 20.784859, 16.525339>,  <13.972589, 20.689009, 16.568384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.756812, 20.784859, 16.525339>,  <13.397183, 20.944609, 16.453596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.756812, 20.784859, 16.525339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097932, 0.582756, 0.806725,
		-0.426709, -0.707738, 0.563051,
		0.899071, -0.399377, 0.179357,
		14.026533, 20.665045, 16.579145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.392894, 21.003712, 17.239428>,  <13.397183, 20.944609, 16.453596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.392894, 21.003712, 17.239428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.770533, 20.919250, 17.138161>,  <13.997116, 20.868574, 17.077400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.770533, 20.919250, 17.138161>,  <13.392894, 21.003712, 17.239428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770533, 20.919250, 17.138161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315080, 0.352057, 0.881351,
		-0.096972, -0.911850, 0.398907,
		0.944098, -0.211154, -0.253166,
		14.053762, 20.855904, 17.062210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.703366, 20.498060, 17.733335>,  <13.392894, 21.003712, 17.239428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.703366, 20.498060, 17.733335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.025532, 20.692743, 17.598030>,  <14.218831, 20.809553, 17.516846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.025532, 20.692743, 17.598030>,  <13.703366, 20.498060, 17.733335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.025532, 20.692743, 17.598030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219303, 0.285500, 0.932950,
		0.550648, -0.825594, 0.123209,
		0.805414, 0.486707, -0.338265,
		14.267157, 20.838755, 17.496550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.208129, 20.247940, 18.162090>,  <13.703366, 20.498060, 17.733335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.208129, 20.247940, 18.162090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.357173, 20.593718, 18.027096>,  <14.446600, 20.801184, 17.946098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.357173, 20.593718, 18.027096>,  <14.208129, 20.247940, 18.162090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.357173, 20.593718, 18.027096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213593, 0.274020, 0.937705,
		0.903072, -0.421484, -0.082537,
		0.372611, 0.864445, -0.337486,
		14.468956, 20.853050, 17.925850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817128, 20.421316, 18.458942>,  <14.208129, 20.247940, 18.162090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817128, 20.421316, 18.458942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.709815, 20.788668, 18.342596>,  <14.645427, 21.009079, 18.272789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.709815, 20.788668, 18.342596>,  <14.817128, 20.421316, 18.458942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709815, 20.788668, 18.342596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203461, 0.349140, 0.914716,
		0.941609, 0.186224, -0.280523,
		-0.268284, 0.918380, -0.290864,
		14.629330, 21.064182, 18.255337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281262, 20.797762, 18.655207>,  <14.817128, 20.421316, 18.458942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281262, 20.797762, 18.655207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.952050, 21.024473, 18.640335>,  <14.754522, 21.160500, 18.631413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.952050, 21.024473, 18.640335>,  <15.281262, 20.797762, 18.655207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.952050, 21.024473, 18.640335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187493, 0.332883, 0.924140,
		0.536159, 0.753625, -0.380240,
		-0.823031, 0.566778, -0.037179,
		14.705141, 21.194506, 18.629181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486231, 21.505516, 18.822912>,  <15.281262, 20.797762, 18.655207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486231, 21.505516, 18.822912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.091352, 21.485470, 18.883478>,  <14.854424, 21.473442, 18.919819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.091352, 21.485470, 18.883478>,  <15.486231, 21.505516, 18.822912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091352, 21.485470, 18.883478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107535, 0.491991, 0.863934,
		-0.117792, 0.869157, -0.480304,
		-0.987199, -0.050115, 0.151417,
		14.795192, 21.470436, 18.928904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.363541, 22.029329, 19.265636>,  <15.486231, 21.505516, 18.822912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.363541, 22.029329, 19.265636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.012320, 21.840593, 19.297617>,  <14.801587, 21.727352, 19.316805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.012320, 21.840593, 19.297617>,  <15.363541, 22.029329, 19.265636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.012320, 21.840593, 19.297617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082024, 0.312970, 0.946215,
		-0.471482, 0.824268, -0.313506,
		-0.878053, -0.471838, 0.079950,
		14.748903, 21.699041, 19.321602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.024474, 22.338064, 19.718342>,  <15.363541, 22.029329, 19.265636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.024474, 22.338064, 19.718342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.757641, 22.040073, 19.719814>,  <14.597541, 21.861279, 19.720697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.757641, 22.040073, 19.719814>,  <15.024474, 22.338064, 19.718342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.757641, 22.040073, 19.719814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338146, 0.307184, 0.889548,
		-0.663821, 0.592158, -0.456827,
		-0.667083, -0.744975, 0.003679,
		14.557516, 21.816582, 19.720919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406844, 22.619068, 19.919762>,  <15.024474, 22.338064, 19.718342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406844, 22.619068, 19.919762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.426018, 22.235037, 20.030003>,  <14.437522, 22.004618, 20.096148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.426018, 22.235037, 20.030003>,  <14.406844, 22.619068, 19.919762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.426018, 22.235037, 20.030003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409831, 0.232719, 0.881975,
		-0.910901, -0.155225, -0.382314,
		0.047933, -0.960077, 0.275600,
		14.440397, 21.947014, 20.112682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.817510, 22.503059, 20.576818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.063496, 22.188665, 20.602253>,  <14.211087, 22.000029, 20.617514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.063496, 22.188665, 20.602253>,  <13.817510, 22.503059, 20.576818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063496, 22.188665, 20.602253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202976, -0.079860, 0.975922,
		-0.761983, -0.613065, -0.208648,
		0.614966, -0.785986, 0.063585,
		14.247986, 21.952869, 20.621328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433236, 22.127253, 20.976631>,  <13.817510, 22.503059, 20.576818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433236, 22.127253, 20.976631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.789306, 21.947701, 21.007856>,  <14.002948, 21.839970, 21.026592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.789306, 21.947701, 21.007856>,  <13.433236, 22.127253, 20.976631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.789306, 21.947701, 21.007856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187364, -0.204475, 0.960773,
		-0.415313, -0.869882, -0.266123,
		0.890174, -0.448883, 0.078063,
		14.056358, 21.813036, 21.031275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.332088, 21.411192, 21.306557>,  <13.433236, 22.127253, 20.976631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.332088, 21.411192, 21.306557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.704823, 21.539629, 21.374178>,  <13.928465, 21.616692, 21.414751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.704823, 21.539629, 21.374178>,  <13.332088, 21.411192, 21.306557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.704823, 21.539629, 21.374178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170819, -0.022890, 0.985036,
		0.320157, -0.946771, 0.033519,
		0.931837, 0.321093, 0.169055,
		13.984375, 21.635956, 21.424894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526320, 21.115789, 21.934265>,  <13.332088, 21.411192, 21.306557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526320, 21.115789, 21.934265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.821513, 21.385471, 21.945793>,  <13.998629, 21.547281, 21.952711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.821513, 21.385471, 21.945793>,  <13.526320, 21.115789, 21.934265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821513, 21.385471, 21.945793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069754, 0.033732, 0.996994,
		0.671206, -0.737774, 0.071922,
		0.737982, 0.674204, 0.028822,
		14.042908, 21.587732, 21.954439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.935593, 20.873573, 22.507467>,  <13.526320, 21.115789, 21.934265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.935593, 20.873573, 22.507467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.979994, 21.260000, 22.414183>,  <14.006635, 21.491858, 22.358212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.979994, 21.260000, 22.414183>,  <13.935593, 20.873573, 22.507467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.979994, 21.260000, 22.414183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001502, 0.234825, 0.972036,
		0.993819, -0.107548, 0.027517,
		0.111003, 0.966069, -0.233212,
		14.013295, 21.549822, 22.344219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254092, 21.006155, 23.082878>,  <13.935593, 20.873573, 22.507467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254092, 21.006155, 23.082878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.184260, 21.365175, 22.920929>,  <14.142362, 21.580587, 22.823759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.184260, 21.365175, 22.920929>,  <14.254092, 21.006155, 23.082878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184260, 21.365175, 22.920929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136575, 0.429285, 0.892783,
		0.975125, 0.100566, -0.197528,
		-0.174580, 0.897553, -0.404872,
		14.131886, 21.634441, 22.799467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939819, 21.432243, 23.249521>,  <14.254092, 21.006155, 23.082878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939819, 21.432243, 23.249521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.597513, 21.638060, 23.227932>,  <14.392130, 21.761549, 23.214979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.597513, 21.638060, 23.227932>,  <14.939819, 21.432243, 23.249521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597513, 21.638060, 23.227932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207710, 0.437244, 0.875028,
		0.473837, 0.737608, -0.481054,
		-0.855766, 0.514541, -0.053974,
		14.340783, 21.792421, 23.211740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958309, 22.145451, 23.411430>,  <14.939819, 21.432243, 23.249521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958309, 22.145451, 23.411430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.564008, 22.108448, 23.467615>,  <14.327427, 22.086246, 23.501326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.564008, 22.108448, 23.467615>,  <14.958309, 22.145451, 23.411430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564008, 22.108448, 23.467615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066285, 0.553879, 0.829954,
		-0.154576, 0.827442, -0.539857,
		-0.985755, -0.092507, 0.140464,
		14.268281, 22.080696, 23.509754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729788, 22.740528, 23.767921>,  <14.958309, 22.145451, 23.411430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.729788, 22.740528, 23.767921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.440301, 22.470022, 23.822910>,  <14.266609, 22.307718, 23.855904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.440301, 22.470022, 23.822910>,  <14.729788, 22.740528, 23.767921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440301, 22.470022, 23.822910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033917, 0.233824, 0.971687,
		-0.689263, 0.698564, -0.192160,
		-0.723717, -0.676265, 0.137473,
		14.223186, 22.267143, 23.864153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.322874, 23.081545, 24.236572>,  <14.729788, 22.740528, 23.767921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.322874, 23.081545, 24.236572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.162850, 22.714951, 24.237690>,  <14.066836, 22.494995, 24.238361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.162850, 22.714951, 24.237690>,  <14.322874, 23.081545, 24.236572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.162850, 22.714951, 24.237690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062276, 0.030226, 0.997601,
		-0.914371, 0.398926, -0.069168,
		-0.400060, -0.916485, 0.002794,
		14.042832, 22.440004, 24.238529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.628554, 23.110071, 24.562010>,  <14.322874, 23.081545, 24.236572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.628554, 23.110071, 24.562010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.788883, 22.749882, 24.629530>,  <13.885080, 22.533768, 24.670042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.788883, 22.749882, 24.629530>,  <13.628554, 23.110071, 24.562010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.788883, 22.749882, 24.629530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172707, 0.106680, 0.979179,
		-0.899730, -0.421629, -0.112758,
		0.400821, -0.900472, 0.168801,
		13.909129, 22.479740, 24.680170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397854, 22.876663, 25.245594>,  <13.628554, 23.110071, 24.562010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397854, 22.876663, 25.245594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.690750, 22.611353, 25.183769>,  <13.866488, 22.452168, 25.146675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.690750, 22.611353, 25.183769>,  <13.397854, 22.876663, 25.245594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690750, 22.611353, 25.183769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046399, -0.177836, 0.982966,
		-0.679463, -0.726940, -0.099444,
		0.732241, -0.663274, -0.154562,
		13.910422, 22.412371, 25.137400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.215988, 22.272163, 25.571299>,  <13.397854, 22.876663, 25.245594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.215988, 22.272163, 25.571299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.609295, 22.206408, 25.539900>,  <13.845279, 22.166954, 25.521061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.609295, 22.206408, 25.539900>,  <13.215988, 22.272163, 25.571299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.609295, 22.206408, 25.539900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065544, -0.082787, 0.994410,
		-0.169968, -0.982915, -0.070627,
		0.983267, -0.164389, -0.078496,
		13.904275, 22.157091, 25.516352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.324518, 21.923109, 26.123302>,  <13.215988, 22.272163, 25.571299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.324518, 21.923109, 26.123302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.689157, 22.056213, 26.026751>,  <13.907940, 22.136076, 25.968821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.689157, 22.056213, 26.026751>,  <13.324518, 21.923109, 26.123302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.689157, 22.056213, 26.026751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225499, 0.086175, 0.970425,
		0.343720, -0.939066, 0.003520,
		0.911596, 0.332760, -0.241379,
		13.962635, 22.156042, 25.954336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.688973, 21.766958, 26.654877>,  <13.324518, 21.923109, 26.123302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.688973, 21.766958, 26.654877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.945303, 22.031956, 26.499727>,  <14.099101, 22.190954, 26.406637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.945303, 22.031956, 26.499727>,  <13.688973, 21.766958, 26.654877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.945303, 22.031956, 26.499727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321705, 0.226999, 0.919226,
		0.697030, -0.713842, -0.067662,
		0.640823, 0.662496, -0.387872,
		14.137550, 22.230705, 26.383366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.332818, 21.553759, 26.971657>,  <13.688973, 21.766958, 26.654877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.332818, 21.553759, 26.971657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.356689, 21.935791, 26.855551>,  <14.371013, 22.165010, 26.785887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.356689, 21.935791, 26.855551>,  <14.332818, 21.553759, 26.971657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.356689, 21.935791, 26.855551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320565, 0.257045, 0.911683,
		0.945345, -0.147458, -0.290826,
		0.059679, 0.955083, -0.290266,
		14.374593, 22.222317, 26.768471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040570, 21.839321, 27.184786>,  <14.332818, 21.553759, 26.971657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040570, 21.839321, 27.184786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.788923, 22.146744, 27.138250>,  <14.637936, 22.331198, 27.110329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.788923, 22.146744, 27.138250>,  <15.040570, 21.839321, 27.184786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.788923, 22.146744, 27.138250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307340, 0.383417, 0.870938,
		0.713971, 0.512166, -0.477422,
		-0.629117, 0.768555, -0.116340,
		14.600188, 22.377310, 27.103348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467693, 22.295626, 27.278368>,  <15.040570, 21.839321, 27.184786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.467693, 22.295626, 27.278368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.104159, 22.457506, 27.318838>,  <14.886039, 22.554634, 27.343121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.104159, 22.457506, 27.318838>,  <15.467693, 22.295626, 27.278368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104159, 22.457506, 27.318838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315226, 0.507405, 0.801980,
		0.273226, 0.760760, -0.588720,
		-0.908834, 0.404702, 0.101175,
		14.831509, 22.578917, 27.349192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577065, 22.920851, 27.472008>,  <15.467693, 22.295626, 27.278368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577065, 22.920851, 27.472008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.198457, 22.885216, 27.596050>,  <14.971292, 22.863834, 27.670475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.198457, 22.885216, 27.596050>,  <15.577065, 22.920851, 27.472008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.198457, 22.885216, 27.596050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252722, 0.392811, 0.884212,
		-0.200584, 0.915294, -0.349289,
		-0.946519, -0.089086, 0.310106,
		14.914501, 22.858490, 27.689081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386353, 23.602039, 27.756674>,  <15.577065, 22.920851, 27.472008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.386353, 23.602039, 27.756674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.154853, 23.314592, 27.910889>,  <15.015953, 23.142124, 28.003418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.154853, 23.314592, 27.910889>,  <15.386353, 23.602039, 27.756674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154853, 23.314592, 27.910889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177845, 0.350162, 0.919651,
		-0.795877, 0.600813, -0.074854,
		-0.578749, -0.718617, 0.385537,
		14.981228, 23.099007, 28.026550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980340, 24.011742, 28.225248>,  <15.386353, 23.602039, 27.756674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980340, 24.011742, 28.225248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.911145, 23.630402, 28.324200>,  <14.869628, 23.401598, 28.383570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.911145, 23.630402, 28.324200>,  <14.980340, 24.011742, 28.225248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911145, 23.630402, 28.324200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019959, 0.247721, 0.968626,
		-0.984722, 0.172497, -0.023824,
		-0.172987, -0.953352, 0.247379,
		14.859249, 23.344397, 28.398413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341465, 24.004612, 28.590784>,  <14.980340, 24.011742, 28.225248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341465, 24.004612, 28.590784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.581194, 23.703239, 28.698971>,  <14.725031, 23.522415, 28.763884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.581194, 23.703239, 28.698971>,  <14.341465, 24.004612, 28.590784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.581194, 23.703239, 28.698971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033881, 0.313693, 0.948920,
		-0.799790, -0.577873, 0.162476,
		0.599323, -0.753432, 0.270468,
		14.760991, 23.477209, 28.780111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110863, 23.570337, 29.155519>,  <14.341465, 24.004612, 28.590784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.110863, 23.570337, 29.155519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.506871, 23.517828, 29.176016>,  <14.744476, 23.486322, 29.188314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.506871, 23.517828, 29.176016>,  <14.110863, 23.570337, 29.155519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.506871, 23.517828, 29.176016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010643, 0.292936, 0.956073,
		-0.140520, -0.947077, 0.288615,
		0.990021, -0.131276, 0.051243,
		14.803878, 23.478445, 29.191389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.465359, 23.950960, 29.275646>,  <14.110863, 23.570337, 29.155519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.465359, 23.950960, 29.275646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.292417, 23.776455, 29.591303>,  <13.188651, 23.671753, 29.780697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.292417, 23.776455, 29.591303>,  <13.465359, 23.950960, 29.275646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292417, 23.776455, 29.591303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614278, -0.498171, -0.611955,
		0.660099, -0.749334, -0.052599,
		-0.432355, -0.436261, 0.789142,
		13.162710, 23.645576, 29.828045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.502012, 23.183786, 29.227776>,  <13.465359, 23.950960, 29.275646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.502012, 23.183786, 29.227776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.179935, 23.328394, 29.415804>,  <12.986688, 23.415159, 29.528622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.179935, 23.328394, 29.415804>,  <13.502012, 23.183786, 29.227776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.179935, 23.328394, 29.415804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593012, -0.491506, -0.637777,
		0.000475, -0.792292, 0.610142,
		-0.805194, 0.361518, 0.470072,
		12.938376, 23.436850, 29.556826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078974, 22.621588, 29.403311>,  <13.502012, 23.183786, 29.227776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.078974, 22.621588, 29.403311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.800935, 22.907539, 29.433746>,  <12.634111, 23.079109, 29.452007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.800935, 22.907539, 29.433746>,  <13.078974, 22.621588, 29.403311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.800935, 22.907539, 29.433746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493272, -0.397257, -0.773867,
		-0.522995, -0.575444, 0.628761,
		-0.695096, 0.714879, 0.076087,
		12.592405, 23.122004, 29.456573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456405, 22.296919, 29.455978>,  <13.078974, 22.621588, 29.403311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.456405, 22.296919, 29.455978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.382042, 22.661659, 29.309572>,  <12.337424, 22.880503, 29.221729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.382042, 22.661659, 29.309572>,  <12.456405, 22.296919, 29.455978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.382042, 22.661659, 29.309572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658743, -0.392058, -0.642143,
		-0.729038, 0.121731, 0.673562,
		-0.185906, 0.911851, -0.366015,
		12.326270, 22.935215, 29.199768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.718466, 22.308016, 29.380941>,  <12.456405, 22.296919, 29.455978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.718466, 22.308016, 29.380941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.868941, 22.591269, 29.141933>,  <11.959227, 22.761221, 28.998528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.868941, 22.591269, 29.141933>,  <11.718466, 22.308016, 29.380941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.868941, 22.591269, 29.141933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493906, -0.392366, -0.775954,
		-0.783925, 0.587025, 0.202147,
		0.376189, 0.708131, -0.597521,
		11.981798, 22.803707, 28.962677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.233953, 22.335958, 28.981266>,  <11.718466, 22.308016, 29.380941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.233953, 22.335958, 28.981266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.516785, 22.540808, 28.786222>,  <11.686484, 22.663717, 28.669195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.516785, 22.540808, 28.786222>,  <11.233953, 22.335958, 28.981266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.516785, 22.540808, 28.786222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301182, -0.405779, -0.862921,
		-0.639785, 0.757015, -0.132675,
		0.707081, 0.512125, -0.487611,
		11.728909, 22.694445, 28.639938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.939588, 22.546730, 28.411303>,  <11.233953, 22.335958, 28.981266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.939588, 22.546730, 28.411303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.329020, 22.553391, 28.320210>,  <11.562679, 22.557386, 28.265553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.329020, 22.553391, 28.320210>,  <10.939588, 22.546730, 28.411303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.329020, 22.553391, 28.320210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183921, -0.533885, -0.825312,
		-0.135326, 0.845393, -0.516718,
		0.973581, 0.016650, -0.227734,
		11.621094, 22.558386, 28.251888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.916836, 22.603470, 27.711706>,  <10.939588, 22.546730, 28.411303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.916836, 22.603470, 27.711706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.302445, 22.512573, 27.766867>,  <11.533812, 22.458035, 27.799963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.302445, 22.512573, 27.766867>,  <10.916836, 22.603470, 27.711706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302445, 22.512573, 27.766867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053064, -0.343830, -0.937531,
		0.260461, 0.911121, -0.319403,
		0.964025, -0.227242, 0.137902,
		11.591653, 22.444401, 27.808237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.362622, 22.971693, 27.161720>,  <10.916836, 22.603470, 27.711706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.362622, 22.971693, 27.161720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.524612, 22.633055, 27.299862>,  <11.621806, 22.429871, 27.382748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.524612, 22.633055, 27.299862>,  <11.362622, 22.971693, 27.161720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.524612, 22.633055, 27.299862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077011, -0.344789, -0.935516,
		0.911079, 0.405456, -0.074434,
		0.404975, -0.846597, 0.345354,
		11.646105, 22.379076, 27.403469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905655, 22.746401, 26.658047>,  <11.362622, 22.971693, 27.161720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905655, 22.746401, 26.658047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.840107, 22.405415, 26.856621>,  <11.800778, 22.200823, 26.975765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.840107, 22.405415, 26.856621>,  <11.905655, 22.746401, 26.658047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.840107, 22.405415, 26.856621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191253, -0.521145, -0.831763,
		0.967765, -0.041356, 0.248436,
		-0.163870, -0.852465, 0.496437,
		11.790946, 22.149675, 27.005552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440152, 22.371502, 26.520126>,  <11.905655, 22.746401, 26.658047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440152, 22.371502, 26.520126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.142138, 22.121046, 26.612103>,  <11.963330, 21.970772, 26.667288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.142138, 22.121046, 26.612103>,  <12.440152, 22.371502, 26.520126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.142138, 22.121046, 26.612103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042708, -0.299240, -0.953222,
		0.665659, -0.720002, 0.196202,
		-0.745033, -0.626141, 0.229941,
		11.918629, 21.933205, 26.681086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649950, 21.705978, 26.297693>,  <12.440152, 22.371502, 26.520126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649950, 21.705978, 26.297693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.252111, 21.668173, 26.314884>,  <12.013409, 21.645489, 26.325199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.252111, 21.668173, 26.314884>,  <12.649950, 21.705978, 26.297693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.252111, 21.668173, 26.314884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027486, -0.159467, -0.986821,
		0.100122, -0.982668, 0.156007,
		-0.994595, -0.094515, 0.042976,
		11.953732, 21.639818, 26.327778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541066, 21.117208, 25.803053>,  <12.649950, 21.705978, 26.297693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.541066, 21.117208, 25.803053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.173184, 21.268547, 25.845001>,  <11.952456, 21.359350, 25.870171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.173184, 21.268547, 25.845001>,  <12.541066, 21.117208, 25.803053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.173184, 21.268547, 25.845001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174869, -0.155598, -0.972219,
		-0.351518, -0.912493, 0.209265,
		-0.919704, 0.378346, 0.104871,
		11.897273, 21.382050, 25.876463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.189206, 20.722914, 25.421036>,  <12.541066, 21.117208, 25.803053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.189206, 20.722914, 25.421036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.952065, 21.043724, 25.450096>,  <11.809780, 21.236210, 25.467533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.952065, 21.043724, 25.450096>,  <12.189206, 20.722914, 25.421036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.952065, 21.043724, 25.450096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178942, -0.043236, -0.982909,
		-0.785178, -0.595721, 0.169149,
		-0.592853, 0.802027, 0.072652,
		11.774209, 21.284332, 25.471891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.635509, 20.537718, 24.974379>,  <12.189206, 20.722914, 25.421036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.635509, 20.537718, 24.974379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.648618, 20.935427, 25.015074>,  <11.656483, 21.174051, 25.039490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.648618, 20.935427, 25.015074>,  <11.635509, 20.537718, 24.974379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.648618, 20.935427, 25.015074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206252, 0.106328, -0.972705,
		-0.977950, 0.010893, 0.208555,
		0.032771, 0.994271, 0.101737,
		11.658449, 21.233707, 25.045595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.069244, 20.709862, 24.472729>,  <11.635509, 20.537718, 24.974379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.069244, 20.709862, 24.472729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.260628, 21.056072, 24.531977>,  <11.375458, 21.263800, 24.567526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.260628, 21.056072, 24.531977>,  <11.069244, 20.709862, 24.472729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.260628, 21.056072, 24.531977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236126, 0.289280, -0.927665,
		-0.845767, 0.408874, 0.342782,
		0.478458, 0.865528, 0.148117,
		11.404165, 21.315731, 24.576412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.619609, 21.319464, 24.266186>,  <11.069244, 20.709862, 24.472729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.619609, 21.319464, 24.266186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.005394, 21.424274, 24.252598>,  <11.236865, 21.487162, 24.244446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.005394, 21.424274, 24.252598>,  <10.619609, 21.319464, 24.266186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.005394, 21.424274, 24.252598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121536, 0.325793, -0.937597,
		-0.234610, 0.908405, 0.346061,
		0.964462, 0.262029, -0.033970,
		11.294733, 21.502884, 24.242407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.612349, 21.804285, 23.774372>,  <10.619609, 21.319464, 24.266186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.612349, 21.804285, 23.774372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.010586, 21.791876, 23.809767>,  <11.249528, 21.784430, 23.831003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.010586, 21.791876, 23.809767>,  <10.612349, 21.804285, 23.774372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.010586, 21.791876, 23.809767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093661, 0.284249, -0.954164,
		0.004450, 0.958248, 0.285903,
		0.995594, -0.031024, 0.088486,
		11.309264, 21.782568, 23.836313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.910977, 22.426519, 23.505074>,  <10.612349, 21.804285, 23.774372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.910977, 22.426519, 23.505074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.195521, 22.145464, 23.498528>,  <11.366248, 21.976831, 23.494600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.195521, 22.145464, 23.498528>,  <10.910977, 22.426519, 23.505074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.195521, 22.145464, 23.498528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114144, 0.138474, -0.983766,
		0.693496, 0.697945, 0.178706,
		0.711361, -0.702637, -0.016365,
		11.408930, 21.934673, 23.493618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.428318, 22.684298, 23.067219>,  <10.910977, 22.426519, 23.505074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.428318, 22.684298, 23.067219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.485739, 22.288456, 23.070618>,  <11.520191, 22.050951, 23.072657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.485739, 22.288456, 23.070618>,  <11.428318, 22.684298, 23.067219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.485739, 22.288456, 23.070618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068336, 0.001348, -0.997661,
		0.987281, 0.143797, 0.067819,
		0.143552, -0.989606, 0.008496,
		11.528805, 21.991573, 23.073166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.885245, 22.528990, 22.497581>,  <11.428318, 22.684298, 23.067219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.885245, 22.528990, 22.497581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.676077, 22.199646, 22.585793>,  <11.550576, 22.002039, 22.638720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.676077, 22.199646, 22.585793>,  <11.885245, 22.528990, 22.497581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676077, 22.199646, 22.585793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257040, -0.094356, -0.961784,
		0.812702, -0.559621, -0.162296,
		-0.522920, -0.823360, 0.220528,
		11.519200, 21.952639, 22.651951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<14.869802, 19.427347, 5.566672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.154793, 19.349751, 5.836411>,  <15.325787, 19.303192, 5.998255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.154793, 19.349751, 5.836411>,  <14.869802, 19.427347, 5.566672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154793, 19.349751, 5.836411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679185, -0.432130, 0.593272,
		0.176317, -0.880699, -0.439637,
		0.712475, -0.193991, 0.674349,
		15.368535, 19.291553, 6.038716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.689011, 18.768974, 6.031665>,  <14.869802, 19.427347, 5.566672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.689011, 18.768974, 6.031665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.923289, 19.030760, 6.222928>,  <15.063856, 19.187832, 6.337686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.923289, 19.030760, 6.222928>,  <14.689011, 18.768974, 6.031665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923289, 19.030760, 6.222928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626254, -0.009106, 0.779566,
		0.514554, -0.756036, 0.404529,
		0.585696, 0.654466, 0.478156,
		15.098998, 19.227100, 6.366375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884967, 18.469656, 6.798288>,  <14.689011, 18.768974, 6.031665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.884967, 18.469656, 6.798288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.880078, 18.869394, 6.811900>,  <14.877146, 19.109238, 6.820067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.880078, 18.869394, 6.811900>,  <14.884967, 18.469656, 6.798288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.880078, 18.869394, 6.811900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664629, -0.033546, 0.746420,
		0.747074, -0.013496, 0.664604,
		-0.012221, 0.999346, 0.034031,
		14.876412, 19.169199, 6.822109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069826, 18.664143, 7.550716>,  <14.884967, 18.469656, 6.798288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.069826, 18.664143, 7.550716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.822194, 18.897240, 7.340136>,  <14.673615, 19.037098, 7.213787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.822194, 18.897240, 7.340136>,  <15.069826, 18.664143, 7.550716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822194, 18.897240, 7.340136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675923, -0.054081, 0.734985,
		0.399836, 0.810856, 0.427369,
		-0.619080, 0.582741, -0.526453,
		14.636470, 19.072062, 7.182200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864020, 19.186626, 7.941488>,  <15.069826, 18.664143, 7.550716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864020, 19.186626, 7.941488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.594362, 19.089247, 7.662559>,  <14.432568, 19.030819, 7.495202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.594362, 19.089247, 7.662559>,  <14.864020, 19.186626, 7.941488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594362, 19.089247, 7.662559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690001, -0.129219, 0.712180,
		-0.263488, 0.961267, -0.080868,
		-0.674146, -0.243450, -0.697323,
		14.392118, 19.016212, 7.453362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.482957, 19.086435, 8.504514>,  <14.864020, 19.186626, 7.941488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.482957, 19.086435, 8.504514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.435770, 18.695559, 8.433885>,  <14.407458, 18.461033, 8.391507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.435770, 18.695559, 8.433885>,  <14.482957, 19.086435, 8.504514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.435770, 18.695559, 8.433885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674045, 0.051778, -0.736874,
		0.729210, -0.205945, 0.652563,
		-0.117967, -0.977193, -0.176573,
		14.400380, 18.402401, 8.380913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.151550, 18.786375, 8.498814>,  <14.482957, 19.086435, 8.504514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.151550, 18.786375, 8.498814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.890143, 18.560230, 8.297504>,  <14.733299, 18.424543, 8.176719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.890143, 18.560230, 8.297504>,  <15.151550, 18.786375, 8.498814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.890143, 18.560230, 8.297504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582374, 0.049139, -0.811434,
		0.483483, -0.823379, 0.297138,
		-0.653517, -0.565361, -0.503272,
		14.694088, 18.390621, 8.146523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386902, 18.163187, 8.141497>,  <15.151550, 18.786375, 8.498814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.386902, 18.163187, 8.141497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.711830, 18.392637, 8.183619>,  <15.906787, 18.530308, 8.208892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.711830, 18.392637, 8.183619>,  <15.386902, 18.163187, 8.141497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.711830, 18.392637, 8.183619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437762, -0.719015, 0.539798,
		0.385359, -0.392390, -0.835182,
		0.812320, 0.573627, 0.105305,
		15.955526, 18.564726, 8.215210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960704, 17.834993, 7.770612>,  <15.386902, 18.163187, 8.141497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960704, 17.834993, 7.770612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.119341, 18.066097, 8.055964>,  <16.214523, 18.204760, 8.227175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.119341, 18.066097, 8.055964>,  <15.960704, 17.834993, 7.770612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119341, 18.066097, 8.055964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695890, -0.696035, 0.176842,
		0.598709, 0.426299, -0.678098,
		0.396592, 0.577759, 0.713379,
		16.238319, 18.239426, 8.269978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605721, 17.745211, 7.653572>,  <15.960704, 17.834993, 7.770612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605721, 17.745211, 7.653572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.557859, 17.845676, 8.037780>,  <16.529142, 17.905956, 8.268305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.557859, 17.845676, 8.037780>,  <16.605721, 17.745211, 7.653572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.557859, 17.845676, 8.037780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845671, -0.481056, 0.231139,
		0.520118, 0.839941, -0.154844,
		-0.119655, 0.251166, 0.960520,
		16.521963, 17.921026, 8.325935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313000, 17.959562, 7.950896>,  <16.605721, 17.745211, 7.653572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.313000, 17.959562, 7.950896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.073488, 17.853598, 8.253229>,  <16.929781, 17.790020, 8.434629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.073488, 17.853598, 8.253229>,  <17.313000, 17.959562, 7.950896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073488, 17.853598, 8.253229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722285, -0.586386, 0.366682,
		0.346073, 0.765489, 0.542458,
		-0.598780, -0.264910, 0.755834,
		16.893854, 17.774124, 8.479980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744852, 17.981224, 8.439409>,  <17.313000, 17.959562, 7.950896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744852, 17.981224, 8.439409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.462881, 17.753370, 8.608449>,  <17.293697, 17.616657, 8.709873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.462881, 17.753370, 8.608449>,  <17.744852, 17.981224, 8.439409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462881, 17.753370, 8.608449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708036, -0.600404, 0.371753,
		0.041967, 0.561276, 0.826564,
		-0.704929, -0.569636, 0.422600,
		17.251402, 17.582479, 8.735229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.854345, 17.933739, 9.191596>,  <17.744852, 17.981224, 8.439409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.854345, 17.933739, 9.191596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.636507, 17.626211, 9.057534>,  <17.505804, 17.441694, 8.977098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.636507, 17.626211, 9.057534>,  <17.854345, 17.933739, 9.191596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.636507, 17.626211, 9.057534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660462, -0.639426, 0.393605,
		-0.516918, -0.007001, 0.856007,
		-0.544597, -0.768821, -0.335154,
		17.473127, 17.395565, 8.956988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021044, 17.520451, 9.692550>,  <17.854345, 17.933739, 9.191596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021044, 17.520451, 9.692550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.823170, 17.267769, 9.453808>,  <17.704445, 17.116159, 9.310563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.823170, 17.267769, 9.453808>,  <18.021044, 17.520451, 9.692550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823170, 17.267769, 9.453808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564712, -0.755673, 0.331752,
		-0.660596, -0.172938, 0.730552,
		-0.494686, -0.631705, -0.596854,
		17.674765, 17.078257, 9.274752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858805, 17.020620, 10.128838>,  <18.021044, 17.520451, 9.692550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.858805, 17.020620, 10.128838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.843254, 16.863092, 9.761492>,  <17.833923, 16.768576, 9.541084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.843254, 16.863092, 9.761492>,  <17.858805, 17.020620, 10.128838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843254, 16.863092, 9.761492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466795, -0.819770, 0.331781,
		-0.883511, -0.415791, 0.215702,
		-0.038874, -0.393821, -0.918365,
		17.831593, 16.744946, 9.485982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635162, 16.370214, 10.179873>,  <17.858805, 17.020620, 10.128838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635162, 16.370214, 10.179873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.793343, 16.344082, 9.813408>,  <17.888250, 16.328403, 9.593529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.793343, 16.344082, 9.813408>,  <17.635162, 16.370214, 10.179873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.793343, 16.344082, 9.813408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256397, -0.949963, 0.178411,
		-0.881975, -0.305454, -0.358912,
		0.395449, -0.065330, -0.916161,
		17.911978, 16.324482, 9.538559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337812, 15.778693, 9.904892>,  <17.635162, 16.370214, 10.179873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337812, 15.778693, 9.904892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.679193, 15.867041, 9.716070>,  <17.884022, 15.920049, 9.602777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.679193, 15.867041, 9.716070>,  <17.337812, 15.778693, 9.904892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679193, 15.867041, 9.716070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390920, -0.870314, 0.299559,
		-0.344672, -0.440195, -0.829114,
		0.853453, 0.220868, -0.472053,
		17.935230, 15.933301, 9.574454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533669, 15.207429, 9.552060>,  <17.337812, 15.778693, 9.904892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.533669, 15.207429, 9.552060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.866518, 15.424099, 9.599653>,  <18.066227, 15.554101, 9.628209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.866518, 15.424099, 9.599653>,  <17.533669, 15.207429, 9.552060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.866518, 15.424099, 9.599653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464091, -0.797581, 0.385337,
		0.303627, -0.265429, -0.915073,
		0.832124, 0.541676, 0.118984,
		18.116156, 15.586601, 9.635348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909946, 14.829698, 9.234456>,  <17.533669, 15.207429, 9.552060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909946, 14.829698, 9.234456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.131990, 15.061398, 9.473228>,  <18.265217, 15.200418, 9.616490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.131990, 15.061398, 9.473228>,  <17.909946, 14.829698, 9.234456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131990, 15.061398, 9.473228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490850, -0.807500, 0.327124,
		0.671506, 0.111412, -0.732576,
		0.555109, 0.579250, 0.596928,
		18.298523, 15.235172, 9.652306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567471, 14.396161, 9.299223>,  <17.909946, 14.829698, 9.234456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567471, 14.396161, 9.299223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.636078, 14.668176, 9.584356>,  <18.677242, 14.831385, 9.755436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.636078, 14.668176, 9.584356>,  <18.567471, 14.396161, 9.299223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.636078, 14.668176, 9.584356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523847, -0.675743, 0.518609,
		0.834366, 0.284465, -0.472137,
		0.171517, 0.680037, 0.712833,
		18.687532, 14.872187, 9.798206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235498, 14.282288, 9.530993>,  <18.567471, 14.396161, 9.299223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235498, 14.282288, 9.530993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.081617, 14.495447, 9.832463>,  <18.989288, 14.623343, 10.013345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.081617, 14.495447, 9.832463>,  <19.235498, 14.282288, 9.530993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.081617, 14.495447, 9.832463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422166, -0.624527, 0.657071,
		0.820842, 0.570951, 0.015284,
		-0.384701, 0.532899, 0.753674,
		18.966208, 14.655317, 10.058565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784931, 14.374846, 9.975658>,  <19.235498, 14.282288, 9.530993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784931, 14.374846, 9.975658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.450527, 14.404355, 10.193151>,  <19.249886, 14.422061, 10.323646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.450527, 14.404355, 10.193151>,  <19.784931, 14.374846, 9.975658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.450527, 14.404355, 10.193151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435853, -0.512704, 0.739707,
		0.333344, 0.855390, 0.396472,
		-0.836011, 0.073773, 0.543731,
		19.199724, 14.426487, 10.356270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.030876, 14.458797, 10.678479>,  <19.784931, 14.374846, 9.975658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.030876, 14.458797, 10.678479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.653309, 14.333347, 10.719783>,  <19.426769, 14.258078, 10.744565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.653309, 14.333347, 10.719783>,  <20.030876, 14.458797, 10.678479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653309, 14.333347, 10.719783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297647, -0.672848, 0.677261,
		-0.142926, 0.670013, 0.728461,
		-0.943916, -0.313623, 0.103260,
		19.370134, 14.239261, 10.750761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.831337, 14.530524, 11.404016>,  <20.030876, 14.458797, 10.678479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.831337, 14.530524, 11.404016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.567369, 14.266936, 11.259647>,  <19.408989, 14.108784, 11.173026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.567369, 14.266936, 11.259647>,  <19.831337, 14.530524, 11.404016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.567369, 14.266936, 11.259647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091861, -0.547535, 0.831725,
		-0.745699, 0.515718, 0.421863,
		-0.659920, -0.658969, -0.360922,
		19.369394, 14.069245, 11.151371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.341179, 14.306243, 11.968974>,  <19.831337, 14.530524, 11.404016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.341179, 14.306243, 11.968974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.295721, 13.997973, 11.718168>,  <19.268446, 13.813012, 11.567685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.295721, 13.997973, 11.718168>,  <19.341179, 14.306243, 11.968974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.295721, 13.997973, 11.718168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201030, -0.635885, 0.745142,
		-0.972971, -0.041368, 0.227192,
		-0.113643, -0.770674, -0.627014,
		19.261629, 13.766771, 11.530064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909697, 13.916832, 12.332199>,  <19.341179, 14.306243, 11.968974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909697, 13.916832, 12.332199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.089264, 13.690021, 12.055952>,  <19.197004, 13.553934, 11.890204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.089264, 13.690021, 12.055952>,  <18.909697, 13.916832, 12.332199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089264, 13.690021, 12.055952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292375, -0.637121, 0.713157,
		-0.844387, -0.522068, -0.120231,
		0.448918, -0.567029, -0.690616,
		19.223940, 13.519912, 11.848767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611935, 13.203191, 12.388590>,  <18.909697, 13.916832, 12.332199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.611935, 13.203191, 12.388590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.983322, 13.188025, 12.240801>,  <19.206154, 13.178926, 12.152127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.983322, 13.188025, 12.240801>,  <18.611935, 13.203191, 12.388590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983322, 13.188025, 12.240801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310575, -0.466312, 0.828310,
		-0.203693, -0.883808, -0.421181,
		0.928468, -0.037913, -0.369473,
		19.261862, 13.176652, 12.129959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857859, 12.544132, 12.680475>,  <18.611935, 13.203191, 12.388590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857859, 12.544132, 12.680475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.171984, 12.748472, 12.540582>,  <19.360458, 12.871076, 12.456645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.171984, 12.748472, 12.540582>,  <18.857859, 12.544132, 12.680475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171984, 12.748472, 12.540582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502655, -0.196345, 0.841895,
		0.361413, -0.836948, -0.410974,
		0.785315, 0.510849, -0.349735,
		19.407578, 12.901727, 12.435661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362839, 12.038642, 12.745866>,  <18.857859, 12.544132, 12.680475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362839, 12.038642, 12.745866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.529228, 12.401882, 12.726594>,  <19.629063, 12.619826, 12.715031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.529228, 12.401882, 12.726594>,  <19.362839, 12.038642, 12.745866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.529228, 12.401882, 12.726594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587912, -0.228129, 0.776090,
		0.693776, -0.351158, -0.628778,
		0.415973, 0.908100, -0.048180,
		19.654020, 12.674312, 12.712140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090145, 11.921547, 13.029424>,  <19.362839, 12.038642, 12.745866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090145, 11.921547, 13.029424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.019861, 12.314913, 13.047403>,  <19.977692, 12.550933, 13.058191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.019861, 12.314913, 13.047403>,  <20.090145, 11.921547, 13.029424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.019861, 12.314913, 13.047403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530385, 0.056100, 0.845899,
		0.829349, 0.172472, -0.531446,
		-0.175708, 0.983416, 0.044950,
		19.967150, 12.609938, 13.060888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704168, 12.316151, 13.255318>,  <20.090145, 11.921547, 13.029424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704168, 12.316151, 13.255318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.355139, 12.483840, 13.355611>,  <20.145721, 12.584454, 13.415787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.355139, 12.483840, 13.355611>,  <20.704168, 12.316151, 13.255318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.355139, 12.483840, 13.355611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335787, 0.141984, 0.931175,
		0.354770, 0.896712, -0.264662,
		-0.872574, 0.419224, 0.250733,
		20.093367, 12.609607, 13.430831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.755497, 12.968225, 13.633810>,  <20.704168, 12.316151, 13.255318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.755497, 12.968225, 13.633810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423273, 12.776333, 13.746967>,  <20.223938, 12.661198, 13.814862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423273, 12.776333, 13.746967>,  <20.755497, 12.968225, 13.633810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423273, 12.776333, 13.746967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236469, 0.156125, 0.959014,
		-0.504234, 0.863414, -0.016230,
		-0.830560, -0.479730, 0.282894,
		20.174105, 12.632414, 13.831836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.582600, 13.759665, 13.364523>,  <20.755497, 12.968225, 13.633810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.582600, 13.759665, 13.364523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482939, 13.771881, 13.751716>,  <20.423141, 13.779210, 13.984032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482939, 13.771881, 13.751716>,  <20.582600, 13.759665, 13.364523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482939, 13.771881, 13.751716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762484, 0.610062, -0.215505,
		-0.597111, -0.791765, -0.128712,
		-0.249151, 0.030539, 0.967983,
		20.408194, 13.781043, 14.042110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.711609, 14.429821, 13.474288>,  <20.582600, 13.759665, 13.364523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.711609, 14.429821, 13.474288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.943258, 14.719036, 13.624931>,  <21.082249, 14.892565, 13.715317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.943258, 14.719036, 13.624931>,  <20.711609, 14.429821, 13.474288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.943258, 14.719036, 13.624931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289913, -0.614415, 0.733787,
		0.761949, -0.315770, -0.565440,
		0.579123, 0.723037, 0.376608,
		21.116995, 14.935947, 13.737913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261557, 14.170128, 13.669526>,  <20.711609, 14.429821, 13.474288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261557, 14.170128, 13.669526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.335194, 14.506225, 13.873528>,  <21.379375, 14.707883, 13.995929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.335194, 14.506225, 13.873528>,  <21.261557, 14.170128, 13.669526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335194, 14.506225, 13.873528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535953, -0.520759, 0.664503,
		0.823932, 0.151010, -0.546197,
		0.184091, 0.840242, 0.510004,
		21.390421, 14.758297, 14.026529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.836565, 14.743119, 13.742625>,  <21.261557, 14.170128, 13.669526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.836565, 14.743119, 13.742625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.168333, 14.887148, 13.571785>,  <22.367393, 14.973565, 13.469281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.168333, 14.887148, 13.571785>,  <21.836565, 14.743119, 13.742625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168333, 14.887148, 13.571785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467778, 0.865601, -0.178659,
		0.305368, 0.347971, 0.886378,
		0.829418, 0.360072, -0.427100,
		22.417158, 14.995170, 13.443655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.153234, 15.299511, 14.123439>,  <21.836565, 14.743119, 13.742625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.153234, 15.299511, 14.123439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.177692, 15.322220, 13.724833>,  <22.192368, 15.335845, 13.485670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.177692, 15.322220, 13.724833>,  <22.153234, 15.299511, 14.123439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.177692, 15.322220, 13.724833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478527, 0.877830, 0.020649,
		0.875941, 0.475596, 0.080839,
		0.061142, 0.056771, -0.996514,
		22.196035, 15.339252, 13.425879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.266829, 16.031555, 13.923268>,  <22.153234, 15.299511, 14.123439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.266829, 16.031555, 13.923268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.132977, 15.846242, 13.595027>,  <22.052666, 15.735054, 13.398082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.132977, 15.846242, 13.595027>,  <22.266829, 16.031555, 13.923268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.132977, 15.846242, 13.595027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540680, 0.807603, -0.235464,
		0.771808, 0.364891, -0.520737,
		-0.334630, -0.463285, -0.820603,
		22.032587, 15.707256, 13.348846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.642450, 16.637829, 13.688439>,  <22.266829, 16.031555, 13.923268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.642450, 16.637829, 13.688439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.812466, 16.697447, 13.331310>,  <22.914474, 16.733217, 13.117033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.812466, 16.697447, 13.331310>,  <22.642450, 16.637829, 13.688439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.812466, 16.697447, 13.331310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882513, 0.287565, -0.372124,
		0.201282, 0.946093, 0.253759,
		0.425036, 0.149043, -0.892822,
		22.939976, 16.742159, 13.063464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.554436, 17.295988, 13.474136>,  <22.642450, 16.637829, 13.688439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.554436, 17.295988, 13.474136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.598475, 17.127474, 13.114048>,  <22.624897, 17.026365, 12.897995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.598475, 17.127474, 13.114048>,  <22.554436, 17.295988, 13.474136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.598475, 17.127474, 13.114048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757268, 0.551080, -0.350508,
		0.643758, 0.720298, -0.258355,
		0.110096, -0.421286, -0.900220,
		22.631504, 17.001087, 12.843982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.629131, 17.831522, 13.129087>,  <22.554436, 17.295988, 13.474136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.629131, 17.831522, 13.129087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.534149, 17.540497, 12.871633>,  <22.477160, 17.365883, 12.717159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.534149, 17.540497, 12.871633>,  <22.629131, 17.831522, 13.129087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534149, 17.540497, 12.871633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765043, 0.548373, -0.337634,
		0.598603, 0.412238, -0.686829,
		-0.237453, -0.727562, -0.643637,
		22.462914, 17.322227, 12.678541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.474939, 18.196318, 12.586924>,  <22.629131, 17.831522, 13.129087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.474939, 18.196318, 12.586924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.302628, 17.837988, 12.543235>,  <22.199240, 17.622990, 12.517021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.302628, 17.837988, 12.543235>,  <22.474939, 18.196318, 12.586924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.302628, 17.837988, 12.543235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868654, 0.444410, -0.218951,
		0.244681, 0.000557, -0.969604,
		-0.430780, -0.895823, -0.109222,
		22.173393, 17.569241, 12.510468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.175812, 18.264565, 12.033007>,  <22.474939, 18.196318, 12.586924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.175812, 18.264565, 12.033007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.987738, 17.949366, 12.191998>,  <21.874893, 17.760246, 12.287392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.987738, 17.949366, 12.191998>,  <22.175812, 18.264565, 12.033007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.987738, 17.949366, 12.191998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870577, 0.340109, -0.355558,
		0.144993, -0.513212, -0.845926,
		-0.470184, -0.787997, 0.397477,
		21.846682, 17.712967, 12.311240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891376, 17.877945, 11.459368>,  <22.175812, 18.264565, 12.033007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891376, 17.877945, 11.459368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.681713, 17.782288, 11.786309>,  <21.555914, 17.724894, 11.982474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.681713, 17.782288, 11.786309>,  <21.891376, 17.877945, 11.459368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.681713, 17.782288, 11.786309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850980, 0.184270, -0.491810,
		-0.033002, -0.953340, -0.300091,
		-0.524159, -0.239141, 0.817354,
		21.524466, 17.710545, 12.031515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.314306, 17.577835, 11.200102>,  <21.891376, 17.877945, 11.459368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.314306, 17.577835, 11.200102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.204601, 17.635801, 11.580371>,  <21.138779, 17.670580, 11.808533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.204601, 17.635801, 11.580371>,  <21.314306, 17.577835, 11.200102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.204601, 17.635801, 11.580371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960459, 0.008013, -0.278306,
		-0.047947, -0.989412, 0.136984,
		-0.274262, 0.144912, 0.950674,
		21.122322, 17.679276, 11.865573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.839260, 17.051443, 11.391682>,  <21.314306, 17.577835, 11.200102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.839260, 17.051443, 11.391682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.762201, 17.348932, 11.647734>,  <20.715965, 17.527426, 11.801365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.762201, 17.348932, 11.647734>,  <20.839260, 17.051443, 11.391682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.762201, 17.348932, 11.647734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979193, -0.103306, -0.174666,
		-0.063774, -0.660461, 0.748147,
		-0.192648, 0.743720, 0.640131,
		20.704407, 17.572048, 11.839772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217594, 16.850138, 11.810644>,  <20.839260, 17.051443, 11.391682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217594, 16.850138, 11.810644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.247189, 17.247030, 11.850642>,  <20.264946, 17.485167, 11.874641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.247189, 17.247030, 11.850642>,  <20.217594, 16.850138, 11.810644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247189, 17.247030, 11.850642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971017, 0.094529, -0.219521,
		-0.227268, -0.080855, 0.970470,
		0.073988, 0.992233, 0.099995,
		20.269384, 17.544701, 11.880641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811470, 17.043818, 12.404797>,  <20.217594, 16.850138, 11.810644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811470, 17.043818, 12.404797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.833000, 17.349400, 12.147587>,  <19.845919, 17.532749, 11.993261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.833000, 17.349400, 12.147587>,  <19.811470, 17.043818, 12.404797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.833000, 17.349400, 12.147587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998461, 0.049768, -0.024451,
		0.013323, 0.643350, 0.765456,
		0.053826, 0.763953, -0.643023,
		19.849148, 17.578585, 11.954679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283220, 17.565756, 12.657480>,  <19.811470, 17.043818, 12.404797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283220, 17.565756, 12.657480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.362186, 17.658756, 12.276540>,  <19.409565, 17.714556, 12.047976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.362186, 17.658756, 12.276540>,  <19.283220, 17.565756, 12.657480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.362186, 17.658756, 12.276540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978542, -0.011752, -0.205712,
		-0.059020, 0.972526, 0.225190,
		0.197413, 0.232499, -0.952351,
		19.421410, 17.728506, 11.990834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739182, 17.860250, 12.564971>,  <19.283220, 17.565756, 12.657480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.739182, 17.860250, 12.564971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.866442, 17.839291, 12.186335>,  <18.942797, 17.826714, 11.959152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.866442, 17.839291, 12.186335>,  <18.739182, 17.860250, 12.564971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866442, 17.839291, 12.186335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945241, -0.094207, -0.312480,
		-0.072801, 0.994173, -0.079504,
		0.318149, -0.052401, -0.946591,
		18.961885, 17.823570, 11.902357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506746, 18.443323, 12.207977>,  <18.739182, 17.860250, 12.564971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506746, 18.443323, 12.207977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.584137, 18.180511, 11.916532>,  <18.630571, 18.022823, 11.741664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.584137, 18.180511, 11.916532>,  <18.506746, 18.443323, 12.207977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584137, 18.180511, 11.916532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946183, 0.071420, -0.315653,
		0.259431, 0.750473, -0.607853,
		0.193476, -0.657030, -0.728614,
		18.642179, 17.983402, 11.697948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.163708, 18.676466, 11.688606>,  <18.506746, 18.443323, 12.207977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.163708, 18.676466, 11.688606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.208111, 18.299952, 11.561071>,  <18.234753, 18.074043, 11.484550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.208111, 18.299952, 11.561071>,  <18.163708, 18.676466, 11.688606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208111, 18.299952, 11.561071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929702, 0.015013, -0.368008,
		0.351187, 0.337274, -0.873449,
		0.111007, -0.941287, -0.318836,
		18.241413, 18.017565, 11.465421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.958098, 22.017572, 17.502815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.766678, 21.686539, 17.620178>,  <14.651826, 21.487919, 17.690596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.766678, 21.686539, 17.620178>,  <14.958098, 22.017572, 17.502815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.766678, 21.686539, 17.620178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042521, -0.311923, -0.949156,
		0.877029, -0.466696, 0.114082,
		-0.478552, -0.827586, 0.293409,
		14.623113, 21.438263, 17.708200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011170, 21.619032, 16.870714>,  <14.958098, 22.017572, 17.502815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.011170, 21.619032, 16.870714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.785150, 21.362818, 17.078726>,  <14.649537, 21.209089, 17.203533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.785150, 21.362818, 17.078726>,  <15.011170, 21.619032, 16.870714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.785150, 21.362818, 17.078726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119073, -0.560383, -0.819629,
		0.816418, -0.525054, 0.240375,
		-0.565052, -0.640538, 0.520027,
		14.615634, 21.170656, 17.234734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286380, 20.891487, 16.734869>,  <15.011170, 21.619032, 16.870714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286380, 20.891487, 16.734869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.901055, 20.855980, 16.836182>,  <14.669861, 20.834675, 16.896969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.901055, 20.855980, 16.836182>,  <15.286380, 20.891487, 16.734869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.901055, 20.855980, 16.836182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110217, -0.729619, -0.674914,
		0.244710, -0.678068, 0.693066,
		-0.963312, -0.088770, 0.253280,
		14.612062, 20.829350, 16.912165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231488, 20.249743, 16.803831>,  <15.286380, 20.891487, 16.734869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.231488, 20.249743, 16.803831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.856437, 20.368673, 16.731777>,  <14.631406, 20.440033, 16.688545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.856437, 20.368673, 16.731777>,  <15.231488, 20.249743, 16.803831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.856437, 20.368673, 16.731777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084607, -0.697755, -0.711323,
		-0.337185, -0.651716, 0.679391,
		-0.937629, 0.297329, -0.180133,
		14.575148, 20.457872, 16.677738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816799, 19.638025, 16.835199>,  <15.231488, 20.249743, 16.803831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816799, 19.638025, 16.835199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598353, 19.907688, 16.636293>,  <14.467286, 20.069487, 16.516951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598353, 19.907688, 16.636293>,  <14.816799, 19.638025, 16.835199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.598353, 19.907688, 16.636293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374332, -0.727424, -0.575091,
		-0.749425, -0.127921, 0.649614,
		-0.546111, 0.674159, -0.497265,
		14.434519, 20.109936, 16.487114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137256, 19.294054, 16.732525>,  <14.816799, 19.638025, 16.835199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137256, 19.294054, 16.732525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191467, 19.585405, 16.463869>,  <14.223994, 19.760216, 16.302675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191467, 19.585405, 16.463869>,  <14.137256, 19.294054, 16.732525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191467, 19.585405, 16.463869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400285, -0.579852, -0.709608,
		-0.906313, 0.365020, 0.212971,
		0.135530, 0.728376, -0.671640,
		14.232126, 19.803919, 16.262377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.545976, 19.152491, 16.401718>,  <14.137256, 19.294054, 16.732525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.545976, 19.152491, 16.401718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779192, 19.369141, 16.159492>,  <13.919122, 19.499130, 16.014156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779192, 19.369141, 16.159492>,  <13.545976, 19.152491, 16.401718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779192, 19.369141, 16.159492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378484, -0.478464, -0.792352,
		-0.718897, 0.691169, -0.073968,
		0.583040, 0.541624, -0.605563,
		13.954104, 19.531628, 15.977823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074949, 19.344591, 15.935449>,  <13.545976, 19.152491, 16.401718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074949, 19.344591, 15.935449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434494, 19.365232, 15.761374>,  <13.650221, 19.377617, 15.656930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434494, 19.365232, 15.761374>,  <13.074949, 19.344591, 15.935449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.434494, 19.365232, 15.761374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386478, -0.374813, -0.842704,
		-0.206598, 0.925663, -0.316962,
		0.898861, 0.051602, -0.435184,
		13.704152, 19.380713, 15.630819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969203, 19.470308, 15.171030>,  <13.074949, 19.344591, 15.935449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969203, 19.470308, 15.171030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361400, 19.392790, 15.157881>,  <13.596718, 19.346279, 15.149991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361400, 19.392790, 15.157881>,  <12.969203, 19.470308, 15.171030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.361400, 19.392790, 15.157881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067366, -0.174189, -0.982405,
		0.184662, 0.965454, -0.183846,
		0.980491, -0.193797, -0.032873,
		13.655547, 19.334650, 15.148019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.386266, 19.810579, 14.525281>,  <12.969203, 19.470308, 15.171030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.386266, 19.810579, 14.525281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601726, 19.491196, 14.632852>,  <13.731002, 19.299566, 14.697394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601726, 19.491196, 14.632852>,  <13.386266, 19.810579, 14.525281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601726, 19.491196, 14.632852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102192, -0.254917, -0.961548,
		0.836309, 0.545421, -0.055715,
		0.538651, -0.798457, 0.268927,
		13.763321, 19.251659, 14.713530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.813081, 19.666271, 13.997718>,  <13.386266, 19.810579, 14.525281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.813081, 19.666271, 13.997718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844909, 19.321325, 14.197717>,  <13.864006, 19.114359, 14.317717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844909, 19.321325, 14.197717>,  <13.813081, 19.666271, 13.997718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844909, 19.321325, 14.197717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105638, -0.491469, -0.864465,
		0.991216, 0.121605, 0.051992,
		0.079571, -0.862364, 0.499998,
		13.868780, 19.062616, 14.347716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.387326, 19.293673, 13.815597>,  <13.813081, 19.666271, 13.997718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.387326, 19.293673, 13.815597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.149602, 19.009634, 13.966626>,  <14.006968, 18.839211, 14.057243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.149602, 19.009634, 13.966626>,  <14.387326, 19.293673, 13.815597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.149602, 19.009634, 13.966626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027570, -0.487193, -0.872859,
		0.803763, -0.508339, 0.309121,
		-0.594310, -0.710094, 0.377573,
		13.971309, 18.796606, 14.079898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705478, 18.613646, 13.675804>,  <14.387326, 19.293673, 13.815597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705478, 18.613646, 13.675804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.305717, 18.600378, 13.671799>,  <14.065862, 18.592417, 13.669395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.305717, 18.600378, 13.671799>,  <14.705478, 18.613646, 13.675804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.305717, 18.600378, 13.671799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021155, -0.355271, -0.934524,
		0.027439, -0.934175, 0.355759,
		-0.999399, -0.033168, -0.010014,
		14.005898, 18.590427, 13.668795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262827, 18.965237, 14.130644>,  <14.705478, 18.613646, 13.675804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262827, 18.965237, 14.130644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.607678, 18.971979, 14.333207>,  <15.814590, 18.976025, 14.454745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.607678, 18.971979, 14.333207>,  <15.262827, 18.965237, 14.130644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607678, 18.971979, 14.333207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039441, -0.994181, 0.100240,
		0.505152, -0.106393, -0.856447,
		0.862129, 0.016858, 0.506408,
		15.866317, 18.977036, 14.485129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834989, 18.397106, 14.267882>,  <15.262827, 18.965237, 14.130644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834989, 18.397106, 14.267882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106724, 18.254858, 14.524642>,  <16.269764, 18.169510, 14.678698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106724, 18.254858, 14.524642>,  <15.834989, 18.397106, 14.267882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.106724, 18.254858, 14.524642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646556, 0.123663, 0.752776,
		-0.347082, -0.926413, -0.145919,
		0.679337, -0.355620, 0.641900,
		16.310526, 18.148172, 14.717212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478374, 17.846958, 14.703034>,  <15.834989, 18.397106, 14.267882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478374, 17.846958, 14.703034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802094, 17.936905, 14.920094>,  <15.996325, 17.990873, 15.050330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802094, 17.936905, 14.920094>,  <15.478374, 17.846958, 14.703034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802094, 17.936905, 14.920094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543763, -0.062601, 0.836900,
		0.222160, -0.972377, 0.071611,
		0.809300, 0.224866, 0.542651,
		16.044884, 18.004364, 15.082890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532109, 17.260643, 15.231551>,  <15.478374, 17.846958, 14.703034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532109, 17.260643, 15.231551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716876, 17.593843, 15.353364>,  <15.827736, 17.793764, 15.426452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716876, 17.593843, 15.353364>,  <15.532109, 17.260643, 15.231551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.716876, 17.593843, 15.353364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516984, -0.026113, 0.855597,
		0.720667, -0.552653, 0.418587,
		0.461917, 0.833003, 0.304531,
		15.855452, 17.843744, 15.444723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842008, 17.192657, 15.902088>,  <15.532109, 17.260643, 15.231551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842008, 17.192657, 15.902088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760508, 17.582315, 15.863045>,  <15.711607, 17.816111, 15.839619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760508, 17.582315, 15.863045>,  <15.842008, 17.192657, 15.902088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760508, 17.582315, 15.863045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225521, 0.050318, 0.972938,
		0.952694, 0.220250, 0.209437,
		-0.203751, 0.974145, -0.097608,
		15.699382, 17.874559, 15.833762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149847, 17.379374, 16.523602>,  <15.842008, 17.192657, 15.902088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.149847, 17.379374, 16.523602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939218, 17.701019, 16.413240>,  <15.812840, 17.894007, 16.347025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939218, 17.701019, 16.413240>,  <16.149847, 17.379374, 16.523602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939218, 17.701019, 16.413240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327981, 0.107260, 0.938576,
		0.784316, 0.584718, 0.207255,
		-0.526572, 0.804115, -0.275902,
		15.781246, 17.942253, 16.330469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308573, 17.906654, 17.073265>,  <16.149847, 17.379374, 16.523602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.308573, 17.906654, 17.073265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958266, 18.006987, 16.908283>,  <15.748082, 18.067186, 16.809294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958266, 18.006987, 16.908283>,  <16.308573, 17.906654, 17.073265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958266, 18.006987, 16.908283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351918, 0.253116, 0.901158,
		0.330436, 0.934354, -0.133398,
		-0.875766, 0.250830, -0.412455,
		15.695537, 18.082235, 16.784546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054836, 18.534321, 17.472937>,  <16.308573, 17.906654, 17.073265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054836, 18.534321, 17.472937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723510, 18.420050, 17.280153>,  <15.524714, 18.351486, 17.164484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723510, 18.420050, 17.280153>,  <16.054836, 18.534321, 17.472937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.723510, 18.420050, 17.280153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544539, 0.208122, 0.812504,
		-0.131808, 0.935454, -0.327953,
		-0.828314, -0.285677, -0.481959,
		15.475016, 18.334347, 17.135565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.546450, 19.069826, 17.548576>,  <16.054836, 18.534321, 17.472937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.546450, 19.069826, 17.548576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340604, 18.733625, 17.480778>,  <15.217096, 18.531906, 17.440098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340604, 18.733625, 17.480778>,  <15.546450, 19.069826, 17.548576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.340604, 18.733625, 17.480778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528161, 0.155014, 0.834876,
		-0.675439, 0.519162, -0.523692,
		-0.514615, -0.840501, -0.169499,
		15.186219, 18.481476, 17.429928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956418, 19.223595, 17.858437>,  <15.546450, 19.069826, 17.548576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.956418, 19.223595, 17.858437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950397, 18.825390, 17.821062>,  <14.946784, 18.586468, 17.798637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950397, 18.825390, 17.821062>,  <14.956418, 19.223595, 17.858437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950397, 18.825390, 17.821062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527846, -0.071453, 0.846329,
		-0.849207, 0.062061, -0.524401,
		-0.015054, -0.995512, -0.093437,
		14.945880, 18.526737, 17.793032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254766, 19.118608, 17.976240>,  <14.956418, 19.223595, 17.858437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254766, 19.118608, 17.976240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.403177, 18.759508, 18.071217>,  <14.492224, 18.544048, 18.128202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.403177, 18.759508, 18.071217>,  <14.254766, 19.118608, 17.976240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.403177, 18.759508, 18.071217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650726, -0.068940, 0.756177,
		-0.662491, -0.435071, -0.609770,
		0.371028, -0.897753, 0.237440,
		14.514485, 18.490183, 18.142448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727923, 18.765942, 17.973099>,  <14.254766, 19.118608, 17.976240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.727923, 18.765942, 17.973099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.990196, 18.542150, 18.175905>,  <14.147560, 18.407875, 18.297588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.990196, 18.542150, 18.175905>,  <13.727923, 18.765942, 17.973099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.990196, 18.542150, 18.175905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680392, -0.146703, 0.718014,
		-0.327334, -0.815758, -0.476856,
		0.655682, -0.559480, 0.507015,
		14.186901, 18.374308, 18.328011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.341513, 18.163027, 18.238455>,  <13.727923, 18.765942, 17.973099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.341513, 18.163027, 18.238455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662210, 18.219994, 18.470636>,  <13.854628, 18.254173, 18.609945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662210, 18.219994, 18.470636>,  <13.341513, 18.163027, 18.238455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662210, 18.219994, 18.470636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582453, -0.031576, 0.812250,
		0.134008, -0.989303, 0.057636,
		0.801742, 0.142418, 0.580454,
		13.902732, 18.262718, 18.644773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368397, 17.722906, 18.826706>,  <13.341513, 18.163027, 18.238455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368397, 17.722906, 18.826706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.641338, 17.968590, 18.985270>,  <13.805103, 18.115999, 19.080408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.641338, 17.968590, 18.985270>,  <13.368397, 17.722906, 18.826706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641338, 17.968590, 18.985270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440694, -0.087030, 0.893429,
		0.583251, -0.784330, 0.211293,
		0.682354, 0.614209, 0.396410,
		13.846045, 18.152853, 19.104193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.554479, 17.479309, 19.447792>,  <13.368397, 17.722906, 18.826706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.554479, 17.479309, 19.447792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678473, 17.856276, 19.498014>,  <13.752869, 18.082455, 19.528149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678473, 17.856276, 19.498014>,  <13.554479, 17.479309, 19.447792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.678473, 17.856276, 19.498014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394978, 0.007527, 0.918660,
		0.864813, -0.334363, 0.374566,
		0.309985, 0.942415, 0.125556,
		13.771468, 18.139000, 19.535681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883864, 16.893234, 19.397423>,  <13.554479, 17.479309, 19.447792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.883864, 16.893234, 19.397423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869370, 16.509787, 19.510370>,  <13.860673, 16.279718, 19.578138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869370, 16.509787, 19.510370>,  <13.883864, 16.893234, 19.397423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.869370, 16.509787, 19.510370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296211, -0.259556, -0.919179,
		0.954435, -0.116949, -0.274549,
		-0.036237, -0.958621, 0.282371,
		13.858499, 16.222200, 19.595081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126110, 16.533180, 18.803104>,  <13.883864, 16.893234, 19.397423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126110, 16.533180, 18.803104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955269, 16.253878, 19.032894>,  <13.852764, 16.086296, 19.170769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955269, 16.253878, 19.032894>,  <14.126110, 16.533180, 18.803104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955269, 16.253878, 19.032894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408068, -0.418106, -0.811583,
		0.806885, -0.581054, -0.106362,
		-0.427103, -0.698257, 0.574474,
		13.827138, 16.044401, 19.205236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272826, 15.892948, 18.527229>,  <14.126110, 16.533180, 18.803104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272826, 15.892948, 18.527229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950840, 15.827559, 18.755371>,  <13.757648, 15.788326, 18.892256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950840, 15.827559, 18.755371>,  <14.272826, 15.892948, 18.527229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950840, 15.827559, 18.755371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508435, -0.305427, -0.805114,
		0.305816, -0.938078, 0.162743,
		-0.804966, -0.163473, 0.570356,
		13.709350, 15.778518, 18.926477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045554, 15.216640, 18.394897>,  <14.272826, 15.892948, 18.527229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.045554, 15.216640, 18.394897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724975, 15.405451, 18.541798>,  <13.532627, 15.518737, 18.629938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724975, 15.405451, 18.541798>,  <14.045554, 15.216640, 18.394897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.724975, 15.405451, 18.541798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521172, -0.250020, -0.816008,
		-0.293361, -0.845387, 0.446386,
		-0.801448, 0.472029, 0.367246,
		13.484540, 15.547058, 18.651972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513261, 14.677731, 18.346256>,  <14.045554, 15.216640, 18.394897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513261, 14.677731, 18.346256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336146, 15.035093, 18.376629>,  <13.229877, 15.249511, 18.394852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336146, 15.035093, 18.376629>,  <13.513261, 14.677731, 18.346256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.336146, 15.035093, 18.376629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655340, -0.264671, -0.707445,
		-0.611939, -0.363008, 0.702677,
		-0.442787, 0.893406, 0.075931,
		13.203310, 15.303115, 18.399408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747861, 14.507780, 18.542040>,  <13.513261, 14.677731, 18.346256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.747861, 14.507780, 18.542040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696046, 14.882542, 18.412159>,  <12.664957, 15.107398, 18.334230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696046, 14.882542, 18.412159>,  <12.747861, 14.507780, 18.542040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696046, 14.882542, 18.412159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879538, -0.259772, -0.398662,
		-0.457857, 0.233947, 0.857692,
		-0.129539, 0.936903, -0.324704,
		12.657185, 15.163612, 18.314749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.058237, 14.879684, 18.657438>,  <12.747861, 14.507780, 18.542040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.058237, 14.879684, 18.657438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.208463, 15.056315, 18.331503>,  <12.298598, 15.162294, 18.135942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.208463, 15.056315, 18.331503>,  <12.058237, 14.879684, 18.657438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.208463, 15.056315, 18.331503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883454, -0.095151, -0.458754,
		-0.280108, 0.892163, 0.354379,
		0.375564, 0.441578, -0.814838,
		12.321132, 15.188789, 18.087051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.497428, 15.205759, 18.480494>,  <12.058237, 14.879684, 18.657438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.497428, 15.205759, 18.480494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.755051, 15.196666, 18.174637>,  <11.909624, 15.191210, 17.991123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.755051, 15.196666, 18.174637>,  <11.497428, 15.205759, 18.480494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.755051, 15.196666, 18.174637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763227, -0.086686, -0.640289,
		-0.051728, 0.995976, -0.073181,
		0.644057, -0.022733, -0.764640,
		11.948268, 15.189846, 17.945246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.127259, 15.693788, 17.963118>,  <11.497428, 15.205759, 18.480494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.127259, 15.693788, 17.963118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.393140, 15.470176, 17.764862>,  <11.552668, 15.336008, 17.645908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.393140, 15.470176, 17.764862>,  <11.127259, 15.693788, 17.963118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.393140, 15.470176, 17.764862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710534, -0.267988, -0.650633,
		0.230898, 0.784645, -0.575342,
		0.664701, -0.559030, -0.495639,
		11.592550, 15.302466, 17.616171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953967, 15.699209, 17.336210>,  <11.127259, 15.693788, 17.963118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953967, 15.699209, 17.336210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.181686, 15.370976, 17.316040>,  <11.318318, 15.174037, 17.303938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.181686, 15.370976, 17.316040>,  <10.953967, 15.699209, 17.336210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.181686, 15.370976, 17.316040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719537, -0.467648, -0.513392,
		0.397699, 0.328556, -0.856671,
		0.569299, -0.820583, -0.050425,
		11.352476, 15.124802, 17.300913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.063120, 15.579288, 16.568735>,  <10.953967, 15.699209, 17.336210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.063120, 15.579288, 16.568735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.144047, 15.224840, 16.735523>,  <11.192603, 15.012172, 16.835596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.144047, 15.224840, 16.735523>,  <11.063120, 15.579288, 16.568735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.144047, 15.224840, 16.735523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480422, -0.460825, -0.746214,
		0.853383, -0.049349, -0.518943,
		0.202317, -0.886118, 0.416969,
		11.204741, 14.959004, 16.860615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.606345, 15.172002, 16.143229>,  <11.063120, 15.579288, 16.568735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.606345, 15.172002, 16.143229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359335, 14.944233, 16.360271>,  <11.211129, 14.807571, 16.490498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359335, 14.944233, 16.360271>,  <11.606345, 15.172002, 16.143229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.359335, 14.944233, 16.360271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357337, -0.411451, -0.838462,
		0.700695, -0.711664, 0.050605,
		-0.617525, -0.569423, 0.542605,
		11.174077, 14.773406, 16.523052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.207610, 17.138987, 25.294973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.584925, 17.134787, 25.162247>,  <15.811314, 17.132267, 25.082611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.584925, 17.134787, 25.162247>,  <15.207610, 17.138987, 25.294973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584925, 17.134787, 25.162247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330291, 0.071025, -0.941203,
		0.033450, 0.997419, 0.063529,
		0.943286, -0.010501, -0.331814,
		15.867910, 17.131636, 25.062702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197979, 17.660364, 24.789726>,  <15.207610, 17.138987, 25.294973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197979, 17.660364, 24.789726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.505710, 17.411680, 24.730915>,  <15.690348, 17.262470, 24.695629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.505710, 17.411680, 24.730915>,  <15.197979, 17.660364, 24.789726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505710, 17.411680, 24.730915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216903, -0.037720, -0.975464,
		0.600908, 0.782341, -0.163869,
		0.769326, -0.621708, -0.147026,
		15.736507, 17.225168, 24.686808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458836, 17.913214, 24.212095>,  <15.197979, 17.660364, 24.789726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458836, 17.913214, 24.212095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.597082, 17.538048, 24.223843>,  <15.680030, 17.312948, 24.230892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.597082, 17.538048, 24.223843>,  <15.458836, 17.913214, 24.212095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597082, 17.538048, 24.223843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139389, -0.082265, -0.986815,
		0.927966, 0.336965, -0.159167,
		0.345616, -0.937916, 0.029370,
		15.700767, 17.256674, 24.232655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956186, 17.886618, 23.671387>,  <15.458836, 17.913214, 24.212095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956186, 17.886618, 23.671387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.838406, 17.509954, 23.736595>,  <15.767737, 17.283957, 23.775721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.838406, 17.509954, 23.736595>,  <15.956186, 17.886618, 23.671387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838406, 17.509954, 23.736595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109680, -0.136157, -0.984597,
		0.949351, -0.307797, -0.063189,
		-0.294453, -0.941659, 0.163020,
		15.750070, 17.227457, 23.785501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853044, 17.772442, 23.043251>,  <15.956186, 17.886618, 23.671387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853044, 17.772442, 23.043251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.754055, 17.412487, 23.186897>,  <15.694662, 17.196514, 23.273085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.754055, 17.412487, 23.186897>,  <15.853044, 17.772442, 23.043251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754055, 17.412487, 23.186897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334256, -0.268594, -0.903400,
		0.909412, -0.343602, -0.234323,
		-0.247472, -0.899886, 0.359113,
		15.679813, 17.142521, 23.294632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147535, 17.145817, 22.542845>,  <15.853044, 17.772442, 23.043251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.147535, 17.145817, 22.542845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.837725, 17.011641, 22.757355>,  <15.651838, 16.931135, 22.886061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.837725, 17.011641, 22.757355>,  <16.147535, 17.145817, 22.542845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.837725, 17.011641, 22.757355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433377, -0.336146, -0.836176,
		0.460754, -0.880048, 0.114981,
		-0.774526, -0.335441, 0.536274,
		15.605367, 16.911009, 22.918238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029171, 16.479521, 22.276152>,  <16.147535, 17.145817, 22.542845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029171, 16.479521, 22.276152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.683899, 16.578989, 22.451918>,  <15.476736, 16.638670, 22.557377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.683899, 16.578989, 22.451918>,  <16.029171, 16.479521, 22.276152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683899, 16.578989, 22.451918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504888, -0.419878, -0.754182,
		-0.003041, -0.872850, 0.487979,
		-0.863180, 0.248668, 0.439414,
		15.424945, 16.653589, 22.583742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666515, 15.913868, 22.136919>,  <16.029171, 16.479521, 22.276152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666515, 15.913868, 22.136919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.369715, 16.166660, 22.226391>,  <15.191634, 16.318336, 22.280075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.369715, 16.166660, 22.226391>,  <15.666515, 15.913868, 22.136919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369715, 16.166660, 22.226391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573963, -0.426456, -0.699072,
		-0.346407, -0.647100, 0.679164,
		-0.742004, 0.631978, 0.223684,
		15.147114, 16.356255, 22.293495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995381, 15.511279, 22.241465>,  <15.666515, 15.913868, 22.136919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995381, 15.511279, 22.241465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.907896, 15.881420, 22.117601>,  <14.855405, 16.103504, 22.043283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.907896, 15.881420, 22.117601>,  <14.995381, 15.511279, 22.241465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907896, 15.881420, 22.117601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565401, -0.378819, -0.732678,
		-0.795290, 0.014835, 0.606047,
		-0.218713, 0.925352, -0.309659,
		14.842282, 16.159025, 22.024704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.415389, 15.415050, 21.929464>,  <14.995381, 15.511279, 22.241465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.415389, 15.415050, 21.929464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.488896, 15.789521, 21.809599>,  <14.533001, 16.014204, 21.737679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.488896, 15.789521, 21.809599>,  <14.415389, 15.415050, 21.929464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.488896, 15.789521, 21.809599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524863, -0.164307, -0.835178,
		-0.831113, 0.310762, 0.461171,
		0.183768, 0.936179, -0.299665,
		14.544026, 16.070375, 21.719700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.836332, 15.589271, 21.594736>,  <14.415389, 15.415050, 21.929464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.836332, 15.589271, 21.594736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.097583, 15.869455, 21.479650>,  <14.254333, 16.037565, 21.410599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.097583, 15.869455, 21.479650>,  <13.836332, 15.589271, 21.594736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.097583, 15.869455, 21.479650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400671, -0.002744, -0.916218,
		-0.642565, 0.713685, 0.278863,
		0.653125, 0.700462, -0.287716,
		14.293520, 16.079594, 21.393335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469183, 16.025517, 21.149635>,  <13.836332, 15.589271, 21.594736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.469183, 16.025517, 21.149635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.849326, 16.104481, 21.053427>,  <14.077412, 16.151859, 20.995703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.849326, 16.104481, 21.053427>,  <13.469183, 16.025517, 21.149635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.849326, 16.104481, 21.053427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264543, 0.105638, -0.958571,
		-0.163824, 0.974612, 0.152618,
		0.950357, 0.197411, -0.240520,
		14.134434, 16.163704, 20.981270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343449, 16.541025, 20.718557>,  <13.469183, 16.025517, 21.149635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343449, 16.541025, 20.718557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.700535, 16.390884, 20.618820>,  <13.914786, 16.300800, 20.558979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.700535, 16.390884, 20.618820>,  <13.343449, 16.541025, 20.718557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.700535, 16.390884, 20.618820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323554, -0.148788, -0.934438,
		0.313642, 0.914863, -0.254272,
		0.892716, -0.375350, -0.249342,
		13.968349, 16.278280, 20.544018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.551100, 16.883142, 20.074959>,  <13.343449, 16.541025, 20.718557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.551100, 16.883142, 20.074959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.736896, 16.529129, 20.062527>,  <13.848373, 16.316721, 20.055067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.736896, 16.529129, 20.062527>,  <13.551100, 16.883142, 20.074959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.736896, 16.529129, 20.062527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289403, -0.118532, -0.949840,
		0.836956, 0.450185, -0.311188,
		0.464489, -0.885033, -0.031078,
		13.876243, 16.263618, 20.053204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047581, 17.503876, 20.074482>,  <13.551100, 16.883142, 20.074959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047581, 17.503876, 20.074482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.962305, 17.894251, 20.056177>,  <13.911139, 18.128477, 20.045195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.962305, 17.894251, 20.056177>,  <14.047581, 17.503876, 20.074482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.962305, 17.894251, 20.056177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206039, 0.000875, 0.978544,
		0.955039, 0.218043, 0.200895,
		-0.213188, 0.975939, -0.045761,
		13.898349, 18.187033, 20.042448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.425213, 18.002615, 20.537811>,  <14.047581, 17.503876, 20.074482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.425213, 18.002615, 20.537811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.122050, 18.253096, 20.464653>,  <13.940153, 18.403383, 20.420757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.122050, 18.253096, 20.464653>,  <14.425213, 18.002615, 20.537811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.122050, 18.253096, 20.464653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082061, 0.186619, 0.978999,
		0.647181, 0.756999, -0.090054,
		-0.757907, 0.626200, -0.182897,
		13.894678, 18.440956, 20.409784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577783, 18.573412, 20.992426>,  <14.425213, 18.002615, 20.537811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577783, 18.573412, 20.992426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.189247, 18.535681, 20.905153>,  <13.956126, 18.513042, 20.852789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.189247, 18.535681, 20.905153>,  <14.577783, 18.573412, 20.992426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189247, 18.535681, 20.905153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214540, -0.047283, 0.975570,
		-0.102339, 0.994418, 0.025691,
		-0.971339, -0.094327, -0.218182,
		13.897845, 18.507383, 20.839699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215431, 19.080902, 21.450726>,  <14.577783, 18.573412, 20.992426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215431, 19.080902, 21.450726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.966043, 18.803953, 21.305452>,  <13.816409, 18.637783, 21.218288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.966043, 18.803953, 21.305452>,  <14.215431, 19.080902, 21.450726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.966043, 18.803953, 21.305452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530158, 0.032973, 0.847258,
		-0.574644, 0.720785, -0.387625,
		-0.623472, -0.692374, -0.363182,
		13.779001, 18.596241, 21.196497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.530239, 19.371021, 21.424603>,  <14.215431, 19.080902, 21.450726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.530239, 19.371021, 21.424603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.494663, 18.973684, 21.453880>,  <13.473318, 18.735281, 21.471447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.494663, 18.973684, 21.453880>,  <13.530239, 19.371021, 21.424603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494663, 18.973684, 21.453880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517246, 0.108860, 0.848885,
		-0.851203, 0.037640, -0.523485,
		-0.088939, -0.993344, 0.073192,
		13.467981, 18.675680, 21.475838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825407, 19.330387, 21.670425>,  <13.530239, 19.371021, 21.424603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825407, 19.330387, 21.670425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.973354, 18.962658, 21.724150>,  <13.062122, 18.742020, 21.756384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.973354, 18.962658, 21.724150>,  <12.825407, 19.330387, 21.670425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.973354, 18.962658, 21.724150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606424, -0.129360, 0.784549,
		-0.703881, -0.371628, -0.605346,
		0.369868, -0.919325, 0.134310,
		13.084314, 18.686861, 21.764442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.200047, 18.995539, 21.791332>,  <12.825407, 19.330387, 21.670425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.200047, 18.995539, 21.791332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.508227, 18.797707, 21.952230>,  <12.693135, 18.679008, 22.048769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.508227, 18.797707, 21.952230>,  <12.200047, 18.995539, 21.791332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.508227, 18.797707, 21.952230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520266, -0.123161, 0.845076,
		-0.368417, -0.860362, -0.352203,
		0.770449, -0.494580, 0.402243,
		12.739362, 18.649332, 22.072903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.871640, 18.445766, 22.351288>,  <12.200047, 18.995539, 21.791332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.871640, 18.445766, 22.351288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.258718, 18.440317, 22.451990>,  <12.490965, 18.437048, 22.512411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.258718, 18.440317, 22.451990>,  <11.871640, 18.445766, 22.351288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.258718, 18.440317, 22.451990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251230, 0.031967, 0.967400,
		-0.021234, -0.999396, 0.027510,
		0.967695, -0.013631, 0.251757,
		12.549026, 18.436230, 22.527517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.866224, 18.064610, 22.960291>,  <11.871640, 18.445766, 22.351288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.866224, 18.064610, 22.960291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.214556, 18.261242, 22.959599>,  <12.423555, 18.379221, 22.959183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.214556, 18.261242, 22.959599>,  <11.866224, 18.064610, 22.960291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214556, 18.261242, 22.959599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134870, 0.242304, 0.960781,
		0.472722, -0.836442, 0.277305,
		0.870829, 0.491582, -0.001732,
		12.475804, 18.408716, 22.959080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.268640, 17.733305, 23.512882>,  <11.866224, 18.064610, 22.960291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.268640, 17.733305, 23.512882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.355459, 18.112255, 23.418756>,  <12.407551, 18.339624, 23.362282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.355459, 18.112255, 23.418756>,  <12.268640, 17.733305, 23.512882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.355459, 18.112255, 23.418756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012143, 0.243661, 0.969784,
		0.976085, -0.207633, 0.064390,
		0.217049, 0.947374, -0.235313,
		12.420574, 18.396467, 23.348164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.543556, 17.754051, 24.081287>,  <12.268640, 17.733305, 23.512882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.543556, 17.754051, 24.081287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.568189, 18.125084, 23.933884>,  <12.582968, 18.347704, 23.845442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.568189, 18.125084, 23.933884>,  <12.543556, 17.754051, 24.081287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568189, 18.125084, 23.933884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050392, 0.365848, 0.929309,
		0.996829, -0.075798, -0.024214,
		0.061581, 0.927583, -0.368508,
		12.586663, 18.403358, 23.823332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239811, 18.107882, 24.215530>,  <12.543556, 17.754051, 24.081287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.239811, 18.107882, 24.215530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.998319, 18.413074, 24.123121>,  <12.853423, 18.596189, 24.067677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.998319, 18.413074, 24.123121>,  <13.239811, 18.107882, 24.215530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.998319, 18.413074, 24.123121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472260, 0.575776, 0.667422,
		0.642247, 0.293841, -0.707938,
		-0.603730, 0.762980, -0.231021,
		12.817200, 18.641968, 24.053814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.560716, 18.744116, 23.996519>,  <13.239811, 18.107882, 24.215530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.560716, 18.744116, 23.996519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.214898, 18.861784, 24.159506>,  <13.007407, 18.932384, 24.257298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.214898, 18.861784, 24.159506>,  <13.560716, 18.744116, 23.996519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214898, 18.861784, 24.159506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501999, 0.543702, 0.672595,
		-0.023684, 0.786036, -0.617727,
		-0.864544, 0.294169, 0.407466,
		12.955535, 18.950035, 24.281746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.656690, 19.435837, 24.247047>,  <13.560716, 18.744116, 23.996519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.656690, 19.435837, 24.247047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.340916, 19.306705, 24.455881>,  <13.151451, 19.229227, 24.581181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.340916, 19.306705, 24.455881>,  <13.656690, 19.435837, 24.247047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.340916, 19.306705, 24.455881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362893, 0.440528, 0.821124,
		-0.495076, 0.837685, -0.230616,
		-0.789436, -0.322830, 0.522085,
		13.104085, 19.209856, 24.612507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.130359, 18.674931, 24.978456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.522760, 18.672060, 24.900913>,  <9.758202, 18.670338, 24.854387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.522760, 18.672060, 24.900913>,  <9.130359, 18.674931, 24.978456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.522760, 18.672060, 24.900913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192326, 0.094662, -0.976755,
		0.025359, 0.995484, 0.091484,
		0.981003, -0.007175, -0.193858,
		9.817061, 18.669909, 24.842756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.216586, 19.147503, 24.438637>,  <9.130359, 18.674931, 24.978456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.216586, 19.147503, 24.438637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.558240, 18.939507, 24.441782>,  <9.763232, 18.814709, 24.443668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.558240, 18.939507, 24.441782>,  <9.216586, 19.147503, 24.438637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.558240, 18.939507, 24.441782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072089, 0.103411, -0.992023,
		0.515032, 0.847887, 0.125813,
		0.854134, -0.519993, 0.007863,
		9.814480, 18.783508, 24.444141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.718638, 19.549368, 23.929222>,  <9.216586, 19.147503, 24.438637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.718638, 19.549368, 23.929222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.834299, 19.168760, 23.971178>,  <9.903695, 18.940395, 23.996351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.834299, 19.168760, 23.971178>,  <9.718638, 19.549368, 23.929222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.834299, 19.168760, 23.971178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018359, -0.104040, -0.994403,
		0.957107, 0.289460, -0.012614,
		0.289152, -0.951519, 0.104892,
		9.921044, 18.883305, 24.002645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.876717, 19.382277, 23.217218>,  <9.718638, 19.549368, 23.929222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.876717, 19.382277, 23.217218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.915805, 19.024694, 23.392170>,  <9.939258, 18.810146, 23.497141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.915805, 19.024694, 23.392170>,  <9.876717, 19.382277, 23.217218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.915805, 19.024694, 23.392170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197543, -0.413312, -0.888904,
		0.975412, 0.173265, 0.136204,
		0.097721, -0.893953, 0.437377,
		9.945121, 18.756508, 23.523382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.561034, 19.156645, 23.178509>,  <9.876717, 19.382277, 23.217218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.561034, 19.156645, 23.178509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.294928, 18.858444, 23.194742>,  <10.135263, 18.679523, 23.204483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.294928, 18.858444, 23.194742>,  <10.561034, 19.156645, 23.178509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.294928, 18.858444, 23.194742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376666, -0.382067, -0.843888,
		0.644627, -0.546123, 0.534981,
		-0.665266, -0.745503, 0.040585,
		10.095347, 18.634794, 23.206917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.918505, 18.612577, 22.824812>,  <10.561034, 19.156645, 23.178509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.918505, 18.612577, 22.824812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.540624, 18.482138, 22.838638>,  <10.313895, 18.403873, 22.846933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.540624, 18.482138, 22.838638>,  <10.918505, 18.612577, 22.824812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.540624, 18.482138, 22.838638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110290, -0.415221, -0.903010,
		0.308823, -0.849264, 0.428226,
		-0.944703, -0.326100, 0.034565,
		10.257213, 18.384308, 22.849009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.912658, 17.958544, 22.652481>,  <10.918505, 18.612577, 22.824812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.912658, 17.958544, 22.652481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.533092, 18.056402, 22.572775>,  <10.305351, 18.115118, 22.524952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.533092, 18.056402, 22.572775>,  <10.912658, 17.958544, 22.652481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.533092, 18.056402, 22.572775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103678, -0.354709, -0.929211,
		-0.298006, -0.902403, 0.311225,
		-0.948917, 0.244643, -0.199265,
		10.248417, 18.129797, 22.512995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.517975, 17.339676, 22.341650>,  <10.912658, 17.958544, 22.652481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.517975, 17.339676, 22.341650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.343347, 17.682028, 22.230742>,  <10.238570, 17.887438, 22.164196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.343347, 17.682028, 22.230742>,  <10.517975, 17.339676, 22.341650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.343347, 17.682028, 22.230742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009272, -0.312456, -0.949887,
		-0.899623, -0.412121, 0.144344,
		-0.436570, 0.855878, -0.277272,
		10.212376, 17.938791, 22.147560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.058078, 17.127415, 21.832399>,  <10.517975, 17.339676, 22.341650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.058078, 17.127415, 21.832399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.068653, 17.524286, 21.783596>,  <10.074999, 17.762409, 21.754314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.068653, 17.524286, 21.783596>,  <10.058078, 17.127415, 21.832399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.068653, 17.524286, 21.783596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356103, -0.104694, -0.928563,
		-0.934072, 0.067997, 0.350550,
		0.026439, 0.992177, -0.122006,
		10.076585, 17.821939, 21.746994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.502202, 17.238308, 21.430050>,  <10.058078, 17.127415, 21.832399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.502202, 17.238308, 21.430050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.723653, 17.570471, 21.405008>,  <9.856524, 17.769770, 21.389984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.723653, 17.570471, 21.405008>,  <9.502202, 17.238308, 21.430050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.723653, 17.570471, 21.405008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221744, 0.074538, -0.972252,
		-0.802700, 0.552146, 0.225404,
		0.553626, 0.830409, -0.062603,
		9.889741, 17.819593, 21.386227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.215941, 17.590355, 20.946844>,  <9.502202, 17.238308, 21.430050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.215941, 17.590355, 20.946844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.575453, 17.763828, 20.972511>,  <9.791160, 17.867912, 20.987911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.575453, 17.763828, 20.972511>,  <9.215941, 17.590355, 20.946844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.575453, 17.763828, 20.972511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040226, 0.227324, -0.972988,
		-0.436556, 0.871918, 0.221759,
		0.898777, 0.433684, 0.064166,
		9.845086, 17.893934, 20.991760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.183333, 18.364460, 20.618498>,  <9.215941, 17.590355, 20.946844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.183333, 18.364460, 20.618498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.556910, 18.221838, 20.608488>,  <9.781055, 18.136265, 20.602482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.556910, 18.221838, 20.608488>,  <9.183333, 18.364460, 20.618498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556910, 18.221838, 20.608488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075700, 0.265741, -0.961068,
		0.349323, 0.895685, 0.275177,
		0.933939, -0.356554, -0.025026,
		9.837091, 18.114872, 20.600981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.654008, 18.838846, 20.234127>,  <9.183333, 18.364460, 20.618498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.654008, 18.838846, 20.234127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.808843, 18.470247, 20.221458>,  <9.901743, 18.249088, 20.213858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.808843, 18.470247, 20.221458>,  <9.654008, 18.838846, 20.234127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.808843, 18.470247, 20.221458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040460, 0.051290, -0.997864,
		0.921156, 0.384978, 0.057137,
		0.387086, -0.921500, -0.031670,
		9.924969, 18.193798, 20.211958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.119573, 18.885950, 19.575548>,  <9.654008, 18.838846, 20.234127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.119573, 18.885950, 19.575548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.078032, 18.499243, 19.668993>,  <10.053107, 18.267220, 19.725060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.078032, 18.499243, 19.668993>,  <10.119573, 18.885950, 19.575548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.078032, 18.499243, 19.668993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025832, -0.232183, -0.972329,
		0.994257, -0.107014, -0.000860,
		-0.103853, -0.966767, 0.233614,
		10.046876, 18.209213, 19.739077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.823113, 19.036053, 19.539335>,  <10.119573, 18.885950, 19.575548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.823113, 19.036053, 19.539335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.963418, 19.380037, 19.391048>,  <11.047601, 19.586428, 19.302076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.963418, 19.380037, 19.391048>,  <10.823113, 19.036053, 19.539335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.963418, 19.380037, 19.391048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297121, 0.273218, 0.914916,
		0.888080, -0.431064, -0.159679,
		0.350760, 0.859963, -0.370718,
		11.068646, 19.638025, 19.279833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.444820, 19.149059, 19.822777>,  <10.823113, 19.036053, 19.539335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.444820, 19.149059, 19.822777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.361713, 19.520836, 19.700811>,  <11.311849, 19.743902, 19.627632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.361713, 19.520836, 19.700811>,  <11.444820, 19.149059, 19.822777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.361713, 19.520836, 19.700811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224568, 0.348714, 0.909927,
		0.952051, 0.120580, -0.281174,
		-0.207768, 0.929440, -0.304915,
		11.299383, 19.799667, 19.609337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.950849, 19.610723, 20.254555>,  <11.444820, 19.149059, 19.822777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.950849, 19.610723, 20.254555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.666443, 19.852856, 20.111427>,  <11.495800, 19.998135, 20.025551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.666443, 19.852856, 20.111427>,  <11.950849, 19.610723, 20.254555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.666443, 19.852856, 20.111427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139610, 0.620251, 0.771879,
		0.689180, 0.498862, -0.525517,
		-0.711014, 0.605331, -0.357818,
		11.453138, 20.034454, 20.004082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.158119, 20.382698, 20.248007>,  <11.950849, 19.610723, 20.254555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.158119, 20.382698, 20.248007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.759881, 20.348684, 20.263802>,  <11.520938, 20.328276, 20.273279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.759881, 20.348684, 20.263802>,  <12.158119, 20.382698, 20.248007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759881, 20.348684, 20.263802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017706, 0.584132, 0.811466,
		-0.092067, 0.807193, -0.583064,
		-0.995595, -0.085033, 0.039487,
		11.461203, 20.323175, 20.275648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.931483, 21.077513, 20.280365>,  <12.158119, 20.382698, 20.248007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.931483, 21.077513, 20.280365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.627320, 20.863632, 20.427809>,  <11.444822, 20.735304, 20.516275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.627320, 20.863632, 20.427809>,  <11.931483, 21.077513, 20.280365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.627320, 20.863632, 20.427809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022181, 0.588627, 0.808100,
		-0.649067, 0.606310, -0.459457,
		-0.760408, -0.534702, 0.368610,
		11.399198, 20.703222, 20.538391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.423219, 21.619516, 20.399773>,  <11.931483, 21.077513, 20.280365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.423219, 21.619516, 20.399773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.285295, 21.316513, 20.621506>,  <11.202541, 21.134710, 20.754545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.285295, 21.316513, 20.621506>,  <11.423219, 21.619516, 20.399773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285295, 21.316513, 20.621506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128071, 0.622993, 0.771672,
		-0.929895, 0.195085, -0.311829,
		-0.344809, -0.757510, 0.554333,
		11.181853, 21.089260, 20.787806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.853824, 21.873295, 20.788195>,  <11.423219, 21.619516, 20.399773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.853824, 21.873295, 20.788195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.986226, 21.551298, 20.985142>,  <11.065668, 21.358101, 21.103310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.986226, 21.551298, 20.985142>,  <10.853824, 21.873295, 20.788195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.986226, 21.551298, 20.985142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088397, 0.493035, 0.865507,
		-0.939479, -0.330013, 0.092039,
		0.331006, -0.804990, 0.492368,
		11.085528, 21.309801, 21.132853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.424844, 21.872637, 21.460323>,  <10.853824, 21.873295, 20.788195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.424844, 21.872637, 21.460323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.737481, 21.645653, 21.563940>,  <10.925063, 21.509462, 21.626110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.737481, 21.645653, 21.563940>,  <10.424844, 21.872637, 21.460323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.737481, 21.645653, 21.563940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006102, 0.422208, 0.906479,
		-0.623759, -0.706916, 0.333458,
		0.781593, -0.567459, 0.259042,
		10.971959, 21.475414, 21.641653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.306780, 21.755068, 22.043608>,  <10.424844, 21.872637, 21.460323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.306780, 21.755068, 22.043608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.691100, 21.644356, 22.037188>,  <10.921692, 21.577929, 22.033337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.691100, 21.644356, 22.037188>,  <10.306780, 21.755068, 22.043608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.691100, 21.644356, 22.037188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104919, 0.309411, 0.945123,
		-0.256625, -0.909757, 0.326322,
		0.960800, -0.276780, -0.016048,
		10.979340, 21.561321, 22.032373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.473973, 21.218475, 22.663679>,  <10.306780, 21.755068, 22.043608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.473973, 21.218475, 22.663679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.815626, 21.379063, 22.531446>,  <11.020617, 21.475414, 22.452106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.815626, 21.379063, 22.531446>,  <10.473973, 21.218475, 22.663679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.815626, 21.379063, 22.531446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308945, 0.119641, 0.943525,
		0.418345, -0.908026, -0.021842,
		0.854131, 0.401467, -0.330581,
		11.071866, 21.499502, 22.432272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.915596, 20.847303, 22.895697>,  <10.473973, 21.218475, 22.663679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.915596, 20.847303, 22.895697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.084733, 21.203709, 22.829601>,  <11.186215, 21.417551, 22.789944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.084733, 21.203709, 22.829601>,  <10.915596, 20.847303, 22.895697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.084733, 21.203709, 22.829601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429274, -0.036360, 0.902442,
		0.798078, -0.452523, -0.397862,
		0.422842, 0.891011, -0.165238,
		11.211586, 21.471012, 22.780029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.577237, 20.728121, 23.130283>,  <10.915596, 20.847303, 22.895697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.577237, 20.728121, 23.130283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.564535, 21.126814, 23.100584>,  <11.556914, 21.366030, 23.082766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.564535, 21.126814, 23.100584>,  <11.577237, 20.728121, 23.130283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.564535, 21.126814, 23.100584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301563, 0.080377, 0.950052,
		0.952917, 0.007778, -0.303131,
		-0.031755, 0.996734, -0.074247,
		11.555009, 21.425835, 23.078310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.095670, 20.881111, 23.416334>,  <11.577237, 20.728121, 23.130283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.095670, 20.881111, 23.416334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.915408, 21.237930, 23.429979>,  <11.807251, 21.452021, 23.438166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.915408, 21.237930, 23.429979>,  <12.095670, 20.881111, 23.416334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.915408, 21.237930, 23.429979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435456, 0.186309, 0.880720,
		0.779287, 0.411756, -0.472407,
		-0.450655, 0.892046, 0.034113,
		11.780211, 21.505545, 23.440214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.554797, 21.516455, 23.494911>,  <12.095670, 20.881111, 23.416334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.554797, 21.516455, 23.494911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.202057, 21.586182, 23.670160>,  <11.990413, 21.628017, 23.775311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.202057, 21.586182, 23.670160>,  <12.554797, 21.516455, 23.494911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.202057, 21.586182, 23.670160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450848, 0.039562, 0.891723,
		0.138110, 0.983894, -0.113479,
		-0.881851, 0.174318, 0.438123,
		11.937502, 21.638477, 23.801598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.964067, 22.135115, 23.341578>,  <12.554797, 21.516455, 23.494911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.964067, 22.135115, 23.341578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.361063, 22.127033, 23.389835>,  <13.599260, 22.122185, 23.418789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.361063, 22.127033, 23.389835>,  <12.964067, 22.135115, 23.341578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.361063, 22.127033, 23.389835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122322, 0.165007, -0.978678,
		-0.000135, 0.986085, 0.166239,
		0.992490, -0.020202, 0.120643,
		13.658810, 22.120972, 23.426027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295618, 22.490499, 22.869940>,  <12.964067, 22.135115, 23.341578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295618, 22.490499, 22.869940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.637076, 22.316673, 22.984789>,  <13.841951, 22.212378, 23.053699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.637076, 22.316673, 22.984789>,  <13.295618, 22.490499, 22.869940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.637076, 22.316673, 22.984789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273512, -0.095128, -0.957153,
		0.443261, 0.895601, 0.037654,
		0.853645, -0.434568, 0.287124,
		13.893170, 22.186302, 23.070927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959118, 22.916168, 22.603073>,  <13.295618, 22.490499, 22.869940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.959118, 22.916168, 22.603073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.991511, 22.518967, 22.637440>,  <14.010947, 22.280645, 22.658058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.991511, 22.518967, 22.637440>,  <13.959118, 22.916168, 22.603073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.991511, 22.518967, 22.637440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373224, -0.049714, -0.926408,
		0.924200, 0.107089, 0.366588,
		0.080983, -0.993006, 0.085914,
		14.015806, 22.221066, 22.663214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.322273, 22.864328, 22.053274>,  <13.959118, 22.916168, 22.603073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.322273, 22.864328, 22.053274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.241893, 22.488405, 22.163820>,  <14.193665, 22.262852, 22.230148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.241893, 22.488405, 22.163820>,  <14.322273, 22.864328, 22.053274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241893, 22.488405, 22.163820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297373, -0.327332, -0.896896,
		0.933375, -0.098048, 0.345251,
		-0.200951, -0.939808, 0.276367,
		14.181607, 22.206463, 22.246731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.982365, 22.441114, 22.065117>,  <14.322273, 22.864328, 22.053274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.982365, 22.441114, 22.065117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.661029, 22.209496, 22.009474>,  <14.468227, 22.070524, 21.976088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.661029, 22.209496, 22.009474>,  <14.982365, 22.441114, 22.065117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.661029, 22.209496, 22.009474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285782, -0.169910, -0.943111,
		0.522469, -0.797394, 0.301977,
		-0.803340, -0.579046, -0.139108,
		14.420027, 22.035782, 21.967741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.289056, 21.866312, 21.693928>,  <14.982365, 22.441114, 22.065117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.289056, 21.866312, 21.693928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.913637, 21.771288, 21.593771>,  <14.688386, 21.714273, 21.533678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.913637, 21.771288, 21.593771>,  <15.289056, 21.866312, 21.693928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913637, 21.771288, 21.593771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252631, 0.021479, -0.967324,
		0.235175, -0.971136, 0.039855,
		-0.938547, -0.237560, -0.250390,
		14.632073, 21.700020, 21.518654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.292398, 21.438322, 21.051893>,  <15.289056, 21.866312, 21.693928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.292398, 21.438322, 21.051893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.907612, 21.546804, 21.064947>,  <14.676740, 21.611895, 21.072779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.907612, 21.546804, 21.064947>,  <15.292398, 21.438322, 21.051893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907612, 21.546804, 21.064947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060847, -0.096273, -0.993493,
		-0.266302, -0.957694, 0.109114,
		-0.961967, 0.271209, 0.032635,
		14.619021, 21.628166, 21.074738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943414, 20.892763, 20.654518>,  <15.292398, 21.438322, 21.051893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943414, 20.892763, 20.654518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.727593, 21.229515, 20.658953>,  <14.598102, 21.431566, 20.661613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.727593, 21.229515, 20.658953>,  <14.943414, 20.892763, 20.654518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727593, 21.229515, 20.658953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262507, -0.155700, -0.952285,
		-0.799985, -0.516716, 0.305007,
		-0.539550, 0.841880, 0.011084,
		14.565728, 21.482079, 20.662277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.243160, 20.699535, 20.465023>,  <14.943414, 20.892763, 20.654518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.243160, 20.699535, 20.465023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.325512, 21.074932, 20.354136>,  <14.374923, 21.300169, 20.287603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.325512, 21.074932, 20.354136>,  <14.243160, 20.699535, 20.465023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.325512, 21.074932, 20.354136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161296, -0.246869, -0.955531,
		-0.965193, 0.241437, 0.100550,
		0.205878, 0.938490, -0.277219,
		14.387276, 21.356480, 20.270969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.857531, 20.754950, 19.912031>,  <14.243160, 20.699535, 20.465023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.857531, 20.754950, 19.912031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.077505, 21.084005, 19.854296>,  <14.209490, 21.281439, 19.819654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.077505, 21.084005, 19.854296>,  <13.857531, 20.754950, 19.912031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.077505, 21.084005, 19.854296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076676, -0.122360, -0.989520,
		-0.831680, 0.555239, -0.004214,
		0.549935, 0.822641, -0.144338,
		14.242486, 21.330797, 19.810995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460531, 21.151136, 19.427242>,  <13.857531, 20.754950, 19.912031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460531, 21.151136, 19.427242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.842954, 21.267149, 19.410089>,  <14.072407, 21.336756, 19.399797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.842954, 21.267149, 19.410089>,  <13.460531, 21.151136, 19.427242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842954, 21.267149, 19.410089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011701, -0.108407, -0.994038,
		-0.292951, 0.950857, -0.100250,
		0.956056, 0.290032, -0.042884,
		14.129770, 21.354158, 19.397224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.468824, 21.622211, 18.949657>,  <13.460531, 21.151136, 19.427242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.468824, 21.622211, 18.949657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.859386, 21.536129, 18.956791>,  <14.093724, 21.484480, 18.961071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.859386, 21.536129, 18.956791>,  <13.468824, 21.622211, 18.949657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.859386, 21.536129, 18.956791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001543, -0.089528, -0.995983,
		0.215938, 0.972456, -0.087747,
		0.976406, -0.215206, 0.017832,
		14.152308, 21.471567, 18.962141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693678, 22.050985, 18.420511>,  <13.468824, 21.622211, 18.949657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.693678, 22.050985, 18.420511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.983728, 21.784033, 18.488388>,  <14.157759, 21.623861, 18.529114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.983728, 21.784033, 18.488388>,  <13.693678, 22.050985, 18.420511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.983728, 21.784033, 18.488388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099953, -0.141811, -0.984834,
		0.681323, 0.731091, -0.036124,
		0.725127, -0.667379, 0.169694,
		14.201266, 21.583818, 18.539297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141922, 22.156317, 17.857944>,  <13.693678, 22.050985, 18.420511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.141922, 22.156317, 17.857944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.295387, 21.808069, 17.981119>,  <14.387466, 21.599121, 18.055025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.295387, 21.808069, 17.981119>,  <14.141922, 22.156317, 17.857944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295387, 21.808069, 17.981119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116683, -0.285081, -0.951375,
		0.916072, 0.400939, -0.007789,
		0.383664, -0.870619, 0.307937,
		14.410486, 21.546885, 18.073500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.162347, 3.529315, 8.891670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.371971, 3.471258, 9.227360>,  <5.497745, 3.436424, 9.428773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.371971, 3.471258, 9.227360>,  <5.162347, 3.529315, 8.891670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.371971, 3.471258, 9.227360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047991, 0.988839, 0.141050,
		-0.850328, -0.033644, 0.525176,
		0.524060, -0.145143, 0.839223,
		5.529189, 3.427715, 9.479127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.935176, 3.830478, 9.613410>,  <5.162347, 3.529315, 8.891670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.935176, 3.830478, 9.613410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.334424, 3.834917, 9.589311>,  <5.573974, 3.837581, 9.574851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.334424, 3.834917, 9.589311>,  <4.935176, 3.830478, 9.613410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.334424, 3.834917, 9.589311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006562, 0.958431, 0.285248,
		0.060910, -0.285108, 0.956558,
		0.998122, 0.011098, -0.060249,
		5.633861, 3.838247, 9.571236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.181381, 3.826445, 10.287339>,  <4.935176, 3.830478, 9.613410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.181381, 3.826445, 10.287339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.421618, 4.006343, 10.022909>,  <5.565759, 4.114282, 9.864251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.421618, 4.006343, 10.022909>,  <5.181381, 3.826445, 10.287339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.421618, 4.006343, 10.022909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161807, 0.741329, 0.651345,
		0.783016, -0.498156, 0.372461,
		0.600587, 0.449746, -0.661078,
		5.601795, 4.141266, 9.824587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.777908, 4.133815, 10.545789>,  <5.181381, 3.826445, 10.287339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.777908, 4.133815, 10.545789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.775069, 4.384388, 10.234012>,  <5.773366, 4.534732, 10.046946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.775069, 4.384388, 10.234012>,  <5.777908, 4.133815, 10.545789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.775069, 4.384388, 10.234012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367317, 0.726605, 0.580623,
		0.930069, -0.282182, -0.235256,
		-0.007097, 0.626433, -0.779443,
		5.772940, 4.572319, 10.000178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.282692, 4.584327, 10.453788>,  <5.777908, 4.133815, 10.545789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.282692, 4.584327, 10.453788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.050176, 4.825102, 10.234782>,  <5.910666, 4.969568, 10.103379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.050176, 4.825102, 10.234782>,  <6.282692, 4.584327, 10.453788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.050176, 4.825102, 10.234782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412897, 0.798012, 0.438970,
		0.701155, 0.029103, -0.712415,
		-0.581290, 0.601939, -0.547513,
		5.875789, 5.005684, 10.070528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.752762, 5.179855, 10.265828>,  <6.282692, 4.584327, 10.453788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.752762, 5.179855, 10.265828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.361780, 5.258730, 10.296028>,  <6.127191, 5.306056, 10.314148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.361780, 5.258730, 10.296028>,  <6.752762, 5.179855, 10.265828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.361780, 5.258730, 10.296028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210569, 0.883842, 0.417712,
		0.015639, 0.424192, -0.905437,
		-0.977454, 0.197189, 0.075500,
		6.068544, 5.317887, 10.318678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.596551, 5.814187, 9.996274>,  <6.752762, 5.179855, 10.265828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.596551, 5.814187, 9.996274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.316223, 5.743849, 10.272804>,  <6.148026, 5.701647, 10.438723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.316223, 5.743849, 10.272804>,  <6.596551, 5.814187, 9.996274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.316223, 5.743849, 10.272804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167453, 0.901505, 0.399058,
		-0.693406, 0.395432, -0.602347,
		-0.700820, -0.175844, 0.691325,
		6.105977, 5.691096, 10.480202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.212104, 6.427335, 9.991018>,  <6.596551, 5.814187, 9.996274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.212104, 6.427335, 9.991018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.180525, 6.239771, 10.342902>,  <6.161577, 6.127233, 10.554032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.180525, 6.239771, 10.342902>,  <6.212104, 6.427335, 9.991018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.180525, 6.239771, 10.342902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150280, 0.866782, 0.475505,
		-0.985486, 0.169743, 0.002037,
		-0.078948, -0.468910, 0.879711,
		6.156840, 6.099099, 10.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.683692, 6.716089, 10.527769>,  <6.212104, 6.427335, 9.991018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.683692, 6.716089, 10.527769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990160, 6.539194, 10.714279>,  <6.174040, 6.433056, 10.826185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990160, 6.539194, 10.714279>,  <5.683692, 6.716089, 10.527769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.990160, 6.539194, 10.714279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305642, 0.889006, 0.340955,
		-0.565304, -0.118716, 0.816295,
		0.766168, -0.442238, 0.466275,
		6.220010, 6.406522, 10.854161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.759449, 6.942802, 11.301661>,  <5.683692, 6.716089, 10.527769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.759449, 6.942802, 11.301661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.111077, 6.825791, 11.151108>,  <6.322053, 6.755585, 11.060776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.111077, 6.825791, 11.151108>,  <5.759449, 6.942802, 11.301661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.111077, 6.825791, 11.151108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376723, 0.910120, 0.172514,
		0.292089, -0.293444, 0.910261,
		0.879070, -0.292527, -0.376383,
		6.374798, 6.738033, 11.038193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.308365, 7.145934, 11.743621>,  <5.759449, 6.942802, 11.301661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.308365, 7.145934, 11.743621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.462933, 7.134985, 11.374854>,  <6.555673, 7.128417, 11.153594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.462933, 7.134985, 11.374854>,  <6.308365, 7.145934, 11.743621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.462933, 7.134985, 11.374854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325417, 0.939324, 0.108510,
		0.863009, -0.341938, 0.371878,
		0.386418, -0.027370, -0.921917,
		6.578858, 7.126774, 11.098279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.091900, 7.439535, 11.771753>,  <6.308365, 7.145934, 11.743621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.091900, 7.439535, 11.771753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.907143, 7.473287, 11.418589>,  <6.796289, 7.493538, 11.206690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.907143, 7.473287, 11.418589>,  <7.091900, 7.439535, 11.771753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.907143, 7.473287, 11.418589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137027, 0.990301, 0.022957,
		0.876287, -0.110379, -0.468976,
		-0.461893, 0.084379, -0.882913,
		6.768575, 7.498600, 11.153715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.585892, 7.833718, 11.414489>,  <7.091900, 7.439535, 11.771753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.585892, 7.833718, 11.414489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250142, 7.862143, 11.198934>,  <7.048692, 7.879198, 11.069601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250142, 7.862143, 11.198934>,  <7.585892, 7.833718, 11.414489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.250142, 7.862143, 11.198934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105584, 0.993849, -0.033402,
		0.533199, -0.084935, -0.841715,
		-0.839375, 0.071062, -0.538887,
		6.998329, 7.883461, 11.037268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.726177, 8.167926, 10.787913>,  <7.585892, 7.833718, 11.414489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.726177, 8.167926, 10.787913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.327173, 8.192943, 10.774861>,  <7.087771, 8.207952, 10.767031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.327173, 8.192943, 10.774861>,  <7.726177, 8.167926, 10.787913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.327173, 8.192943, 10.774861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069553, 0.949196, -0.306901,
		0.011777, -0.308406, -0.951182,
		-0.997509, 0.062543, -0.032629,
		7.027921, 8.211705, 10.765073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.593593, 8.729324, 10.414196>,  <7.726177, 8.167926, 10.787913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.593593, 8.729324, 10.414196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.230995, 8.702351, 10.580915>,  <7.013436, 8.686167, 10.680947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.230995, 8.702351, 10.580915>,  <7.593593, 8.729324, 10.414196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.230995, 8.702351, 10.580915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189566, 0.947075, -0.259061,
		-0.377269, -0.313849, -0.871302,
		-0.906495, -0.067434, 0.416798,
		6.959047, 8.682120, 10.705955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.038776, 8.959436, 9.900028>,  <7.593593, 8.729324, 10.414196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.038776, 8.959436, 9.900028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.901278, 9.016997, 10.271216>,  <6.818779, 9.051534, 10.493930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.901278, 9.016997, 10.271216>,  <7.038776, 8.959436, 9.900028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.901278, 9.016997, 10.271216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205129, 0.952818, -0.223742,
		-0.916385, -0.267265, -0.298009,
		-0.343746, 0.143903, 0.927971,
		6.798154, 9.060168, 10.549607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.438902, 9.446493, 9.829328>,  <7.038776, 8.959436, 9.900028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.438902, 9.446493, 9.829328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.558777, 9.469885, 10.210225>,  <6.630702, 9.483920, 10.438764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.558777, 9.469885, 10.210225>,  <6.438902, 9.446493, 9.829328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.558777, 9.469885, 10.210225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165804, 0.986123, -0.008377,
		-0.939519, -0.155375, 0.305225,
		0.299688, 0.058478, 0.952243,
		6.648683, 9.487429, 10.495898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.050320, 9.999628, 10.078785>,  <6.438902, 9.446493, 9.829328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.050320, 9.999628, 10.078785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.315768, 9.966519, 10.376175>,  <6.475037, 9.946654, 10.554609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.315768, 9.966519, 10.376175>,  <6.050320, 9.999628, 10.078785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.315768, 9.966519, 10.376175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127803, 0.966703, 0.221701,
		-0.737071, -0.242144, 0.630946,
		0.663621, -0.082773, 0.743476,
		6.514854, 9.941688, 10.599217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.715646, 10.249660, 10.705422>,  <6.050320, 9.999628, 10.078785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.715646, 10.249660, 10.705422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.110929, 10.287408, 10.753659>,  <6.348098, 10.310057, 10.782601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.110929, 10.287408, 10.753659>,  <5.715646, 10.249660, 10.705422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.110929, 10.287408, 10.753659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140791, 0.869635, 0.473194,
		-0.060216, -0.484592, 0.872665,
		0.988207, 0.094369, 0.120592,
		6.407391, 10.315719, 10.789837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.797231, 10.370607, 11.439329>,  <5.715646, 10.249660, 10.705422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.797231, 10.370607, 11.439329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.140906, 10.505780, 11.285656>,  <6.347112, 10.586884, 11.193452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.140906, 10.505780, 11.285656>,  <5.797231, 10.370607, 11.439329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.140906, 10.505780, 11.285656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072895, 0.824045, 0.561815,
		0.506440, -0.454700, 0.732644,
		0.859189, 0.337931, -0.384184,
		6.398663, 10.607160, 11.170401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.175101, 10.518402, 12.026068>,  <5.797231, 10.370607, 11.439329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.175101, 10.518402, 12.026068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.336900, 10.742998, 11.737315>,  <6.433980, 10.877755, 11.564064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.336900, 10.742998, 11.737315>,  <6.175101, 10.518402, 12.026068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.336900, 10.742998, 11.737315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039455, 0.799318, 0.599612,
		0.913687, -0.214059, 0.345476,
		0.404498, 0.561489, -0.721880,
		6.458250, 10.911445, 11.520751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.866177, 10.752806, 12.261299>,  <6.175101, 10.518402, 12.026068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.866177, 10.752806, 12.261299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.719044, 11.000110, 11.983463>,  <6.630764, 11.148492, 11.816762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.719044, 11.000110, 11.983463>,  <6.866177, 10.752806, 12.261299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.719044, 11.000110, 11.983463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005416, 0.748368, 0.663262,
		0.929877, 0.240207, -0.278622,
		-0.367832, 0.618261, -0.694589,
		6.608695, 11.185588, 11.775086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.181198, 11.417395, 12.373610>,  <6.866177, 10.752806, 12.261299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.181198, 11.417395, 12.373610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.869170, 11.528693, 12.149443>,  <6.681953, 11.595472, 12.014942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.869170, 11.528693, 12.149443>,  <7.181198, 11.417395, 12.373610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.869170, 11.528693, 12.149443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018795, 0.884854, 0.465489,
		0.625410, 0.373647, -0.685018,
		-0.780070, 0.278246, -0.560420,
		6.635149, 11.612167, 11.981317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.306531, 12.142899, 12.244765>,  <7.181198, 11.417395, 12.373610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.306531, 12.142899, 12.244765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.933802, 12.059460, 12.125978>,  <6.710164, 12.009397, 12.054705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.933802, 12.059460, 12.125978>,  <7.306531, 12.142899, 12.244765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.933802, 12.059460, 12.125978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335688, 0.806373, 0.486904,
		0.137901, 0.553398, -0.821422,
		-0.931825, -0.208597, -0.296969,
		6.654254, 11.996881, 12.036887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.016576, 12.721933, 11.949244>,  <7.306531, 12.142899, 12.244765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.016576, 12.721933, 11.949244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.688062, 12.540689, 12.087911>,  <6.490953, 12.431941, 12.171111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.688062, 12.540689, 12.087911>,  <7.016576, 12.721933, 11.949244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.688062, 12.540689, 12.087911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158412, 0.764858, 0.624417,
		-0.548084, 0.457908, -0.699946,
		-0.821285, -0.453113, 0.346668,
		6.441676, 12.404755, 12.191911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.557721, 13.298183, 12.153500>,  <7.016576, 12.721933, 11.949244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.557721, 13.298183, 12.153500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.375708, 12.995777, 12.341706>,  <6.266500, 12.814333, 12.454631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.375708, 12.995777, 12.341706>,  <6.557721, 13.298183, 12.153500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.375708, 12.995777, 12.341706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343628, 0.636541, 0.690460,
		-0.821502, 0.152498, -0.549435,
		-0.455031, -0.756016, 0.470517,
		6.239199, 12.768972, 12.482862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.903204, 13.515009, 12.408903>,  <6.557721, 13.298183, 12.153500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.903204, 13.515009, 12.408903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.975358, 13.193944, 12.636304>,  <6.018651, 13.001306, 12.772744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.975358, 13.193944, 12.636304>,  <5.903204, 13.515009, 12.408903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.975358, 13.193944, 12.636304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209546, 0.533355, 0.819526,
		-0.961016, -0.266958, -0.071985,
		0.180385, -0.802662, 0.568503,
		6.029474, 12.953146, 12.806855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.456577, 13.620891, 13.003381>,  <5.903204, 13.515009, 12.408903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.456577, 13.620891, 13.003381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.738033, 13.362386, 13.121525>,  <5.906906, 13.207283, 13.192411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.738033, 13.362386, 13.121525>,  <5.456577, 13.620891, 13.003381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.738033, 13.362386, 13.121525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048807, 0.458649, 0.887276,
		-0.708880, -0.609906, 0.354266,
		0.703639, -0.646262, 0.295359,
		5.949124, 13.168507, 13.210133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.157376, 13.383818, 13.643807>,  <5.456577, 13.620891, 13.003381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.157376, 13.383818, 13.643807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.556264, 13.364678, 13.620960>,  <5.795597, 13.353195, 13.607252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.556264, 13.364678, 13.620960>,  <5.157376, 13.383818, 13.643807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.556264, 13.364678, 13.620960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073214, 0.486759, 0.870463,
		-0.013847, -0.872225, 0.488909,
		0.997220, -0.047848, -0.057118,
		5.855431, 13.350324, 13.603825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.336843, 13.273712, 14.297890>,  <5.157376, 13.383818, 13.643807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.336843, 13.273712, 14.297890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.692358, 13.393169, 14.158824>,  <5.905666, 13.464844, 14.075385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.692358, 13.393169, 14.158824>,  <5.336843, 13.273712, 14.297890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.692358, 13.393169, 14.158824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018251, 0.734897, 0.677934,
		0.457957, -0.608884, 0.647716,
		0.888787, 0.298643, -0.347664,
		5.958993, 13.482762, 14.054524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.754386, 13.277201, 14.891989>,  <5.336843, 13.273712, 14.297890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.754386, 13.277201, 14.891989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.896345, 13.522565, 14.609776>,  <5.981520, 13.669784, 14.440448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.896345, 13.522565, 14.609776>,  <5.754386, 13.277201, 14.891989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.896345, 13.522565, 14.609776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049073, 0.741394, 0.669274,
		0.933617, -0.272146, 0.233017,
		0.354897, 0.613410, -0.705532,
		6.002814, 13.706588, 14.398116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.999900, 13.187102, 14.939073>,  <5.754386, 13.277201, 14.891989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.999900, 13.187102, 14.939073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.009822, 13.018794, 15.301804>,  <5.015775, 12.917809, 15.519443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.009822, 13.018794, 15.301804>,  <4.999900, 13.187102, 14.939073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.009822, 13.018794, 15.301804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031225, -0.906338, -0.421398,
		0.999205, 0.038768, -0.009342,
		0.024804, -0.420771, 0.906828,
		5.017263, 12.892563, 15.573852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.355474, 12.496982, 14.910316>,  <4.999900, 13.187102, 14.939073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.355474, 12.496982, 14.910316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.127844, 12.469544, 15.238084>,  <4.991267, 12.453082, 15.434745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.127844, 12.469544, 15.238084>,  <5.355474, 12.496982, 14.910316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.127844, 12.469544, 15.238084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217996, -0.948273, -0.230773,
		0.792864, -0.309957, 0.524684,
		-0.569073, -0.068592, 0.819421,
		4.957122, 12.448967, 15.483911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.667015, 11.950205, 15.271600>,  <5.355474, 12.496982, 14.910316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.667015, 11.950205, 15.271600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.314698, 11.971765, 15.459769>,  <5.103307, 11.984700, 15.572671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.314698, 11.971765, 15.459769>,  <5.667015, 11.950205, 15.271600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.314698, 11.971765, 15.459769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093562, -0.993723, -0.061325,
		0.464166, -0.098029, 0.880307,
		-0.880793, 0.053899, 0.470424,
		5.050460, 11.987934, 15.600897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.747177, 11.406042, 15.889318>,  <5.667015, 11.950205, 15.271600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.747177, 11.406042, 15.889318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.370763, 11.503783, 15.795726>,  <5.144915, 11.562428, 15.739571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.370763, 11.503783, 15.795726>,  <5.747177, 11.406042, 15.889318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.370763, 11.503783, 15.795726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240104, -0.969612, -0.046931,
		-0.238338, 0.012016, 0.971108,
		-0.941034, 0.244353, -0.233980,
		5.088453, 11.577089, 15.725532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.346240, 11.052054, 16.357292>,  <5.747177, 11.406042, 15.889318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.346240, 11.052054, 16.357292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.110535, 11.099369, 16.037598>,  <4.969112, 11.127758, 15.845781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.110535, 11.099369, 16.037598>,  <5.346240, 11.052054, 16.357292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.110535, 11.099369, 16.037598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273723, -0.959952, 0.059740,
		-0.760162, 0.253972, 0.598041,
		-0.589262, 0.118286, -0.799236,
		4.933756, 11.134855, 15.797827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.872815, 10.495332, 16.443674>,  <5.346240, 11.052054, 16.357292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.872815, 10.495332, 16.443674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.793708, 10.616267, 16.070690>,  <4.746244, 10.688828, 15.846900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.793708, 10.616267, 16.070690>,  <4.872815, 10.495332, 16.443674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.793708, 10.616267, 16.070690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250119, -0.935324, -0.250219,
		-0.947802, 0.183741, 0.260596,
		-0.197766, 0.302339, -0.932459,
		4.734378, 10.706968, 15.790953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.240021, 10.138656, 16.267855>,  <4.872815, 10.495332, 16.443674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.240021, 10.138656, 16.267855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.402953, 10.246678, 15.918878>,  <4.500711, 10.311492, 15.709492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.402953, 10.246678, 15.918878>,  <4.240021, 10.138656, 16.267855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.402953, 10.246678, 15.918878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240340, -0.889913, -0.387675,
		-0.881091, 0.367594, -0.297581,
		0.407328, 0.270056, -0.872441,
		4.525151, 10.327695, 15.657146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.804737, 10.007027, 15.761017>,  <4.240021, 10.138656, 16.267855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.804737, 10.007027, 15.761017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.147137, 10.036361, 15.556317>,  <4.352576, 10.053961, 15.433497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.147137, 10.036361, 15.556317>,  <3.804737, 10.007027, 15.761017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.147137, 10.036361, 15.556317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214800, -0.849947, -0.481093,
		-0.470241, 0.521739, -0.711802,
		0.855999, 0.073334, -0.511750,
		4.403936, 10.058361, 15.402792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.732666, 9.643974, 15.159791>,  <3.804737, 10.007027, 15.761017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.732666, 9.643974, 15.159791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.130945, 9.680676, 15.154606>,  <4.369912, 9.702698, 15.151495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.130945, 9.680676, 15.154606>,  <3.732666, 9.643974, 15.159791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.130945, 9.680676, 15.154606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075579, -0.885051, -0.459318,
		-0.053619, 0.456361, -0.888177,
		0.995697, 0.091755, -0.012964,
		4.429654, 9.708203, 15.150717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.974146, 9.303840, 14.591160>,  <3.732666, 9.643974, 15.159791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.974146, 9.303840, 14.591160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.303424, 9.317927, 14.817825>,  <4.500992, 9.326380, 14.953824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.303424, 9.317927, 14.817825>,  <3.974146, 9.303840, 14.591160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.303424, 9.317927, 14.817825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249038, -0.919334, -0.304640,
		0.510223, 0.391899, -0.765564,
		0.823197, 0.035220, 0.566663,
		4.550384, 9.328493, 14.987824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.540123, 9.081306, 14.080195>,  <3.974146, 9.303840, 14.591160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.540123, 9.081306, 14.080195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.672053, 9.034638, 14.454918>,  <4.751210, 9.006638, 14.679751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.672053, 9.034638, 14.454918>,  <4.540123, 9.081306, 14.080195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.672053, 9.034638, 14.454918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387395, -0.888207, -0.247009,
		0.860896, 0.444383, -0.247753,
		0.329823, -0.116671, 0.936806,
		4.771000, 8.999638, 14.735960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.224320, 8.919546, 14.127450>,  <4.540123, 9.081306, 14.080195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.224320, 8.919546, 14.127450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.091149, 8.763572, 14.470870>,  <5.011247, 8.669987, 14.676922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.091149, 8.763572, 14.470870>,  <5.224320, 8.919546, 14.127450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.091149, 8.763572, 14.470870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494267, -0.847553, -0.193275,
		0.803032, 0.360007, 0.474905,
		-0.332927, -0.389936, 0.858551,
		4.991271, 8.646591, 14.728436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.716110, 8.525192, 14.410928>,  <5.224320, 8.919546, 14.127450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.716110, 8.525192, 14.410928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.410270, 8.386944, 14.628526>,  <5.226766, 8.303994, 14.759085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.410270, 8.386944, 14.628526>,  <5.716110, 8.525192, 14.410928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.410270, 8.386944, 14.628526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388168, -0.920746, -0.039406,
		0.514502, 0.181032, 0.838162,
		-0.764600, -0.345622, 0.543996,
		5.180890, 8.283257, 14.791724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.001706, 8.127100, 14.912756>,  <5.716110, 8.525192, 14.410928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.001706, 8.127100, 14.912756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.617783, 8.015043, 14.905955>,  <5.387429, 7.947809, 14.901875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.617783, 8.015043, 14.905955>,  <6.001706, 8.127100, 14.912756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.617783, 8.015043, 14.905955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279935, -0.951235, -0.129573,
		0.020127, -0.129124, 0.991424,
		-0.959808, -0.280142, -0.017001,
		5.329841, 7.931001, 14.900855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.902126, 7.620604, 15.429813>,  <6.001706, 8.127100, 14.912756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.902126, 7.620604, 15.429813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.600237, 7.560172, 15.174448>,  <5.419105, 7.523913, 15.021229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.600237, 7.560172, 15.174448>,  <5.902126, 7.620604, 15.429813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.600237, 7.560172, 15.174448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274006, -0.956772, -0.097507,
		-0.596085, -0.248520, 0.763492,
		-0.754721, -0.151079, -0.638413,
		5.373821, 7.514848, 14.982924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.696029, 6.908624, 15.410089>,  <5.902126, 7.620604, 15.429813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.696029, 6.908624, 15.410089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.554972, 7.032449, 15.056860>,  <5.470337, 7.106744, 14.844923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.554972, 7.032449, 15.056860>,  <5.696029, 6.908624, 15.410089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.554972, 7.032449, 15.056860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318445, -0.847670, -0.424321,
		-0.879907, -0.430843, 0.200344,
		-0.352642, 0.309564, -0.883071,
		5.449179, 7.125318, 14.791939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.491581, 6.318115, 15.079156>,  <5.696029, 6.908624, 15.410089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.491581, 6.318115, 15.079156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.556740, 6.595404, 14.798326>,  <5.595836, 6.761777, 14.629829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.556740, 6.595404, 14.798326>,  <5.491581, 6.318115, 15.079156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.556740, 6.595404, 14.798326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310728, -0.711413, -0.630349,
		-0.936436, -0.115470, -0.331292,
		0.162899, 0.693223, -0.702073,
		5.605610, 6.803371, 14.587705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.249937, 5.916563, 14.428981>,  <5.491581, 6.318115, 15.079156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.249937, 5.916563, 14.428981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.472388, 6.215806, 14.284175>,  <5.605859, 6.395353, 14.197291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.472388, 6.215806, 14.284175>,  <5.249937, 5.916563, 14.428981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.472388, 6.215806, 14.284175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312440, -0.591827, -0.743049,
		-0.770132, 0.300123, -0.562871,
		0.556128, 0.748109, -0.362014,
		5.639226, 6.440239, 14.175570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.197340, 5.747681, 13.732012>,  <5.249937, 5.916563, 14.428981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.197340, 5.747681, 13.732012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.496562, 6.012908, 13.743019>,  <5.676095, 6.172044, 13.749623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.496562, 6.012908, 13.743019>,  <5.197340, 5.747681, 13.732012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.496562, 6.012908, 13.743019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510988, -0.549033, -0.661404,
		-0.423447, 0.508827, -0.749525,
		0.748054, 0.663068, 0.027518,
		5.720978, 6.211828, 13.751274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.354291, 5.933072, 12.992212>,  <5.197340, 5.747681, 13.732012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.354291, 5.933072, 12.992212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.672988, 6.009593, 13.221508>,  <5.864207, 6.055506, 13.359085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.672988, 6.009593, 13.221508>,  <5.354291, 5.933072, 12.992212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.672988, 6.009593, 13.221508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528882, -0.679666, -0.508269,
		0.292378, 0.708136, -0.642696,
		0.796743, 0.191304, 0.573240,
		5.912011, 6.066985, 13.393480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.899467, 6.177110, 12.570083>,  <5.354291, 5.933072, 12.992212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.899467, 6.177110, 12.570083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.069648, 6.011335, 12.891885>,  <6.171757, 5.911870, 13.084967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.069648, 6.011335, 12.891885>,  <5.899467, 6.177110, 12.570083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.069648, 6.011335, 12.891885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382777, -0.723132, -0.574946,
		0.820044, 0.552559, -0.149022,
		0.425454, -0.414438, 0.804506,
		6.197284, 5.887003, 13.133237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<13.644718, 19.930006, 24.831921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.397123, 19.645832, 24.965870>,  <13.248567, 19.475328, 25.046240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.397123, 19.645832, 24.965870>,  <13.644718, 19.930006, 24.831921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.397123, 19.645832, 24.965870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100808, 0.350980, 0.930941,
		-0.778904, 0.609999, -0.145635,
		-0.618988, -0.710433, 0.334872,
		13.211427, 19.432703, 25.066332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.367172, 20.294519, 25.285162>,  <13.644718, 19.930006, 24.831921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.367172, 20.294519, 25.285162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.283770, 19.922640, 25.406609>,  <13.233727, 19.699512, 25.479477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.283770, 19.922640, 25.406609>,  <13.367172, 20.294519, 25.285162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.283770, 19.922640, 25.406609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018951, 0.306541, 0.951669,
		-0.977837, 0.204184, -0.046297,
		-0.208508, -0.929700, 0.303616,
		13.221217, 19.643730, 25.497694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.932174, 20.439074, 25.747246>,  <13.367172, 20.294519, 25.285162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.932174, 20.439074, 25.747246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.099149, 20.082132, 25.815889>,  <13.199334, 19.867968, 25.857077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.099149, 20.082132, 25.815889>,  <12.932174, 20.439074, 25.747246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.099149, 20.082132, 25.815889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181919, 0.267095, 0.946343,
		-0.890310, -0.363819, 0.273832,
		0.417437, -0.892354, 0.171611,
		13.224380, 19.814426, 25.867373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.658537, 20.070728, 26.328194>,  <12.932174, 20.439074, 25.747246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.658537, 20.070728, 26.328194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.995727, 19.855907, 26.315737>,  <13.198040, 19.727015, 26.308262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.995727, 19.855907, 26.315737>,  <12.658537, 20.070728, 26.328194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995727, 19.855907, 26.315737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097883, 0.096202, 0.990537,
		-0.528975, -0.838045, 0.133665,
		0.842973, -0.537053, -0.031142,
		13.248618, 19.694792, 26.306395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.571089, 19.773380, 26.962923>,  <12.658537, 20.070728, 26.328194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.571089, 19.773380, 26.962923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.962042, 19.755695, 26.880199>,  <13.196613, 19.745085, 26.830564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.962042, 19.755695, 26.880199>,  <12.571089, 19.773380, 26.962923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962042, 19.755695, 26.880199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197602, -0.157510, 0.967545,
		-0.075350, -0.986527, -0.145211,
		0.977382, -0.044211, -0.206808,
		13.255257, 19.742432, 26.818157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.835862, 19.416267, 27.410444>,  <12.571089, 19.773380, 26.962923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.835862, 19.416267, 27.410444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.198239, 19.538660, 27.293383>,  <13.415666, 19.612095, 27.223146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.198239, 19.538660, 27.293383>,  <12.835862, 19.416267, 27.410444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.198239, 19.538660, 27.293383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358896, -0.188235, 0.914200,
		0.224641, -0.933243, -0.280345,
		0.905942, 0.305981, -0.292652,
		13.470022, 19.630455, 27.205587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.323042, 18.940153, 27.721519>,  <12.835862, 19.416267, 27.410444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.323042, 18.940153, 27.721519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.550765, 19.254045, 27.623468>,  <13.687399, 19.442381, 27.564638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.550765, 19.254045, 27.623468>,  <13.323042, 18.940153, 27.721519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.550765, 19.254045, 27.623468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544001, -0.136023, 0.827986,
		0.616403, -0.604728, -0.504333,
		0.569307, 0.784730, -0.245128,
		13.721558, 19.489464, 27.549931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985574, 18.684580, 27.848602>,  <13.323042, 18.940153, 27.721519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985574, 18.684580, 27.848602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.056643, 19.075827, 27.805300>,  <14.099285, 19.310575, 27.779318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.056643, 19.075827, 27.805300>,  <13.985574, 18.684580, 27.848602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056643, 19.075827, 27.805300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785051, -0.074544, 0.614929,
		0.593403, -0.194243, -0.781116,
		0.177674, 0.978117, -0.108256,
		14.109945, 19.369263, 27.772823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.790613, 18.763813, 27.938780>,  <13.985574, 18.684580, 27.848602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.790613, 18.763813, 27.938780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.656260, 19.132032, 28.018555>,  <14.575647, 19.352964, 28.066420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.656260, 19.132032, 28.018555>,  <14.790613, 18.763813, 27.938780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656260, 19.132032, 28.018555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802898, 0.169114, 0.571625,
		0.492480, 0.352126, -0.795908,
		-0.335884, 0.920547, 0.199436,
		14.555494, 19.408197, 28.078386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.358262, 19.275637, 27.819624>,  <14.790613, 18.763813, 27.938780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.358262, 19.275637, 27.819624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.088099, 19.404694, 28.084871>,  <14.926002, 19.482128, 28.244020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.088099, 19.404694, 28.084871>,  <15.358262, 19.275637, 27.819624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.088099, 19.404694, 28.084871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725711, 0.131029, 0.675407,
		0.131029, 0.937407, -0.322645,
		-0.675407, 0.322645, 0.663118,
		14.885477, 19.501488, 28.283806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.614514, 19.806137, 28.130476>,  <15.358262, 19.275637, 27.819624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.614514, 19.806137, 28.130476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.309451, 19.735163, 28.379271>,  <15.126413, 19.692577, 28.528547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.309451, 19.735163, 28.379271>,  <15.614514, 19.806137, 28.130476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.309451, 19.735163, 28.379271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605568, 0.141980, 0.783026,
		-0.227247, 0.973837, -0.000832,
		-0.762658, -0.177436, 0.621989,
		15.080654, 19.681932, 28.565866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644361, 20.309404, 28.651690>,  <15.614514, 19.806137, 28.130476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.644361, 20.309404, 28.651690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.458122, 19.980751, 28.783228>,  <15.346379, 19.783560, 28.862152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.458122, 19.980751, 28.783228>,  <15.644361, 20.309404, 28.651690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.458122, 19.980751, 28.783228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601357, -0.021103, 0.798701,
		-0.649299, 0.569628, 0.503920,
		-0.465597, -0.821632, 0.328848,
		15.318443, 19.734261, 28.881882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.897388, 21.047716, 28.555460>,  <15.644361, 20.309404, 28.651690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.897388, 21.047716, 28.555460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.122246, 21.285067, 28.785902>,  <16.257160, 21.427477, 28.924168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.122246, 21.285067, 28.785902>,  <15.897388, 21.047716, 28.555460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122246, 21.285067, 28.785902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004636, 0.698838, -0.715265,
		-0.827025, 0.399413, 0.395601,
		0.562147, 0.593376, 0.576104,
		16.290890, 21.463079, 28.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.600836, 21.764582, 28.588335>,  <15.897388, 21.047716, 28.555460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.600836, 21.764582, 28.588335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.987561, 21.798439, 28.684755>,  <16.219597, 21.818754, 28.742607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.987561, 21.798439, 28.684755>,  <15.600836, 21.764582, 28.588335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.987561, 21.798439, 28.684755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074222, 0.809767, -0.582038,
		-0.244461, 0.580614, 0.776612,
		0.966814, 0.084644, 0.241051,
		16.277605, 21.823832, 28.757071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373141, 22.289402, 29.043745>,  <15.600836, 21.764582, 28.588335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373141, 22.289402, 29.043745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.141052, 22.609968, 28.985676>,  <15.001799, 22.802307, 28.950834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.141052, 22.609968, 28.985676>,  <15.373141, 22.289402, 29.043745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141052, 22.609968, 28.985676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275505, -0.360866, -0.890996,
		-0.766447, -0.476978, 0.430176,
		-0.580221, 0.801416, -0.145174,
		14.966986, 22.850393, 28.942123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675374, 22.119844, 28.844469>,  <15.373141, 22.289402, 29.043745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.675374, 22.119844, 28.844469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.746160, 22.487286, 28.703131>,  <14.788631, 22.707750, 28.618328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.746160, 22.487286, 28.703131>,  <14.675374, 22.119844, 28.844469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.746160, 22.487286, 28.703131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489873, -0.229176, -0.841132,
		-0.853644, 0.321946, 0.409443,
		0.176965, 0.918602, -0.353347,
		14.799249, 22.762867, 28.597126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.038445, 22.271748, 28.450319>,  <14.675374, 22.119844, 28.844469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.038445, 22.271748, 28.450319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.327478, 22.521852, 28.332390>,  <14.500898, 22.671915, 28.261631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.327478, 22.521852, 28.332390>,  <14.038445, 22.271748, 28.450319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.327478, 22.521852, 28.332390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429674, 0.072135, -0.900098,
		-0.541531, 0.777074, 0.320782,
		0.722582, 0.625263, -0.294825,
		14.544253, 22.709431, 28.243942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.725680, 22.839834, 28.170111>,  <14.038445, 22.271748, 28.450319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.725680, 22.839834, 28.170111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.094182, 22.824810, 28.015253>,  <14.315283, 22.815796, 27.922338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.094182, 22.824810, 28.015253>,  <13.725680, 22.839834, 28.170111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.094182, 22.824810, 28.015253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382297, 0.096021, -0.919037,
		0.071695, 0.994670, 0.074100,
		0.921254, -0.037562, -0.387144,
		14.370558, 22.813541, 27.899111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548132, 23.046768, 27.554321>,  <13.725680, 22.839834, 28.170111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548132, 23.046768, 27.554321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.928997, 22.935915, 27.502808>,  <14.157516, 22.869404, 27.471899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.928997, 22.935915, 27.502808>,  <13.548132, 23.046768, 27.554321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928997, 22.935915, 27.502808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160485, -0.094826, -0.982473,
		0.260062, 0.956141, -0.134765,
		0.952162, -0.277132, -0.128786,
		14.214645, 22.852776, 27.464172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.763761, 23.355640, 26.854918>,  <13.548132, 23.046768, 27.554321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.763761, 23.355640, 26.854918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.038656, 23.074665, 26.928982>,  <14.203593, 22.906080, 26.973419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.038656, 23.074665, 26.928982>,  <13.763761, 23.355640, 26.854918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038656, 23.074665, 26.928982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094317, -0.166450, -0.981529,
		0.720283, 0.692008, -0.048140,
		0.687239, -0.702438, 0.185159,
		14.244828, 22.863934, 26.984529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.380198, 23.447775, 26.335962>,  <13.763761, 23.355640, 26.854918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.380198, 23.447775, 26.335962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.409635, 23.066093, 26.451950>,  <14.427297, 22.837086, 26.521544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.409635, 23.066093, 26.451950>,  <14.380198, 23.447775, 26.335962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409635, 23.066093, 26.451950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233510, -0.266189, -0.935209,
		0.969566, 0.136533, 0.203227,
		0.073590, -0.954202, 0.289970,
		14.431711, 22.779833, 26.538940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.767756, 23.258934, 25.825529>,  <14.380198, 23.447775, 26.335962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.767756, 23.258934, 25.825529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.591842, 22.936722, 25.984379>,  <14.486293, 22.743395, 26.079689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.591842, 22.936722, 25.984379>,  <14.767756, 23.258934, 25.825529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.591842, 22.936722, 25.984379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002836, -0.443423, -0.896308,
		0.898098, -0.393058, 0.197296,
		-0.439786, -0.805532, 0.397122,
		14.459906, 22.695063, 26.103516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.118519, 22.624834, 25.662237>,  <14.767756, 23.258934, 25.825529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.118519, 22.624834, 25.662237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.754916, 22.482288, 25.748690>,  <14.536755, 22.396761, 25.800562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.754916, 22.482288, 25.748690>,  <15.118519, 22.624834, 25.662237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.754916, 22.482288, 25.748690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048843, -0.423915, -0.904384,
		0.413912, -0.832647, 0.367935,
		-0.909006, -0.356365, 0.216132,
		14.482215, 22.375380, 25.813530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182018, 21.997812, 25.405308>,  <15.118519, 22.624834, 25.662237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.182018, 21.997812, 25.405308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.790987, 22.071926, 25.445333>,  <14.556369, 22.116394, 25.469349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.790987, 22.071926, 25.445333>,  <15.182018, 21.997812, 25.405308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.790987, 22.071926, 25.445333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155957, -0.317749, -0.935261,
		-0.141493, -0.929895, 0.339520,
		-0.977577, 0.185284, 0.100065,
		14.497714, 22.127512, 25.475353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896297, 21.543123, 24.987701>,  <15.182018, 21.997812, 25.405308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896297, 21.543123, 24.987701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.590213, 21.797487, 25.027842>,  <14.406563, 21.950106, 25.051926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.590213, 21.797487, 25.027842>,  <14.896297, 21.543123, 24.987701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.590213, 21.797487, 25.027842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291148, -0.202807, -0.934934,
		-0.574183, -0.744638, 0.340335,
		-0.765210, 0.635911, 0.100352,
		14.360650, 21.988260, 25.057947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212606, 21.234241, 24.709782>,  <14.896297, 21.543123, 24.987701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212606, 21.234241, 24.709782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.126639, 21.624838, 24.703161>,  <14.075059, 21.859196, 24.699190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.126639, 21.624838, 24.703161>,  <14.212606, 21.234241, 24.709782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.126639, 21.624838, 24.703161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335261, -0.089683, -0.937847,
		-0.917284, -0.196012, 0.346654,
		-0.214918, 0.976492, -0.016549,
		14.062164, 21.917786, 24.698196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513113, 21.273579, 24.246004>,  <14.212606, 21.234241, 24.709782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513113, 21.273579, 24.246004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.706536, 21.623674, 24.250551>,  <13.822591, 21.833731, 24.253279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.706536, 21.623674, 24.250551>,  <13.513113, 21.273579, 24.246004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706536, 21.623674, 24.250551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131334, 0.085387, -0.987654,
		-0.865403, 0.476096, 0.156238,
		0.483559, 0.875238, 0.011366,
		13.851604, 21.886246, 24.253962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.086810, 21.680988, 23.954891>,  <13.513113, 21.273579, 24.246004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.086810, 21.680988, 23.954891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.449090, 21.843582, 23.906759>,  <13.666458, 21.941137, 23.877880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.449090, 21.843582, 23.906759>,  <13.086810, 21.680988, 23.954891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449090, 21.843582, 23.906759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161942, 0.069438, -0.984354,
		-0.391768, 0.911016, 0.128717,
		0.905700, 0.406484, -0.120328,
		13.720800, 21.965527, 23.870661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.518371, 22.002478, 24.336195>,  <13.086810, 21.680988, 23.954891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.518371, 22.002478, 24.336195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.138377, 21.881144, 24.306482>,  <11.910381, 21.808342, 24.288654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.138377, 21.881144, 24.306482>,  <12.518371, 22.002478, 24.336195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.138377, 21.881144, 24.306482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058755, -0.060011, 0.996467,
		-0.306723, 0.950992, 0.039186,
		-0.949984, -0.303337, -0.074282,
		11.853382, 21.790142, 24.284197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.147632, 22.363674, 24.764164>,  <12.518371, 22.002478, 24.336195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.147632, 22.363674, 24.764164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.897051, 22.055939, 24.714083>,  <11.746702, 21.871298, 24.684034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.897051, 22.055939, 24.714083>,  <12.147632, 22.363674, 24.764164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.897051, 22.055939, 24.714083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205174, 0.007792, 0.978695,
		-0.751971, 0.638794, -0.162729,
		-0.626452, -0.769338, -0.125205,
		11.709115, 21.825138, 24.676521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573155, 22.559412, 25.150764>,  <12.147632, 22.363674, 24.764164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.573155, 22.559412, 25.150764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.567631, 22.159948, 25.130819>,  <11.564316, 21.920269, 25.118853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.567631, 22.159948, 25.130819>,  <11.573155, 22.559412, 25.150764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.567631, 22.159948, 25.130819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117778, -0.047897, 0.991884,
		-0.992944, 0.019572, -0.116959,
		-0.013811, -0.998660, -0.049865,
		11.563487, 21.860350, 25.115860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002526, 22.298662, 25.529049>,  <11.573155, 22.559412, 25.150764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002526, 22.298662, 25.529049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.236220, 21.974262, 25.516729>,  <11.376436, 21.779623, 25.509336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.236220, 21.974262, 25.516729>,  <11.002526, 22.298662, 25.529049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.236220, 21.974262, 25.516729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115926, -0.120954, 0.985866,
		-0.803263, -0.572406, -0.164682,
		0.584234, -0.811001, -0.030801,
		11.411490, 21.730963, 25.507488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.697945, 21.839998, 26.014795>,  <11.002526, 22.298662, 25.529049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.697945, 21.839998, 26.014795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.072873, 21.712214, 25.959118>,  <11.297830, 21.635544, 25.925711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.072873, 21.712214, 25.959118>,  <10.697945, 21.839998, 26.014795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.072873, 21.712214, 25.959118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040746, -0.296227, 0.954248,
		-0.346081, -0.900107, -0.264642,
		0.937320, -0.319464, -0.139195,
		11.354070, 21.616375, 25.917360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710588, 21.331680, 26.417124>,  <10.697945, 21.839998, 26.014795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710588, 21.331680, 26.417124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.096944, 21.427217, 26.377110>,  <11.328757, 21.484541, 26.353100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.096944, 21.427217, 26.377110>,  <10.710588, 21.331680, 26.417124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.096944, 21.427217, 26.377110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129507, -0.111028, 0.985343,
		0.224237, -0.964690, -0.138173,
		0.965891, 0.238844, -0.100038,
		11.386711, 21.498871, 26.347097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.995050, 21.092197, 27.005182>,  <10.710588, 21.331680, 26.417124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.995050, 21.092197, 27.005182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.267103, 21.363161, 26.893085>,  <11.430335, 21.525740, 26.825827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.267103, 21.363161, 26.893085>,  <10.995050, 21.092197, 27.005182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.267103, 21.363161, 26.893085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170989, 0.225144, 0.959204,
		0.712871, -0.700303, 0.037297,
		0.680131, 0.677411, -0.280243,
		11.471143, 21.566385, 26.809013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.947570, 20.385763, 26.864843>,  <10.995050, 21.092197, 27.005182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.947570, 20.385763, 26.864843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.982620, 20.050083, 27.079531>,  <11.003651, 19.848675, 27.208344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.982620, 20.050083, 27.079531>,  <10.947570, 20.385763, 26.864843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.982620, 20.050083, 27.079531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160668, -0.543643, -0.823795,
		0.983111, -0.014049, -0.182469,
		0.087625, -0.839199, 0.536719,
		11.008907, 19.798323, 27.240547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.537157, 19.970379, 26.589659>,  <10.947570, 20.385763, 26.864843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.537157, 19.970379, 26.589659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.288611, 19.716331, 26.773193>,  <11.139483, 19.563904, 26.883314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.288611, 19.716331, 26.773193>,  <11.537157, 19.970379, 26.589659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.288611, 19.716331, 26.773193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091646, -0.522673, -0.847593,
		0.778143, -0.568715, 0.266565,
		-0.621365, -0.635119, 0.458835,
		11.102201, 19.525795, 26.910843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.692595, 19.370232, 26.227175>,  <11.537157, 19.970379, 26.589659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.692595, 19.370232, 26.227175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.338356, 19.329739, 26.408489>,  <11.125813, 19.305443, 26.517277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.338356, 19.329739, 26.408489>,  <11.692595, 19.370232, 26.227175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.338356, 19.329739, 26.408489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370656, -0.434060, -0.821100,
		0.279873, -0.895178, 0.346882,
		-0.885599, -0.101231, 0.453285,
		11.072677, 19.299370, 26.544476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.499897, 18.679459, 26.104851>,  <11.692595, 19.370232, 26.227175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.499897, 18.679459, 26.104851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.164797, 18.880545, 26.190128>,  <10.963737, 19.001196, 26.241295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.164797, 18.880545, 26.190128>,  <11.499897, 18.679459, 26.104851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.164797, 18.880545, 26.190128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456667, -0.430948, -0.778293,
		-0.299384, -0.749374, 0.590600,
		-0.837750, 0.502715, 0.213195,
		10.913472, 19.031359, 26.254087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.904088, 18.184107, 26.088814>,  <11.499897, 18.679459, 26.104851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.904088, 18.184107, 26.088814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.755241, 18.544916, 26.001289>,  <10.665934, 18.761402, 25.948774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.755241, 18.544916, 26.001289>,  <10.904088, 18.184107, 26.088814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.755241, 18.544916, 26.001289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593744, -0.412529, -0.690861,
		-0.713441, -0.127162, 0.689081,
		-0.372117, 0.902025, -0.218813,
		10.643606, 18.815523, 25.935646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.091540, 18.066435, 25.931562>,  <10.904088, 18.184107, 26.088814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.091540, 18.066435, 25.931562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.236319, 18.400953, 25.766830>,  <10.323186, 18.601665, 25.667992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.236319, 18.400953, 25.766830>,  <10.091540, 18.066435, 25.931562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.236319, 18.400953, 25.766830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549755, -0.165286, -0.818810,
		-0.752838, 0.522770, 0.399934,
		0.361946, 0.836297, -0.411829,
		10.344902, 18.651842, 25.643282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.459153, 18.189869, 25.513309>,  <10.091540, 18.066435, 25.931562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.459153, 18.189869, 25.513309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.747396, 18.427422, 25.370184>,  <9.920341, 18.569952, 25.284307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.747396, 18.427422, 25.370184>,  <9.459153, 18.189869, 25.513309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.747396, 18.427422, 25.370184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261007, -0.245755, -0.933531,
		-0.642341, 0.766101, -0.022086,
		0.720607, 0.593881, -0.357816,
		9.963577, 18.605585, 25.262838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<19.637321, 16.956062, 26.310759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.022858, 16.851439, 26.290359>,  <20.254179, 16.788664, 26.278120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.022858, 16.851439, 26.290359>,  <19.637321, 16.956062, 26.310759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022858, 16.851439, 26.290359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201563, 0.590380, 0.781553,
		-0.174314, -0.763570, 0.621752,
		0.963840, -0.261558, -0.050996,
		20.312010, 16.772972, 26.275061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845648, 16.755381, 27.027739>,  <19.637321, 16.956062, 26.310759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845648, 16.755381, 27.027739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.149538, 16.917192, 26.824100>,  <20.331871, 17.014278, 26.701918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.149538, 16.917192, 26.824100>,  <19.845648, 16.755381, 27.027739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.149538, 16.917192, 26.824100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069453, 0.727963, 0.682090,
		0.646526, -0.553558, 0.524955,
		0.759724, 0.404529, -0.509094,
		20.377455, 17.038551, 26.671373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997807, 17.494600, 27.370453>,  <19.845648, 16.755381, 27.027739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997807, 17.494600, 27.370453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.672249, 17.514997, 27.601961>,  <19.476913, 17.527235, 27.740866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.672249, 17.514997, 27.601961>,  <19.997807, 17.494600, 27.370453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.672249, 17.514997, 27.601961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309029, 0.805557, -0.505548,
		-0.492011, -0.590320, -0.639881,
		-0.813896, 0.050993, 0.578769,
		19.428080, 17.530294, 27.775591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235260, 17.545847, 27.121265>,  <19.997807, 17.494600, 27.370453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235260, 17.545847, 27.121265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.906282, 17.423044, 26.929710>,  <18.708895, 17.349363, 26.814777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.906282, 17.423044, 26.929710>,  <19.235260, 17.545847, 27.121265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.906282, 17.423044, 26.929710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561638, 0.304670, 0.769246,
		-0.090260, 0.901623, -0.423000,
		-0.822445, -0.307005, -0.478887,
		18.659550, 17.330942, 26.786045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570372, 18.060560, 26.987020>,  <19.235260, 17.545847, 27.121265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570372, 18.060560, 26.987020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.458420, 17.678974, 27.030132>,  <18.391249, 17.450022, 27.056000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.458420, 17.678974, 27.030132>,  <18.570372, 18.060560, 26.987020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458420, 17.678974, 27.030132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587797, 0.259042, 0.766415,
		-0.759054, 0.151150, -0.633239,
		-0.279879, -0.953966, 0.107781,
		18.374456, 17.392784, 27.062468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857542, 18.051105, 27.150387>,  <18.570372, 18.060560, 26.987020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857542, 18.051105, 27.150387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.003410, 17.711781, 27.303946>,  <18.090931, 17.508186, 27.396082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.003410, 17.711781, 27.303946>,  <17.857542, 18.051105, 27.150387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.003410, 17.711781, 27.303946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386678, 0.237090, 0.891218,
		-0.847050, -0.473448, -0.241563,
		0.364673, -0.848314, 0.383899,
		18.112812, 17.457287, 27.419115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397631, 17.463961, 27.395332>,  <17.857542, 18.051105, 27.150387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397631, 17.463961, 27.395332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.711195, 17.549803, 27.628374>,  <17.899334, 17.601307, 27.768200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.711195, 17.549803, 27.628374>,  <17.397631, 17.463961, 27.395332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.711195, 17.549803, 27.628374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614240, 0.404865, 0.677343,
		-0.090516, -0.888836, 0.449197,
		0.783911, 0.214604, 0.582605,
		17.946369, 17.614183, 27.803156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747540, 17.364525, 26.687025>,  <17.397631, 17.463961, 27.395332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.747540, 17.364525, 26.687025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.353090, 17.378096, 26.752031>,  <17.116421, 17.386238, 26.791035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.353090, 17.378096, 26.752031>,  <17.747540, 17.364525, 26.687025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.353090, 17.378096, 26.752031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165702, -0.261418, -0.950896,
		0.010223, -0.964629, 0.263412,
		-0.986123, 0.033927, 0.162514,
		17.057253, 17.388273, 26.800785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486422, 16.751799, 26.439522>,  <17.747540, 17.364525, 26.687025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.486422, 16.751799, 26.439522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.162306, 16.985493, 26.457869>,  <16.967836, 17.125710, 26.468876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.162306, 16.985493, 26.457869>,  <17.486422, 16.751799, 26.439522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162306, 16.985493, 26.457869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240220, -0.259738, -0.935324,
		-0.534537, -0.768898, 0.350808,
		-0.810287, 0.584236, 0.045865,
		16.919220, 17.160763, 26.471628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899239, 16.356195, 26.150713>,  <17.486422, 16.751799, 26.439522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899239, 16.356195, 26.150713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.780350, 16.736164, 26.112127>,  <16.709017, 16.964146, 26.088976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.780350, 16.736164, 26.112127>,  <16.899239, 16.356195, 26.150713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780350, 16.736164, 26.112127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493314, -0.239278, -0.836294,
		-0.817497, -0.200976, 0.539729,
		-0.297220, 0.949924, -0.096464,
		16.691183, 17.021141, 26.083187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141918, 16.297478, 26.020647>,  <16.899239, 16.356195, 26.150713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141918, 16.297478, 26.020647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.283646, 16.640356, 25.871157>,  <16.368683, 16.846083, 25.781464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.283646, 16.640356, 25.871157>,  <16.141918, 16.297478, 26.020647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.283646, 16.640356, 25.871157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469086, -0.182806, -0.864026,
		-0.808960, 0.481450, 0.337327,
		0.354320, 0.857198, -0.373724,
		16.389942, 16.897516, 25.759039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.546321, 16.588564, 25.650751>,  <16.141918, 16.297478, 26.020647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.546321, 16.588564, 25.650751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.879171, 16.771345, 25.525045>,  <16.078882, 16.881014, 25.449621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.879171, 16.771345, 25.525045>,  <15.546321, 16.588564, 25.650751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.879171, 16.771345, 25.525045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371212, 0.037922, -0.927774,
		-0.412031, 0.888683, 0.201181,
		0.832125, 0.456952, -0.314264,
		16.128809, 16.908430, 25.430765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899791, 16.294113, 25.761200>,  <15.546321, 16.588564, 25.650751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899791, 16.294113, 25.761200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.533378, 16.230701, 25.908577>,  <14.313530, 16.192656, 25.997004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.533378, 16.230701, 25.908577>,  <14.899791, 16.294113, 25.761200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.533378, 16.230701, 25.908577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250112, 0.492366, 0.833679,
		-0.313570, 0.855830, -0.411374,
		-0.916034, -0.158527, 0.368444,
		14.258568, 16.183144, 26.019110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764153, 16.912571, 26.150339>,  <14.899791, 16.294113, 25.761200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.764153, 16.912571, 26.150339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.558798, 16.610794, 26.313923>,  <14.435585, 16.429728, 26.412073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.558798, 16.610794, 26.313923>,  <14.764153, 16.912571, 26.150339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.558798, 16.610794, 26.313923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165870, 0.380333, 0.909854,
		-0.841975, 0.534941, -0.070119,
		-0.513387, -0.754443, 0.408961,
		14.404782, 16.384460, 26.436611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.280722, 17.232550, 26.595894>,  <14.764153, 16.912571, 26.150339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.280722, 17.232550, 26.595894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.255663, 16.854990, 26.725590>,  <14.240627, 16.628454, 26.803408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.255663, 16.854990, 26.725590>,  <14.280722, 17.232550, 26.595894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255663, 16.854990, 26.725590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139538, 0.329969, 0.933622,
		-0.988233, 0.013245, -0.152382,
		-0.062647, -0.943899, 0.324238,
		14.236869, 16.571821, 26.822861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719052, 17.239779, 27.004738>,  <14.280722, 17.232550, 26.595894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719052, 17.239779, 27.004738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.936515, 16.930962, 27.136425>,  <14.066993, 16.745670, 27.215437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.936515, 16.930962, 27.136425>,  <13.719052, 17.239779, 27.004738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.936515, 16.930962, 27.136425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068373, 0.350207, 0.934174,
		-0.836518, -0.530379, 0.137606,
		0.543657, -0.772045, 0.329218,
		14.099612, 16.699348, 27.235189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311488, 16.964109, 27.579615>,  <13.719052, 17.239779, 27.004738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311488, 16.964109, 27.579615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.693591, 16.854357, 27.623793>,  <13.922853, 16.788506, 27.650299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.693591, 16.854357, 27.623793>,  <13.311488, 16.964109, 27.579615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693591, 16.854357, 27.623793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036613, 0.260849, 0.964685,
		-0.293502, -0.925566, 0.239131,
		0.955257, -0.274382, 0.110447,
		13.980168, 16.772043, 27.656927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368075, 16.451710, 28.092022>,  <13.311488, 16.964109, 27.579615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368075, 16.451710, 28.092022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.719998, 16.639444, 28.061922>,  <13.931152, 16.752085, 28.043861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.719998, 16.639444, 28.061922>,  <13.368075, 16.451710, 28.092022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.719998, 16.639444, 28.061922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005640, 0.147996, 0.988972,
		0.475299, -0.870528, 0.127561,
		0.879806, 0.469338, -0.075252,
		13.983940, 16.780245, 28.039347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.672795, 16.263004, 28.660004>,  <13.368075, 16.451710, 28.092022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.672795, 16.263004, 28.660004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.915752, 16.570721, 28.580744>,  <14.061527, 16.755350, 28.533188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.915752, 16.570721, 28.580744>,  <13.672795, 16.263004, 28.660004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.915752, 16.570721, 28.580744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231367, 0.067311, 0.970535,
		0.759962, -0.635343, -0.137104,
		0.607394, 0.769291, -0.198151,
		14.097971, 16.801508, 28.521297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237941, 16.194012, 29.074383>,  <13.672795, 16.263004, 28.660004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237941, 16.194012, 29.074383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.235176, 16.583649, 28.983967>,  <14.233518, 16.817430, 28.929716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.235176, 16.583649, 28.983967>,  <14.237941, 16.194012, 29.074383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235176, 16.583649, 28.983967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184997, 0.223390, 0.957013,
		0.982715, -0.035203, -0.181748,
		-0.006911, 0.974093, -0.226041,
		14.233103, 16.875877, 28.916155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666505, 16.464066, 29.612383>,  <14.237941, 16.194012, 29.074383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666505, 16.464066, 29.612383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.473429, 16.788311, 29.479769>,  <14.357583, 16.982859, 29.400200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.473429, 16.788311, 29.479769>,  <14.666505, 16.464066, 29.612383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.473429, 16.788311, 29.479769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134189, 0.442539, 0.886652,
		0.865450, 0.383490, -0.322385,
		-0.482691, 0.810614, -0.331535,
		14.328622, 17.031494, 29.380308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.047109, 17.029797, 29.826792>,  <14.666505, 16.464066, 29.612383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.047109, 17.029797, 29.826792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.668507, 17.150152, 29.780159>,  <14.441345, 17.222366, 29.752180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.668507, 17.150152, 29.780159>,  <15.047109, 17.029797, 29.826792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.668507, 17.150152, 29.780159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018047, 0.410082, 0.911870,
		0.322181, 0.860987, -0.393575,
		-0.946506, 0.300890, -0.116583,
		14.384555, 17.240419, 29.745184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092172, 17.811640, 30.037611>,  <15.047109, 17.029797, 29.826792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.092172, 17.811640, 30.037611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.705064, 17.711140, 30.044502>,  <14.472799, 17.650839, 30.048637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.705064, 17.711140, 30.044502>,  <15.092172, 17.811640, 30.037611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705064, 17.711140, 30.044502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151193, 0.634350, 0.758116,
		-0.201404, 0.731077, -0.651892,
		-0.967769, -0.251250, 0.017227,
		14.414733, 17.635765, 30.049671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822528, 18.418657, 30.247702>,  <15.092172, 17.811640, 30.037611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822528, 18.418657, 30.247702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.518349, 18.166271, 30.309155>,  <14.335841, 18.014839, 30.346027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.518349, 18.166271, 30.309155>,  <14.822528, 18.418657, 30.247702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518349, 18.166271, 30.309155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361068, 0.607448, 0.707557,
		-0.539768, 0.482588, -0.689753,
		-0.760448, -0.630965, 0.153633,
		14.290215, 17.976982, 30.355244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206312, 18.860153, 30.305187>,  <14.822528, 18.418657, 30.247702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206312, 18.860153, 30.305187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.084647, 18.519754, 30.476437>,  <14.011648, 18.315516, 30.579185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.084647, 18.519754, 30.476437>,  <14.206312, 18.860153, 30.305187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.084647, 18.519754, 30.476437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579991, 0.521950, 0.625443,
		-0.755709, -0.058071, -0.652328,
		-0.304162, -0.850997, 0.428123,
		13.993399, 18.264456, 30.604874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388765, 18.880970, 30.286093>,  <14.206312, 18.860153, 30.305187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388765, 18.880970, 30.286093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.548187, 18.643002, 30.565298>,  <13.643841, 18.500219, 30.732821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.548187, 18.643002, 30.565298>,  <13.388765, 18.880970, 30.286093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548187, 18.643002, 30.565298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556549, 0.448040, 0.699652,
		-0.728977, -0.667328, -0.152535,
		0.398555, -0.594923, 0.698012,
		13.667754, 18.464525, 30.774702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809162, 19.248907, 29.877031>,  <13.388765, 18.880970, 30.286093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809162, 19.248907, 29.877031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.560745, 19.554937, 29.945110>,  <12.411695, 19.738556, 29.985958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.560745, 19.554937, 29.945110>,  <12.809162, 19.248907, 29.877031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.560745, 19.554937, 29.945110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465788, -0.185626, -0.865208,
		-0.630355, -0.616607, 0.471644,
		-0.621042, 0.765074, 0.170198,
		12.374433, 19.784460, 29.996170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.134080, 19.028759, 29.894938>,  <12.809162, 19.248907, 29.877031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.134080, 19.028759, 29.894938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.109161, 19.411898, 29.782757>,  <12.094211, 19.641781, 29.715448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.109161, 19.411898, 29.782757>,  <12.134080, 19.028759, 29.894938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.109161, 19.411898, 29.782757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551309, -0.267262, -0.790335,
		-0.831972, 0.105381, 0.544718,
		-0.062296, 0.957844, -0.280452,
		12.090472, 19.699251, 29.698622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.497923, 19.088766, 29.551144>,  <12.134080, 19.028759, 29.894938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.497923, 19.088766, 29.551144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.677447, 19.431448, 29.449457>,  <11.785162, 19.637056, 29.388445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.677447, 19.431448, 29.449457>,  <11.497923, 19.088766, 29.551144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.677447, 19.431448, 29.449457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500318, 0.005182, -0.865826,
		-0.740439, 0.515783, 0.430950,
		0.448812, 0.856703, -0.254218,
		11.812091, 19.688459, 29.373192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.975612, 19.491890, 29.372080>,  <11.497923, 19.088766, 29.551144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.975612, 19.491890, 29.372080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.281042, 19.643911, 29.163271>,  <11.464300, 19.735125, 29.037985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.281042, 19.643911, 29.163271>,  <10.975612, 19.491890, 29.372080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.281042, 19.643911, 29.163271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545406, -0.053164, -0.836484,
		-0.345664, 0.923434, 0.166690,
		0.763576, 0.380056, -0.522024,
		11.510115, 19.757929, 29.006664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.625731, 19.919588, 28.933262>,  <10.975612, 19.491890, 29.372080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.625731, 19.919588, 28.933262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.969010, 19.848318, 28.740702>,  <11.174978, 19.805555, 28.625166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.969010, 19.848318, 28.740702>,  <10.625731, 19.919588, 28.933262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969010, 19.848318, 28.740702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490674, -0.009290, -0.871293,
		0.150772, 0.983955, -0.095399,
		0.858199, -0.178177, -0.481401,
		11.226470, 19.794865, 28.596281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.618114, 20.395323, 28.359146>,  <10.625731, 19.919588, 28.933262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.618114, 20.395323, 28.359146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.885744, 20.113352, 28.264984>,  <11.046322, 19.944168, 28.208487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.885744, 20.113352, 28.264984>,  <10.618114, 20.395323, 28.359146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885744, 20.113352, 28.264984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340483, -0.009191, -0.940206,
		0.660614, 0.709219, -0.246166,
		0.669074, -0.704929, -0.235405,
		11.086467, 19.901873, 28.194363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.837096, 20.595886, 27.705368>,  <10.618114, 20.395323, 28.359146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.837096, 20.595886, 27.705368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.954103, 20.215948, 27.749594>,  <11.024308, 19.987986, 27.776129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.954103, 20.215948, 27.749594>,  <10.837096, 20.595886, 27.705368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.954103, 20.215948, 27.749594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033661, -0.125776, -0.991487,
		0.955667, 0.286307, -0.068764,
		0.292519, -0.949847, 0.110562,
		11.041859, 19.930994, 27.782763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.544165, 21.059917, 27.600063>,  <10.837096, 20.595886, 27.705368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.544165, 21.059917, 27.600063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.625424, 21.413074, 27.430721>,  <11.674180, 21.624969, 27.329115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.625424, 21.413074, 27.430721>,  <11.544165, 21.059917, 27.600063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.625424, 21.413074, 27.430721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233644, 0.376173, 0.896607,
		0.950863, -0.281059, -0.129864,
		0.203148, 0.882893, -0.423357,
		11.686369, 21.677942, 27.303715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.235393, 21.341606, 27.931108>,  <11.544165, 21.059917, 27.600063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.235393, 21.341606, 27.931108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.045145, 21.657803, 27.776751>,  <11.930997, 21.847521, 27.684135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.045145, 21.657803, 27.776751>,  <12.235393, 21.341606, 27.931108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.045145, 21.657803, 27.776751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270069, 0.548724, 0.791179,
		0.837167, 0.272082, -0.474470,
		-0.475619, 0.790489, -0.385893,
		11.902459, 21.894949, 27.660982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.686666, 21.853556, 28.046988>,  <12.235393, 21.341606, 27.931108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.686666, 21.853556, 28.046988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.357346, 22.065821, 27.966419>,  <12.159753, 22.193180, 27.918077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.357346, 22.065821, 27.966419>,  <12.686666, 21.853556, 28.046988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.357346, 22.065821, 27.966419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154892, 0.551442, 0.819707,
		0.546060, 0.643669, -0.536199,
		-0.823302, 0.530662, -0.201422,
		12.110354, 22.225019, 27.905993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.922413, 22.511232, 28.121880>,  <12.686666, 21.853556, 28.046988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.922413, 22.511232, 28.121880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.523948, 22.540752, 28.140690>,  <12.284868, 22.558464, 28.151976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.523948, 22.540752, 28.140690>,  <12.922413, 22.511232, 28.121880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523948, 22.540752, 28.140690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083722, 0.647376, 0.757559,
		0.025465, 0.758590, -0.651071,
		-0.996164, 0.073800, 0.047025,
		12.225099, 22.562893, 28.154797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704041, 23.279423, 28.010260>,  <12.922413, 22.511232, 28.121880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704041, 23.279423, 28.010260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.425898, 23.082125, 28.219330>,  <12.259012, 22.963745, 28.344772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.425898, 23.082125, 28.219330>,  <12.704041, 23.279423, 28.010260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.425898, 23.082125, 28.219330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070574, 0.676905, 0.732679,
		-0.715191, 0.546360, -0.435880,
		-0.695356, -0.493244, 0.522675,
		12.217291, 22.934151, 28.376133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.327971, 23.881731, 28.320576>,  <12.704041, 23.279423, 28.010260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.327971, 23.881731, 28.320576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.225201, 23.548365, 28.516291>,  <12.163538, 23.348345, 28.633720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.225201, 23.548365, 28.516291>,  <12.327971, 23.881731, 28.320576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.225201, 23.548365, 28.516291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056277, 0.518328, 0.853328,
		-0.964791, 0.191708, -0.180075,
		-0.256928, -0.833417, 0.489290,
		12.148123, 23.298340, 28.663078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.827454, 24.084290, 28.876015>,  <12.327971, 23.881731, 28.320576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.827454, 24.084290, 28.876015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.986101, 23.732578, 28.981516>,  <12.081289, 23.521551, 29.044817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.986101, 23.732578, 28.981516>,  <11.827454, 24.084290, 28.876015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.986101, 23.732578, 28.981516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225716, 0.371907, 0.900410,
		-0.889802, -0.297585, 0.345971,
		0.396618, -0.879277, 0.263754,
		12.105086, 23.468796, 29.060642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.879822, 24.200865, 29.524780>,  <11.827454, 24.084290, 28.876015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.879822, 24.200865, 29.524780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.092072, 23.863796, 29.488251>,  <12.219423, 23.661554, 29.466333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.092072, 23.863796, 29.488251>,  <11.879822, 24.200865, 29.524780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.092072, 23.863796, 29.488251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545305, 0.256905, 0.797898,
		-0.648904, -0.473186, 0.595834,
		0.530627, -0.842671, -0.091324,
		12.251261, 23.610994, 29.460854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.936774, 24.027275, 30.199909>,  <11.879822, 24.200865, 29.524780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.936774, 24.027275, 30.199909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.231938, 23.829857, 30.015778>,  <12.409037, 23.711407, 29.905298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.231938, 23.829857, 30.015778>,  <11.936774, 24.027275, 30.199909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.231938, 23.829857, 30.015778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600707, 0.169402, 0.781316,
		-0.307633, -0.853063, 0.421479,
		0.737911, -0.493544, -0.460328,
		12.453312, 23.681793, 29.877680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<10.964898, 17.585464, 14.592402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.345786, 17.669777, 14.680811>,  <11.574319, 17.720364, 14.733856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.345786, 17.669777, 14.680811>,  <10.964898, 17.585464, 14.592402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.345786, 17.669777, 14.680811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282666, 0.334139, 0.899139,
		0.115667, -0.918653, 0.377754,
		0.952219, 0.210779, 0.221023,
		11.631452, 17.733011, 14.747118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232121, 17.185129, 15.214064>,  <10.964898, 17.585464, 14.592402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232121, 17.185129, 15.214064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441182, 17.524424, 15.179825>,  <11.566619, 17.728001, 15.159282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441182, 17.524424, 15.179825>,  <11.232121, 17.185129, 15.214064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.441182, 17.524424, 15.179825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323930, 0.290452, 0.900393,
		0.788609, -0.442865, 0.426575,
		0.522652, 0.848238, -0.085596,
		11.597978, 17.778894, 15.154146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.451059, 17.244047, 15.853617>,  <11.232121, 17.185129, 15.214064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.451059, 17.244047, 15.853617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.510555, 17.610176, 15.703915>,  <11.546252, 17.829853, 15.614094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.510555, 17.610176, 15.703915>,  <11.451059, 17.244047, 15.853617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.510555, 17.610176, 15.703915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252828, 0.401085, 0.880459,
		0.956010, -0.036336, 0.291076,
		0.148739, 0.915320, -0.374254,
		11.555177, 17.884771, 15.591639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.962082, 17.498409, 16.322178>,  <11.451059, 17.244047, 15.853617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.962082, 17.498409, 16.322178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.771716, 17.799387, 16.140041>,  <11.657496, 17.979973, 16.030760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.771716, 17.799387, 16.140041>,  <11.962082, 17.498409, 16.322178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.771716, 17.799387, 16.140041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083299, 0.476839, 0.875035,
		0.875537, 0.454372, -0.164258,
		-0.475916, 0.752443, -0.455339,
		11.628942, 18.025120, 16.003439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.240100, 18.035913, 16.552912>,  <11.962082, 17.498409, 16.322178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.240100, 18.035913, 16.552912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.914418, 18.222675, 16.414885>,  <11.719009, 18.334732, 16.332067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.914418, 18.222675, 16.414885>,  <12.240100, 18.035913, 16.552912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.914418, 18.222675, 16.414885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096789, 0.476877, 0.873625,
		0.572453, 0.744709, -0.343084,
		-0.814205, 0.466902, -0.345070,
		11.670156, 18.362745, 16.311363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.343663, 18.674267, 16.685480>,  <12.240100, 18.035913, 16.552912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.343663, 18.674267, 16.685480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.947038, 18.655340, 16.637215>,  <11.709063, 18.643984, 16.608255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.947038, 18.655340, 16.637215>,  <12.343663, 18.674267, 16.685480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947038, 18.655340, 16.637215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128099, 0.499577, 0.856746,
		0.019743, 0.864976, -0.501424,
		-0.991565, -0.047317, -0.120666,
		11.649569, 18.641146, 16.601015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.095603, 19.299063, 16.825342>,  <12.343663, 18.674267, 16.685480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.095603, 19.299063, 16.825342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.767688, 19.076181, 16.878210>,  <11.570938, 18.942451, 16.909931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.767688, 19.076181, 16.878210>,  <12.095603, 19.299063, 16.825342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.767688, 19.076181, 16.878210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169851, 0.456995, 0.873101,
		-0.546898, 0.693310, -0.469281,
		-0.819789, -0.557205, 0.132170,
		11.521751, 18.909019, 16.917862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.656960, 19.761780, 16.944418>,  <12.095603, 19.299063, 16.825342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.656960, 19.761780, 16.944418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494273, 19.425465, 17.087336>,  <11.396661, 19.223677, 17.173086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494273, 19.425465, 17.087336>,  <11.656960, 19.761780, 16.944418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.494273, 19.425465, 17.087336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257320, 0.480704, 0.838278,
		-0.876565, 0.249004, -0.411862,
		-0.406718, -0.840786, 0.357294,
		11.372257, 19.173229, 17.194525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.026044, 20.030958, 17.208603>,  <11.656960, 19.761780, 16.944418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.026044, 20.030958, 17.208603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.099137, 19.690435, 17.405331>,  <11.142994, 19.486122, 17.523367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.099137, 19.690435, 17.405331>,  <11.026044, 20.030958, 17.208603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099137, 19.690435, 17.405331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261279, 0.440203, 0.859043,
		-0.947809, -0.285478, -0.141988,
		0.182735, -0.851307, 0.491818,
		11.153957, 19.435043, 17.552876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.421637, 20.005838, 17.718063>,  <11.026044, 20.030958, 17.208603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.421637, 20.005838, 17.718063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.701693, 19.760176, 17.863731>,  <10.869726, 19.612778, 17.951132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.701693, 19.760176, 17.863731>,  <10.421637, 20.005838, 17.718063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.701693, 19.760176, 17.863731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184808, 0.336779, 0.923269,
		-0.689675, -0.713718, 0.122292,
		0.700139, -0.614155, 0.364169,
		10.911735, 19.575930, 17.972982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.113946, 19.786238, 18.352295>,  <10.421637, 20.005838, 17.718063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.113946, 19.786238, 18.352295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.507118, 19.718357, 18.380722>,  <10.743021, 19.677628, 18.397778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.507118, 19.718357, 18.380722>,  <10.113946, 19.786238, 18.352295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.507118, 19.718357, 18.380722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025754, 0.255550, 0.966453,
		-0.182171, -0.951785, 0.246817,
		0.982930, -0.169703, 0.071066,
		10.801997, 19.667446, 18.402042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.197181, 19.378277, 18.978064>,  <10.113946, 19.786238, 18.352295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.197181, 19.378277, 18.978064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.542693, 19.560347, 18.891626>,  <10.750001, 19.669588, 18.839764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.542693, 19.560347, 18.891626>,  <10.197181, 19.378277, 18.978064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.542693, 19.560347, 18.891626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058531, 0.335318, 0.940285,
		0.500456, -0.824848, 0.262999,
		0.863781, 0.455178, -0.216091,
		10.801827, 19.696899, 18.826799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.321348, 18.634813, 18.917267>,  <10.197181, 19.378277, 18.978064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.321348, 18.634813, 18.917267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.148399, 18.334085, 19.116394>,  <10.044630, 18.153648, 19.235870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.148399, 18.334085, 19.116394>,  <10.321348, 18.634813, 18.917267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.148399, 18.334085, 19.116394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196865, -0.460063, -0.865786,
		0.879942, -0.472345, 0.050912,
		-0.432372, -0.751819, 0.497817,
		10.018687, 18.108540, 19.265739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.553189, 17.984543, 18.584261>,  <10.321348, 18.634813, 18.917267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.553189, 17.984543, 18.584261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224289, 17.900682, 18.795902>,  <10.026949, 17.850367, 18.922886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224289, 17.900682, 18.795902>,  <10.553189, 17.984543, 18.584261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224289, 17.900682, 18.795902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365134, -0.518787, -0.773005,
		0.436554, -0.828798, 0.350022,
		-0.822251, -0.209653, 0.529101,
		9.977613, 17.837786, 18.954632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.258325, 17.205109, 18.416777>,  <10.553189, 17.984543, 18.584261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.258325, 17.205109, 18.416777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.955462, 17.408737, 18.580511>,  <9.773744, 17.530914, 18.678751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.955462, 17.408737, 18.580511>,  <10.258325, 17.205109, 18.416777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.955462, 17.408737, 18.580511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614042, -0.340884, -0.711864,
		-0.222854, -0.790344, 0.570695,
		-0.757158, 0.509072, 0.409337,
		9.728314, 17.561459, 18.703312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.786313, 16.704990, 18.310020>,  <10.258325, 17.205109, 18.416777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.786313, 16.704990, 18.310020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.577938, 17.036898, 18.390127>,  <9.452913, 17.236042, 18.438190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.577938, 17.036898, 18.390127>,  <9.786313, 16.704990, 18.310020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.577938, 17.036898, 18.390127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780428, -0.367953, -0.505512,
		-0.345767, -0.419639, 0.839255,
		-0.520939, 0.829767, 0.200272,
		9.421657, 17.285828, 18.450207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.198363, 16.585360, 18.852657>,  <9.786313, 16.704990, 18.310020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.198363, 16.585360, 18.852657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.116235, 16.898397, 18.617577>,  <9.066957, 17.086220, 18.476528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.116235, 16.898397, 18.617577>,  <9.198363, 16.585360, 18.852657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.116235, 16.898397, 18.617577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719177, -0.527929, -0.451748,
		-0.663798, 0.329907, 0.671218,
		-0.205321, 0.782593, -0.587700,
		9.054639, 17.133175, 18.441267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.475575, 16.575483, 18.847309>,  <9.198363, 16.585360, 18.852657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.475575, 16.575483, 18.847309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.568654, 16.810894, 18.537603>,  <8.624501, 16.952141, 18.351780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.568654, 16.810894, 18.537603>,  <8.475575, 16.575483, 18.847309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.568654, 16.810894, 18.537603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515002, -0.600771, -0.611431,
		-0.825001, 0.541025, 0.163297,
		0.232696, 0.588529, -0.774265,
		8.638463, 16.987453, 18.305325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.836053, 16.676224, 18.419010>,  <8.475575, 16.575483, 18.847309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.836053, 16.676224, 18.419010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.124844, 16.754799, 18.153631>,  <8.298118, 16.801945, 17.994404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.124844, 16.754799, 18.153631>,  <7.836053, 16.676224, 18.419010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.124844, 16.754799, 18.153631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521699, -0.475308, -0.708458,
		-0.454510, 0.857610, -0.240679,
		0.721977, 0.196439, -0.663446,
		8.341436, 16.813730, 17.954597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.490926, 16.845615, 17.840126>,  <7.836053, 16.676224, 18.419010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.490926, 16.845615, 17.840126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.863555, 16.758171, 17.723934>,  <8.087133, 16.705706, 17.654219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.863555, 16.758171, 17.723934>,  <7.490926, 16.845615, 17.840126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.863555, 16.758171, 17.723934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363463, -0.542508, -0.757350,
		0.007976, 0.811107, -0.584843,
		0.931574, -0.218609, -0.290481,
		8.143028, 16.692589, 17.636789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.497502, 17.031712, 17.110609>,  <7.490926, 16.845615, 17.840126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.497502, 17.031712, 17.110609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.808811, 16.790514, 17.180683>,  <7.995596, 16.645796, 17.222729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.808811, 16.790514, 17.180683>,  <7.497502, 17.031712, 17.110609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.808811, 16.790514, 17.180683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412161, -0.701041, -0.581949,
		0.473725, 0.380709, -0.794132,
		0.778272, -0.602994, 0.175187,
		8.042293, 16.609615, 17.233240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.741395, 16.727318, 16.387381>,  <7.497502, 17.031712, 17.110609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.741395, 16.727318, 16.387381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.853288, 16.501980, 16.698351>,  <7.920424, 16.366777, 16.884933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.853288, 16.501980, 16.698351>,  <7.741395, 16.727318, 16.387381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.853288, 16.501980, 16.698351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329753, -0.816870, -0.473272,
		0.901672, -0.123970, -0.414270,
		0.279733, -0.563343, 0.777428,
		7.937208, 16.332977, 16.931580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.143641, 16.097921, 16.147020>,  <7.741395, 16.727318, 16.387381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.143641, 16.097921, 16.147020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.006332, 15.986823, 16.505913>,  <7.923947, 15.920164, 16.721249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.006332, 15.986823, 16.505913>,  <8.143641, 16.097921, 16.147020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.006332, 15.986823, 16.505913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422909, -0.807253, -0.411692,
		0.838637, -0.520769, 0.159647,
		-0.343272, -0.277745, 0.897230,
		7.903351, 15.903500, 16.775082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.184923, 15.402498, 16.083652>,  <8.143641, 16.097921, 16.147020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.184923, 15.402498, 16.083652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.936176, 15.464061, 16.390793>,  <7.786927, 15.500998, 16.575077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.936176, 15.464061, 16.390793>,  <8.184923, 15.402498, 16.083652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.936176, 15.464061, 16.390793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566893, -0.764932, -0.305796,
		0.540288, -0.625454, 0.562936,
		-0.621869, 0.153906, 0.767849,
		7.749615, 15.510233, 16.621147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.069979, 14.742935, 16.309414>,  <8.184923, 15.402498, 16.083652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.069979, 14.742935, 16.309414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.786584, 14.970710, 16.476168>,  <7.616548, 15.107374, 16.576220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.786584, 14.970710, 16.476168>,  <8.069979, 14.742935, 16.309414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.786584, 14.970710, 16.476168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651202, -0.755170, -0.075194,
		0.271999, -0.324748, 0.905845,
		-0.708486, 0.569436, 0.416882,
		7.574039, 15.141541, 16.601233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.792566, 14.450425, 17.051306>,  <8.069979, 14.742935, 16.309414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.792566, 14.450425, 17.051306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.546184, 14.652201, 16.809267>,  <7.398354, 14.773266, 16.664043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.546184, 14.652201, 16.809267>,  <7.792566, 14.450425, 17.051306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.546184, 14.652201, 16.809267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656115, -0.753619, 0.039637,
		-0.436016, 0.421427, 0.795166,
		-0.615956, 0.504438, -0.605095,
		7.361397, 14.803533, 16.627739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.203773, 14.647681, 17.538244>,  <7.792566, 14.450425, 17.051306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.203773, 14.647681, 17.538244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.389370, 14.990458, 17.448479>,  <8.500728, 15.196125, 17.394619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.389370, 14.990458, 17.448479>,  <8.203773, 14.647681, 17.538244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.389370, 14.990458, 17.448479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568466, 0.482332, 0.666485,
		0.679382, -0.181670, 0.710940,
		0.463990, 0.856943, -0.224415,
		8.528567, 15.247541, 17.381155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.293299, 14.127571, 17.925938>,  <8.203773, 14.647681, 17.538244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.293299, 14.127571, 17.925938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.558976, 13.921416, 17.709337>,  <8.718383, 13.797723, 17.579376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.558976, 13.921416, 17.709337>,  <8.293299, 14.127571, 17.925938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.558976, 13.921416, 17.709337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390590, -0.378370, 0.839211,
		-0.637407, -0.768903, -0.050005,
		0.664193, -0.515388, -0.541501,
		8.758234, 13.766800, 17.546886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.318513, 13.498283, 18.314110>,  <8.293299, 14.127571, 17.925938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.318513, 13.498283, 18.314110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.650288, 13.512969, 18.091152>,  <8.849352, 13.521780, 17.957378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.650288, 13.512969, 18.091152>,  <8.318513, 13.498283, 18.314110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.650288, 13.512969, 18.091152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533452, -0.348095, 0.770882,
		-0.165725, -0.936740, -0.308307,
		0.829436, 0.036713, -0.557394,
		8.899118, 13.523983, 17.923935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.740350, 12.906399, 18.542439>,  <8.318513, 13.498283, 18.314110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.740350, 12.906399, 18.542439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.002510, 13.170390, 18.395536>,  <9.159806, 13.328785, 18.307396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.002510, 13.170390, 18.395536>,  <8.740350, 12.906399, 18.542439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.002510, 13.170390, 18.395536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583479, -0.133674, 0.801051,
		0.479585, -0.739296, -0.472695,
		0.655401, 0.659980, -0.367256,
		9.199130, 13.368384, 18.285360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.400764, 12.630129, 18.757792>,  <8.740350, 12.906399, 18.542439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.400764, 12.630129, 18.757792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.475597, 13.008352, 18.651270>,  <9.520497, 13.235287, 18.587357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.475597, 13.008352, 18.651270>,  <9.400764, 12.630129, 18.757792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.475597, 13.008352, 18.651270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676409, 0.072594, 0.732940,
		0.712370, -0.317251, -0.626004,
		0.187082, 0.945559, -0.266305,
		9.531722, 13.292020, 18.571379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.102736, 12.663294, 18.692722>,  <9.400764, 12.630129, 18.757792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.102736, 12.663294, 18.692722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959157, 13.024512, 18.787096>,  <9.873010, 13.241243, 18.843719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959157, 13.024512, 18.787096>,  <10.102736, 12.663294, 18.692722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.959157, 13.024512, 18.787096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709525, 0.099773, 0.697581,
		0.606408, 0.417796, -0.676547,
		-0.358948, 0.903046, 0.235934,
		9.851473, 13.295426, 18.857876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.676071, 13.080435, 18.715384>,  <10.102736, 12.663294, 18.692722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.676071, 13.080435, 18.715384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.404019, 13.295801, 18.914394>,  <10.240788, 13.425021, 19.033800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.404019, 13.295801, 18.914394>,  <10.676071, 13.080435, 18.715384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.404019, 13.295801, 18.914394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675369, 0.196220, 0.710897,
		0.285134, 0.819515, -0.497085,
		-0.680129, 0.538417, 0.497526,
		10.199981, 13.457326, 19.063652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.003057, 13.703613, 19.034292>,  <10.676071, 13.080435, 18.715384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.003057, 13.703613, 19.034292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.675207, 13.705897, 19.263441>,  <10.478497, 13.707268, 19.400930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.675207, 13.705897, 19.263441>,  <11.003057, 13.703613, 19.034292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.675207, 13.705897, 19.263441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547214, 0.303855, 0.779890,
		-0.169616, 0.952701, -0.252172,
		-0.819626, 0.005710, 0.572871,
		10.429319, 13.707610, 19.435303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.073694, 14.316861, 19.339731>,  <11.003057, 13.703613, 19.034292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.073694, 14.316861, 19.339731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.824348, 14.091099, 19.556198>,  <10.674741, 13.955642, 19.686079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.824348, 14.091099, 19.556198>,  <11.073694, 14.316861, 19.339731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.824348, 14.091099, 19.556198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478830, 0.271613, 0.834834,
		-0.618174, 0.779533, 0.100940,
		-0.623365, -0.564406, 0.541168,
		10.637339, 13.921777, 19.718548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.888916, 14.720116, 19.879379>,  <11.073694, 14.316861, 19.339731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.888916, 14.720116, 19.879379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.753166, 14.376076, 20.031723>,  <10.671717, 14.169652, 20.123129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.753166, 14.376076, 20.031723>,  <10.888916, 14.720116, 19.879379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.753166, 14.376076, 20.031723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381843, 0.244061, 0.891420,
		-0.859663, 0.447953, 0.245595,
		-0.339375, -0.860100, 0.380858,
		10.651354, 14.118046, 20.145981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.586628, 14.889107, 20.544559>,  <10.888916, 14.720116, 19.879379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.586628, 14.889107, 20.544559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638598, 14.493654, 20.574837>,  <10.669781, 14.256383, 20.593004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638598, 14.493654, 20.574837>,  <10.586628, 14.889107, 20.544559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638598, 14.493654, 20.574837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403125, 0.122417, 0.906920,
		-0.905875, -0.087319, 0.414447,
		0.129926, -0.988630, 0.075694,
		10.677576, 14.197065, 20.597546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318134, 14.588752, 21.227127>,  <10.586628, 14.889107, 20.544559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318134, 14.588752, 21.227127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575434, 14.310112, 21.100018>,  <10.729814, 14.142928, 21.023752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575434, 14.310112, 21.100018>,  <10.318134, 14.588752, 21.227127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.575434, 14.310112, 21.100018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250497, -0.200727, 0.947080,
		-0.723521, -0.688809, 0.045379,
		0.643248, -0.696600, -0.317775,
		10.768408, 14.101132, 21.004684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.198658, 14.052414, 21.745314>,  <10.318134, 14.588752, 21.227127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.198658, 14.052414, 21.745314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.542909, 14.008313, 21.546450>,  <10.749459, 13.981853, 21.427132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.542909, 14.008313, 21.546450>,  <10.198658, 14.052414, 21.745314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.542909, 14.008313, 21.546450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494890, -0.049024, 0.867572,
		-0.120028, -0.992693, 0.012373,
		0.860626, -0.110256, -0.497158,
		10.801097, 13.975237, 21.397303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.554255, 13.473926, 22.118690>,  <10.198658, 14.052414, 21.745314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.554255, 13.473926, 22.118690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.808134, 13.710297, 21.919508>,  <10.960462, 13.852119, 21.799997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.808134, 13.710297, 21.919508>,  <10.554255, 13.473926, 22.118690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.808134, 13.710297, 21.919508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469018, 0.217546, 0.855976,
		0.614150, -0.776838, -0.139080,
		0.634699, 0.590929, -0.497957,
		10.998544, 13.887575, 21.770121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.196568, 13.269320, 22.451635>,  <10.554255, 13.473926, 22.118690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.196568, 13.269320, 22.451635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295121, 13.590101, 22.233952>,  <11.354253, 13.782570, 22.103340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295121, 13.590101, 22.233952>,  <11.196568, 13.269320, 22.451635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295121, 13.590101, 22.233952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601783, 0.313570, 0.734528,
		0.759705, -0.508472, -0.405344,
		0.246383, 0.801954, -0.544211,
		11.369036, 13.830688, 22.070688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.897316, 13.207374, 22.394566>,  <11.196568, 13.269320, 22.451635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.897316, 13.207374, 22.394566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813775, 13.591335, 22.319771>,  <11.763651, 13.821712, 22.274895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813775, 13.591335, 22.319771>,  <11.897316, 13.207374, 22.394566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.813775, 13.591335, 22.319771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634208, 0.278488, 0.721266,
		0.744420, 0.032050, -0.666942,
		-0.208852, 0.959905, -0.186985,
		11.751120, 13.879307, 22.263676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527223, 13.510956, 22.349680>,  <11.897316, 13.207374, 22.394566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527223, 13.510956, 22.349680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.292689, 13.832031, 22.393322>,  <12.151969, 14.024676, 22.419508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.292689, 13.832031, 22.393322>,  <12.527223, 13.510956, 22.349680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.292689, 13.832031, 22.393322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597477, 0.337565, 0.727373,
		0.547023, 0.491673, -0.677513,
		-0.586334, 0.802688, 0.109107,
		12.116789, 14.072838, 22.426054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958009, 14.047220, 22.311644>,  <12.527223, 13.510956, 22.349680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.958009, 14.047220, 22.311644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637301, 14.164516, 22.519943>,  <12.444877, 14.234894, 22.644922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637301, 14.164516, 22.519943>,  <12.958009, 14.047220, 22.311644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637301, 14.164516, 22.519943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593206, 0.496362, 0.633822,
		-0.072617, 0.817089, -0.571919,
		-0.801769, 0.293240, 0.520747,
		12.396770, 14.252488, 22.676167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111586, 14.707918, 22.538645>,  <12.958009, 14.047220, 22.311644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.111586, 14.707918, 22.538645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794806, 14.601979, 22.758709>,  <12.604739, 14.538416, 22.890747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794806, 14.601979, 22.758709>,  <13.111586, 14.707918, 22.538645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794806, 14.601979, 22.758709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464807, 0.322789, 0.824477,
		-0.395946, 0.908660, -0.132528,
		-0.791947, -0.264848, 0.550159,
		12.557222, 14.522525, 22.923756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.971102, 15.292243, 23.000397>,  <13.111586, 14.707918, 22.538645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.971102, 15.292243, 23.000397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.835665, 14.949703, 23.156357>,  <12.754402, 14.744180, 23.249933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.835665, 14.949703, 23.156357>,  <12.971102, 15.292243, 23.000397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.835665, 14.949703, 23.156357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457410, 0.212316, 0.863538,
		-0.822272, 0.470732, 0.319813,
		-0.338594, -0.856349, 0.389899,
		12.734087, 14.692799, 23.273327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.419183, 15.424896, 23.502300>,  <12.971102, 15.292243, 23.000397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.419183, 15.424896, 23.502300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571495, 15.069741, 23.605577>,  <12.662883, 14.856648, 23.667543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571495, 15.069741, 23.605577>,  <12.419183, 15.424896, 23.502300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.571495, 15.069741, 23.605577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277850, 0.376192, 0.883900,
		-0.881933, -0.264833, 0.389946,
		0.380781, -0.887887, 0.258193,
		12.685729, 14.803375, 23.683035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.442986, 15.465990, 24.197832>,  <12.419183, 15.424896, 23.502300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.442986, 15.465990, 24.197832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656165, 15.128385, 24.173809>,  <12.784073, 14.925821, 24.159395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656165, 15.128385, 24.173809>,  <12.442986, 15.465990, 24.197832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.656165, 15.128385, 24.173809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415957, 0.199521, 0.887227,
		-0.736848, -0.497829, 0.457407,
		0.532950, -0.844013, -0.060059,
		12.816050, 14.875181, 24.155792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.320745, 14.996873, 24.836700>,  <12.442986, 15.465990, 24.197832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.320745, 14.996873, 24.836700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.680034, 14.923304, 24.677017>,  <12.895607, 14.879162, 24.581207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.680034, 14.923304, 24.677017>,  <12.320745, 14.996873, 24.836700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.680034, 14.923304, 24.677017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432785, 0.211475, 0.876342,
		-0.076757, -0.959922, 0.269551,
		0.898224, -0.183923, -0.399207,
		12.949501, 14.868127, 24.557255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.675033, 14.581440, 25.333086>,  <12.320745, 14.996873, 24.836700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.675033, 14.581440, 25.333086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959782, 14.734225, 25.097343>,  <13.130631, 14.825896, 24.955898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959782, 14.734225, 25.097343>,  <12.675033, 14.581440, 25.333086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959782, 14.734225, 25.097343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607965, 0.084949, 0.789406,
		0.351590, -0.920265, -0.171748,
		0.711873, 0.381964, -0.589356,
		13.173344, 14.848814, 24.920536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.330942, 14.345898, 25.677002>,  <12.675033, 14.581440, 25.333086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.330942, 14.345898, 25.677002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450383, 14.630320, 25.422369>,  <13.522048, 14.800973, 25.269588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450383, 14.630320, 25.422369>,  <13.330942, 14.345898, 25.677002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.450383, 14.630320, 25.422369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552749, 0.414905, 0.722719,
		0.778014, -0.567676, -0.269143,
		0.298602, 0.711054, -0.636584,
		13.539964, 14.843636, 25.231394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016215, 14.405470, 25.785982>,  <13.330942, 14.345898, 25.677002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016215, 14.405470, 25.785982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.906327, 14.748236, 25.611523>,  <13.840394, 14.953896, 25.506847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.906327, 14.748236, 25.611523>,  <14.016215, 14.405470, 25.785982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.906327, 14.748236, 25.611523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546503, 0.512366, 0.662432,
		0.791115, -0.056372, -0.609064,
		-0.274721, 0.856915, -0.436147,
		13.823911, 15.005310, 25.480679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695794, 14.845235, 25.785477>,  <14.016215, 14.405470, 25.785982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695794, 14.845235, 25.785477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.387395, 15.094062, 25.730934>,  <14.202355, 15.243358, 25.698208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.387395, 15.094062, 25.730934>,  <14.695794, 14.845235, 25.785477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.387395, 15.094062, 25.730934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374463, 0.616028, 0.693027,
		0.515110, 0.483262, -0.707898,
		-0.770999, 0.622067, -0.136358,
		14.156096, 15.280682, 25.690027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.987151, 15.354321, 26.061604>,  <14.695794, 14.845235, 25.785477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.987151, 15.354321, 26.061604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603799, 15.468171, 26.052698>,  <14.373788, 15.536482, 26.047356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603799, 15.468171, 26.052698>,  <14.987151, 15.354321, 26.061604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.603799, 15.468171, 26.052698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143651, 0.548140, 0.823958,
		0.246724, 0.786467, -0.566213,
		-0.958380, 0.284627, -0.022263,
		14.316285, 15.553559, 26.046019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
