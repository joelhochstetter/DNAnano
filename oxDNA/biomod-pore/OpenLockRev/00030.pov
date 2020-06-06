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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
	<40.532742, 34.673706, 49.420612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352753, 34.953960, 49.642109>,  <40.244759, 35.122112, 49.775005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352753, 34.953960, 49.642109>,  <40.532742, 34.673706, 49.420612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352753, 34.953960, 49.642109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893041, 0.353446, 0.278485,
		-0.000598, 0.619822, -0.784742,
		-0.449975, 0.700640, 0.553737,
		40.217758, 35.164154, 49.808231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928963, 35.196556, 49.219604>,  <40.532742, 34.673706, 49.420612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928963, 35.196556, 49.219604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741478, 35.272736, 49.564636>,  <40.628986, 35.318443, 49.771656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741478, 35.272736, 49.564636>,  <40.928963, 35.196556, 49.219604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741478, 35.272736, 49.564636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843153, 0.387675, 0.372560,
		-0.263447, 0.901908, -0.342282,
		-0.468709, 0.190447, 0.862578,
		40.600864, 35.329868, 49.823410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222809, 35.923866, 49.355568>,  <40.928963, 35.196556, 49.219604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222809, 35.923866, 49.355568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088818, 35.731426, 49.679626>,  <41.008423, 35.615963, 49.874062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088818, 35.731426, 49.679626>,  <41.222809, 35.923866, 49.355568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088818, 35.731426, 49.679626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868812, 0.175029, 0.463174,
		-0.364632, 0.859014, 0.359357,
		-0.334975, -0.481102, 0.810143,
		40.988323, 35.587097, 49.922668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466808, 36.287144, 49.942074>,  <41.222809, 35.923866, 49.355568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466808, 36.287144, 49.942074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396194, 35.922253, 50.089954>,  <41.353825, 35.703320, 50.178684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396194, 35.922253, 50.089954>,  <41.466808, 36.287144, 49.942074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396194, 35.922253, 50.089954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813504, 0.076226, 0.576542,
		-0.554116, 0.402539, 0.728641,
		-0.176539, -0.912224, 0.369705,
		41.343231, 35.648586, 50.200867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586090, 36.323925, 50.769794>,  <41.466808, 36.287144, 49.942074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586090, 36.323925, 50.769794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608746, 35.937836, 50.667709>,  <41.622337, 35.706181, 50.606457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608746, 35.937836, 50.667709>,  <41.586090, 36.323925, 50.769794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608746, 35.937836, 50.667709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859216, -0.083065, 0.504825,
		-0.508468, -0.247876, 0.824632,
		0.056636, -0.965224, -0.255215,
		41.625736, 35.648270, 50.591145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876911, 35.963791, 51.401497>,  <41.586090, 36.323925, 50.769794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876911, 35.963791, 51.401497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935493, 35.711796, 51.096428>,  <41.970642, 35.560600, 50.913387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935493, 35.711796, 51.096428>,  <41.876911, 35.963791, 51.401497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935493, 35.711796, 51.096428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887112, -0.257499, 0.383050,
		-0.437703, -0.732677, 0.521154,
		0.146455, -0.629984, -0.762674,
		41.979431, 35.522800, 50.867626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094719, 35.285091, 51.684856>,  <41.876911, 35.963791, 51.401497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094719, 35.285091, 51.684856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225964, 35.292740, 51.307079>,  <42.304710, 35.297329, 51.080414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225964, 35.292740, 51.307079>,  <42.094719, 35.285091, 51.684856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225964, 35.292740, 51.307079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921588, -0.225995, 0.315598,
		-0.207406, -0.973941, -0.091771,
		0.328114, 0.019118, -0.944445,
		42.324398, 35.298473, 51.023746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540676, 34.748722, 51.697823>,  <42.094719, 35.285091, 51.684856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540676, 34.748722, 51.697823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665588, 34.919502, 51.358364>,  <42.740536, 35.021969, 51.154690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665588, 34.919502, 51.358364>,  <42.540676, 34.748722, 51.697823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665588, 34.919502, 51.358364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941617, -0.020775, 0.336044,
		0.125843, -0.904037, -0.408510,
		0.312283, 0.426949, -0.848642,
		42.759274, 35.047588, 51.103771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108212, 34.364868, 51.521736>,  <42.540676, 34.748722, 51.697823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108212, 34.364868, 51.521736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131020, 34.712906, 51.325905>,  <43.144703, 34.921726, 51.208405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131020, 34.712906, 51.325905>,  <43.108212, 34.364868, 51.521736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131020, 34.712906, 51.325905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964705, 0.078261, 0.251434,
		0.257086, -0.486637, -0.834920,
		0.057016, 0.870092, -0.489581,
		43.148125, 34.973934, 51.179031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739483, 34.296597, 51.178196>,  <43.108212, 34.364868, 51.521736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739483, 34.296597, 51.178196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665672, 34.686230, 51.230511>,  <43.621384, 34.920010, 51.261898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665672, 34.686230, 51.230511>,  <43.739483, 34.296597, 51.178196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665672, 34.686230, 51.230511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929641, 0.129809, 0.344845,
		0.318932, 0.185216, -0.929504,
		-0.184529, 0.974087, 0.130784,
		43.610313, 34.978455, 51.269745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313202, 34.614346, 50.819332>,  <43.739483, 34.296597, 51.178196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313202, 34.614346, 50.819332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171040, 34.899326, 51.061359>,  <44.085743, 35.070312, 51.206577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171040, 34.899326, 51.061359>,  <44.313202, 34.614346, 50.819332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171040, 34.899326, 51.061359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902557, 0.093244, 0.420352,
		0.243060, 0.695503, -0.676164,
		-0.355404, 0.712447, 0.605067,
		44.064419, 35.113060, 51.242878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752003, 35.214886, 50.805416>,  <44.313202, 34.614346, 50.819332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752003, 35.214886, 50.805416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569195, 35.237255, 51.160496>,  <44.459511, 35.250675, 51.373543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569195, 35.237255, 51.160496>,  <44.752003, 35.214886, 50.805416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569195, 35.237255, 51.160496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877132, 0.193916, 0.439360,
		-0.147570, 0.979423, -0.137672,
		-0.457016, 0.055920, 0.887699,
		44.432091, 35.254032, 51.426804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991116, 35.735706, 51.043407>,  <44.752003, 35.214886, 50.805416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991116, 35.735706, 51.043407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865379, 35.544678, 51.371582>,  <44.789936, 35.430061, 51.568485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865379, 35.544678, 51.371582>,  <44.991116, 35.735706, 51.043407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865379, 35.544678, 51.371582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843664, 0.255686, 0.472076,
		-0.435223, 0.840566, 0.322536,
		-0.314343, -0.477571, 0.820436,
		44.771076, 35.401405, 51.617714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110668, 36.272469, 51.520271>,  <44.991116, 35.735706, 51.043407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110668, 36.272469, 51.520271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077866, 35.915756, 51.698257>,  <45.058182, 35.701729, 51.805050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077866, 35.915756, 51.698257>,  <45.110668, 36.272469, 51.520271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077866, 35.915756, 51.698257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909378, 0.115732, 0.399548,
		-0.407807, 0.437410, 0.801477,
		-0.082010, -0.891784, 0.444967,
		45.053261, 35.648220, 51.831749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217003, 36.342251, 52.281460>,  <45.110668, 36.272469, 51.520271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217003, 36.342251, 52.281460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267124, 35.947559, 52.240139>,  <45.297199, 35.710747, 52.215347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267124, 35.947559, 52.240139>,  <45.217003, 36.342251, 52.281460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267124, 35.947559, 52.240139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929927, 0.080528, 0.358820,
		-0.345738, -0.141028, 0.927673,
		0.125308, -0.986725, -0.103304,
		45.304718, 35.651543, 52.209148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715031, 36.188614, 52.746487>,  <45.217003, 36.342251, 52.281460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715031, 36.188614, 52.746487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713638, 35.855759, 52.524662>,  <45.712803, 35.656044, 52.391567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713638, 35.855759, 52.524662>,  <45.715031, 36.188614, 52.746487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713638, 35.855759, 52.524662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898278, -0.246286, 0.363921,
		-0.439413, -0.496881, 0.748349,
		-0.003482, -0.832138, -0.554558,
		45.712593, 35.606117, 52.358295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060276, 35.658600, 53.157574>,  <45.715031, 36.188614, 52.746487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.060276, 35.658600, 53.157574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084419, 35.566299, 52.769119>,  <46.098907, 35.510918, 52.536045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084419, 35.566299, 52.769119>,  <46.060276, 35.658600, 53.157574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084419, 35.566299, 52.769119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909947, -0.387202, 0.148563,
		-0.410308, -0.892652, 0.186601,
		0.060362, -0.230754, -0.971138,
		46.102528, 35.497074, 52.477779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.480846, 35.152206, 53.180145>,  <46.060276, 35.658600, 53.157574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.480846, 35.152206, 53.180145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470757, 35.239571, 52.789932>,  <46.464703, 35.291988, 52.555805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470757, 35.239571, 52.789932>,  <46.480846, 35.152206, 53.180145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470757, 35.239571, 52.789932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970463, -0.228855, -0.076331,
		-0.239926, -0.948642, -0.206189,
		-0.025223, 0.218413, -0.975530,
		46.463188, 35.305096, 52.497272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802517, 34.612045, 52.763363>,  <46.480846, 35.152206, 53.180145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802517, 34.612045, 52.763363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841671, 34.940514, 52.538471>,  <46.865162, 35.137592, 52.403534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841671, 34.940514, 52.538471>,  <46.802517, 34.612045, 52.763363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841671, 34.940514, 52.538471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995111, -0.088210, 0.044415,
		-0.013122, -0.563830, -0.825786,
		0.097886, 0.821167, -0.562231,
		46.871037, 35.186863, 52.369801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316975, 34.450939, 52.234318>,  <46.802517, 34.612045, 52.763363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316975, 34.450939, 52.234318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296604, 34.849804, 52.256535>,  <47.284382, 35.089123, 52.269863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296604, 34.849804, 52.256535>,  <47.316975, 34.450939, 52.234318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.296604, 34.849804, 52.256535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998608, 0.050076, 0.016551,
		0.013723, 0.056303, -0.998319,
		-0.050923, 0.997157, 0.055538,
		47.281326, 35.148952, 52.273197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.764679, 34.623772, 51.744125>,  <47.316975, 34.450939, 52.234318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.764679, 34.623772, 51.744125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734566, 34.935993, 51.992340>,  <47.716499, 35.123325, 52.141270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734566, 34.935993, 51.992340>,  <47.764679, 34.623772, 51.744125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734566, 34.935993, 51.992340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947260, -0.138417, 0.289032,
		0.311499, 0.609568, -0.728969,
		-0.075283, 0.780556, 0.620536,
		47.711983, 35.170158, 52.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<23.963737, 34.815075, 51.528751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.236568, 35.006012, 51.750351>,  <24.400267, 35.120575, 51.883312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.236568, 35.006012, 51.750351>,  <23.963737, 34.815075, 51.528751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236568, 35.006012, 51.750351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720067, -0.306233, -0.622676,
		-0.127577, 0.823630, -0.552592,
		0.682076, 0.477342, 0.554000,
		24.441191, 35.149216, 51.916550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.461155, 35.181068, 51.014912>,  <23.963737, 34.815075, 51.528751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.461155, 35.181068, 51.014912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.663446, 35.150303, 51.358616>,  <24.784821, 35.131844, 51.564838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.663446, 35.150303, 51.358616>,  <24.461155, 35.181068, 51.014912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663446, 35.150303, 51.358616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852837, -0.105547, -0.511399,
		0.130026, 0.991435, 0.012216,
		0.505729, -0.076913, 0.859257,
		24.815165, 35.127228, 51.616394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007137, 35.684479, 51.002712>,  <24.461155, 35.181068, 51.014912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007137, 35.684479, 51.002712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.130661, 35.437386, 51.292000>,  <25.204775, 35.289131, 51.465572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.130661, 35.437386, 51.292000>,  <25.007137, 35.684479, 51.002712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130661, 35.437386, 51.292000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878270, -0.106655, -0.466118,
		0.365071, 0.779121, 0.509601,
		0.308811, -0.617734, 0.723216,
		25.223305, 35.252064, 51.508965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730171, 35.924725, 51.125305>,  <25.007137, 35.684479, 51.002712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730171, 35.924725, 51.125305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.707964, 35.551682, 51.267941>,  <25.694639, 35.327854, 51.353519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.707964, 35.551682, 51.267941>,  <25.730171, 35.924725, 51.125305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707964, 35.551682, 51.267941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895145, -0.204700, -0.395998,
		0.442305, 0.297209, 0.846188,
		-0.055520, -0.932612, 0.356584,
		25.691307, 35.271896, 51.374916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306229, 35.881821, 51.368187>,  <25.730171, 35.924725, 51.125305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306229, 35.881821, 51.368187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.209332, 35.496445, 51.413979>,  <26.151194, 35.265221, 51.441452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.209332, 35.496445, 51.413979>,  <26.306229, 35.881821, 51.368187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209332, 35.496445, 51.413979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952814, -0.258481, -0.159163,
		0.182934, 0.070519, 0.980593,
		-0.242241, -0.963439, 0.114476,
		26.136660, 35.207413, 51.448322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668497, 35.576286, 52.008778>,  <26.306229, 35.881821, 51.368187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668497, 35.576286, 52.008778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.581223, 35.272903, 51.763130>,  <26.528858, 35.090874, 51.615742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.581223, 35.272903, 51.763130>,  <26.668497, 35.576286, 52.008778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581223, 35.272903, 51.763130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975745, -0.181027, -0.123092,
		-0.017813, -0.626079, 0.779556,
		-0.218186, -0.758455, -0.614118,
		26.515766, 35.045368, 51.578896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069523, 34.956108, 52.213070>,  <26.668497, 35.576286, 52.008778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069523, 34.956108, 52.213070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.003109, 34.951607, 51.818649>,  <26.963261, 34.948906, 51.581997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.003109, 34.951607, 51.818649>,  <27.069523, 34.956108, 52.213070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003109, 34.951607, 51.818649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982692, -0.085189, -0.164496,
		-0.082150, -0.996301, 0.025203,
		-0.166035, -0.011254, -0.986056,
		26.953299, 34.948231, 51.522831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606207, 34.411873, 52.009201>,  <27.069523, 34.956108, 52.213070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606207, 34.411873, 52.009201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.481447, 34.594921, 51.676140>,  <27.406591, 34.704750, 51.476303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.481447, 34.594921, 51.676140>,  <27.606207, 34.411873, 52.009201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481447, 34.594921, 51.676140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895408, -0.151511, -0.418676,
		-0.317749, -0.876144, -0.362500,
		-0.311898, 0.457619, -0.832649,
		27.387878, 34.732208, 51.426346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750198, 33.963699, 51.479839>,  <27.606207, 34.411873, 52.009201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750198, 33.963699, 51.479839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.723400, 34.326622, 51.313801>,  <27.707321, 34.544376, 51.214180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.723400, 34.326622, 51.313801>,  <27.750198, 33.963699, 51.479839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723400, 34.326622, 51.313801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901874, -0.122881, -0.414154,
		-0.426773, -0.402108, -0.810046,
		-0.066995, 0.907309, -0.415093,
		27.703302, 34.598816, 51.189274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165577, 33.894360, 50.936428>,  <27.750198, 33.963699, 51.479839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165577, 33.894360, 50.936428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.101471, 34.288559, 50.914097>,  <28.063007, 34.525078, 50.900700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.101471, 34.288559, 50.914097>,  <28.165577, 33.894360, 50.936428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101471, 34.288559, 50.914097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861827, 0.112131, -0.494653,
		-0.481217, -0.127389, -0.867296,
		-0.160264, 0.985494, -0.055828,
		28.053392, 34.584206, 50.897350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303162, 34.146557, 50.221809>,  <28.165577, 33.894360, 50.936428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303162, 34.146557, 50.221809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.338634, 34.488255, 50.426708>,  <28.359919, 34.693275, 50.549648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.338634, 34.488255, 50.426708>,  <28.303162, 34.146557, 50.221809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338634, 34.488255, 50.426708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811817, 0.235992, -0.534099,
		-0.577139, 0.463217, -0.672563,
		0.088684, 0.854247, 0.512247,
		28.365240, 34.744530, 50.580383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543596, 34.721645, 49.717026>,  <28.303162, 34.146557, 50.221809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543596, 34.721645, 49.717026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.621082, 34.834084, 50.092995>,  <28.667574, 34.901546, 50.318577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.621082, 34.834084, 50.092995>,  <28.543596, 34.721645, 49.717026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621082, 34.834084, 50.092995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910030, 0.306426, -0.279193,
		-0.366497, 0.909445, -0.196442,
		0.193716, 0.281092, 0.939926,
		28.679197, 34.918411, 50.374973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937593, 35.318409, 49.603714>,  <28.543596, 34.721645, 49.717026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937593, 35.318409, 49.603714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.006184, 35.231812, 49.988155>,  <29.047338, 35.179852, 50.218822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.006184, 35.231812, 49.988155>,  <28.937593, 35.318409, 49.603714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006184, 35.231812, 49.988155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975093, 0.176595, -0.134194,
		-0.140675, 0.960180, 0.241382,
		0.171477, -0.216492, 0.961107,
		29.057627, 35.166862, 50.276489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317404, 35.953728, 49.920193>,  <28.937593, 35.318409, 49.603714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317404, 35.953728, 49.920193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.411310, 35.642498, 50.153255>,  <29.467653, 35.455761, 50.293095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.411310, 35.642498, 50.153255>,  <29.317404, 35.953728, 49.920193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411310, 35.642498, 50.153255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971559, 0.206907, -0.115163,
		-0.030951, 0.593122, 0.804517,
		0.234765, -0.778072, 0.582657,
		29.481739, 35.409077, 50.328053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816198, 36.203545, 50.269833>,  <29.317404, 35.953728, 49.920193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816198, 36.203545, 50.269833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.870205, 35.808361, 50.300072>,  <29.902609, 35.571251, 50.318214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.870205, 35.808361, 50.300072>,  <29.816198, 36.203545, 50.269833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870205, 35.808361, 50.300072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965265, 0.113923, -0.235127,
		0.223682, 0.104719, 0.969020,
		0.135016, -0.987955, 0.075599,
		29.910709, 35.511974, 50.322750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392258, 36.227760, 50.572521>,  <29.816198, 36.203545, 50.269833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392258, 36.227760, 50.572521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.385178, 35.851467, 50.437042>,  <30.380930, 35.625690, 50.355755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.385178, 35.851467, 50.437042>,  <30.392258, 36.227760, 50.572521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385178, 35.851467, 50.437042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928460, 0.110236, -0.354697,
		0.371011, -0.320744, 0.871478,
		-0.017699, -0.940729, -0.338697,
		30.379868, 35.569248, 50.335434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951134, 35.875526, 50.801659>,  <30.392258, 36.227760, 50.572521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951134, 35.875526, 50.801659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.836784, 35.647339, 50.493671>,  <30.768175, 35.510426, 50.308880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.836784, 35.647339, 50.493671>,  <30.951134, 35.875526, 50.801659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836784, 35.647339, 50.493671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928791, 0.032805, -0.369147,
		0.235845, -0.820665, 0.520467,
		-0.285872, -0.570467, -0.769964,
		30.751022, 35.476200, 50.262684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376612, 35.203487, 50.784584>,  <30.951134, 35.875526, 50.801659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376612, 35.203487, 50.784584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.252342, 35.280514, 50.412262>,  <31.177780, 35.326729, 50.188869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.252342, 35.280514, 50.412262>,  <31.376612, 35.203487, 50.784584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252342, 35.280514, 50.412262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920796, -0.181992, -0.344985,
		-0.235832, -0.964260, -0.120775,
		-0.310675, 0.192568, -0.930805,
		31.159140, 35.338284, 50.133018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954285, 34.881603, 50.416451>,  <31.376612, 35.203487, 50.784584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954285, 34.881603, 50.416451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.746265, 35.033512, 50.110424>,  <31.621454, 35.124657, 49.926807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.746265, 35.033512, 50.110424>,  <31.954285, 34.881603, 50.416451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746265, 35.033512, 50.110424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836110, 0.043289, -0.546851,
		-0.174563, -0.924065, -0.340047,
		-0.520046, 0.379777, -0.765063,
		31.590252, 35.147446, 49.880905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066994, 34.544632, 49.742126>,  <31.954285, 34.881603, 50.416451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066994, 34.544632, 49.742126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.002117, 34.934120, 49.678177>,  <31.963192, 35.167812, 49.639809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.002117, 34.934120, 49.678177>,  <32.066994, 34.544632, 49.742126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002117, 34.934120, 49.678177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930194, 0.096802, -0.354074,
		-0.329294, -0.206138, -0.921451,
		-0.162187, 0.973723, -0.159872,
		31.953461, 35.226238, 49.630215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351479, 34.642204, 49.119831>,  <32.066994, 34.544632, 49.742126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351479, 34.642204, 49.119831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.332748, 35.013325, 49.267879>,  <32.321510, 35.235996, 49.356709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.332748, 35.013325, 49.267879>,  <32.351479, 34.642204, 49.119831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332748, 35.013325, 49.267879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964863, 0.137916, -0.223648,
		-0.258547, 0.346644, -0.901660,
		-0.046827, 0.927802, 0.370122,
		32.318699, 35.291664, 49.378918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.868982, 35.107204, 35.234959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.225664, 34.956764, 35.134232>,  <24.439674, 34.866501, 35.073795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.225664, 34.956764, 35.134232>,  <23.868982, 35.107204, 35.234959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225664, 34.956764, 35.134232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256408, -0.038712, 0.965793,
		-0.372983, -0.925770, 0.061915,
		0.891706, -0.376100, -0.251814,
		24.493176, 34.843933, 35.058689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.073614, 34.522514, 35.778599>,  <23.868982, 35.107204, 35.234959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.073614, 34.522514, 35.778599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.403633, 34.626957, 35.578152>,  <24.601645, 34.689621, 35.457882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.403633, 34.626957, 35.578152>,  <24.073614, 34.522514, 35.778599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403633, 34.626957, 35.578152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558205, -0.238872, 0.794574,
		0.087765, -0.935288, -0.342831,
		0.825048, 0.261105, -0.501118,
		24.651148, 34.705288, 35.427814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562817, 34.130825, 36.056026>,  <24.073614, 34.522514, 35.778599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562817, 34.130825, 36.056026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.798023, 34.401134, 35.878235>,  <24.939148, 34.563320, 35.771561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.798023, 34.401134, 35.878235>,  <24.562817, 34.130825, 36.056026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798023, 34.401134, 35.878235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730989, -0.208742, 0.649678,
		0.346254, -0.706933, -0.616728,
		0.588016, 0.675775, -0.444483,
		24.974428, 34.603867, 35.744888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116089, 33.839352, 36.039253>,  <24.562817, 34.130825, 36.056026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116089, 33.839352, 36.039253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.225540, 34.223560, 36.059391>,  <25.291210, 34.454086, 36.071476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.225540, 34.223560, 36.059391>,  <25.116089, 33.839352, 36.039253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225540, 34.223560, 36.059391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439521, -0.171425, 0.881723,
		0.855541, -0.219134, -0.469074,
		0.273626, 0.960517, 0.050347,
		25.307629, 34.511715, 36.074493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811981, 33.961937, 36.158173>,  <25.116089, 33.839352, 36.039253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811981, 33.961937, 36.158173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.623156, 34.273552, 36.323223>,  <25.509861, 34.460522, 36.422253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.623156, 34.273552, 36.323223>,  <25.811981, 33.961937, 36.158173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623156, 34.273552, 36.323223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570830, -0.086565, 0.816492,
		0.671796, 0.620974, -0.403833,
		-0.472062, 0.779037, 0.412625,
		25.481537, 34.507263, 36.447010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240923, 34.502266, 36.281811>,  <25.811981, 33.961937, 36.158173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240923, 34.502266, 36.281811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.930517, 34.516373, 36.533703>,  <25.744274, 34.524837, 36.684837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.930517, 34.516373, 36.533703>,  <26.240923, 34.502266, 36.281811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930517, 34.516373, 36.533703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602021, -0.256298, 0.756229,
		0.188071, 0.965954, 0.177657,
		-0.776015, 0.035272, 0.629727,
		25.697712, 34.526955, 36.722622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393555, 34.988480, 36.852451>,  <26.240923, 34.502266, 36.281811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393555, 34.988480, 36.852451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.141127, 34.712837, 36.994930>,  <25.989670, 34.547451, 37.080418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.141127, 34.712837, 36.994930>,  <26.393555, 34.988480, 36.852451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141127, 34.712837, 36.994930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629707, -0.186930, 0.754007,
		-0.453010, 0.700132, 0.551904,
		-0.631072, -0.689110, 0.356197,
		25.951805, 34.506104, 37.101788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292080, 35.116421, 37.482143>,  <26.393555, 34.988480, 36.852451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292080, 35.116421, 37.482143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.237000, 34.722694, 37.438026>,  <26.203951, 34.486458, 37.411556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.237000, 34.722694, 37.438026>,  <26.292080, 35.116421, 37.482143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237000, 34.722694, 37.438026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615062, -0.172259, 0.769432,
		-0.776362, 0.038116, 0.629134,
		-0.137702, -0.984314, -0.110291,
		26.195688, 34.427399, 37.404938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731321, 34.759285, 37.898991>,  <26.292080, 35.116421, 37.482143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731321, 34.759285, 37.898991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.058588, 34.554142, 37.795006>,  <26.254948, 34.431057, 37.732613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.058588, 34.554142, 37.795006>,  <25.731321, 34.759285, 37.898991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058588, 34.554142, 37.795006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237661, -0.110059, 0.965093,
		-0.523564, -0.851391, 0.031839,
		0.818168, -0.512854, -0.259965,
		26.304039, 34.400288, 37.717018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777889, 33.997070, 38.034805>,  <25.731321, 34.759285, 37.898991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777889, 33.997070, 38.034805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.132935, 34.180588, 38.051052>,  <26.345963, 34.290699, 38.060802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.132935, 34.180588, 38.051052>,  <25.777889, 33.997070, 38.034805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132935, 34.180588, 38.051052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003976, -0.080558, 0.996742,
		0.460571, -0.884883, -0.069680,
		0.887614, 0.458794, 0.040621,
		26.399220, 34.318226, 38.063240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032120, 33.763882, 38.632378>,  <25.777889, 33.997070, 38.034805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032120, 33.763882, 38.632378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.257504, 34.085896, 38.558147>,  <26.392733, 34.279102, 38.513611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.257504, 34.085896, 38.558147>,  <26.032120, 33.763882, 38.632378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257504, 34.085896, 38.558147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032133, 0.203101, 0.978630,
		0.825519, -0.557380, 0.088571,
		0.563458, 0.805032, -0.185574,
		26.426540, 34.327404, 38.502476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529186, 33.810848, 39.154346>,  <26.032120, 33.763882, 38.632378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529186, 33.810848, 39.154346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.451252, 34.180531, 39.022964>,  <26.404491, 34.402340, 38.944134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.451252, 34.180531, 39.022964>,  <26.529186, 33.810848, 39.154346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451252, 34.180531, 39.022964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029609, 0.340262, 0.939864,
		0.980389, 0.173394, -0.093660,
		-0.194836, 0.924206, -0.328455,
		26.392801, 34.457790, 38.924427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103121, 34.359303, 39.377953>,  <26.529186, 33.810848, 39.154346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103121, 34.359303, 39.377953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.746832, 34.535461, 39.332939>,  <26.533058, 34.641155, 39.305931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.746832, 34.535461, 39.332939>,  <27.103121, 34.359303, 39.377953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746832, 34.535461, 39.332939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191449, 0.588026, 0.785858,
		0.412261, 0.678437, -0.608082,
		-0.890723, 0.440395, -0.112534,
		26.479614, 34.667580, 39.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156839, 35.054150, 39.197235>,  <27.103121, 34.359303, 39.377953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156839, 35.054150, 39.197235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.838989, 34.947575, 39.415440>,  <26.648279, 34.883629, 39.546360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.838989, 34.947575, 39.415440>,  <27.156839, 35.054150, 39.197235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838989, 34.947575, 39.415440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311272, 0.592646, 0.742886,
		-0.521228, 0.760118, -0.387997,
		-0.794626, -0.266440, 0.545507,
		26.600601, 34.867641, 39.579090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829954, 35.719055, 39.419487>,  <27.156839, 35.054150, 39.197235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829954, 35.719055, 39.419487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.773932, 35.404255, 39.659824>,  <26.740318, 35.215374, 39.804028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.773932, 35.404255, 39.659824>,  <26.829954, 35.719055, 39.419487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773932, 35.404255, 39.659824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480720, 0.476462, 0.736133,
		-0.865617, 0.391939, 0.311595,
		-0.140056, -0.786999, 0.600847,
		26.731915, 35.168156, 39.840076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320412, 35.807838, 40.096611>,  <26.829954, 35.719055, 39.419487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320412, 35.807838, 40.096611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.620995, 35.548214, 40.143990>,  <26.801344, 35.392441, 40.172417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.620995, 35.548214, 40.143990>,  <26.320412, 35.807838, 40.096611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620995, 35.548214, 40.143990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372298, 0.565350, 0.736052,
		-0.544705, -0.509017, 0.666482,
		0.751459, -0.649061, 0.118443,
		26.846432, 35.353497, 40.179523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512886, 35.651009, 40.929092>,  <26.320412, 35.807838, 40.096611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512886, 35.651009, 40.929092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.819044, 35.569550, 40.684898>,  <27.002739, 35.520676, 40.538380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.819044, 35.569550, 40.684898>,  <26.512886, 35.651009, 40.929092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819044, 35.569550, 40.684898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633179, 0.407974, 0.657755,
		0.115116, -0.889993, 0.441205,
		0.765397, -0.203644, -0.610489,
		27.048664, 35.508457, 40.501751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073948, 35.289124, 41.257175>,  <26.512886, 35.651009, 40.929092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073948, 35.289124, 41.257175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209871, 35.540810, 40.977570>,  <27.291426, 35.691822, 40.809807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209871, 35.540810, 40.977570>,  <27.073948, 35.289124, 41.257175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209871, 35.540810, 40.977570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566136, 0.456648, 0.686267,
		0.751012, -0.628936, -0.201048,
		0.339810, 0.629216, -0.699011,
		27.311813, 35.729576, 40.767868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831125, 35.449177, 41.469204>,  <27.073948, 35.289124, 41.257175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831125, 35.449177, 41.469204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.660997, 35.735901, 41.248192>,  <27.558922, 35.907936, 41.115585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.660997, 35.735901, 41.248192>,  <27.831125, 35.449177, 41.469204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660997, 35.735901, 41.248192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419910, 0.697102, 0.581140,
		0.801736, 0.015158, -0.597487,
		-0.425318, 0.716811, -0.552527,
		27.533401, 35.950943, 41.082436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335493, 36.001961, 41.062733>,  <27.831125, 35.449177, 41.469204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335493, 36.001961, 41.062733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.975306, 36.121651, 41.188984>,  <27.759193, 36.193462, 41.264732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.975306, 36.121651, 41.188984>,  <28.335493, 36.001961, 41.062733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975306, 36.121651, 41.188984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434882, 0.610282, 0.662143,
		0.005508, 0.733500, -0.679668,
		-0.900471, 0.299222, 0.315624,
		27.705164, 36.211418, 41.283672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142740, 36.747444, 40.983208>,  <28.335493, 36.001961, 41.062733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142740, 36.747444, 40.983208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.025433, 36.541916, 41.305691>,  <27.955048, 36.418598, 41.499180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.025433, 36.541916, 41.305691>,  <28.142740, 36.747444, 40.983208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025433, 36.541916, 41.305691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470491, 0.656534, 0.589577,
		-0.832245, 0.552220, 0.049208,
		-0.293270, -0.513824, 0.806212,
		27.937452, 36.387768, 41.547554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729769, 37.032257, 41.601471>,  <28.142740, 36.747444, 40.983208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729769, 37.032257, 41.601471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.955772, 36.727650, 41.728497>,  <28.091375, 36.544884, 41.804714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.955772, 36.727650, 41.728497>,  <27.729769, 37.032257, 41.601471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955772, 36.727650, 41.728497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533045, 0.630690, 0.563998,
		-0.629783, -0.149387, 0.762271,
		0.565011, -0.761521, 0.317568,
		28.125277, 36.499195, 41.823769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824318, 37.734547, 41.098145>,  <27.729769, 37.032257, 41.601471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824318, 37.734547, 41.098145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.146912, 37.849834, 41.304646>,  <28.340467, 37.919006, 41.428547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.146912, 37.849834, 41.304646>,  <27.824318, 37.734547, 41.098145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146912, 37.849834, 41.304646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396393, 0.911419, 0.110398,
		-0.438702, -0.293673, 0.849292,
		0.806482, 0.288222, 0.516251,
		28.388857, 37.936302, 41.459522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575039, 38.097870, 41.644600>,  <27.824318, 37.734547, 41.098145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575039, 38.097870, 41.644600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.948696, 38.235432, 41.606430>,  <28.172890, 38.317970, 41.583530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.948696, 38.235432, 41.606430>,  <27.575039, 38.097870, 41.644600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948696, 38.235432, 41.606430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347228, 0.937564, -0.020171,
		0.082526, 0.051976, 0.995233,
		0.934142, 0.343908, -0.095421,
		28.228939, 38.338604, 41.577805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926161, 37.646172, 42.148228>,  <27.575039, 38.097870, 41.644600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926161, 37.646172, 42.148228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.667919, 37.711182, 42.446697>,  <27.512974, 37.750187, 42.625778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.667919, 37.711182, 42.446697>,  <27.926161, 37.646172, 42.148228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667919, 37.711182, 42.446697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741923, 0.365006, 0.562424,
		-0.180950, 0.916709, -0.356232,
		-0.645606, 0.162526, 0.746176,
		27.474237, 37.759941, 42.670551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800373, 38.370274, 42.264858>,  <27.926161, 37.646172, 42.148228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800373, 38.370274, 42.264858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.827415, 38.108215, 42.565849>,  <27.843641, 37.950981, 42.746445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.827415, 38.108215, 42.565849>,  <27.800373, 38.370274, 42.264858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827415, 38.108215, 42.565849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792301, 0.493630, 0.358593,
		-0.606373, 0.571944, 0.552441,
		0.067606, -0.655141, 0.752476,
		27.847698, 37.911674, 42.791592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364767, 38.648918, 42.617275>,  <27.800373, 38.370274, 42.264858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364767, 38.648918, 42.617275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.306284, 38.313133, 42.826630>,  <28.271194, 38.111664, 42.952244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.306284, 38.313133, 42.826630>,  <28.364767, 38.648918, 42.617275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306284, 38.313133, 42.826630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809512, 0.202576, 0.551047,
		-0.568607, 0.504256, 0.649933,
		-0.146208, -0.839458, 0.523387,
		28.262421, 38.061295, 42.983646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483887, 38.773090, 43.448524>,  <28.364767, 38.648918, 42.617275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483887, 38.773090, 43.448524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.565260, 38.388546, 43.374340>,  <28.614084, 38.157818, 43.329830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.565260, 38.388546, 43.374340>,  <28.483887, 38.773090, 43.448524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565260, 38.388546, 43.374340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822168, 0.064878, 0.565535,
		-0.531651, -0.267533, 0.803600,
		0.203435, -0.961362, -0.185464,
		28.626291, 38.100136, 43.318699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682817, 38.483570, 44.079060>,  <28.483887, 38.773090, 43.448524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682817, 38.483570, 44.079060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.847506, 38.275410, 43.779816>,  <28.946318, 38.150513, 43.600269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.847506, 38.275410, 43.779816>,  <28.682817, 38.483570, 44.079060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847506, 38.275410, 43.779816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907202, 0.156176, 0.390633,
		-0.086447, -0.839520, 0.536407,
		0.411718, -0.520399, -0.748113,
		28.971022, 38.119289, 43.555382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165333, 37.892414, 44.155552>,  <28.682817, 38.483570, 44.079060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165333, 37.892414, 44.155552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550867, 37.875107, 44.050365>,  <29.782188, 37.864723, 43.987255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550867, 37.875107, 44.050365>,  <29.165333, 37.892414, 44.155552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550867, 37.875107, 44.050365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247656, -0.219005, 0.943771,
		-0.098428, -0.974764, -0.200368,
		0.963835, -0.043271, -0.262963,
		29.840017, 37.862125, 43.971478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382133, 37.227360, 44.389599>,  <29.165333, 37.892414, 44.155552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382133, 37.227360, 44.389599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.640345, 37.532829, 44.385590>,  <29.795271, 37.716110, 44.383183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.640345, 37.532829, 44.385590>,  <29.382133, 37.227360, 44.389599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640345, 37.532829, 44.385590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256888, -0.204751, 0.944503,
		0.719236, -0.612279, -0.328350,
		0.645529, 0.763670, -0.010023,
		29.834003, 37.761929, 44.382584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083332, 36.997173, 44.640408>,  <29.382133, 37.227360, 44.389599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083332, 36.997173, 44.640408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050716, 37.390522, 44.705322>,  <30.031147, 37.626530, 44.744270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050716, 37.390522, 44.705322>,  <30.083332, 36.997173, 44.640408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050716, 37.390522, 44.705322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447767, -0.109329, 0.887441,
		0.890425, 0.145028, -0.431406,
		-0.081539, 0.983369, 0.162288,
		30.026255, 37.685532, 44.754009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794331, 37.160915, 44.830914>,  <30.083332, 36.997173, 44.640408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794331, 37.160915, 44.830914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.505989, 37.376133, 45.005669>,  <30.332983, 37.505264, 45.110523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.505989, 37.376133, 45.005669>,  <30.794331, 37.160915, 44.830914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505989, 37.376133, 45.005669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362443, -0.244658, 0.899320,
		0.590765, 0.806628, -0.018648,
		-0.720855, 0.538046, 0.436892,
		30.289732, 37.537548, 45.136738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964838, 37.721447, 45.179600>,  <30.794331, 37.160915, 44.830914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964838, 37.721447, 45.179600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640715, 37.577095, 45.364277>,  <30.446241, 37.490482, 45.475082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640715, 37.577095, 45.364277>,  <30.964838, 37.721447, 45.179600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640715, 37.577095, 45.364277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568300, -0.291742, 0.769364,
		-0.142954, 0.885805, 0.441491,
		-0.810308, -0.360883, 0.461697,
		30.397623, 37.468830, 45.502785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938194, 38.086315, 45.736973>,  <30.964838, 37.721447, 45.179600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938194, 38.086315, 45.736973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.763508, 37.729450, 45.783142>,  <30.658695, 37.515331, 45.810844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.763508, 37.729450, 45.783142>,  <30.938194, 38.086315, 45.736973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763508, 37.729450, 45.783142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573722, -0.177388, 0.799610,
		-0.692907, 0.415426, 0.589322,
		-0.436717, -0.892163, 0.115425,
		30.632492, 37.461800, 45.817768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749474, 38.059078, 46.380840>,  <30.938194, 38.086315, 45.736973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749474, 38.059078, 46.380840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804089, 37.685524, 46.248653>,  <30.836859, 37.461391, 46.169342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804089, 37.685524, 46.248653>,  <30.749474, 38.059078, 46.380840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804089, 37.685524, 46.248653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824349, -0.077883, 0.560698,
		-0.549368, -0.348976, 0.759217,
		0.136540, -0.933890, -0.330465,
		30.845051, 37.405357, 46.149513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200022, 37.822422, 46.851791>,  <30.749474, 38.059078, 46.380840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200022, 37.822422, 46.851791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.185266, 37.547169, 46.561932>,  <31.176413, 37.382015, 46.388016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.185266, 37.547169, 46.561932>,  <31.200022, 37.822422, 46.851791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185266, 37.547169, 46.561932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860096, -0.391062, 0.327575,
		-0.508797, -0.611180, 0.606287,
		-0.036888, -0.688135, -0.724645,
		31.174200, 37.340729, 46.344540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882828, 37.682106, 46.677635>,  <31.200022, 37.822422, 46.851791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882828, 37.682106, 46.677635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710838, 37.325111, 46.623085>,  <31.607645, 37.110916, 46.590355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710838, 37.325111, 46.623085>,  <31.882828, 37.682106, 46.677635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710838, 37.325111, 46.623085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901065, -0.414734, -0.126796,
		0.056603, -0.177402, 0.982509,
		-0.429974, -0.892482, -0.136376,
		31.581846, 37.057365, 46.582172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655811, 37.488594, 46.866451>,  <31.882828, 37.682106, 46.677635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655811, 37.488594, 46.866451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332401, 37.401798, 47.085251>,  <32.138355, 37.349720, 47.216530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332401, 37.401798, 47.085251>,  <32.655811, 37.488594, 46.866451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332401, 37.401798, 47.085251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446852, -0.831216, 0.330761,
		0.382906, 0.511856, 0.769016,
		-0.808521, -0.216986, 0.547001,
		32.089844, 37.336700, 47.249352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845711, 37.344173, 47.530357>,  <32.655811, 37.488594, 46.866451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845711, 37.344173, 47.530357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.539814, 37.116432, 47.409687>,  <32.356277, 36.979790, 47.337284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.539814, 37.116432, 47.409687>,  <32.845711, 37.344173, 47.530357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539814, 37.116432, 47.409687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470057, -0.813198, 0.343155,
		-0.440698, 0.120620, 0.889514,
		-0.764742, -0.569351, -0.301677,
		32.310390, 36.945625, 47.319183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128471, 36.697147, 47.764050>,  <32.845711, 37.344173, 47.530357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128471, 36.697147, 47.764050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778629, 36.622505, 47.585056>,  <32.568722, 36.577721, 47.477661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778629, 36.622505, 47.585056>,  <33.128471, 36.697147, 47.764050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778629, 36.622505, 47.585056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194162, -0.980529, 0.029398,
		-0.444256, -0.061173, 0.893809,
		-0.874607, -0.186604, -0.447484,
		32.516247, 36.566525, 47.450809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372437, 36.801746, 48.540611>,  <33.128471, 36.697147, 47.764050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372437, 36.801746, 48.540611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388119, 36.495598, 48.797565>,  <33.397530, 36.311909, 48.951740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388119, 36.495598, 48.797565>,  <33.372437, 36.801746, 48.540611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388119, 36.495598, 48.797565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958506, 0.210472, 0.192268,
		-0.282362, 0.608197, 0.741868,
		0.039205, -0.765374, 0.642390,
		33.399879, 36.265987, 48.990284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619083, 37.133736, 49.166039>,  <33.372437, 36.801746, 48.540611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619083, 37.133736, 49.166039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706902, 36.743576, 49.173988>,  <33.759594, 36.509480, 49.178757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706902, 36.743576, 49.173988>,  <33.619083, 37.133736, 49.166039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706902, 36.743576, 49.173988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958145, 0.219410, 0.183895,
		-0.183732, -0.021333, 0.982745,
		0.219547, -0.975399, 0.019873,
		33.772766, 36.450954, 49.179951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157894, 37.044830, 49.651421>,  <33.619083, 37.133736, 49.166039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157894, 37.044830, 49.651421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175728, 36.727879, 49.408062>,  <34.186428, 36.537708, 49.262047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175728, 36.727879, 49.408062>,  <34.157894, 37.044830, 49.651421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175728, 36.727879, 49.408062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995798, 0.084009, -0.036442,
		0.079987, -0.604214, 0.792797,
		0.044583, -0.792381, -0.608395,
		34.189102, 36.490166, 49.225544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686222, 36.627747, 49.826057>,  <34.157894, 37.044830, 49.651421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686222, 36.627747, 49.826057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642715, 36.489899, 49.453091>,  <34.616611, 36.407188, 49.229309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642715, 36.489899, 49.453091>,  <34.686222, 36.627747, 49.826057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642715, 36.489899, 49.453091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983093, -0.176278, -0.049529,
		-0.147296, -0.922042, 0.357970,
		-0.108770, -0.344623, -0.932418,
		34.610085, 36.386513, 49.173367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176403, 36.052284, 49.757133>,  <34.686222, 36.627747, 49.826057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176403, 36.052284, 49.757133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118546, 36.152737, 49.374298>,  <35.083832, 36.213009, 49.144596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118546, 36.152737, 49.374298>,  <35.176403, 36.052284, 49.757133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118546, 36.152737, 49.374298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972866, -0.140426, -0.183878,
		-0.180577, -0.957713, -0.224003,
		-0.144647, 0.251129, -0.957085,
		35.075150, 36.228077, 49.087173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483032, 35.562191, 49.430096>,  <35.176403, 36.052284, 49.757133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483032, 35.562191, 49.430096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446991, 35.849804, 49.154449>,  <35.425365, 36.022373, 48.989063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446991, 35.849804, 49.154449>,  <35.483032, 35.562191, 49.430096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446991, 35.849804, 49.154449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980391, -0.057719, -0.188418,
		-0.175253, -0.692576, -0.699732,
		-0.090106, 0.719032, -0.689111,
		35.419960, 36.065514, 48.947716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848362, 35.276299, 48.788940>,  <35.483032, 35.562191, 49.430096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848362, 35.276299, 48.788940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819725, 35.672413, 48.741249>,  <35.802544, 35.910080, 48.712635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819725, 35.672413, 48.741249>,  <35.848362, 35.276299, 48.788940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819725, 35.672413, 48.741249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940203, 0.027092, -0.339535,
		-0.333006, -0.136404, -0.933006,
		-0.071591, 0.990283, -0.119225,
		35.798248, 35.969498, 48.705482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096397, 35.380199, 48.185276>,  <35.848362, 35.276299, 48.788940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096397, 35.380199, 48.185276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.131615, 35.710285, 48.408443>,  <36.152744, 35.908337, 48.542343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.131615, 35.710285, 48.408443>,  <36.096397, 35.380199, 48.185276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131615, 35.710285, 48.408443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952030, 0.095070, -0.290862,
		-0.293064, 0.556765, -0.777256,
		0.088048, 0.825212, 0.557918,
		36.158028, 35.957848, 48.575817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586094, 35.742470, 47.789520>,  <36.096397, 35.380199, 48.185276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586094, 35.742470, 47.789520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580399, 35.935127, 48.140022>,  <36.576981, 36.050720, 48.350323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580399, 35.935127, 48.140022>,  <36.586094, 35.742470, 47.789520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580399, 35.935127, 48.140022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962015, 0.245534, -0.119330,
		-0.272624, 0.841268, -0.466844,
		-0.014238, 0.481643, 0.876252,
		36.576126, 36.079620, 48.402897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024635, 36.223492, 47.673054>,  <36.586094, 35.742470, 47.789520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024635, 36.223492, 47.673054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994045, 36.239052, 48.071579>,  <36.975693, 36.248386, 48.310696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994045, 36.239052, 48.071579>,  <37.024635, 36.223492, 47.673054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994045, 36.239052, 48.071579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983663, 0.166267, 0.069009,
		-0.162970, 0.985313, -0.050977,
		-0.076472, 0.038898, 0.996313,
		36.971104, 36.250721, 48.370472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490005, 36.797295, 47.880257>,  <37.024635, 36.223492, 47.673054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490005, 36.797295, 47.880257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454048, 36.566051, 48.204655>,  <37.432472, 36.427307, 48.399292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454048, 36.566051, 48.204655>,  <37.490005, 36.797295, 47.880257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454048, 36.566051, 48.204655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991065, 0.028634, 0.130267,
		-0.098531, 0.815459, 0.570367,
		-0.089896, -0.578107, 0.810994,
		37.427078, 36.392620, 48.447952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932972, 37.132980, 48.411282>,  <37.490005, 36.797295, 47.880257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932972, 37.132980, 48.411282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879353, 36.755020, 48.530750>,  <37.847183, 36.528244, 48.602432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879353, 36.755020, 48.530750>,  <37.932972, 37.132980, 48.411282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879353, 36.755020, 48.530750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988190, -0.150035, -0.031158,
		0.074252, 0.290964, 0.953848,
		-0.134045, -0.944896, 0.298668,
		37.839138, 36.471550, 48.620350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353745, 37.052864, 48.943237>,  <37.932972, 37.132980, 48.411282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353745, 37.052864, 48.943237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302933, 36.671719, 48.833023>,  <38.272446, 36.443031, 48.766895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302933, 36.671719, 48.833023>,  <38.353745, 37.052864, 48.943237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302933, 36.671719, 48.833023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988005, -0.096956, -0.120194,
		0.087813, -0.287499, 0.953747,
		-0.127027, -0.952861, -0.275536,
		38.264824, 36.385860, 48.750362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796707, 36.413445, 48.894142>,  <38.353745, 37.052864, 48.943237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796707, 36.413445, 48.894142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.523647, 36.402744, 48.602039>,  <38.359814, 36.396324, 48.426777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.523647, 36.402744, 48.602039>,  <38.796707, 36.413445, 48.894142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523647, 36.402744, 48.602039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284392, -0.930269, -0.231776,
		-0.673140, -0.365901, 0.642651,
		-0.682645, -0.026747, -0.730260,
		38.318855, 36.394722, 48.382961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918293, 35.771336, 48.746052>,  <38.796707, 36.413445, 48.894142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918293, 35.771336, 48.746052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637634, 35.872997, 48.479790>,  <38.469238, 35.933994, 48.320034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637634, 35.872997, 48.479790>,  <38.918293, 35.771336, 48.746052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637634, 35.872997, 48.479790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006675, -0.936524, -0.350539,
		-0.712489, -0.241513, 0.658810,
		-0.701651, 0.254153, -0.665651,
		38.427139, 35.949242, 48.280094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155067, 35.100819, 48.969067>,  <38.918293, 35.771336, 48.746052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155067, 35.100819, 48.969067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545021, 35.091228, 48.880501>,  <39.778992, 35.085472, 48.827362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545021, 35.091228, 48.880501>,  <39.155067, 35.100819, 48.969067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545021, 35.091228, 48.880501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202227, 0.511785, 0.834973,
		0.093297, -0.858779, 0.503780,
		0.974885, -0.023978, -0.221417,
		39.837486, 35.084034, 48.814075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823715, 34.900139, 49.502113>,  <39.155067, 35.100819, 48.969067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823715, 34.900139, 49.502113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.091988, 34.750004, 49.758022>,  <40.252949, 34.659924, 49.911568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.091988, 34.750004, 49.758022>,  <39.823715, 34.900139, 49.502113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091988, 34.750004, 49.758022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581112, 0.270157, 0.767674,
		-0.460979, -0.886642, -0.036927,
		0.670676, -0.375340, 0.639776,
		40.293190, 34.637402, 49.949955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509899, 34.620872, 49.969067>,  <39.823715, 34.900139, 49.502113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509899, 34.620872, 49.969067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.849548, 34.643131, 50.179169>,  <40.053337, 34.656487, 50.305229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.849548, 34.643131, 50.179169>,  <39.509899, 34.620872, 49.969067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849548, 34.643131, 50.179169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528187, 0.083477, 0.845015,
		0.003170, -0.994955, 0.100270,
		0.849122, 0.055640, 0.525257,
		40.104286, 34.659824, 50.336746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587551, 34.195221, 50.587387>,  <39.509899, 34.620872, 49.969067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587551, 34.195221, 50.587387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774250, 34.542583, 50.654350>,  <39.886269, 34.750999, 50.694527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774250, 34.542583, 50.654350>,  <39.587551, 34.195221, 50.587387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774250, 34.542583, 50.654350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528282, 0.121956, 0.840265,
		0.709272, -0.480628, 0.515684,
		0.466746, 0.868403, 0.167407,
		39.914272, 34.803104, 50.704571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690304, 34.257362, 51.358883>,  <39.587551, 34.195221, 50.587387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690304, 34.257362, 51.358883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.642433, 34.606613, 51.169849>,  <39.613712, 34.816162, 51.056431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.642433, 34.606613, 51.169849>,  <39.690304, 34.257362, 51.358883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642433, 34.606613, 51.169849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522588, 0.349324, 0.777737,
		0.844144, 0.340043, 0.414477,
		-0.119677, 0.873123, -0.472583,
		39.606529, 34.868549, 51.028076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735279, 34.763908, 51.811142>,  <39.690304, 34.257362, 51.358883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735279, 34.763908, 51.811142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.541473, 34.945572, 51.512081>,  <39.425190, 35.054569, 51.332645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.541473, 34.945572, 51.512081>,  <39.735279, 34.763908, 51.811142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541473, 34.945572, 51.512081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606538, 0.441464, 0.661227,
		0.630364, 0.773855, 0.061568,
		-0.484514, 0.454157, -0.747655,
		39.396118, 35.081818, 51.287785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730446, 35.532593, 51.883999>,  <39.735279, 34.763908, 51.811142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730446, 35.532593, 51.883999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.419422, 35.454205, 51.645000>,  <39.232807, 35.407173, 51.501602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.419422, 35.454205, 51.645000>,  <39.730446, 35.532593, 51.883999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419422, 35.454205, 51.645000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619303, 0.403279, 0.673669,
		0.108939, 0.893847, -0.434937,
		-0.777558, -0.195969, -0.597495,
		39.186153, 35.395412, 51.465752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394802, 36.139400, 51.753620>,  <39.730446, 35.532593, 51.883999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394802, 36.139400, 51.753620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.113453, 35.863567, 51.684635>,  <38.944645, 35.698067, 51.643246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.113453, 35.863567, 51.684635>,  <39.394802, 36.139400, 51.753620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113453, 35.863567, 51.684635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669381, 0.560943, 0.487105,
		-0.239157, 0.458059, -0.856146,
		-0.703372, -0.689583, -0.172463,
		38.902443, 35.656693, 51.632896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827427, 36.498474, 51.606750>,  <39.394802, 36.139400, 51.753620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827427, 36.498474, 51.606750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680630, 36.139053, 51.703022>,  <38.592552, 35.923401, 51.760784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680630, 36.139053, 51.703022>,  <38.827427, 36.498474, 51.606750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680630, 36.139053, 51.703022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725359, 0.438407, 0.530710,
		-0.582384, 0.020189, -0.812663,
		-0.366992, -0.898549, 0.240677,
		38.570534, 35.869488, 51.775227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123466, 36.596363, 51.751045>,  <38.827427, 36.498474, 51.606750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123466, 36.596363, 51.751045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187511, 36.239914, 51.920872>,  <38.225937, 36.026043, 52.022770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187511, 36.239914, 51.920872>,  <38.123466, 36.596363, 51.751045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187511, 36.239914, 51.920872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750986, 0.169170, 0.638280,
		-0.640612, -0.421041, -0.642137,
		0.160112, -0.891126, 0.424569,
		38.235546, 35.972576, 52.048241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468063, 36.381691, 51.945068>,  <38.123466, 36.596363, 51.751045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468063, 36.381691, 51.945068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706764, 36.144726, 52.161560>,  <37.849987, 36.002548, 52.291454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706764, 36.144726, 52.161560>,  <37.468063, 36.381691, 51.945068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706764, 36.144726, 52.161560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727396, -0.114599, 0.676581,
		-0.338792, -0.797441, -0.499307,
		0.596754, -0.592414, 0.541230,
		37.885792, 35.967003, 52.323929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970291, 35.956554, 52.124119>,  <37.468063, 36.381691, 51.945068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970291, 35.956554, 52.124119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275784, 35.923786, 52.380245>,  <37.459080, 35.904125, 52.533920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275784, 35.923786, 52.380245>,  <36.970291, 35.956554, 52.124119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275784, 35.923786, 52.380245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645492, -0.084903, 0.759034,
		-0.007810, -0.993016, -0.117718,
		0.763727, -0.081914, 0.640321,
		37.504902, 35.899212, 52.572342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937630, 35.295040, 52.479313>,  <36.970291, 35.956554, 52.124119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937630, 35.295040, 52.479313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176197, 35.511669, 52.716286>,  <37.319340, 35.641647, 52.858471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176197, 35.511669, 52.716286>,  <36.937630, 35.295040, 52.479313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176197, 35.511669, 52.716286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549155, -0.262991, 0.793262,
		0.585416, -0.798456, 0.140555,
		0.596421, 0.541575, 0.592435,
		37.355122, 35.674141, 52.894016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902939, 34.975891, 53.123581>,  <36.937630, 35.295040, 52.479313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902939, 34.975891, 53.123581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033821, 35.349632, 53.180042>,  <37.112350, 35.573875, 53.213917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033821, 35.349632, 53.180042>,  <36.902939, 34.975891, 53.123581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033821, 35.349632, 53.180042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474757, 0.033397, 0.879483,
		0.817032, -0.354785, 0.454518,
		0.327207, 0.934352, 0.141150,
		37.131985, 35.629936, 53.222385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195808, 35.048691, 53.813213>,  <36.902939, 34.975891, 53.123581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195808, 35.048691, 53.813213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052166, 35.402279, 53.693459>,  <36.965981, 35.614433, 53.621605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052166, 35.402279, 53.693459>,  <37.195808, 35.048691, 53.813213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052166, 35.402279, 53.693459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537406, 0.066417, 0.840704,
		0.763045, 0.462794, 0.451203,
		-0.359105, 0.883974, -0.299387,
		36.944435, 35.667473, 53.603642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013386, 35.439438, 54.463661>,  <37.195808, 35.048691, 53.813213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013386, 35.439438, 54.463661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.866970, 35.691219, 54.189495>,  <36.779121, 35.842289, 54.024994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.866970, 35.691219, 54.189495>,  <37.013386, 35.439438, 54.463661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866970, 35.691219, 54.189495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532560, 0.462315, 0.708974,
		0.763149, 0.624538, 0.165999,
		-0.366038, 0.629457, -0.685419,
		36.757160, 35.880058, 53.983868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045780, 36.240662, 54.741714>,  <37.013386, 35.439438, 54.463661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045780, 36.240662, 54.741714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752716, 36.213848, 54.470798>,  <36.576878, 36.197762, 54.308250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752716, 36.213848, 54.470798>,  <37.045780, 36.240662, 54.741714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752716, 36.213848, 54.470798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593547, 0.549887, 0.587644,
		0.333040, 0.832545, -0.442666,
		-0.732657, -0.067034, -0.677289,
		36.532921, 36.193737, 54.267612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668434, 36.939377, 54.700092>,  <37.045780, 36.240662, 54.741714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668434, 36.939377, 54.700092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414314, 36.679333, 54.533356>,  <36.261845, 36.523308, 54.433311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414314, 36.679333, 54.533356>,  <36.668434, 36.939377, 54.700092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414314, 36.679333, 54.533356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716139, 0.293915, 0.633056,
		-0.289038, 0.700697, -0.652290,
		-0.635298, -0.650107, -0.416843,
		36.223724, 36.484303, 54.408302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052956, 37.282131, 54.584980>,  <36.668434, 36.939377, 54.700092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052956, 37.282131, 54.584980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.956882, 36.894264, 54.603127>,  <35.899239, 36.661545, 54.614014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.956882, 36.894264, 54.603127>,  <36.052956, 37.282131, 54.584980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956882, 36.894264, 54.603127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662691, 0.197935, 0.722262,
		-0.709333, 0.143413, -0.690130,
		-0.240182, -0.969667, 0.045363,
		35.884827, 36.603363, 54.616737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226749, 37.242783, 54.623943>,  <36.052956, 37.282131, 54.584980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226749, 37.242783, 54.623943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357449, 36.904167, 54.792046>,  <35.435867, 36.701000, 54.892906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357449, 36.904167, 54.792046>,  <35.226749, 37.242783, 54.623943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357449, 36.904167, 54.792046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654863, 0.117827, 0.746506,
		-0.681462, -0.519128, -0.515865,
		0.326749, -0.846536, 0.420252,
		35.455475, 36.650208, 54.918121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553112, 37.027126, 55.023346>,  <35.226749, 37.242783, 54.623943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553112, 37.027126, 55.023346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858826, 36.814594, 55.169525>,  <35.042255, 36.687077, 55.257233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858826, 36.814594, 55.169525>,  <34.553112, 37.027126, 55.023346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858826, 36.814594, 55.169525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387154, 0.075152, 0.918947,
		-0.515728, -0.843825, -0.148268,
		0.764288, -0.531329, 0.365448,
		35.088112, 36.655197, 55.279160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269524, 36.676807, 55.569771>,  <34.553112, 37.027126, 55.023346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269524, 36.676807, 55.569771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655998, 36.615105, 55.652412>,  <34.887882, 36.578083, 55.701996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655998, 36.615105, 55.652412>,  <34.269524, 36.676807, 55.569771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655998, 36.615105, 55.652412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209327, -0.001464, 0.977844,
		-0.150536, -0.988030, -0.033704,
		0.966189, -0.154256, 0.206601,
		34.945854, 36.568829, 55.714394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351986, 36.088017, 56.008224>,  <34.269524, 36.676807, 55.569771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351986, 36.088017, 56.008224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663578, 36.333164, 56.061268>,  <34.850533, 36.480251, 56.093094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663578, 36.333164, 56.061268>,  <34.351986, 36.088017, 56.008224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663578, 36.333164, 56.061268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310432, 0.193186, 0.930758,
		0.544816, -0.766206, 0.340742,
		0.778979, 0.612869, 0.132604,
		34.897270, 36.517025, 56.101048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632847, 36.004124, 56.591908>,  <34.351986, 36.088017, 56.008224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632847, 36.004124, 56.591908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777916, 36.372017, 56.531834>,  <34.864956, 36.592754, 56.495789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777916, 36.372017, 56.531834>,  <34.632847, 36.004124, 56.591908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777916, 36.372017, 56.531834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147336, 0.215713, 0.965277,
		0.920197, -0.327949, 0.213743,
		0.362669, 0.919737, -0.150180,
		34.886715, 36.647938, 56.486778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971413, 36.100868, 57.190319>,  <34.632847, 36.004124, 56.591908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971413, 36.100868, 57.190319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.901215, 36.471279, 57.056652>,  <34.859097, 36.693527, 56.976452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.901215, 36.471279, 57.056652>,  <34.971413, 36.100868, 57.190319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901215, 36.471279, 57.056652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250384, 0.286294, 0.924848,
		0.952108, 0.245979, 0.181619,
		-0.175496, 0.926029, -0.334172,
		34.848564, 36.749088, 56.956402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336071, 36.570469, 57.714367>,  <34.971413, 36.100868, 57.190319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336071, 36.570469, 57.714367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068268, 36.782688, 57.506413>,  <34.907585, 36.910019, 57.381641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068268, 36.782688, 57.506413>,  <35.336071, 36.570469, 57.714367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068268, 36.782688, 57.506413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328207, 0.416578, 0.847787,
		0.666362, 0.738230, -0.104774,
		-0.669509, 0.530546, -0.519884,
		34.867416, 36.941853, 57.350449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380989, 37.120735, 58.138931>,  <35.336071, 36.570469, 57.714367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380989, 37.120735, 58.138931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061192, 37.172394, 57.904282>,  <34.869312, 37.203388, 57.763493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061192, 37.172394, 57.904282>,  <35.380989, 37.120735, 58.138931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061192, 37.172394, 57.904282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396701, 0.619804, 0.677105,
		0.451042, 0.774056, -0.444295,
		-0.799493, 0.129151, -0.586626,
		34.821342, 37.211140, 57.728294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212807, 37.782833, 58.148067>,  <35.380989, 37.120735, 58.138931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212807, 37.782833, 58.148067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876373, 37.616047, 58.010242>,  <34.674515, 37.515976, 57.927547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876373, 37.616047, 58.010242>,  <35.212807, 37.782833, 58.148067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876373, 37.616047, 58.010242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534171, 0.540027, 0.650410,
		-0.085126, 0.731102, -0.676937,
		-0.841080, -0.416967, -0.344563,
		34.624050, 37.490955, 57.906872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653931, 38.412582, 58.052280>,  <35.212807, 37.782833, 58.148067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653931, 38.412582, 58.052280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474754, 38.056862, 58.089146>,  <34.367249, 37.843430, 58.111263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474754, 38.056862, 58.089146>,  <34.653931, 38.412582, 58.052280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474754, 38.056862, 58.089146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755891, 0.431744, 0.492163,
		-0.477473, 0.150794, -0.865610,
		-0.447937, -0.889302, 0.092162,
		34.340374, 37.790070, 58.116795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014523, 38.438778, 57.800377>,  <34.653931, 38.412582, 58.052280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014523, 38.438778, 57.800377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015972, 38.136738, 58.062614>,  <34.016842, 37.955513, 58.219955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015972, 38.136738, 58.062614>,  <34.014523, 38.438778, 57.800377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015972, 38.136738, 58.062614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806052, 0.385804, 0.448815,
		-0.591833, -0.530068, -0.607257,
		0.003621, -0.755105, 0.655594,
		34.017059, 37.910206, 58.259293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510208, 38.571217, 58.145687>,  <34.014523, 38.438778, 57.800377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510208, 38.571217, 58.145687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607304, 38.261967, 58.380077>,  <33.665562, 38.076416, 58.520710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607304, 38.261967, 58.380077>,  <33.510208, 38.571217, 58.145687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607304, 38.261967, 58.380077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723029, 0.258535, 0.640616,
		-0.646768, -0.579176, -0.496232,
		0.242737, -0.773120, 0.585973,
		33.680126, 38.030029, 58.555870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881237, 38.220081, 58.263569>,  <33.510208, 38.571217, 58.145687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881237, 38.220081, 58.263569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141380, 38.116562, 58.549244>,  <33.297466, 38.054451, 58.720650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141380, 38.116562, 58.549244>,  <32.881237, 38.220081, 58.263569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141380, 38.116562, 58.549244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707182, 0.137009, 0.693630,
		-0.277363, -0.956164, -0.093916,
		0.650356, -0.258803, 0.714183,
		33.336487, 38.038921, 58.763500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511341, 37.749069, 58.740955>,  <32.881237, 38.220081, 58.263569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511341, 37.749069, 58.740955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826950, 37.902081, 58.933254>,  <33.016315, 37.993889, 59.048634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826950, 37.902081, 58.933254>,  <32.511341, 37.749069, 58.740955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826950, 37.902081, 58.933254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574447, 0.181888, 0.798078,
		0.217862, -0.905856, 0.363265,
		0.789016, 0.382547, 0.480739,
		33.063656, 38.016838, 59.077480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592739, 37.359650, 59.336880>,  <32.511341, 37.749069, 58.740955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592739, 37.359650, 59.336880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.769180, 37.710056, 59.414867>,  <32.875046, 37.920300, 59.461658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.769180, 37.710056, 59.414867>,  <32.592739, 37.359650, 59.336880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769180, 37.710056, 59.414867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672577, 0.178845, 0.718091,
		0.594194, -0.447886, 0.668081,
		0.441106, 0.876021, 0.194969,
		32.901512, 37.972862, 59.473358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691528, 37.461021, 60.012020>,  <32.592739, 37.359650, 59.336880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691528, 37.461021, 60.012020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673916, 37.836151, 59.874302>,  <32.663349, 38.061230, 59.791672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673916, 37.836151, 59.874302>,  <32.691528, 37.461021, 60.012020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673916, 37.836151, 59.874302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604362, 0.249412, 0.756664,
		0.795492, 0.241401, 0.555804,
		-0.044036, 0.937827, -0.344298,
		32.660706, 38.117500, 59.771011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375473, 37.627052, 60.717449>,  <32.691528, 37.461021, 60.012020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375473, 37.627052, 60.717449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370525, 37.934113, 60.461147>,  <32.367558, 38.118347, 60.307365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370525, 37.934113, 60.461147>,  <32.375473, 37.627052, 60.717449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370525, 37.934113, 60.461147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570240, 0.520972, 0.635150,
		0.821385, 0.373240, 0.431298,
		-0.012369, 0.767646, -0.640755,
		32.366814, 38.164406, 60.268921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393837, 38.260262, 61.157883>,  <32.375473, 37.627052, 60.717449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393837, 38.260262, 61.157883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.262989, 38.375816, 60.797985>,  <32.184479, 38.445148, 60.582047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.262989, 38.375816, 60.797985>,  <32.393837, 38.260262, 61.157883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262989, 38.375816, 60.797985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690639, 0.576778, 0.436284,
		0.644988, 0.764116, 0.010837,
		-0.327121, 0.288883, -0.899744,
		32.164852, 38.462482, 60.528061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414772, 38.971298, 61.155735>,  <32.393837, 38.260262, 61.157883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414772, 38.971298, 61.155735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.150093, 38.892246, 60.866432>,  <31.991285, 38.844814, 60.692852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.150093, 38.892246, 60.866432>,  <32.414772, 38.971298, 61.155735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150093, 38.892246, 60.866432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656109, 0.619490, 0.430992,
		0.362873, 0.759721, -0.539581,
		-0.661698, -0.197628, -0.723256,
		31.951584, 38.832958, 60.649456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181103, 39.711708, 60.843330>,  <32.414772, 38.971298, 61.155735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181103, 39.711708, 60.843330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.903189, 39.451092, 60.721493>,  <31.736441, 39.294724, 60.648392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.903189, 39.451092, 60.721493>,  <32.181103, 39.711708, 60.843330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903189, 39.451092, 60.721493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718619, 0.646197, 0.256937,
		0.029422, 0.397402, -0.917173,
		-0.694782, -0.651538, -0.304593,
		31.694754, 39.255630, 60.630116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698893, 40.118942, 60.468536>,  <32.181103, 39.711708, 60.843330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698893, 40.118942, 60.468536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521685, 39.785896, 60.601498>,  <31.415359, 39.586071, 60.681274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521685, 39.785896, 60.601498>,  <31.698893, 40.118942, 60.468536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521685, 39.785896, 60.601498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831244, 0.520370, 0.195575,
		-0.335810, -0.189663, -0.922637,
		-0.443019, -0.832612, 0.332401,
		31.388779, 39.536114, 60.701218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921835, 40.098709, 60.203846>,  <31.698893, 40.118942, 60.468536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921835, 40.098709, 60.203846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.935385, 39.867996, 60.530323>,  <30.943514, 39.729568, 60.726212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.935385, 39.867996, 60.530323>,  <30.921835, 40.098709, 60.203846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935385, 39.867996, 60.530323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721362, 0.551125, 0.419403,
		-0.691730, -0.602978, -0.397402,
		0.033873, -0.576784, 0.816194,
		30.945547, 39.694962, 60.775181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291016, 40.049240, 60.347874>,  <30.921835, 40.098709, 60.203846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291016, 40.049240, 60.347874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.417187, 39.896313, 60.695286>,  <30.492889, 39.804558, 60.903732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.417187, 39.896313, 60.695286>,  <30.291016, 40.049240, 60.347874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417187, 39.896313, 60.695286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712391, 0.509238, 0.482882,
		-0.626901, -0.771046, -0.111730,
		0.315427, -0.382315, 0.868528,
		30.511814, 39.781620, 60.955845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675249, 39.736584, 60.652245>,  <30.291016, 40.049240, 60.347874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675249, 39.736584, 60.652245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.952894, 39.827259, 60.925541>,  <30.119482, 39.881664, 61.089520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.952894, 39.827259, 60.925541>,  <29.675249, 39.736584, 60.652245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952894, 39.827259, 60.925541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672692, 0.542186, 0.503508,
		-0.256307, -0.809103, 0.528827,
		0.694113, 0.226685, 0.683244,
		30.161127, 39.895264, 61.130512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554180, 39.537663, 61.299259>,  <29.675249, 39.736584, 60.652245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554180, 39.537663, 61.299259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.796015, 39.822430, 61.442169>,  <29.941116, 39.993290, 61.527916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.796015, 39.822430, 61.442169>,  <29.554180, 39.537663, 61.299259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796015, 39.822430, 61.442169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751526, 0.361177, 0.552051,
		0.263977, -0.602263, 0.753389,
		0.604587, 0.711920, 0.357274,
		29.977390, 40.036007, 61.549351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374128, 39.649265, 61.955547>,  <29.554180, 39.537663, 61.299259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374128, 39.649265, 61.955547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.545601, 39.997509, 61.858990>,  <29.648483, 40.206455, 61.801056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.545601, 39.997509, 61.858990>,  <29.374128, 39.649265, 61.955547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545601, 39.997509, 61.858990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702872, 0.489251, 0.516338,
		0.567631, -0.051676, 0.821660,
		0.428680, 0.870611, -0.241393,
		29.674206, 40.258694, 61.786572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352324, 40.042091, 62.574112>,  <29.374128, 39.649265, 61.955547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352324, 40.042091, 62.574112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370163, 40.253601, 62.235077>,  <29.380867, 40.380508, 62.031654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370163, 40.253601, 62.235077>,  <29.352324, 40.042091, 62.574112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370163, 40.253601, 62.235077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792505, 0.535285, 0.292243,
		0.608233, 0.658685, 0.442929,
		0.044597, 0.528775, -0.847589,
		29.383543, 40.412235, 61.980801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473648, 40.777187, 62.765259>,  <29.352324, 40.042091, 62.574112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473648, 40.777187, 62.765259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307312, 40.749767, 62.402519>,  <29.207510, 40.733315, 62.184875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307312, 40.749767, 62.402519>,  <29.473648, 40.777187, 62.765259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307312, 40.749767, 62.402519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756064, 0.580222, 0.302836,
		0.505413, 0.811568, -0.293111,
		-0.415841, -0.068553, -0.906850,
		29.182560, 40.729202, 62.130463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034370, 40.912910, 62.268291>,  <29.473648, 40.777187, 62.765259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034370, 40.912910, 62.268291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.262581, 41.241348, 62.261242>,  <30.399508, 41.438412, 62.257011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.262581, 41.241348, 62.261242>,  <30.034370, 40.912910, 62.268291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262581, 41.241348, 62.261242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386795, 0.287563, 0.876183,
		0.724495, -0.493067, 0.481656,
		0.570524, 0.821092, -0.017622,
		30.433739, 41.487675, 62.255955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460968, 40.972473, 62.881157>,  <30.034370, 40.912910, 62.268291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460968, 40.972473, 62.881157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.441973, 41.343761, 62.733566>,  <30.430576, 41.566536, 62.645012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.441973, 41.343761, 62.733566>,  <30.460968, 40.972473, 62.881157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441973, 41.343761, 62.733566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389004, 0.323043, 0.862739,
		0.920011, 0.184503, 0.345743,
		-0.047488, 0.928225, -0.368975,
		30.427727, 41.622231, 62.622875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786964, 41.346123, 63.285152>,  <30.460968, 40.972473, 62.881157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786964, 41.346123, 63.285152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.563492, 41.627502, 63.109409>,  <30.429409, 41.796329, 63.003963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.563492, 41.627502, 63.109409>,  <30.786964, 41.346123, 63.285152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563492, 41.627502, 63.109409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162944, 0.426317, 0.889777,
		0.813218, 0.568692, -0.123553,
		-0.558682, 0.703451, -0.439354,
		30.395887, 41.838539, 62.977604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866203, 41.856567, 63.710266>,  <30.786964, 41.346123, 63.285152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866203, 41.856567, 63.710266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544098, 41.982430, 63.509251>,  <30.350836, 42.057945, 63.388641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544098, 41.982430, 63.509251>,  <30.866203, 41.856567, 63.710266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544098, 41.982430, 63.509251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235132, 0.608603, 0.757836,
		0.544304, 0.728419, -0.416099,
		-0.805261, 0.314655, -0.502540,
		30.302519, 42.076824, 63.358490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723930, 42.564259, 63.871418>,  <30.866203, 41.856567, 63.710266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723930, 42.564259, 63.871418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.811068, 42.704288, 63.507004>,  <30.863350, 42.788307, 63.288353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.811068, 42.704288, 63.507004>,  <30.723930, 42.564259, 63.871418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811068, 42.704288, 63.507004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858813, -0.374703, -0.349340,
		-0.463665, 0.858513, 0.219023,
		0.217844, 0.350076, -0.911038,
		30.876421, 42.809311, 63.233692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119686, 42.593781, 63.516411>,  <30.723930, 42.564259, 63.871418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119686, 42.593781, 63.516411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.352427, 42.653217, 63.196568>,  <30.492071, 42.688877, 63.004662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.352427, 42.653217, 63.196568>,  <30.119686, 42.593781, 63.516411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352427, 42.653217, 63.196568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737267, -0.318698, -0.595708,
		-0.343349, 0.936137, -0.075885,
		0.581849, 0.148588, -0.799608,
		30.526981, 42.697792, 62.956684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661715, 42.459351, 62.874901>,  <30.119686, 42.593781, 63.516411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661715, 42.459351, 62.874901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971111, 42.694370, 62.779823>,  <30.156750, 42.835384, 62.722778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971111, 42.694370, 62.779823>,  <29.661715, 42.459351, 62.874901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971111, 42.694370, 62.779823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018274, -0.354190, -0.934995,
		-0.633545, 0.727553, -0.263225,
		0.773490, 0.587551, -0.237691,
		30.203159, 42.870636, 62.708515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457083, 42.889160, 62.356583>,  <29.661715, 42.459351, 62.874901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457083, 42.889160, 62.356583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.852890, 42.845020, 62.319328>,  <30.090374, 42.818535, 62.296974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.852890, 42.845020, 62.319328>,  <29.457083, 42.889160, 62.356583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852890, 42.845020, 62.319328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103448, -0.091685, -0.990400,
		0.100752, 0.989655, -0.102140,
		0.989519, -0.110351, -0.093140,
		30.149746, 42.811916, 62.291386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704538, 43.283157, 61.821777>,  <29.457083, 42.889160, 62.356583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704538, 43.283157, 61.821777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968994, 42.988113, 61.876671>,  <30.127666, 42.811089, 61.909607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968994, 42.988113, 61.876671>,  <29.704538, 43.283157, 61.821777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968994, 42.988113, 61.876671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001938, -0.181236, -0.983438,
		0.750262, 0.650453, -0.118393,
		0.661137, -0.737607, 0.137235,
		30.167336, 42.766830, 61.917843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421778, 43.418850, 61.467407>,  <29.704538, 43.283157, 61.821777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421778, 43.418850, 61.467407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281862, 43.044666, 61.487663>,  <30.197912, 42.820156, 61.499817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281862, 43.044666, 61.487663>,  <30.421778, 43.418850, 61.467407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281862, 43.044666, 61.487663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150056, -0.109300, -0.982617,
		0.924732, -0.336112, 0.178604,
		-0.349791, -0.935458, 0.050638,
		30.176926, 42.764030, 61.502853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901936, 42.975700, 61.069427>,  <30.421778, 43.418850, 61.467407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901936, 42.975700, 61.069427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.531809, 42.824993, 61.052296>,  <30.309732, 42.734570, 61.042015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.531809, 42.824993, 61.052296>,  <30.901936, 42.975700, 61.069427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531809, 42.824993, 61.052296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137576, -0.228312, -0.963819,
		0.353362, -0.897728, 0.263096,
		-0.925315, -0.376773, -0.042829,
		30.254215, 42.711960, 61.039448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822832, 42.287800, 60.715694>,  <30.901936, 42.975700, 61.069427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822832, 42.287800, 60.715694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.492815, 42.511551, 60.683697>,  <30.294804, 42.645802, 60.664497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.492815, 42.511551, 60.683697>,  <30.822832, 42.287800, 60.715694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492815, 42.511551, 60.683697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039395, -0.084276, -0.995663,
		-0.563694, -0.824617, 0.047495,
		-0.825044, 0.559379, -0.079992,
		30.245302, 42.679363, 60.659698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466652, 41.935574, 60.222679>,  <30.822832, 42.287800, 60.715694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466652, 41.935574, 60.222679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251268, 42.271946, 60.201168>,  <30.122038, 42.473770, 60.188259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251268, 42.271946, 60.201168>,  <30.466652, 41.935574, 60.222679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251268, 42.271946, 60.201168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203253, -0.191553, -0.960206,
		-0.817772, -0.506099, 0.274066,
		-0.538458, 0.840935, -0.053780,
		30.089731, 42.524227, 60.185036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070995, 41.782482, 59.670017>,  <30.466652, 41.935574, 60.222679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070995, 41.782482, 59.670017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012890, 42.176876, 59.702847>,  <29.978027, 42.413513, 59.722546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012890, 42.176876, 59.702847>,  <30.070995, 41.782482, 59.670017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012890, 42.176876, 59.702847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087030, 0.069897, -0.993751,
		-0.985558, -0.151497, 0.075657,
		-0.145262, 0.985983, 0.082072,
		29.969311, 42.472672, 59.727467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339205, 41.900249, 59.305134>,  <30.070995, 41.782482, 59.670017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339205, 41.900249, 59.305134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.585773, 42.214447, 59.327114>,  <29.733715, 42.402966, 59.340302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.585773, 42.214447, 59.327114>,  <29.339205, 41.900249, 59.305134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585773, 42.214447, 59.327114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098913, 0.146479, -0.984256,
		-0.781179, 0.601282, 0.167988,
		0.616422, 0.785496, 0.054952,
		29.770700, 42.450096, 59.343601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117226, 42.199173, 58.730053>,  <29.339205, 41.900249, 59.305134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117226, 42.199173, 58.730053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.440870, 42.415173, 58.822781>,  <29.635057, 42.544773, 58.878418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.440870, 42.415173, 58.822781>,  <29.117226, 42.199173, 58.730053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440870, 42.415173, 58.822781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194963, 0.125479, -0.972751,
		-0.554373, 0.832260, -0.003753,
		0.809111, 0.539999, 0.231822,
		29.683603, 42.577171, 58.892326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127760, 42.779652, 58.205719>,  <29.117226, 42.199173, 58.730053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127760, 42.779652, 58.205719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489437, 42.724472, 58.367413>,  <29.706444, 42.691364, 58.464428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489437, 42.724472, 58.367413>,  <29.127760, 42.779652, 58.205719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489437, 42.724472, 58.367413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419996, 0.114926, -0.900220,
		0.077723, 0.983750, 0.161851,
		0.904192, -0.137944, 0.404238,
		29.760695, 42.683090, 58.488686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539196, 43.248161, 57.948696>,  <29.127760, 42.779652, 58.205719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539196, 43.248161, 57.948696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812735, 42.978481, 58.060276>,  <29.976858, 42.816673, 58.127224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812735, 42.978481, 58.060276>,  <29.539196, 43.248161, 57.948696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812735, 42.978481, 58.060276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267941, -0.123551, -0.955480,
		0.678645, 0.728145, 0.096155,
		0.683848, -0.674196, 0.278947,
		30.017889, 42.776222, 58.143959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138435, 43.436916, 57.640415>,  <29.539196, 43.248161, 57.948696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138435, 43.436916, 57.640415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175406, 43.044880, 57.710693>,  <30.197588, 42.809658, 57.752861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175406, 43.044880, 57.710693>,  <30.138435, 43.436916, 57.640415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175406, 43.044880, 57.710693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435919, -0.118816, -0.892109,
		0.895227, 0.159044, 0.416260,
		0.092426, -0.980096, 0.175698,
		30.203133, 42.750851, 57.763401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708117, 43.259930, 57.283558>,  <30.138435, 43.436916, 57.640415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708117, 43.259930, 57.283558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610203, 42.881538, 57.368599>,  <30.551455, 42.654503, 57.419624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610203, 42.881538, 57.368599>,  <30.708117, 43.259930, 57.283558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610203, 42.881538, 57.368599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196988, -0.263226, -0.944409,
		0.949355, -0.189298, 0.250780,
		-0.244786, -0.945980, 0.212605,
		30.536766, 42.597744, 57.432381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304379, 42.753418, 57.163677>,  <30.708117, 43.259930, 57.283558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304379, 42.753418, 57.163677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959339, 42.551712, 57.147449>,  <30.752316, 42.430687, 57.137714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959339, 42.551712, 57.147449>,  <31.304379, 42.753418, 57.163677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959339, 42.551712, 57.147449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253918, -0.362206, -0.896846,
		0.437553, -0.783917, 0.440480,
		-0.862597, -0.504263, -0.040566,
		30.700560, 42.400433, 57.135281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507696, 42.161797, 56.832706>,  <31.304379, 42.753418, 57.163677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507696, 42.161797, 56.832706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.111490, 42.123119, 56.793655>,  <30.873766, 42.099915, 56.770226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.111490, 42.123119, 56.793655>,  <31.507696, 42.161797, 56.832706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111490, 42.123119, 56.793655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128183, -0.394362, -0.909971,
		0.049487, -0.913854, 0.403016,
		-0.990515, -0.096692, -0.097624,
		30.814335, 42.094112, 56.764370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423571, 41.493450, 56.745800>,  <31.507696, 42.161797, 56.832706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423571, 41.493450, 56.745800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.124842, 41.702236, 56.580971>,  <30.945604, 41.827507, 56.482071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.124842, 41.702236, 56.580971>,  <31.423571, 41.493450, 56.745800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124842, 41.702236, 56.580971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274770, -0.322088, -0.905959,
		-0.605606, -0.789816, 0.097121,
		-0.746822, 0.521968, -0.412076,
		30.900795, 41.858826, 56.457348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005133, 41.055656, 56.383411>,  <31.423571, 41.493450, 56.745800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005133, 41.055656, 56.383411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.985815, 41.427505, 56.237278>,  <30.974224, 41.650616, 56.149597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.985815, 41.427505, 56.237278>,  <31.005133, 41.055656, 56.383411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985815, 41.427505, 56.237278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432906, -0.310140, -0.846407,
		-0.900144, -0.199033, -0.387461,
		-0.048295, 0.929623, -0.365334,
		30.971327, 41.706394, 56.127678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523058, 41.090588, 55.810627>,  <31.005133, 41.055656, 56.383411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523058, 41.090588, 55.810627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784037, 41.390106, 55.763947>,  <30.940624, 41.569817, 55.735939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784037, 41.390106, 55.763947>,  <30.523058, 41.090588, 55.810627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784037, 41.390106, 55.763947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306415, -0.401505, -0.863078,
		-0.693126, 0.527352, -0.491403,
		0.652447, 0.748795, -0.116705,
		30.979771, 41.614746, 55.728935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491911, 41.346062, 55.058075>,  <30.523058, 41.090588, 55.810627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491911, 41.346062, 55.058075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.857471, 41.463531, 55.170174>,  <31.076807, 41.534016, 55.237434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.857471, 41.463531, 55.170174>,  <30.491911, 41.346062, 55.058075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857471, 41.463531, 55.170174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374127, -0.341441, -0.862233,
		-0.157528, 0.892845, -0.421916,
		0.913900, 0.293676, 0.280251,
		31.131641, 41.551636, 55.254250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747402, 41.372120, 54.418850>,  <30.491911, 41.346062, 55.058075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747402, 41.372120, 54.418850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.053997, 41.408604, 54.673149>,  <31.237953, 41.430496, 54.825729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.053997, 41.408604, 54.673149>,  <30.747402, 41.372120, 54.418850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053997, 41.408604, 54.673149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641488, -0.157252, -0.750843,
		0.031488, 0.983337, -0.179042,
		0.766487, 0.091211, 0.635750,
		31.283943, 41.435966, 54.863873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230314, 41.865440, 54.092941>,  <30.747402, 41.372120, 54.418850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230314, 41.865440, 54.092941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.425688, 41.625290, 54.346237>,  <31.542912, 41.481201, 54.498215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.425688, 41.625290, 54.346237>,  <31.230314, 41.865440, 54.092941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425688, 41.625290, 54.346237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601967, -0.293532, -0.742614,
		0.631719, 0.743903, 0.218033,
		0.488433, -0.600372, 0.633235,
		31.572218, 41.445179, 54.536209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903126, 41.976391, 53.934128>,  <31.230314, 41.865440, 54.092941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903126, 41.976391, 53.934128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894287, 41.632046, 54.137466>,  <31.888983, 41.425438, 54.259472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894287, 41.632046, 54.137466>,  <31.903126, 41.976391, 53.934128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894287, 41.632046, 54.137466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677721, -0.386711, -0.625418,
		0.734987, 0.330699, 0.591974,
		-0.022098, -0.860868, 0.508349,
		31.887657, 41.373787, 54.289970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608334, 41.834133, 53.982742>,  <31.903126, 41.976391, 53.934128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608334, 41.834133, 53.982742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434727, 41.490028, 54.089756>,  <32.330563, 41.283566, 54.153965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434727, 41.490028, 54.089756>,  <32.608334, 41.834133, 53.982742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434727, 41.490028, 54.089756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640897, -0.503533, -0.579401,
		0.633152, -0.080004, 0.769882,
		-0.434015, -0.860264, 0.267539,
		32.304523, 41.231949, 54.170017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034473, 41.484272, 54.317421>,  <32.608334, 41.834133, 53.982742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034473, 41.484272, 54.317421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.783623, 41.222462, 54.148518>,  <32.633114, 41.065376, 54.047176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.783623, 41.222462, 54.148518>,  <33.034473, 41.484272, 54.317421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783623, 41.222462, 54.148518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735337, -0.318707, -0.598085,
		0.256887, -0.685578, 0.681170,
		-0.627127, -0.654530, -0.422258,
		32.595486, 41.026104, 54.021839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386261, 40.970848, 54.188972>,  <33.034473, 41.484272, 54.317421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386261, 40.970848, 54.188972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088993, 40.843971, 53.953316>,  <32.910633, 40.767845, 53.811924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088993, 40.843971, 53.953316>,  <33.386261, 40.970848, 54.188972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088993, 40.843971, 53.953316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660808, -0.486118, -0.571858,
		-0.105005, -0.814298, 0.570870,
		-0.743173, -0.317188, -0.589140,
		32.866039, 40.748814, 53.776573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438061, 40.256664, 54.173592>,  <33.386261, 40.970848, 54.188972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438061, 40.256664, 54.173592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250069, 40.396835, 53.849537>,  <33.137272, 40.480938, 53.655106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250069, 40.396835, 53.849537>,  <33.438061, 40.256664, 54.173592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250069, 40.396835, 53.849537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625669, -0.515147, -0.585801,
		-0.622620, -0.782190, 0.022856,
		-0.469982, 0.350431, -0.810133,
		33.109074, 40.501965, 53.606499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378151, 39.773289, 53.646599>,  <33.438061, 40.256664, 54.173592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378151, 39.773289, 53.646599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276127, 40.055378, 53.381992>,  <33.214912, 40.224632, 53.223228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276127, 40.055378, 53.381992>,  <33.378151, 39.773289, 53.646599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276127, 40.055378, 53.381992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491018, -0.494899, -0.716922,
		-0.832973, -0.507677, -0.220046,
		-0.255064, 0.705223, -0.661516,
		33.199608, 40.266945, 53.183537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234379, 39.406704, 52.979755>,  <33.378151, 39.773289, 53.646599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234379, 39.406704, 52.979755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315315, 39.791138, 52.904518>,  <33.363876, 40.021797, 52.859375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315315, 39.791138, 52.904518>,  <33.234379, 39.406704, 52.979755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315315, 39.791138, 52.904518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598797, -0.273400, -0.752791,
		-0.774919, 0.039690, -0.630814,
		0.202343, 0.961081, -0.188097,
		33.376019, 40.079460, 52.848087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052895, 39.462330, 52.397442>,  <33.234379, 39.406704, 52.979755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052895, 39.462330, 52.397442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308643, 39.765533, 52.449017>,  <33.462093, 39.947456, 52.479961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308643, 39.765533, 52.449017>,  <33.052895, 39.462330, 52.397442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308643, 39.765533, 52.449017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456053, -0.238850, -0.857302,
		-0.619048, 0.606935, -0.498407,
		0.639371, 0.758011, 0.128935,
		33.500454, 39.992935, 52.487698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103672, 39.859680, 51.743809>,  <33.052895, 39.462330, 52.397442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103672, 39.859680, 51.743809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.437122, 39.926685, 51.954334>,  <33.637192, 39.966888, 52.080650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.437122, 39.926685, 51.954334>,  <33.103672, 39.859680, 51.743809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437122, 39.926685, 51.954334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552328, -0.251326, -0.794839,
		-0.000872, 0.953296, -0.302035,
		0.833627, 0.167516, 0.526313,
		33.687210, 39.976940, 52.112228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463829, 39.868004, 51.264751>,  <33.103672, 39.859680, 51.743809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463829, 39.868004, 51.264751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752399, 39.858894, 51.541599>,  <33.925541, 39.853428, 51.707706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752399, 39.858894, 51.541599>,  <33.463829, 39.868004, 51.264751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752399, 39.858894, 51.541599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656552, -0.295304, -0.694071,
		0.220190, 0.955132, -0.198089,
		0.721426, -0.022772, 0.692117,
		33.968826, 39.852062, 51.749233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024197, 40.117775, 50.940090>,  <33.463829, 39.868004, 51.264751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024197, 40.117775, 50.940090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176643, 39.906895, 51.243881>,  <34.268112, 39.780369, 51.426155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176643, 39.906895, 51.243881>,  <34.024197, 40.117775, 50.940090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176643, 39.906895, 51.243881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688714, -0.386144, -0.613649,
		0.616783, 0.756939, 0.215921,
		0.381118, -0.527197, 0.759482,
		34.290977, 39.748737, 51.471725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713142, 40.088409, 50.894356>,  <34.024197, 40.117775, 50.940090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713142, 40.088409, 50.894356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.646191, 39.778362, 51.138054>,  <34.606018, 39.592335, 51.284271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.646191, 39.778362, 51.138054>,  <34.713142, 40.088409, 50.894356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646191, 39.778362, 51.138054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696503, -0.530326, -0.483360,
		0.697759, 0.343436, 0.628637,
		-0.167379, -0.775117, 0.609244,
		34.595978, 39.545826, 51.320827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377754, 39.921078, 51.232002>,  <34.713142, 40.088409, 50.894356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377754, 39.921078, 51.232002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118862, 39.616718, 51.250404>,  <34.963528, 39.434101, 51.261444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118862, 39.616718, 51.250404>,  <35.377754, 39.921078, 51.232002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118862, 39.616718, 51.250404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676824, -0.601384, -0.424554,
		0.350709, -0.243650, 0.904233,
		-0.647234, -0.760902, 0.046003,
		34.924690, 39.388447, 51.264206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739716, 39.380672, 51.386486>,  <35.377754, 39.921078, 51.232002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739716, 39.380672, 51.386486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429417, 39.162830, 51.258968>,  <35.243237, 39.032127, 51.182457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429417, 39.162830, 51.258968>,  <35.739716, 39.380672, 51.386486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429417, 39.162830, 51.258968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625863, -0.599342, -0.499083,
		0.080733, -0.586683, 0.805782,
		-0.775743, -0.544602, -0.318797,
		35.196693, 38.999451, 51.163330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912178, 38.654182, 51.502720>,  <35.739716, 39.380672, 51.386486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912178, 38.654182, 51.502720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.617790, 38.655216, 51.231915>,  <35.441158, 38.655838, 51.069431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.617790, 38.655216, 51.231915>,  <35.912178, 38.654182, 51.502720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617790, 38.655216, 51.231915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527752, -0.624170, -0.576099,
		-0.424057, -0.781285, 0.458006,
		-0.735971, 0.002585, -0.677008,
		35.396999, 38.655991, 51.028812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814949, 38.016247, 51.285156>,  <35.912178, 38.654182, 51.502720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814949, 38.016247, 51.285156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637836, 38.222687, 50.991875>,  <35.531570, 38.346550, 50.815907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637836, 38.222687, 50.991875>,  <35.814949, 38.016247, 51.285156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637836, 38.222687, 50.991875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437314, -0.589568, -0.679092,
		-0.782754, -0.621327, 0.035350,
		-0.442779, 0.516103, -0.733202,
		35.505001, 38.377518, 50.771915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521744, 37.486835, 50.862522>,  <35.814949, 38.016247, 51.285156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521744, 37.486835, 50.862522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576794, 37.830765, 50.665844>,  <35.609825, 38.037121, 50.547836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576794, 37.830765, 50.665844>,  <35.521744, 37.486835, 50.862522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576794, 37.830765, 50.665844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550008, -0.479190, -0.684009,
		-0.823742, -0.176298, -0.538859,
		0.137627, 0.859823, -0.491694,
		35.618080, 38.088711, 50.518337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645771, 37.188648, 50.190659>,  <35.521744, 37.486835, 50.862522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645771, 37.188648, 50.190659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783192, 37.563759, 50.170490>,  <35.865646, 37.788826, 50.158390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783192, 37.563759, 50.170490>,  <35.645771, 37.188648, 50.190659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783192, 37.563759, 50.170490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641668, -0.273602, -0.716522,
		-0.685735, 0.213809, -0.695739,
		0.343554, 0.937778, -0.050424,
		35.886257, 37.845093, 50.155365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412174, 37.530605, 49.475811>,  <35.645771, 37.188648, 50.190659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412174, 37.530605, 49.475811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736023, 37.697346, 49.641098>,  <35.930332, 37.797390, 49.740269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736023, 37.697346, 49.641098>,  <35.412174, 37.530605, 49.475811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736023, 37.697346, 49.641098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469090, -0.036379, -0.882401,
		-0.352797, 0.908247, -0.224993,
		0.809623, 0.416850, 0.413215,
		35.978909, 37.822399, 49.765064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593185, 38.101501, 48.999477>,  <35.412174, 37.530605, 49.475811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593185, 38.101501, 48.999477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924408, 38.002617, 49.200760>,  <36.123142, 37.943287, 49.321529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924408, 38.002617, 49.200760>,  <35.593185, 38.101501, 48.999477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924408, 38.002617, 49.200760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500404, -0.078863, -0.862193,
		0.252832, 0.965746, 0.058405,
		0.828053, -0.247216, 0.503202,
		36.172825, 37.928452, 49.351719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576443, 38.582466, 48.526577>,  <35.593185, 38.101501, 48.999477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576443, 38.582466, 48.526577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583637, 38.932968, 48.333977>,  <35.587955, 39.143269, 48.218414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583637, 38.932968, 48.333977>,  <35.576443, 38.582466, 48.526577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583637, 38.932968, 48.333977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819762, 0.288638, 0.494650,
		0.572422, 0.385820, 0.723516,
		0.017989, 0.876259, -0.481504,
		35.589035, 39.195847, 48.189526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502579, 39.128078, 49.021667>,  <35.576443, 38.582466, 48.526577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502579, 39.128078, 49.021667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.376423, 39.272522, 48.670639>,  <35.300728, 39.359188, 48.460022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.376423, 39.272522, 48.670639>,  <35.502579, 39.128078, 49.021667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376423, 39.272522, 48.670639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915588, 0.127299, 0.381436,
		0.249454, 0.923794, 0.290478,
		-0.315390, 0.361109, -0.877570,
		35.281807, 39.380856, 48.407368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139301, 39.777885, 49.023922>,  <35.502579, 39.128078, 49.021667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139301, 39.777885, 49.023922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.005924, 39.638542, 48.673504>,  <34.925900, 39.554935, 48.463253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.005924, 39.638542, 48.673504>,  <35.139301, 39.777885, 49.023922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005924, 39.638542, 48.673504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916799, 0.336420, 0.215176,
		0.219761, 0.874909, -0.431555,
		-0.333443, -0.348362, -0.876048,
		34.905891, 39.534035, 48.410690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870659, 40.291580, 48.646324>,  <35.139301, 39.777885, 49.023922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870659, 40.291580, 48.646324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710106, 39.956127, 48.499035>,  <34.613773, 39.754856, 48.410660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710106, 39.956127, 48.499035>,  <34.870659, 40.291580, 48.646324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710106, 39.956127, 48.499035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915385, 0.353670, 0.192323,
		-0.031057, 0.414264, -0.909627,
		-0.401380, -0.838632, -0.368227,
		34.589691, 39.704536, 48.388565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261784, 40.496590, 48.347775>,  <34.870659, 40.291580, 48.646324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261784, 40.496590, 48.347775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203987, 40.100788, 48.348541>,  <34.169312, 39.863308, 48.348999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203987, 40.100788, 48.348541>,  <34.261784, 40.496590, 48.347775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203987, 40.100788, 48.348541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944893, 0.138548, 0.296617,
		-0.293769, 0.041050, -0.954995,
		-0.144488, -0.989504, 0.001913,
		34.160641, 39.803936, 48.349113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584412, 40.384388, 48.148270>,  <34.261784, 40.496590, 48.347775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584412, 40.384388, 48.148270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651596, 40.026001, 48.312721>,  <33.691906, 39.810970, 48.411392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651596, 40.026001, 48.312721>,  <33.584412, 40.384388, 48.148270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651596, 40.026001, 48.312721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939050, -0.018517, 0.343282,
		-0.299958, -0.443730, -0.844470,
		0.167962, -0.895969, 0.411130,
		33.701984, 39.757210, 48.436062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010708, 39.909290, 47.927040>,  <33.584412, 40.384388, 48.148270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010708, 39.909290, 47.927040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183628, 39.814327, 48.275005>,  <33.287380, 39.757351, 48.483784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183628, 39.814327, 48.275005>,  <33.010708, 39.909290, 47.927040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183628, 39.814327, 48.275005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894783, 0.006565, 0.446454,
		-0.111702, -0.971388, -0.209590,
		0.432304, -0.237407, 0.869915,
		33.313320, 39.743107, 48.535980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498043, 39.386440, 48.170502>,  <33.010708, 39.909290, 47.927040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498043, 39.386440, 48.170502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735348, 39.488174, 48.476013>,  <32.877731, 39.549213, 48.659321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735348, 39.488174, 48.476013>,  <32.498043, 39.386440, 48.170502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735348, 39.488174, 48.476013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804943, 0.199797, 0.558702,
		-0.010504, -0.946253, 0.323256,
		0.593259, 0.254335, 0.763779,
		32.913326, 39.564476, 48.705147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204544, 38.981186, 48.765648>,  <32.498043, 39.386440, 48.170502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204544, 38.981186, 48.765648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419888, 39.281075, 48.919575>,  <32.549095, 39.461010, 49.011932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419888, 39.281075, 48.919575>,  <32.204544, 38.981186, 48.765648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419888, 39.281075, 48.919575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749952, 0.217948, 0.624556,
		0.384374, -0.624830, 0.679591,
		0.538357, 0.749724, 0.384819,
		32.581394, 39.505993, 49.035019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151451, 38.953636, 49.543282>,  <32.204544, 38.981186, 48.765648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151451, 38.953636, 49.543282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287849, 39.323406, 49.474979>,  <32.369690, 39.545269, 49.433998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287849, 39.323406, 49.474979>,  <32.151451, 38.953636, 49.543282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287849, 39.323406, 49.474979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552280, 0.343993, 0.759378,
		0.760728, -0.164640, 0.627843,
		0.340997, 0.924426, -0.170758,
		32.390148, 39.600735, 49.423752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318035, 39.241638, 50.236618>,  <32.151451, 38.953636, 49.543282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318035, 39.241638, 50.236618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291771, 39.548275, 49.981113>,  <32.276012, 39.732258, 49.827808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291771, 39.548275, 49.981113>,  <32.318035, 39.241638, 50.236618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291771, 39.548275, 49.981113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440231, 0.552224, 0.707986,
		0.895481, 0.327688, 0.301223,
		-0.065656, 0.766596, -0.638765,
		32.272076, 39.778255, 49.789482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513466, 39.833973, 50.765221>,  <32.318035, 39.241638, 50.236618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513466, 39.833973, 50.765221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303913, 39.949139, 50.444561>,  <32.178181, 40.018238, 50.252163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303913, 39.949139, 50.444561>,  <32.513466, 39.833973, 50.765221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303913, 39.949139, 50.444561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629561, 0.503062, 0.592099,
		0.573758, 0.814881, -0.082284,
		-0.523884, 0.287919, -0.801653,
		32.146748, 40.035515, 50.204063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380890, 40.576450, 50.769829>,  <32.513466, 39.833973, 50.765221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380890, 40.576450, 50.769829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088715, 40.423534, 50.543446>,  <31.913408, 40.331783, 50.407616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088715, 40.423534, 50.543446>,  <32.380890, 40.576450, 50.769829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088715, 40.423534, 50.543446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667951, 0.572720, 0.475219,
		0.142464, 0.725152, -0.673690,
		-0.730442, -0.382290, -0.565958,
		31.869581, 40.308846, 50.373657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963232, 41.158463, 50.462833>,  <32.380890, 40.576450, 50.769829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963232, 41.158463, 50.462833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727715, 40.836533, 50.492729>,  <31.586405, 40.643375, 50.510666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727715, 40.836533, 50.492729>,  <31.963232, 41.158463, 50.462833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727715, 40.836533, 50.492729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702304, 0.555175, 0.445589,
		-0.400113, 0.209870, -0.892112,
		-0.588794, -0.804820, 0.074740,
		31.551077, 40.595085, 50.515152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237392, 41.366447, 50.568787>,  <31.963232, 41.158463, 50.462833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237392, 41.366447, 50.568787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.159689, 40.983204, 50.652966>,  <31.113068, 40.753258, 50.703472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.159689, 40.983204, 50.652966>,  <31.237392, 41.366447, 50.568787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159689, 40.983204, 50.652966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873201, 0.266646, 0.407948,
		-0.446973, -0.104511, -0.888421,
		-0.194258, -0.958112, 0.210443,
		31.101412, 40.695770, 50.716099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499258, 41.201355, 50.364437>,  <31.237392, 41.366447, 50.568787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499258, 41.201355, 50.364437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.623123, 40.943096, 50.643650>,  <30.697443, 40.788139, 50.811176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.623123, 40.943096, 50.643650>,  <30.499258, 41.201355, 50.364437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623123, 40.943096, 50.643650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641263, 0.400230, 0.654674,
		-0.702062, -0.650349, -0.290094,
		0.309663, -0.645648, 0.698031,
		30.716022, 40.749401, 50.853058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910583, 40.989700, 50.617046>,  <30.499258, 41.201355, 50.364437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910583, 40.989700, 50.617046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166452, 40.856644, 50.894222>,  <30.319973, 40.776810, 51.060528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166452, 40.856644, 50.894222>,  <29.910583, 40.989700, 50.617046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166452, 40.856644, 50.894222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682867, 0.167927, 0.710980,
		-0.352865, -0.927982, -0.119732,
		0.639670, -0.332641, 0.692944,
		30.358353, 40.756851, 51.102104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535280, 40.555840, 51.101192>,  <29.910583, 40.989700, 50.617046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535280, 40.555840, 51.101192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.852257, 40.711189, 51.289322>,  <30.042442, 40.804398, 51.402199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.852257, 40.711189, 51.289322>,  <29.535280, 40.555840, 51.101192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852257, 40.711189, 51.289322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547961, 0.114604, 0.828616,
		0.267912, -0.914348, 0.303631,
		0.792440, 0.388374, 0.470324,
		30.089989, 40.827702, 51.430420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504591, 40.209988, 51.791130>,  <29.535280, 40.555840, 51.101192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504591, 40.209988, 51.791130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724960, 40.543808, 51.790646>,  <29.857182, 40.744102, 51.790356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724960, 40.543808, 51.790646>,  <29.504591, 40.209988, 51.791130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724960, 40.543808, 51.790646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327885, 0.217785, 0.919272,
		0.767447, -0.506051, 0.393621,
		0.550923, 0.834555, -0.001212,
		29.890238, 40.794174, 51.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840456, 40.227856, 52.469528>,  <29.504591, 40.209988, 51.791130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840456, 40.227856, 52.469528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851355, 40.612110, 52.358948>,  <29.857893, 40.842663, 52.292599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851355, 40.612110, 52.358948>,  <29.840456, 40.227856, 52.469528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851355, 40.612110, 52.358948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212622, 0.275798, 0.937404,
		0.976754, 0.033242, 0.211767,
		0.027244, 0.960640, -0.276455,
		29.859528, 40.900303, 52.276012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089691, 40.532776, 52.981052>,  <29.840456, 40.227856, 52.469528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089691, 40.532776, 52.981052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957167, 40.860161, 52.793285>,  <29.877651, 41.056591, 52.680626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957167, 40.860161, 52.793285>,  <30.089691, 40.532776, 52.981052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957167, 40.860161, 52.793285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098396, 0.464832, 0.879914,
		0.938377, 0.337714, -0.073471,
		-0.331311, 0.818462, -0.469418,
		29.857773, 41.105698, 52.652462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356295, 41.139900, 53.349659>,  <30.089691, 40.532776, 52.981052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356295, 41.139900, 53.349659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034338, 41.267227, 53.149330>,  <29.841164, 41.343624, 53.029133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034338, 41.267227, 53.149330>,  <30.356295, 41.139900, 53.349659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034338, 41.267227, 53.149330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337169, 0.449190, 0.827373,
		0.488329, 0.834808, -0.254224,
		-0.804892, 0.318314, -0.500824,
		29.792870, 41.362720, 52.999084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293301, 41.893932, 53.337498>,  <30.356295, 41.139900, 53.349659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293301, 41.893932, 53.337498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.905466, 41.816875, 53.277107>,  <29.672766, 41.770641, 53.240871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.905466, 41.816875, 53.277107>,  <30.293301, 41.893932, 53.337498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905466, 41.816875, 53.277107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225812, 0.466132, 0.855412,
		-0.094411, 0.863487, -0.495455,
		-0.969585, -0.192640, -0.150978,
		29.614590, 41.759083, 53.231815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922009, 42.518154, 53.505352>,  <30.293301, 41.893932, 53.337498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922009, 42.518154, 53.505352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.647348, 42.227829, 53.521862>,  <29.482553, 42.053635, 53.531769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.647348, 42.227829, 53.521862>,  <29.922009, 42.518154, 53.505352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647348, 42.227829, 53.521862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349971, 0.379779, 0.856322,
		-0.637209, 0.573547, -0.514790,
		-0.686648, -0.725818, 0.041274,
		29.441355, 42.010082, 53.534245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297304, 42.828045, 53.859684>,  <29.922009, 42.518154, 53.505352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297304, 42.828045, 53.859684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.212431, 42.437225, 53.867256>,  <29.161507, 42.202736, 53.871799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.212431, 42.437225, 53.867256>,  <29.297304, 42.828045, 53.859684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212431, 42.437225, 53.867256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336525, 0.091239, 0.937244,
		-0.917458, 0.192499, -0.348160,
		-0.212185, -0.977046, 0.018927,
		29.148775, 42.144112, 53.872932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508516, 42.701141, 54.207390>,  <29.297304, 42.828045, 53.859684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508516, 42.701141, 54.207390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.687159, 42.345669, 54.248947>,  <28.794344, 42.132385, 54.273880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.687159, 42.345669, 54.248947>,  <28.508516, 42.701141, 54.207390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687159, 42.345669, 54.248947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398136, -0.093403, 0.912559,
		-0.801269, -0.448915, -0.395530,
		0.446605, -0.888679, 0.103889,
		28.821140, 42.079063, 54.280113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963608, 42.157879, 54.375801>,  <28.508516, 42.701141, 54.207390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963608, 42.157879, 54.375801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.325987, 42.053749, 54.509365>,  <28.543413, 41.991272, 54.589504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.325987, 42.053749, 54.509365>,  <27.963608, 42.157879, 54.375801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325987, 42.053749, 54.509365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355461, -0.039199, 0.933869,
		-0.230021, -0.964725, -0.128048,
		0.905946, -0.260326, 0.333905,
		28.597771, 41.975651, 54.609535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827953, 41.763847, 54.924843>,  <27.963608, 42.157879, 54.375801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827953, 41.763847, 54.924843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210102, 41.865936, 54.984352>,  <28.439390, 41.927189, 55.020058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210102, 41.865936, 54.984352>,  <27.827953, 41.763847, 54.924843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210102, 41.865936, 54.984352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125449, -0.105440, 0.986481,
		0.267454, -0.961117, -0.068717,
		0.955370, 0.255218, 0.148771,
		28.496714, 41.942501, 55.028984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175171, 41.185429, 55.364815>,  <27.827953, 41.763847, 54.924843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175171, 41.185429, 55.364815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.338070, 41.548431, 55.405949>,  <28.435810, 41.766235, 55.430630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.338070, 41.548431, 55.405949>,  <28.175171, 41.185429, 55.364815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338070, 41.548431, 55.405949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140501, -0.049000, 0.988867,
		0.902446, -0.417163, 0.107551,
		0.407248, 0.907510, 0.102832,
		28.460245, 41.820683, 55.436798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572754, 41.134541, 55.936111>,  <28.175171, 41.185429, 55.364815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572754, 41.134541, 55.936111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.521408, 41.529137, 55.895405>,  <28.490601, 41.765896, 55.870979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.521408, 41.529137, 55.895405>,  <28.572754, 41.134541, 55.936111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521408, 41.529137, 55.895405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204382, 0.074097, 0.976083,
		0.970438, 0.146094, 0.192110,
		-0.128365, 0.986492, -0.101766,
		28.482899, 41.825085, 55.864876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980944, 41.478382, 56.527527>,  <28.572754, 41.134541, 55.936111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980944, 41.478382, 56.527527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695959, 41.719799, 56.384342>,  <28.524967, 41.864647, 56.298431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695959, 41.719799, 56.384342>,  <28.980944, 41.478382, 56.527527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695959, 41.719799, 56.384342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327232, 0.165506, 0.930337,
		0.620739, 0.779968, 0.079580,
		-0.712462, 0.603538, -0.357966,
		28.482220, 41.900860, 56.276951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963356, 42.117828, 56.843433>,  <28.980944, 41.478382, 56.527527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963356, 42.117828, 56.843433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587435, 42.098774, 56.708080>,  <28.361881, 42.087341, 56.626869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587435, 42.098774, 56.708080>,  <28.963356, 42.117828, 56.843433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587435, 42.098774, 56.708080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339636, 0.239299, 0.909606,
		0.037647, 0.969777, -0.241072,
		-0.939803, -0.047633, -0.338380,
		28.305494, 42.084484, 56.606567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670948, 42.769829, 57.019497>,  <28.963356, 42.117828, 56.843433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670948, 42.769829, 57.019497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378382, 42.501045, 56.973026>,  <28.202843, 42.339775, 56.945145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378382, 42.501045, 56.973026>,  <28.670948, 42.769829, 57.019497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378382, 42.501045, 56.973026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406862, 0.293283, 0.865129,
		-0.547260, 0.680039, -0.487908,
		-0.731416, -0.671961, -0.116179,
		28.158957, 42.299458, 56.938171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006275, 43.244740, 57.293804>,  <28.670948, 42.769829, 57.019497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006275, 43.244740, 57.293804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.888645, 42.863445, 57.265900>,  <27.818068, 42.634670, 57.249157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.888645, 42.863445, 57.265900>,  <28.006275, 43.244740, 57.293804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888645, 42.863445, 57.265900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557014, 0.111614, 0.822969,
		-0.776695, 0.280873, -0.563787,
		-0.294076, -0.953233, -0.069760,
		27.800423, 42.577477, 57.244972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223238, 43.233288, 57.323509>,  <28.006275, 43.244740, 57.293804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223238, 43.233288, 57.323509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.326256, 42.862137, 57.431374>,  <27.388065, 42.639446, 57.496094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.326256, 42.862137, 57.431374>,  <27.223238, 43.233288, 57.323509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326256, 42.862137, 57.431374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612564, 0.059047, 0.788212,
		-0.747286, -0.368183, -0.553177,
		0.257543, -0.927876, 0.269661,
		27.403519, 42.583775, 57.512272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602057, 42.843269, 57.353313>,  <27.223238, 43.233288, 57.323509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602057, 42.843269, 57.353313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870771, 42.637100, 57.566120>,  <27.032000, 42.513397, 57.693806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870771, 42.637100, 57.566120>,  <26.602057, 42.843269, 57.353313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870771, 42.637100, 57.566120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684604, -0.157738, 0.711643,
		-0.282879, -0.842292, -0.458828,
		0.671787, -0.515425, 0.532016,
		27.072308, 42.482475, 57.725727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232780, 42.314274, 57.696121>,  <26.602057, 42.843269, 57.353313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232780, 42.314274, 57.696121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.569925, 42.352364, 57.907974>,  <26.772213, 42.375217, 58.035088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.569925, 42.352364, 57.907974>,  <26.232780, 42.314274, 57.696121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569925, 42.352364, 57.907974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532150, 0.001183, 0.846649,
		0.079993, -0.995455, 0.051670,
		0.842863, 0.095222, 0.529637,
		26.822784, 42.380928, 58.066864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066967, 41.949066, 58.357838>,  <26.232780, 42.314274, 57.696121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066967, 41.949066, 58.357838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.408695, 42.139011, 58.442345>,  <26.613733, 42.252979, 58.493050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.408695, 42.139011, 58.442345>,  <26.066967, 41.949066, 58.357838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408695, 42.139011, 58.442345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279477, 0.077002, 0.957060,
		0.438209, -0.876682, 0.198499,
		0.854322, 0.474868, 0.211269,
		26.664991, 42.281471, 58.505726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694693, 41.530499, 58.807472>,  <26.066967, 41.949066, 58.357838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694693, 41.530499, 58.807472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.602331, 41.913597, 58.876068>,  <26.546915, 42.143456, 58.917225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.602331, 41.913597, 58.876068>,  <26.694693, 41.530499, 58.807472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602331, 41.913597, 58.876068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302060, -0.238103, 0.923075,
		0.924902, 0.161342, 0.344275,
		-0.230904, 0.957745, 0.171486,
		26.533060, 42.200920, 58.927513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709391, 40.785854, 58.598309>,  <26.694693, 41.530499, 58.807472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709391, 40.785854, 58.598309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.484674, 40.463688, 58.673889>,  <26.349846, 40.270390, 58.719238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.484674, 40.463688, 58.673889>,  <26.709391, 40.785854, 58.598309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484674, 40.463688, 58.673889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628472, -0.564031, -0.535623,
		0.537975, -0.182153, 0.823045,
		-0.561789, -0.805413, 0.188956,
		26.316137, 40.222065, 58.730576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118353, 40.232536, 58.781967>,  <26.709391, 40.785854, 58.598309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118353, 40.232536, 58.781967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784695, 40.030983, 58.692257>,  <26.584499, 39.910049, 58.638432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784695, 40.030983, 58.692257>,  <27.118353, 40.232536, 58.781967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784695, 40.030983, 58.692257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550924, -0.741946, -0.382098,
		0.026132, -0.442285, 0.896494,
		-0.834147, -0.503885, -0.224277,
		26.534451, 39.879818, 58.624973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314392, 39.636822, 58.945553>,  <27.118353, 40.232536, 58.781967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314392, 39.636822, 58.945553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.992907, 39.595390, 58.711182>,  <26.800014, 39.570530, 58.570557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.992907, 39.595390, 58.711182>,  <27.314392, 39.636822, 58.945553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992907, 39.595390, 58.711182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503245, -0.643737, -0.576496,
		-0.317470, -0.758204, 0.569507,
		-0.803715, -0.103581, -0.585930,
		26.751793, 39.564316, 58.535404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477644, 39.123512, 58.664352>,  <27.314392, 39.636822, 58.945553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477644, 39.123512, 58.664352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.163858, 39.204990, 58.430046>,  <26.975588, 39.253880, 58.289463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.163858, 39.204990, 58.430046>,  <27.477644, 39.123512, 58.664352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163858, 39.204990, 58.430046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415977, -0.527721, -0.740590,
		-0.459976, -0.824633, 0.329246,
		-0.784465, 0.203695, -0.585767,
		26.928520, 39.266098, 58.254314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268038, 38.537891, 58.451046>,  <27.477644, 39.123512, 58.664352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268038, 38.537891, 58.451046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.145103, 38.810040, 58.184921>,  <27.071342, 38.973328, 58.025246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.145103, 38.810040, 58.184921>,  <27.268038, 38.537891, 58.451046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145103, 38.810040, 58.184921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599009, -0.404937, -0.690807,
		-0.739415, -0.610837, -0.283097,
		-0.307334, 0.680371, -0.665313,
		27.052904, 39.014153, 57.985329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074654, 38.244247, 57.799549>,  <27.268038, 38.537891, 58.451046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074654, 38.244247, 57.799549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.185534, 38.608978, 57.678398>,  <27.252062, 38.827816, 57.605709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.185534, 38.608978, 57.678398>,  <27.074654, 38.244247, 57.799549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185534, 38.608978, 57.678398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375710, -0.392997, -0.839283,
		-0.884310, 0.118854, -0.451520,
		0.277198, 0.911826, -0.302876,
		27.268694, 38.882526, 57.587536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887358, 38.213402, 57.098721>,  <27.074654, 38.244247, 57.799549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887358, 38.213402, 57.098721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.138197, 38.524212, 57.120544>,  <27.288700, 38.710697, 57.133640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.138197, 38.524212, 57.120544>,  <26.887358, 38.213402, 57.098721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138197, 38.524212, 57.120544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452199, -0.306122, -0.837738,
		-0.634243, 0.550016, -0.543340,
		0.627098, 0.777027, 0.054561,
		27.326326, 38.757320, 57.136913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893288, 38.478802, 56.410889>,  <26.887358, 38.213402, 57.098721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893288, 38.478802, 56.410889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.222208, 38.642124, 56.569435>,  <27.419559, 38.740120, 56.664562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.222208, 38.642124, 56.569435>,  <26.893288, 38.478802, 56.410889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222208, 38.642124, 56.569435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476729, -0.113966, -0.871631,
		-0.310725, 0.905701, -0.288368,
		0.822301, 0.408311, 0.396362,
		27.468899, 38.764618, 56.688343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132441, 39.023926, 55.968235>,  <26.893288, 38.478802, 56.410889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132441, 39.023926, 55.968235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.454363, 38.929897, 56.186234>,  <27.647516, 38.873478, 56.317032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.454363, 38.929897, 56.186234>,  <27.132441, 39.023926, 55.968235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454363, 38.929897, 56.186234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546265, -0.065730, -0.835029,
		0.232118, 0.969752, 0.075514,
		0.804808, -0.235076, 0.544999,
		27.695805, 38.859375, 56.349731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680084, 39.425781, 55.716427>,  <27.132441, 39.023926, 55.968235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680084, 39.425781, 55.716427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.852438, 39.114868, 55.899803>,  <27.955851, 38.928318, 56.009827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.852438, 39.114868, 55.899803>,  <27.680084, 39.425781, 55.716427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852438, 39.114868, 55.899803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623504, -0.110818, -0.773926,
		0.652365, 0.619311, 0.436891,
		0.430885, -0.777286, 0.458437,
		27.981703, 38.881683, 56.037334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341106, 39.657139, 55.819042>,  <27.680084, 39.425781, 55.716427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341106, 39.657139, 55.819042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.344374, 39.257156, 55.817181>,  <28.346334, 39.017166, 55.816063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.344374, 39.257156, 55.817181>,  <28.341106, 39.657139, 55.819042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344374, 39.257156, 55.817181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620991, 0.008719, -0.783769,
		0.783775, 0.003516, 0.621035,
		0.008171, -0.999956, -0.004651,
		28.346825, 38.957169, 55.815784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064241, 39.421524, 55.629597>,  <28.341106, 39.657139, 55.819042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064241, 39.421524, 55.629597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.852709, 39.085678, 55.579971>,  <28.725790, 38.884171, 55.550198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.852709, 39.085678, 55.579971>,  <29.064241, 39.421524, 55.629597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852709, 39.085678, 55.579971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659612, -0.314594, -0.682600,
		0.534088, -0.442814, 0.720185,
		-0.528830, -0.839611, -0.124065,
		28.694059, 38.833794, 55.542751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583969, 38.873550, 55.631027>,  <29.064241, 39.421524, 55.629597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583969, 38.873550, 55.631027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.255682, 38.768299, 55.428173>,  <29.058710, 38.705147, 55.306461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.255682, 38.768299, 55.428173>,  <29.583969, 38.873550, 55.631027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255682, 38.768299, 55.428173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569732, -0.310426, -0.760948,
		0.042799, -0.913454, 0.404684,
		-0.820715, -0.263130, -0.507138,
		29.009468, 38.689362, 55.276031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865589, 38.362492, 55.287655>,  <29.583969, 38.873550, 55.631027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865589, 38.362492, 55.287655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515436, 38.441238, 55.111042>,  <29.305344, 38.488487, 55.005074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515436, 38.441238, 55.111042>,  <29.865589, 38.362492, 55.287655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515436, 38.441238, 55.111042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318723, -0.451692, -0.833301,
		-0.363480, -0.870184, 0.332660,
		-0.875384, 0.196862, -0.441529,
		29.252821, 38.500298, 54.978584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603447, 37.706196, 54.946510>,  <29.865589, 38.362492, 55.287655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603447, 37.706196, 54.946510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432861, 38.021523, 54.769115>,  <29.330509, 38.210720, 54.662678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432861, 38.021523, 54.769115>,  <29.603447, 37.706196, 54.946510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432861, 38.021523, 54.769115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115743, -0.438719, -0.891139,
		-0.897067, -0.431371, 0.095857,
		-0.426466, 0.788317, -0.443489,
		29.304922, 38.258018, 54.636070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410109, 37.446243, 54.215603>,  <29.603447, 37.706196, 54.946510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410109, 37.446243, 54.215603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.364935, 37.842030, 54.179371>,  <29.337831, 38.079502, 54.157631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.364935, 37.842030, 54.179371>,  <29.410109, 37.446243, 54.215603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364935, 37.842030, 54.179371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408843, -0.036812, -0.911862,
		-0.905590, -0.140011, -0.400378,
		-0.112932, 0.989465, -0.090579,
		29.331055, 38.138870, 54.152199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084513, 37.636726, 53.600307>,  <29.410109, 37.446243, 54.215603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084513, 37.636726, 53.600307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.301435, 37.959816, 53.692814>,  <29.431589, 38.153671, 53.748318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.301435, 37.959816, 53.692814>,  <29.084513, 37.636726, 53.600307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301435, 37.959816, 53.692814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267801, 0.094724, -0.958807,
		-0.796358, 0.581901, -0.164940,
		0.542307, 0.807724, 0.231268,
		29.464127, 38.202133, 53.762196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922693, 37.922340, 53.045353>,  <29.084513, 37.636726, 53.600307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922693, 37.922340, 53.045353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.218613, 38.146820, 53.193810>,  <29.396164, 38.281509, 53.282883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.218613, 38.146820, 53.193810>,  <28.922693, 37.922340, 53.045353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218613, 38.146820, 53.193810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266624, 0.261932, -0.927525,
		-0.617744, 0.785139, 0.044147,
		0.739800, 0.561202, 0.371144,
		29.440552, 38.315182, 53.305153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792786, 38.602955, 52.848423>,  <28.922693, 37.922340, 53.045353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792786, 38.602955, 52.848423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186916, 38.543701, 52.882339>,  <29.423395, 38.508148, 52.902687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186916, 38.543701, 52.882339>,  <28.792786, 38.602955, 52.848423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186916, 38.543701, 52.882339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114476, 0.205090, -0.972025,
		0.126598, 0.967469, 0.219038,
		0.985326, -0.148131, 0.084787,
		29.482513, 38.499260, 52.907776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115067, 39.239235, 52.581692>,  <28.792786, 38.602955, 52.848423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115067, 39.239235, 52.581692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.412384, 38.971989, 52.568188>,  <29.590775, 38.811642, 52.560085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.412384, 38.971989, 52.568188>,  <29.115067, 39.239235, 52.581692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412384, 38.971989, 52.568188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212840, 0.284036, -0.934892,
		0.634203, 0.687713, 0.353323,
		0.743294, -0.668113, -0.033764,
		29.635372, 38.771553, 52.558060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766821, 39.535076, 52.258450>,  <29.115067, 39.239235, 52.581692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766821, 39.535076, 52.258450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832708, 39.141132, 52.236835>,  <29.872240, 38.904766, 52.223866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832708, 39.141132, 52.236835>,  <29.766821, 39.535076, 52.258450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832708, 39.141132, 52.236835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451975, 0.124063, -0.883361,
		0.876691, 0.121081, 0.465567,
		0.164718, -0.984859, -0.054039,
		29.882124, 38.845676, 52.220623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282425, 39.479137, 51.728386>,  <29.766821, 39.535076, 52.258450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282425, 39.479137, 51.728386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.208189, 39.088520, 51.772076>,  <30.163649, 38.854149, 51.798290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.208189, 39.088520, 51.772076>,  <30.282425, 39.479137, 51.728386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208189, 39.088520, 51.772076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441722, -0.182198, -0.878456,
		0.877746, -0.114786, 0.465173,
		-0.185588, -0.976539, 0.109220,
		30.152514, 38.795559, 51.804840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905651, 38.964725, 51.659924>,  <30.282425, 39.479137, 51.728386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905651, 38.964725, 51.659924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.579466, 38.746643, 51.582184>,  <30.383755, 38.615795, 51.535542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.579466, 38.746643, 51.582184>,  <30.905651, 38.964725, 51.659924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579466, 38.746643, 51.582184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433313, -0.352424, -0.829480,
		0.383747, -0.760622, 0.523634,
		-0.815462, -0.545208, -0.194346,
		30.334827, 38.583080, 51.523880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138699, 38.257336, 51.338207>,  <30.905651, 38.964725, 51.659924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138699, 38.257336, 51.338207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.781727, 38.357471, 51.188061>,  <30.567545, 38.417553, 51.097973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.781727, 38.357471, 51.188061>,  <31.138699, 38.257336, 51.338207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781727, 38.357471, 51.188061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275039, -0.357666, -0.892428,
		-0.357666, -0.899670, 0.250339,
		0.892428, -0.250339, 0.375369,
		30.513998, 38.432571, 51.075451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066322, 37.790672, 50.734715>,  <31.138699, 38.257336, 51.338207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066322, 37.790672, 50.734715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744993, 38.019230, 50.667557>,  <30.552197, 38.156364, 50.627262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744993, 38.019230, 50.667557>,  <31.066322, 37.790672, 50.734715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744993, 38.019230, 50.667557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032743, -0.323865, -0.945537,
		-0.594647, -0.754071, 0.278877,
		-0.803320, 0.571392, -0.167894,
		30.503998, 38.190647, 50.617188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517097, 37.390614, 50.504353>,  <31.066322, 37.790672, 50.734715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517097, 37.390614, 50.504353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418612, 37.753468, 50.367832>,  <30.359520, 37.971180, 50.285919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418612, 37.753468, 50.367832>,  <30.517097, 37.390614, 50.504353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418612, 37.753468, 50.367832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106867, -0.375401, -0.920681,
		-0.963306, -0.190211, 0.189372,
		-0.246214, 0.907135, -0.341298,
		30.344748, 38.025608, 50.265442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825876, 37.319878, 50.011314>,  <30.517097, 37.390614, 50.504353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825876, 37.319878, 50.011314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.988375, 37.661896, 49.882404>,  <30.085873, 37.867107, 49.805058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.988375, 37.661896, 49.882404>,  <29.825876, 37.319878, 50.011314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988375, 37.661896, 49.882404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110308, -0.304217, -0.946195,
		-0.907082, 0.419936, -0.029268,
		0.406245, 0.855047, -0.322272,
		30.110249, 37.918411, 49.785721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545130, 37.583275, 49.476753>,  <29.825876, 37.319878, 50.011314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545130, 37.583275, 49.476753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906353, 37.752625, 49.447788>,  <30.123087, 37.854233, 49.430408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906353, 37.752625, 49.447788>,  <29.545130, 37.583275, 49.476753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906353, 37.752625, 49.447788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111942, -0.394749, -0.911944,
		-0.414676, 0.815432, -0.403874,
		0.903057, 0.423372, -0.072412,
		30.177271, 37.879635, 49.426064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553652, 37.750576, 48.787441>,  <29.545130, 37.583275, 49.476753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553652, 37.750576, 48.787441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938799, 37.751236, 48.895428>,  <30.169888, 37.751633, 48.960220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938799, 37.751236, 48.895428>,  <29.553652, 37.750576, 48.787441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938799, 37.751236, 48.895428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217595, -0.596646, -0.772441,
		0.159795, 0.802503, -0.574852,
		0.962870, 0.001653, 0.269962,
		30.227659, 37.751732, 48.976418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906721, 37.852478, 48.192604>,  <29.553652, 37.750576, 48.787441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906721, 37.852478, 48.192604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169827, 37.692974, 48.448208>,  <30.327690, 37.597271, 48.601570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169827, 37.692974, 48.448208>,  <29.906721, 37.852478, 48.192604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169827, 37.692974, 48.448208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219870, -0.709772, -0.669239,
		0.720418, 0.580702, -0.379188,
		0.657765, -0.398760, 0.639012,
		30.367157, 37.573345, 48.639912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475443, 37.539700, 47.763935>,  <29.906721, 37.852478, 48.192604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475443, 37.539700, 47.763935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574450, 37.379223, 48.116703>,  <30.633854, 37.282936, 48.328365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574450, 37.379223, 48.116703>,  <30.475443, 37.539700, 47.763935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574450, 37.379223, 48.116703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377051, -0.798604, -0.469110,
		0.892507, 0.448641, -0.046399,
		0.247516, -0.401189, 0.881920,
		30.648705, 37.258865, 48.381279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129025, 37.418591, 47.757404>,  <30.475443, 37.539700, 47.763935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129025, 37.418591, 47.757404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015759, 37.180210, 48.057980>,  <30.947798, 37.037182, 48.238323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015759, 37.180210, 48.057980>,  <31.129025, 37.418591, 47.757404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015759, 37.180210, 48.057980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477322, -0.767149, -0.428539,
		0.831854, 0.237330, 0.501691,
		-0.283167, -0.595950, 0.751439,
		30.930809, 37.001427, 48.283413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699825, 37.078419, 48.097038>,  <31.129025, 37.418591, 47.757404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699825, 37.078419, 48.097038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.400957, 36.837582, 48.209625>,  <31.221636, 36.693081, 48.277176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.400957, 36.837582, 48.209625>,  <31.699825, 37.078419, 48.097038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400957, 36.837582, 48.209625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529175, -0.795142, -0.296181,
		0.402135, -0.072352, 0.912717,
		-0.747169, -0.602091, 0.281468,
		31.176805, 36.656956, 48.294067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035545, 36.485912, 48.363964>,  <31.699825, 37.078419, 48.097038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035545, 36.485912, 48.363964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666588, 36.350380, 48.289791>,  <31.445213, 36.269062, 48.245289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666588, 36.350380, 48.289791>,  <32.035545, 36.485912, 48.363964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666588, 36.350380, 48.289791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385359, -0.839873, -0.382246,
		-0.026223, -0.424039, 0.905264,
		-0.922394, -0.338828, -0.185431,
		31.389870, 36.248730, 48.234161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927467, 35.770016, 48.601131>,  <32.035545, 36.485912, 48.363964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927467, 35.770016, 48.601131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655922, 35.811348, 48.310349>,  <31.492994, 35.836147, 48.135880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655922, 35.811348, 48.310349>,  <31.927467, 35.770016, 48.601131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655922, 35.811348, 48.310349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253440, -0.896227, -0.364066,
		-0.689137, -0.431392, 0.582230,
		-0.678866, 0.103331, -0.726955,
		31.452263, 35.842346, 48.092262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590202, 35.110268, 48.547829>,  <31.927467, 35.770016, 48.601131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590202, 35.110268, 48.547829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.483686, 35.287804, 48.205578>,  <31.419777, 35.394325, 48.000229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.483686, 35.287804, 48.205578>,  <31.590202, 35.110268, 48.547829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483686, 35.287804, 48.205578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232772, -0.831795, -0.503919,
		-0.935364, -0.333355, 0.118187,
		-0.266291, 0.443837, -0.855627,
		31.403799, 35.420956, 47.948891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251085, 34.613029, 48.207680>,  <31.590202, 35.110268, 48.547829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251085, 34.613029, 48.207680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364262, 34.870914, 47.923630>,  <31.432167, 35.025646, 47.753201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364262, 34.870914, 47.923630>,  <31.251085, 34.613029, 48.207680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364262, 34.870914, 47.923630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292408, -0.763120, -0.576320,
		-0.913477, -0.044582, -0.404440,
		0.282943, 0.644717, -0.710129,
		31.449144, 35.064331, 47.710590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062567, 34.182987, 47.540001>,  <31.251085, 34.613029, 48.207680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062567, 34.182987, 47.540001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285725, 34.499222, 47.439030>,  <31.419621, 34.688965, 47.378445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285725, 34.499222, 47.439030>,  <31.062567, 34.182987, 47.540001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285725, 34.499222, 47.439030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444074, -0.541338, -0.713969,
		-0.701106, 0.286222, -0.653090,
		0.557896, 0.790588, -0.252432,
		31.453094, 34.736397, 47.363300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165895, 34.019081, 46.970905>,  <31.062567, 34.182987, 47.540001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165895, 34.019081, 46.970905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453243, 34.296215, 46.995979>,  <31.625652, 34.462494, 47.011024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453243, 34.296215, 46.995979>,  <31.165895, 34.019081, 46.970905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453243, 34.296215, 46.995979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541365, -0.500173, -0.675834,
		-0.436885, 0.519434, -0.734384,
		0.718370, 0.692831, 0.062685,
		31.668755, 34.504063, 47.014786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405331, 34.173820, 46.297802>,  <31.165895, 34.019081, 46.970905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405331, 34.173820, 46.297802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.702469, 34.252220, 46.553852>,  <31.880753, 34.299259, 46.707481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.702469, 34.252220, 46.553852>,  <31.405331, 34.173820, 46.297802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702469, 34.252220, 46.553852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660636, -0.369372, -0.653548,
		0.108353, 0.908377, -0.403869,
		0.742846, 0.195997, 0.640129,
		31.925323, 34.311020, 46.745892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871891, 34.203182, 45.746269>,  <31.405331, 34.173820, 46.297802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871891, 34.203182, 45.746269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078625, 34.238445, 46.086884>,  <32.202663, 34.259605, 46.291252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078625, 34.238445, 46.086884>,  <31.871891, 34.203182, 45.746269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078625, 34.238445, 46.086884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838248, -0.254106, -0.482464,
		0.173845, 0.963150, -0.205232,
		0.516835, 0.088161, 0.851533,
		32.233677, 34.264893, 46.342342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374367, 34.687866, 45.559723>,  <31.871891, 34.203182, 45.746269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374367, 34.687866, 45.559723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497955, 34.459263, 45.863804>,  <32.572109, 34.322102, 46.046253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497955, 34.459263, 45.863804>,  <32.374367, 34.687866, 45.559723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497955, 34.459263, 45.863804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840317, -0.210304, -0.499639,
		0.445424, 0.793187, 0.415273,
		0.308974, -0.571512, 0.760203,
		32.590649, 34.287807, 46.091866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995552, 34.843987, 45.952229>,  <32.374367, 34.687866, 45.559723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995552, 34.843987, 45.952229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975288, 34.444508, 45.954765>,  <32.963131, 34.204819, 45.956287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975288, 34.444508, 45.954765>,  <32.995552, 34.843987, 45.952229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975288, 34.444508, 45.954765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873458, -0.047382, -0.484589,
		0.484258, -0.019012, 0.874719,
		-0.050659, -0.998696, 0.006339,
		32.960091, 34.144897, 45.956669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610802, 34.501648, 46.130665>,  <32.995552, 34.843987, 45.952229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610802, 34.501648, 46.130665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420143, 34.280830, 45.857006>,  <33.305748, 34.148338, 45.692810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420143, 34.280830, 45.857006>,  <33.610802, 34.501648, 46.130665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420143, 34.280830, 45.857006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825544, -0.013619, -0.564173,
		0.302132, -0.833703, 0.462228,
		-0.476648, -0.552044, -0.684144,
		33.277149, 34.115215, 45.651764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139462, 33.998390, 46.080471>,  <33.610802, 34.501648, 46.130665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139462, 33.998390, 46.080471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888321, 34.006241, 45.769238>,  <33.737637, 34.010952, 45.582497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888321, 34.006241, 45.769238>,  <34.139462, 33.998390, 46.080471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888321, 34.006241, 45.769238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763911, 0.207087, -0.611192,
		0.149138, -0.978126, -0.145010,
		-0.627852, 0.019623, -0.778085,
		33.699966, 34.012127, 45.535812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896935, 34.047382, 46.255909>,  <34.139462, 33.998390, 46.080471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896935, 34.047382, 46.255909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176144, 34.301998, 46.124706>,  <35.343670, 34.454769, 46.045986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176144, 34.301998, 46.124706>,  <34.896935, 34.047382, 46.255909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176144, 34.301998, 46.124706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707980, -0.544782, 0.449418,
		0.107382, -0.545923, -0.830926,
		0.698021, 0.636538, -0.328003,
		35.385551, 34.492958, 46.026306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549850, 33.715942, 45.928112>,  <34.896935, 34.047382, 46.255909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549850, 33.715942, 45.928112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658928, 34.063004, 46.094398>,  <35.724377, 34.271240, 46.194172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658928, 34.063004, 46.094398>,  <35.549850, 33.715942, 45.928112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658928, 34.063004, 46.094398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730646, -0.467879, 0.497237,
		0.625932, 0.168145, -0.761535,
		0.272698, 0.867650, 0.415715,
		35.740738, 34.323299, 46.219112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150940, 33.607670, 46.215393>,  <35.549850, 33.715942, 45.928112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150940, 33.607670, 46.215393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048889, 33.948208, 46.398746>,  <35.987659, 34.152531, 46.508759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048889, 33.948208, 46.398746>,  <36.150940, 33.607670, 46.215393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048889, 33.948208, 46.398746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639448, -0.207041, 0.740432,
		0.725270, 0.482018, -0.491571,
		-0.255127, 0.851348, 0.458386,
		35.972351, 34.203613, 46.536263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767876, 33.988701, 46.310215>,  <36.150940, 33.607670, 46.215393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767876, 33.988701, 46.310215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527756, 34.161690, 46.579319>,  <36.383682, 34.265484, 46.740780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527756, 34.161690, 46.579319>,  <36.767876, 33.988701, 46.310215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527756, 34.161690, 46.579319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668880, -0.189668, 0.718767,
		0.438451, 0.881470, -0.175417,
		-0.600300, 0.432477, 0.672758,
		36.347664, 34.291431, 46.781147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157375, 34.509781, 46.690903>,  <36.767876, 33.988701, 46.310215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157375, 34.509781, 46.690903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842457, 34.439716, 46.927372>,  <36.653507, 34.397678, 47.069252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842457, 34.439716, 46.927372>,  <37.157375, 34.509781, 46.690903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842457, 34.439716, 46.927372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614466, -0.302168, 0.728784,
		0.050977, 0.937023, 0.345527,
		-0.787294, -0.175163, 0.591173,
		36.606270, 34.387169, 47.104725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402088, 34.701485, 47.283661>,  <37.157375, 34.509781, 46.690903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402088, 34.701485, 47.283661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072216, 34.503197, 47.392590>,  <36.874294, 34.384224, 47.457947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072216, 34.503197, 47.392590>,  <37.402088, 34.701485, 47.283661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072216, 34.503197, 47.392590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400418, -0.171660, 0.900110,
		-0.399457, 0.851348, 0.340060,
		-0.824682, -0.495721, 0.272324,
		36.824810, 34.354481, 47.474285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101135, 35.105171, 47.926403>,  <37.402088, 34.701485, 47.283661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101135, 35.105171, 47.926403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997849, 34.719467, 47.902641>,  <36.935875, 34.488045, 47.888382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997849, 34.719467, 47.902641>,  <37.101135, 35.105171, 47.926403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997849, 34.719467, 47.902641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413526, -0.165894, 0.895251,
		-0.873108, 0.206606, 0.441583,
		-0.258220, -0.964258, -0.059407,
		36.920383, 34.430191, 47.884819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189266, 34.813000, 48.591858>,  <37.101135, 35.105171, 47.926403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189266, 34.813000, 48.591858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183201, 34.475769, 48.376827>,  <37.179562, 34.273430, 48.247807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183201, 34.475769, 48.376827>,  <37.189266, 34.813000, 48.591858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183201, 34.475769, 48.376827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628699, -0.426103, 0.650518,
		-0.777500, -0.328111, 0.536504,
		-0.015164, -0.843077, -0.537578,
		37.178650, 34.222847, 48.215553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000862, 34.191082, 49.014107>,  <37.189266, 34.813000, 48.591858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000862, 34.191082, 49.014107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209507, 34.031502, 48.712444>,  <37.334694, 33.935753, 48.531445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209507, 34.031502, 48.712444>,  <37.000862, 34.191082, 49.014107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209507, 34.031502, 48.712444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612083, -0.440812, 0.656536,
		-0.594371, -0.804064, 0.014262,
		0.521610, -0.398956, -0.754160,
		37.365990, 33.911816, 48.486195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189732, 33.596794, 49.310905>,  <37.000862, 34.191082, 49.014107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189732, 33.596794, 49.310905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427422, 33.636429, 48.991634>,  <37.570034, 33.660210, 48.800072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427422, 33.636429, 48.991634>,  <37.189732, 33.596794, 49.310905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427422, 33.636429, 48.991634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757824, -0.401436, 0.514346,
		-0.269453, -0.910511, -0.313631,
		0.594220, 0.099085, -0.798176,
		37.605686, 33.666153, 48.752182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406292, 32.865063, 49.080158>,  <37.189732, 33.596794, 49.310905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406292, 32.865063, 49.080158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678268, 33.127319, 48.948822>,  <37.841454, 33.284676, 48.870018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678268, 33.127319, 48.948822>,  <37.406292, 32.865063, 49.080158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678268, 33.127319, 48.948822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690838, -0.422677, 0.586590,
		0.245812, -0.625678, -0.740340,
		0.679941, 0.655646, -0.328342,
		37.882252, 33.324013, 48.850319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103172, 32.545910, 49.067722>,  <37.406292, 32.865063, 49.080158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103172, 32.545910, 49.067722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197102, 32.934200, 49.047493>,  <38.253460, 33.167175, 49.035355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197102, 32.934200, 49.047493>,  <38.103172, 32.545910, 49.067722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197102, 32.934200, 49.047493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736031, -0.143581, 0.661546,
		0.634915, -0.192571, -0.748197,
		0.234821, 0.970722, -0.050577,
		38.267548, 33.225418, 49.032318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799999, 32.479092, 48.822311>,  <38.103172, 32.545910, 49.067722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799999, 32.479092, 48.822311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733185, 32.838539, 48.984589>,  <38.693096, 33.054207, 49.081955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733185, 32.838539, 48.984589>,  <38.799999, 32.479092, 48.822311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733185, 32.838539, 48.984589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825807, -0.097287, 0.555498,
		0.538648, 0.427817, -0.725831,
		-0.167038, 0.898614, 0.405698,
		38.683075, 33.108124, 49.106297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251179, 32.980270, 48.623199>,  <38.799999, 32.479092, 48.822311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251179, 32.980270, 48.623199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.157261, 32.944725, 49.010387>,  <39.100910, 32.923397, 49.242702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.157261, 32.944725, 49.010387>,  <39.251179, 32.980270, 48.623199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157261, 32.944725, 49.010387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957111, -0.195013, 0.214261,
		0.169728, 0.976767, 0.130838,
		-0.234798, -0.088860, 0.967974,
		39.086823, 32.918068, 49.300781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129715, 33.195515, 47.884369>,  <39.251179, 32.980270, 48.623199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129715, 33.195515, 47.884369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508190, 33.285275, 47.791100>,  <39.735275, 33.339130, 47.735138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508190, 33.285275, 47.791100>,  <39.129715, 33.195515, 47.884369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508190, 33.285275, 47.791100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225818, -0.058269, -0.972425,
		-0.231801, 0.972753, -0.004459,
		0.946189, 0.224402, -0.233172,
		39.792046, 33.352596, 47.721149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195049, 33.743862, 47.406933>,  <39.129715, 33.195515, 47.884369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195049, 33.743862, 47.406933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.520466, 33.519386, 47.345970>,  <39.715714, 33.384701, 47.309391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.520466, 33.519386, 47.345970>,  <39.195049, 33.743862, 47.406933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520466, 33.519386, 47.345970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282328, -0.152041, -0.947193,
		0.508378, 0.813606, -0.282129,
		0.813537, -0.561185, -0.152409,
		39.764526, 33.351032, 47.300247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597652, 33.915203, 46.700905>,  <39.195049, 33.743862, 47.406933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597652, 33.915203, 46.700905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659100, 33.545979, 46.841961>,  <39.695969, 33.324444, 46.926594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659100, 33.545979, 46.841961>,  <39.597652, 33.915203, 46.700905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659100, 33.545979, 46.841961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353804, -0.384599, -0.852588,
		0.922618, 0.006206, -0.385664,
		0.153617, -0.923063, 0.352643,
		39.705185, 33.269058, 46.947754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785995, 33.571392, 46.167591>,  <39.597652, 33.915203, 46.700905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785995, 33.571392, 46.167591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635208, 33.313374, 46.433468>,  <39.544735, 33.158562, 46.592995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635208, 33.313374, 46.433468>,  <39.785995, 33.571392, 46.167591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635208, 33.313374, 46.433468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557461, -0.415092, -0.718982,
		0.739682, -0.641573, -0.203109,
		-0.376971, -0.645044, 0.664688,
		39.522118, 33.119862, 46.632874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921295, 32.820450, 45.970734>,  <39.785995, 33.571392, 46.167591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921295, 32.820450, 45.970734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.597237, 32.849457, 46.203426>,  <39.402802, 32.866859, 46.343040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.597237, 32.849457, 46.203426>,  <39.921295, 32.820450, 45.970734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597237, 32.849457, 46.203426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543851, -0.463400, -0.699633,
		0.218839, -0.883177, 0.414858,
		-0.810145, 0.072514, 0.581727,
		39.354195, 32.871212, 46.377945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265556, 32.647621, 45.579121>,  <39.921295, 32.820450, 45.970734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265556, 32.647621, 45.579121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968124, 32.405064, 45.691811>,  <38.789665, 32.259529, 45.759426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968124, 32.405064, 45.691811>,  <39.265556, 32.647621, 45.579121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968124, 32.405064, 45.691811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095484, -0.320723, -0.942348,
		0.661789, -0.727615, 0.180583,
		-0.743584, -0.606393, 0.281727,
		38.745049, 32.223145, 45.776329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431969, 31.881285, 45.346622>,  <39.265556, 32.647621, 45.579121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431969, 31.881285, 45.346622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.042286, 31.961176, 45.388630>,  <38.808475, 32.009109, 45.413834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.042286, 31.961176, 45.388630>,  <39.431969, 31.881285, 45.346622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042286, 31.961176, 45.388630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195504, -0.514654, -0.834811,
		-0.112686, -0.833811, 0.540427,
		-0.974207, 0.199727, 0.105018,
		38.750023, 32.021095, 45.420135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736031, 32.171391, 44.742252>,  <39.431969, 31.881285, 45.346622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736031, 32.171391, 44.742252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.097939, 32.066593, 44.607937>,  <40.315083, 32.003716, 44.527348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.097939, 32.066593, 44.607937>,  <39.736031, 32.171391, 44.742252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097939, 32.066593, 44.607937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313974, 0.943011, 0.110229,
		0.287773, -0.205161, 0.935466,
		0.904769, -0.261991, -0.335788,
		40.369370, 31.987995, 44.507202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285725, 32.299767, 45.120842>,  <39.736031, 32.171391, 44.742252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285725, 32.299767, 45.120842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.460587, 32.301445, 44.761093>,  <40.565502, 32.302452, 44.545242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.460587, 32.301445, 44.761093>,  <40.285725, 32.299767, 45.120842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460587, 32.301445, 44.761093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403366, 0.892864, 0.200224,
		0.803860, -0.450307, 0.388630,
		0.437156, 0.004192, -0.899376,
		40.591732, 32.302704, 44.491280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004246, 32.392609, 45.257519>,  <40.285725, 32.299767, 45.120842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004246, 32.392609, 45.257519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.884670, 32.505146, 44.892776>,  <40.812923, 32.572670, 44.673931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.884670, 32.505146, 44.892776>,  <41.004246, 32.392609, 45.257519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884670, 32.505146, 44.892776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482187, 0.869125, 0.110079,
		0.823486, -0.406777, -0.395479,
		-0.298943, 0.281343, -0.911855,
		40.794987, 32.589550, 44.619221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610401, 32.726250, 44.934986>,  <41.004246, 32.392609, 45.257519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610401, 32.726250, 44.934986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.297291, 32.850510, 44.719299>,  <41.109425, 32.925064, 44.589886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.297291, 32.850510, 44.719299>,  <41.610401, 32.726250, 44.934986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297291, 32.850510, 44.719299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381603, 0.924074, -0.021599,
		0.491567, -0.222674, -0.841890,
		-0.782778, 0.310651, -0.539217,
		41.062458, 32.943707, 44.557533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825020, 33.416527, 44.706383>,  <41.610401, 32.726250, 44.934986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825020, 33.416527, 44.706383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.106159, 33.152000, 44.601562>,  <42.274841, 32.993286, 44.538670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.106159, 33.152000, 44.601562>,  <41.825020, 33.416527, 44.706383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106159, 33.152000, 44.601562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283045, 0.077970, -0.955932,
		0.652603, 0.746046, -0.132380,
		0.702848, -0.661314, -0.262048,
		42.317013, 32.953606, 44.522949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200497, 33.644428, 44.085793>,  <41.825020, 33.416527, 44.706383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200497, 33.644428, 44.085793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.175240, 33.246765, 44.120811>,  <42.160084, 33.008167, 44.141823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.175240, 33.246765, 44.120811>,  <42.200497, 33.644428, 44.085793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175240, 33.246765, 44.120811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281761, -0.066399, -0.957184,
		0.957405, -0.085111, -0.275922,
		-0.063146, -0.994157, 0.087551,
		42.156296, 32.948517, 44.147076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778015, 33.252628, 43.827755>,  <42.200497, 33.644428, 44.085793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778015, 33.252628, 43.827755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.498013, 32.973206, 43.768417>,  <42.330009, 32.805553, 43.732815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.498013, 32.973206, 43.768417>,  <42.778015, 33.252628, 43.827755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498013, 32.973206, 43.768417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087380, 0.289954, -0.953043,
		0.708767, -0.654177, -0.264011,
		-0.700010, -0.698554, -0.148348,
		42.288010, 32.763638, 43.723911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024426, 32.855038, 43.367851>,  <42.778015, 33.252628, 43.827755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024426, 32.855038, 43.367851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.625084, 32.875034, 43.356564>,  <42.385479, 32.887032, 43.349792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.625084, 32.875034, 43.356564>,  <43.024426, 32.855038, 43.367851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625084, 32.875034, 43.356564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047290, 0.437513, -0.897968,
		-0.032543, -0.897822, -0.439155,
		-0.998351, 0.049990, -0.028220,
		42.325577, 32.890030, 43.348099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708935, 32.504688, 42.813931>,  <43.024426, 32.855038, 43.367851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708935, 32.504688, 42.813931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.459641, 32.807354, 42.892952>,  <42.310062, 32.988953, 42.940365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.459641, 32.807354, 42.892952>,  <42.708935, 32.504688, 42.813931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459641, 32.807354, 42.892952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083741, 0.315733, -0.945145,
		-0.777535, -0.572508, -0.260141,
		-0.623239, 0.756668, 0.197551,
		42.272671, 33.034355, 42.952217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184933, 32.997353, 42.386257>,  <42.708935, 32.504688, 42.813931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184933, 32.997353, 42.386257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978085, 32.812496, 42.098087>,  <42.853977, 32.701584, 41.925186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978085, 32.812496, 42.098087>,  <43.184933, 32.997353, 42.386257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978085, 32.812496, 42.098087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619978, 0.378056, -0.687532,
		0.590097, -0.802186, 0.091015,
		-0.517120, -0.462138, -0.720427,
		42.822948, 32.673855, 41.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945446, 32.818554, 42.595234>,  <43.184933, 32.997353, 42.386257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945446, 32.818554, 42.595234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.268871, 32.738766, 42.816662>,  <44.462925, 32.690895, 42.949520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.268871, 32.738766, 42.816662>,  <43.945446, 32.818554, 42.595234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268871, 32.738766, 42.816662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580428, 0.424810, -0.694723,
		-0.096588, 0.883035, 0.459261,
		0.808563, -0.199466, 0.553569,
		44.511440, 32.678925, 42.982731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536339, 33.296734, 42.901382>,  <43.945446, 32.818554, 42.595234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536339, 33.296734, 42.901382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.662788, 32.928356, 42.810230>,  <44.738659, 32.707329, 42.755539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.662788, 32.928356, 42.810230>,  <44.536339, 33.296734, 42.901382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662788, 32.928356, 42.810230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554539, 0.374259, -0.743247,
		0.769774, 0.108591, 0.629012,
		0.316123, -0.920944, -0.227877,
		44.757626, 32.652073, 42.741867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267471, 33.241936, 43.015968>,  <44.536339, 33.296734, 42.901382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267471, 33.241936, 43.015968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.165966, 32.992443, 42.720249>,  <45.105061, 32.842747, 42.542820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.165966, 32.992443, 42.720249>,  <45.267471, 33.241936, 43.015968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165966, 32.992443, 42.720249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619235, 0.482398, -0.619549,
		0.743068, -0.615019, 0.263821,
		-0.253767, -0.623734, -0.739296,
		45.089836, 32.805325, 42.498459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918648, 33.002914, 42.738781>,  <45.267471, 33.241936, 43.015968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918648, 33.002914, 42.738781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.622612, 32.973907, 42.471348>,  <45.444992, 32.956505, 42.310886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.622612, 32.973907, 42.471348>,  <45.918648, 33.002914, 42.738781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622612, 32.973907, 42.471348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597952, 0.384015, -0.703552,
		0.307764, -0.920475, -0.240846,
		-0.740091, -0.072514, -0.668586,
		45.400585, 32.952152, 42.270771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299252, 32.950500, 42.103386>,  <45.918648, 33.002914, 42.738781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299252, 32.950500, 42.103386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.918415, 33.021374, 42.003677>,  <45.689915, 33.063896, 41.943851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.918415, 33.021374, 42.003677>,  <46.299252, 32.950500, 42.103386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918415, 33.021374, 42.003677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280559, 0.181595, -0.942502,
		-0.121729, -0.967279, -0.222605,
		-0.952086, 0.177183, -0.249273,
		45.632790, 33.074528, 41.928894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083282, 32.576164, 41.613091>,  <46.299252, 32.950500, 42.103386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083282, 32.576164, 41.613091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.873611, 32.914185, 41.570915>,  <45.747807, 33.116997, 41.545609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.873611, 32.914185, 41.570915>,  <46.083282, 32.576164, 41.613091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873611, 32.914185, 41.570915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367033, 0.112456, -0.923385,
		-0.768455, -0.522719, -0.369110,
		-0.524179, 0.845055, -0.105438,
		45.716358, 33.167702, 41.539284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584694, 32.489708, 41.033150>,  <46.083282, 32.576164, 41.613091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584694, 32.489708, 41.033150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.735107, 32.859512, 41.058075>,  <45.825356, 33.081394, 41.073029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.735107, 32.859512, 41.058075>,  <45.584694, 32.489708, 41.033150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735107, 32.859512, 41.058075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520067, -0.154920, -0.839958,
		-0.766893, 0.348264, -0.539061,
		0.376039, 0.924506, 0.062313,
		45.847919, 33.136864, 41.076771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570808, 32.759190, 40.394184>,  <45.584694, 32.489708, 41.033150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570808, 32.759190, 40.394184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.846901, 32.956230, 40.606194>,  <46.012558, 33.074455, 40.733398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.846901, 32.956230, 40.606194>,  <45.570808, 32.759190, 40.394184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846901, 32.956230, 40.606194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619685, -0.024226, -0.784476,
		-0.373592, 0.869919, -0.321978,
		0.690231, 0.492599, 0.530026,
		46.053970, 33.104012, 40.765202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748131, 33.458393, 40.149994>,  <45.570808, 32.759190, 40.394184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748131, 33.458393, 40.149994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.055489, 33.255943, 40.306660>,  <46.239902, 33.134472, 40.400661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.055489, 33.255943, 40.306660>,  <45.748131, 33.458393, 40.149994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055489, 33.255943, 40.306660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448366, -0.010950, -0.893783,
		0.456654, 0.862391, 0.218515,
		0.768397, -0.506125, 0.391667,
		46.286007, 33.104107, 40.424160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436527, 33.742836, 40.044853>,  <45.748131, 33.458393, 40.149994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436527, 33.742836, 40.044853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.496532, 33.349499, 40.085892>,  <46.532536, 33.113495, 40.110516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.496532, 33.349499, 40.085892>,  <46.436527, 33.742836, 40.044853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496532, 33.349499, 40.085892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574757, 0.002303, -0.818321,
		0.804457, 0.181729, 0.565530,
		0.150015, -0.983346, 0.102597,
		46.541538, 33.054497, 40.116673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138527, 33.555317, 40.229935>,  <46.436527, 33.742836, 40.044853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138527, 33.555317, 40.229935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.935402, 33.291969, 40.007702>,  <46.813526, 33.133961, 39.874363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.935402, 33.291969, 40.007702>,  <47.138527, 33.555317, 40.229935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935402, 33.291969, 40.007702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667751, 0.106636, -0.736707,
		0.544273, -0.745100, 0.385478,
		-0.507814, -0.658373, -0.555580,
		46.783058, 33.094456, 39.841026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.590279, 32.936771, 40.096146>,  <47.138527, 33.555317, 40.229935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.590279, 32.936771, 40.096146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.325104, 33.044292, 39.816647>,  <47.165997, 33.108807, 39.648945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.325104, 33.044292, 39.816647>,  <47.590279, 32.936771, 40.096146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325104, 33.044292, 39.816647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745808, 0.155557, -0.647745,
		-0.065421, -0.950550, -0.303602,
		-0.662941, 0.268805, -0.698751,
		47.126221, 33.124935, 39.607021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.481026, 32.455891, 39.420166>,  <47.590279, 32.936771, 40.096146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.481026, 32.455891, 39.420166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.425098, 32.846050, 39.351994>,  <47.391541, 33.080147, 39.311089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.425098, 32.846050, 39.351994>,  <47.481026, 32.455891, 39.420166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.425098, 32.846050, 39.351994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667336, -0.034331, -0.743965,
		-0.731514, -0.217756, -0.646119,
		-0.139821, 0.975399, -0.170430,
		47.383152, 33.138672, 39.300865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.457054, 32.490677, 38.740417>,  <47.481026, 32.455891, 39.420166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.457054, 32.490677, 38.740417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.526028, 32.862995, 38.869339>,  <47.567410, 33.086388, 38.946693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.526028, 32.862995, 38.869339>,  <47.457054, 32.490677, 38.740417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.526028, 32.862995, 38.869339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707301, 0.110732, -0.698186,
		-0.685561, 0.348355, -0.639262,
		0.172430, 0.930799, 0.322305,
		47.577755, 33.142235, 38.966030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.341713, 32.935665, 38.149231>,  <47.457054, 32.490677, 38.740417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.341713, 32.935665, 38.149231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600960, 33.104309, 38.402905>,  <47.756508, 33.205498, 38.555107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600960, 33.104309, 38.402905>,  <47.341713, 32.935665, 38.149231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600960, 33.104309, 38.402905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704912, -0.017009, -0.709091,
		-0.288176, 0.906616, -0.308224,
		0.648116, 0.421614, 0.634183,
		47.795395, 33.230793, 38.593159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.469563, 33.261894, 37.428169>,  <47.341713, 32.935665, 38.149231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.469563, 33.261894, 37.428169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.779446, 33.062351, 37.272747>,  <47.965374, 32.942627, 37.179493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.779446, 33.062351, 37.272747>,  <47.469563, 33.261894, 37.428169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.779446, 33.062351, 37.272747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244339, 0.330590, -0.911597,
		0.583206, 0.801159, 0.134221,
		0.774706, -0.498854, -0.388556,
		48.011856, 32.912697, 37.156181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.969471, 33.702103, 37.011208>,  <47.469563, 33.261894, 37.428169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.969471, 33.702103, 37.011208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.922829, 33.323399, 36.891171>,  <47.894844, 33.096176, 36.819149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.922829, 33.323399, 36.891171>,  <47.969471, 33.702103, 37.011208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.922829, 33.323399, 36.891171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376876, 0.321732, -0.868592,
		0.918895, 0.011818, -0.394325,
		-0.116602, -0.946757, -0.300092,
		47.887848, 33.039371, 36.801144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.270809, 33.554852, 36.323757>,  <47.969471, 33.702103, 37.011208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.270809, 33.554852, 36.323757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.961063, 33.308758, 36.382885>,  <47.775215, 33.161102, 36.418362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.961063, 33.308758, 36.382885>,  <48.270809, 33.554852, 36.323757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.961063, 33.308758, 36.382885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451614, 0.373768, -0.810150,
		0.443183, -0.694105, -0.567280,
		-0.774360, -0.615236, 0.147819,
		47.728756, 33.124187, 36.427231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.182831, 32.978317, 35.821854>,  <48.270809, 33.554852, 36.323757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.182831, 32.978317, 35.821854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.839588, 33.098503, 35.988407>,  <47.633644, 33.170612, 36.088341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.839588, 33.098503, 35.988407>,  <48.182831, 32.978317, 35.821854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.839588, 33.098503, 35.988407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333876, 0.289585, -0.897032,
		-0.390102, -0.908770, -0.148179,
		-0.858107, 0.300460, 0.416385,
		47.582157, 33.188641, 36.113323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.499886, 32.743019, 35.494610>,  <48.182831, 32.978317, 35.821854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.499886, 32.743019, 35.494610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.494053, 33.103706, 35.667439>,  <47.490555, 33.320118, 35.771133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.494053, 33.103706, 35.667439>,  <47.499886, 32.743019, 35.494610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.494053, 33.103706, 35.667439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102250, 0.428505, -0.897735,
		-0.994652, -0.057266, 0.085955,
		-0.014578, 0.901722, 0.432069,
		47.489681, 33.374222, 35.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.904587, 33.140129, 35.280212>,  <47.499886, 32.743019, 35.494610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.904587, 33.140129, 35.280212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.193066, 33.394909, 35.389153>,  <47.366154, 33.547775, 35.454517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.193066, 33.394909, 35.389153>,  <46.904587, 33.140129, 35.280212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193066, 33.394909, 35.389153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211493, 0.576831, -0.789010,
		-0.659658, 0.511431, 0.550718,
		0.721195, 0.636949, 0.272347,
		47.409424, 33.585995, 35.470856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569347, 33.817539, 35.291447>,  <46.904587, 33.140129, 35.280212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569347, 33.817539, 35.291447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.958988, 33.813744, 35.201088>,  <47.192772, 33.811466, 35.146873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.958988, 33.813744, 35.201088>,  <46.569347, 33.817539, 35.291447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.958988, 33.813744, 35.201088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184281, 0.545564, -0.817558,
		0.131001, 0.838015, 0.529687,
		0.974104, -0.009490, -0.225900,
		47.251221, 33.810898, 35.133320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788353, 34.481476, 35.017853>,  <46.569347, 33.817539, 35.291447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788353, 34.481476, 35.017853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.061131, 34.219933, 34.886757>,  <47.224796, 34.063007, 34.808098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.061131, 34.219933, 34.886757>,  <46.788353, 34.481476, 35.017853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.061131, 34.219933, 34.886757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013678, 0.436622, -0.899541,
		0.731274, 0.617922, 0.288809,
		0.681947, -0.653861, -0.327743,
		47.265713, 34.023773, 34.788433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.483025, 34.646858, 35.116302>,  <46.788353, 34.481476, 35.017853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.483025, 34.646858, 35.116302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.663048, 34.938290, 35.322849>,  <47.771061, 35.113148, 35.446777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.663048, 34.938290, 35.322849>,  <47.483025, 34.646858, 35.116302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.663048, 34.938290, 35.322849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411926, 0.682416, -0.603841,
		-0.792318, 0.059058, 0.607243,
		0.450054, 0.728574, 0.516363,
		47.798065, 35.156860, 35.477757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.112501, 36.262379, 55.811100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.360620, 36.107460, 56.083931>,  <31.509493, 36.014511, 56.247631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.360620, 36.107460, 56.083931>,  <31.112501, 36.262379, 55.811100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360620, 36.107460, 56.083931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759532, 0.079508, -0.645593,
		0.195803, 0.918522, 0.343480,
		0.620300, -0.387293, 0.682079,
		31.546711, 35.991272, 56.288555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852819, 36.512001, 55.711994>,  <31.112501, 36.262379, 55.811100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852819, 36.512001, 55.711994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.966026, 36.193172, 55.925377>,  <32.033951, 36.001873, 56.053406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.966026, 36.193172, 55.925377>,  <31.852819, 36.512001, 55.711994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966026, 36.193172, 55.925377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771548, -0.141193, -0.620305,
		0.569749, 0.587142, 0.575022,
		0.283018, -0.797075, 0.533453,
		32.050930, 35.954048, 56.085411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468529, 36.615765, 55.930702>,  <31.852819, 36.512001, 55.711994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468529, 36.615765, 55.930702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.434872, 36.217472, 55.915562>,  <32.414677, 35.978497, 55.906479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.434872, 36.217472, 55.915562>,  <32.468529, 36.615765, 55.930702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434872, 36.217472, 55.915562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838766, -0.050267, -0.542167,
		0.537952, -0.077366, 0.839418,
		-0.084140, -0.995735, -0.037850,
		32.409630, 35.918751, 55.904205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167416, 36.364601, 55.902306>,  <32.468529, 36.615765, 55.930702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167416, 36.364601, 55.902306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.962795, 36.034698, 55.805889>,  <32.840023, 35.836758, 55.748039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.962795, 36.034698, 55.805889>,  <33.167416, 36.364601, 55.902306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962795, 36.034698, 55.805889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727399, -0.266336, -0.632420,
		0.457394, -0.498845, 0.736169,
		-0.511548, -0.824754, -0.241039,
		32.809330, 35.787273, 55.733578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666794, 35.754719, 56.063549>,  <33.167416, 36.364601, 55.902306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666794, 35.754719, 56.063549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.371334, 35.658298, 55.811745>,  <33.194057, 35.600445, 55.660660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.371334, 35.658298, 55.811745>,  <33.666794, 35.754719, 56.063549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371334, 35.658298, 55.811745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668799, -0.145316, -0.729103,
		0.084273, -0.959571, 0.268553,
		-0.738651, -0.241052, -0.629514,
		33.149738, 35.585983, 55.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832588, 35.100727, 55.789669>,  <33.666794, 35.754719, 56.063549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832588, 35.100727, 55.789669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.582428, 35.257969, 55.520050>,  <33.432331, 35.352314, 55.358276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.582428, 35.257969, 55.520050>,  <33.832588, 35.100727, 55.789669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582428, 35.257969, 55.520050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598566, -0.312492, -0.737609,
		-0.500594, -0.864764, -0.039868,
		-0.625400, 0.393106, -0.674050,
		33.394810, 35.375900, 55.317837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867634, 34.620388, 55.183727>,  <33.832588, 35.100727, 55.789669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867634, 34.620388, 55.183727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.713707, 34.957119, 55.032337>,  <33.621353, 35.159157, 54.941505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.713707, 34.957119, 55.032337>,  <33.867634, 34.620388, 55.183727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713707, 34.957119, 55.032337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439852, -0.193238, -0.877034,
		-0.811449, -0.503967, -0.295920,
		-0.384813, 0.841829, -0.378473,
		33.598263, 35.209667, 54.918797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484123, 34.426228, 54.594990>,  <33.867634, 34.620388, 55.183727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484123, 34.426228, 54.594990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.601059, 34.807076, 54.559177>,  <33.671219, 35.035583, 54.537689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.601059, 34.807076, 54.559177>,  <33.484123, 34.426228, 54.594990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601059, 34.807076, 54.559177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150641, -0.138300, -0.978867,
		-0.944376, 0.272671, -0.183858,
		0.292336, 0.952115, -0.089532,
		33.688759, 35.092709, 54.532318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392826, 34.568207, 53.880447>,  <33.484123, 34.426228, 54.594990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392826, 34.568207, 53.880447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.589554, 34.909008, 53.952225>,  <33.707592, 35.113487, 53.995293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.589554, 34.909008, 53.952225>,  <33.392826, 34.568207, 53.880447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589554, 34.909008, 53.952225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472766, -0.088244, -0.876758,
		-0.731166, 0.516045, -0.446198,
		0.491821, 0.852004, 0.179448,
		33.737099, 35.164608, 54.006058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484276, 34.875694, 53.272644>,  <33.392826, 34.568207, 53.880447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484276, 34.875694, 53.272644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.783501, 35.049206, 53.473537>,  <33.963036, 35.153313, 53.594074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.783501, 35.049206, 53.473537>,  <33.484276, 34.875694, 53.272644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783501, 35.049206, 53.473537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607932, -0.144431, -0.780742,
		-0.266134, 0.889366, -0.371753,
		0.748059, 0.433783, 0.502236,
		34.007919, 35.179340, 53.624207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727299, 35.350780, 52.821346>,  <33.484276, 34.875694, 53.272644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727299, 35.350780, 52.821346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.014069, 35.274647, 53.089615>,  <34.186131, 35.228966, 53.250576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.014069, 35.274647, 53.089615>,  <33.727299, 35.350780, 52.821346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014069, 35.274647, 53.089615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675440, -0.048584, -0.735812,
		0.172631, 0.980517, 0.093726,
		0.716923, -0.190330, 0.670668,
		34.229145, 35.217548, 53.290813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196934, 35.840813, 52.693291>,  <33.727299, 35.350780, 52.821346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196934, 35.840813, 52.693291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.403965, 35.556324, 52.883568>,  <34.528183, 35.385632, 52.997734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.403965, 35.556324, 52.883568>,  <34.196934, 35.840813, 52.693291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403965, 35.556324, 52.883568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559433, -0.139371, -0.817074,
		0.647417, 0.689015, 0.325745,
		0.517577, -0.711220, 0.475689,
		34.559238, 35.342957, 53.026276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870647, 35.977657, 52.436138>,  <34.196934, 35.840813, 52.693291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870647, 35.977657, 52.436138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866993, 35.609535, 52.592579>,  <34.864799, 35.388660, 52.686443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866993, 35.609535, 52.592579>,  <34.870647, 35.977657, 52.436138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866993, 35.609535, 52.592579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713137, -0.280168, -0.642606,
		0.700965, 0.273032, 0.658863,
		-0.009140, -0.920304, 0.391097,
		34.864250, 35.333443, 52.709908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559391, 35.756058, 52.379395>,  <34.870647, 35.977657, 52.436138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559391, 35.756058, 52.379395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.363102, 35.412685, 52.439114>,  <35.245327, 35.206661, 52.474945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.363102, 35.412685, 52.439114>,  <35.559391, 35.756058, 52.379395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363102, 35.412685, 52.439114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742815, -0.501726, -0.443279,
		0.455430, -0.106627, 0.883863,
		-0.490723, -0.858430, 0.149297,
		35.215885, 35.155155, 52.483902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076515, 35.245964, 52.390854>,  <35.559391, 35.756058, 52.379395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076515, 35.245964, 52.390854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.736851, 35.039646, 52.345440>,  <35.533054, 34.915855, 52.318192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.736851, 35.039646, 52.345440>,  <36.076515, 35.245964, 52.390854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736851, 35.039646, 52.345440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499692, -0.715038, -0.488906,
		0.170996, -0.471888, 0.864917,
		-0.849157, -0.515793, -0.113530,
		35.482105, 34.884907, 52.311382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260078, 34.537830, 52.713005>,  <36.076515, 35.245964, 52.390854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260078, 34.537830, 52.713005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.950283, 34.530952, 52.460064>,  <35.764404, 34.526825, 52.308300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.950283, 34.530952, 52.460064>,  <36.260078, 34.537830, 52.713005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950283, 34.530952, 52.460064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420358, -0.760998, -0.494147,
		-0.472721, -0.648526, 0.596615,
		-0.774490, -0.017198, -0.632353,
		35.717937, 34.525791, 52.270359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077618, 33.828194, 52.542877>,  <36.260078, 34.537830, 52.713005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077618, 33.828194, 52.542877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.923313, 34.024643, 52.230469>,  <35.830730, 34.142513, 52.043026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.923313, 34.024643, 52.230469>,  <36.077618, 33.828194, 52.542877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923313, 34.024643, 52.230469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331447, -0.716252, -0.614105,
		-0.861007, -0.495762, 0.113518,
		-0.385758, 0.491124, -0.781017,
		35.807587, 34.171982, 51.996162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653770, 33.322159, 52.211716>,  <36.077618, 33.828194, 52.542877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653770, 33.322159, 52.211716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.706467, 33.619221, 51.949081>,  <35.738083, 33.797459, 51.791500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.706467, 33.619221, 51.949081>,  <35.653770, 33.322159, 52.211716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706467, 33.619221, 51.949081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108260, -0.669178, -0.735175,
		-0.985355, 0.025770, -0.168558,
		0.131741, 0.742656, -0.656587,
		35.745991, 33.842018, 51.752106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344131, 33.075699, 51.525749>,  <35.653770, 33.322159, 52.211716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344131, 33.075699, 51.525749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.565159, 33.382404, 51.395065>,  <35.697777, 33.566429, 51.316654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.565159, 33.382404, 51.395065>,  <35.344131, 33.075699, 51.525749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565159, 33.382404, 51.395065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216066, -0.510366, -0.832371,
		-0.804975, 0.389351, -0.447684,
		0.552568, 0.766767, -0.326707,
		35.730930, 33.612434, 51.297054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215725, 33.063396, 50.816372>,  <35.344131, 33.075699, 51.525749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215725, 33.063396, 50.816372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.561909, 33.250973, 50.886879>,  <35.769619, 33.363518, 50.929184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.561909, 33.250973, 50.886879>,  <35.215725, 33.063396, 50.816372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561909, 33.250973, 50.886879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377802, -0.379878, -0.844369,
		-0.328998, 0.797363, -0.505937,
		0.865463, 0.468939, 0.176266,
		35.821548, 33.391655, 50.939758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441765, 33.104809, 50.112885>,  <35.215725, 33.063396, 50.816372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441765, 33.104809, 50.112885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.737186, 33.145340, 50.379498>,  <35.914440, 33.169659, 50.539467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.737186, 33.145340, 50.379498>,  <35.441765, 33.104809, 50.112885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737186, 33.145340, 50.379498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634953, -0.436901, -0.637144,
		0.226648, 0.893784, -0.387014,
		0.738556, 0.101328, 0.666534,
		35.958752, 33.175739, 50.579456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997902, 33.493916, 49.825474>,  <35.441765, 33.104809, 50.112885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997902, 33.493916, 49.825474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151962, 33.272301, 50.120689>,  <36.244400, 33.139332, 50.297817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151962, 33.272301, 50.120689>,  <35.997902, 33.493916, 49.825474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151962, 33.272301, 50.120689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805902, -0.187732, -0.561497,
		0.449642, 0.811050, 0.374191,
		0.385155, -0.554034, 0.738039,
		36.267509, 33.106091, 50.342102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671410, 34.148655, 49.868839>,  <35.997902, 33.493916, 49.825474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671410, 34.148655, 49.868839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.386639, 34.033749, 49.612514>,  <35.215775, 33.964806, 49.458721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.386639, 34.033749, 49.612514>,  <35.671410, 34.148655, 49.868839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386639, 34.033749, 49.612514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684622, 0.080724, 0.724414,
		-0.156368, 0.954445, -0.254136,
		-0.711928, -0.287262, -0.640811,
		35.173061, 33.947571, 49.420273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108200, 34.591793, 49.964676>,  <35.671410, 34.148655, 49.868839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108200, 34.591793, 49.964676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.948608, 34.253628, 49.822639>,  <34.852856, 34.050728, 49.737419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.948608, 34.253628, 49.822639>,  <35.108200, 34.591793, 49.964676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948608, 34.253628, 49.822639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711723, 0.041349, 0.701242,
		-0.578159, 0.532504, -0.618200,
		-0.398976, -0.845417, -0.355089,
		34.828915, 34.000004, 49.716114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491100, 34.651924, 50.221241>,  <35.108200, 34.591793, 49.964676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491100, 34.651924, 50.221241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428799, 34.293194, 50.055618>,  <34.391418, 34.077957, 49.956245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428799, 34.293194, 50.055618>,  <34.491100, 34.651924, 50.221241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428799, 34.293194, 50.055618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822774, -0.114172, 0.556783,
		-0.546611, 0.427400, -0.720101,
		-0.155753, -0.896825, -0.414061,
		34.382072, 34.024147, 49.931400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886192, 34.647675, 49.985092>,  <34.491100, 34.651924, 50.221241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886192, 34.647675, 49.985092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.977673, 34.265083, 50.057583>,  <34.032562, 34.035530, 50.101078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.977673, 34.265083, 50.057583>,  <33.886192, 34.647675, 49.985092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977673, 34.265083, 50.057583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902673, -0.138654, 0.407378,
		-0.364521, -0.256754, -0.895099,
		0.228705, -0.956479, 0.181223,
		34.046284, 33.978138, 50.111950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275024, 34.310760, 49.838707>,  <33.886192, 34.647675, 49.985092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275024, 34.310760, 49.838707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.495968, 34.042946, 50.037350>,  <33.628532, 33.882256, 50.156536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.495968, 34.042946, 50.037350>,  <33.275024, 34.310760, 49.838707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495968, 34.042946, 50.037350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801411, -0.262545, 0.537410,
		-0.229430, -0.694836, -0.681590,
		0.552360, -0.669532, 0.496614,
		33.661674, 33.842083, 50.186333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933006, 33.600143, 49.827049>,  <33.275024, 34.310760, 49.838707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933006, 33.600143, 49.827049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.162346, 33.607338, 50.154694>,  <33.299950, 33.611656, 50.351280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.162346, 33.607338, 50.154694>,  <32.933006, 33.600143, 49.827049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162346, 33.607338, 50.154694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769197, -0.332472, 0.545708,
		0.282149, -0.942941, -0.176786,
		0.573348, 0.017988, 0.819115,
		33.334351, 33.612736, 50.400429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673832, 33.086113, 50.233318>,  <32.933006, 33.600143, 49.827049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673832, 33.086113, 50.233318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.883518, 33.299610, 50.498745>,  <33.009331, 33.427708, 50.658001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.883518, 33.299610, 50.498745>,  <32.673832, 33.086113, 50.233318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883518, 33.299610, 50.498745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584886, -0.340693, 0.736096,
		0.618956, -0.773983, 0.133580,
		0.524216, 0.533739, 0.663566,
		33.040783, 33.459732, 50.697815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629616, 32.785347, 50.942001>,  <32.673832, 33.086113, 50.233318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629616, 32.785347, 50.942001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.789932, 33.133377, 51.056786>,  <32.886120, 33.342194, 51.125656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.789932, 33.133377, 51.056786>,  <32.629616, 32.785347, 50.942001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789932, 33.133377, 51.056786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473511, -0.071421, 0.877887,
		0.784319, -0.487725, 0.383364,
		0.400788, 0.870071, 0.286960,
		32.910168, 33.394398, 51.142872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898315, 32.805309, 51.641014>,  <32.629616, 32.785347, 50.942001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898315, 32.805309, 51.641014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.862438, 33.199749, 51.585060>,  <32.840912, 33.436413, 51.551487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.862438, 33.199749, 51.585060>,  <32.898315, 32.805309, 51.641014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862438, 33.199749, 51.585060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469902, 0.081937, 0.878908,
		0.878150, 0.144560, 0.456020,
		-0.089690, 0.986098, -0.139882,
		32.835533, 33.495579, 51.543095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073586, 33.096336, 52.228622>,  <32.898315, 32.805309, 51.641014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073586, 33.096336, 52.228622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.822422, 33.378670, 52.097454>,  <32.671722, 33.548069, 52.018753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.822422, 33.378670, 52.097454>,  <33.073586, 33.096336, 52.228622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822422, 33.378670, 52.097454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382715, 0.086849, 0.919775,
		0.677684, 0.703038, 0.215598,
		-0.627912, 0.705829, -0.327919,
		32.634048, 33.590420, 51.999077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790619, 33.431015, 52.825390>,  <33.073586, 33.096336, 52.228622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790619, 33.431015, 52.825390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.533062, 33.533440, 52.536995>,  <32.378529, 33.594894, 52.363956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.533062, 33.533440, 52.536995>,  <32.790619, 33.431015, 52.825390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533062, 33.533440, 52.536995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755116, -0.060847, 0.652762,
		0.123279, 0.964743, 0.232538,
		-0.643896, 0.256065, -0.720991,
		32.339893, 33.610260, 52.320698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473267, 33.952656, 53.060848>,  <32.790619, 33.431015, 52.825390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473267, 33.952656, 53.060848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.222115, 33.787025, 52.797241>,  <32.071423, 33.687649, 52.639076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.222115, 33.787025, 52.797241>,  <32.473267, 33.952656, 53.060848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222115, 33.787025, 52.797241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742420, 0.064482, 0.666825,
		-0.233619, 0.907957, -0.347904,
		-0.627881, -0.414074, -0.659020,
		32.033749, 33.662804, 52.599537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860783, 34.474831, 52.918537>,  <32.473267, 33.952656, 53.060848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860783, 34.474831, 52.918537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.791216, 34.081020, 52.909973>,  <31.749475, 33.844734, 52.904835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.791216, 34.081020, 52.909973>,  <31.860783, 34.474831, 52.918537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791216, 34.081020, 52.909973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679504, 0.104242, 0.726229,
		-0.712760, 0.140855, -0.687120,
		-0.173919, -0.984527, -0.021412,
		31.739040, 33.785664, 52.903549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175224, 34.344639, 52.797657>,  <31.860783, 34.474831, 52.918537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175224, 34.344639, 52.797657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.307013, 34.022972, 52.995556>,  <31.386086, 33.829971, 53.114296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.307013, 34.022972, 52.995556>,  <31.175224, 34.344639, 52.797657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307013, 34.022972, 52.995556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668975, 0.170949, 0.723360,
		-0.666275, -0.569297, -0.481641,
		0.329470, -0.804162, 0.494744,
		31.405853, 33.781723, 53.143978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563911, 34.042973, 52.960136>,  <31.175224, 34.344639, 52.797657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563911, 34.042973, 52.960136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.825041, 33.891048, 53.222301>,  <30.981718, 33.799892, 53.379601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.825041, 33.891048, 53.222301>,  <30.563911, 34.042973, 52.960136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825041, 33.891048, 53.222301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632283, 0.203294, 0.747590,
		-0.417184, -0.902449, -0.107434,
		0.652821, -0.379811, 0.655414,
		31.020887, 33.777103, 53.418926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184282, 33.893124, 53.534019>,  <30.563911, 34.042973, 52.960136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184282, 33.893124, 53.534019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.546825, 33.879116, 53.702442>,  <30.764351, 33.870712, 53.803497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.546825, 33.879116, 53.702442>,  <30.184282, 33.893124, 53.534019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546825, 33.879116, 53.702442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405343, 0.209130, 0.889922,
		-0.119221, -0.977260, 0.175352,
		0.906358, -0.035020, 0.421058,
		30.818733, 33.868610, 53.828758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140818, 33.386036, 54.216843>,  <30.184282, 33.893124, 53.534019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140818, 33.386036, 54.216843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.441790, 33.649494, 54.219147>,  <30.622374, 33.807568, 54.220528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.441790, 33.649494, 54.219147>,  <30.140818, 33.386036, 54.216843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441790, 33.649494, 54.219147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379869, 0.426787, 0.820703,
		0.538096, -0.619709, 0.571326,
		0.752431, 0.658646, 0.005756,
		30.667519, 33.847088, 54.220875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564474, 33.279949, 54.857086>,  <30.140818, 33.386036, 54.216843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564474, 33.279949, 54.857086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.622362, 33.656986, 54.736706>,  <30.657095, 33.883209, 54.664478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.622362, 33.656986, 54.736706>,  <30.564474, 33.279949, 54.857086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622362, 33.656986, 54.736706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417830, 0.333920, 0.844935,
		0.896925, 0.003468, 0.442169,
		0.144719, 0.942595, -0.300950,
		30.665777, 33.939766, 54.646420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.668648, 33.670055, 55.525414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592588, 33.954365, 55.254520>,  <30.546953, 34.124950, 55.091984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592588, 33.954365, 55.254520>,  <30.668648, 33.670055, 55.525414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592588, 33.954365, 55.254520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534420, 0.503725, 0.678717,
		0.823553, 0.490984, 0.284069,
		-0.190146, 0.710772, -0.677235,
		30.535545, 34.167595, 55.051350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782892, 34.133568, 55.915562>,  <30.668648, 33.670055, 55.525414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782892, 34.133568, 55.915562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580372, 34.319279, 55.624878>,  <30.458860, 34.430706, 55.450466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580372, 34.319279, 55.624878>,  <30.782892, 34.133568, 55.915562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580372, 34.319279, 55.624878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347751, 0.661227, 0.664716,
		0.789131, 0.589261, -0.173328,
		-0.506301, 0.464274, -0.726711,
		30.428482, 34.458561, 55.406864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877636, 34.996658, 55.914322>,  <30.782892, 34.133568, 55.915562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877636, 34.996658, 55.914322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539984, 34.898312, 55.723747>,  <30.337393, 34.839302, 55.609402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539984, 34.898312, 55.723747>,  <30.877636, 34.996658, 55.914322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539984, 34.898312, 55.723747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486841, 0.723730, 0.489081,
		0.224557, 0.644796, -0.730624,
		-0.844132, -0.245871, -0.476432,
		30.286743, 34.824551, 55.580818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641403, 35.712120, 55.654758>,  <30.877636, 34.996658, 55.914322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641403, 35.712120, 55.654758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344521, 35.444386, 55.668140>,  <30.166389, 35.283745, 55.676170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344521, 35.444386, 55.668140>,  <30.641403, 35.712120, 55.654758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344521, 35.444386, 55.668140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538545, 0.625402, 0.564661,
		-0.398868, 0.401081, -0.824645,
		-0.742209, -0.669333, 0.033452,
		30.121859, 35.243584, 55.678177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128046, 36.111118, 55.844147>,  <30.641403, 35.712120, 55.654758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128046, 36.111118, 55.844147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947763, 35.754700, 55.865715>,  <29.839594, 35.540848, 55.878654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947763, 35.754700, 55.865715>,  <30.128046, 36.111118, 55.844147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947763, 35.754700, 55.865715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781461, 0.423033, 0.458652,
		-0.431489, 0.164579, -0.886979,
		-0.450706, -0.891042, 0.053922,
		29.812551, 35.487389, 55.881893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410252, 36.267750, 55.757801>,  <30.128046, 36.111118, 55.844147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410252, 36.267750, 55.757801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462057, 35.925629, 55.958469>,  <29.493141, 35.720356, 56.078873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462057, 35.925629, 55.958469>,  <29.410252, 36.267750, 55.757801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462057, 35.925629, 55.958469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687059, 0.287392, 0.667350,
		-0.714966, -0.431112, -0.550424,
		0.129515, -0.855306, 0.501674,
		29.500912, 35.669037, 56.108971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742115, 35.911831, 55.848907>,  <29.410252, 36.267750, 55.757801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742115, 35.911831, 55.848907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988438, 35.788185, 56.138798>,  <29.136232, 35.713997, 56.312733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988438, 35.788185, 56.138798>,  <28.742115, 35.911831, 55.848907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988438, 35.788185, 56.138798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693444, 0.224051, 0.684789,
		-0.374054, -0.924256, -0.076381,
		0.615807, -0.309114, 0.724728,
		29.173180, 35.695450, 56.356216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294315, 35.602753, 56.296604>,  <28.742115, 35.911831, 55.848907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294315, 35.602753, 56.296604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621565, 35.616489, 56.526211>,  <28.817915, 35.624733, 56.663975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621565, 35.616489, 56.526211>,  <28.294315, 35.602753, 56.296604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621565, 35.616489, 56.526211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565561, -0.132483, 0.813995,
		0.104006, -0.990590, -0.088963,
		0.818122, 0.034346, 0.574019,
		28.867001, 35.626793, 56.698418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109924, 35.129692, 56.872814>,  <28.294315, 35.602753, 56.296604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109924, 35.129692, 56.872814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416948, 35.357906, 56.989670>,  <28.601164, 35.494835, 57.059784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416948, 35.357906, 56.989670>,  <28.109924, 35.129692, 56.872814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416948, 35.357906, 56.989670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332999, -0.034495, 0.942296,
		0.547688, -0.820550, 0.163509,
		0.767561, 0.570533, 0.292135,
		28.647217, 35.529068, 57.077309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401688, 34.864403, 57.563339>,  <28.109924, 35.129692, 56.872814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401688, 34.864403, 57.563339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517063, 35.245457, 57.524769>,  <28.586288, 35.474087, 57.501625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517063, 35.245457, 57.524769>,  <28.401688, 34.864403, 57.563339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517063, 35.245457, 57.524769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389675, 0.208778, 0.896976,
		0.874619, -0.221146, 0.431435,
		0.288437, 0.952631, -0.096426,
		28.603594, 35.531246, 57.495842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797073, 35.060429, 58.178967>,  <28.401688, 34.864403, 57.563339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797073, 35.060429, 58.178967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680075, 35.407722, 58.018658>,  <28.609877, 35.616100, 57.922474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680075, 35.407722, 58.018658>,  <28.797073, 35.060429, 58.178967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680075, 35.407722, 58.018658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202432, 0.353384, 0.913313,
		0.934595, 0.348268, 0.072395,
		-0.292495, 0.868233, -0.400772,
		28.592327, 35.668194, 57.898426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997734, 35.613121, 58.666382>,  <28.797073, 35.060429, 58.178967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997734, 35.613121, 58.666382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721014, 35.784561, 58.433929>,  <28.554981, 35.887424, 58.294456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721014, 35.784561, 58.433929>,  <28.997734, 35.613121, 58.666382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721014, 35.784561, 58.433929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478478, 0.330653, 0.813466,
		0.540806, 0.840814, -0.023669,
		-0.691800, 0.428602, -0.581130,
		28.513474, 35.913143, 58.259590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914070, 36.200886, 58.965736>,  <28.997734, 35.613121, 58.666382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914070, 36.200886, 58.965736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595289, 36.197994, 58.724136>,  <28.404020, 36.196259, 58.579178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595289, 36.197994, 58.724136>,  <28.914070, 36.200886, 58.965736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595289, 36.197994, 58.724136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437299, 0.696704, 0.568659,
		0.416701, 0.717322, -0.558399,
		-0.796951, -0.007226, -0.604001,
		28.356205, 36.195827, 58.542934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715710, 36.909622, 58.718483>,  <28.914070, 36.200886, 58.965736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715710, 36.909622, 58.718483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381559, 36.689911, 58.726849>,  <28.181068, 36.558083, 58.731869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381559, 36.689911, 58.726849>,  <28.715710, 36.909622, 58.718483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381559, 36.689911, 58.726849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418360, 0.660026, 0.623972,
		-0.356543, 0.512500, -0.781166,
		-0.835375, -0.549281, 0.020918,
		28.130947, 36.525127, 58.733124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218491, 37.404636, 58.781578>,  <28.715710, 36.909622, 58.718483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218491, 37.404636, 58.781578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966221, 37.101254, 58.847290>,  <27.814859, 36.919224, 58.886719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966221, 37.101254, 58.847290>,  <28.218491, 37.404636, 58.781578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966221, 37.101254, 58.847290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595505, 0.608727, 0.524238,
		-0.497616, 0.232793, -0.835575,
		-0.630676, -0.758458, 0.164282,
		27.777018, 36.873714, 58.896576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582884, 37.588295, 58.566158>,  <28.218491, 37.404636, 58.781578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582884, 37.588295, 58.566158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533407, 37.306545, 58.845745>,  <27.503721, 37.137497, 59.013496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533407, 37.306545, 58.845745>,  <27.582884, 37.588295, 58.566158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533407, 37.306545, 58.845745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537497, 0.639656, 0.549488,
		-0.834145, -0.307727, -0.457719,
		-0.123690, -0.704376, 0.698968,
		27.496300, 37.095234, 59.055435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964785, 37.658417, 58.653770>,  <27.582884, 37.588295, 58.566158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964785, 37.658417, 58.653770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044029, 37.467785, 58.996380>,  <27.091576, 37.353405, 59.201946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044029, 37.467785, 58.996380>,  <26.964785, 37.658417, 58.653770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044029, 37.467785, 58.996380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623935, 0.612620, 0.485182,
		-0.755948, -0.630534, -0.175985,
		0.198112, -0.476575, 0.856521,
		27.103462, 37.324814, 59.253338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321413, 37.523849, 58.941238>,  <26.964785, 37.658417, 58.653770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321413, 37.523849, 58.941238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588327, 37.525040, 59.239155>,  <26.748476, 37.525753, 59.417904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588327, 37.525040, 59.239155>,  <26.321413, 37.523849, 58.941238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588327, 37.525040, 59.239155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567336, 0.649923, 0.505698,
		-0.482554, -0.759994, 0.435374,
		0.667287, 0.002977, 0.744795,
		26.788513, 37.525932, 59.462593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944122, 37.589397, 59.494774>,  <26.321413, 37.523849, 58.941238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944122, 37.589397, 59.494774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306683, 37.693909, 59.627544>,  <26.524220, 37.756615, 59.707207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306683, 37.693909, 59.627544>,  <25.944122, 37.589397, 59.494774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306683, 37.693909, 59.627544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415999, 0.415615, 0.808832,
		0.073374, -0.871206, 0.485404,
		0.906400, 0.261275, 0.331925,
		26.578602, 37.772289, 59.727123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861895, 37.418098, 60.274685>,  <25.944122, 37.589397, 59.494774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861895, 37.418098, 60.274685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168808, 37.670410, 60.228394>,  <26.352955, 37.821796, 60.200619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168808, 37.670410, 60.228394>,  <25.861895, 37.418098, 60.274685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168808, 37.670410, 60.228394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317211, 0.530129, 0.786346,
		0.557370, -0.566634, 0.606848,
		0.767279, 0.630784, -0.115735,
		26.398993, 37.859646, 60.193676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091135, 37.581715, 60.940525>,  <25.861895, 37.418098, 60.274685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091135, 37.581715, 60.940525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284994, 37.855858, 60.723122>,  <26.401310, 38.020344, 60.592678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284994, 37.855858, 60.723122>,  <26.091135, 37.581715, 60.940525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284994, 37.855858, 60.723122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209745, 0.694287, 0.688457,
		0.849191, -0.219660, 0.480234,
		0.484647, 0.685358, -0.543509,
		26.430387, 38.061466, 60.560070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464268, 38.011417, 61.439060>,  <26.091135, 37.581715, 60.940525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464268, 38.011417, 61.439060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391031, 38.211212, 61.100361>,  <26.347090, 38.331089, 60.897141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391031, 38.211212, 61.100361>,  <26.464268, 38.011417, 61.439060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391031, 38.211212, 61.100361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465411, 0.714640, 0.522190,
		0.865951, 0.489696, 0.101623,
		-0.183090, 0.499488, -0.846753,
		26.336103, 38.361057, 60.846336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839022, 37.407822, 61.517262>,  <26.464268, 38.011417, 61.439060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839022, 37.407822, 61.517262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177202, 37.339069, 61.315006>,  <27.380112, 37.297817, 61.193653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177202, 37.339069, 61.315006>,  <26.839022, 37.407822, 61.517262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177202, 37.339069, 61.315006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434622, 0.771642, 0.464406,
		0.310344, -0.612393, 0.727091,
		0.845453, -0.171884, -0.505634,
		27.430838, 37.287502, 61.163315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404835, 37.356121, 62.004635>,  <26.839022, 37.407822, 61.517262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404835, 37.356121, 62.004635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576056, 37.456745, 61.657421>,  <27.678789, 37.517120, 61.449093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576056, 37.456745, 61.657421>,  <27.404835, 37.356121, 62.004635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576056, 37.456745, 61.657421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535313, 0.703286, 0.467792,
		0.728155, -0.664912, 0.166381,
		0.428054, 0.251559, -0.868037,
		27.704472, 37.532211, 61.397011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253868, 37.726990, 62.665348>,  <27.404835, 37.356121, 62.004635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253868, 37.726990, 62.665348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584887, 37.695030, 62.887623>,  <27.783497, 37.675854, 63.020988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584887, 37.695030, 62.887623>,  <27.253868, 37.726990, 62.665348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584887, 37.695030, 62.887623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558518, 0.217313, -0.800520,
		-0.056799, 0.972827, 0.224460,
		0.827546, -0.079896, 0.555684,
		27.833151, 37.671062, 63.054329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628160, 38.235744, 62.425804>,  <27.253868, 37.726990, 62.665348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628160, 38.235744, 62.425804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891325, 38.013504, 62.629158>,  <28.049225, 37.880161, 62.751171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891325, 38.013504, 62.629158>,  <27.628160, 38.235744, 62.425804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891325, 38.013504, 62.629158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663562, 0.108432, -0.740222,
		0.356142, 0.824349, 0.440014,
		0.657913, -0.555600, 0.508389,
		28.088699, 37.846825, 62.781673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301666, 38.622562, 62.495392>,  <27.628160, 38.235744, 62.425804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301666, 38.622562, 62.495392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385880, 38.237137, 62.561394>,  <28.436407, 38.005882, 62.600994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385880, 38.237137, 62.561394>,  <28.301666, 38.622562, 62.495392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385880, 38.237137, 62.561394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717287, 0.037579, -0.695764,
		0.664210, 0.264838, 0.699061,
		0.210535, -0.963560, 0.165005,
		28.449039, 37.948071, 62.610893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967531, 38.628197, 62.499977>,  <28.301666, 38.622562, 62.495392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967531, 38.628197, 62.499977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876722, 38.245220, 62.428688>,  <28.822237, 38.015434, 62.385914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876722, 38.245220, 62.428688>,  <28.967531, 38.628197, 62.499977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876722, 38.245220, 62.428688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648927, -0.012258, -0.760753,
		0.726192, -0.288362, 0.624093,
		-0.227022, -0.957443, -0.178224,
		28.808617, 37.957989, 62.375221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581421, 38.202671, 62.466122>,  <28.967531, 38.628197, 62.499977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581421, 38.202671, 62.466122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308056, 37.990929, 62.265034>,  <29.144037, 37.863884, 62.144379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308056, 37.990929, 62.265034>,  <29.581421, 38.202671, 62.466122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308056, 37.990929, 62.265034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693597, -0.255987, -0.673346,
		0.227749, -0.808860, 0.542104,
		-0.683414, -0.529355, -0.502722,
		29.103031, 37.832123, 62.114216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941259, 37.565407, 62.344727>,  <29.581421, 38.202671, 62.466122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941259, 37.565407, 62.344727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637907, 37.624157, 62.090706>,  <29.455896, 37.659405, 61.938293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637907, 37.624157, 62.090706>,  <29.941259, 37.565407, 62.344727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637907, 37.624157, 62.090706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546687, -0.387234, -0.742417,
		-0.354954, -0.910208, 0.213376,
		-0.758380, 0.146874, -0.635049,
		29.410393, 37.668221, 61.900192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929705, 36.971104, 61.993202>,  <29.941259, 37.565407, 62.344727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929705, 36.971104, 61.993202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727188, 37.194176, 61.730095>,  <29.605679, 37.328018, 61.572231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727188, 37.194176, 61.730095>,  <29.929705, 36.971104, 61.993202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727188, 37.194176, 61.730095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478289, -0.453097, -0.752292,
		-0.717570, -0.695485, -0.037331,
		-0.506293, 0.557677, -0.657772,
		29.575300, 37.361477, 61.532764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697111, 36.492237, 61.525249>,  <29.929705, 36.971104, 61.993202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697111, 36.492237, 61.525249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694008, 36.847427, 61.341320>,  <29.692146, 37.060543, 61.230961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694008, 36.847427, 61.341320>,  <29.697111, 36.492237, 61.525249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694008, 36.847427, 61.341320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280431, -0.439451, -0.853371,
		-0.959843, -0.135569, -0.245607,
		-0.007758, 0.887977, -0.459822,
		29.691681, 37.113819, 61.203373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393671, 36.390743, 60.948910>,  <29.697111, 36.492237, 61.525249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393671, 36.390743, 60.948910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617376, 36.719685, 60.907028>,  <29.751598, 36.917049, 60.881901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617376, 36.719685, 60.907028>,  <29.393671, 36.390743, 60.948910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617376, 36.719685, 60.907028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340345, -0.342935, -0.875534,
		-0.755904, 0.454018, -0.471674,
		0.559262, 0.822353, -0.104703,
		29.785154, 36.966389, 60.875618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243984, 36.555958, 60.296841>,  <29.393671, 36.390743, 60.948910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243984, 36.555958, 60.296841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579277, 36.745480, 60.404823>,  <29.780453, 36.859192, 60.469612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579277, 36.745480, 60.404823>,  <29.243984, 36.555958, 60.296841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579277, 36.745480, 60.404823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348862, -0.085455, -0.933270,
		-0.419118, 0.876475, -0.236923,
		0.838234, 0.473804, 0.269953,
		29.830748, 36.887619, 60.485809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325928, 36.921745, 59.719990>,  <29.243984, 36.555958, 60.296841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325928, 36.921745, 59.719990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681917, 36.908573, 59.901920>,  <29.895512, 36.900669, 60.011078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681917, 36.908573, 59.901920>,  <29.325928, 36.921745, 59.719990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681917, 36.908573, 59.901920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448342, -0.118999, -0.885906,
		0.083294, 0.992348, -0.091143,
		0.889973, -0.032927, 0.454823,
		29.948910, 36.898697, 60.038368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745745, 37.463665, 59.350872>,  <29.325928, 36.921745, 59.719990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745745, 37.463665, 59.350872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996378, 37.193443, 59.506321>,  <30.146757, 37.031311, 59.599590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996378, 37.193443, 59.506321>,  <29.745745, 37.463665, 59.350872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996378, 37.193443, 59.506321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350146, -0.201471, -0.914772,
		0.696270, 0.709254, 0.110303,
		0.626582, -0.675551, 0.388621,
		30.184353, 36.990780, 59.622906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263538, 37.616264, 58.918037>,  <29.745745, 37.463665, 59.350872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263538, 37.616264, 58.918037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345573, 37.266407, 59.093735>,  <30.394794, 37.056492, 59.199154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345573, 37.266407, 59.093735>,  <30.263538, 37.616264, 58.918037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345573, 37.266407, 59.093735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454603, -0.312310, -0.834145,
		0.866761, 0.370755, 0.333565,
		0.205088, -0.874645, 0.439245,
		30.407101, 37.004013, 59.225510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969166, 37.458477, 58.662930>,  <30.263538, 37.616264, 58.918037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969166, 37.458477, 58.662930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784237, 37.125256, 58.784439>,  <30.673281, 36.925323, 58.857346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784237, 37.125256, 58.784439>,  <30.969166, 37.458477, 58.662930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784237, 37.125256, 58.784439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383093, -0.496614, -0.778854,
		0.799687, -0.243707, 0.548733,
		-0.462321, -0.833056, 0.303773,
		30.645540, 36.875340, 58.875572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433935, 36.844818, 58.495003>,  <30.969166, 37.458477, 58.662930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433935, 36.844818, 58.495003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112150, 36.627460, 58.590977>,  <30.919079, 36.497047, 58.648560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112150, 36.627460, 58.590977>,  <31.433935, 36.844818, 58.495003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112150, 36.627460, 58.590977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286664, -0.708926, -0.644397,
		0.520254, -0.449613, 0.726075,
		-0.804462, -0.543390, 0.239934,
		30.870811, 36.464443, 58.662956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579102, 36.179276, 58.888603>,  <31.433935, 36.844818, 58.495003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579102, 36.179276, 58.888603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239386, 36.123226, 58.685009>,  <31.035555, 36.089596, 58.562851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239386, 36.123226, 58.685009>,  <31.579102, 36.179276, 58.888603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239386, 36.123226, 58.685009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479287, -0.608861, -0.632116,
		-0.221330, -0.780803, 0.584260,
		-0.849292, -0.140123, -0.508988,
		30.984598, 36.081188, 58.532314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485968, 35.452820, 58.645420>,  <31.579102, 36.179276, 58.888603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485968, 35.452820, 58.645420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246393, 35.662197, 58.403004>,  <31.102648, 35.787823, 58.257553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246393, 35.662197, 58.403004>,  <31.485968, 35.452820, 58.645420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246393, 35.662197, 58.403004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370369, -0.489922, -0.789179,
		-0.710002, -0.697126, 0.099565,
		-0.598936, 0.523442, -0.606039,
		31.066711, 35.819229, 58.221191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417992, 34.991684, 58.057137>,  <31.485968, 35.452820, 58.645420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417992, 34.991684, 58.057137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275116, 35.340279, 57.922718>,  <31.189390, 35.549435, 57.842068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275116, 35.340279, 57.922718>,  <31.417992, 34.991684, 58.057137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275116, 35.340279, 57.922718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230170, -0.266558, -0.935932,
		-0.905227, -0.411655, -0.105378,
		-0.357191, 0.871486, -0.336047,
		31.167959, 35.601723, 57.821903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809086, 34.826191, 57.565586>,  <31.417992, 34.991684, 58.057137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809086, 34.826191, 57.565586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986439, 35.170860, 57.466843>,  <31.092852, 35.377663, 57.407597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986439, 35.170860, 57.466843>,  <30.809086, 34.826191, 57.565586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986439, 35.170860, 57.466843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311431, -0.406345, -0.859008,
		-0.840489, 0.303991, -0.448517,
		0.443383, 0.861669, -0.246856,
		31.119453, 35.429359, 57.392784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797464, 34.781013, 56.958385>,  <30.809086, 34.826191, 57.565586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797464, 34.781013, 56.958385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067488, 35.074596, 56.988308>,  <31.229502, 35.250748, 57.006260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067488, 35.074596, 56.988308>,  <30.797464, 34.781013, 56.958385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067488, 35.074596, 56.988308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521566, -0.403066, -0.752002,
		-0.521790, 0.546661, -0.654903,
		0.675059, 0.733962, 0.074804,
		31.270006, 35.294785, 57.010750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.393951, 36.128784, 53.052582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.494453, 35.850754, 52.783138>,  <47.554756, 35.683937, 52.621471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.494453, 35.850754, 52.783138>,  <47.393951, 36.128784, 53.052582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.494453, 35.850754, 52.783138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919113, 0.046868, -0.391195,
		0.303480, 0.717410, -0.627075,
		0.251258, -0.695072, -0.673605,
		47.569832, 35.642231, 52.581059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.165535, 36.408905, 52.380520>,  <47.393951, 36.128784, 53.052582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.165535, 36.408905, 52.380520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.214031, 36.012932, 52.351322>,  <47.243130, 35.775349, 52.333805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.214031, 36.012932, 52.351322>,  <47.165535, 36.408905, 52.380520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.214031, 36.012932, 52.351322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912342, -0.082162, -0.401099,
		0.391066, 0.115221, -0.913122,
		0.121239, -0.989936, -0.072991,
		47.250404, 35.715950, 52.329426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815163, 36.296818, 51.724609>,  <47.165535, 36.408905, 52.380520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815163, 36.296818, 51.724609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.833977, 35.943802, 51.911766>,  <46.845264, 35.731995, 52.024059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.833977, 35.943802, 51.911766>,  <46.815163, 36.296818, 51.724609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.833977, 35.943802, 51.911766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963553, -0.163575, -0.211683,
		0.263352, -0.440878, -0.858063,
		0.047032, -0.882536, 0.467887,
		46.848087, 35.679043, 52.052132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484119, 35.749851, 51.279247>,  <46.815163, 36.296818, 51.724609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484119, 35.749851, 51.279247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.485039, 35.616894, 51.656502>,  <46.485592, 35.537121, 51.882854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.485039, 35.616894, 51.656502>,  <46.484119, 35.749851, 51.279247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485039, 35.616894, 51.656502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948980, -0.298125, -0.102756,
		0.315328, -0.894784, -0.316118,
		0.002298, -0.332391, 0.943139,
		46.485729, 35.517178, 51.939442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.091412, 35.114674, 51.204769>,  <46.484119, 35.749851, 51.279247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.091412, 35.114674, 51.204769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.086193, 35.229080, 51.588024>,  <46.083061, 35.297726, 51.817978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.086193, 35.229080, 51.588024>,  <46.091412, 35.114674, 51.204769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086193, 35.229080, 51.588024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969494, -0.238179, 0.057901,
		0.244768, -0.928152, 0.280398,
		-0.013044, 0.286016, 0.958136,
		46.082279, 35.314884, 51.875465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798424, 34.577702, 51.591724>,  <46.091412, 35.114674, 51.204769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798424, 34.577702, 51.591724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.750134, 34.886063, 51.841885>,  <45.721161, 35.071079, 51.991982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.750134, 34.886063, 51.841885>,  <45.798424, 34.577702, 51.591724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750134, 34.886063, 51.841885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991556, -0.123702, -0.038924,
		0.047356, -0.624821, 0.779331,
		-0.120725, 0.770906, 0.625403,
		45.713917, 35.117336, 52.029507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403625, 34.312500, 52.274700>,  <45.798424, 34.577702, 51.591724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403625, 34.312500, 52.274700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.386059, 34.707870, 52.216606>,  <45.375519, 34.945091, 52.181751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.386059, 34.707870, 52.216606>,  <45.403625, 34.312500, 52.274700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386059, 34.707870, 52.216606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995896, -0.054832, -0.072010,
		-0.079140, 0.141477, 0.986773,
		-0.043919, 0.988422, -0.145236,
		45.372883, 35.004398, 52.173035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887165, 34.659473, 52.673634>,  <45.403625, 34.312500, 52.274700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887165, 34.659473, 52.673634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.924503, 34.943214, 52.394176>,  <44.946907, 35.113461, 52.226501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.924503, 34.943214, 52.394176>,  <44.887165, 34.659473, 52.673634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924503, 34.943214, 52.394176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985812, -0.032467, -0.164683,
		-0.139501, 0.704105, 0.696258,
		0.093349, 0.709353, -0.698645,
		44.952507, 35.156021, 52.184582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164101, 34.760181, 52.554348>,  <44.887165, 34.659473, 52.673634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164101, 34.760181, 52.554348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.346020, 35.011158, 52.301533>,  <44.455170, 35.161743, 52.149845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.346020, 35.011158, 52.301533>,  <44.164101, 34.760181, 52.554348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346020, 35.011158, 52.301533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882040, 0.219207, -0.417077,
		-0.123145, 0.747168, 0.653127,
		0.454797, 0.627445, -0.632038,
		44.482460, 35.199390, 52.111919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760620, 35.382538, 52.502937>,  <44.164101, 34.760181, 52.554348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760620, 35.382538, 52.502937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.973747, 35.331482, 52.168320>,  <44.101624, 35.300850, 51.967548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.973747, 35.331482, 52.168320>,  <43.760620, 35.382538, 52.502937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973747, 35.331482, 52.168320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773990, 0.326152, -0.542738,
		0.342115, 0.936661, 0.074990,
		0.532820, -0.127637, -0.836547,
		44.133595, 35.293190, 51.917355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452259, 35.877445, 52.089241>,  <43.760620, 35.382538, 52.502937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452259, 35.877445, 52.089241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.660183, 35.655331, 51.829559>,  <43.784935, 35.522064, 51.673752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.660183, 35.655331, 51.829559>,  <43.452259, 35.877445, 52.089241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660183, 35.655331, 51.829559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736148, 0.094439, -0.670199,
		0.433461, 0.826281, -0.359682,
		0.519805, -0.555285, -0.649201,
		43.816124, 35.488747, 51.634800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306927, 36.225559, 51.428268>,  <43.452259, 35.877445, 52.089241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306927, 36.225559, 51.428268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410622, 35.843323, 51.372223>,  <43.472839, 35.613979, 51.338596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410622, 35.843323, 51.372223>,  <43.306927, 36.225559, 51.428268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410622, 35.843323, 51.372223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744696, -0.105392, -0.659029,
		0.614998, 0.275192, -0.738950,
		0.259239, -0.955595, -0.140118,
		43.488392, 35.556644, 51.330189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261169, 36.199734, 50.748562>,  <43.306927, 36.225559, 51.428268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261169, 36.199734, 50.748562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.233631, 35.819340, 50.869148>,  <43.217106, 35.591103, 50.941498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.233631, 35.819340, 50.869148>,  <43.261169, 36.199734, 50.748562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233631, 35.819340, 50.869148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835380, -0.110227, -0.538507,
		0.545344, -0.288910, -0.786849,
		-0.068848, -0.950989, 0.301462,
		43.212978, 35.534042, 50.959587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124542, 35.839588, 50.131721>,  <43.261169, 36.199734, 50.748562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124542, 35.839588, 50.131721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.010036, 35.600536, 50.431293>,  <42.941334, 35.457108, 50.611038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.010036, 35.600536, 50.431293>,  <43.124542, 35.839588, 50.131721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010036, 35.600536, 50.431293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818727, -0.253474, -0.515206,
		0.497735, -0.760654, -0.416731,
		-0.286263, -0.597625, 0.748931,
		42.924156, 35.421249, 50.655972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714138, 35.303158, 49.795414>,  <43.124542, 35.839588, 50.131721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714138, 35.303158, 49.795414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.595840, 35.297901, 50.177486>,  <42.524864, 35.294746, 50.406731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.595840, 35.297901, 50.177486>,  <42.714138, 35.303158, 49.795414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595840, 35.297901, 50.177486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921194, -0.260754, -0.288805,
		0.252862, -0.965316, 0.065009,
		-0.295740, -0.013142, 0.955178,
		42.507118, 35.293961, 50.464039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271900, 34.685860, 49.929295>,  <42.714138, 35.303158, 49.795414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271900, 34.685860, 49.929295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.176304, 34.948318, 50.215611>,  <42.118946, 35.105793, 50.387402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.176304, 34.948318, 50.215611>,  <42.271900, 34.685860, 49.929295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176304, 34.948318, 50.215611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968636, -0.109461, -0.223073,
		-0.068016, -0.746656, 0.661724,
		-0.238992, 0.656142, 0.715793,
		42.104607, 35.145161, 50.430347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644932, 34.420959, 50.127296>,  <42.271900, 34.685860, 49.929295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644932, 34.420959, 50.127296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.637833, 34.785282, 50.292282>,  <41.633575, 35.003876, 50.391273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.637833, 34.785282, 50.292282>,  <41.644932, 34.420959, 50.127296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637833, 34.785282, 50.292282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953451, 0.108787, -0.281242,
		-0.301026, -0.398252, 0.866475,
		-0.017744, 0.910802, 0.412461,
		41.632511, 35.058521, 50.416019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112648, 34.464977, 50.653240>,  <41.644932, 34.420959, 50.127296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112648, 34.464977, 50.653240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.162540, 34.836494, 50.513653>,  <41.192474, 35.059406, 50.429901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.162540, 34.836494, 50.513653>,  <41.112648, 34.464977, 50.653240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162540, 34.836494, 50.513653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919593, -0.023845, -0.392149,
		-0.372548, 0.369820, 0.851141,
		0.124730, 0.928797, -0.348967,
		41.199959, 35.115135, 50.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643444, 34.943607, 50.958763>,  <41.112648, 34.464977, 50.653240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643444, 34.943607, 50.958763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.751389, 35.160183, 50.640263>,  <40.816154, 35.290127, 50.449162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.751389, 35.160183, 50.640263>,  <40.643444, 34.943607, 50.958763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751389, 35.160183, 50.640263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958208, 0.069476, -0.277506,
		-0.094931, 0.837866, 0.537558,
		0.269860, 0.541436, -0.796255,
		40.832348, 35.322613, 50.401386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118801, 35.594135, 51.007027>,  <40.643444, 34.943607, 50.958763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118801, 35.594135, 51.007027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266010, 35.488968, 50.650276>,  <40.354336, 35.425869, 50.436226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266010, 35.488968, 50.650276>,  <40.118801, 35.594135, 51.007027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266010, 35.488968, 50.650276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926802, -0.026526, -0.374613,
		0.074835, 0.964453, -0.253436,
		0.368019, -0.262919, -0.891872,
		40.376415, 35.410091, 50.382713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797878, 36.101383, 50.585800>,  <40.118801, 35.594135, 51.007027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797878, 36.101383, 50.585800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906155, 35.774574, 50.382153>,  <39.971119, 35.578491, 50.259964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906155, 35.774574, 50.382153>,  <39.797878, 36.101383, 50.585800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906155, 35.774574, 50.382153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960065, -0.190261, -0.205124,
		0.070724, 0.544317, -0.835893,
		0.270690, -0.817019, -0.509124,
		39.987362, 35.529469, 50.229416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504971, 36.004749, 49.826244>,  <39.797878, 36.101383, 50.585800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504971, 36.004749, 49.826244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.556740, 35.636959, 49.974739>,  <39.587803, 35.416286, 50.063835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.556740, 35.636959, 49.974739>,  <39.504971, 36.004749, 49.826244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556740, 35.636959, 49.974739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927962, -0.244262, -0.281466,
		0.349479, -0.308062, -0.884851,
		0.129427, -0.919475, 0.371235,
		39.595570, 35.361118, 50.086109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948723, 35.684532, 49.590515>,  <39.504971, 36.004749, 49.826244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948723, 35.684532, 49.590515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.068668, 35.387993, 49.830677>,  <39.140636, 35.210068, 49.974773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.068668, 35.387993, 49.830677>,  <38.948723, 35.684532, 49.590515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068668, 35.387993, 49.830677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875892, -0.463337, -0.134655,
		0.378016, -0.485514, -0.788276,
		0.299861, -0.741347, 0.600407,
		39.158627, 35.165588, 50.010799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511345, 35.119949, 49.539669>,  <38.948723, 35.684532, 49.590515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511345, 35.119949, 49.539669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711399, 34.942802, 49.837322>,  <38.831432, 34.836514, 50.015915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711399, 34.942802, 49.837322>,  <38.511345, 35.119949, 49.539669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711399, 34.942802, 49.837322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775220, -0.611910, 0.156847,
		0.385879, -0.655310, -0.649358,
		0.500132, -0.442872, 0.744132,
		38.861439, 34.809940, 50.060562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564583, 34.405281, 49.737976>,  <38.511345, 35.119949, 49.539669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564583, 34.405281, 49.737976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619671, 34.044395, 49.574490>,  <38.652721, 33.827866, 49.476398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619671, 34.044395, 49.574490>,  <38.564583, 34.405281, 49.737976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619671, 34.044395, 49.574490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531924, 0.280723, -0.798906,
		0.835518, 0.327429, -0.441247,
		0.137717, -0.902211, -0.408717,
		38.660984, 33.773731, 49.451874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572044, 34.527828, 49.028023>,  <38.564583, 34.405281, 49.737976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572044, 34.527828, 49.028023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.481747, 34.138176, 49.032204>,  <38.427567, 33.904385, 49.034714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.481747, 34.138176, 49.032204>,  <38.572044, 34.527828, 49.028023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481747, 34.138176, 49.032204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481320, 0.102199, -0.870567,
		0.846977, -0.201560, -0.491939,
		-0.225747, -0.974130, 0.010455,
		38.414024, 33.845936, 49.035339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598415, 34.317524, 48.384270>,  <38.572044, 34.527828, 49.028023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598415, 34.317524, 48.384270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404789, 34.003479, 48.538815>,  <38.288612, 33.815052, 48.631542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404789, 34.003479, 48.538815>,  <38.598415, 34.317524, 48.384270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404789, 34.003479, 48.538815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614960, -0.008875, -0.788508,
		0.622498, -0.619288, -0.478518,
		-0.484067, -0.785114, 0.386362,
		38.259567, 33.767944, 48.654724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553738, 33.794895, 47.868744>,  <38.598415, 34.317524, 48.384270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553738, 33.794895, 47.868744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241920, 33.731785, 48.111202>,  <38.054829, 33.693920, 48.256680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241920, 33.731785, 48.111202>,  <38.553738, 33.794895, 47.868744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241920, 33.731785, 48.111202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622495, 0.087997, -0.777661,
		0.069352, -0.983547, -0.166809,
		-0.779545, -0.157770, 0.606151,
		38.008057, 33.684452, 48.293049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037754, 33.298283, 47.530926>,  <38.553738, 33.794895, 47.868744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037754, 33.298283, 47.530926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.830086, 33.490459, 47.813667>,  <37.705486, 33.605766, 47.983311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.830086, 33.490459, 47.813667>,  <38.037754, 33.298283, 47.530926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830086, 33.490459, 47.813667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698684, 0.237754, -0.674769,
		-0.492244, -0.844185, 0.212243,
		-0.519168, 0.480442, 0.706852,
		37.674335, 33.634590, 48.025723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312298, 33.172668, 47.462109>,  <38.037754, 33.298283, 47.530926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312298, 33.172668, 47.462109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280579, 33.498703, 47.691666>,  <37.261547, 33.694324, 47.829399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280579, 33.498703, 47.691666>,  <37.312298, 33.172668, 47.462109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280579, 33.498703, 47.691666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786926, 0.302216, -0.537971,
		-0.611930, -0.494270, 0.617445,
		-0.079301, 0.815084, 0.573889,
		37.256786, 33.743229, 47.863831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611046, 33.156105, 47.823883>,  <37.312298, 33.172668, 47.462109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611046, 33.156105, 47.823883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.704319, 33.545063, 47.820583>,  <36.760281, 33.778439, 47.818604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.704319, 33.545063, 47.820583>,  <36.611046, 33.156105, 47.823883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704319, 33.545063, 47.820583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882211, 0.207968, -0.422437,
		-0.409061, 0.105786, 0.906355,
		0.233181, 0.972399, -0.008254,
		36.774273, 33.836784, 47.818108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920757, 33.509819, 47.783520>,  <36.611046, 33.156105, 47.823883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920757, 33.509819, 47.783520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194622, 33.783787, 47.683823>,  <36.358940, 33.948170, 47.624004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194622, 33.783787, 47.683823>,  <35.920757, 33.509819, 47.783520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194622, 33.783787, 47.683823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692537, 0.504713, -0.515419,
		-0.227227, 0.525495, 0.819892,
		0.684660, 0.684923, -0.249240,
		36.400021, 33.989265, 47.609051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602459, 34.053337, 47.871964>,  <35.920757, 33.509819, 47.783520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602459, 34.053337, 47.871964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909012, 34.143024, 47.631172>,  <36.092945, 34.196838, 47.486698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909012, 34.143024, 47.631172>,  <35.602459, 34.053337, 47.871964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909012, 34.143024, 47.631172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634079, 0.414240, -0.652954,
		0.102957, 0.882116, 0.459642,
		0.766384, 0.224223, -0.601980,
		36.138927, 34.210293, 47.450577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444798, 34.787117, 47.669643>,  <35.602459, 34.053337, 47.871964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444798, 34.787117, 47.669643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.720867, 34.646290, 47.416756>,  <35.886509, 34.561794, 47.265022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.720867, 34.646290, 47.416756>,  <35.444798, 34.787117, 47.669643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720867, 34.646290, 47.416756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523981, 0.359436, -0.772171,
		0.499099, 0.864208, 0.063599,
		0.690177, -0.352065, -0.632223,
		35.927921, 34.540668, 47.227089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497616, 35.279594, 47.134140>,  <35.444798, 34.787117, 47.669643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497616, 35.279594, 47.134140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634075, 34.944595, 46.963394>,  <35.715950, 34.743595, 46.860947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634075, 34.944595, 46.963394>,  <35.497616, 35.279594, 47.134140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634075, 34.944595, 46.963394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351767, 0.307369, -0.884185,
		0.871708, 0.451798, -0.189745,
		0.341152, -0.837498, -0.426864,
		35.736420, 34.693344, 46.835335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.127497, 33.313416, 51.789856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422876, 33.414238, 52.040028>,  <31.600103, 33.474731, 52.190132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422876, 33.414238, 52.040028>,  <31.127497, 33.313416, 51.789856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422876, 33.414238, 52.040028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616747, 0.122513, -0.777569,
		-0.272615, 0.959926, -0.064986,
		0.738447, 0.252057, 0.625431,
		31.644411, 33.489857, 52.227657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371899, 33.850029, 51.456009>,  <31.127497, 33.313416, 51.789856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371899, 33.850029, 51.456009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675171, 33.791569, 51.710190>,  <31.857134, 33.756493, 51.862698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675171, 33.791569, 51.710190>,  <31.371899, 33.850029, 51.456009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675171, 33.791569, 51.710190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647391, 0.284972, -0.706877,
		-0.077776, 0.947328, 0.310677,
		0.758179, -0.146151, 0.635456,
		31.902624, 33.747723, 51.900826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847984, 34.432541, 51.397911>,  <31.371899, 33.850029, 51.456009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847984, 34.432541, 51.397911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071014, 34.144180, 51.562550>,  <32.204834, 33.971165, 51.661331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071014, 34.144180, 51.562550>,  <31.847984, 34.432541, 51.397911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071014, 34.144180, 51.562550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685615, 0.120384, -0.717941,
		0.468017, 0.682501, 0.561384,
		0.557577, -0.720902, 0.411592,
		32.238289, 33.927910, 51.686028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577171, 34.673767, 51.180370>,  <31.847984, 34.432541, 51.397911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577171, 34.673767, 51.180370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.634434, 34.296177, 51.299309>,  <32.668793, 34.069622, 51.370674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.634434, 34.296177, 51.299309>,  <32.577171, 34.673767, 51.180370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634434, 34.296177, 51.299309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657938, -0.133669, -0.741115,
		0.739340, 0.301734, 0.601941,
		0.143159, -0.943975, 0.297349,
		32.677380, 34.012985, 51.388512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301964, 34.537041, 51.455944>,  <32.577171, 34.673767, 51.180370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301964, 34.537041, 51.455944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163193, 34.184048, 51.328911>,  <33.079929, 33.972252, 51.252689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163193, 34.184048, 51.328911>,  <33.301964, 34.537041, 51.455944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163193, 34.184048, 51.328911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781416, -0.084702, -0.618235,
		0.518684, -0.462647, 0.718975,
		-0.346923, -0.882487, -0.317586,
		33.059116, 33.919300, 51.233635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782856, 34.143887, 51.579826>,  <33.301964, 34.537041, 51.455944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782856, 34.143887, 51.579826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.573128, 33.955280, 51.296204>,  <33.447289, 33.842117, 51.126030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.573128, 33.955280, 51.296204>,  <33.782856, 34.143887, 51.579826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573128, 33.955280, 51.296204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820963, -0.058850, -0.567941,
		0.226063, -0.879894, 0.417950,
		-0.524324, -0.471512, -0.709056,
		33.415829, 33.813828, 51.083488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230549, 33.619965, 51.321663>,  <33.782856, 34.143887, 51.579826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230549, 33.619965, 51.321663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942699, 33.623310, 51.043938>,  <33.769989, 33.625317, 50.877304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942699, 33.623310, 51.043938>,  <34.230549, 33.619965, 51.321663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942699, 33.623310, 51.043938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675244, -0.224585, -0.702572,
		-0.161809, -0.974418, 0.155969,
		-0.719627, 0.008365, -0.694310,
		33.726810, 33.625820, 50.835644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318451, 32.974346, 50.885086>,  <34.230549, 33.619965, 51.321663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318451, 32.974346, 50.885086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.117344, 33.254169, 50.681976>,  <33.996681, 33.422066, 50.560108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.117344, 33.254169, 50.681976>,  <34.318451, 32.974346, 50.885086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117344, 33.254169, 50.681976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685615, -0.035038, -0.727120,
		-0.526458, -0.713711, -0.462015,
		-0.502766, 0.699563, -0.507778,
		33.966515, 33.464039, 50.529644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432236, 32.759499, 50.283955>,  <34.318451, 32.974346, 50.885086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432236, 32.759499, 50.283955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312004, 33.136776, 50.227341>,  <34.239864, 33.363144, 50.193371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312004, 33.136776, 50.227341>,  <34.432236, 32.759499, 50.283955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312004, 33.136776, 50.227341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663862, 0.100351, -0.741091,
		-0.684791, -0.316717, -0.656316,
		-0.300579, 0.943196, -0.141537,
		34.221832, 33.419735, 50.184879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286610, 32.791183, 49.589371>,  <34.432236, 32.759499, 50.283955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286610, 32.791183, 49.589371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318596, 33.179142, 49.681370>,  <34.337788, 33.411919, 49.736568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318596, 33.179142, 49.681370>,  <34.286610, 32.791183, 49.589371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318596, 33.179142, 49.681370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555837, 0.148146, -0.817984,
		-0.827437, 0.193248, -0.527260,
		0.079962, 0.969901, 0.229996,
		34.342583, 33.470112, 49.750370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112648, 33.248058, 49.027065>,  <34.286610, 32.791183, 49.589371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112648, 33.248058, 49.027065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389526, 33.433792, 49.248062>,  <34.555653, 33.545235, 49.380661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389526, 33.433792, 49.248062>,  <34.112648, 33.248058, 49.027065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389526, 33.433792, 49.248062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567988, 0.121796, -0.813975,
		-0.445252, 0.877243, -0.179431,
		0.692200, 0.464339, 0.552493,
		34.597187, 33.573093, 49.413811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347748, 33.600822, 48.497570>,  <34.112648, 33.248058, 49.027065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347748, 33.600822, 48.497570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.613239, 33.690639, 48.782959>,  <34.772533, 33.744530, 48.954193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.613239, 33.690639, 48.782959>,  <34.347748, 33.600822, 48.497570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613239, 33.690639, 48.782959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662000, 0.267657, -0.700083,
		-0.348168, 0.936984, 0.029002,
		0.663729, 0.224547, 0.713472,
		34.812359, 33.758003, 48.997002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242424, 34.203720, 47.976700>,  <34.347748, 33.600822, 48.497570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242424, 34.203720, 47.976700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975571, 34.170692, 48.272839>,  <33.815460, 34.150875, 48.450523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975571, 34.170692, 48.272839>,  <34.242424, 34.203720, 47.976700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975571, 34.170692, 48.272839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395290, 0.881617, -0.257871,
		-0.631410, -0.464686, -0.620797,
		-0.667134, -0.082572, 0.740347,
		33.775429, 34.145920, 48.494942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470379, 34.383057, 47.801388>,  <34.242424, 34.203720, 47.976700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470379, 34.383057, 47.801388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544567, 34.454117, 48.187969>,  <33.589081, 34.496754, 48.419918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544567, 34.454117, 48.187969>,  <33.470379, 34.383057, 47.801388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544567, 34.454117, 48.187969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466155, 0.881718, -0.072618,
		-0.865044, -0.437051, 0.246345,
		0.185469, 0.177653, 0.966458,
		33.600208, 34.507412, 48.477905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857151, 34.531757, 47.394398>,  <33.470379, 34.383057, 47.801388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857151, 34.531757, 47.394398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589020, 34.608105, 47.107559>,  <32.428143, 34.653915, 46.935455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589020, 34.608105, 47.107559>,  <32.857151, 34.531757, 47.394398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589020, 34.608105, 47.107559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556863, 0.509333, 0.656112,
		0.490476, 0.839135, -0.235130,
		-0.670326, 0.190872, -0.717099,
		32.387920, 34.665367, 46.892429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668030, 35.289993, 47.396687>,  <32.857151, 34.531757, 47.394398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668030, 35.289993, 47.396687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.364544, 35.075493, 47.248749>,  <32.182453, 34.946793, 47.159988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.364544, 35.075493, 47.248749>,  <32.668030, 35.289993, 47.396687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364544, 35.075493, 47.248749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649733, 0.582136, 0.488840,
		-0.046842, 0.611191, -0.790096,
		-0.758718, -0.536250, -0.369842,
		32.136929, 34.914619, 47.137794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328476, 35.607979, 46.904266>,  <32.668030, 35.289993, 47.396687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328476, 35.607979, 46.904266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.056572, 35.364056, 47.067268>,  <31.893431, 35.217701, 47.165070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.056572, 35.364056, 47.067268>,  <32.328476, 35.607979, 46.904266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056572, 35.364056, 47.067268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456059, 0.786573, 0.416309,
		-0.574403, 0.097143, -0.812788,
		-0.679759, -0.609809, 0.407507,
		31.852644, 35.181114, 47.189522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703058, 35.917877, 46.790916>,  <32.328476, 35.607979, 46.904266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703058, 35.917877, 46.790916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.609507, 35.644886, 47.067909>,  <31.553375, 35.481091, 47.234104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.609507, 35.644886, 47.067909>,  <31.703058, 35.917877, 46.790916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609507, 35.644886, 47.067909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552748, 0.679268, 0.482768,
		-0.799856, -0.269856, -0.536105,
		-0.233881, -0.682476, 0.692479,
		31.539343, 35.440144, 47.275654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968933, 35.843353, 46.836525>,  <31.703058, 35.917877, 46.790916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968933, 35.843353, 46.836525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.094950, 35.712708, 47.192966>,  <31.170559, 35.634319, 47.406834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.094950, 35.712708, 47.192966>,  <30.968933, 35.843353, 46.836525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094950, 35.712708, 47.192966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499990, 0.740944, 0.448344,
		-0.806696, -0.586792, 0.070123,
		0.315042, -0.326616, 0.891106,
		31.189463, 35.614723, 47.460297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348688, 35.908520, 47.308193>,  <30.968933, 35.843353, 46.836525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348688, 35.908520, 47.308193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.674967, 35.896946, 47.539295>,  <30.870735, 35.890003, 47.677956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.674967, 35.896946, 47.539295>,  <30.348688, 35.908520, 47.308193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674967, 35.896946, 47.539295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376451, 0.731782, 0.568137,
		-0.439229, -0.680924, 0.586021,
		0.815698, -0.028934, 0.577754,
		30.919676, 35.888268, 47.712620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133936, 36.002762, 47.966324>,  <30.348688, 35.908520, 47.308193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133936, 36.002762, 47.966324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517115, 36.038963, 48.075245>,  <30.747023, 36.060684, 48.140598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517115, 36.038963, 48.075245>,  <30.133936, 36.002762, 47.966324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517115, 36.038963, 48.075245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248384, 0.736695, 0.628956,
		-0.143684, -0.670142, 0.728193,
		0.957946, 0.090500, 0.272303,
		30.804499, 36.066113, 48.156937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230688, 35.915836, 48.727489>,  <30.133936, 36.002762, 47.966324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230688, 35.915836, 48.727489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534161, 36.135868, 48.587883>,  <30.716244, 36.267887, 48.504120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534161, 36.135868, 48.587883>,  <30.230688, 35.915836, 48.727489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534161, 36.135868, 48.587883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330430, 0.786649, 0.521536,
		0.561440, -0.280354, 0.778579,
		0.758683, 0.550078, -0.349019,
		30.761766, 36.300892, 48.483177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368477, 36.311226, 49.308556>,  <30.230688, 35.915836, 48.727489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368477, 36.311226, 49.308556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.521008, 36.502155, 48.991882>,  <30.612526, 36.616711, 48.801880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.521008, 36.502155, 48.991882>,  <30.368477, 36.311226, 49.308556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521008, 36.502155, 48.991882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225175, 0.878552, 0.421240,
		0.896596, 0.017636, 0.442497,
		0.381328, 0.477322, -0.791677,
		30.635405, 36.645351, 48.754379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881056, 36.736923, 49.504864>,  <30.368477, 36.311226, 49.308556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881056, 36.736923, 49.504864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.816401, 36.890465, 49.141209>,  <30.777607, 36.982590, 48.923016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.816401, 36.890465, 49.141209>,  <30.881056, 36.736923, 49.504864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816401, 36.890465, 49.141209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059256, 0.915815, 0.397204,
		0.985069, 0.118076, -0.125288,
		-0.161641, 0.383849, -0.909138,
		30.767908, 37.005619, 48.868465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365007, 37.254490, 49.477787>,  <30.881056, 36.736923, 49.504864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365007, 37.254490, 49.477787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051371, 37.314335, 49.236851>,  <30.863188, 37.350243, 49.092289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051371, 37.314335, 49.236851>,  <31.365007, 37.254490, 49.477787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051371, 37.314335, 49.236851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204010, 0.854454, 0.477795,
		0.586156, 0.497519, -0.639450,
		-0.784093, 0.149608, -0.602342,
		30.816143, 37.359219, 49.056149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478571, 37.894753, 49.420334>,  <31.365007, 37.254490, 49.477787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478571, 37.894753, 49.420334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098902, 37.841038, 49.306461>,  <30.871101, 37.808811, 49.238140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098902, 37.841038, 49.306461>,  <31.478571, 37.894753, 49.420334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098902, 37.841038, 49.306461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275109, 0.793367, 0.543032,
		0.152933, 0.593748, -0.789984,
		-0.949172, -0.134284, -0.284677,
		30.814150, 37.800751, 49.221058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235638, 38.562916, 49.338661>,  <31.478571, 37.894753, 49.420334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235638, 38.562916, 49.338661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.909344, 38.331676, 49.346458>,  <30.713568, 38.192932, 49.351135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.909344, 38.331676, 49.346458>,  <31.235638, 38.562916, 49.338661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909344, 38.331676, 49.346458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425573, 0.622648, 0.656656,
		-0.391749, 0.527361, -0.753939,
		-0.815733, -0.578100, 0.019491,
		30.664623, 38.158245, 49.352306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679253, 39.082100, 49.489552>,  <31.235638, 38.562916, 49.338661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679253, 39.082100, 49.489552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.513277, 38.731834, 49.588379>,  <30.413691, 38.521675, 49.647675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.513277, 38.731834, 49.588379>,  <30.679253, 39.082100, 49.489552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513277, 38.731834, 49.588379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373327, 0.411500, 0.831442,
		-0.829730, 0.252761, -0.497655,
		-0.414941, -0.875660, 0.247071,
		30.388794, 38.469135, 49.662498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056480, 39.780251, 49.585060>,  <30.679253, 39.082100, 49.489552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056480, 39.780251, 49.585060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.297447, 39.967281, 49.843815>,  <31.442026, 40.079502, 49.999069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.297447, 39.967281, 49.843815>,  <31.056480, 39.780251, 49.585060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297447, 39.967281, 49.843815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753218, -0.064836, -0.654568,
		-0.264121, 0.881570, -0.391247,
		0.602415, 0.467579, 0.646890,
		31.478172, 40.107555, 50.037880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394321, 40.449730, 49.213902>,  <31.056480, 39.780251, 49.585060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394321, 40.449730, 49.213902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627382, 40.312050, 49.508396>,  <31.767220, 40.229443, 49.685093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627382, 40.312050, 49.508396>,  <31.394321, 40.449730, 49.213902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627382, 40.312050, 49.508396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695528, -0.257440, -0.670794,
		0.420423, 0.902913, 0.089403,
		0.582653, -0.344200, 0.736235,
		31.802177, 40.208790, 49.729267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045055, 40.702175, 48.982330>,  <31.394321, 40.449730, 49.213902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045055, 40.702175, 48.982330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112267, 40.408310, 49.245251>,  <32.152592, 40.231991, 49.403004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112267, 40.408310, 49.245251>,  <32.045055, 40.702175, 48.982330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112267, 40.408310, 49.245251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732683, -0.353015, -0.581856,
		0.659503, 0.579357, 0.478958,
		0.168023, -0.734660, 0.657299,
		32.162674, 40.187912, 49.442440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804840, 40.816940, 49.209347>,  <32.045055, 40.702175, 48.982330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804840, 40.816940, 49.209347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679871, 40.440285, 49.259487>,  <32.604889, 40.214291, 49.289574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679871, 40.440285, 49.259487>,  <32.804840, 40.816940, 49.209347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679871, 40.440285, 49.259487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797845, -0.331730, -0.503388,
		0.515591, -0.057258, 0.854919,
		-0.312425, -0.941635, 0.125354,
		32.586143, 40.157795, 49.297092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271049, 40.475655, 49.529678>,  <32.804840, 40.816940, 49.209347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271049, 40.475655, 49.529678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.066883, 40.161469, 49.389664>,  <32.944382, 39.972958, 49.305656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.066883, 40.161469, 49.389664>,  <33.271049, 40.475655, 49.529678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066883, 40.161469, 49.389664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858042, -0.438263, -0.267747,
		0.056898, -0.437007, 0.897657,
		-0.510417, -0.785462, -0.350034,
		32.913757, 39.925831, 49.284653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534966, 39.824738, 49.794735>,  <33.271049, 40.475655, 49.529678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534966, 39.824738, 49.794735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349960, 39.734722, 49.451706>,  <33.238956, 39.680714, 49.245888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349960, 39.734722, 49.451706>,  <33.534966, 39.824738, 49.794735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349960, 39.734722, 49.451706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821849, -0.471707, -0.319464,
		-0.332633, -0.852555, 0.403120,
		-0.462515, -0.225040, -0.857577,
		33.211205, 39.667210, 49.194431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834980, 39.219166, 49.610161>,  <33.534966, 39.824738, 49.794735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834980, 39.219166, 49.610161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678844, 39.362389, 49.270882>,  <33.585163, 39.448322, 49.067314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678844, 39.362389, 49.270882>,  <33.834980, 39.219166, 49.610161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678844, 39.362389, 49.270882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805120, -0.314104, -0.503112,
		-0.446562, -0.879282, -0.165668,
		-0.390340, 0.358053, -0.848194,
		33.561741, 39.469803, 49.016422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923542, 38.658310, 49.067928>,  <33.834980, 39.219166, 49.610161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923542, 38.658310, 49.067928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.846416, 38.996090, 48.868038>,  <33.800140, 39.198757, 48.748104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.846416, 38.996090, 48.868038>,  <33.923542, 38.658310, 49.067928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846416, 38.996090, 48.868038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721578, -0.223095, -0.655404,
		-0.664944, -0.486958, -0.566323,
		-0.192810, 0.844453, -0.499724,
		33.788574, 39.249424, 48.718121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829792, 38.496830, 48.376511>,  <33.923542, 38.658310, 49.067928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829792, 38.496830, 48.376511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953812, 38.876526, 48.355309>,  <34.028225, 39.104343, 48.342587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953812, 38.876526, 48.355309>,  <33.829792, 38.496830, 48.376511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953812, 38.876526, 48.355309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766390, -0.282541, -0.576903,
		-0.562595, 0.138250, -0.815091,
		0.310053, 0.949241, -0.053003,
		34.046829, 39.161297, 48.339409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168037, 38.571316, 47.778244>,  <33.829792, 38.496830, 48.376511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168037, 38.571316, 47.778244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267033, 38.932606, 47.918495>,  <34.326431, 39.149380, 48.002644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267033, 38.932606, 47.918495>,  <34.168037, 38.571316, 47.778244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267033, 38.932606, 47.918495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921254, -0.107297, -0.373869,
		-0.300065, 0.415544, -0.858653,
		0.247490, 0.903223, 0.350625,
		34.341278, 39.203571, 48.023682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558388, 38.924717, 47.253716>,  <34.168037, 38.571316, 47.778244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558388, 38.924717, 47.253716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667835, 39.115795, 47.587646>,  <34.733501, 39.230442, 47.788006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667835, 39.115795, 47.587646>,  <34.558388, 38.924717, 47.253716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667835, 39.115795, 47.587646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960632, -0.092246, -0.262063,
		-0.048176, 0.873671, -0.484127,
		0.273615, 0.477693, 0.834832,
		34.749920, 39.259102, 47.838097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053707, 39.465496, 47.126266>,  <34.558388, 38.924717, 47.253716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053707, 39.465496, 47.126266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.101425, 39.359531, 47.509014>,  <35.130058, 39.295952, 47.738663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.101425, 39.359531, 47.509014>,  <35.053707, 39.465496, 47.126266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101425, 39.359531, 47.509014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991190, 0.087624, -0.099320,
		-0.057534, 0.960284, 0.273030,
		0.119299, -0.264910, 0.956865,
		35.137215, 39.280060, 47.796074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.802719, 41.804565, 55.126514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438169, 41.858425, 54.970943>,  <29.219440, 41.890739, 54.877602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438169, 41.858425, 54.970943>,  <29.802719, 41.804565, 55.126514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438169, 41.858425, 54.970943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364843, -0.173058, -0.914844,
		-0.190499, -0.975663, 0.108591,
		-0.911372, 0.134658, -0.388931,
		29.164757, 41.898819, 54.854263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611349, 41.210644, 54.682987>,  <29.802719, 41.804565, 55.126514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611349, 41.210644, 54.682987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385567, 41.514908, 54.554745>,  <29.250097, 41.697464, 54.477798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385567, 41.514908, 54.554745>,  <29.611349, 41.210644, 54.682987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385567, 41.514908, 54.554745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277560, -0.190881, -0.941555,
		-0.777399, -0.620454, -0.103384,
		-0.564457, 0.760659, -0.320604,
		29.216230, 41.743107, 54.458565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153023, 40.930069, 54.205505>,  <29.611349, 41.210644, 54.682987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153023, 40.930069, 54.205505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.100458, 41.312355, 54.100182>,  <29.068920, 41.541729, 54.036987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.100458, 41.312355, 54.100182>,  <29.153023, 40.930069, 54.205505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100458, 41.312355, 54.100182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085121, -0.253754, -0.963516,
		-0.987667, -0.149030, -0.048005,
		-0.131411, 0.955719, -0.263310,
		29.061035, 41.599072, 54.021187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634510, 41.025734, 53.541912>,  <29.153023, 40.930069, 54.205505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634510, 41.025734, 53.541912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.876162, 41.344486, 53.543407>,  <29.021152, 41.535736, 53.544304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.876162, 41.344486, 53.543407>,  <28.634510, 41.025734, 53.541912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876162, 41.344486, 53.543407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284254, -0.211118, -0.935216,
		-0.744463, 0.566054, -0.354058,
		0.604131, 0.796876, 0.003734,
		29.057402, 41.583549, 53.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358019, 41.517494, 52.978909>,  <28.634510, 41.025734, 53.541912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358019, 41.517494, 52.978909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.746590, 41.577446, 53.052513>,  <28.979733, 41.613419, 53.096676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.746590, 41.577446, 53.052513>,  <28.358019, 41.517494, 52.978909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746590, 41.577446, 53.052513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224279, -0.326182, -0.918316,
		-0.077617, 0.933349, -0.350478,
		0.971429, 0.149881, 0.184013,
		29.038019, 41.622410, 53.107716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733778, 41.741482, 52.384727>,  <28.358019, 41.517494, 52.978909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733778, 41.741482, 52.384727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070248, 41.630688, 52.570503>,  <29.272129, 41.564213, 52.681969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070248, 41.630688, 52.570503>,  <28.733778, 41.741482, 52.384727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070248, 41.630688, 52.570503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371807, -0.327409, -0.868656,
		0.392667, 0.903373, -0.172423,
		0.841173, -0.276985, 0.464443,
		29.322599, 41.547592, 52.709835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278786, 42.063919, 51.958286>,  <28.733778, 41.741482, 52.384727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278786, 42.063919, 51.958286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.441708, 41.764912, 52.168167>,  <29.539461, 41.585506, 52.294094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.441708, 41.764912, 52.168167>,  <29.278786, 42.063919, 51.958286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441708, 41.764912, 52.168167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557524, -0.251537, -0.791136,
		0.723374, 0.614767, 0.314310,
		0.407304, -0.747523, 0.524703,
		29.563898, 41.540653, 52.325577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982048, 42.113251, 51.872730>,  <29.278786, 42.063919, 51.958286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982048, 42.113251, 51.872730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929403, 41.739586, 52.005402>,  <29.897816, 41.515385, 52.085003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929403, 41.739586, 52.005402>,  <29.982048, 42.113251, 51.872730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929403, 41.739586, 52.005402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695028, -0.325532, -0.641066,
		0.706834, 0.146155, 0.692116,
		-0.131611, -0.934167, 0.331679,
		29.889919, 41.459335, 52.104904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614138, 41.852409, 51.937859>,  <29.982048, 42.113251, 51.872730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614138, 41.852409, 51.937859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.385160, 41.524704, 51.924541>,  <30.247774, 41.328079, 51.916550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.385160, 41.524704, 51.924541>,  <30.614138, 41.852409, 51.937859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385160, 41.524704, 51.924541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709793, -0.474806, -0.520339,
		0.410489, -0.321496, 0.853310,
		-0.572444, -0.819268, -0.033293,
		30.213427, 41.278923, 51.914555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151051, 41.275051, 51.989616>,  <30.614138, 41.852409, 51.937859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151051, 41.275051, 51.989616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.819717, 41.122082, 51.825851>,  <30.620918, 41.030300, 51.727592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.819717, 41.122082, 51.825851>,  <31.151051, 41.275051, 51.989616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819717, 41.122082, 51.825851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557303, -0.637156, -0.532396,
		-0.057260, -0.669168, 0.740902,
		-0.828332, -0.382421, -0.409413,
		30.571218, 41.007355, 51.703026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278341, 40.523281, 51.995251>,  <31.151051, 41.275051, 51.989616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278341, 40.523281, 51.995251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.988943, 40.587246, 51.726631>,  <30.815304, 40.625626, 51.565460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.988943, 40.587246, 51.726631>,  <31.278341, 40.523281, 51.995251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988943, 40.587246, 51.726631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554539, -0.444749, -0.703338,
		-0.411149, -0.881263, 0.233092,
		-0.723493, 0.159918, -0.671553,
		30.771894, 40.635220, 51.525166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001892, 39.793812, 51.655651>,  <31.278341, 40.523281, 51.995251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001892, 39.793812, 51.655651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.941212, 40.116295, 51.426910>,  <30.904804, 40.309784, 51.289665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.941212, 40.116295, 51.426910>,  <31.001892, 39.793812, 51.655651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941212, 40.116295, 51.426910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597876, -0.385861, -0.702606,
		-0.787103, -0.448478, -0.423480,
		-0.151699, 0.806212, -0.571847,
		30.895702, 40.358158, 51.255356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101595, 39.455524, 51.058968>,  <31.001892, 39.793812, 51.655651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101595, 39.455524, 51.058968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096514, 39.840939, 50.952053>,  <31.093466, 40.072186, 50.887905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096514, 39.840939, 50.952053>,  <31.101595, 39.455524, 51.058968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096514, 39.840939, 50.952053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515632, -0.222715, -0.827358,
		-0.856716, -0.148332, -0.493999,
		-0.012703, 0.963533, -0.267289,
		31.092703, 40.129997, 50.871868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715189, 39.640392, 50.316628>,  <31.101595, 39.455524, 51.058968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715189, 39.640392, 50.316628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.997242, 39.911697, 50.399326>,  <31.166473, 40.074482, 50.448948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.997242, 39.911697, 50.399326>,  <30.715189, 39.640392, 50.316628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997242, 39.911697, 50.399326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515192, -0.289722, -0.806622,
		-0.487204, 0.675290, -0.553729,
		0.705131, 0.678266, 0.206750,
		31.208782, 40.115177, 50.461349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078768, 39.251900, 49.939705>,  <30.715189, 39.640392, 50.316628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078768, 39.251900, 49.939705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.140648, 38.868374, 50.034992>,  <30.177776, 38.638260, 50.092163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.140648, 38.868374, 50.034992>,  <30.078768, 39.251900, 49.939705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140648, 38.868374, 50.034992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450758, 0.146061, 0.880615,
		-0.879138, -0.243611, -0.409596,
		0.154701, -0.958812, 0.238217,
		30.187057, 38.580730, 50.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589727, 39.002632, 50.383144>,  <30.078768, 39.251900, 49.939705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589727, 39.002632, 50.383144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.870403, 38.725880, 50.451187>,  <30.038809, 38.559830, 50.492012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.870403, 38.725880, 50.451187>,  <29.589727, 39.002632, 50.383144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870403, 38.725880, 50.451187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328810, -0.102660, 0.938800,
		-0.632071, -0.714680, -0.299532,
		0.701691, -0.691877, 0.170105,
		30.080912, 38.518318, 50.502220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231375, 38.589546, 50.752167>,  <29.589727, 39.002632, 50.383144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231375, 38.589546, 50.752167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616749, 38.519596, 50.833374>,  <29.847973, 38.477627, 50.882099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616749, 38.519596, 50.833374>,  <29.231375, 38.589546, 50.752167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616749, 38.519596, 50.833374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221296, -0.092109, 0.970847,
		-0.151081, -0.980272, -0.127441,
		0.963433, -0.174879, 0.203014,
		29.905779, 38.467133, 50.894279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275103, 37.939743, 51.196426>,  <29.231375, 38.589546, 50.752167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275103, 37.939743, 51.196426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600430, 38.156765, 51.280472>,  <29.795626, 38.286980, 51.330898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600430, 38.156765, 51.280472>,  <29.275103, 37.939743, 51.196426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600430, 38.156765, 51.280472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201819, -0.075621, 0.976499,
		0.545694, -0.836609, 0.047994,
		0.813318, 0.542556, 0.210110,
		29.844425, 38.319530, 51.343506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529982, 37.677013, 51.884884>,  <29.275103, 37.939743, 51.196426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529982, 37.677013, 51.884884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707750, 38.034168, 51.855907>,  <29.814411, 38.248459, 51.838524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707750, 38.034168, 51.855907>,  <29.529982, 37.677013, 51.884884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707750, 38.034168, 51.855907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023784, 0.069074, 0.997328,
		0.895501, -0.444958, 0.009462,
		0.444423, 0.892883, -0.072439,
		29.841078, 38.302032, 51.834175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154705, 37.625763, 52.259453>,  <29.529982, 37.677013, 51.884884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154705, 37.625763, 52.259453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.060316, 38.012821, 52.223713>,  <30.003683, 38.245056, 52.202271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.060316, 38.012821, 52.223713>,  <30.154705, 37.625763, 52.259453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060316, 38.012821, 52.223713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308550, 0.161794, 0.937347,
		0.921474, 0.193618, -0.336745,
		-0.235971, 0.967644, -0.089348,
		29.989525, 38.303116, 52.196907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643644, 37.943439, 52.572575>,  <30.154705, 37.625763, 52.259453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643644, 37.943439, 52.572575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.334246, 38.196922, 52.576927>,  <30.148607, 38.349014, 52.579540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.334246, 38.196922, 52.576927>,  <30.643644, 37.943439, 52.572575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334246, 38.196922, 52.576927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177924, 0.200632, 0.963374,
		0.608316, 0.747101, -0.267940,
		-0.773495, 0.633709, 0.010880,
		30.102198, 38.387035, 52.580193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741217, 38.460148, 53.051334>,  <30.643644, 37.943439, 52.572575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741217, 38.460148, 53.051334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343006, 38.457741, 53.013615>,  <30.104080, 38.456299, 52.990982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343006, 38.457741, 53.013615>,  <30.741217, 38.460148, 53.051334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343006, 38.457741, 53.013615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093701, 0.191671, 0.976976,
		0.012199, 0.981441, -0.191377,
		-0.995526, -0.006014, -0.094301,
		30.044348, 38.455936, 52.985325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497259, 38.959961, 53.565273>,  <30.741217, 38.460148, 53.051334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497259, 38.959961, 53.565273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158697, 38.762779, 53.484680>,  <29.955561, 38.644470, 53.436325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158697, 38.762779, 53.484680>,  <30.497259, 38.959961, 53.565273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158697, 38.762779, 53.484680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278313, 0.086898, 0.956551,
		-0.454029, 0.865704, -0.210747,
		-0.846404, -0.492956, -0.201482,
		29.904776, 38.614891, 53.424236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035057, 39.307343, 53.945305>,  <30.497259, 38.959961, 53.565273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035057, 39.307343, 53.945305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821245, 38.974606, 53.885536>,  <29.692959, 38.774963, 53.849674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821245, 38.974606, 53.885536>,  <30.035057, 39.307343, 53.945305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821245, 38.974606, 53.885536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520464, 0.184695, 0.833670,
		-0.665882, 0.523386, -0.531666,
		-0.534528, -0.831838, -0.149419,
		29.660887, 38.725056, 53.840710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287645, 39.440548, 53.961613>,  <30.035057, 39.307343, 53.945305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287645, 39.440548, 53.961613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297998, 39.044674, 54.017963>,  <29.304211, 38.807148, 54.051773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297998, 39.044674, 54.017963>,  <29.287645, 39.440548, 53.961613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297998, 39.044674, 54.017963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593212, 0.098225, 0.799032,
		-0.804630, -0.104254, -0.584552,
		0.025885, -0.989688, 0.140880,
		29.305763, 38.747768, 54.060226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641802, 39.230927, 54.044735>,  <29.287645, 39.440548, 53.961613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641802, 39.230927, 54.044735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856369, 38.945988, 54.225761>,  <28.985109, 38.775024, 54.334377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856369, 38.945988, 54.225761>,  <28.641802, 39.230927, 54.044735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856369, 38.945988, 54.225761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598581, 0.056895, 0.799039,
		-0.594942, -0.699517, -0.395878,
		0.536418, -0.712347, 0.452568,
		29.017294, 38.732285, 54.361530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195261, 38.651821, 54.290436>,  <28.641802, 39.230927, 54.044735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195261, 38.651821, 54.290436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526867, 38.622635, 54.512215>,  <28.725830, 38.605122, 54.645283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526867, 38.622635, 54.512215>,  <28.195261, 38.651821, 54.290436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526867, 38.622635, 54.512215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556555, -0.010815, 0.830740,
		-0.054629, -0.997275, -0.049581,
		0.829013, -0.072977, 0.554448,
		28.775572, 38.600746, 54.678551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933556, 38.227459, 54.760811>,  <28.195261, 38.651821, 54.290436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933556, 38.227459, 54.760811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267464, 38.393349, 54.905678>,  <28.467808, 38.492882, 54.992596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267464, 38.393349, 54.905678>,  <27.933556, 38.227459, 54.760811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267464, 38.393349, 54.905678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431125, 0.083197, 0.898448,
		0.342477, -0.906136, 0.248248,
		0.834770, 0.414724, 0.362165,
		28.517895, 38.517765, 55.014328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.243710, 37.773849, 59.654457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.949673, 37.840199, 59.391510>,  <33.773251, 37.880009, 59.233742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.949673, 37.840199, 59.391510>,  <34.243710, 37.773849, 59.654457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949673, 37.840199, 59.391510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493359, -0.534171, -0.686483,
		-0.465015, -0.828943, 0.310828,
		-0.735091, 0.165875, -0.657364,
		33.729145, 37.889961, 59.194302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213104, 37.109421, 59.317101>,  <34.243710, 37.773849, 59.654457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213104, 37.109421, 59.317101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.026920, 37.381348, 59.090401>,  <33.915211, 37.544502, 58.954380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.026920, 37.381348, 59.090401>,  <34.213104, 37.109421, 59.317101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026920, 37.381348, 59.090401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341980, -0.452471, -0.823601,
		-0.816334, -0.577165, -0.021878,
		-0.465455, 0.679816, -0.566747,
		33.887283, 37.585293, 58.920376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711765, 36.776073, 58.760403>,  <34.213104, 37.109421, 59.317101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711765, 36.776073, 58.760403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866001, 37.128582, 58.651085>,  <33.958542, 37.340088, 58.585495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866001, 37.128582, 58.651085>,  <33.711765, 36.776073, 58.760403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866001, 37.128582, 58.651085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375086, -0.420336, -0.826213,
		-0.842991, 0.216068, -0.492627,
		0.385588, 0.881267, -0.273295,
		33.981678, 37.392963, 58.569096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799431, 36.635124, 58.113869>,  <33.711765, 36.776073, 58.760403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799431, 36.635124, 58.113869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957546, 37.001743, 58.138134>,  <34.052418, 37.221714, 58.152695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957546, 37.001743, 58.138134>,  <33.799431, 36.635124, 58.113869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957546, 37.001743, 58.138134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380260, -0.103166, -0.919108,
		-0.836150, 0.386382, -0.389309,
		0.395290, 0.916551, 0.060664,
		34.076134, 37.276707, 58.156334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486599, 36.939911, 57.530663>,  <33.799431, 36.635124, 58.113869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486599, 36.939911, 57.530663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831341, 37.109203, 57.642433>,  <34.038185, 37.210777, 57.709496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831341, 37.109203, 57.642433>,  <33.486599, 36.939911, 57.530663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831341, 37.109203, 57.642433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353913, -0.107297, -0.929103,
		-0.363241, 0.899648, -0.242260,
		0.861859, 0.423228, 0.279422,
		34.089897, 37.236172, 57.726261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644741, 37.275909, 57.004250>,  <33.486599, 36.939911, 57.530663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644741, 37.275909, 57.004250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996002, 37.293457, 57.194794>,  <34.206760, 37.303986, 57.309120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996002, 37.293457, 57.194794>,  <33.644741, 37.275909, 57.004250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996002, 37.293457, 57.194794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476788, 0.000809, -0.879018,
		-0.038943, 0.999037, -0.020204,
		0.878155, 0.043865, 0.476360,
		34.259449, 37.306618, 57.337700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068695, 37.732624, 56.672295>,  <33.644741, 37.275909, 57.004250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068695, 37.732624, 56.672295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316658, 37.487999, 56.868950>,  <34.465435, 37.341225, 56.986942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316658, 37.487999, 56.868950>,  <34.068695, 37.732624, 56.672295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316658, 37.487999, 56.868950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530861, -0.134535, -0.836712,
		0.577843, 0.779675, 0.241255,
		0.619907, -0.611561, 0.491639,
		34.502628, 37.304531, 57.016441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735641, 37.925369, 56.454086>,  <34.068695, 37.732624, 56.672295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735641, 37.925369, 56.454086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771133, 37.561356, 56.616062>,  <34.792427, 37.342949, 56.713245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771133, 37.561356, 56.616062>,  <34.735641, 37.925369, 56.454086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771133, 37.561356, 56.616062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500742, -0.310678, -0.807921,
		0.861037, 0.274455, 0.428123,
		0.088730, -0.910029, 0.404936,
		34.797752, 37.288345, 56.737541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473442, 37.741802, 56.400085>,  <34.735641, 37.925369, 56.454086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473442, 37.741802, 56.400085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278309, 37.392628, 56.399998>,  <35.161228, 37.183125, 56.399944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278309, 37.392628, 56.399998>,  <35.473442, 37.741802, 56.400085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278309, 37.392628, 56.399998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476936, -0.266323, -0.837618,
		0.731128, -0.408725, 0.546257,
		-0.487836, -0.872935, -0.000220,
		35.131958, 37.130749, 56.399933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008469, 37.288979, 56.123512>,  <35.473442, 37.741802, 56.400085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008469, 37.288979, 56.123512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675545, 37.067509, 56.112865>,  <35.475792, 36.934628, 56.106480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675545, 37.067509, 56.112865>,  <36.008469, 37.288979, 56.123512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675545, 37.067509, 56.112865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265893, -0.356656, -0.895599,
		0.486375, -0.752493, 0.444066,
		-0.832310, -0.553671, -0.026614,
		35.425850, 36.901409, 56.104881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225895, 36.606071, 56.017658>,  <36.008469, 37.288979, 56.123512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225895, 36.606071, 56.017658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843239, 36.610935, 55.901249>,  <35.613647, 36.613853, 55.831402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843239, 36.610935, 55.901249>,  <36.225895, 36.606071, 56.017658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843239, 36.610935, 55.901249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260562, -0.410870, -0.873667,
		-0.130195, -0.911613, 0.389886,
		-0.956638, 0.012158, -0.291025,
		35.556248, 36.614582, 55.813942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163666, 36.008106, 55.624954>,  <36.225895, 36.606071, 56.017658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163666, 36.008106, 55.624954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847244, 36.224411, 55.510548>,  <35.657391, 36.354195, 55.441906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847244, 36.224411, 55.510548>,  <36.163666, 36.008106, 55.624954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847244, 36.224411, 55.510548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134475, -0.302386, -0.943652,
		-0.596778, -0.784945, 0.166486,
		-0.791058, 0.540762, -0.286013,
		35.609928, 36.386639, 55.424744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736225, 35.480892, 55.381687>,  <36.163666, 36.008106, 55.624954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736225, 35.480892, 55.381687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672466, 35.848373, 55.237144>,  <35.634212, 36.068863, 55.150417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672466, 35.848373, 55.237144>,  <35.736225, 35.480892, 55.381687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672466, 35.848373, 55.237144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331017, -0.295115, -0.896290,
		-0.930065, -0.262479, -0.257066,
		-0.159394, 0.918701, -0.361361,
		35.624649, 36.123985, 55.128735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548794, 35.376087, 54.720142>,  <35.736225, 35.480892, 55.381687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548794, 35.376087, 54.720142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665077, 35.758675, 54.709854>,  <35.734848, 35.988228, 54.703682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665077, 35.758675, 54.709854>,  <35.548794, 35.376087, 54.720142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665077, 35.758675, 54.709854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526681, -0.182403, -0.830263,
		-0.798809, 0.227819, -0.556779,
		0.290707, 0.956466, -0.025717,
		35.752289, 36.045616, 54.702141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937248, 35.766632, 54.369350>,  <35.548794, 35.376087, 54.720142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937248, 35.766632, 54.369350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657581, 35.568619, 54.163006>,  <34.489780, 35.449810, 54.039200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657581, 35.568619, 54.163006>,  <34.937248, 35.766632, 54.369350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657581, 35.568619, 54.163006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680197, 0.238308, 0.693211,
		-0.220226, 0.835557, -0.503334,
		-0.699165, -0.495029, -0.515862,
		34.447830, 35.420109, 54.008247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417084, 36.123070, 54.438404>,  <34.937248, 35.766632, 54.369350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417084, 36.123070, 54.438404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208805, 35.804817, 54.314564>,  <34.083839, 35.613865, 54.240257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208805, 35.804817, 54.314564>,  <34.417084, 36.123070, 54.438404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208805, 35.804817, 54.314564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552112, 0.037204, 0.832939,
		-0.651190, 0.604644, -0.458647,
		-0.520695, -0.795627, -0.309605,
		34.052597, 35.566128, 54.221684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781544, 36.392483, 54.432587>,  <34.417084, 36.123070, 54.438404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781544, 36.392483, 54.432587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745533, 35.994370, 54.447063>,  <33.723927, 35.755501, 54.455750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745533, 35.994370, 54.447063>,  <33.781544, 36.392483, 54.432587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745533, 35.994370, 54.447063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782585, 0.093170, 0.615532,
		-0.616000, 0.027085, -0.787280,
		-0.090023, -0.995282, 0.036196,
		33.718525, 35.695786, 54.457924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108177, 36.202728, 54.325321>,  <33.781544, 36.392483, 54.432587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108177, 36.202728, 54.325321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277130, 35.904808, 54.531956>,  <33.378502, 35.726055, 54.655937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277130, 35.904808, 54.531956>,  <33.108177, 36.202728, 54.325321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277130, 35.904808, 54.531956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693142, 0.101833, 0.713572,
		-0.584077, -0.659467, -0.473242,
		0.422385, -0.744805, 0.516582,
		33.403847, 35.681366, 54.686932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487755, 35.818447, 54.445026>,  <33.108177, 36.202728, 54.325321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487755, 35.818447, 54.445026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774548, 35.717094, 54.704792>,  <32.946625, 35.656284, 54.860653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774548, 35.717094, 54.704792>,  <32.487755, 35.818447, 54.445026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774548, 35.717094, 54.704792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696152, -0.211867, 0.685919,
		-0.036208, -0.943881, -0.328295,
		0.716980, -0.253379, 0.649414,
		32.989643, 35.641079, 54.899616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116531, 35.267570, 54.795776>,  <32.487755, 35.818447, 54.445026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116531, 35.267570, 54.795776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430935, 35.357212, 55.026241>,  <32.619579, 35.410995, 55.164520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430935, 35.357212, 55.026241>,  <32.116531, 35.267570, 54.795776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430935, 35.357212, 55.026241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577666, -0.065727, 0.813623,
		0.220203, -0.972347, 0.077792,
		0.786011, 0.224100, 0.576165,
		32.666737, 35.424442, 55.199089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222370, 34.743900, 55.363422>,  <32.116531, 35.267570, 54.795776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222370, 34.743900, 55.363422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411194, 35.069618, 55.498528>,  <32.524487, 35.265049, 55.579590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411194, 35.069618, 55.498528>,  <32.222370, 34.743900, 55.363422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411194, 35.069618, 55.498528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591200, 0.008200, 0.806483,
		0.653944, -0.580395, 0.485281,
		0.472058, 0.814293, 0.337767,
		32.552811, 35.313908, 55.599857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335125, 34.616070, 56.013176>,  <32.222370, 34.743900, 55.363422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335125, 34.616070, 56.013176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.349625, 35.014244, 55.977848>,  <32.358326, 35.253147, 55.956650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.349625, 35.014244, 55.977848>,  <32.335125, 34.616070, 56.013176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349625, 35.014244, 55.977848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584131, 0.092817, 0.806335,
		0.810849, 0.022364, 0.584827,
		0.036250, 0.995432, -0.088324,
		32.360500, 35.312874, 55.951351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422153, 34.911121, 56.707241>,  <32.335125, 34.616070, 56.013176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422153, 34.911121, 56.707241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287262, 35.232456, 56.510902>,  <32.206329, 35.425255, 56.393097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287262, 35.232456, 56.510902>,  <32.422153, 34.911121, 56.707241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287262, 35.232456, 56.510902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497927, 0.290293, 0.817190,
		0.798966, 0.519985, 0.302107,
		-0.337227, 0.803334, -0.490849,
		32.186092, 35.473457, 56.363647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449646, 35.539040, 57.112900>,  <32.422153, 34.911121, 56.707241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449646, 35.539040, 57.112900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156708, 35.604107, 56.848415>,  <31.980944, 35.643147, 56.689724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156708, 35.604107, 56.848415>,  <32.449646, 35.539040, 57.112900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156708, 35.604107, 56.848415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573055, 0.377267, 0.727515,
		0.367795, 0.911707, -0.183075,
		-0.732349, 0.162664, -0.661215,
		31.937002, 35.652905, 56.650051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187565, 36.274769, 57.081738>,  <32.449646, 35.539040, 57.112900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187565, 36.274769, 57.081738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895231, 36.002934, 57.056301>,  <31.719831, 35.839832, 57.041039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895231, 36.002934, 57.056301>,  <32.187565, 36.274769, 57.081738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895231, 36.002934, 57.056301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456919, 0.417899, 0.785230,
		-0.507056, 0.602929, -0.615930,
		-0.730835, -0.679585, -0.063591,
		31.675982, 35.799057, 57.037224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614170, 36.603725, 57.252590>,  <32.187565, 36.274769, 57.081738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614170, 36.603725, 57.252590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.462315, 36.234192, 57.272202>,  <31.371201, 36.012470, 57.283970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.462315, 36.234192, 57.272202>,  <31.614170, 36.603725, 57.252590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462315, 36.234192, 57.272202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550264, 0.268094, 0.790782,
		-0.743696, 0.273233, -0.610131,
		-0.379640, -0.923834, 0.049030,
		31.348423, 35.957043, 57.286911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836765, 36.632252, 57.208057>,  <31.614170, 36.603725, 57.252590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836765, 36.632252, 57.208057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983629, 36.325096, 57.418026>,  <31.071747, 36.140804, 57.544006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983629, 36.325096, 57.418026>,  <30.836765, 36.632252, 57.208057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983629, 36.325096, 57.418026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577946, 0.253852, 0.775588,
		-0.728816, -0.588142, -0.350593,
		0.367158, -0.767885, 0.524926,
		31.093777, 36.094730, 57.575504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204317, 36.401886, 57.549389>,  <30.836765, 36.632252, 57.208057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204317, 36.401886, 57.549389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490295, 36.214230, 57.756756>,  <30.661882, 36.101635, 57.881176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490295, 36.214230, 57.756756>,  <30.204317, 36.401886, 57.549389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490295, 36.214230, 57.756756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458202, 0.245677, 0.854221,
		-0.528112, -0.848264, -0.039314,
		0.714947, -0.469138, 0.518421,
		30.704779, 36.073490, 57.912281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885519, 35.790375, 57.380917>,  <30.204317, 36.401886, 57.549389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885519, 35.790375, 57.380917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.553188, 35.693142, 57.180664>,  <29.353790, 35.634800, 57.060513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.553188, 35.693142, 57.180664>,  <29.885519, 35.790375, 57.380917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553188, 35.693142, 57.180664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556406, -0.381634, -0.738084,
		-0.011641, -0.891777, 0.452326,
		-0.830829, -0.243085, -0.500633,
		29.303940, 35.620216, 57.030476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965450, 35.109184, 57.187172>,  <29.885519, 35.790375, 57.380917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965450, 35.109184, 57.187172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.718979, 35.301548, 56.937675>,  <29.571096, 35.416965, 56.787979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.718979, 35.301548, 56.937675>,  <29.965450, 35.109184, 57.187172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718979, 35.301548, 56.937675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495696, -0.378632, -0.781616,
		-0.612052, -0.790801, -0.005078,
		-0.616180, 0.480907, -0.623739,
		29.534124, 35.445820, 56.750553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591866, 34.577511, 56.922234>,  <29.965450, 35.109184, 57.187172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591866, 34.577511, 56.922234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588665, 34.893356, 56.676811>,  <29.586744, 35.082863, 56.529556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588665, 34.893356, 56.676811>,  <29.591866, 34.577511, 56.922234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588665, 34.893356, 56.676811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281450, -0.586993, -0.759095,
		-0.959543, -0.178759, -0.217540,
		-0.008001, 0.789610, -0.613557,
		29.586266, 35.130238, 56.492744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256166, 34.351707, 56.335838>,  <29.591866, 34.577511, 56.922234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256166, 34.351707, 56.335838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.460157, 34.672153, 56.210529>,  <29.582552, 34.864422, 56.135345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.460157, 34.672153, 56.210529>,  <29.256166, 34.351707, 56.335838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460157, 34.672153, 56.210529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395157, -0.541675, -0.741916,
		-0.764051, 0.254569, -0.592808,
		0.509978, 0.801114, -0.313272,
		29.613152, 34.912487, 56.116547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109577, 34.335083, 55.525002>,  <29.256166, 34.351707, 56.335838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109577, 34.335083, 55.525002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.401482, 34.602093, 55.584137>,  <29.576624, 34.762299, 55.619617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.401482, 34.602093, 55.584137>,  <29.109577, 34.335083, 55.525002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401482, 34.602093, 55.584137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428527, -0.278090, -0.859669,
		-0.532739, 0.690706, -0.488993,
		0.729763, 0.667526, 0.147837,
		29.620411, 34.802349, 55.628487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172987, 34.588749, 54.954517>,  <29.109577, 34.335083, 55.525002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172987, 34.588749, 54.954517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.520723, 34.682354, 55.128635>,  <29.729364, 34.738518, 55.233105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.520723, 34.682354, 55.128635>,  <29.172987, 34.588749, 54.954517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520723, 34.682354, 55.128635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493839, -0.445520, -0.746750,
		0.019180, 0.864146, -0.502876,
		0.869342, 0.234017, 0.435294,
		29.781527, 34.752560, 55.259224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610428, 34.837837, 54.498081>,  <29.172987, 34.588749, 54.954517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610428, 34.837837, 54.498081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.879002, 34.742702, 54.778824>,  <30.040146, 34.685619, 54.947269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.879002, 34.742702, 54.778824>,  <29.610428, 34.837837, 54.498081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879002, 34.742702, 54.778824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624875, -0.327432, -0.708745,
		0.398379, 0.914451, -0.071230,
		0.671435, -0.237839, 0.701860,
		30.080433, 34.671352, 54.989384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202536, 35.110577, 54.217007>,  <29.610428, 34.837837, 54.498081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202536, 35.110577, 54.217007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.315516, 34.828709, 54.477364>,  <30.383303, 34.659588, 54.633579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.315516, 34.828709, 54.477364>,  <30.202536, 35.110577, 54.217007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315516, 34.828709, 54.477364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556206, -0.432520, -0.709620,
		0.781573, 0.562461, 0.269779,
		0.282449, -0.704673, 0.650891,
		30.400249, 34.617306, 54.672630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000870, 35.071815, 54.143799>,  <30.202536, 35.110577, 54.217007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000870, 35.071815, 54.143799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.906841, 34.721577, 54.312592>,  <30.850424, 34.511433, 54.413868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.906841, 34.721577, 54.312592>,  <31.000870, 35.071815, 54.143799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906841, 34.721577, 54.312592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550837, -0.477708, -0.684378,
		0.800824, 0.071563, 0.594608,
		-0.235073, -0.875599, 0.421980,
		30.836319, 34.458897, 54.439186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635887, 34.689186, 54.379154>,  <31.000870, 35.071815, 54.143799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635887, 34.689186, 54.379154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.329220, 34.448322, 54.290054>,  <31.145220, 34.303802, 54.236595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.329220, 34.448322, 54.290054>,  <31.635887, 34.689186, 54.379154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329220, 34.448322, 54.290054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583166, -0.507982, -0.633933,
		0.268577, -0.615918, 0.740615,
		-0.766670, -0.602162, -0.222750,
		31.099218, 34.267673, 54.223228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977015, 34.015118, 54.350388>,  <31.635887, 34.689186, 54.379154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977015, 34.015118, 54.350388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.624180, 33.955048, 54.171787>,  <31.412479, 33.919006, 54.064625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.624180, 33.955048, 54.171787>,  <31.977015, 34.015118, 54.350388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624180, 33.955048, 54.171787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445005, -0.576616, -0.685189,
		-0.154562, -0.803094, 0.575456,
		-0.882089, -0.150177, -0.446505,
		31.359552, 33.909996, 54.037834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878428, 33.236771, 54.221203>,  <31.977015, 34.015118, 54.350388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878428, 33.236771, 54.221203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622974, 33.406227, 53.964245>,  <31.469704, 33.507900, 53.810070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622974, 33.406227, 53.964245>,  <31.878428, 33.236771, 54.221203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622974, 33.406227, 53.964245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396546, -0.534252, -0.746543,
		-0.659472, -0.731506, 0.173195,
		-0.638630, 0.423645, -0.642399,
		31.431385, 33.533321, 53.771526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587746, 32.690582, 53.815281>,  <31.878428, 33.236771, 54.221203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587746, 32.690582, 53.815281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573418, 33.027809, 53.600636>,  <31.564821, 33.230145, 53.471848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573418, 33.027809, 53.600636>,  <31.587746, 32.690582, 53.815281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573418, 33.027809, 53.600636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355566, -0.491069, -0.795251,
		-0.933965, -0.219285, -0.282177,
		-0.035819, 0.843069, -0.536611,
		31.562672, 33.280731, 53.439651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431242, 32.508575, 53.086132>,  <31.587746, 32.690582, 53.815281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431242, 32.508575, 53.086132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.552731, 32.887115, 53.042004>,  <31.625624, 33.114239, 53.015526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.552731, 32.887115, 53.042004>,  <31.431242, 32.508575, 53.086132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552731, 32.887115, 53.042004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447685, -0.243962, -0.860268,
		-0.841030, 0.211894, -0.497764,
		0.303721, 0.946353, -0.110317,
		31.643847, 33.171021, 53.008907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.107094, 37.734589, 55.306404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.291376, 38.080917, 55.384483>,  <28.401945, 38.288715, 55.431332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.291376, 38.080917, 55.384483>,  <28.107094, 37.734589, 55.306404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291376, 38.080917, 55.384483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542353, 0.100537, 0.834114,
		0.702570, -0.490147, 0.515899,
		0.460705, 0.865822, 0.195199,
		28.429588, 38.340664, 55.443043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310610, 37.670700, 56.004074>,  <28.107094, 37.734589, 55.306404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310610, 37.670700, 56.004074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.316833, 38.064613, 55.934837>,  <28.320568, 38.300961, 55.893295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.316833, 38.064613, 55.934837>,  <28.310610, 37.670700, 56.004074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316833, 38.064613, 55.934837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528027, 0.155101, 0.834944,
		0.849085, 0.078408, 0.522405,
		0.015559, 0.984782, -0.173095,
		28.321501, 38.360046, 55.882908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683960, 37.969433, 56.625706>,  <28.310610, 37.670700, 56.004074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683960, 37.969433, 56.625706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.448378, 38.241695, 56.451424>,  <28.307028, 38.405052, 56.346855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.448378, 38.241695, 56.451424>,  <28.683960, 37.969433, 56.625706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448378, 38.241695, 56.451424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249938, 0.359297, 0.899131,
		0.768545, 0.638449, -0.041489,
		-0.588957, 0.680653, -0.435708,
		28.271690, 38.445892, 56.320709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828613, 38.605221, 56.932575>,  <28.683960, 37.969433, 56.625706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828613, 38.605221, 56.932575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.475838, 38.663391, 56.753227>,  <28.264172, 38.698296, 56.645618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.475838, 38.663391, 56.753227>,  <28.828613, 38.605221, 56.932575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475838, 38.663391, 56.753227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366554, 0.386431, 0.846350,
		0.296348, 0.910780, -0.287501,
		-0.881939, 0.145430, -0.448368,
		28.211256, 38.707020, 56.618717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573563, 39.210743, 57.203815>,  <28.828613, 38.605221, 56.932575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573563, 39.210743, 57.203815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.225492, 39.078747, 57.057442>,  <28.016651, 38.999550, 56.969620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.225492, 39.078747, 57.057442>,  <28.573563, 39.210743, 57.203815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225492, 39.078747, 57.057442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484670, 0.439319, 0.756369,
		-0.088832, 0.835529, -0.542219,
		-0.870175, -0.329987, -0.365930,
		27.964439, 38.979752, 56.947662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177027, 39.753475, 57.159637>,  <28.573563, 39.210743, 57.203815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177027, 39.753475, 57.159637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.920881, 39.446388, 57.169033>,  <27.767195, 39.262138, 57.174671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.920881, 39.446388, 57.169033>,  <28.177027, 39.753475, 57.159637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920881, 39.446388, 57.169033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555500, 0.484039, 0.676111,
		-0.530430, 0.419907, -0.736425,
		-0.640362, -0.767714, 0.023491,
		27.728773, 39.216076, 57.176079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630856, 40.083927, 57.272411>,  <28.177027, 39.753475, 57.159637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630856, 40.083927, 57.272411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.497850, 39.718109, 57.364536>,  <27.418047, 39.498619, 57.419811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.497850, 39.718109, 57.364536>,  <27.630856, 40.083927, 57.272411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497850, 39.718109, 57.364536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696094, 0.402760, 0.594338,
		-0.636308, 0.037309, -0.770533,
		-0.332514, -0.914545, 0.230309,
		27.398096, 39.443745, 57.433628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861670, 40.069851, 57.268940>,  <27.630856, 40.083927, 57.272411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861670, 40.069851, 57.268940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.939249, 39.744167, 57.487823>,  <26.985796, 39.548756, 57.619156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.939249, 39.744167, 57.487823>,  <26.861670, 40.069851, 57.268940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939249, 39.744167, 57.487823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696858, 0.278267, 0.661027,
		-0.690488, -0.509535, -0.513421,
		0.193948, -0.814212, 0.547213,
		26.997433, 39.499905, 57.651989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187395, 39.859486, 57.451134>,  <26.861670, 40.069851, 57.268940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187395, 39.859486, 57.451134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.420668, 39.651917, 57.701130>,  <26.560631, 39.527374, 57.851128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.420668, 39.651917, 57.701130>,  <26.187395, 39.859486, 57.451134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420668, 39.651917, 57.701130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681415, 0.106350, 0.724129,
		-0.442238, -0.848177, -0.291583,
		0.583180, -0.518926, 0.624993,
		26.595621, 39.496239, 57.888626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722300, 39.433868, 57.793121>,  <26.187395, 39.859486, 57.451134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722300, 39.433868, 57.793121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.046976, 39.480022, 58.022152>,  <26.241781, 39.507713, 58.159569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.046976, 39.480022, 58.022152>,  <25.722300, 39.433868, 57.793121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046976, 39.480022, 58.022152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582395, 0.234429, 0.778370,
		-0.044421, -0.965262, 0.257480,
		0.811691, 0.115379, 0.572577,
		26.290483, 39.514637, 58.193924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551237, 39.078697, 58.409256>,  <25.722300, 39.433868, 57.793121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551237, 39.078697, 58.409256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.842838, 39.342106, 58.483994>,  <26.017799, 39.500153, 58.528835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.842838, 39.342106, 58.483994>,  <25.551237, 39.078697, 58.409256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842838, 39.342106, 58.483994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512551, 0.344216, 0.786643,
		0.453708, -0.669228, 0.588459,
		0.729000, 0.658521, 0.186840,
		26.061539, 39.539661, 58.540047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734369, 39.103683, 59.077820>,  <25.551237, 39.078697, 58.409256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734369, 39.103683, 59.077820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.904568, 39.446617, 58.961933>,  <26.006687, 39.652378, 58.892403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.904568, 39.446617, 58.961933>,  <25.734369, 39.103683, 59.077820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904568, 39.446617, 58.961933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521939, 0.494023, 0.695357,
		0.739277, -0.144659, 0.657680,
		0.425498, 0.857331, -0.289717,
		26.032217, 39.703815, 58.875019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705811, 39.534889, 59.699726>,  <25.734369, 39.103683, 59.077820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705811, 39.534889, 59.699726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.779804, 39.785179, 59.396610>,  <25.824202, 39.935352, 59.214741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.779804, 39.785179, 59.396610>,  <25.705811, 39.534889, 59.699726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779804, 39.785179, 59.396610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427474, 0.745563, 0.511274,
		0.884899, 0.229358, 0.405400,
		0.184986, 0.625724, -0.757793,
		25.835300, 39.972897, 59.169273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573624, 39.008118, 60.041191>,  <25.705811, 39.534889, 59.699726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573624, 39.008118, 60.041191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.859608, 38.967098, 60.317833>,  <26.031199, 38.942486, 60.483818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.859608, 38.967098, 60.317833>,  <25.573624, 39.008118, 60.041191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859608, 38.967098, 60.317833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545269, -0.537363, -0.643369,
		0.437620, 0.837093, -0.328275,
		0.714962, -0.102553, 0.691601,
		26.074097, 38.936333, 60.525314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230566, 39.042450, 59.691460>,  <25.573624, 39.008118, 60.041191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230566, 39.042450, 59.691460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.275841, 38.838718, 60.032696>,  <26.303005, 38.716480, 60.237438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.275841, 38.838718, 60.032696>,  <26.230566, 39.042450, 59.691460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275841, 38.838718, 60.032696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457950, -0.735228, -0.499721,
		0.881743, 0.447236, 0.150031,
		0.113186, -0.509332, 0.853094,
		26.309797, 38.685917, 60.288624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929682, 38.921669, 59.760811>,  <26.230566, 39.042450, 59.691460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929682, 38.921669, 59.760811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.777847, 38.655548, 60.017960>,  <26.686747, 38.495876, 60.172249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.777847, 38.655548, 60.017960>,  <26.929682, 38.921669, 59.760811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777847, 38.655548, 60.017960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467123, -0.737624, -0.487552,
		0.798569, 0.115233, 0.590770,
		-0.379584, -0.665306, 0.642871,
		26.663973, 38.455956, 60.210819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445984, 38.548435, 59.962341>,  <26.929682, 38.921669, 59.760811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445984, 38.548435, 59.962341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.124653, 38.333988, 60.066063>,  <26.931854, 38.205318, 60.128296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.124653, 38.333988, 60.066063>,  <27.445984, 38.548435, 59.962341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124653, 38.333988, 60.066063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333925, -0.766023, -0.549274,
		0.493110, -0.354659, 0.794393,
		-0.803328, -0.536120, 0.259304,
		26.883654, 38.173153, 60.143852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699078, 37.999207, 60.306892>,  <27.445984, 38.548435, 59.962341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699078, 37.999207, 60.306892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.345957, 37.908203, 60.142502>,  <27.134085, 37.853600, 60.043869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.345957, 37.908203, 60.142502>,  <27.699078, 37.999207, 60.306892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345957, 37.908203, 60.142502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434571, -0.727723, -0.530629,
		-0.178353, -0.647038, 0.741304,
		-0.882802, -0.227510, -0.410975,
		27.081116, 37.839951, 60.019211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536659, 37.343704, 60.476765>,  <27.699078, 37.999207, 60.306892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536659, 37.343704, 60.476765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.303793, 37.403255, 60.157036>,  <27.164072, 37.438988, 59.965199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.303793, 37.403255, 60.157036>,  <27.536659, 37.343704, 60.476765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303793, 37.403255, 60.157036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358236, -0.835559, -0.416542,
		-0.729896, -0.528843, 0.433102,
		-0.582168, 0.148879, -0.799322,
		27.129143, 37.447918, 59.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350861, 36.713543, 60.358925>,  <27.536659, 37.343704, 60.476765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350861, 36.713543, 60.358925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.272245, 36.893055, 60.010220>,  <27.225077, 37.000763, 59.800995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.272245, 36.893055, 60.010220>,  <27.350861, 36.713543, 60.358925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272245, 36.893055, 60.010220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378283, -0.785565, -0.489683,
		-0.904586, -0.426014, -0.015372,
		-0.196536, 0.448775, -0.871765,
		27.213284, 37.027687, 59.748692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054100, 36.156265, 59.891457>,  <27.350861, 36.713543, 60.358925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054100, 36.156265, 59.891457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.194607, 36.431442, 59.637417>,  <27.278912, 36.596546, 59.484993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.194607, 36.431442, 59.637417>,  <27.054100, 36.156265, 59.891457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194607, 36.431442, 59.637417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429532, -0.721136, -0.543567,
		-0.831934, -0.081858, -0.548804,
		0.351266, 0.687941, -0.635098,
		27.299986, 36.637825, 59.446888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894281, 35.889137, 59.215752>,  <27.054100, 36.156265, 59.891457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894281, 35.889137, 59.215752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.167831, 36.169773, 59.135662>,  <27.331961, 36.338154, 59.087608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.167831, 36.169773, 59.135662>,  <26.894281, 35.889137, 59.215752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167831, 36.169773, 59.135662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419984, -0.602954, -0.678277,
		-0.596597, 0.379766, -0.707001,
		0.683875, 0.701587, -0.200225,
		27.372993, 36.380249, 59.075596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972326, 35.826393, 58.581745>,  <26.894281, 35.889137, 59.215752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972326, 35.826393, 58.581745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.308867, 36.040745, 58.609928>,  <27.510790, 36.169353, 58.626839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.308867, 36.040745, 58.609928>,  <26.972326, 35.826393, 58.581745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308867, 36.040745, 58.609928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330944, -0.407703, -0.851031,
		-0.427322, 0.739334, -0.520367,
		0.841351, 0.535877, 0.070458,
		27.561272, 36.201508, 58.631065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157619, 36.070759, 57.933289>,  <26.972326, 35.826393, 58.581745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157619, 36.070759, 57.933289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.510042, 36.142052, 58.108547>,  <27.721497, 36.184826, 58.213703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.510042, 36.142052, 58.108547>,  <27.157619, 36.070759, 57.933289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510042, 36.142052, 58.108547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472921, -0.349583, -0.808788,
		0.009019, 0.919797, -0.392291,
		0.881059, 0.178228, 0.438144,
		27.774361, 36.195518, 58.239990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604996, 36.412388, 57.523167>,  <27.157619, 36.070759, 57.933289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604996, 36.412388, 57.523167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.857162, 36.208767, 57.757580>,  <28.008463, 36.086594, 57.898228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.857162, 36.208767, 57.757580>,  <27.604996, 36.412388, 57.523167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857162, 36.208767, 57.757580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584441, -0.185603, -0.789924,
		0.510883, 0.840486, 0.180504,
		0.630418, -0.509053, 0.586036,
		28.046288, 36.056049, 57.933392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128021, 36.764935, 57.397354>,  <27.604996, 36.412388, 57.523167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128021, 36.764935, 57.397354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.227867, 36.401798, 57.532127>,  <28.287775, 36.183918, 57.612991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.227867, 36.401798, 57.532127>,  <28.128021, 36.764935, 57.397354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227867, 36.401798, 57.532127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651566, -0.099937, -0.751980,
		0.716348, 0.407238, 0.566571,
		0.249613, -0.907838, 0.336932,
		28.302752, 36.129448, 57.633205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813740, 36.790485, 57.252502>,  <28.128021, 36.764935, 57.397354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813740, 36.790485, 57.252502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.731842, 36.406307, 57.327999>,  <28.682703, 36.175800, 57.373295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.731842, 36.406307, 57.327999>,  <28.813740, 36.790485, 57.252502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731842, 36.406307, 57.327999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628159, -0.276809, -0.727182,
		0.750664, -0.030329, 0.659988,
		-0.204746, -0.960446, 0.188739,
		28.670418, 36.118172, 57.384621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440807, 36.431580, 57.532192>,  <28.813740, 36.790485, 57.252502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440807, 36.431580, 57.532192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.204624, 36.156124, 57.363842>,  <29.062914, 35.990852, 57.262833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.204624, 36.156124, 57.363842>,  <29.440807, 36.431580, 57.532192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204624, 36.156124, 57.363842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714389, -0.203318, -0.669559,
		0.375513, -0.696016, 0.612007,
		-0.590456, -0.688640, -0.420877,
		29.027487, 35.949532, 57.237579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784883, 36.003063, 58.050442>,  <29.440807, 36.431580, 57.532192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784883, 36.003063, 58.050442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.158852, 36.022552, 58.191040>,  <30.383232, 36.034245, 58.275398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.158852, 36.022552, 58.191040>,  <29.784883, 36.003063, 58.050442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158852, 36.022552, 58.191040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347850, 0.321750, 0.880612,
		-0.070188, -0.945570, 0.317759,
		0.934919, 0.048724, 0.351499,
		30.439327, 36.037170, 58.296490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699127, 35.909481, 58.742615>,  <29.784883, 36.003063, 58.050442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699127, 35.909481, 58.742615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.072498, 36.052956, 58.739769>,  <30.296522, 36.139042, 58.738064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.072498, 36.052956, 58.739769>,  <29.699127, 35.909481, 58.742615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072498, 36.052956, 58.739769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135148, 0.369928, 0.919178,
		0.332330, -0.857028, 0.393778,
		0.933430, 0.358688, -0.007112,
		30.352528, 36.160561, 58.737637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063471, 35.766479, 59.302856>,  <29.699127, 35.909481, 58.742615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063471, 35.766479, 59.302856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.264200, 36.089558, 59.179050>,  <30.384638, 36.283405, 59.104767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.264200, 36.089558, 59.179050>,  <30.063471, 35.766479, 59.302856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264200, 36.089558, 59.179050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017179, 0.348459, 0.937167,
		0.864801, -0.475607, 0.160988,
		0.501821, 0.807697, -0.309518,
		30.414747, 36.331867, 59.086197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633823, 35.812168, 59.720135>,  <30.063471, 35.766479, 59.302856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633823, 35.812168, 59.720135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.581236, 36.181244, 59.575161>,  <30.549683, 36.402691, 59.488178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.581236, 36.181244, 59.575161>,  <30.633823, 35.812168, 59.720135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581236, 36.181244, 59.575161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125860, 0.347112, 0.929340,
		0.983298, 0.167795, 0.070496,
		-0.131469, 0.922691, -0.362433,
		30.541796, 36.458050, 59.466431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945223, 36.146000, 60.264420>,  <30.633823, 35.812168, 59.720135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945223, 36.146000, 60.264420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.722023, 36.392735, 60.042374>,  <30.588102, 36.540775, 59.909145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.722023, 36.392735, 60.042374>,  <30.945223, 36.146000, 60.264420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722023, 36.392735, 60.042374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289812, 0.481963, 0.826874,
		0.777589, 0.622274, -0.090169,
		-0.558001, 0.616836, -0.555111,
		30.554623, 36.577785, 59.875839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129484, 36.825748, 60.565464>,  <30.945223, 36.146000, 60.264420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129484, 36.825748, 60.565464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.763573, 36.862083, 60.408020>,  <30.544025, 36.883884, 60.313553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.763573, 36.862083, 60.408020>,  <31.129484, 36.825748, 60.565464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763573, 36.862083, 60.408020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312987, 0.456636, 0.832780,
		0.255383, 0.885004, -0.389291,
		-0.914778, 0.090835, -0.393612,
		30.489140, 36.889336, 60.289936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907991, 37.565437, 60.613773>,  <31.129484, 36.825748, 60.565464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907991, 37.565437, 60.613773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.588017, 37.326069, 60.595921>,  <30.396030, 37.182449, 60.585209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.588017, 37.326069, 60.595921>,  <30.907991, 37.565437, 60.613773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588017, 37.326069, 60.595921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431045, 0.521272, 0.736530,
		-0.417491, 0.608415, -0.674931,
		-0.799939, -0.598420, -0.044628,
		30.348036, 37.146542, 60.582531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934982, 38.298428, 60.387177>,  <30.907991, 37.565437, 60.613773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934982, 38.298428, 60.387177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.155458, 38.625160, 60.455276>,  <31.287743, 38.821198, 60.496136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.155458, 38.625160, 60.455276>,  <30.934982, 38.298428, 60.387177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155458, 38.625160, 60.455276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686414, -0.327896, -0.649092,
		-0.474371, 0.474635, -0.741414,
		0.551188, 0.816827, 0.170252,
		31.320814, 38.870209, 60.506351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083012, 38.684933, 59.735886>,  <30.934982, 38.298428, 60.387177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083012, 38.684933, 59.735886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.360273, 38.721115, 60.021923>,  <31.526630, 38.742825, 60.193546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.360273, 38.721115, 60.021923>,  <31.083012, 38.684933, 59.735886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360273, 38.721115, 60.021923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679980, -0.411144, -0.607114,
		0.239090, 0.907071, -0.346493,
		0.693155, 0.090454, 0.715091,
		31.568220, 38.748253, 60.236450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634632, 38.983429, 59.470287>,  <31.083012, 38.684933, 59.735886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634632, 38.983429, 59.470287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.797474, 38.815067, 59.794533>,  <31.895180, 38.714050, 59.989082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.797474, 38.815067, 59.794533>,  <31.634632, 38.983429, 59.470287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797474, 38.815067, 59.794533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649431, -0.490671, -0.580932,
		0.642265, 0.762941, 0.073596,
		0.407105, -0.420908, 0.810618,
		31.919605, 38.688793, 60.037720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242409, 39.233185, 59.399151>,  <31.634632, 38.983429, 59.470287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242409, 39.233185, 59.399151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.276749, 38.924641, 59.651382>,  <32.297352, 38.739513, 59.802723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.276749, 38.924641, 59.651382>,  <32.242409, 39.233185, 59.399151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276749, 38.924641, 59.651382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775805, -0.345348, -0.528074,
		0.625105, 0.534544, 0.568776,
		0.085854, -0.771361, 0.630580,
		32.302505, 38.693233, 59.840557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911011, 39.384853, 59.853657>,  <32.242409, 39.233185, 59.399151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911011, 39.384853, 59.853657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.820019, 39.003803, 59.772896>,  <32.765423, 38.775173, 59.724438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.820019, 39.003803, 59.772896>,  <32.911011, 39.384853, 59.853657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820019, 39.003803, 59.772896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877699, -0.110777, -0.466233,
		0.421777, -0.283269, 0.861314,
		-0.227483, -0.952621, -0.201901,
		32.751774, 38.718018, 59.712326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559181, 39.095940, 59.607281>,  <32.911011, 39.384853, 59.853657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559181, 39.095940, 59.607281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356937, 38.752098, 59.577774>,  <33.235592, 38.545792, 59.560070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356937, 38.752098, 59.577774>,  <33.559181, 39.095940, 59.607281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356937, 38.752098, 59.577774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764454, -0.406723, -0.500186,
		0.399960, -0.309286, 0.862771,
		-0.505610, -0.859603, -0.073762,
		33.205254, 38.494217, 59.555645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035896, 38.530804, 59.739986>,  <33.559181, 39.095940, 59.607281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035896, 38.530804, 59.739986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.726009, 38.343685, 59.569820>,  <33.540077, 38.231415, 59.467720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.726009, 38.343685, 59.569820>,  <34.035896, 38.530804, 59.739986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726009, 38.343685, 59.569820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631216, -0.611693, -0.476863,
		-0.037150, -0.637964, 0.769170,
		-0.774717, -0.467796, -0.425418,
		33.493595, 38.203346, 59.442196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.329887, 43.233734, 59.138748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155031, 42.877743, 59.086842>,  <27.050117, 42.664146, 59.055698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155031, 42.877743, 59.086842>,  <27.329887, 43.233734, 59.138748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155031, 42.877743, 59.086842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470623, -0.103394, -0.876256,
		0.766435, -0.444119, 0.464044,
		-0.437141, -0.889982, -0.129768,
		27.023890, 42.610748, 59.047913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742401, 42.919941, 58.792480>,  <27.329887, 43.233734, 59.138748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742401, 42.919941, 58.792480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412945, 42.704639, 58.721039>,  <27.215271, 42.575459, 58.678173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412945, 42.704639, 58.721039>,  <27.742401, 42.919941, 58.792480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412945, 42.704639, 58.721039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399856, -0.327843, -0.855941,
		0.402159, -0.776403, 0.485248,
		-0.823640, -0.538254, -0.178604,
		27.165854, 42.543163, 58.667458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969450, 42.213722, 58.706146>,  <27.742401, 42.919941, 58.792480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969450, 42.213722, 58.706146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608011, 42.268078, 58.543644>,  <27.391148, 42.300694, 58.446140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608011, 42.268078, 58.543644>,  <27.969450, 42.213722, 58.706146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608011, 42.268078, 58.543644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378520, -0.190782, -0.905718,
		-0.200600, -0.972179, 0.120947,
		-0.903594, 0.135906, -0.406260,
		27.336931, 42.308846, 58.421768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798111, 41.596279, 58.399113>,  <27.969450, 42.213722, 58.706146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798111, 41.596279, 58.399113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581144, 41.869267, 58.203148>,  <27.450964, 42.033058, 58.085567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581144, 41.869267, 58.203148>,  <27.798111, 41.596279, 58.399113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581144, 41.869267, 58.203148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424767, -0.280336, -0.860805,
		-0.724814, -0.675016, -0.137831,
		-0.542418, 0.682470, -0.489916,
		27.418419, 42.074009, 58.056171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780836, 41.378578, 57.714722>,  <27.798111, 41.596279, 58.399113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780836, 41.378578, 57.714722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633293, 41.747036, 57.665035>,  <27.544767, 41.968113, 57.635223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633293, 41.747036, 57.665035>,  <27.780836, 41.378578, 57.714722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633293, 41.747036, 57.665035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302464, -0.007417, -0.953132,
		-0.878897, -0.389142, -0.275879,
		-0.368858, 0.921148, -0.124220,
		27.522636, 42.023380, 57.627769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352049, 41.358337, 57.204636>,  <27.780836, 41.378578, 57.714722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352049, 41.358337, 57.204636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529593, 41.716774, 57.204109>,  <27.636118, 41.931835, 57.203793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529593, 41.716774, 57.204109>,  <27.352049, 41.358337, 57.204636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529593, 41.716774, 57.204109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279311, -0.139744, -0.949978,
		-0.851455, 0.421289, -0.312316,
		0.443859, 0.896096, -0.001315,
		27.662750, 41.985603, 57.203716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009787, 41.832306, 56.665630>,  <27.352049, 41.358337, 57.204636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009787, 41.832306, 56.665630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380262, 41.960716, 56.744743>,  <27.602549, 42.037762, 56.792210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380262, 41.960716, 56.744743>,  <27.009787, 41.832306, 56.665630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380262, 41.960716, 56.744743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237433, -0.089077, -0.967311,
		-0.292910, 0.942874, -0.158724,
		0.926191, 0.321021, 0.197778,
		27.658119, 42.057022, 56.804077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122427, 42.177113, 56.122585>,  <27.009787, 41.832306, 56.665630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122427, 42.177113, 56.122585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486486, 42.135021, 56.282864>,  <27.704922, 42.109764, 56.379028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486486, 42.135021, 56.282864>,  <27.122427, 42.177113, 56.122585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486486, 42.135021, 56.282864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377172, -0.189628, -0.906522,
		0.171378, 0.976200, -0.132899,
		0.910149, -0.105232, 0.400694,
		27.759531, 42.103451, 56.403072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551636, 42.741440, 55.827114>,  <27.122427, 42.177113, 56.122585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551636, 42.741440, 55.827114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834400, 42.497437, 55.970322>,  <28.004059, 42.351036, 56.056244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834400, 42.497437, 55.970322>,  <27.551636, 42.741440, 55.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834400, 42.497437, 55.970322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501761, 0.075742, -0.861683,
		0.498513, 0.788770, 0.359619,
		0.706909, -0.610004, 0.358016,
		28.046473, 42.314434, 56.077728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245008, 43.161335, 55.760189>,  <27.551636, 42.741440, 55.827114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245008, 43.161335, 55.760189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304472, 42.765781, 55.761909>,  <28.340151, 42.528450, 55.762943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304472, 42.765781, 55.761909>,  <28.245008, 43.161335, 55.760189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304472, 42.765781, 55.761909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621405, 0.090029, -0.778300,
		0.769257, 0.118375, 0.627878,
		0.148659, -0.988879, 0.004303,
		28.349070, 42.469116, 55.763199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999594, 43.020950, 55.604568>,  <28.245008, 43.161335, 55.760189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999594, 43.020950, 55.604568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816055, 42.671879, 55.537766>,  <28.705933, 42.462437, 55.497684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816055, 42.671879, 55.537766>,  <28.999594, 43.020950, 55.604568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816055, 42.671879, 55.537766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569908, -0.144861, -0.808839,
		0.681664, -0.466310, 0.563816,
		-0.458844, -0.872680, -0.167007,
		28.678402, 42.410076, 55.487663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564840, 42.505978, 55.483467>,  <28.999594, 43.020950, 55.604568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564840, 42.505978, 55.483467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225452, 42.367188, 55.323616>,  <29.021820, 42.283913, 55.227703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225452, 42.367188, 55.323616>,  <29.564840, 42.505978, 55.483467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225452, 42.367188, 55.323616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479997, -0.186429, -0.857232,
		0.222936, -0.919158, 0.324727,
		-0.848470, -0.346976, -0.399632,
		28.970911, 42.263096, 55.203728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945898, 42.707851, 56.053936>,  <29.564840, 42.505978, 55.483467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945898, 42.707851, 56.053936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206194, 42.421894, 56.156284>,  <30.362371, 42.250320, 56.217693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206194, 42.421894, 56.156284>,  <29.945898, 42.707851, 56.053936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206194, 42.421894, 56.156284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150009, 0.209292, 0.966278,
		-0.744337, -0.667176, 0.028954,
		0.650738, -0.714893, 0.255867,
		30.401415, 42.207428, 56.233044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581467, 42.278481, 56.470127>,  <29.945898, 42.707851, 56.053936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581467, 42.278481, 56.470127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967194, 42.223087, 56.560383>,  <30.198629, 42.189850, 56.614536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967194, 42.223087, 56.560383>,  <29.581467, 42.278481, 56.470127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967194, 42.223087, 56.560383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219972, 0.055180, 0.973944,
		-0.147330, -0.988826, 0.022748,
		0.964316, -0.138488, 0.225644,
		30.256489, 42.181541, 56.628075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558569, 41.771366, 57.044689>,  <29.581467, 42.278481, 56.470127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558569, 41.771366, 57.044689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901711, 41.975079, 57.072147>,  <30.107595, 42.097305, 57.088623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901711, 41.975079, 57.072147>,  <29.558569, 41.771366, 57.044689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901711, 41.975079, 57.072147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103670, 0.040684, 0.993779,
		0.503324, -0.859636, 0.087699,
		0.857856, 0.509285, 0.068641,
		30.159067, 42.127865, 57.092739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959682, 41.440323, 57.533760>,  <29.558569, 41.771366, 57.044689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959682, 41.440323, 57.533760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108192, 41.810715, 57.506275>,  <30.197298, 42.032948, 57.489784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108192, 41.810715, 57.506275>,  <29.959682, 41.440323, 57.533760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108192, 41.810715, 57.506275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040722, 0.057690, 0.997504,
		0.927629, -0.373148, -0.016288,
		0.371277, 0.925977, -0.068711,
		30.219576, 42.088509, 57.485661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482756, 41.523830, 58.045315>,  <29.959682, 41.440323, 57.533760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482756, 41.523830, 58.045315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374559, 41.897095, 57.950619>,  <30.309641, 42.121052, 57.893803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374559, 41.897095, 57.950619>,  <30.482756, 41.523830, 58.045315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374559, 41.897095, 57.950619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054818, 0.230580, 0.971508,
		0.961160, 0.275764, -0.011216,
		-0.270493, 0.933160, -0.236742,
		30.293411, 42.177044, 57.879597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785263, 41.919300, 58.614754>,  <30.482756, 41.523830, 58.045315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785263, 41.919300, 58.614754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530502, 42.181133, 58.451839>,  <30.377645, 42.338234, 58.354092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530502, 42.181133, 58.451839>,  <30.785263, 41.919300, 58.614754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530502, 42.181133, 58.451839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275002, 0.300639, 0.913231,
		0.720228, 0.693643, -0.011466,
		-0.636903, 0.654581, -0.407282,
		30.339432, 42.377506, 58.329655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971153, 42.588299, 58.887287>,  <30.785263, 41.919300, 58.614754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971153, 42.588299, 58.887287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593809, 42.620346, 58.758507>,  <30.367403, 42.639576, 58.681236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593809, 42.620346, 58.758507>,  <30.971153, 42.588299, 58.887287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593809, 42.620346, 58.758507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279910, 0.328764, 0.901978,
		0.178113, 0.941007, -0.287716,
		-0.943359, 0.080119, -0.321955,
		30.310801, 42.644382, 58.661919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800444, 43.171379, 59.271725>,  <30.971153, 42.588299, 58.887287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800444, 43.171379, 59.271725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468260, 42.986233, 59.147728>,  <30.268950, 42.875145, 59.073330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468260, 42.986233, 59.147728>,  <30.800444, 43.171379, 59.271725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468260, 42.986233, 59.147728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416069, 0.145332, 0.897644,
		-0.370439, 0.874433, -0.313277,
		-0.830459, -0.462867, -0.309987,
		30.219122, 42.847374, 59.054733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344290, 43.646484, 59.387154>,  <30.800444, 43.171379, 59.271725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344290, 43.646484, 59.387154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185427, 43.279694, 59.372082>,  <30.090109, 43.059620, 59.363041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185427, 43.279694, 59.372082>,  <30.344290, 43.646484, 59.387154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185427, 43.279694, 59.372082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338773, 0.108327, 0.934611,
		-0.852936, 0.383951, -0.353670,
		-0.397157, -0.916977, -0.037677,
		30.066280, 43.004601, 59.360779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806644, 43.734001, 59.750423>,  <30.344290, 43.646484, 59.387154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806644, 43.734001, 59.750423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846834, 43.336037, 59.753353>,  <29.870949, 43.097260, 59.755112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846834, 43.336037, 59.753353>,  <29.806644, 43.734001, 59.750423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846834, 43.336037, 59.753353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381670, -0.031747, 0.923753,
		-0.918821, -0.095609, -0.382918,
		0.100476, -0.994913, 0.007321,
		29.876976, 43.037563, 59.755550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307613, 43.535419, 60.224163>,  <29.806644, 43.734001, 59.750423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307613, 43.535419, 60.224163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556131, 43.222355, 60.209057>,  <29.705242, 43.034515, 60.199993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556131, 43.222355, 60.209057>,  <29.307613, 43.535419, 60.224163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556131, 43.222355, 60.209057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067116, -0.101175, 0.992602,
		-0.780695, -0.614166, -0.115389,
		0.621297, -0.782665, -0.037766,
		29.742521, 42.987556, 60.197727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022034, 43.067429, 60.673813>,  <29.307613, 43.535419, 60.224163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022034, 43.067429, 60.673813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396820, 42.927784, 60.679676>,  <29.621693, 42.843998, 60.683193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396820, 42.927784, 60.679676>,  <29.022034, 43.067429, 60.673813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396820, 42.927784, 60.679676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094412, -0.212567, 0.972575,
		-0.336424, -0.912653, -0.232129,
		0.936966, -0.349113, 0.014653,
		29.677910, 42.823051, 60.684071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981510, 42.426502, 61.044445>,  <29.022034, 43.067429, 60.673813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981510, 42.426502, 61.044445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367655, 42.530380, 61.054550>,  <29.599342, 42.592705, 61.060612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367655, 42.530380, 61.054550>,  <28.981510, 42.426502, 61.044445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367655, 42.530380, 61.054550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032727, -0.216566, 0.975719,
		0.258856, -0.941095, -0.217563,
		0.965361, 0.259691, 0.025260,
		29.657263, 42.608288, 61.062130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379416, 41.876633, 61.405689>,  <28.981510, 42.426502, 61.044445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379416, 41.876633, 61.405689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539177, 42.243202, 61.415775>,  <29.635035, 42.463146, 61.421825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539177, 42.243202, 61.415775>,  <29.379416, 41.876633, 61.405689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539177, 42.243202, 61.415775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095558, -0.068969, 0.993032,
		0.911781, -0.394211, -0.115119,
		0.399403, 0.916428, 0.025214,
		29.658998, 42.518131, 61.423340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778677, 41.289307, 61.032837>,  <29.379416, 41.876633, 61.405689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778677, 41.289307, 61.032837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709665, 41.087685, 61.371342>,  <29.668259, 40.966709, 61.574444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709665, 41.087685, 61.371342>,  <29.778677, 41.289307, 61.032837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709665, 41.087685, 61.371342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780850, -0.593693, -0.194425,
		0.600422, 0.627260, 0.496023,
		-0.172531, -0.504057, 0.846263,
		29.657906, 40.936466, 61.625221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384752, 41.277287, 61.367416>,  <29.778677, 41.289307, 61.032837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384752, 41.277287, 61.367416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166819, 40.974056, 61.510788>,  <30.036058, 40.792118, 61.596809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166819, 40.974056, 61.510788>,  <30.384752, 41.277287, 61.367416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166819, 40.974056, 61.510788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790666, -0.606797, -0.081512,
		0.279287, 0.238988, 0.929991,
		-0.544836, -0.758078, 0.358430,
		30.003368, 40.746632, 61.618317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882164, 40.870102, 61.710754>,  <30.384752, 41.277287, 61.367416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882164, 40.870102, 61.710754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583120, 40.604946, 61.694485>,  <30.403694, 40.445850, 61.684723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583120, 40.604946, 61.694485>,  <30.882164, 40.870102, 61.710754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583120, 40.604946, 61.694485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637815, -0.699557, -0.322198,
		0.185125, -0.266824, 0.945798,
		-0.747610, -0.662891, -0.040679,
		30.358837, 40.406078, 61.682281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099546, 40.198948, 62.061329>,  <30.882164, 40.870102, 61.710754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099546, 40.198948, 62.061329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800932, 40.095940, 61.815933>,  <30.621763, 40.034134, 61.668697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800932, 40.095940, 61.815933>,  <31.099546, 40.198948, 62.061329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800932, 40.095940, 61.815933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543355, -0.768117, -0.338765,
		-0.383994, -0.586243, 0.713350,
		-0.746535, -0.257519, -0.613490,
		30.576971, 40.018684, 61.631886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902763, 39.449791, 62.128513>,  <31.099546, 40.198948, 62.061329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902763, 39.449791, 62.128513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799627, 39.557270, 61.757282>,  <30.737745, 39.621758, 61.534546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799627, 39.557270, 61.757282>,  <30.902763, 39.449791, 62.128513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799627, 39.557270, 61.757282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598031, -0.710058, -0.371721,
		-0.758866, -0.650862, 0.022393,
		-0.257840, 0.268695, -0.928074,
		30.722275, 39.637878, 61.478859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952991, 38.875057, 61.797668>,  <30.902763, 39.449791, 62.128513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952991, 38.875057, 61.797668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946426, 39.131561, 61.490810>,  <30.942488, 39.285465, 61.306694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946426, 39.131561, 61.490810>,  <30.952991, 38.875057, 61.797668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946426, 39.131561, 61.490810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648680, -0.577036, -0.496229,
		-0.760884, -0.505777, -0.406503,
		-0.016414, 0.641263, -0.767145,
		30.941502, 39.323940, 61.260666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888773, 38.402912, 61.191803>,  <30.952991, 38.875057, 61.797668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888773, 38.402912, 61.191803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009148, 38.744404, 61.021824>,  <31.081371, 38.949299, 60.919838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009148, 38.744404, 61.021824>,  <30.888773, 38.402912, 61.191803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009148, 38.744404, 61.021824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552693, -0.519272, -0.651833,
		-0.777154, -0.038706, -0.628119,
		0.300935, 0.853732, -0.424947,
		31.099428, 39.000523, 60.894341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337652, 38.123459, 60.726788>,  <30.888773, 38.402912, 61.191803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337652, 38.123459, 60.726788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169941, 37.762760, 60.768848>,  <30.069315, 37.546341, 60.794086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169941, 37.762760, 60.768848>,  <30.337652, 38.123459, 60.726788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169941, 37.762760, 60.768848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743886, 0.407633, 0.529594,
		-0.520424, 0.143824, -0.841709,
		-0.419276, -0.901749, 0.105153,
		30.044159, 37.492237, 60.800396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633507, 38.315102, 60.663132>,  <30.337652, 38.123459, 60.726788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633507, 38.315102, 60.663132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658581, 37.954304, 60.834000>,  <29.673624, 37.737823, 60.936520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658581, 37.954304, 60.834000>,  <29.633507, 38.315102, 60.663132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658581, 37.954304, 60.834000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717397, 0.256834, 0.647594,
		-0.693839, -0.347044, -0.630990,
		0.062684, -0.901996, 0.427170,
		29.677385, 37.683704, 60.962151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965181, 38.339729, 61.004570>,  <29.633507, 38.315102, 60.663132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965181, 38.339729, 61.004570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157642, 38.012836, 61.131458>,  <29.273119, 37.816700, 61.207592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157642, 38.012836, 61.131458>,  <28.965181, 38.339729, 61.004570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157642, 38.012836, 61.131458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594291, -0.038062, 0.803349,
		-0.644445, -0.575057, -0.503985,
		0.481154, -0.817228, 0.317222,
		29.301989, 37.767670, 61.226624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498911, 37.796112, 61.034588>,  <28.965181, 38.339729, 61.004570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498911, 37.796112, 61.034588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792110, 37.758202, 61.304024>,  <28.968031, 37.735455, 61.465687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792110, 37.758202, 61.304024>,  <28.498911, 37.796112, 61.034588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792110, 37.758202, 61.304024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679669, -0.061906, 0.730902,
		-0.027565, -0.993573, -0.109786,
		0.733001, -0.094765, 0.673594,
		29.012011, 37.729771, 61.506104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229517, 37.194248, 61.414421>,  <28.498911, 37.796112, 61.034588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229517, 37.194248, 61.414421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498432, 37.391621, 61.635166>,  <28.659781, 37.510044, 61.767612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498432, 37.391621, 61.635166>,  <28.229517, 37.194248, 61.414421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498432, 37.391621, 61.635166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599095, -0.075271, 0.797132,
		0.434872, -0.866520, 0.245011,
		0.672288, 0.493435, 0.551861,
		28.700119, 37.539650, 61.800724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438356, 36.744064, 62.062576>,  <28.229517, 37.194248, 61.414421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438356, 36.744064, 62.062576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537840, 37.120655, 62.153587>,  <28.597530, 37.346611, 62.208195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537840, 37.120655, 62.153587>,  <28.438356, 36.744064, 62.062576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537840, 37.120655, 62.153587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542754, -0.059095, 0.837810,
		0.802224, -0.331859, 0.496293,
		0.248707, 0.941476, 0.227525,
		28.612452, 37.403099, 62.221844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755739, 36.715061, 62.689873>,  <28.438356, 36.744064, 62.062576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755739, 36.715061, 62.689873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650686, 37.100803, 62.676918>,  <28.587654, 37.332249, 62.669144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650686, 37.100803, 62.676918>,  <28.755739, 36.715061, 62.689873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650686, 37.100803, 62.676918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425474, -0.085615, 0.900911,
		0.866023, 0.250389, 0.432792,
		-0.262632, 0.964352, -0.032390,
		28.571898, 37.390110, 62.667202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960440, 37.085064, 63.359879>,  <28.755739, 36.715061, 62.689873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960440, 37.085064, 63.359879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671053, 37.299999, 63.186508>,  <28.497421, 37.428959, 63.082485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671053, 37.299999, 63.186508>,  <28.960440, 37.085064, 63.359879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671053, 37.299999, 63.186508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577300, -0.126602, 0.806658,
		0.378576, 0.833809, 0.401799,
		-0.723467, 0.537340, -0.433430,
		28.454012, 37.461201, 63.056480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781946, 37.490879, 63.910042>,  <28.960440, 37.085064, 63.359879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781946, 37.490879, 63.910042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490389, 37.536297, 63.639984>,  <28.315454, 37.563549, 63.477951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490389, 37.536297, 63.639984>,  <28.781946, 37.490879, 63.910042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490389, 37.536297, 63.639984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680177, -0.007869, 0.733006,
		0.077917, 0.993502, 0.082967,
		-0.728896, 0.113546, -0.675143,
		28.271721, 37.570362, 63.437443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.748814, 35.299084, 49.018356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767452, 35.673283, 48.878254>,  <37.778637, 35.897800, 48.794193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767452, 35.673283, 48.878254>,  <37.748814, 35.299084, 49.018356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767452, 35.673283, 48.878254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996659, 0.067087, 0.046595,
		0.067087, 0.346915, 0.935494,
		-0.046595, -0.935494, 0.350256,
		37.781429, 35.953930, 48.773178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314335, 35.586292, 49.510391>,  <37.748814, 35.299084, 49.018356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314335, 35.586292, 49.510391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352135, 35.824863, 49.191559>,  <37.374813, 35.968006, 49.000259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352135, 35.824863, 49.191559>,  <37.314335, 35.586292, 49.510391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352135, 35.824863, 49.191559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994716, 0.088830, -0.051461,
		0.040112, 0.797736, 0.601671,
		0.094499, 0.596428, -0.797084,
		37.380486, 36.003792, 48.952435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890430, 36.182205, 49.650963>,  <37.314335, 35.586292, 49.510391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890430, 36.182205, 49.650963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915062, 36.212181, 49.252850>,  <36.929840, 36.230167, 49.013981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915062, 36.212181, 49.252850>,  <36.890430, 36.182205, 49.650963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915062, 36.212181, 49.252850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988022, 0.145938, -0.050143,
		0.141492, 0.986451, 0.083029,
		0.061580, 0.074940, -0.995285,
		36.933537, 36.234665, 48.954266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698322, 36.815479, 49.424278>,  <36.890430, 36.182205, 49.650963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698322, 36.815479, 49.424278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623875, 36.566891, 49.119877>,  <36.579205, 36.417736, 48.937237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623875, 36.566891, 49.119877>,  <36.698322, 36.815479, 49.424278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623875, 36.566891, 49.119877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971771, 0.230727, 0.049242,
		0.144982, 0.748688, -0.646875,
		-0.186118, -0.621475, -0.761005,
		36.568039, 36.380447, 48.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264973, 37.170990, 49.019825>,  <36.698322, 36.815479, 49.424278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264973, 37.170990, 49.019825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221458, 36.799923, 48.876945>,  <36.195351, 36.577282, 48.791218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221458, 36.799923, 48.876945>,  <36.264973, 37.170990, 49.019825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221458, 36.799923, 48.876945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987590, 0.141810, -0.067506,
		0.113278, 0.345420, -0.931587,
		-0.108790, -0.927672, -0.357197,
		36.188820, 36.521622, 48.769787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808411, 37.223743, 48.518604>,  <36.264973, 37.170990, 49.019825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808411, 37.223743, 48.518604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807083, 36.828716, 48.581478>,  <35.806286, 36.591702, 48.619202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807083, 36.828716, 48.581478>,  <35.808411, 37.223743, 48.518604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807083, 36.828716, 48.581478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992777, -0.015598, -0.118955,
		0.119928, -0.156442, -0.980379,
		-0.003318, -0.987564, 0.157183,
		35.806087, 36.532448, 48.628632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362103, 36.976006, 48.030758>,  <35.808411, 37.223743, 48.518604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362103, 36.976006, 48.030758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370102, 36.683636, 48.303623>,  <35.374901, 36.508213, 48.467342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370102, 36.683636, 48.303623>,  <35.362103, 36.976006, 48.030758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370102, 36.683636, 48.303623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998652, 0.018088, 0.048657,
		-0.047903, -0.682217, -0.729578,
		0.019998, -0.730926, 0.682164,
		35.376102, 36.464359, 48.508274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788612, 36.573116, 47.825951>,  <35.362103, 36.976006, 48.030758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788612, 36.573116, 47.825951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868771, 36.444687, 48.196194>,  <34.916866, 36.367630, 48.418339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868771, 36.444687, 48.196194>,  <34.788612, 36.573116, 47.825951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868771, 36.444687, 48.196194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977990, -0.121594, 0.169558,
		0.058108, -0.939216, -0.338375,
		0.200396, -0.321075, 0.925609,
		34.928890, 36.348366, 48.473877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397903, 35.946712, 47.986664>,  <34.788612, 36.573116, 47.825951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397903, 35.946712, 47.986664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494732, 36.073383, 48.353516>,  <34.552830, 36.149384, 48.573627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494732, 36.073383, 48.353516>,  <34.397903, 35.946712, 47.986664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494732, 36.073383, 48.353516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900320, -0.279057, 0.333993,
		0.361697, -0.906557, 0.217554,
		0.242074, 0.316673, 0.917125,
		34.567352, 36.168385, 48.628654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114975, 35.485386, 48.437733>,  <34.397903, 35.946712, 47.986664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114975, 35.485386, 48.437733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145153, 35.812462, 48.666012>,  <34.163261, 36.008709, 48.802979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145153, 35.812462, 48.666012>,  <34.114975, 35.485386, 48.437733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145153, 35.812462, 48.666012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946701, -0.121002, 0.298522,
		0.313153, -0.562798, 0.764979,
		0.075444, 0.817690, 0.570694,
		34.167786, 36.057770, 48.837219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113361, 35.210724, 49.186226>,  <34.114975, 35.485386, 48.437733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113361, 35.210724, 49.186226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979641, 35.583340, 49.128971>,  <33.899410, 35.806908, 49.094620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979641, 35.583340, 49.128971>,  <34.113361, 35.210724, 49.186226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979641, 35.583340, 49.128971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926439, -0.296908, 0.231424,
		0.173083, 0.209968, 0.962266,
		-0.334296, 0.931536, -0.143133,
		33.879353, 35.862801, 49.086033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569813, 35.276287, 49.776215>,  <34.113361, 35.210724, 49.186226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569813, 35.276287, 49.776215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.519699, 35.588512, 49.531258>,  <33.489632, 35.775848, 49.384281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.519699, 35.588512, 49.531258>,  <33.569813, 35.276287, 49.776215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519699, 35.588512, 49.531258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991541, -0.119611, 0.050399,
		-0.033910, 0.613528, 0.788945,
		-0.125288, 0.780562, -0.612394,
		33.482113, 35.822681, 49.347538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261921, 35.797665, 50.019508>,  <33.569813, 35.276287, 49.776215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261921, 35.797665, 50.019508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.161560, 35.803871, 49.632351>,  <33.101345, 35.807594, 49.400059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.161560, 35.803871, 49.632351>,  <33.261921, 35.797665, 50.019508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161560, 35.803871, 49.632351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966702, -0.056053, 0.249691,
		-0.050377, 0.998307, 0.029068,
		-0.250898, 0.015521, -0.967889,
		33.086292, 35.808529, 49.341984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812538, 36.341457, 50.057350>,  <33.261921, 35.797665, 50.019508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812538, 36.341457, 50.057350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.750763, 36.118286, 49.731194>,  <32.713696, 35.984383, 49.535500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.750763, 36.118286, 49.731194>,  <32.812538, 36.341457, 50.057350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750763, 36.118286, 49.731194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959868, -0.110816, 0.257630,
		-0.234098, 0.822457, -0.518424,
		-0.154440, -0.557929, -0.815392,
		32.704430, 35.950909, 49.486576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199158, 36.569267, 49.717121>,  <32.812538, 36.341457, 50.057350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199158, 36.569267, 49.717121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233444, 36.196716, 49.575596>,  <32.254017, 35.973186, 49.490681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233444, 36.196716, 49.575596>,  <32.199158, 36.569267, 49.717121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233444, 36.196716, 49.575596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961836, -0.169975, 0.214431,
		-0.259855, 0.321926, -0.910406,
		0.085715, -0.931382, -0.353809,
		32.259159, 35.917301, 49.469452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621431, 36.438622, 49.321270>,  <32.199158, 36.569267, 49.717121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621431, 36.438622, 49.321270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718035, 36.061428, 49.412880>,  <31.775997, 35.835110, 49.467846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718035, 36.061428, 49.412880>,  <31.621431, 36.438622, 49.321270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718035, 36.061428, 49.412880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944123, -0.173784, 0.280054,
		-0.224287, -0.283860, -0.932265,
		0.241509, -0.942986, 0.229022,
		31.790487, 35.778534, 49.481586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992781, 36.062859, 49.061886>,  <31.621431, 36.438622, 49.321270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992781, 36.062859, 49.061886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.190374, 35.785656, 49.271919>,  <31.308931, 35.619335, 49.397942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.190374, 35.785656, 49.271919>,  <30.992781, 36.062859, 49.061886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190374, 35.785656, 49.271919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862536, -0.466710, 0.195483,
		0.109593, -0.549473, -0.828293,
		0.493985, -0.693009, 0.525088,
		31.338570, 35.577755, 49.429447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882462, 35.352947, 48.861187>,  <30.992781, 36.062859, 49.061886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882462, 35.352947, 48.861187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.937458, 35.343048, 49.257263>,  <30.970455, 35.337109, 49.494911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.937458, 35.343048, 49.257263>,  <30.882462, 35.352947, 48.861187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937458, 35.343048, 49.257263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927423, -0.354269, 0.119920,
		0.347827, -0.934816, -0.071662,
		0.137491, -0.024749, 0.990194,
		30.978704, 35.335625, 49.554321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412930, 34.849243, 49.120384>,  <30.882462, 35.352947, 48.861187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412930, 34.849243, 49.120384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.514442, 35.021523, 49.466816>,  <30.575350, 35.124889, 49.674675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.514442, 35.021523, 49.466816>,  <30.412930, 34.849243, 49.120384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514442, 35.021523, 49.466816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867702, -0.294294, 0.400606,
		0.427422, -0.853166, 0.299030,
		0.253780, 0.430697, 0.866081,
		30.590576, 35.150730, 49.726639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255886, 34.375366, 49.768974>,  <30.412930, 34.849243, 49.120384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255886, 34.375366, 49.768974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.306314, 34.721714, 49.962624>,  <30.336573, 34.929523, 50.078812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.306314, 34.721714, 49.962624>,  <30.255886, 34.375366, 49.768974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306314, 34.721714, 49.962624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810987, -0.191095, 0.552976,
		0.571319, -0.462331, 0.678118,
		0.126073, 0.865871, 0.484121,
		30.344137, 34.981476, 50.107861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071093, 34.241894, 50.429920>,  <30.255886, 34.375366, 49.768974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071093, 34.241894, 50.429920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.024090, 34.639027, 50.421223>,  <29.995888, 34.877308, 50.416004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.024090, 34.639027, 50.421223>,  <30.071093, 34.241894, 50.429920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024090, 34.639027, 50.421223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855484, -0.090082, 0.509933,
		0.504319, 0.078524, 0.859939,
		-0.117507, 0.992834, -0.021746,
		29.988838, 34.936878, 50.414700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927692, 34.498268, 51.056561>,  <30.071093, 34.241894, 50.429920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927692, 34.498268, 51.056561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.763329, 34.778370, 50.823051>,  <29.664709, 34.946430, 50.682945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.763329, 34.778370, 50.823051>,  <29.927692, 34.498268, 51.056561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763329, 34.778370, 50.823051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898522, -0.202689, 0.389327,
		0.154305, 0.684512, 0.712484,
		-0.410911, 0.700258, -0.583773,
		29.640055, 34.988449, 50.647919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408239, 34.804668, 51.501427>,  <29.927692, 34.498268, 51.056561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408239, 34.804668, 51.501427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.295063, 34.910736, 51.132725>,  <29.227158, 34.974377, 50.911503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.295063, 34.910736, 51.132725>,  <29.408239, 34.804668, 51.501427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295063, 34.910736, 51.132725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959001, -0.062029, 0.276529,
		0.016151, 0.962205, 0.271845,
		-0.282940, 0.265166, -0.921755,
		29.210180, 34.990288, 50.856197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921616, 35.356178, 51.672165>,  <29.408239, 34.804668, 51.501427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921616, 35.356178, 51.672165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849577, 35.235115, 51.297794>,  <28.806355, 35.162476, 51.073170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849577, 35.235115, 51.297794>,  <28.921616, 35.356178, 51.672165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849577, 35.235115, 51.297794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975866, -0.064480, 0.208631,
		-0.123493, 0.950915, -0.283743,
		-0.180095, -0.302659, -0.935929,
		28.795549, 35.144318, 51.017017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380480, 35.689571, 51.480965>,  <28.921616, 35.356178, 51.672165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380480, 35.689571, 51.480965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.358950, 35.420990, 51.185329>,  <28.346031, 35.259842, 51.007950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.358950, 35.420990, 51.185329>,  <28.380480, 35.689571, 51.480965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358950, 35.420990, 51.185329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993433, 0.110845, -0.028356,
		0.100964, 0.732708, -0.673012,
		-0.053823, -0.671456, -0.739087,
		28.342802, 35.219555, 50.963604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884996, 35.956593, 50.958260>,  <28.380480, 35.689571, 51.480965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884996, 35.956593, 50.958260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.916409, 35.558624, 50.933098>,  <27.935257, 35.319843, 50.917999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.916409, 35.558624, 50.933098>,  <27.884996, 35.956593, 50.958260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916409, 35.558624, 50.933098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949760, -0.093845, 0.298579,
		-0.302967, 0.036296, -0.952310,
		0.078532, -0.994925, -0.062905,
		27.939968, 35.260147, 50.914227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422119, 35.673779, 50.525616>,  <27.884996, 35.956593, 50.958260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422119, 35.673779, 50.525616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.508877, 35.346088, 50.737965>,  <27.560932, 35.149475, 50.865376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.508877, 35.346088, 50.737965>,  <27.422119, 35.673779, 50.525616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508877, 35.346088, 50.737965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969084, -0.246211, 0.015989,
		0.117609, -0.517931, -0.847299,
		0.216896, -0.819224, 0.530876,
		27.573946, 35.100323, 50.897228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948652, 35.206207, 50.313404>,  <27.422119, 35.673779, 50.525616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948652, 35.206207, 50.313404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.086576, 35.066170, 50.661781>,  <27.169331, 34.982147, 50.870808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.086576, 35.066170, 50.661781>,  <26.948652, 35.206207, 50.313404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086576, 35.066170, 50.661781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936116, -0.196670, 0.291560,
		0.069216, -0.915837, -0.395539,
		0.344812, -0.350090, 0.870943,
		27.190020, 34.961143, 50.923065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769434, 34.488640, 50.357754>,  <26.948652, 35.206207, 50.313404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769434, 34.488640, 50.357754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.817659, 34.631569, 50.728222>,  <26.846594, 34.717327, 50.950500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.817659, 34.631569, 50.728222>,  <26.769434, 34.488640, 50.357754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817659, 34.631569, 50.728222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974415, -0.135676, 0.179188,
		0.189686, -0.924074, 0.331824,
		0.120562, 0.357323, 0.926167,
		26.853828, 34.738766, 51.006073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240482, 34.104389, 50.690144>,  <26.769434, 34.488640, 50.357754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240482, 34.104389, 50.690144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.324226, 34.378605, 50.969055>,  <26.374474, 34.543137, 51.136402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.324226, 34.378605, 50.969055>,  <26.240482, 34.104389, 50.690144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324226, 34.378605, 50.969055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958627, 0.003235, 0.284649,
		0.192882, -0.728027, 0.657855,
		0.209360, 0.685541, 0.697282,
		26.387035, 34.584267, 51.178238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807137, 33.972939, 51.226151>,  <26.240482, 34.104389, 50.690144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807137, 33.972939, 51.226151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.919970, 34.350338, 51.295700>,  <25.987669, 34.576778, 51.337429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.919970, 34.350338, 51.295700>,  <25.807137, 33.972939, 51.226151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919970, 34.350338, 51.295700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905193, 0.201693, 0.374092,
		0.317889, -0.262911, 0.910947,
		0.282084, 0.943503, 0.173870,
		26.004595, 34.633389, 51.347862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629015, 34.093742, 51.923111>,  <25.807137, 33.972939, 51.226151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629015, 34.093742, 51.923111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.669477, 34.454552, 51.755241>,  <25.693754, 34.671036, 51.654518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.669477, 34.454552, 51.755241>,  <25.629015, 34.093742, 51.923111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669477, 34.454552, 51.755241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813367, 0.317894, 0.487214,
		0.572889, 0.292066, 0.765830,
		0.101154, 0.902021, -0.419675,
		25.699823, 34.725159, 51.629337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696377, 34.533546, 52.493946>,  <25.629015, 34.093742, 51.923111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696377, 34.533546, 52.493946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.548452, 34.715340, 52.169800>,  <25.459698, 34.824413, 51.975311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.548452, 34.715340, 52.169800>,  <25.696377, 34.533546, 52.493946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548452, 34.715340, 52.169800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767187, 0.342613, 0.542254,
		0.524085, 0.822232, 0.221969,
		-0.369809, 0.454479, -0.810364,
		25.437510, 34.851685, 51.926689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462671, 35.149982, 52.727951>,  <25.696377, 34.533546, 52.493946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462671, 35.149982, 52.727951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.259348, 35.144512, 52.383526>,  <25.137354, 35.141232, 52.176868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.259348, 35.144512, 52.383526>,  <25.462671, 35.149982, 52.727951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259348, 35.144512, 52.383526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783858, 0.421420, 0.456040,
		0.356636, 0.906762, -0.224928,
		-0.508309, -0.013671, -0.861066,
		25.106855, 35.140411, 52.125206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293060, 35.854420, 52.593925>,  <25.462671, 35.149982, 52.727951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293060, 35.854420, 52.593925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.034105, 35.623013, 52.395447>,  <24.878733, 35.484169, 52.276360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.034105, 35.623013, 52.395447>,  <25.293060, 35.854420, 52.593925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034105, 35.623013, 52.395447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756955, 0.564013, 0.330013,
		0.088941, 0.589241, -0.803047,
		-0.647386, -0.578519, -0.496193,
		24.839890, 35.449455, 52.246590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.976330, 32.999741, 51.681824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.952950, 33.397896, 51.712257>,  <36.938923, 33.636787, 51.730518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.952950, 33.397896, 51.712257>,  <36.976330, 32.999741, 51.681824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952950, 33.397896, 51.712257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979163, 0.042318, 0.198617,
		0.194481, 0.086108, -0.977120,
		-0.058452, 0.995387, 0.076084,
		36.935413, 33.696510, 51.735081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120037, 33.380371, 51.001915>,  <36.976330, 32.999741, 51.681824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120037, 33.380371, 51.001915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749531, 33.373409, 50.851326>,  <36.527225, 33.369232, 50.760975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749531, 33.373409, 50.851326>,  <37.120037, 33.380371, 51.001915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749531, 33.373409, 50.851326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309913, 0.603574, 0.734610,
		0.214441, 0.797117, -0.564464,
		-0.926266, -0.017404, -0.376468,
		36.471649, 33.368187, 50.738384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928082, 34.040657, 51.081604>,  <37.120037, 33.380371, 51.001915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928082, 34.040657, 51.081604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580742, 33.853737, 51.015144>,  <36.372337, 33.741585, 50.975269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580742, 33.853737, 51.015144>,  <36.928082, 34.040657, 51.081604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580742, 33.853737, 51.015144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451080, 0.604882, 0.656236,
		-0.206160, 0.644785, -0.736036,
		-0.868346, -0.467301, -0.166147,
		36.320236, 33.713547, 50.965302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480911, 34.612988, 50.967777>,  <36.928082, 34.040657, 51.081604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480911, 34.612988, 50.967777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243866, 34.305744, 51.064793>,  <36.101639, 34.121399, 51.123001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243866, 34.305744, 51.064793>,  <36.480911, 34.612988, 50.967777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243866, 34.305744, 51.064793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468458, 0.573605, 0.671956,
		-0.655251, 0.284594, -0.699751,
		-0.592615, -0.768104, 0.242535,
		36.066082, 34.075314, 51.137554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817421, 34.809242, 50.892963>,  <36.480911, 34.612988, 50.967777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817421, 34.809242, 50.892963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821846, 34.518505, 51.167652>,  <35.824501, 34.344063, 51.332466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821846, 34.518505, 51.167652>,  <35.817421, 34.809242, 50.892963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821846, 34.518505, 51.167652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638146, 0.523594, 0.564463,
		-0.769836, -0.444472, -0.458037,
		0.011063, -0.726838, 0.686719,
		35.825165, 34.300453, 51.373669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215992, 34.890049, 51.102154>,  <35.817421, 34.809242, 50.892963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215992, 34.890049, 51.102154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388130, 34.667133, 51.386189>,  <35.491413, 34.533382, 51.556610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388130, 34.667133, 51.386189>,  <35.215992, 34.890049, 51.102154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388130, 34.667133, 51.386189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576759, 0.435375, 0.691229,
		-0.694372, -0.707019, -0.134061,
		0.430345, -0.557291, 0.710092,
		35.517235, 34.499947, 51.599216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682934, 34.434616, 51.446087>,  <35.215992, 34.890049, 51.102154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682934, 34.434616, 51.446087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988628, 34.464012, 51.702377>,  <35.172047, 34.481651, 51.856152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988628, 34.464012, 51.702377>,  <34.682934, 34.434616, 51.446087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988628, 34.464012, 51.702377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593302, 0.469604, 0.653808,
		-0.252841, -0.879813, 0.402493,
		0.764241, 0.073491, 0.640730,
		35.217899, 34.486061, 51.894596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367928, 34.223942, 52.037754>,  <34.682934, 34.434616, 51.446087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367928, 34.223942, 52.037754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702259, 34.433083, 52.104702>,  <34.902859, 34.558567, 52.144871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702259, 34.433083, 52.104702>,  <34.367928, 34.223942, 52.037754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702259, 34.433083, 52.104702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447711, 0.472753, 0.758986,
		0.317708, -0.709320, 0.629227,
		0.835833, 0.522848, 0.167373,
		34.953011, 34.589935, 52.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609478, 33.989254, 52.575203>,  <34.367928, 34.223942, 52.037754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609478, 33.989254, 52.575203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.812023, 34.334179, 52.576408>,  <34.933552, 34.541134, 52.577133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.812023, 34.334179, 52.576408>,  <34.609478, 33.989254, 52.575203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812023, 34.334179, 52.576408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366291, 0.211922, 0.906046,
		0.780657, -0.459896, 0.423168,
		0.506366, 0.862314, 0.003017,
		34.963932, 34.592873, 52.577312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908821, 34.094921, 53.176647>,  <34.609478, 33.989254, 52.575203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908821, 34.094921, 53.176647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878250, 34.466267, 53.031158>,  <34.859909, 34.689075, 52.943867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878250, 34.466267, 53.031158>,  <34.908821, 34.094921, 53.176647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878250, 34.466267, 53.031158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494681, 0.281422, 0.822248,
		0.865707, 0.242766, 0.437738,
		-0.076425, 0.928367, -0.363721,
		34.855324, 34.744778, 52.922043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287834, 34.513275, 53.642879>,  <34.908821, 34.094921, 53.176647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287834, 34.513275, 53.642879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.031429, 34.755142, 53.453785>,  <34.877586, 34.900261, 53.340328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.031429, 34.755142, 53.453785>,  <35.287834, 34.513275, 53.642879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031429, 34.755142, 53.453785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550869, 0.066447, 0.831943,
		0.534460, 0.793703, 0.290499,
		-0.641012, 0.604666, -0.472739,
		34.839127, 34.936543, 53.311962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206120, 35.069019, 54.106525>,  <35.287834, 34.513275, 53.642879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206120, 35.069019, 54.106525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887539, 35.104153, 53.867210>,  <34.696388, 35.125233, 53.723621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887539, 35.104153, 53.867210>,  <35.206120, 35.069019, 54.106525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887539, 35.104153, 53.867210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523750, 0.394303, 0.755123,
		0.302232, 0.914773, -0.268041,
		-0.796456, 0.087836, -0.598283,
		34.648602, 35.130505, 53.687725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486858, 35.632893, 53.834328>,  <35.206120, 35.069019, 54.106525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486858, 35.632893, 53.834328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697170, 35.921207, 54.015003>,  <35.823357, 36.094196, 54.123409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697170, 35.921207, 54.015003>,  <35.486858, 35.632893, 53.834328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697170, 35.921207, 54.015003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668414, -0.021662, -0.743474,
		-0.526101, 0.692818, -0.493174,
		0.525775, 0.720787, 0.451693,
		35.854904, 36.137444, 54.150513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688995, 36.062740, 53.257568>,  <35.486858, 35.632893, 53.834328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688995, 36.062740, 53.257568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940437, 36.130955, 53.561089>,  <36.091301, 36.171883, 53.743202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940437, 36.130955, 53.561089>,  <35.688995, 36.062740, 53.257568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940437, 36.130955, 53.561089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771072, -0.009284, -0.636680,
		-0.101533, 0.985308, -0.137332,
		0.628601, 0.170537, 0.758800,
		36.129017, 36.182117, 53.788727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230396, 36.545399, 52.992268>,  <35.688995, 36.062740, 53.257568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230396, 36.545399, 52.992268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393456, 36.367622, 53.311340>,  <36.491291, 36.260956, 53.502785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393456, 36.367622, 53.311340>,  <36.230396, 36.545399, 52.992268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393456, 36.367622, 53.311340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869228, -0.078763, -0.488098,
		0.279758, 0.892339, 0.354214,
		0.407650, -0.444442, 0.797680,
		36.515751, 36.234291, 53.550644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849167, 36.908909, 53.330070>,  <36.230396, 36.545399, 52.992268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849167, 36.908909, 53.330070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869526, 36.515629, 53.400192>,  <36.881741, 36.279663, 53.442265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869526, 36.515629, 53.400192>,  <36.849167, 36.908909, 53.330070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869526, 36.515629, 53.400192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863276, -0.044945, -0.502727,
		0.502159, 0.176929, 0.846482,
		0.050901, -0.983197, 0.175308,
		36.884796, 36.220669, 53.452785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578999, 36.793190, 53.564289>,  <36.849167, 36.908909, 53.330070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578999, 36.793190, 53.564289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469273, 36.424126, 53.455887>,  <37.403435, 36.202686, 53.390846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469273, 36.424126, 53.455887>,  <37.578999, 36.793190, 53.564289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469273, 36.424126, 53.455887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889241, -0.136105, -0.436722,
		0.366061, -0.360792, 0.857804,
		-0.274317, -0.922662, -0.271008,
		37.386978, 36.147327, 53.374584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151012, 36.481457, 53.566113>,  <37.578999, 36.793190, 53.564289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151012, 36.481457, 53.566113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916275, 36.214817, 53.382259>,  <37.775433, 36.054832, 53.271946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916275, 36.214817, 53.382259>,  <38.151012, 36.481457, 53.566113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916275, 36.214817, 53.382259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755307, -0.246122, -0.607401,
		0.291764, -0.703615, 0.647919,
		-0.586843, -0.666596, -0.459636,
		37.740223, 36.014839, 53.244370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546021, 35.844204, 53.311794>,  <38.151012, 36.481457, 53.566113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546021, 35.844204, 53.311794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207569, 35.840786, 53.098629>,  <38.004498, 35.838737, 52.970730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207569, 35.840786, 53.098629>,  <38.546021, 35.844204, 53.311794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207569, 35.840786, 53.098629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500300, -0.357460, -0.788620,
		-0.183759, -0.933889, 0.306731,
		-0.846128, -0.008541, -0.532911,
		37.953732, 35.838223, 52.938755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647182, 35.182961, 53.042160>,  <38.546021, 35.844204, 53.311794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647182, 35.182961, 53.042160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413532, 35.424026, 52.824684>,  <38.273342, 35.568665, 52.694199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413532, 35.424026, 52.824684>,  <38.647182, 35.182961, 53.042160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413532, 35.424026, 52.824684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395982, -0.373130, -0.839031,
		-0.708519, -0.705389, -0.020689,
		-0.584123, 0.602661, -0.543691,
		38.238297, 35.604824, 52.661575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413376, 34.774193, 52.547348>,  <38.647182, 35.182961, 53.042160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413376, 34.774193, 52.547348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351677, 35.144608, 52.409557>,  <38.314655, 35.366856, 52.326881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351677, 35.144608, 52.409557>,  <38.413376, 34.774193, 52.547348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351677, 35.144608, 52.409557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322102, -0.282470, -0.903582,
		-0.934054, -0.250335, -0.254707,
		-0.154251, 0.926036, -0.344476,
		38.305401, 35.422417, 52.306213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102890, 34.693592, 52.030064>,  <38.413376, 34.774193, 52.547348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102890, 34.693592, 52.030064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251091, 35.056824, 51.951965>,  <38.340012, 35.274765, 51.905106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251091, 35.056824, 51.951965>,  <38.102890, 34.693592, 52.030064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251091, 35.056824, 51.951965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277650, -0.308867, -0.909677,
		-0.886364, 0.282826, -0.366564,
		0.370500, 0.908081, -0.195242,
		38.362240, 35.329247, 51.893394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042473, 34.740833, 51.326576>,  <38.102890, 34.693592, 52.030064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042473, 34.740833, 51.326576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305935, 35.029129, 51.413029>,  <38.464012, 35.202106, 51.464901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305935, 35.029129, 51.413029>,  <38.042473, 34.740833, 51.326576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305935, 35.029129, 51.413029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436772, -0.132319, -0.889788,
		-0.612706, 0.680461, -0.401950,
		0.658652, 0.720738, 0.216134,
		38.503529, 35.245350, 51.477867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146046, 35.070923, 50.674358>,  <38.042473, 34.740833, 51.326576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146046, 35.070923, 50.674358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457108, 35.170635, 50.905220>,  <38.643745, 35.230461, 51.043739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457108, 35.170635, 50.905220>,  <38.146046, 35.070923, 50.674358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457108, 35.170635, 50.905220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627505, -0.251445, -0.736894,
		-0.038569, 0.935220, -0.351962,
		0.777657, 0.249279, 0.577157,
		38.690403, 35.245419, 51.078365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682022, 35.340351, 50.199532>,  <38.146046, 35.070923, 50.674358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682022, 35.340351, 50.199532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.895691, 35.264996, 50.529179>,  <39.023891, 35.219780, 50.726967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.895691, 35.264996, 50.529179>,  <38.682022, 35.340351, 50.199532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895691, 35.264996, 50.529179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745107, -0.355589, -0.564245,
		0.399346, 0.915459, -0.049574,
		0.534171, -0.188391, 0.824118,
		39.055943, 35.208477, 50.776413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012611, 36.002880, 50.417915>,  <38.682022, 35.340351, 50.199532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012611, 36.002880, 50.417915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.810196, 36.248878, 50.176022>,  <38.688747, 36.396477, 50.030884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.810196, 36.248878, 50.176022>,  <39.012611, 36.002880, 50.417915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810196, 36.248878, 50.176022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620138, -0.227878, -0.750667,
		-0.599465, -0.754883, -0.266070,
		-0.506034, 0.614998, -0.604737,
		38.658386, 36.433376, 49.994602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295795, 36.164272, 50.349140>,  <39.012611, 36.002880, 50.417915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295795, 36.164272, 50.349140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963394, 35.945377, 50.309216>,  <37.763954, 35.814041, 50.285259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963394, 35.945377, 50.309216>,  <38.295795, 36.164272, 50.349140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963394, 35.945377, 50.309216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435503, 0.528405, 0.728783,
		-0.346075, 0.649091, -0.677431,
		-0.831005, -0.547237, -0.099813,
		37.714092, 35.781208, 50.279270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675476, 36.573166, 50.163372>,  <38.295795, 36.164272, 50.349140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675476, 36.573166, 50.163372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584305, 36.241341, 50.367287>,  <37.529602, 36.042248, 50.489635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584305, 36.241341, 50.367287>,  <37.675476, 36.573166, 50.163372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584305, 36.241341, 50.367287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628967, 0.525110, 0.573289,
		-0.743270, -0.189969, -0.641453,
		-0.227926, -0.829561, 0.509783,
		37.515926, 35.992474, 50.520222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067451, 36.896072, 50.308853>,  <37.675476, 36.573166, 50.163372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067451, 36.896072, 50.308853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293633, 36.720066, 50.587894>,  <37.429340, 36.614460, 50.755318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293633, 36.720066, 50.587894>,  <37.067451, 36.896072, 50.308853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293633, 36.720066, 50.587894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340786, -0.645586, -0.683435,
		0.751087, 0.624181, -0.215094,
		0.565450, -0.440018, 0.697603,
		37.463268, 36.588062, 50.797176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038589, 37.671070, 50.205540>,  <37.067451, 36.896072, 50.308853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038589, 37.671070, 50.205540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798782, 37.805122, 49.914814>,  <36.654896, 37.885555, 49.740379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798782, 37.805122, 49.914814>,  <37.038589, 37.671070, 50.205540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798782, 37.805122, 49.914814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597791, 0.416334, 0.685064,
		0.532184, 0.845194, -0.049263,
		-0.599522, 0.335131, -0.726815,
		36.618927, 37.905663, 49.696770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994320, 38.447899, 50.233059>,  <37.038589, 37.671070, 50.205540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994320, 38.447899, 50.233059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659393, 38.290569, 50.081169>,  <36.458435, 38.196171, 49.990036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659393, 38.290569, 50.081169>,  <36.994320, 38.447899, 50.233059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659393, 38.290569, 50.081169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539266, 0.479945, 0.691986,
		-0.089922, 0.784189, -0.613972,
		-0.837321, -0.393319, -0.379729,
		36.408195, 38.172573, 49.967251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475952, 39.049347, 50.069485>,  <36.994320, 38.447899, 50.233059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475952, 39.049347, 50.069485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284733, 38.698803, 50.093040>,  <36.170002, 38.488476, 50.107174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284733, 38.698803, 50.093040>,  <36.475952, 39.049347, 50.069485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284733, 38.698803, 50.093040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764816, 0.448297, 0.462695,
		-0.431885, 0.176154, -0.884559,
		-0.478051, -0.876356, 0.058887,
		36.141319, 38.435898, 50.110706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800320, 39.142464, 49.778942>,  <36.475952, 39.049347, 50.069485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800320, 39.142464, 49.778942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754604, 38.822765, 50.014957>,  <35.727173, 38.630947, 50.156567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754604, 38.822765, 50.014957>,  <35.800320, 39.142464, 49.778942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754604, 38.822765, 50.014957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662631, 0.503839, 0.554135,
		-0.740174, -0.327642, -0.587191,
		-0.114291, -0.799247, 0.590034,
		35.720318, 38.582993, 50.191967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090096, 39.112228, 49.827389>,  <35.800320, 39.142464, 49.778942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090096, 39.112228, 49.827389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211224, 38.885597, 50.133930>,  <35.283901, 38.749619, 50.317856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211224, 38.885597, 50.133930>,  <35.090096, 39.112228, 49.827389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211224, 38.885597, 50.133930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797834, 0.289133, 0.529021,
		-0.521307, -0.771619, -0.364477,
		0.302820, -0.566574, 0.766351,
		35.302071, 38.715626, 50.363834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503239, 38.919998, 50.163864>,  <35.090096, 39.112228, 49.827389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503239, 38.919998, 50.163864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765182, 38.793533, 50.438442>,  <34.922348, 38.717655, 50.603188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765182, 38.793533, 50.438442>,  <34.503239, 38.919998, 50.163864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765182, 38.793533, 50.438442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580302, 0.371528, 0.724718,
		-0.484162, -0.872931, 0.059826,
		0.654856, -0.316164, 0.686443,
		34.961639, 38.698685, 50.644375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112328, 38.605824, 50.666122>,  <34.503239, 38.919998, 50.163864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112328, 38.605824, 50.666122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.468910, 38.700905, 50.820423>,  <34.682858, 38.757954, 50.913006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.468910, 38.700905, 50.820423>,  <34.112328, 38.605824, 50.666122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468910, 38.700905, 50.820423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449850, 0.362342, 0.816298,
		0.054263, -0.901224, 0.429943,
		0.891454, 0.237704, 0.385754,
		34.736347, 38.772217, 50.936150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263237, 38.277214, 51.388474>,  <34.112328, 38.605824, 50.666122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263237, 38.277214, 51.388474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462212, 38.621090, 51.342014>,  <34.581596, 38.827415, 51.314140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462212, 38.621090, 51.342014>,  <34.263237, 38.277214, 51.388474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462212, 38.621090, 51.342014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655162, 0.460056, 0.599259,
		0.568612, -0.221998, 0.792085,
		0.497437, 0.859689, -0.116148,
		34.611443, 38.878998, 51.307171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372276, 38.548397, 52.108089>,  <34.263237, 38.277214, 51.388474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372276, 38.548397, 52.108089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421612, 38.851040, 51.851238>,  <34.451214, 39.032627, 51.697128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421612, 38.851040, 51.851238>,  <34.372276, 38.548397, 52.108089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421612, 38.851040, 51.851238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456406, 0.617821, 0.640305,
		0.881181, 0.214094, 0.421524,
		0.123341, 0.756611, -0.642126,
		34.458614, 39.078022, 51.658600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665283, 39.135872, 52.496296>,  <34.372276, 38.548397, 52.108089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665283, 39.135872, 52.496296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.552849, 39.322453, 52.160816>,  <34.485386, 39.434402, 51.959530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.552849, 39.322453, 52.160816>,  <34.665283, 39.135872, 52.496296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552849, 39.322453, 52.160816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224260, 0.817808, 0.529998,
		0.933111, 0.337062, -0.125268,
		-0.281088, 0.466455, -0.838695,
		34.468521, 39.462387, 51.909206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963360, 39.777557, 52.615814>,  <34.665283, 39.135872, 52.496296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963360, 39.777557, 52.615814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651020, 39.805397, 52.367481>,  <34.463615, 39.822102, 52.218483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651020, 39.805397, 52.367481>,  <34.963360, 39.777557, 52.615814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651020, 39.805397, 52.367481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478760, 0.571746, 0.666255,
		0.401329, 0.817474, -0.413125,
		-0.780848, 0.069599, -0.620832,
		34.416767, 39.826279, 52.181232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678482, 40.462894, 52.718342>,  <34.963360, 39.777557, 52.615814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678482, 40.462894, 52.718342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377472, 40.302662, 52.509251>,  <34.196865, 40.206524, 52.383797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377472, 40.302662, 52.509251>,  <34.678482, 40.462894, 52.718342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377472, 40.302662, 52.509251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648296, 0.310976, 0.694987,
		-0.115842, 0.861876, -0.493711,
		-0.752525, -0.400579, -0.522726,
		34.151714, 40.182487, 52.352432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268856, 41.029118, 52.534405>,  <34.678482, 40.462894, 52.718342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268856, 41.029118, 52.534405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048576, 40.696350, 52.561649>,  <33.916409, 40.496689, 52.577995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048576, 40.696350, 52.561649>,  <34.268856, 41.029118, 52.534405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048576, 40.696350, 52.561649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694506, 0.501940, 0.515478,
		-0.463028, 0.236565, -0.854191,
		-0.550697, -0.831922, 0.068116,
		33.883366, 40.446774, 52.582085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658436, 41.299778, 52.489151>,  <34.268856, 41.029118, 52.534405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658436, 41.299778, 52.489151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570553, 40.925091, 52.598171>,  <33.517822, 40.700279, 52.663582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570553, 40.925091, 52.598171>,  <33.658436, 41.299778, 52.489151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570553, 40.925091, 52.598171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790601, 0.334639, 0.512802,
		-0.571559, -0.102814, -0.814094,
		-0.219705, -0.936721, 0.272551,
		33.504642, 40.644073, 52.679935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835670, 41.315910, 52.536194>,  <33.658436, 41.299778, 52.489151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835670, 41.315910, 52.536194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955627, 40.989201, 52.733349>,  <33.027599, 40.793175, 52.851643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955627, 40.989201, 52.733349>,  <32.835670, 41.315910, 52.536194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955627, 40.989201, 52.733349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774298, 0.093402, 0.625890,
		-0.557250, -0.569340, -0.604420,
		0.299890, -0.816779, 0.492887,
		33.045593, 40.744167, 52.881214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268459, 40.898281, 52.587109>,  <32.835670, 41.315910, 52.536194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268459, 40.898281, 52.587109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512585, 40.796917, 52.887321>,  <32.659061, 40.736099, 53.067448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512585, 40.796917, 52.887321>,  <32.268459, 40.898281, 52.587109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512585, 40.796917, 52.887321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759503, 0.082038, 0.645310,
		-0.225101, -0.963874, -0.142398,
		0.610315, -0.253412, 0.750532,
		32.695679, 40.720894, 53.112480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798429, 40.542656, 53.117371>,  <32.268459, 40.898281, 52.587109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798429, 40.542656, 53.117371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141071, 40.559982, 53.323029>,  <32.346657, 40.570377, 53.446423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141071, 40.559982, 53.323029>,  <31.798429, 40.542656, 53.117371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141071, 40.559982, 53.323029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515630, 0.035692, 0.856068,
		0.018708, -0.998425, 0.052896,
		0.856607, 0.043290, 0.514150,
		32.398052, 40.572975, 53.477272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724983, 40.080330, 53.695026>,  <31.798429, 40.542656, 53.117371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724983, 40.080330, 53.695026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981228, 40.374855, 53.782173>,  <32.134975, 40.551571, 53.834461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981228, 40.374855, 53.782173>,  <31.724983, 40.080330, 53.695026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981228, 40.374855, 53.782173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502637, 0.187613, 0.843894,
		0.580494, -0.650114, 0.490284,
		0.640611, 0.736311, 0.217863,
		32.173412, 40.595749, 53.847530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581255, 40.230251, 54.422184>,  <31.724983, 40.080330, 53.695026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581255, 40.230251, 54.422184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.835388, 40.528305, 54.341057>,  <31.987867, 40.707138, 54.292381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.835388, 40.528305, 54.341057>,  <31.581255, 40.230251, 54.422184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835388, 40.528305, 54.341057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335418, 0.502832, 0.796652,
		0.695591, -0.438111, 0.569395,
		0.635333, 0.745130, -0.202815,
		32.025990, 40.751842, 54.280212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860758, 40.355541, 55.054955>,  <31.581255, 40.230251, 54.422184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860758, 40.355541, 55.054955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.901215, 40.675468, 54.818291>,  <31.925489, 40.867424, 54.676292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.901215, 40.675468, 54.818291>,  <31.860758, 40.355541, 55.054955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901215, 40.675468, 54.818291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344333, 0.586092, 0.733437,
		0.933383, 0.129545, 0.334684,
		0.101142, 0.799821, -0.591656,
		31.931557, 40.915413, 54.640793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251343, 40.797832, 55.362534>,  <31.860758, 40.355541, 55.054955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251343, 40.797832, 55.362534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054691, 41.028149, 55.101223>,  <31.936701, 41.166340, 54.944439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054691, 41.028149, 55.101223>,  <32.251343, 40.797832, 55.362534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054691, 41.028149, 55.101223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325225, 0.574503, 0.751116,
		0.807795, 0.581729, -0.095178,
		-0.491626, 0.575793, -0.653273,
		31.907204, 41.200886, 54.905243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440998, 41.457104, 55.518929>,  <32.251343, 40.797832, 55.362534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440998, 41.457104, 55.518929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084484, 41.461720, 55.337612>,  <31.870575, 41.464489, 55.228821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084484, 41.461720, 55.337612>,  <32.440998, 41.457104, 55.518929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084484, 41.461720, 55.337612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370503, 0.557782, 0.742703,
		0.261407, 0.829908, -0.492869,
		-0.891288, 0.011539, -0.453291,
		31.817099, 41.465179, 55.201626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236469, 42.123974, 55.595039>,  <32.440998, 41.457104, 55.518929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236469, 42.123974, 55.595039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896315, 41.947281, 55.480698>,  <31.692221, 41.841267, 55.412094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896315, 41.947281, 55.480698>,  <32.236469, 42.123974, 55.595039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896315, 41.947281, 55.480698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510753, 0.562554, 0.650126,
		-0.126375, 0.698860, -0.704006,
		-0.850389, -0.441733, -0.285852,
		31.641197, 41.814762, 55.394943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679272, 42.648727, 55.443310>,  <32.236469, 42.123974, 55.595039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679272, 42.648727, 55.443310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472301, 42.319183, 55.535854>,  <31.348120, 42.121456, 55.591381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472301, 42.319183, 55.535854>,  <31.679272, 42.648727, 55.443310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472301, 42.319183, 55.535854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470683, 0.499796, 0.727091,
		-0.714653, 0.267318, -0.646384,
		-0.517425, -0.823860, 0.231359,
		31.317074, 42.072025, 55.605263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975977, 42.825214, 55.528088>,  <31.679272, 42.648727, 55.443310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975977, 42.825214, 55.528088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.998827, 42.479984, 55.728817>,  <31.012537, 42.272846, 55.849255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.998827, 42.479984, 55.728817>,  <30.975977, 42.825214, 55.528088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998827, 42.479984, 55.728817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413121, 0.437160, 0.798888,
		-0.908882, -0.252953, -0.331583,
		0.057126, -0.863079, 0.501827,
		31.015965, 42.221062, 55.879364>
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
