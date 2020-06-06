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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.453428, 16.641058, -2.737255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662998, 16.821457, -2.448227>,  <22.788740, 16.929697, -2.274810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662998, 16.821457, -2.448227>,  <22.453428, 16.641058, -2.737255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.662998, 16.821457, -2.448227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786847, 0.068570, -0.613327,
		-0.326155, 0.889888, -0.318940,
		0.523923, 0.450997, 0.722570,
		22.820175, 16.956757, -2.231456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.801340, 17.261093, -2.928242>,  <22.453428, 16.641058, -2.737255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.801340, 17.261093, -2.928242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035336, 17.109264, -2.641548>,  <23.175734, 17.018167, -2.469531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035336, 17.109264, -2.641548>,  <22.801340, 17.261093, -2.928242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.035336, 17.109264, -2.641548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768871, -0.021706, -0.639035,
		0.258119, 0.924907, 0.279145,
		0.584989, -0.379574, 0.716737,
		23.210833, 16.995392, -2.426527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.409485, 17.615721, -2.777369>,  <22.801340, 17.261093, -2.928242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.409485, 17.615721, -2.777369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.473866, 17.234360, -2.675294>,  <23.512495, 17.005543, -2.614049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.473866, 17.234360, -2.675294>,  <23.409485, 17.615721, -2.777369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473866, 17.234360, -2.675294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740978, -0.054066, -0.669349,
		0.651955, 0.296822, 0.697747,
		0.160954, -0.953401, 0.255187,
		23.522152, 16.948339, -2.598738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.109844, 17.616524, -2.567953>,  <23.409485, 17.615721, -2.777369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.109844, 17.616524, -2.567953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.931969, 17.288158, -2.711257>,  <23.825243, 17.091139, -2.797239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.931969, 17.288158, -2.711257>,  <24.109844, 17.616524, -2.567953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.931969, 17.288158, -2.711257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832731, -0.231615, -0.502906,
		0.329865, -0.521970, 0.786598,
		-0.444689, -0.820915, -0.358259,
		23.798561, 17.041883, -2.818735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560566, 17.103834, -2.591132>,  <24.109844, 17.616524, -2.567953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560566, 17.103834, -2.591132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296192, 16.983009, -2.865919>,  <24.137568, 16.910515, -3.030791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296192, 16.983009, -2.865919>,  <24.560566, 17.103834, -2.591132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296192, 16.983009, -2.865919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749984, -0.297900, -0.590576,
		-0.026258, -0.905547, 0.423433,
		-0.660935, -0.302060, -0.686968,
		24.097912, 16.892391, -3.072009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.352840, 17.008783, -1.895421>,  <24.560566, 17.103834, -2.591132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.352840, 17.008783, -1.895421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183620, 16.658768, -1.989516>,  <24.082088, 16.448759, -2.045973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183620, 16.658768, -1.989516>,  <24.352840, 17.008783, -1.895421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183620, 16.658768, -1.989516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313927, -0.101992, 0.943953,
		-0.849987, 0.473188, -0.231550,
		-0.423051, -0.875038, -0.235238,
		24.056705, 16.396255, -2.060087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.555407, 17.035383, -1.859007>,  <24.352840, 17.008783, -1.895421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.555407, 17.035383, -1.859007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.774891, 16.714745, -1.764047>,  <23.906582, 16.522362, -1.707071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.774891, 16.714745, -1.764047>,  <23.555407, 17.035383, -1.859007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.774891, 16.714745, -1.764047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356868, 0.032209, 0.933599,
		-0.756016, -0.596997, -0.268391,
		0.548712, -0.801597, 0.237400,
		23.939505, 16.474266, -1.692827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.144054, 16.591080, -1.346277>,  <23.555407, 17.035383, -1.859007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.144054, 16.591080, -1.346277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.538658, 16.552372, -1.293460>,  <23.775421, 16.529146, -1.261771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.538658, 16.552372, -1.293460>,  <23.144054, 16.591080, -1.346277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.538658, 16.552372, -1.293460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105297, 0.242495, 0.964422,
		-0.125347, -0.965314, 0.229034,
		0.986509, -0.096771, 0.132041,
		23.834612, 16.523340, -1.253848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.245068, 16.147896, -0.781375>,  <23.144054, 16.591080, -1.346277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.245068, 16.147896, -0.781375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.523113, 16.432014, -0.825731>,  <23.689939, 16.602486, -0.852344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.523113, 16.432014, -0.825731>,  <23.245068, 16.147896, -0.781375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.523113, 16.432014, -0.825731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189043, 0.329419, 0.925065,
		0.693601, -0.622061, 0.363260,
		0.695112, 0.710298, -0.110889,
		23.731647, 16.645103, -0.858997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.584644, 16.181129, -0.072123>,  <23.245068, 16.147896, -0.781375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.584644, 16.181129, -0.072123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.674664, 16.511093, -0.279536>,  <23.728674, 16.709072, -0.403984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.674664, 16.511093, -0.279536>,  <23.584644, 16.181129, -0.072123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.674664, 16.511093, -0.279536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017383, 0.535499, 0.844357,
		0.974193, -0.181006, 0.134852,
		0.225047, 0.824911, -0.518533,
		23.742178, 16.758566, -0.435096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360527, 16.495731, 0.028028>,  <23.584644, 16.181129, -0.072123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360527, 16.495731, 0.028028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060715, 16.744923, -0.061504>,  <23.880827, 16.894438, -0.115222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060715, 16.744923, -0.061504>,  <24.360527, 16.495731, 0.028028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.060715, 16.744923, -0.061504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151319, 0.490415, 0.858251,
		0.644442, 0.609417, -0.461850,
		-0.749531, 0.622980, -0.223828,
		23.835855, 16.931816, -0.128652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.624912, 17.087725, 0.368208>,  <24.360527, 16.495731, 0.028028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.624912, 17.087725, 0.368208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227802, 17.129433, 0.344471>,  <23.989536, 17.154457, 0.330229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227802, 17.129433, 0.344471>,  <24.624912, 17.087725, 0.368208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227802, 17.129433, 0.344471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014955, 0.383213, 0.923539,
		0.119040, 0.917756, -0.378886,
		-0.992777, 0.104272, -0.059343,
		23.929970, 17.160715, 0.326668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313648, 17.811647, 0.578495>,  <24.624912, 17.087725, 0.368208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.313648, 17.811647, 0.578495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.073128, 17.498756, 0.643677>,  <23.928816, 17.311022, 0.682787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.073128, 17.498756, 0.643677>,  <24.313648, 17.811647, 0.578495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.073128, 17.498756, 0.643677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028219, 0.224608, 0.974040,
		-0.798522, 0.581095, -0.157131,
		-0.601303, -0.782227, 0.162957,
		23.892736, 17.264088, 0.692565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.676495, 18.026825, 1.004270>,  <24.313648, 17.811647, 0.578495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.676495, 18.026825, 1.004270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.752151, 17.642014, 1.082989>,  <23.797544, 17.411127, 1.130221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.752151, 17.642014, 1.082989>,  <23.676495, 18.026825, 1.004270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.752151, 17.642014, 1.082989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008341, 0.198835, 0.979998,
		-0.981914, -0.186999, 0.029583,
		0.189141, -0.962027, 0.196799,
		23.808893, 17.353405, 1.142029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.095566, 17.539133, 1.419567>,  <23.676495, 18.026825, 1.004270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.095566, 17.539133, 1.419567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.487724, 17.502464, 1.489336>,  <23.723019, 17.480463, 1.531198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.487724, 17.502464, 1.489336>,  <23.095566, 17.539133, 1.419567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.487724, 17.502464, 1.489336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157940, 0.163705, 0.973784,
		-0.117825, -0.982240, 0.146017,
		0.980394, -0.091674, 0.174423,
		23.781843, 17.474962, 1.541663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.236477, 16.966705, 1.853647>,  <23.095566, 17.539133, 1.419567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.236477, 16.966705, 1.853647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.513630, 17.251228, 1.900891>,  <23.679922, 17.421942, 1.929237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.513630, 17.251228, 1.900891>,  <23.236477, 16.966705, 1.853647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.513630, 17.251228, 1.900891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224708, 0.057369, 0.972736,
		0.685141, -0.700533, 0.199587,
		0.692884, 0.711310, 0.118109,
		23.721495, 17.464621, 1.936324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.699228, 16.816881, 2.542984>,  <23.236477, 16.966705, 1.853647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.699228, 16.816881, 2.542984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.653172, 17.204159, 2.454133>,  <23.625538, 17.436525, 2.400822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.653172, 17.204159, 2.454133>,  <23.699228, 16.816881, 2.542984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.653172, 17.204159, 2.454133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257289, 0.186917, 0.948085,
		0.959450, 0.166316, 0.227584,
		-0.115143, 0.968195, -0.222129,
		23.618629, 17.494617, 2.387494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960793, 17.225500, 3.124230>,  <23.699228, 16.816881, 2.542984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960793, 17.225500, 3.124230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710327, 17.447277, 2.904954>,  <23.560047, 17.580343, 2.773389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710327, 17.447277, 2.904954>,  <23.960793, 17.225500, 3.124230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.710327, 17.447277, 2.904954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536716, 0.203480, 0.818860,
		0.565557, 0.806962, 0.170167,
		-0.626164, 0.554444, -0.548189,
		23.522478, 17.613609, 2.740498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855974, 17.849468, 3.478770>,  <23.960793, 17.225500, 3.124230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855974, 17.849468, 3.478770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531246, 17.794487, 3.251770>,  <23.336409, 17.761497, 3.115570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531246, 17.794487, 3.251770>,  <23.855974, 17.849468, 3.478770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.531246, 17.794487, 3.251770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582724, 0.252568, 0.772426,
		0.037159, 0.957766, -0.285137,
		-0.811820, -0.137454, -0.567499,
		23.287701, 17.753250, 3.081520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.457878, 18.474537, 3.640491>,  <23.855974, 17.849468, 3.478770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.457878, 18.474537, 3.640491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.261253, 18.164379, 3.481932>,  <23.143278, 17.978285, 3.386797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.261253, 18.164379, 3.481932>,  <23.457878, 18.474537, 3.640491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.261253, 18.164379, 3.481932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771409, 0.176491, 0.611375,
		-0.404096, 0.606313, -0.684903,
		-0.491563, -0.775394, -0.396396,
		23.113785, 17.931761, 3.363014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.780005, 18.657667, 3.644601>,  <23.457878, 18.474537, 3.640491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.780005, 18.657667, 3.644601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.748051, 18.261753, 3.597362>,  <22.728878, 18.024204, 3.569019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.748051, 18.261753, 3.597362>,  <22.780005, 18.657667, 3.644601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.748051, 18.261753, 3.597362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858859, 0.008210, 0.512147,
		-0.505945, 0.142341, -0.850740,
		-0.079884, -0.989784, -0.118097,
		22.724085, 17.964817, 3.561933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.160503, 18.500280, 3.362449>,  <22.780005, 18.657667, 3.644601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.160503, 18.500280, 3.362449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.205624, 18.227913, 3.651897>,  <22.232697, 18.064493, 3.825567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.205624, 18.227913, 3.651897>,  <22.160503, 18.500280, 3.362449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.205624, 18.227913, 3.651897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815752, 0.352334, 0.458703,
		-0.567296, -0.642038, -0.515716,
		0.112800, -0.680917, 0.723622,
		22.239464, 18.023638, 3.868984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.538105, 18.117413, 3.354773>,  <22.160503, 18.500280, 3.362449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.538105, 18.117413, 3.354773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.734718, 18.166744, 3.699606>,  <21.852686, 18.196342, 3.906506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.734718, 18.166744, 3.699606>,  <21.538105, 18.117413, 3.354773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.734718, 18.166744, 3.699606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816901, 0.408331, 0.407356,
		-0.301776, -0.904464, 0.301456,
		0.491532, 0.123329, 0.862082,
		21.882177, 18.203743, 3.958231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121799, 17.850809, 3.768298>,  <21.538105, 18.117413, 3.354773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121799, 17.850809, 3.768298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347980, 18.107765, 3.975217>,  <21.483690, 18.261938, 4.099369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347980, 18.107765, 3.975217>,  <21.121799, 17.850809, 3.768298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347980, 18.107765, 3.975217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818905, 0.362555, 0.444914,
		0.098258, -0.675197, 0.731064,
		0.565455, 0.642388, 0.517299,
		21.517616, 18.300482, 4.130406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996412, 17.740858, 4.465229>,  <21.121799, 17.850809, 3.768298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996412, 17.740858, 4.465229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.096310, 18.121792, 4.395158>,  <21.156248, 18.350351, 4.353115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.096310, 18.121792, 4.395158>,  <20.996412, 17.740858, 4.465229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.096310, 18.121792, 4.395158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797656, 0.304898, 0.520367,
		0.548975, 0.009775, 0.835782,
		0.249742, 0.952335, -0.175179,
		21.171232, 18.407492, 4.342604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.840149, 18.161963, 5.058649>,  <20.996412, 17.740858, 4.465229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.840149, 18.161963, 5.058649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.832542, 18.428825, 4.760779>,  <20.827978, 18.588943, 4.582058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.832542, 18.428825, 4.760779>,  <20.840149, 18.161963, 5.058649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.832542, 18.428825, 4.760779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791703, 0.444822, 0.418737,
		0.610610, 0.597522, 0.519733,
		-0.019016, 0.667159, -0.744672,
		20.826838, 18.628973, 4.537377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.767082, 18.835327, 5.337132>,  <20.840149, 18.161963, 5.058649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.767082, 18.835327, 5.337132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.626225, 18.872391, 4.964593>,  <20.541710, 18.894629, 4.741070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.626225, 18.872391, 4.964593>,  <20.767082, 18.835327, 5.337132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626225, 18.872391, 4.964593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776473, 0.526672, 0.345985,
		0.522573, 0.845004, -0.113518,
		-0.352146, 0.092659, -0.931347,
		20.520580, 18.900188, 4.685189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295479, 18.573545, 5.774466>,  <20.767082, 18.835327, 5.337132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295479, 18.573545, 5.774466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.917805, 18.676830, 5.856286>,  <20.691200, 18.738800, 5.905378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.917805, 18.676830, 5.856286>,  <21.295479, 18.573545, 5.774466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.917805, 18.676830, 5.856286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154300, -0.201954, 0.967164,
		0.291042, 0.944744, 0.150840,
		-0.944185, 0.258211, 0.204551,
		20.634548, 18.754293, 5.917651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224995, 18.986151, 6.345173>,  <21.295479, 18.573545, 5.774466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224995, 18.986151, 6.345173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883389, 18.778439, 6.332485>,  <20.678425, 18.653811, 6.324872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883389, 18.778439, 6.332485>,  <21.224995, 18.986151, 6.345173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883389, 18.778439, 6.332485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208766, -0.397908, 0.893357,
		-0.476523, 0.756319, 0.448228,
		-0.854015, -0.519280, -0.031719,
		20.627184, 18.622654, 6.322969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960033, 19.097372, 6.967596>,  <21.224995, 18.986151, 6.345173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960033, 19.097372, 6.967596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.825871, 18.759903, 6.799919>,  <20.745373, 18.557423, 6.699313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.825871, 18.759903, 6.799919>,  <20.960033, 19.097372, 6.967596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825871, 18.759903, 6.799919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296120, -0.516828, 0.803245,
		-0.894325, 0.145282, 0.423175,
		-0.335405, -0.843672, -0.419191,
		20.725248, 18.506802, 6.674162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117319, 19.755053, 6.504616>,  <20.960033, 19.097372, 6.967596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117319, 19.755053, 6.504616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.804340, 19.605389, 6.703726>,  <20.616552, 19.515591, 6.823192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.804340, 19.605389, 6.703726>,  <21.117319, 19.755053, 6.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.804340, 19.605389, 6.703726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405536, 0.300442, 0.863293,
		-0.472564, 0.877347, -0.083344,
		-0.782448, -0.374162, 0.497774,
		20.569607, 19.493139, 6.853058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.886208, 20.338966, 6.970402>,  <21.117319, 19.755053, 6.504616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.886208, 20.338966, 6.970402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783321, 19.982876, 7.120780>,  <20.721590, 19.769220, 7.211007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783321, 19.982876, 7.120780>,  <20.886208, 20.338966, 6.970402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783321, 19.982876, 7.120780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471284, 0.224074, 0.853043,
		-0.843642, 0.396592, 0.361916,
		-0.257214, -0.890228, 0.375945,
		20.706158, 19.715807, 7.233563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.669474, 20.254030, 7.682086>,  <20.886208, 20.338966, 6.970402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.669474, 20.254030, 7.682086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872505, 19.918579, 7.603027>,  <20.994324, 19.717308, 7.555593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872505, 19.918579, 7.603027>,  <20.669474, 20.254030, 7.682086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872505, 19.918579, 7.603027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399548, 0.025864, 0.916347,
		-0.763364, -0.544088, 0.348201,
		0.507579, -0.838630, -0.197646,
		21.024778, 19.666990, 7.543734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453470, 19.656429, 8.174042>,  <20.669474, 20.254030, 7.682086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453470, 19.656429, 8.174042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827374, 19.625294, 8.035381>,  <21.051716, 19.606611, 7.952185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827374, 19.625294, 8.035381>,  <20.453470, 19.656429, 8.174042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827374, 19.625294, 8.035381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346221, -0.019388, 0.937953,
		-0.079734, -0.996777, 0.008828,
		0.934759, -0.077843, -0.346651,
		21.107801, 19.601942, 7.931386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.799126, 18.915495, 8.350581>,  <20.453470, 19.656429, 8.174042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.799126, 18.915495, 8.350581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083408, 19.196827, 8.356528>,  <21.253979, 19.365625, 8.360097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083408, 19.196827, 8.356528>,  <20.799126, 18.915495, 8.350581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083408, 19.196827, 8.356528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173260, -0.195485, 0.965281,
		0.681817, -0.683457, -0.260792,
		0.710708, 0.703330, 0.014869,
		21.296621, 19.407825, 8.360989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.432169, 18.621525, 8.582797>,  <20.799126, 18.915495, 8.350581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.432169, 18.621525, 8.582797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.384212, 18.997868, 8.709549>,  <21.355438, 19.223673, 8.785600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.384212, 18.997868, 8.709549>,  <21.432169, 18.621525, 8.582797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.384212, 18.997868, 8.709549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402454, -0.245720, 0.881846,
		0.907555, 0.233255, -0.349192,
		-0.119892, 0.940858, 0.316879,
		21.348246, 19.280125, 8.804613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.076229, 18.759211, 8.893198>,  <21.432169, 18.621525, 8.582797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.076229, 18.759211, 8.893198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792843, 18.979488, 9.069746>,  <21.622810, 19.111654, 9.175675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792843, 18.979488, 9.069746>,  <22.076229, 18.759211, 8.893198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792843, 18.979488, 9.069746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195475, -0.447811, 0.872499,
		0.678132, 0.704415, 0.209613,
		-0.708468, 0.550695, 0.441371,
		21.580303, 19.144697, 9.202157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.371469, 18.969263, 9.606698>,  <22.076229, 18.759211, 8.893198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.371469, 18.969263, 9.606698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972515, 18.997604, 9.612360>,  <21.733143, 19.014608, 9.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972515, 18.997604, 9.612360>,  <22.371469, 18.969263, 9.606698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.972515, 18.997604, 9.612360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000556, -0.203439, 0.979088,
		0.072252, 0.976521, 0.202947,
		-0.997386, 0.070854, 0.014156,
		21.673300, 19.018860, 9.616607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.397478, 19.394508, 10.207088>,  <22.371469, 18.969263, 9.606698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.397478, 19.394508, 10.207088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021626, 19.283665, 10.126784>,  <21.796114, 19.217159, 10.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021626, 19.283665, 10.126784>,  <22.397478, 19.394508, 10.207088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021626, 19.283665, 10.126784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159851, -0.163282, 0.973543,
		-0.302556, 0.946864, 0.109129,
		-0.939632, -0.277107, -0.200759,
		21.739737, 19.200533, 10.066557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.951563, 19.875210, 10.511387>,  <22.397478, 19.394508, 10.207088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.951563, 19.875210, 10.511387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781952, 19.514763, 10.475196>,  <21.680185, 19.298494, 10.453481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781952, 19.514763, 10.475196>,  <21.951563, 19.875210, 10.511387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781952, 19.514763, 10.475196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049382, -0.122761, 0.991207,
		-0.904302, 0.415832, 0.096553,
		-0.424028, -0.901118, -0.090478,
		21.654743, 19.244427, 10.448052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.330835, 19.963047, 10.871567>,  <21.951563, 19.875210, 10.511387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.330835, 19.963047, 10.871567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.427979, 19.575325, 10.856259>,  <21.486263, 19.342691, 10.847075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.427979, 19.575325, 10.856259>,  <21.330835, 19.963047, 10.871567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.427979, 19.575325, 10.856259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008791, -0.041648, 0.999094,
		-0.970022, -0.242300, -0.018636,
		0.242857, -0.969307, -0.038270,
		21.500835, 19.284533, 10.844778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972528, 19.659576, 11.328750>,  <21.330835, 19.963047, 10.871567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972528, 19.659576, 11.328750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.244820, 19.369831, 11.285101>,  <21.408194, 19.195984, 11.258912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.244820, 19.369831, 11.285101>,  <20.972528, 19.659576, 11.328750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.244820, 19.369831, 11.285101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125794, -0.031158, 0.991567,
		-0.721655, -0.688714, 0.069910,
		0.680728, -0.724363, -0.109121,
		21.449038, 19.152521, 11.252364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726078, 19.137028, 11.747575>,  <20.972528, 19.659576, 11.328750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726078, 19.137028, 11.747575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108093, 19.030598, 11.695258>,  <21.337303, 18.966740, 11.663868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108093, 19.030598, 11.695258>,  <20.726078, 19.137028, 11.747575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108093, 19.030598, 11.695258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057896, -0.265280, 0.962432,
		-0.290781, -0.926730, -0.237947,
		0.955036, -0.266081, -0.130793,
		21.394604, 18.950775, 11.656020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.743099, 18.527489, 12.073159>,  <20.726078, 19.137028, 11.747575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.743099, 18.527489, 12.073159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114197, 18.670990, 12.032009>,  <21.336855, 18.757092, 12.007318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114197, 18.670990, 12.032009>,  <20.743099, 18.527489, 12.073159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114197, 18.670990, 12.032009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201097, -0.248316, 0.947575,
		0.314400, -0.899797, -0.302519,
		0.927746, 0.358753, -0.102876,
		21.392521, 18.778616, 12.001146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.256180, 18.063604, 12.372170>,  <20.743099, 18.527489, 12.073159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.256180, 18.063604, 12.372170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441402, 18.418098, 12.377397>,  <21.552536, 18.630795, 12.380532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441402, 18.418098, 12.377397>,  <21.256180, 18.063604, 12.372170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.441402, 18.418098, 12.377397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253162, -0.146374, 0.956286,
		0.849406, -0.439505, -0.292140,
		0.463054, 0.886234, 0.013065,
		21.580318, 18.683969, 12.381316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879023, 17.931969, 12.710066>,  <21.256180, 18.063604, 12.372170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879023, 17.931969, 12.710066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.807823, 18.325470, 12.719419>,  <21.765104, 18.561571, 12.725030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.807823, 18.325470, 12.719419>,  <21.879023, 17.931969, 12.710066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.807823, 18.325470, 12.719419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218375, 0.016322, 0.975728,
		0.959494, 0.178784, -0.217733,
		-0.177999, 0.983753, 0.023381,
		21.754423, 18.620596, 12.726433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.356104, 18.183859, 13.211646>,  <21.879023, 17.931969, 12.710066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.356104, 18.183859, 13.211646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.098015, 18.487526, 13.177341>,  <21.943161, 18.669725, 13.156758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.098015, 18.487526, 13.177341>,  <22.356104, 18.183859, 13.211646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.098015, 18.487526, 13.177341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028101, 0.135761, 0.990343,
		0.763479, 0.636581, -0.108929,
		-0.645222, 0.759167, -0.085762,
		21.904448, 18.715277, 13.151613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638391, 18.701042, 13.710934>,  <22.356104, 18.183859, 13.211646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638391, 18.701042, 13.710934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.257462, 18.793842, 13.631689>,  <22.028904, 18.849524, 13.584142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.257462, 18.793842, 13.631689>,  <22.638391, 18.701042, 13.710934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.257462, 18.793842, 13.631689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158279, 0.179418, 0.970957,
		0.260809, 0.956025, -0.134144,
		-0.952327, 0.232002, -0.198112,
		21.971764, 18.863443, 13.572255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.514462, 19.268135, 14.182787>,  <22.638391, 18.701042, 13.710934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.514462, 19.268135, 14.182787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.145771, 19.147621, 14.085096>,  <21.924557, 19.075314, 14.026482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.145771, 19.147621, 14.085096>,  <22.514462, 19.268135, 14.182787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.145771, 19.147621, 14.085096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254929, -0.003918, 0.966952,
		-0.292284, 0.953526, -0.073194,
		-0.921727, -0.301284, -0.244227,
		21.869253, 19.057236, 14.011828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.150711, 19.814133, 14.459815>,  <22.514462, 19.268135, 14.182787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.150711, 19.814133, 14.459815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.879860, 19.527973, 14.390875>,  <21.717350, 19.356277, 14.349511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.879860, 19.527973, 14.390875>,  <22.150711, 19.814133, 14.459815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.879860, 19.527973, 14.390875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229833, -0.016893, 0.973084,
		-0.699054, 0.698513, -0.152983,
		-0.677127, -0.715398, -0.172350,
		21.676722, 19.313354, 14.339170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.552998, 20.030279, 14.805009>,  <22.150711, 19.814133, 14.459815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.552998, 20.030279, 14.805009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.547554, 19.634300, 14.748693>,  <21.544287, 19.396713, 14.714904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.547554, 19.634300, 14.748693>,  <21.552998, 20.030279, 14.805009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.547554, 19.634300, 14.748693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117145, -0.138254, 0.983444,
		-0.993022, 0.029877, -0.114085,
		-0.013610, -0.989946, -0.140790,
		21.543470, 19.337317, 14.706456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894848, 19.808485, 15.046519>,  <21.552998, 20.030279, 14.805009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894848, 19.808485, 15.046519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.118553, 19.479027, 15.084110>,  <21.252775, 19.281351, 15.106665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.118553, 19.479027, 15.084110>,  <20.894848, 19.808485, 15.046519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.118553, 19.479027, 15.084110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282488, -0.082767, 0.955694,
		-0.779376, -0.561031, -0.278958,
		0.559262, -0.823647, 0.093978,
		21.286331, 19.231934, 15.112304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501852, 19.364216, 15.428101>,  <20.894848, 19.808485, 15.046519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501852, 19.364216, 15.428101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849514, 19.167881, 15.452261>,  <21.058111, 19.050081, 15.466758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849514, 19.167881, 15.452261>,  <20.501852, 19.364216, 15.428101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849514, 19.167881, 15.452261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188770, -0.216392, 0.957883,
		-0.457094, -0.843951, -0.280733,
		0.869155, -0.490837, 0.060401,
		21.110260, 19.020630, 15.470382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310884, 18.999617, 15.934329>,  <20.501852, 19.364216, 15.428101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310884, 18.999617, 15.934329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705498, 18.934319, 15.938471>,  <20.942265, 18.895140, 15.940956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705498, 18.934319, 15.938471>,  <20.310884, 18.999617, 15.934329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705498, 18.934319, 15.938471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075114, -0.395885, 0.915223,
		-0.145304, -0.903674, -0.402815,
		0.986532, -0.163243, 0.010354,
		21.001457, 18.885345, 15.941577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.435934, 18.295984, 16.187622>,  <20.310884, 18.999617, 15.934329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.435934, 18.295984, 16.187622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766148, 18.508080, 16.264917>,  <20.964275, 18.635338, 16.311295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766148, 18.508080, 16.264917>,  <20.435934, 18.295984, 16.187622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766148, 18.508080, 16.264917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003756, -0.337240, 0.941411,
		0.564342, -0.777892, -0.276411,
		0.825533, 0.530240, 0.193240,
		21.013807, 18.667150, 16.322889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.855536, 17.930595, 16.700729>,  <20.435934, 18.295984, 16.187622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.855536, 17.930595, 16.700729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016781, 18.296009, 16.722456>,  <21.113529, 18.515257, 16.735493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016781, 18.296009, 16.722456>,  <20.855536, 17.930595, 16.700729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016781, 18.296009, 16.722456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020657, -0.068423, 0.997443,
		0.914916, -0.400962, -0.046453,
		0.403115, 0.913536, 0.054318,
		21.137716, 18.570070, 16.738752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.349617, 17.837639, 17.260391>,  <20.855536, 17.930595, 16.700729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.349617, 17.837639, 17.260391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.277649, 18.228958, 17.219275>,  <21.234468, 18.463749, 17.194605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.277649, 18.228958, 17.219275>,  <21.349617, 17.837639, 17.260391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.277649, 18.228958, 17.219275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054493, 0.094426, 0.994039,
		0.982171, 0.184447, 0.036322,
		-0.179918, 0.978296, -0.102793,
		21.223673, 18.522448, 17.188437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.831911, 18.161356, 17.645344>,  <21.349617, 17.837639, 17.260391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.831911, 18.161356, 17.645344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.531555, 18.423893, 17.616009>,  <21.351341, 18.581415, 17.598408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.531555, 18.423893, 17.616009>,  <21.831911, 18.161356, 17.645344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.531555, 18.423893, 17.616009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024843, 0.139040, 0.989975,
		0.659957, 0.741542, -0.120710,
		-0.750892, 0.656340, -0.073338,
		21.306288, 18.620794, 17.594007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.076958, 18.705446, 18.009857>,  <21.831911, 18.161356, 17.645344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.076958, 18.705446, 18.009857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686729, 18.774246, 17.955191>,  <21.452593, 18.815527, 17.922390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686729, 18.774246, 17.955191>,  <22.076958, 18.705446, 18.009857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686729, 18.774246, 17.955191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059547, 0.391773, 0.918133,
		0.211462, 0.903842, -0.371960,
		-0.975571, 0.172001, -0.136666,
		21.394058, 18.825846, 17.914190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.886324, 19.444160, 18.223442>,  <22.076958, 18.705446, 18.009857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.886324, 19.444160, 18.223442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.557213, 19.223305, 18.277374>,  <21.359747, 19.090792, 18.309734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.557213, 19.223305, 18.277374>,  <21.886324, 19.444160, 18.223442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.557213, 19.223305, 18.277374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147716, 0.436809, 0.887343,
		-0.548832, 0.710170, -0.440956,
		-0.822778, -0.552139, 0.134831,
		21.310379, 19.057663, 18.317823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.494303, 19.823309, 18.732168>,  <21.886324, 19.444160, 18.223442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.494303, 19.823309, 18.732168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.284775, 19.482578, 18.733221>,  <21.159058, 19.278141, 18.733852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.284775, 19.482578, 18.733221>,  <21.494303, 19.823309, 18.732168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.284775, 19.482578, 18.733221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057254, 0.038291, 0.997625,
		-0.849903, 0.522425, -0.068828,
		-0.523820, -0.851825, 0.002633,
		21.127628, 19.227032, 18.734011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062670, 19.912193, 19.280756>,  <21.494303, 19.823309, 18.732168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062670, 19.912193, 19.280756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.087650, 19.515274, 19.237961>,  <21.102638, 19.277122, 19.212284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.087650, 19.515274, 19.237961>,  <21.062670, 19.912193, 19.280756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.087650, 19.515274, 19.237961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103787, -0.113073, 0.988151,
		-0.992637, -0.050607, -0.110049,
		0.062450, -0.992297, -0.106988,
		21.106386, 19.217585, 19.205864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.575951, 19.688549, 19.671600>,  <21.062670, 19.912193, 19.280756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.575951, 19.688549, 19.671600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.807873, 19.363708, 19.645321>,  <20.947025, 19.168804, 19.629553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.807873, 19.363708, 19.645321>,  <20.575951, 19.688549, 19.671600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.807873, 19.363708, 19.645321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018047, -0.067814, 0.997535,
		-0.814557, -0.579559, -0.024663,
		0.579803, -0.812104, -0.065698,
		20.981813, 19.120077, 19.625612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.327517, 19.281860, 20.186989>,  <20.575951, 19.688549, 19.671600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.327517, 19.281860, 20.186989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693600, 19.133186, 20.124704>,  <20.913250, 19.043982, 20.087334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693600, 19.133186, 20.124704>,  <20.327517, 19.281860, 20.186989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.693600, 19.133186, 20.124704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074429, -0.223842, 0.971779,
		-0.396051, -0.900969, -0.177198,
		0.915207, -0.371685, -0.155711,
		20.968163, 19.021681, 20.077991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.366556, 18.630461, 20.576702>,  <20.327517, 19.281860, 20.186989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.366556, 18.630461, 20.576702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.745125, 18.739937, 20.508141>,  <20.972265, 18.805622, 20.467005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.745125, 18.739937, 20.508141>,  <20.366556, 18.630461, 20.576702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.745125, 18.739937, 20.508141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209799, -0.117605, 0.970646,
		0.245501, -0.954600, -0.168725,
		0.946421, 0.273693, -0.171402,
		21.029051, 18.822044, 20.456720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.758728, 18.138838, 20.843735>,  <20.366556, 18.630461, 20.576702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.758728, 18.138838, 20.843735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005058, 18.453754, 20.831539>,  <21.152857, 18.642704, 20.824223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005058, 18.453754, 20.831539>,  <20.758728, 18.138838, 20.843735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.005058, 18.453754, 20.831539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109548, -0.047238, 0.992858,
		0.780230, -0.614767, -0.115337,
		0.615825, 0.787293, -0.030490,
		21.189806, 18.689941, 20.822392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.129843, 17.979490, 21.400497>,  <20.758728, 18.138838, 20.843735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.129843, 17.979490, 21.400497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.186893, 18.369591, 21.332914>,  <21.221123, 18.603651, 21.292364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.186893, 18.369591, 21.332914>,  <21.129843, 17.979490, 21.400497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.186893, 18.369591, 21.332914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137710, 0.149488, 0.979127,
		0.980150, -0.162915, -0.112981,
		0.142626, 0.975250, -0.168955,
		21.229681, 18.662167, 21.282228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.721243, 18.287689, 21.825462>,  <21.129843, 17.979490, 21.400497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.721243, 18.287689, 21.825462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.484982, 18.600243, 21.744894>,  <21.343225, 18.787775, 21.696552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.484982, 18.600243, 21.744894>,  <21.721243, 18.287689, 21.825462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.484982, 18.600243, 21.744894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171775, 0.122141, 0.977535,
		0.788431, 0.611983, 0.062079,
		-0.590653, 0.781382, -0.201423,
		21.307785, 18.834658, 21.684467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.850519, 18.814568, 22.333307>,  <21.721243, 18.287689, 21.825462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.850519, 18.814568, 22.333307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503723, 18.944633, 22.182261>,  <21.295645, 19.022673, 22.091633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503723, 18.944633, 22.182261>,  <21.850519, 18.814568, 22.333307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503723, 18.944633, 22.182261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325716, 0.203725, 0.923258,
		0.377139, 0.923453, -0.070717,
		-0.866992, 0.325163, -0.377617,
		21.243626, 19.042183, 22.068975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637671, 19.498756, 22.662592>,  <21.850519, 18.814568, 22.333307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637671, 19.498756, 22.662592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.291523, 19.373234, 22.506304>,  <21.083834, 19.297920, 22.412531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.291523, 19.373234, 22.506304>,  <21.637671, 19.498756, 22.662592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291523, 19.373234, 22.506304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490336, 0.369233, 0.789454,
		-0.103468, 0.874754, -0.473392,
		-0.865370, -0.313804, -0.390719,
		21.031912, 19.279093, 22.389088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144768, 20.108646, 22.620232>,  <21.637671, 19.498756, 22.662592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144768, 20.108646, 22.620232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956680, 19.757595, 22.657459>,  <20.843828, 19.546965, 22.679796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956680, 19.757595, 22.657459>,  <21.144768, 20.108646, 22.620232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956680, 19.757595, 22.657459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527973, 0.364234, 0.767188,
		-0.707206, 0.311608, -0.634634,
		-0.470217, -0.877630, 0.093068,
		20.815615, 19.494307, 22.685379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494667, 20.297405, 22.691557>,  <21.144768, 20.108646, 22.620232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494667, 20.297405, 22.691557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494953, 19.920288, 22.824911>,  <20.495125, 19.694017, 22.904922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494953, 19.920288, 22.824911>,  <20.494667, 20.297405, 22.691557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494953, 19.920288, 22.824911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579989, 0.271192, 0.768159,
		-0.814624, -0.193909, -0.546614,
		0.000715, -0.942791, 0.333384,
		20.495169, 19.637451, 22.924927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881664, 20.039270, 22.746424>,  <20.494667, 20.297405, 22.691557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.881664, 20.039270, 22.746424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.068497, 19.802193, 23.008888>,  <20.180595, 19.659946, 23.166367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.068497, 19.802193, 23.008888>,  <19.881664, 20.039270, 22.746424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.068497, 19.802193, 23.008888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365662, 0.546181, 0.753642,
		-0.805064, -0.591945, 0.038384,
		0.467079, -0.592695, 0.656163,
		20.208620, 19.624384, 23.205738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.411270, 20.055111, 23.199150>,  <19.881664, 20.039270, 22.746424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.411270, 20.055111, 23.199150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.721230, 19.883163, 23.384512>,  <19.907206, 19.779995, 23.495729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.721230, 19.883163, 23.384512>,  <19.411270, 20.055111, 23.199150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.721230, 19.883163, 23.384512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245176, 0.471327, 0.847195,
		-0.582598, -0.770106, 0.259837,
		0.774899, -0.429868, 0.463406,
		19.953699, 19.754204, 23.523533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094921, 19.739775, 23.738808>,  <19.411270, 20.055111, 23.199150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.094921, 19.739775, 23.738808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.473164, 19.786438, 23.860279>,  <19.700109, 19.814436, 23.933163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.473164, 19.786438, 23.860279>,  <19.094921, 19.739775, 23.738808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.473164, 19.786438, 23.860279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317382, 0.535727, 0.782474,
		-0.071409, -0.836294, 0.543611,
		0.945605, 0.116657, 0.303680,
		19.756845, 19.821436, 23.951384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984995, 19.576229, 24.430027>,  <19.094921, 19.739775, 23.738808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.984995, 19.576229, 24.430027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.321552, 19.790829, 24.404022>,  <19.523487, 19.919588, 24.388418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.321552, 19.790829, 24.404022>,  <18.984995, 19.576229, 24.430027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.321552, 19.790829, 24.404022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196418, 0.415659, 0.888058,
		0.503467, -0.734436, 0.455111,
		0.841392, 0.536500, -0.065014,
		19.573971, 19.951778, 24.384518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310934, 19.462929, 25.081244>,  <18.984995, 19.576229, 24.430027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310934, 19.462929, 25.081244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445103, 19.798199, 24.909218>,  <19.525604, 19.999361, 24.806002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445103, 19.798199, 24.909218>,  <19.310934, 19.462929, 25.081244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.445103, 19.798199, 24.909218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069667, 0.477332, 0.875957,
		0.939488, -0.263855, 0.218501,
		0.335423, 0.838173, -0.430066,
		19.545731, 20.049650, 24.780197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835367, 19.768278, 25.546055>,  <19.310934, 19.462929, 25.081244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835367, 19.768278, 25.546055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.670490, 20.042896, 25.306469>,  <19.571564, 20.207666, 25.162718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.670490, 20.042896, 25.306469>,  <19.835367, 19.768278, 25.546055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.670490, 20.042896, 25.306469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034335, 0.668647, 0.742786,
		0.910451, 0.285604, -0.299183,
		-0.412190, 0.686543, -0.598964,
		19.546833, 20.248859, 25.126780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.644527, 20.119032, 26.143099>,  <19.835367, 19.768278, 25.546055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.644527, 20.119032, 26.143099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.286369, 19.996464, 26.013874>,  <19.071474, 19.922922, 25.936338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.286369, 19.996464, 26.013874>,  <19.644527, 20.119032, 26.143099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286369, 19.996464, 26.013874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238282, 0.942663, -0.233684,
		0.376144, -0.132260, -0.917073,
		-0.895398, -0.306421, -0.323062,
		19.017750, 19.904537, 25.916956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.517525, 20.471704, 25.565136>,  <19.644527, 20.119032, 26.143099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.517525, 20.471704, 25.565136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158760, 20.369320, 25.709379>,  <18.943502, 20.307890, 25.795925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158760, 20.369320, 25.709379>,  <19.517525, 20.471704, 25.565136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.158760, 20.369320, 25.709379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337017, 0.923611, -0.182654,
		-0.286308, -0.285354, -0.914659,
		-0.896910, -0.255960, 0.360607,
		18.889687, 20.292532, 25.817562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.982744, 20.554382, 25.050489>,  <19.517525, 20.471704, 25.565136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.982744, 20.554382, 25.050489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869698, 20.605846, 25.430716>,  <18.801870, 20.636724, 25.658852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869698, 20.605846, 25.430716>,  <18.982744, 20.554382, 25.050489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869698, 20.605846, 25.430716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410242, 0.879551, -0.241020,
		-0.867082, -0.458078, -0.195791,
		-0.282614, 0.128663, 0.950565,
		18.784914, 20.644445, 25.715885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238085, 20.746460, 25.154850>,  <18.982744, 20.554382, 25.050489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.238085, 20.746460, 25.154850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398685, 20.852345, 25.505558>,  <18.495045, 20.915876, 25.715982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398685, 20.852345, 25.505558>,  <18.238085, 20.746460, 25.154850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.398685, 20.852345, 25.505558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407367, 0.909024, -0.087905,
		-0.820274, -0.321873, 0.472809,
		0.401501, 0.264713, 0.876769,
		18.519136, 20.931759, 25.768589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754324, 21.037254, 25.690649>,  <18.238085, 20.746460, 25.154850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754324, 21.037254, 25.690649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118137, 21.178619, 25.778143>,  <18.336426, 21.263439, 25.830639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118137, 21.178619, 25.778143>,  <17.754324, 21.037254, 25.690649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118137, 21.178619, 25.778143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297395, 0.921032, -0.251507,
		-0.290347, 0.163704, 0.942815,
		0.909535, 0.353413, 0.218735,
		18.390999, 21.284643, 25.843763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671852, 21.646503, 26.111116>,  <17.754324, 21.037254, 25.690649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671852, 21.646503, 26.111116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004749, 21.636292, 25.889585>,  <18.204487, 21.630163, 25.756668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004749, 21.636292, 25.889585>,  <17.671852, 21.646503, 26.111116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004749, 21.636292, 25.889585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262448, 0.861782, -0.434112,
		0.488361, 0.506636, 0.710509,
		0.832241, -0.025532, -0.553826,
		18.254421, 21.628632, 25.723438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879223, 22.306831, 26.194492>,  <17.671852, 21.646503, 26.111116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879223, 22.306831, 26.194492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032288, 22.140953, 25.864256>,  <18.124126, 22.041426, 25.666115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032288, 22.140953, 25.864256>,  <17.879223, 22.306831, 26.194492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032288, 22.140953, 25.864256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314905, 0.781547, -0.538534,
		0.868565, 0.466058, 0.168477,
		0.382660, -0.414697, -0.825589,
		18.147085, 22.016544, 25.616579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.377293, 22.751928, 25.690203>,  <17.879223, 22.306831, 26.194492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.377293, 22.751928, 25.690203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149841, 22.475761, 25.511324>,  <18.013371, 22.310061, 25.403997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.149841, 22.475761, 25.511324>,  <18.377293, 22.751928, 25.690203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.149841, 22.475761, 25.511324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415091, 0.710182, -0.568630,
		0.710182, -0.137714, -0.690417,
		0.568630, 0.690417, 0.447195,
		17.979252, 22.268637, 25.377165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567226, 22.274586, 25.149891>,  <18.377293, 22.751928, 25.690203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567226, 22.274586, 25.149891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960323, 22.212681, 25.190428>,  <19.196180, 22.175537, 25.214750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960323, 22.212681, 25.190428>,  <18.567226, 22.274586, 25.149891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960323, 22.212681, 25.190428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148230, 0.331021, -0.931908,
		0.110677, 0.930846, 0.348248,
		0.982740, -0.154762, 0.101343,
		19.255146, 22.166252, 25.220831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032017, 22.886303, 24.949381>,  <18.567226, 22.274586, 25.149891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032017, 22.886303, 24.949381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.194485, 22.528378, 24.875257>,  <19.291965, 22.313623, 24.830784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.194485, 22.528378, 24.875257>,  <19.032017, 22.886303, 24.949381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194485, 22.528378, 24.875257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034966, 0.217861, -0.975353,
		0.913129, 0.389678, 0.119776,
		0.406169, -0.894811, -0.185310,
		19.316336, 22.259933, 24.819664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653534, 22.964598, 24.586733>,  <19.032017, 22.886303, 24.949381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.653534, 22.964598, 24.586733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.531414, 22.598305, 24.482254>,  <19.458143, 22.378529, 24.419567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.531414, 22.598305, 24.482254>,  <19.653534, 22.964598, 24.586733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.531414, 22.598305, 24.482254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046269, 0.288232, -0.956442,
		0.951132, -0.279914, -0.130367,
		-0.305298, -0.915735, -0.261196,
		19.439825, 22.323584, 24.403894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.143171, 22.691799, 24.159227>,  <19.653534, 22.964598, 24.586733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.143171, 22.691799, 24.159227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800838, 22.508736, 24.062811>,  <19.595440, 22.398897, 24.004961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800838, 22.508736, 24.062811>,  <20.143171, 22.691799, 24.159227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800838, 22.508736, 24.062811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132950, 0.255717, -0.957566,
		0.499878, -0.851561, -0.158005,
		-0.855831, -0.457660, -0.241042,
		19.544088, 22.371437, 23.990498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.292166, 22.349195, 23.524538>,  <20.143171, 22.691799, 24.159227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.292166, 22.349195, 23.524538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.892357, 22.337910, 23.519512>,  <19.652472, 22.331139, 23.516497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.892357, 22.337910, 23.519512>,  <20.292166, 22.349195, 23.524538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892357, 22.337910, 23.519512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008600, 0.136418, -0.990614,
		0.029665, -0.990250, -0.136111,
		-0.999523, -0.028216, -0.012563,
		19.592501, 22.329445, 23.515743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.182041, 21.861523, 23.008116>,  <20.292166, 22.349195, 23.524538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.182041, 21.861523, 23.008116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840538, 22.069244, 23.023180>,  <19.635635, 22.193878, 23.032219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840538, 22.069244, 23.023180>,  <20.182041, 21.861523, 23.008116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840538, 22.069244, 23.023180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035885, 0.013468, -0.999265,
		-0.519431, -0.854483, 0.007137,
		-0.853759, 0.519305, 0.037659,
		19.584410, 22.225037, 23.034477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770758, 21.576588, 22.505117>,  <20.182041, 21.861523, 23.008116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.770758, 21.576588, 22.505117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.579910, 21.917061, 22.592609>,  <19.465401, 22.121346, 22.645105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.579910, 21.917061, 22.592609>,  <19.770758, 21.576588, 22.505117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.579910, 21.917061, 22.592609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147088, 0.168034, -0.974746,
		-0.866442, -0.497244, 0.045027,
		-0.477120, 0.851184, 0.218730,
		19.436773, 22.172417, 22.658228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097120, 21.594723, 22.205572>,  <19.770758, 21.576588, 22.505117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097120, 21.594723, 22.205572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.186878, 21.977726, 22.278040>,  <19.240732, 22.207529, 22.321520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.186878, 21.977726, 22.278040>,  <19.097120, 21.594723, 22.205572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.186878, 21.977726, 22.278040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280052, 0.241430, -0.929130,
		-0.933391, 0.157753, 0.322328,
		0.224393, 0.957510, 0.181169,
		19.254196, 22.264978, 22.332392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605799, 22.095415, 22.050392>,  <19.097120, 21.594723, 22.205572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605799, 22.095415, 22.050392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.941341, 22.311069, 22.020309>,  <19.142666, 22.440462, 22.002260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.941341, 22.311069, 22.020309>,  <18.605799, 22.095415, 22.050392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.941341, 22.311069, 22.020309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212902, 0.197788, -0.956845,
		-0.500994, 0.818665, 0.280698,
		0.838855, 0.539135, -0.075205,
		19.192997, 22.472811, 21.997747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.515066, 22.566946, 21.473621>,  <18.605799, 22.095415, 22.050392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.515066, 22.566946, 21.473621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.912769, 22.587471, 21.511189>,  <19.151390, 22.599785, 21.533730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.912769, 22.587471, 21.511189>,  <18.515066, 22.566946, 21.473621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912769, 22.587471, 21.511189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088376, 0.101323, -0.990921,
		-0.060361, 0.993529, 0.096206,
		0.994257, 0.051311, 0.093920,
		19.211046, 22.602863, 21.539364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715906, 23.029102, 20.871271>,  <18.515066, 22.566946, 21.473621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715906, 23.029102, 20.871271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071548, 22.889732, 20.989994>,  <19.284933, 22.806110, 21.061228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071548, 22.889732, 20.989994>,  <18.715906, 23.029102, 20.871271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071548, 22.889732, 20.989994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323407, 0.019354, -0.946062,
		0.323887, 0.937137, 0.129890,
		0.889104, -0.348424, 0.296808,
		19.338280, 22.785206, 21.079037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241409, 23.457687, 20.519478>,  <18.715906, 23.029102, 20.871271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.241409, 23.457687, 20.519478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.405563, 23.107700, 20.622255>,  <19.504055, 22.897709, 20.683922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.405563, 23.107700, 20.622255>,  <19.241409, 23.457687, 20.519478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.405563, 23.107700, 20.622255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252854, -0.161535, -0.953924,
		0.876156, 0.456445, 0.154946,
		0.410384, -0.874966, 0.256944,
		19.528679, 22.845211, 20.699339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847042, 23.516409, 20.226278>,  <19.241409, 23.457687, 20.519478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847042, 23.516409, 20.226278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.785915, 23.128525, 20.302502>,  <19.749239, 22.895794, 20.348236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.785915, 23.128525, 20.302502>,  <19.847042, 23.516409, 20.226278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785915, 23.128525, 20.302502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266210, -0.226087, -0.937025,
		0.951724, -0.092464, 0.292696,
		-0.152816, -0.969709, 0.190558,
		19.740070, 22.837612, 20.359669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350710, 23.010382, 19.980864>,  <19.847042, 23.516409, 20.226278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350710, 23.010382, 19.980864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009827, 22.801533, 19.994308>,  <19.805296, 22.676224, 20.002375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009827, 22.801533, 19.994308>,  <20.350710, 23.010382, 19.980864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009827, 22.801533, 19.994308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070986, -0.179033, -0.981279,
		0.518365, -0.833868, 0.189637,
		-0.852208, -0.522122, 0.033612,
		19.754164, 22.644896, 20.004393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.513887, 22.542665, 19.566296>,  <20.350710, 23.010382, 19.980864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.513887, 22.542665, 19.566296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.116646, 22.496628, 19.575199>,  <19.878300, 22.469006, 19.580542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.116646, 22.496628, 19.575199>,  <20.513887, 22.542665, 19.566296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.116646, 22.496628, 19.575199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005645, -0.236631, -0.971583,
		0.117090, -0.964759, 0.235649,
		-0.993105, -0.115093, 0.022261,
		19.818714, 22.462099, 19.581877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.311600, 21.809784, 19.365280>,  <20.513887, 22.542665, 19.566296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.311600, 21.809784, 19.365280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.972511, 22.010876, 19.297590>,  <19.769058, 22.131531, 19.256977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.972511, 22.010876, 19.297590>,  <20.311600, 21.809784, 19.365280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.972511, 22.010876, 19.297590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087695, -0.447456, -0.889996,
		-0.523148, -0.739626, 0.423404,
		-0.847718, 0.502730, -0.169224,
		19.718195, 22.161694, 19.246824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.961548, 21.390425, 18.993320>,  <20.311600, 21.809784, 19.365280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.961548, 21.390425, 18.993320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731934, 21.714523, 18.946014>,  <19.594166, 21.908981, 18.917631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731934, 21.714523, 18.946014>,  <19.961548, 21.390425, 18.993320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731934, 21.714523, 18.946014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214761, -0.288355, -0.933129,
		-0.790165, -0.510250, 0.339535,
		-0.574035, 0.810245, -0.118266,
		19.559723, 21.957596, 18.910534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150074, 21.175388, 18.843510>,  <19.961548, 21.390425, 18.993320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150074, 21.175388, 18.843510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195480, 21.540455, 18.686460>,  <19.222723, 21.759495, 18.592232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195480, 21.540455, 18.686460>,  <19.150074, 21.175388, 18.843510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195480, 21.540455, 18.686460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182531, -0.369294, -0.911210,
		-0.976625, 0.175101, 0.124670,
		0.113514, 0.912667, -0.392624,
		19.229534, 21.814255, 18.568674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.632763, 21.200172, 18.442467>,  <19.150074, 21.175388, 18.843510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.632763, 21.200172, 18.442467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.894211, 21.464497, 18.294895>,  <19.051079, 21.623091, 18.206352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.894211, 21.464497, 18.294895>,  <18.632763, 21.200172, 18.442467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.894211, 21.464497, 18.294895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046417, -0.451549, -0.891038,
		-0.755398, 0.599524, -0.264469,
		0.653620, 0.660813, -0.368928,
		19.090296, 21.662741, 18.184217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339602, 21.460688, 17.819220>,  <18.632763, 21.200172, 18.442467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.339602, 21.460688, 17.819220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.725723, 21.560394, 17.788107>,  <18.957397, 21.620218, 17.769440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.725723, 21.560394, 17.788107>,  <18.339602, 21.460688, 17.819220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725723, 21.560394, 17.788107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034921, -0.418437, -0.907574,
		-0.258777, 0.873370, -0.412624,
		0.965306, 0.249268, -0.077783,
		19.015314, 21.635174, 17.764772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374823, 21.845404, 17.186119>,  <18.339602, 21.460688, 17.819220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374823, 21.845404, 17.186119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.753994, 21.729641, 17.239302>,  <18.981497, 21.660183, 17.271212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.753994, 21.729641, 17.239302>,  <18.374823, 21.845404, 17.186119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753994, 21.729641, 17.239302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058401, -0.252427, -0.965852,
		0.313086, 0.923322, -0.222381,
		0.947928, -0.289407, 0.132954,
		19.038372, 21.642818, 17.279188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671692, 21.934057, 16.565094>,  <18.374823, 21.845404, 17.186119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671692, 21.934057, 16.565094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.954269, 21.694347, 16.715723>,  <19.123816, 21.550522, 16.806101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.954269, 21.694347, 16.715723>,  <18.671692, 21.934057, 16.565094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.954269, 21.694347, 16.715723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296283, -0.232795, -0.926295,
		0.642767, 0.765949, 0.013097,
		0.706446, -0.599273, 0.376571,
		19.166203, 21.514566, 16.828695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327065, 22.059174, 16.254820>,  <18.671692, 21.934057, 16.565094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.327065, 22.059174, 16.254820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.352455, 21.681984, 16.385525>,  <19.367689, 21.455671, 16.463947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.352455, 21.681984, 16.385525>,  <19.327065, 22.059174, 16.254820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.352455, 21.681984, 16.385525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419426, -0.271897, -0.866114,
		0.905567, 0.192029, 0.378249,
		0.063474, -0.942972, 0.326763,
		19.371498, 21.399092, 16.483553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943411, 21.824734, 16.091093>,  <19.327065, 22.059174, 16.254820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943411, 21.824734, 16.091093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733257, 21.489262, 16.148487>,  <19.607166, 21.287977, 16.182922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733257, 21.489262, 16.148487>,  <19.943411, 21.824734, 16.091093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733257, 21.489262, 16.148487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397108, -0.390830, -0.830396,
		0.752515, -0.379297, 0.538381,
		-0.525382, -0.838681, 0.143484,
		19.575644, 21.237658, 16.191532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.391066, 21.244818, 15.926409>,  <19.943411, 21.824734, 16.091093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.391066, 21.244818, 15.926409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009224, 21.126842, 15.909702>,  <19.780119, 21.056057, 15.899678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009224, 21.126842, 15.909702>,  <20.391066, 21.244818, 15.926409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009224, 21.126842, 15.909702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152104, -0.362070, -0.919657,
		0.256122, -0.884260, 0.390495,
		-0.954602, -0.294940, -0.041765,
		19.722843, 21.038361, 15.897173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398132, 20.687784, 15.497686>,  <20.391066, 21.244818, 15.926409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398132, 20.687784, 15.497686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002617, 20.740913, 15.524969>,  <19.765306, 20.772791, 15.541339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002617, 20.740913, 15.524969>,  <20.398132, 20.687784, 15.497686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.002617, 20.740913, 15.524969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087551, -0.145717, -0.985445,
		-0.120945, -0.980370, 0.155712,
		-0.988790, 0.132817, 0.068208,
		19.705980, 20.780760, 15.545431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129131, 20.075916, 15.112526>,  <20.398132, 20.687784, 15.497686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.129131, 20.075916, 15.112526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855888, 20.365616, 15.150112>,  <19.691942, 20.539436, 15.172664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855888, 20.365616, 15.150112>,  <20.129131, 20.075916, 15.112526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855888, 20.365616, 15.150112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202791, -0.064499, -0.977095,
		-0.701600, -0.686514, 0.190932,
		-0.683105, 0.724250, 0.093966,
		19.650957, 20.582891, 15.178302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.612667, 19.956625, 14.609604>,  <20.129131, 20.075916, 15.112526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.612667, 19.956625, 14.609604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.515224, 20.337463, 14.683546>,  <19.456758, 20.565966, 14.727912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.515224, 20.337463, 14.683546>,  <19.612667, 19.956625, 14.609604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.515224, 20.337463, 14.683546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060878, 0.175212, -0.982647,
		-0.967961, -0.250634, 0.015279,
		-0.243608, 0.952094, 0.184856,
		19.442142, 20.623091, 14.739003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988819, 20.095999, 14.187566>,  <19.612667, 19.956625, 14.609604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988819, 20.095999, 14.187566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171349, 20.443447, 14.264784>,  <19.280867, 20.651917, 14.311114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171349, 20.443447, 14.264784>,  <18.988819, 20.095999, 14.187566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171349, 20.443447, 14.264784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203829, 0.313219, -0.927549,
		-0.866155, 0.383913, 0.319979,
		0.456321, 0.868622, 0.193044,
		19.308245, 20.704033, 14.322697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665350, 20.647120, 13.755060>,  <18.988819, 20.095999, 14.187566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665350, 20.647120, 13.755060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968311, 20.868217, 13.894091>,  <19.150089, 21.000877, 13.977509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968311, 20.868217, 13.894091>,  <18.665350, 20.647120, 13.755060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968311, 20.868217, 13.894091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104965, 0.628471, -0.770718,
		-0.644453, 0.547262, 0.534027,
		0.757405, 0.552746, 0.347576,
		19.195534, 21.034040, 13.998363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477800, 21.370335, 13.717524>,  <18.665350, 20.647120, 13.755060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477800, 21.370335, 13.717524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877079, 21.359276, 13.696215>,  <19.116646, 21.352640, 13.683429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877079, 21.359276, 13.696215>,  <18.477800, 21.370335, 13.717524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877079, 21.359276, 13.696215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034142, 0.468423, -0.882844,
		0.049364, 0.883072, 0.466635,
		0.998197, -0.027649, -0.053273,
		19.176538, 21.350981, 13.680233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711334, 22.014843, 13.436999>,  <18.477800, 21.370335, 13.717524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711334, 22.014843, 13.436999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.030518, 21.781044, 13.378176>,  <19.222027, 21.640764, 13.342881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.030518, 21.781044, 13.378176>,  <18.711334, 22.014843, 13.436999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030518, 21.781044, 13.378176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147359, 0.425788, -0.892743,
		0.584422, 0.690701, 0.425891,
		0.797958, -0.584497, -0.147059,
		19.269905, 21.605696, 13.334058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.230427, 22.502052, 13.166505>,  <18.711334, 22.014843, 13.436999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.230427, 22.502052, 13.166505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.332962, 22.130478, 13.059643>,  <19.394484, 21.907534, 12.995525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.332962, 22.130478, 13.059643>,  <19.230427, 22.502052, 13.166505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.332962, 22.130478, 13.059643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000972, 0.276142, -0.961116,
		0.966586, 0.246632, 0.069883,
		0.256339, -0.928934, -0.267155,
		19.409864, 21.851797, 12.979496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839571, 22.571407, 12.794953>,  <19.230427, 22.502052, 13.166505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839571, 22.571407, 12.794953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.709194, 22.208633, 12.688198>,  <19.630968, 21.990969, 12.624146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.709194, 22.208633, 12.688198>,  <19.839571, 22.571407, 12.794953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.709194, 22.208633, 12.688198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267193, 0.182422, -0.946219,
		0.906847, -0.379721, 0.182869,
		-0.325940, -0.906937, -0.266888,
		19.611412, 21.936552, 12.608131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.382704, 22.188223, 12.511253>,  <19.839571, 22.571407, 12.794953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.382704, 22.188223, 12.511253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.050056, 22.020107, 12.366055>,  <19.850468, 21.919237, 12.278935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.050056, 22.020107, 12.366055>,  <20.382704, 22.188223, 12.511253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.050056, 22.020107, 12.366055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355896, 0.098437, -0.929327,
		0.426318, -0.902035, 0.067717,
		-0.831619, -0.420289, -0.362996,
		19.800571, 21.894020, 12.257155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595388, 21.896498, 11.821694>,  <20.382704, 22.188223, 12.511253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595388, 21.896498, 11.821694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.196648, 21.871006, 11.802820>,  <19.957403, 21.855711, 11.791496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.196648, 21.871006, 11.802820>,  <20.595388, 21.896498, 11.821694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.196648, 21.871006, 11.802820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047041, 0.003751, -0.998886,
		0.063835, -0.997960, -0.000741,
		-0.996851, -0.063729, -0.047185,
		19.897593, 21.851889, 11.788665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.399513, 21.268574, 11.577592>,  <20.595388, 21.896498, 11.821694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.399513, 21.268574, 11.577592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.084599, 21.499348, 11.490576>,  <19.895649, 21.637812, 11.438366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.084599, 21.499348, 11.490576>,  <20.399513, 21.268574, 11.577592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.084599, 21.499348, 11.490576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090718, -0.240591, -0.966378,
		-0.609878, -0.780551, 0.137076,
		-0.787286, 0.576937, -0.217541,
		19.848413, 21.672428, 11.425313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.048189, 20.995104, 10.957706>,  <20.399513, 21.268574, 11.577592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.048189, 20.995104, 10.957706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906384, 21.369110, 10.954456>,  <19.821301, 21.593513, 10.952506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906384, 21.369110, 10.954456>,  <20.048189, 20.995104, 10.957706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906384, 21.369110, 10.954456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089710, 0.025361, -0.995645,
		-0.930736, -0.353701, -0.092871,
		-0.354516, 0.935014, -0.008126,
		19.800028, 21.649614, 10.952019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474812, 20.968845, 10.566929>,  <20.048189, 20.995104, 10.957706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474812, 20.968845, 10.566929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.631809, 21.336639, 10.558046>,  <19.726007, 21.557316, 10.552717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.631809, 21.336639, 10.558046>,  <19.474812, 20.968845, 10.566929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.631809, 21.336639, 10.558046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029795, -0.011420, -0.999491,
		-0.919272, 0.392954, 0.022914,
		0.392493, 0.919487, -0.022206,
		19.749557, 21.612486, 10.551385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052761, 21.305157, 10.172391>,  <19.474812, 20.968845, 10.566929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052761, 21.305157, 10.172391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396202, 21.510128, 10.166429>,  <19.602266, 21.633110, 10.162851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396202, 21.510128, 10.166429>,  <19.052761, 21.305157, 10.172391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.396202, 21.510128, 10.166429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012582, -0.008003, -0.999889,
		-0.512490, 0.858693, -0.000424,
		0.858601, 0.512427, -0.014906,
		19.653782, 21.663857, 10.161957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846886, 21.805193, 9.541389>,  <19.052761, 21.305157, 10.172391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846886, 21.805193, 9.541389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.238003, 21.751842, 9.606055>,  <19.472673, 21.719833, 9.644855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.238003, 21.751842, 9.606055>,  <18.846886, 21.805193, 9.541389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.238003, 21.751842, 9.606055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149392, -0.097448, -0.983964,
		0.146989, 0.986263, -0.075359,
		0.977791, -0.133374, 0.161664,
		19.531340, 21.711830, 9.654554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520725, 22.370165, 9.951692>,  <18.846886, 21.805193, 9.541389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.520725, 22.370165, 9.951692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.222370, 22.600246, 9.817356>,  <18.043356, 22.738297, 9.736755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.222370, 22.600246, 9.817356>,  <18.520725, 22.370165, 9.951692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222370, 22.600246, 9.817356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373462, 0.056331, 0.925933,
		0.551521, 0.816067, 0.172801,
		-0.745889, 0.575206, -0.335838,
		17.998604, 22.772808, 9.716605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548073, 23.025267, 10.303757>,  <18.520725, 22.370165, 9.951692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548073, 23.025267, 10.303757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.167961, 23.001030, 10.181575>,  <17.939894, 22.986488, 10.108266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.167961, 23.001030, 10.181575>,  <18.548073, 23.025267, 10.303757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.167961, 23.001030, 10.181575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310277, 0.100764, 0.945291,
		-0.026499, 0.993063, -0.114555,
		-0.950277, -0.060593, -0.305454,
		17.882877, 22.982851, 10.089938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134249, 23.592228, 10.670482>,  <18.548073, 23.025267, 10.303757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134249, 23.592228, 10.670482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.868153, 23.324013, 10.539130>,  <17.708496, 23.163084, 10.460320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.868153, 23.324013, 10.539130>,  <18.134249, 23.592228, 10.670482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.868153, 23.324013, 10.539130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525205, 0.107658, 0.844138,
		-0.530676, 0.734021, -0.423789,
		-0.665239, -0.670540, -0.328380,
		17.668581, 23.122850, 10.440617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523518, 23.929337, 10.667753>,  <18.134249, 23.592228, 10.670482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523518, 23.929337, 10.667753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.443073, 23.537743, 10.681276>,  <17.394806, 23.302786, 10.689390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.443073, 23.537743, 10.681276>,  <17.523518, 23.929337, 10.667753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443073, 23.537743, 10.681276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470948, 0.126894, 0.872986,
		-0.858931, 0.159646, -0.486571,
		-0.201112, -0.978985, 0.033808,
		17.382740, 23.244047, 10.691419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826838, 23.879421, 10.862611>,  <17.523518, 23.929337, 10.667753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826838, 23.879421, 10.862611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.994629, 23.529343, 10.959003>,  <17.095304, 23.319296, 11.016839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.994629, 23.529343, 10.959003>,  <16.826838, 23.879421, 10.862611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.994629, 23.529343, 10.959003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440306, 0.035984, 0.897126,
		-0.793832, -0.482431, -0.370259,
		0.419478, -0.875194, 0.240983,
		17.120472, 23.266785, 11.031299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339930, 23.560623, 11.280030>,  <16.826838, 23.879421, 10.862611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339930, 23.560623, 11.280030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659092, 23.345165, 11.388261>,  <16.850590, 23.215891, 11.453199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659092, 23.345165, 11.388261>,  <16.339930, 23.560623, 11.280030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659092, 23.345165, 11.388261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333273, -0.020182, 0.942614,
		-0.502272, -0.842292, -0.195619,
		0.797905, -0.538643, 0.270577,
		16.898464, 23.183573, 11.469434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200712, 22.887001, 11.579737>,  <16.339930, 23.560623, 11.280030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200712, 22.887001, 11.579737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.576328, 22.906704, 11.715840>,  <16.801699, 22.918526, 11.797503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.576328, 22.906704, 11.715840>,  <16.200712, 22.887001, 11.579737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.576328, 22.906704, 11.715840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295148, -0.392072, 0.871302,
		0.176324, -0.918615, -0.353634,
		0.939040, 0.049257, 0.340260,
		16.858040, 22.921480, 11.817918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.186903, 22.222471, 11.991276>,  <16.200712, 22.887001, 11.579737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.186903, 22.222471, 11.991276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503246, 22.443653, 12.096183>,  <16.693052, 22.576363, 12.159127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503246, 22.443653, 12.096183>,  <16.186903, 22.222471, 11.991276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503246, 22.443653, 12.096183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019537, -0.405515, 0.913880,
		0.611686, -0.727874, -0.309903,
		0.790860, 0.552953, 0.262268,
		16.740505, 22.609539, 12.174863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.607332, 21.805714, 12.286267>,  <16.186903, 22.222471, 11.991276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.607332, 21.805714, 12.286267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733471, 22.160164, 12.422112>,  <16.809155, 22.372835, 12.503618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733471, 22.160164, 12.422112>,  <16.607332, 21.805714, 12.286267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733471, 22.160164, 12.422112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077963, -0.332469, 0.939886,
		0.945768, -0.322869, -0.035759,
		0.315349, 0.886127, 0.339610,
		16.828075, 22.426003, 12.523994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207960, 21.695436, 12.823260>,  <16.607332, 21.805714, 12.286267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207960, 21.695436, 12.823260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043758, 22.053463, 12.892937>,  <16.945238, 22.268280, 12.934742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043758, 22.053463, 12.892937>,  <17.207960, 21.695436, 12.823260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043758, 22.053463, 12.892937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036135, -0.206845, 0.977706,
		0.911143, 0.395056, 0.117253,
		-0.410502, 0.895067, 0.174190,
		16.920609, 22.321983, 12.945193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.530109, 21.912590, 13.536264>,  <17.207960, 21.695436, 12.823260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.530109, 21.912590, 13.536264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220127, 22.161694, 13.493158>,  <17.034138, 22.311155, 13.467295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220127, 22.161694, 13.493158>,  <17.530109, 21.912590, 13.536264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.220127, 22.161694, 13.493158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001745, 0.168402, 0.985717,
		0.632010, 0.764077, -0.129418,
		-0.774958, 0.622757, -0.107765,
		16.987640, 22.348520, 13.460829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612509, 22.564877, 13.852237>,  <17.530109, 21.912590, 13.536264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612509, 22.564877, 13.852237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.215946, 22.518700, 13.876842>,  <16.978008, 22.490993, 13.891606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.215946, 22.518700, 13.876842>,  <17.612509, 22.564877, 13.852237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215946, 22.518700, 13.876842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023412, 0.306075, 0.951720,
		-0.128699, 0.944982, -0.300742,
		-0.991407, -0.115444, 0.061515,
		16.918524, 22.484066, 13.895297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.366066, 23.078207, 14.206503>,  <17.612509, 22.564877, 13.852237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.366066, 23.078207, 14.206503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.036018, 22.857075, 14.253073>,  <16.837990, 22.724396, 14.281014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.036018, 22.857075, 14.253073>,  <17.366066, 23.078207, 14.206503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036018, 22.857075, 14.253073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073058, 0.308757, 0.948331,
		-0.560212, 0.773982, -0.295150,
		-0.825121, -0.552830, 0.116424,
		16.788483, 22.691225, 14.288000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.856586, 23.499035, 14.494873>,  <17.366066, 23.078207, 14.206503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.856586, 23.499035, 14.494873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733459, 23.127827, 14.578802>,  <16.659584, 22.905102, 14.629160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733459, 23.127827, 14.578802>,  <16.856586, 23.499035, 14.494873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733459, 23.127827, 14.578802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017536, 0.226028, 0.973963,
		-0.951284, 0.296123, -0.085849,
		-0.307818, -0.928021, 0.209824,
		16.641113, 22.849421, 14.641749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265118, 23.503782, 14.979127>,  <16.856586, 23.499035, 14.494873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265118, 23.503782, 14.979127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449879, 23.153843, 15.037485>,  <16.560736, 22.943880, 15.072500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449879, 23.153843, 15.037485>,  <16.265118, 23.503782, 14.979127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449879, 23.153843, 15.037485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028683, 0.149675, 0.988319,
		-0.886466, -0.460693, 0.044042,
		0.461904, -0.874848, 0.145896,
		16.588449, 22.891388, 15.081254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812098, 23.134308, 15.476558>,  <16.265118, 23.503782, 14.979127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812098, 23.134308, 15.476558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.174438, 22.970768, 15.520868>,  <16.391844, 22.872644, 15.547455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.174438, 22.970768, 15.520868>,  <15.812098, 23.134308, 15.476558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174438, 22.970768, 15.520868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062544, 0.129554, 0.989598,
		-0.418950, -0.903358, 0.091786,
		0.905853, -0.408851, 0.110777,
		16.446194, 22.848112, 15.554101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743816, 22.806345, 16.136490>,  <15.812098, 23.134308, 15.476558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743816, 22.806345, 16.136490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.136116, 22.825569, 16.060783>,  <16.371496, 22.837105, 16.015360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.136116, 22.825569, 16.060783>,  <15.743816, 22.806345, 16.136490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136116, 22.825569, 16.060783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189249, 0.004968, 0.981916,
		0.048136, -0.998832, -0.004224,
		0.980749, 0.048065, -0.189267,
		16.430340, 22.839989, 16.004004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091770, 22.371025, 16.673908>,  <15.743816, 22.806345, 16.136490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091770, 22.371025, 16.673908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372948, 22.622902, 16.541632>,  <16.541655, 22.774029, 16.462267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372948, 22.622902, 16.541632>,  <16.091770, 22.371025, 16.673908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372948, 22.622902, 16.541632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357169, 0.089543, 0.929738,
		0.615062, -0.771665, -0.161964,
		0.702943, 0.629695, -0.330689,
		16.583830, 22.811810, 16.442425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683056, 22.122757, 17.050920>,  <16.091770, 22.371025, 16.673908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683056, 22.122757, 17.050920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.787182, 22.491615, 16.936460>,  <16.849657, 22.712931, 16.867785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.787182, 22.491615, 16.936460>,  <16.683056, 22.122757, 17.050920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.787182, 22.491615, 16.936460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450384, 0.146175, 0.880788,
		0.854043, -0.358160, -0.377268,
		0.260316, 0.922147, -0.286149,
		16.865276, 22.768259, 16.850616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323191, 22.165308, 17.359982>,  <16.683056, 22.122757, 17.050920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323191, 22.165308, 17.359982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256199, 22.545647, 17.255793>,  <17.216003, 22.773849, 17.193279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256199, 22.545647, 17.255793>,  <17.323191, 22.165308, 17.359982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.256199, 22.545647, 17.255793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011604, 0.266086, 0.963880,
		0.985807, 0.158408, -0.055598,
		-0.167480, 0.950844, -0.260471,
		17.205956, 22.830900, 17.177650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.710155, 22.445719, 17.779455>,  <17.323191, 22.165308, 17.359982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.710155, 22.445719, 17.779455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.456562, 22.733051, 17.664865>,  <17.304405, 22.905451, 17.596111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.456562, 22.733051, 17.664865>,  <17.710155, 22.445719, 17.779455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.456562, 22.733051, 17.664865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043916, 0.336393, 0.940697,
		0.772099, 0.608967, -0.181721,
		-0.633983, 0.718331, -0.286473,
		17.266367, 22.948551, 17.578924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967287, 23.061697, 18.120277>,  <17.710155, 22.445719, 17.779455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967287, 23.061697, 18.120277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576797, 23.101402, 18.043198>,  <17.342505, 23.125225, 17.996950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576797, 23.101402, 18.043198>,  <17.967287, 23.061697, 18.120277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576797, 23.101402, 18.043198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162035, 0.256318, 0.952915,
		0.143983, 0.961482, -0.234139,
		-0.976224, 0.099265, -0.192699,
		17.283930, 23.131182, 17.985388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726046, 23.775646, 18.409616>,  <17.967287, 23.061697, 18.120277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726046, 23.775646, 18.409616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.414406, 23.530613, 18.356327>,  <17.227423, 23.383593, 18.324354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.414406, 23.530613, 18.356327>,  <17.726046, 23.775646, 18.409616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414406, 23.530613, 18.356327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258521, 0.120347, 0.958480,
		-0.571115, 0.781191, -0.252127,
		-0.779099, -0.612582, -0.133222,
		17.180676, 23.346838, 18.316360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210939, 24.108206, 18.785362>,  <17.726046, 23.775646, 18.409616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210939, 24.108206, 18.785362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115166, 23.722107, 18.743473>,  <17.057701, 23.490448, 18.718340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115166, 23.722107, 18.743473>,  <17.210939, 24.108206, 18.785362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115166, 23.722107, 18.743473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255082, -0.041531, 0.966027,
		-0.936805, 0.258014, -0.236273,
		-0.239436, -0.965248, -0.104721,
		17.043335, 23.432533, 18.712057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669607, 23.961554, 19.207546>,  <17.210939, 24.108206, 18.785362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669607, 23.961554, 19.207546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.842529, 23.607525, 19.138546>,  <16.946283, 23.395107, 19.097145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.842529, 23.607525, 19.138546>,  <16.669607, 23.961554, 19.207546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.842529, 23.607525, 19.138546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248248, -0.300727, 0.920834,
		-0.866882, -0.355259, -0.349724,
		0.432306, -0.885073, -0.172503,
		16.972221, 23.342003, 19.086796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267906, 23.535364, 19.690510>,  <16.669607, 23.961554, 19.207546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267906, 23.535364, 19.690510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.582329, 23.310921, 19.586758>,  <16.770983, 23.176254, 19.524508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.582329, 23.310921, 19.586758>,  <16.267906, 23.535364, 19.690510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.582329, 23.310921, 19.586758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124335, -0.554538, 0.822817,
		-0.605527, -0.614527, -0.505661,
		0.786052, -0.561110, -0.259381,
		16.818146, 23.142590, 19.508944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.096525, 22.869520, 19.952673>,  <16.267906, 23.535364, 19.690510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.096525, 22.869520, 19.952673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.493816, 22.874012, 19.906418>,  <16.732191, 22.876707, 19.878664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.493816, 22.874012, 19.906418>,  <16.096525, 22.869520, 19.952673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.493816, 22.874012, 19.906418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102382, -0.555095, 0.825462,
		-0.054922, -0.831711, -0.552486,
		0.993228, 0.011229, -0.115639,
		16.791784, 22.877380, 19.871725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.333368, 22.224424, 19.957132>,  <16.096525, 22.869520, 19.952673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.333368, 22.224424, 19.957132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.686153, 22.392677, 20.042179>,  <16.897825, 22.493629, 20.093206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.686153, 22.392677, 20.042179>,  <16.333368, 22.224424, 19.957132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.686153, 22.392677, 20.042179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281339, -0.831779, 0.478531,
		0.378136, -0.362231, -0.851940,
		0.881965, 0.420634, 0.212616,
		16.950743, 22.518867, 20.105965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.856123, 21.806255, 19.650078>,  <16.333368, 22.224424, 19.957132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.856123, 21.806255, 19.650078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019337, 22.010151, 19.953043>,  <17.117266, 22.132488, 20.134823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019337, 22.010151, 19.953043>,  <16.856123, 21.806255, 19.650078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019337, 22.010151, 19.953043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375941, -0.849828, 0.369407,
		0.831971, 0.134012, -0.538391,
		0.408035, 0.509739, 0.757413,
		17.141747, 22.163073, 20.180267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439827, 21.425766, 19.932425>,  <16.856123, 21.806255, 19.650078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439827, 21.425766, 19.932425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.391090, 21.706223, 20.213438>,  <17.361849, 21.874496, 20.382046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.391090, 21.706223, 20.213438>,  <17.439827, 21.425766, 19.932425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.391090, 21.706223, 20.213438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220068, -0.671107, 0.707944,
		0.967845, 0.240863, -0.072530,
		-0.121843, 0.701142, 0.702534,
		17.354538, 21.916565, 20.424198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.062256, 21.440937, 20.273901>,  <17.439827, 21.425766, 19.932425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.062256, 21.440937, 20.273901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780750, 21.594578, 20.512959>,  <17.611847, 21.686762, 20.656393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780750, 21.594578, 20.512959>,  <18.062256, 21.440937, 20.273901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780750, 21.594578, 20.512959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307625, -0.593528, 0.743701,
		0.640375, 0.707242, 0.299546,
		-0.703766, 0.384100, 0.597646,
		17.569620, 21.709808, 20.692253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326090, 21.373091, 20.992323>,  <18.062256, 21.440937, 20.273901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326090, 21.373091, 20.992323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935097, 21.427319, 21.057001>,  <17.700500, 21.459856, 21.095808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935097, 21.427319, 21.057001>,  <18.326090, 21.373091, 20.992323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935097, 21.427319, 21.057001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040152, -0.632787, 0.773284,
		0.207152, 0.762366, 0.613096,
		-0.977484, 0.135570, 0.161694,
		17.641851, 21.467989, 21.105509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289379, 21.582607, 21.655554>,  <18.326090, 21.373091, 20.992323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.289379, 21.582607, 21.655554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923088, 21.445396, 21.571865>,  <17.703314, 21.363070, 21.521652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923088, 21.445396, 21.571865>,  <18.289379, 21.582607, 21.655554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923088, 21.445396, 21.571865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037638, -0.445195, 0.894642,
		-0.400031, 0.827124, 0.394766,
		-0.915728, -0.343026, -0.209223,
		17.648369, 21.342489, 21.509098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793104, 21.756512, 22.155426>,  <18.289379, 21.582607, 21.655554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793104, 21.756512, 22.155426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.613377, 21.438911, 21.991632>,  <17.505541, 21.248352, 21.893356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.613377, 21.438911, 21.991632>,  <17.793104, 21.756512, 22.155426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613377, 21.438911, 21.991632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213891, -0.349416, 0.912227,
		-0.867388, 0.497467, -0.012830,
		-0.449320, -0.794000, -0.409483,
		17.478580, 21.200712, 21.868788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107586, 21.657551, 22.461309>,  <17.793104, 21.756512, 22.155426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107586, 21.657551, 22.461309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.202980, 21.295349, 22.320917>,  <17.260218, 21.078028, 22.236683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.202980, 21.295349, 22.320917>,  <17.107586, 21.657551, 22.461309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.202980, 21.295349, 22.320917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213968, -0.401519, 0.890505,
		-0.947281, -0.137275, -0.289506,
		0.238486, -0.905504, -0.350979,
		17.274527, 21.023697, 22.215624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.609840, 21.123716, 22.724985>,  <17.107586, 21.657551, 22.461309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.609840, 21.123716, 22.724985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932781, 20.921886, 22.602621>,  <17.126547, 20.800789, 22.529202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932781, 20.921886, 22.602621>,  <16.609840, 21.123716, 22.724985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932781, 20.921886, 22.602621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022084, -0.543911, 0.838852,
		-0.589656, -0.670494, -0.450271,
		0.807353, -0.504578, -0.305914,
		17.174988, 20.770514, 22.510847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547537, 20.450411, 23.066202>,  <16.609840, 21.123716, 22.724985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547537, 20.450411, 23.066202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929081, 20.392494, 22.960987>,  <17.158007, 20.357744, 22.897858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929081, 20.392494, 22.960987>,  <16.547537, 20.450411, 23.066202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929081, 20.392494, 22.960987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163531, -0.484192, 0.859544,
		-0.251812, -0.862899, -0.438174,
		0.953860, -0.144788, -0.263036,
		17.215239, 20.349058, 22.882076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617493, 19.798910, 23.351633>,  <16.547537, 20.450411, 23.066202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617493, 19.798910, 23.351633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975590, 19.968506, 23.296833>,  <17.190449, 20.070263, 23.263954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975590, 19.968506, 23.296833>,  <16.617493, 19.798910, 23.351633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975590, 19.968506, 23.296833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296221, -0.336656, 0.893821,
		0.332851, -0.840770, -0.426984,
		0.895245, 0.423991, -0.136998,
		17.244164, 20.095703, 23.255733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301271, 19.175524, 23.448698>,  <16.617493, 19.798910, 23.351633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301271, 19.175524, 23.448698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.960256, 18.966560, 23.455254>,  <15.755647, 18.841183, 23.459187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.960256, 18.966560, 23.455254>,  <16.301271, 19.175524, 23.448698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.960256, 18.966560, 23.455254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252278, 0.383835, -0.888272,
		0.457753, -0.761418, -0.459026,
		-0.852536, -0.522411, 0.016388,
		15.704494, 18.809837, 23.460171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.247328, 19.064451, 22.718449>,  <16.301271, 19.175524, 23.448698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.247328, 19.064451, 22.718449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.886640, 18.962212, 22.857916>,  <15.670227, 18.900867, 22.941595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.886640, 18.962212, 22.857916>,  <16.247328, 19.064451, 22.718449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.886640, 18.962212, 22.857916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409910, 0.249197, -0.877425,
		0.137380, -0.934115, -0.329478,
		-0.901720, -0.255597, 0.348668,
		15.616123, 18.885530, 22.962517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927341, 18.659952, 22.188744>,  <16.247328, 19.064451, 22.718449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.927341, 18.659952, 22.188744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.631757, 18.789188, 22.425234>,  <15.454406, 18.866730, 22.567127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.631757, 18.789188, 22.425234>,  <15.927341, 18.659952, 22.188744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631757, 18.789188, 22.425234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355895, 0.557911, -0.749716,
		-0.572078, -0.764426, -0.297288,
		-0.738963, 0.323092, 0.591224,
		15.410068, 18.886116, 22.602600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478799, 18.769047, 21.695482>,  <15.927341, 18.659952, 22.188744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478799, 18.769047, 21.695482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347865, 18.969593, 22.015852>,  <15.269305, 19.089922, 22.208075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347865, 18.969593, 22.015852>,  <15.478799, 18.769047, 21.695482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347865, 18.969593, 22.015852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421026, 0.681442, -0.598643,
		-0.845925, -0.533167, -0.011970,
		-0.327333, 0.501367, 0.800926,
		15.249665, 19.120003, 22.256130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795266, 18.818399, 21.675648>,  <15.478799, 18.769047, 21.695482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795266, 18.818399, 21.675648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899030, 19.141315, 21.887680>,  <14.961288, 19.335066, 22.014900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899030, 19.141315, 21.887680>,  <14.795266, 18.818399, 21.675648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.899030, 19.141315, 21.887680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190622, 0.580873, -0.791360,
		-0.946768, 0.104241, 0.304572,
		0.259410, 0.807292, 0.530081,
		14.976852, 19.383503, 22.046705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.319187, 19.427677, 21.552553>,  <14.795266, 18.818399, 21.675648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.319187, 19.427677, 21.552553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.638604, 19.620258, 21.697071>,  <14.830255, 19.735807, 21.783781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.638604, 19.620258, 21.697071>,  <14.319187, 19.427677, 21.552553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638604, 19.620258, 21.697071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035586, 0.636930, -0.770100,
		-0.600885, 0.602101, 0.525748,
		0.798543, 0.481451, 0.361295,
		14.878167, 19.764694, 21.805460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.112912, 20.190254, 21.453068>,  <14.319187, 19.427677, 21.552553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.112912, 20.190254, 21.453068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507651, 20.206619, 21.515621>,  <14.744495, 20.216438, 21.553154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507651, 20.206619, 21.515621>,  <14.112912, 20.190254, 21.453068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507651, 20.206619, 21.515621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119486, 0.466973, -0.876162,
		-0.108873, 0.883325, 0.455943,
		0.986848, 0.040911, 0.156386,
		14.803706, 20.218893, 21.562536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401973, 20.944448, 21.451933>,  <14.112912, 20.190254, 21.453068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.401973, 20.944448, 21.451933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728206, 20.727356, 21.371668>,  <14.923945, 20.597099, 21.323509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728206, 20.727356, 21.371668>,  <14.401973, 20.944448, 21.451933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728206, 20.727356, 21.371668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110379, 0.486337, -0.866771,
		0.568015, 0.684775, 0.456555,
		0.815583, -0.542733, -0.200662,
		14.972880, 20.564535, 21.311470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857183, 21.439331, 21.089937>,  <14.401973, 20.944448, 21.451933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.857183, 21.439331, 21.089937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.991845, 21.072723, 21.003538>,  <15.072642, 20.852758, 20.951698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.991845, 21.072723, 21.003538>,  <14.857183, 21.439331, 21.089937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991845, 21.072723, 21.003538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151110, 0.279001, -0.948327,
		0.929424, 0.286619, 0.232422,
		0.336655, -0.916519, -0.216000,
		15.092841, 20.797768, 20.938738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400544, 21.529575, 20.617435>,  <14.857183, 21.439331, 21.089937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400544, 21.529575, 20.617435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.316987, 21.140377, 20.578154>,  <15.266852, 20.906858, 20.554585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.316987, 21.140377, 20.578154>,  <15.400544, 21.529575, 20.617435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.316987, 21.140377, 20.578154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101507, 0.078304, -0.991748,
		0.972656, -0.217138, 0.082409,
		-0.208894, -0.972995, -0.098204,
		15.254319, 20.848478, 20.548693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838476, 21.342485, 20.234035>,  <15.400544, 21.529575, 20.617435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838476, 21.342485, 20.234035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.541869, 21.076828, 20.195950>,  <15.363905, 20.917433, 20.173098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.541869, 21.076828, 20.195950>,  <15.838476, 21.342485, 20.234035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541869, 21.076828, 20.195950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067057, 0.214562, -0.974406,
		0.667575, -0.716153, -0.203637,
		-0.741516, -0.664144, -0.095213,
		15.319414, 20.877584, 20.167385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989002, 20.979004, 19.628725>,  <15.838476, 21.342485, 20.234035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.989002, 20.979004, 19.628725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594646, 20.937943, 19.681608>,  <15.358031, 20.913305, 19.713339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594646, 20.937943, 19.681608>,  <15.989002, 20.979004, 19.628725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594646, 20.937943, 19.681608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140460, 0.077801, -0.987025,
		0.091039, -0.991670, -0.091123,
		-0.985892, -0.102657, 0.132207,
		15.298878, 20.907146, 19.721270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.750162, 20.592157, 19.102346>,  <15.989002, 20.979004, 19.628725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.750162, 20.592157, 19.102346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427295, 20.796364, 19.220905>,  <15.233574, 20.918888, 19.292040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427295, 20.796364, 19.220905>,  <15.750162, 20.592157, 19.102346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427295, 20.796364, 19.220905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331561, 0.023349, -0.943145,
		-0.488413, -0.859550, 0.150421,
		-0.807168, 0.510518, 0.296397,
		15.185144, 20.949520, 19.309824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.283268, 20.245098, 18.801008>,  <15.750162, 20.592157, 19.102346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.283268, 20.245098, 18.801008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.106004, 20.595795, 18.875772>,  <14.999645, 20.806211, 18.920631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.106004, 20.595795, 18.875772>,  <15.283268, 20.245098, 18.801008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.106004, 20.595795, 18.875772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552283, -0.102789, -0.827296,
		-0.706111, -0.469853, 0.529761,
		-0.443161, 0.876740, 0.186911,
		14.973056, 20.858816, 18.931847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626635, 20.159752, 18.470947>,  <15.283268, 20.245098, 18.801008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626635, 20.159752, 18.470947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600326, 20.556946, 18.510250>,  <14.584540, 20.795261, 18.533833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600326, 20.556946, 18.510250>,  <14.626635, 20.159752, 18.470947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600326, 20.556946, 18.510250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321913, 0.072090, -0.944021,
		-0.944482, -0.093722, 0.314914,
		-0.065773, 0.992985, 0.098257,
		14.580594, 20.854841, 18.539728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.927080, 20.348104, 18.152128>,  <14.626635, 20.159752, 18.470947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.927080, 20.348104, 18.152128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152429, 20.678402, 18.163166>,  <14.287638, 20.876581, 18.169788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152429, 20.678402, 18.163166>,  <13.927080, 20.348104, 18.152128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.152429, 20.678402, 18.163166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408468, 0.307401, -0.859452,
		-0.718169, 0.472920, 0.510471,
		0.563371, 0.825743, 0.027593,
		14.321440, 20.926125, 18.171444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.542225, 20.896112, 18.012169>,  <13.927080, 20.348104, 18.152128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.542225, 20.896112, 18.012169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905772, 21.017654, 17.897884>,  <14.123900, 21.090580, 17.829313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905772, 21.017654, 17.897884>,  <13.542225, 20.896112, 18.012169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.905772, 21.017654, 17.897884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383261, 0.338202, -0.859494,
		-0.164533, 0.890669, 0.423837,
		0.908867, 0.303856, -0.285713,
		14.178432, 21.108810, 17.812170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447958, 21.325974, 17.427902>,  <13.542225, 20.896112, 18.012169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447958, 21.325974, 17.427902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.835940, 21.252293, 17.364338>,  <14.068730, 21.208084, 17.326200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.835940, 21.252293, 17.364338>,  <13.447958, 21.325974, 17.427902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.835940, 21.252293, 17.364338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153986, 0.040828, -0.987229,
		0.188340, 0.982040, 0.011236,
		0.969957, -0.184204, -0.158910,
		14.126927, 21.197031, 17.316666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.747422, 21.871515, 17.110920>,  <13.447958, 21.325974, 17.427902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.747422, 21.871515, 17.110920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989354, 21.561718, 17.036793>,  <14.134514, 21.375839, 16.992317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989354, 21.561718, 17.036793>,  <13.747422, 21.871515, 17.110920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989354, 21.561718, 17.036793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158902, 0.110656, -0.981074,
		0.780340, 0.622831, -0.056140,
		0.604830, -0.774492, -0.185318,
		14.170803, 21.329370, 16.981197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279563, 22.112242, 16.666300>,  <13.747422, 21.871515, 17.110920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279563, 22.112242, 16.666300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296868, 21.717663, 16.602989>,  <14.307252, 21.480915, 16.565002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296868, 21.717663, 16.602989>,  <14.279563, 22.112242, 16.666300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296868, 21.717663, 16.602989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079131, 0.161311, -0.983726,
		0.995925, 0.030036, 0.085037,
		0.043265, -0.986446, -0.158277,
		14.309848, 21.421728, 16.555506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.941370, 22.005733, 16.284321>,  <14.279563, 22.112242, 16.666300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.941370, 22.005733, 16.284321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.677690, 21.710541, 16.226574>,  <14.519482, 21.533426, 16.191927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.677690, 21.710541, 16.226574>,  <14.941370, 22.005733, 16.284321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.677690, 21.710541, 16.226574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084779, 0.117822, -0.989409,
		0.747173, -0.664458, -0.015103,
		-0.659200, -0.737980, -0.144365,
		14.479930, 21.489147, 16.183264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371645, 21.566496, 15.833852>,  <14.941370, 22.005733, 16.284321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.371645, 21.566496, 15.833852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974290, 21.528713, 15.807743>,  <14.735877, 21.506044, 15.792078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974290, 21.528713, 15.807743>,  <15.371645, 21.566496, 15.833852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974290, 21.528713, 15.807743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067613, -0.021802, -0.997473,
		0.092795, -0.995290, 0.028044,
		-0.993387, -0.094456, -0.065272,
		14.676273, 21.500378, 15.788161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275356, 21.034000, 15.289524>,  <15.371645, 21.566496, 15.833852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275356, 21.034000, 15.289524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.911878, 21.192299, 15.342670>,  <14.693790, 21.287279, 15.374558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.911878, 21.192299, 15.342670>,  <15.275356, 21.034000, 15.289524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911878, 21.192299, 15.342670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060096, 0.190949, -0.979759,
		-0.413108, -0.898288, -0.149732,
		-0.908697, 0.395748, 0.132866,
		14.639269, 21.311024, 15.382530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905417, 20.725674, 14.735663>,  <15.275356, 21.034000, 15.289524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905417, 20.725674, 14.735663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704644, 21.054459, 14.843321>,  <14.584180, 21.251730, 14.907915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704644, 21.054459, 14.843321>,  <14.905417, 20.725674, 14.735663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704644, 21.054459, 14.843321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154279, 0.221104, -0.962970,
		-0.851035, -0.524870, 0.015832,
		-0.501934, 0.821964, 0.269144,
		14.554064, 21.301048, 14.924064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.154162, 20.637539, 14.491637>,  <14.905417, 20.725674, 14.735663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.154162, 20.637539, 14.491637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274943, 21.015278, 14.543840>,  <14.347412, 21.241920, 14.575162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274943, 21.015278, 14.543840>,  <14.154162, 20.637539, 14.491637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274943, 21.015278, 14.543840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223811, 0.203294, -0.953195,
		-0.926678, 0.258611, 0.272740,
		0.301953, 0.944347, 0.130508,
		14.365529, 21.298582, 14.582993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629623, 20.977917, 14.231650>,  <14.154162, 20.637539, 14.491637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629623, 20.977917, 14.231650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.915540, 21.257561, 14.224512>,  <14.087090, 21.425346, 14.220229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.915540, 21.257561, 14.224512>,  <13.629623, 20.977917, 14.231650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.915540, 21.257561, 14.224512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225798, 0.206562, -0.952023,
		-0.661883, 0.684527, 0.305506,
		0.714791, 0.699110, -0.017846,
		14.129977, 21.467295, 14.219158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.344646, 21.536966, 13.877588>,  <13.629623, 20.977917, 14.231650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.344646, 21.536966, 13.877588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742175, 21.557724, 13.838341>,  <13.980692, 21.570179, 13.814792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742175, 21.557724, 13.838341>,  <13.344646, 21.536966, 13.877588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742175, 21.557724, 13.838341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106496, 0.196620, -0.974679,
		-0.031289, 0.979105, 0.200932,
		0.993821, 0.051895, -0.098119,
		14.040321, 21.573292, 13.808905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.413451, 22.050375, 13.481419>,  <13.344646, 21.536966, 13.877588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.413451, 22.050375, 13.481419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.772588, 21.877987, 13.445320>,  <13.988070, 21.774553, 13.423661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.772588, 21.877987, 13.445320>,  <13.413451, 22.050375, 13.481419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.772588, 21.877987, 13.445320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027213, 0.150256, -0.988273,
		0.439477, 0.889768, 0.123178,
		0.897842, -0.430971, -0.090247,
		14.041941, 21.748695, 13.418246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.750437, 22.454685, 12.963684>,  <13.413451, 22.050375, 13.481419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.750437, 22.454685, 12.963684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.966207, 22.118263, 12.979912>,  <14.095668, 21.916410, 12.989648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.966207, 22.118263, 12.979912>,  <13.750437, 22.454685, 12.963684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.966207, 22.118263, 12.979912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131456, 0.036527, -0.990649,
		0.831710, 0.539712, 0.130265,
		0.539423, -0.841057, 0.040568,
		14.128034, 21.865946, 12.992083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.356728, 22.595995, 12.675762>,  <13.750437, 22.454685, 12.963684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.356728, 22.595995, 12.675762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289083, 22.202366, 12.653859>,  <14.248496, 21.966188, 12.640718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289083, 22.202366, 12.653859>,  <14.356728, 22.595995, 12.675762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.289083, 22.202366, 12.653859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258677, 0.009295, -0.965919,
		0.951046, -0.177513, 0.252985,
		-0.169112, -0.984075, -0.054758,
		14.238349, 21.907143, 12.637431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.949406, 22.236614, 12.351076>,  <14.356728, 22.595995, 12.675762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.949406, 22.236614, 12.351076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637662, 21.996922, 12.277841>,  <14.450616, 21.853106, 12.233899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637662, 21.996922, 12.277841>,  <14.949406, 22.236614, 12.351076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637662, 21.996922, 12.277841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253208, -0.033923, -0.966817,
		0.573135, -0.799858, 0.178168,
		-0.779360, -0.599230, -0.183088,
		14.403853, 21.817152, 12.222915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149502, 21.764441, 11.851232>,  <14.949406, 22.236614, 12.351076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149502, 21.764441, 11.851232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.755101, 21.700165, 11.833427>,  <14.518461, 21.661600, 11.822745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.755101, 21.700165, 11.833427>,  <15.149502, 21.764441, 11.851232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.755101, 21.700165, 11.833427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075622, -0.193046, -0.978271,
		0.148607, -0.967942, 0.202495,
		-0.986001, -0.160691, -0.044510,
		14.459301, 21.651958, 11.820074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092588, 21.123266, 11.439710>,  <15.149502, 21.764441, 11.851232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.092588, 21.123266, 11.439710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.759772, 21.343597, 11.413486>,  <14.560082, 21.475796, 11.397751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.759772, 21.343597, 11.413486>,  <15.092588, 21.123266, 11.439710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.759772, 21.343597, 11.413486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011709, -0.135603, -0.990694,
		-0.554591, -0.823530, 0.119277,
		-0.832041, 0.550827, -0.065562,
		14.510160, 21.508844, 11.393817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.660840, 20.831854, 11.020361>,  <15.092588, 21.123266, 11.439710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.660840, 20.831854, 11.020361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568583, 21.220367, 10.996997>,  <14.513229, 21.453476, 10.982978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568583, 21.220367, 10.996997>,  <14.660840, 20.831854, 11.020361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568583, 21.220367, 10.996997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129296, -0.028905, -0.991184,
		-0.964410, -0.236161, -0.118916,
		-0.230642, 0.971283, -0.058411,
		14.499391, 21.511753, 10.979474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.466110, 20.933233, 10.381334>,  <14.660840, 20.831854, 11.020361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.466110, 20.933233, 10.381334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.463544, 21.319389, 10.485628>,  <14.462005, 21.551083, 10.548204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.463544, 21.319389, 10.485628>,  <14.466110, 20.933233, 10.381334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.463544, 21.319389, 10.485628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232015, 0.255063, -0.938676,
		-0.972691, 0.054473, -0.225621,
		-0.006415, 0.965389, 0.260736,
		14.461619, 21.609007, 10.563848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.074856, 21.292011, 9.868075>,  <14.466110, 20.933233, 10.381334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.074856, 21.292011, 9.868075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.328393, 21.550598, 10.037933>,  <14.480515, 21.705751, 10.139848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.328393, 21.550598, 10.037933>,  <14.074856, 21.292011, 9.868075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328393, 21.550598, 10.037933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312416, 0.288254, -0.905155,
		-0.707560, 0.706391, -0.019259,
		0.633842, 0.646468, 0.424644,
		14.518546, 21.744539, 10.165327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974061, 21.866566, 9.539779>,  <14.074856, 21.292011, 9.868075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974061, 21.866566, 9.539779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.337926, 21.908474, 9.700546>,  <14.556245, 21.933619, 9.797007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.337926, 21.908474, 9.700546>,  <13.974061, 21.866566, 9.539779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.337926, 21.908474, 9.700546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323162, 0.429364, -0.843334,
		-0.260925, 0.897034, 0.356719,
		0.909662, 0.104769, 0.401919,
		14.610825, 21.939905, 9.821122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.070645, 22.513397, 9.439148>,  <13.974061, 21.866566, 9.539779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.070645, 22.513397, 9.439148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.409814, 22.302490, 9.461121>,  <14.613316, 22.175945, 9.474304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.409814, 22.302490, 9.461121>,  <14.070645, 22.513397, 9.439148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409814, 22.302490, 9.461121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217699, 0.251852, -0.942962,
		0.483359, 0.811517, 0.328337,
		0.847922, -0.527268, 0.054931,
		14.664190, 22.144310, 9.477600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586027, 22.934435, 9.068133>,  <14.070645, 22.513397, 9.439148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.586027, 22.934435, 9.068133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.765529, 22.580353, 9.117172>,  <14.873229, 22.367903, 9.146595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.765529, 22.580353, 9.117172>,  <14.586027, 22.934435, 9.068133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.765529, 22.580353, 9.117172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410069, 0.082081, -0.908353,
		0.794018, 0.457899, 0.399830,
		0.448753, -0.885207, 0.122596,
		14.900154, 22.314791, 9.153951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262260, 23.038183, 8.908978>,  <14.586027, 22.934435, 9.068133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262260, 23.038183, 8.908978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.209628, 22.649143, 8.832315>,  <15.178048, 22.415718, 8.786318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.209628, 22.649143, 8.832315>,  <15.262260, 23.038183, 8.908978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.209628, 22.649143, 8.832315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153417, 0.171028, -0.973249,
		0.979362, -0.157465, 0.126709,
		-0.131581, -0.972602, -0.191656,
		15.170154, 22.357363, 8.774818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818365, 22.825861, 8.559080>,  <15.262260, 23.038183, 8.908978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818365, 22.825861, 8.559080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523200, 22.571022, 8.470000>,  <15.346101, 22.418119, 8.416553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523200, 22.571022, 8.470000>,  <15.818365, 22.825861, 8.559080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523200, 22.571022, 8.470000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218596, 0.086567, -0.971968,
		0.638515, -0.765908, 0.075388,
		-0.737912, -0.637096, -0.222699,
		15.301826, 22.379892, 8.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099836, 22.264872, 8.079871>,  <15.818365, 22.825861, 8.559080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099836, 22.264872, 8.079871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.701241, 22.258957, 8.046908>,  <15.462084, 22.255407, 8.027130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.701241, 22.258957, 8.046908>,  <16.099836, 22.264872, 8.079871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.701241, 22.258957, 8.046908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082306, 0.007358, -0.996580,
		0.015367, -0.999863, -0.006113,
		-0.996489, -0.014811, -0.082408,
		15.402295, 22.254520, 8.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962727, 21.707565, 7.601943>,  <16.099836, 22.264872, 8.079871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962727, 21.707565, 7.601943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.650474, 21.954082, 7.560388>,  <15.463121, 22.101994, 7.535454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.650474, 21.954082, 7.560388>,  <15.962727, 21.707565, 7.601943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650474, 21.954082, 7.560388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139364, 0.009607, -0.990195,
		-0.609253, -0.787457, -0.093388,
		-0.780633, 0.616294, -0.103890,
		15.416284, 22.138971, 7.529221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769977, 21.577692, 6.944171>,  <15.962727, 21.707565, 7.601943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769977, 21.577692, 6.944171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.558312, 21.902775, 7.041739>,  <15.431314, 22.097824, 7.100279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.558312, 21.902775, 7.041739>,  <15.769977, 21.577692, 6.944171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.558312, 21.902775, 7.041739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188677, 0.167570, -0.967637,
		-0.827279, -0.558057, 0.064668,
		-0.529161, 0.812707, 0.243919,
		15.399564, 22.146587, 7.114914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.085320, 21.498602, 6.618432>,  <15.769977, 21.577692, 6.944171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.085320, 21.498602, 6.618432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196342, 21.878254, 6.677920>,  <15.262955, 22.106045, 6.713614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196342, 21.878254, 6.677920>,  <15.085320, 21.498602, 6.618432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196342, 21.878254, 6.677920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280200, 0.228050, -0.932460,
		-0.918940, 0.217137, 0.329243,
		0.277555, 0.949129, 0.148722,
		15.279608, 22.162992, 6.722537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.360469, 21.834167, 6.461092>,  <15.085320, 21.498602, 6.618432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.360469, 21.834167, 6.461092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.733512, 21.963604, 6.397177>,  <14.957337, 22.041265, 6.358827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.733512, 21.963604, 6.397177>,  <14.360469, 21.834167, 6.461092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.733512, 21.963604, 6.397177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241713, 0.231282, -0.942382,
		-0.267988, 0.917496, 0.293911,
		0.932608, 0.323589, -0.159790,
		15.013294, 22.060680, 6.349240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788882, 22.338926, 6.281748>,  <14.360469, 21.834167, 6.461092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.788882, 22.338926, 6.281748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.483487, 22.089535, 6.349111>,  <13.300250, 21.939899, 6.389528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.483487, 22.089535, 6.349111>,  <13.788882, 22.338926, 6.281748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.483487, 22.089535, 6.349111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590168, -0.567660, 0.573989,
		-0.262272, 0.537623, 0.801358,
		-0.763488, -0.623478, 0.168407,
		13.254440, 21.902491, 6.399633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667969, 22.258636, 7.045167>,  <13.788882, 22.338926, 6.281748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667969, 22.258636, 7.045167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548062, 21.940903, 6.833819>,  <13.476119, 21.750263, 6.707011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548062, 21.940903, 6.833819>,  <13.667969, 22.258636, 7.045167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548062, 21.940903, 6.833819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712850, -0.554571, 0.429297,
		-0.634024, -0.247959, 0.732482,
		-0.299765, -0.794335, -0.528369,
		13.458133, 21.702602, 6.675309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525677, 21.663275, 7.504014>,  <13.667969, 22.258636, 7.045167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525677, 21.663275, 7.504014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623588, 21.547550, 7.133850>,  <13.682334, 21.478115, 6.911752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623588, 21.547550, 7.133850>,  <13.525677, 21.663275, 7.504014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.623588, 21.547550, 7.133850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815610, -0.454650, 0.357872,
		-0.524274, -0.842373, 0.124676,
		0.244778, -0.289310, -0.925410,
		13.697021, 21.460756, 6.856227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.553527, 20.903484, 7.442323>,  <13.525677, 21.663275, 7.504014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.553527, 20.903484, 7.442323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779704, 21.053085, 7.148275>,  <13.915410, 21.142845, 6.971847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779704, 21.053085, 7.148275>,  <13.553527, 20.903484, 7.442323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779704, 21.053085, 7.148275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751263, -0.601397, 0.271892,
		-0.340410, -0.706006, -0.621029,
		0.565442, 0.374001, -0.735118,
		13.949337, 21.165285, 6.927740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.932022, 20.309139, 7.083016>,  <13.553527, 20.903484, 7.442323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.932022, 20.309139, 7.083016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.101209, 20.664055, 7.009455>,  <14.202721, 20.877005, 6.965318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.101209, 20.664055, 7.009455>,  <13.932022, 20.309139, 7.083016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101209, 20.664055, 7.009455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886222, -0.362733, 0.288157,
		0.188970, -0.284861, -0.939758,
		0.422966, 0.887287, -0.183905,
		14.228099, 20.930241, 6.954283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429998, 20.334339, 6.614825>,  <13.932022, 20.309139, 7.083016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.429998, 20.334339, 6.614825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.498242, 20.589142, 6.915522>,  <14.539188, 20.742023, 7.095940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.498242, 20.589142, 6.915522>,  <14.429998, 20.334339, 6.614825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.498242, 20.589142, 6.915522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873757, -0.450458, 0.183404,
		0.455457, 0.625550, -0.633440,
		0.170610, 0.637005, 0.751742,
		14.549425, 20.780243, 7.141044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051744, 20.673929, 6.608620>,  <14.429998, 20.334339, 6.614825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051744, 20.673929, 6.608620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955865, 20.653572, 6.996426>,  <14.898337, 20.641357, 7.229109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955865, 20.653572, 6.996426>,  <15.051744, 20.673929, 6.608620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.955865, 20.653572, 6.996426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883526, -0.425351, 0.196109,
		0.402403, 0.903597, 0.146920,
		-0.239696, -0.050893, 0.969513,
		14.883956, 20.638304, 7.287280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680580, 20.575274, 6.955677>,  <15.051744, 20.673929, 6.608620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680580, 20.575274, 6.955677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.441600, 20.519901, 7.271624>,  <15.298212, 20.486677, 7.461192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.441600, 20.519901, 7.271624>,  <15.680580, 20.575274, 6.955677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.441600, 20.519901, 7.271624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739029, -0.477385, 0.475331,
		0.311270, 0.867721, 0.387519,
		-0.597451, -0.138431, 0.789867,
		15.262364, 20.478373, 7.508584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834646, 20.905081, 7.698989>,  <15.680580, 20.575274, 6.955677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834646, 20.905081, 7.698989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.642091, 20.554729, 7.712253>,  <15.526557, 20.344519, 7.720211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.642091, 20.554729, 7.712253>,  <15.834646, 20.905081, 7.698989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642091, 20.554729, 7.712253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775702, -0.408107, 0.481389,
		-0.408107, 0.257456, 0.875880,
		-0.481389, -0.875880, 0.033158,
		15.497674, 20.291965, 7.722200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696874, 20.485186, 8.441375>,  <15.834646, 20.905081, 7.698989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696874, 20.485186, 8.441375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767610, 20.246655, 8.128166>,  <15.810051, 20.103537, 7.940241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767610, 20.246655, 8.128166>,  <15.696874, 20.485186, 8.441375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767610, 20.246655, 8.128166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841878, -0.320483, 0.434203,
		-0.509871, -0.735993, 0.445360,
		0.176840, -0.596326, -0.783021,
		15.820662, 20.067757, 7.893260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769378, 20.052799, 9.019016>,  <15.696874, 20.485186, 8.441375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769378, 20.052799, 9.019016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.160126, 20.113716, 8.958975>,  <16.394575, 20.150267, 8.922951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.160126, 20.113716, 8.958975>,  <15.769378, 20.052799, 9.019016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160126, 20.113716, 8.958975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211373, -0.581597, 0.785536,
		0.032333, -0.799094, -0.600336,
		0.976871, 0.152294, -0.150102,
		16.453186, 20.159405, 8.913944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719186, 19.266964, 9.066143>,  <15.769378, 20.052799, 9.019016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.719186, 19.266964, 9.066143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.038246, 19.036385, 9.137094>,  <16.229683, 18.898037, 9.179664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.038246, 19.036385, 9.137094>,  <15.719186, 19.266964, 9.066143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.038246, 19.036385, 9.137094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503110, -0.473765, 0.722791,
		-0.332614, -0.665776, -0.667915,
		0.797652, -0.576445, 0.177378,
		16.277542, 18.863451, 9.190307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.405740, 18.575653, 9.003510>,  <15.719186, 19.266964, 9.066143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.405740, 18.575653, 9.003510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.714379, 18.616596, 9.254638>,  <15.899563, 18.641163, 9.405314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.714379, 18.616596, 9.254638>,  <15.405740, 18.575653, 9.003510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714379, 18.616596, 9.254638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519794, -0.467461, 0.715049,
		0.366673, -0.878067, -0.307487,
		0.771599, 0.102359, 0.627820,
		15.945859, 18.647305, 9.442984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722010, 17.973251, 9.007170>,  <15.405740, 18.575653, 9.003510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722010, 17.973251, 9.007170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786868, 18.180450, 9.343119>,  <15.825783, 18.304770, 9.544688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786868, 18.180450, 9.343119>,  <15.722010, 17.973251, 9.007170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786868, 18.180450, 9.343119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407750, -0.739899, 0.535060,
		0.898582, -0.429215, 0.091242,
		0.162146, 0.517999, 0.839872,
		15.835512, 18.335850, 9.595080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185217, 17.596775, 9.537089>,  <15.722010, 17.973251, 9.007170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185217, 17.596775, 9.537089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.939391, 17.858566, 9.713256>,  <15.791895, 18.015640, 9.818955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.939391, 17.858566, 9.713256>,  <16.185217, 17.596775, 9.537089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939391, 17.858566, 9.713256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329453, -0.720210, 0.610539,
		0.716777, 0.230120, 0.658237,
		-0.614566, 0.654479, 0.440416,
		15.755021, 18.054911, 9.845381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262106, 17.559364, 10.199405>,  <16.185217, 17.596775, 9.537089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262106, 17.559364, 10.199405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881974, 17.680923, 10.172514>,  <15.653895, 17.753859, 10.156380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881974, 17.680923, 10.172514>,  <16.262106, 17.559364, 10.199405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881974, 17.680923, 10.172514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285519, -0.765225, 0.576984,
		0.123901, 0.567519, 0.813985,
		-0.950330, 0.303897, -0.067226,
		15.596875, 17.772093, 10.152347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829268, 17.223877, 9.840859>,  <16.262106, 17.559364, 10.199405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.829268, 17.223877, 9.840859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.819378, 16.825298, 9.873055>,  <16.813444, 16.586151, 9.892373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.819378, 16.825298, 9.873055>,  <16.829268, 17.223877, 9.840859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819378, 16.825298, 9.873055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985758, 0.010901, -0.167816,
		0.166342, -0.083493, -0.982527,
		-0.024722, -0.996448, 0.080491,
		16.811962, 16.526363, 9.897202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759872, 16.865969, 9.183262>,  <16.829268, 17.223877, 9.840859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.759872, 16.865969, 9.183262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589611, 16.717857, 9.513526>,  <16.487455, 16.628990, 9.711684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589611, 16.717857, 9.513526>,  <16.759872, 16.865969, 9.183262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589611, 16.717857, 9.513526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900760, 0.086330, -0.425652,
		0.086330, -0.924901, -0.370278,
		0.425652, 0.370278, -0.825660,
		16.461916, 16.606773, 9.761224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107454, 16.660341, 9.009337>,  <16.759872, 16.865969, 9.183262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.107454, 16.660341, 9.009337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.078423, 16.609314, 9.405005>,  <16.061003, 16.578697, 9.642406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.078423, 16.609314, 9.405005>,  <16.107454, 16.660341, 9.009337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078423, 16.609314, 9.405005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997313, -0.000628, -0.073259,
		0.009966, -0.991832, -0.127162,
		-0.072581, -0.127550, 0.989173,
		16.056648, 16.571043, 9.701756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906243, 15.942748, 9.200776>,  <16.107454, 16.660341, 9.009337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906243, 15.942748, 9.200776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.799520, 16.264534, 9.413058>,  <15.735485, 16.457605, 9.540428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.799520, 16.264534, 9.413058>,  <15.906243, 15.942748, 9.200776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.799520, 16.264534, 9.413058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962817, -0.198272, -0.183500,
		-0.042396, -0.559932, 0.827453,
		-0.266808, 0.804465, 0.530706,
		15.719477, 16.505873, 9.572270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.437601, 15.626129, 9.651025>,  <15.906243, 15.942748, 9.200776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.437601, 15.626129, 9.651025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.377501, 16.020760, 9.625431>,  <15.341442, 16.257538, 9.610075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.377501, 16.020760, 9.625431>,  <15.437601, 15.626129, 9.651025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.377501, 16.020760, 9.625431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942900, -0.162455, -0.290770,
		-0.297261, 0.016643, 0.954651,
		-0.150249, 0.986575, -0.063984,
		15.332427, 16.316732, 9.606236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777209, 15.877475, 10.299963>,  <15.437601, 15.626129, 9.651025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777209, 15.877475, 10.299963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990506, 15.696304, 10.585763>,  <16.118484, 15.587602, 10.757243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990506, 15.696304, 10.585763>,  <15.777209, 15.877475, 10.299963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990506, 15.696304, 10.585763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796232, 0.016603, 0.604764,
		-0.285776, -0.891393, -0.351781,
		0.533242, -0.452926, 0.714501,
		16.150478, 15.560427, 10.800113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236591, 15.257828, 10.287092>,  <15.777209, 15.877475, 10.299963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.236591, 15.257828, 10.287092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.491135, 15.087593, 10.544439>,  <16.643862, 14.985452, 10.698848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.491135, 15.087593, 10.544439>,  <16.236591, 15.257828, 10.287092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491135, 15.087593, 10.544439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771276, -0.336575, 0.540232,
		-0.013374, -0.839996, -0.542428,
		0.636360, -0.425587, 0.643367,
		16.682043, 14.959917, 10.737450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973470, 14.628977, 10.508204>,  <16.236591, 15.257828, 10.287092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.973470, 14.628977, 10.508204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282570, 14.648861, 10.761309>,  <16.468029, 14.660791, 10.913171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282570, 14.648861, 10.761309>,  <15.973470, 14.628977, 10.508204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282570, 14.648861, 10.761309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563210, -0.405976, 0.719707,
		0.292663, -0.912531, -0.285721,
		0.772750, 0.049711, 0.632760,
		16.514395, 14.663774, 10.951137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194641, 13.955508, 10.743658>,  <15.973470, 14.628977, 10.508204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.194641, 13.955508, 10.743658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.226612, 14.279335, 10.976282>,  <16.245794, 14.473631, 11.115856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.226612, 14.279335, 10.976282>,  <16.194641, 13.955508, 10.743658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.226612, 14.279335, 10.976282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680241, -0.382161, 0.625480,
		0.728618, -0.445592, 0.520157,
		0.079925, 0.809568, 0.581560,
		16.250589, 14.522205, 11.150750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402027, 13.492892, 11.391940>,  <16.194641, 13.955508, 10.743658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402027, 13.492892, 11.391940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.411728, 13.202465, 11.666818>,  <16.417549, 13.028209, 11.831744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.411728, 13.202465, 11.666818>,  <16.402027, 13.492892, 11.391940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411728, 13.202465, 11.666818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994824, -0.050321, -0.088277,
		0.098675, 0.685779, 0.721090,
		0.024253, -0.726069, 0.687194,
		16.419004, 12.984645, 11.872976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983580, 13.604958, 11.756636>,  <16.402027, 13.492892, 11.391940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983580, 13.604958, 11.756636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890766, 13.216942, 11.785441>,  <16.835079, 12.984133, 11.802725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890766, 13.216942, 11.785441>,  <16.983580, 13.604958, 11.756636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890766, 13.216942, 11.785441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947088, -0.242180, -0.210653,
		0.221781, 0.019325, 0.974905,
		-0.232031, -0.970039, 0.072014,
		16.821157, 12.925930, 11.807045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.484070, 13.275713, 12.167131>,  <16.983580, 13.604958, 11.756636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.484070, 13.275713, 12.167131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327415, 12.990143, 11.934949>,  <17.233423, 12.818801, 11.795639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327415, 12.990143, 11.934949>,  <17.484070, 13.275713, 12.167131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.327415, 12.990143, 11.934949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917782, -0.258159, -0.301712,
		0.065550, -0.650894, 0.756333,
		-0.391637, -0.713926, -0.580457,
		17.209925, 12.775965, 11.760812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009815, 12.660192, 12.233110>,  <17.484070, 13.275713, 12.167131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.009815, 12.660192, 12.233110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.767700, 12.649319, 11.914894>,  <17.622431, 12.642796, 11.723964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.767700, 12.649319, 11.914894>,  <18.009815, 12.660192, 12.233110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767700, 12.649319, 11.914894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761137, -0.312322, -0.568441,
		-0.233014, -0.949587, 0.209735,
		-0.605289, -0.027182, -0.795542,
		17.586113, 12.641164, 11.676231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.150114, 17.047514, 17.690248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.530964, 17.099339, 17.801004>,  <18.759474, 17.130434, 17.867458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.530964, 17.099339, 17.801004>,  <18.150114, 17.047514, 17.690248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530964, 17.099339, 17.801004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257606, 0.147647, -0.954903,
		-0.164602, 0.980517, 0.107202,
		0.952127, 0.129563, 0.276890,
		18.816603, 17.138206, 17.884071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372862, 17.754763, 17.415579>,  <18.150114, 17.047514, 17.690248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372862, 17.754763, 17.415579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.681759, 17.506187, 17.468422>,  <18.867098, 17.357042, 17.500128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.681759, 17.506187, 17.468422>,  <18.372862, 17.754763, 17.415579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.681759, 17.506187, 17.468422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327430, 0.211096, -0.920993,
		0.544454, 0.754487, 0.366496,
		0.772243, -0.621440, 0.132110,
		18.913431, 17.319756, 17.508055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965567, 18.143940, 17.047344>,  <18.372862, 17.754763, 17.415579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965567, 18.143940, 17.047344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.066868, 17.758179, 17.077778>,  <19.127649, 17.526722, 17.096037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.066868, 17.758179, 17.077778>,  <18.965567, 18.143940, 17.047344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.066868, 17.758179, 17.077778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182535, -0.029597, -0.982754,
		0.950023, 0.262775, 0.168541,
		0.253255, -0.964403, 0.076083,
		19.142845, 17.468857, 17.100603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680962, 18.121429, 16.720625>,  <18.965567, 18.143940, 17.047344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680962, 18.121429, 16.720625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.568291, 17.737720, 16.712076>,  <19.500689, 17.507496, 16.706947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.568291, 17.737720, 16.712076>,  <19.680962, 18.121429, 16.720625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.568291, 17.737720, 16.712076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400414, -0.097276, -0.911156,
		0.871966, -0.265212, 0.411506,
		-0.281679, -0.959271, -0.021373,
		19.483788, 17.449940, 16.705664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241268, 17.648682, 16.461212>,  <19.680962, 18.121429, 16.720625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241268, 17.648682, 16.461212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.883350, 17.486401, 16.386650>,  <19.668600, 17.389032, 16.341913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.883350, 17.486401, 16.386650>,  <20.241268, 17.648682, 16.461212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883350, 17.486401, 16.386650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318124, -0.286401, -0.903754,
		0.313268, -0.867975, 0.385334,
		-0.894796, -0.405701, -0.186404,
		19.614912, 17.364691, 16.330729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333681, 17.001781, 16.132301>,  <20.241268, 17.648682, 16.461212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333681, 17.001781, 16.132301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.967907, 17.139233, 16.046764>,  <19.748444, 17.221704, 15.995442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.967907, 17.139233, 16.046764>,  <20.333681, 17.001781, 16.132301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967907, 17.139233, 16.046764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184265, -0.116956, -0.975893,
		-0.360356, -0.931794, 0.043629,
		-0.914435, 0.343630, -0.213842,
		19.693577, 17.242321, 15.982612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215580, 16.741516, 15.474469>,  <20.333681, 17.001781, 16.132301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215580, 16.741516, 15.474469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.919510, 17.010479, 15.475628>,  <19.741867, 17.171856, 15.476323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.919510, 17.010479, 15.475628>,  <20.215580, 16.741516, 15.474469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919510, 17.010479, 15.475628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015315, -0.012552, -0.999804,
		-0.672239, -0.740075, 0.019589,
		-0.740176, 0.672407, 0.002896,
		19.697456, 17.212200, 15.476497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892250, 16.582769, 14.930878>,  <20.215580, 16.741516, 15.474469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892250, 16.582769, 14.930878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.770176, 16.957619, 14.998600>,  <19.696932, 17.182528, 15.039233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.770176, 16.957619, 14.998600>,  <19.892250, 16.582769, 14.930878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.770176, 16.957619, 14.998600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078530, 0.152416, -0.985192,
		-0.949050, -0.313959, 0.027077,
		-0.305183, 0.937123, 0.169306,
		19.678621, 17.238756, 15.049392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.264982, 16.583153, 14.458985>,  <19.892250, 16.582769, 14.930878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.264982, 16.583153, 14.458985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.373711, 16.962296, 14.525530>,  <19.438948, 17.189781, 14.565456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.373711, 16.962296, 14.525530>,  <19.264982, 16.583153, 14.458985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373711, 16.962296, 14.525530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225945, 0.230897, -0.946380,
		-0.935448, 0.219658, 0.276926,
		0.271822, 0.947859, 0.166362,
		19.455257, 17.246653, 14.575438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847120, 16.916611, 14.074460>,  <19.264982, 16.583153, 14.458985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.847120, 16.916611, 14.074460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.124104, 17.197224, 14.141819>,  <19.290293, 17.365591, 14.182235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.124104, 17.197224, 14.141819>,  <18.847120, 16.916611, 14.074460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.124104, 17.197224, 14.141819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176405, 0.390963, -0.903343,
		-0.699561, 0.595820, 0.394479,
		0.692457, 0.701531, 0.168397,
		19.331841, 17.407682, 14.192338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474821, 17.574789, 14.097384>,  <18.847120, 16.916611, 14.074460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474821, 17.574789, 14.097384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.859558, 17.625652, 14.000483>,  <19.090401, 17.656170, 13.942342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.859558, 17.625652, 14.000483>,  <18.474821, 17.574789, 14.097384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.859558, 17.625652, 14.000483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271239, 0.559204, -0.783403,
		0.035853, 0.819220, 0.572357,
		0.961844, 0.127159, -0.242254,
		19.148111, 17.663799, 13.927807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500465, 18.222216, 13.856015>,  <18.474821, 17.574789, 14.097384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.500465, 18.222216, 13.856015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.867504, 18.099854, 13.754480>,  <19.087729, 18.026436, 13.693560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.867504, 18.099854, 13.754480>,  <18.500465, 18.222216, 13.856015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.867504, 18.099854, 13.754480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005904, 0.628013, -0.778181,
		0.397465, 0.715556, 0.574457,
		0.917599, -0.305908, -0.253837,
		19.142784, 18.008081, 13.678329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916880, 18.805847, 13.751682>,  <18.500465, 18.222216, 13.856015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.916880, 18.805847, 13.751682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.093826, 18.528526, 13.524122>,  <19.199995, 18.362135, 13.387587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.093826, 18.528526, 13.524122>,  <18.916880, 18.805847, 13.751682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.093826, 18.528526, 13.524122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004776, 0.632512, -0.774536,
		0.896821, 0.345347, 0.276491,
		0.442367, -0.693300, -0.568899,
		19.226536, 18.320536, 13.353453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488466, 19.171972, 13.375713>,  <18.916880, 18.805847, 13.751682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.488466, 19.171972, 13.375713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.416725, 18.823864, 13.192209>,  <19.373680, 18.614998, 13.082107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.416725, 18.823864, 13.192209>,  <19.488466, 19.171972, 13.375713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.416725, 18.823864, 13.192209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056879, 0.456368, -0.887971,
		0.982140, -0.185353, -0.032350,
		-0.179352, -0.870272, -0.458759,
		19.362919, 18.562782, 13.054582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.824688, 19.268652, 12.807086>,  <19.488466, 19.171972, 13.375713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.824688, 19.268652, 12.807086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.554005, 18.986088, 12.724088>,  <19.391596, 18.816549, 12.674289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.554005, 18.986088, 12.724088>,  <19.824688, 19.268652, 12.807086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554005, 18.986088, 12.724088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229378, 0.470081, -0.852297,
		0.699610, -0.529160, -0.480141,
		-0.676706, -0.706409, -0.207496,
		19.350992, 18.774164, 12.661839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022070, 19.024748, 12.146781>,  <19.824688, 19.268652, 12.807086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022070, 19.024748, 12.146781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.630295, 18.965286, 12.201340>,  <19.395229, 18.929609, 12.234075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.630295, 18.965286, 12.201340>,  <20.022070, 19.024748, 12.146781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630295, 18.965286, 12.201340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184455, 0.385977, -0.903879,
		0.081718, -0.910453, -0.405461,
		-0.979438, -0.148652, 0.136396,
		19.336464, 18.920691, 12.242258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.672817, 18.786585, 11.537160>,  <20.022070, 19.024748, 12.146781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.672817, 18.786585, 11.537160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.350693, 18.915783, 11.736014>,  <19.157417, 18.993301, 11.855328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.350693, 18.915783, 11.736014>,  <19.672817, 18.786585, 11.537160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350693, 18.915783, 11.736014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333821, 0.445935, -0.830485,
		-0.489934, -0.834755, -0.251294,
		-0.805312, 0.322996, 0.497137,
		19.109098, 19.012682, 11.885156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.187279, 18.640137, 11.089422>,  <19.672817, 18.786585, 11.537160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.187279, 18.640137, 11.089422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.999596, 18.900768, 11.327847>,  <18.886986, 19.057148, 11.470901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.999596, 18.900768, 11.327847>,  <19.187279, 18.640137, 11.089422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.999596, 18.900768, 11.327847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492972, 0.366749, -0.788970,
		-0.732682, -0.664031, 0.149130,
		-0.469207, 0.651581, 0.596060,
		18.858833, 19.096243, 11.506664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.462168, 18.513109, 11.003983>,  <19.187279, 18.640137, 11.089422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.462168, 18.513109, 11.003983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.516693, 18.889797, 11.127001>,  <18.549408, 19.115810, 11.200812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.516693, 18.889797, 11.127001>,  <18.462168, 18.513109, 11.003983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.516693, 18.889797, 11.127001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503458, 0.333218, -0.797180,
		-0.853200, -0.046171, 0.519537,
		0.136312, 0.941719, 0.307546,
		18.557587, 19.172314, 11.219265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783342, 18.678732, 10.915444>,  <18.462168, 18.513109, 11.003983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783342, 18.678732, 10.915444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.022842, 18.998425, 10.936334>,  <18.166542, 19.190241, 10.948868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.022842, 18.998425, 10.936334>,  <17.783342, 18.678732, 10.915444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022842, 18.998425, 10.936334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340805, 0.313238, -0.886416,
		-0.724810, 0.512943, 0.459934,
		0.598750, 0.799232, 0.052224,
		18.202467, 19.238194, 10.952001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323092, 19.196587, 10.652361>,  <17.783342, 18.678732, 10.915444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323092, 19.196587, 10.652361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.705425, 19.313511, 10.640111>,  <17.934826, 19.383665, 10.632761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.705425, 19.313511, 10.640111>,  <17.323092, 19.196587, 10.652361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.705425, 19.313511, 10.640111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155089, 0.413108, -0.897379,
		-0.249664, 0.862494, 0.440197,
		0.955832, 0.292313, -0.030626,
		17.992174, 19.401205, 10.630923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.261206, 19.877531, 10.273498>,  <17.323092, 19.196587, 10.652361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.261206, 19.877531, 10.273498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.656719, 19.820290, 10.256405>,  <17.894028, 19.785946, 10.246149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.656719, 19.820290, 10.256405>,  <17.261206, 19.877531, 10.273498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.656719, 19.820290, 10.256405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024343, 0.436730, -0.899263,
		0.147348, 0.888138, 0.435316,
		0.988785, -0.143101, -0.042732,
		17.953354, 19.777359, 10.243586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.516495, 19.780632, 9.950991>,  <17.261206, 19.877531, 10.273498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.516495, 19.780632, 9.950991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.131966, 19.672165, 9.970284>,  <15.901248, 19.607084, 9.981861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.131966, 19.672165, 9.970284>,  <16.516495, 19.780632, 9.950991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131966, 19.672165, 9.970284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050457, -0.001222, 0.998725,
		-0.270763, 0.962531, 0.014857,
		-0.961323, -0.271168, 0.048235,
		15.843569, 19.590815, 9.984755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249750, 19.968786, 10.528121>,  <16.516495, 19.780632, 9.950991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249750, 19.968786, 10.528121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.943654, 19.730103, 10.431504>,  <15.759995, 19.586893, 10.373534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.943654, 19.730103, 10.431504>,  <16.249750, 19.968786, 10.528121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.943654, 19.730103, 10.431504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227045, -0.100926, 0.968641,
		-0.602374, 0.796086, -0.058247,
		-0.765242, -0.596709, -0.241543,
		15.714082, 19.551090, 10.359041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732003, 20.215714, 10.994848>,  <16.249750, 19.968786, 10.528121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732003, 20.215714, 10.994848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.619483, 19.848919, 10.881706>,  <15.551970, 19.628841, 10.813821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.619483, 19.848919, 10.881706>,  <15.732003, 20.215714, 10.994848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619483, 19.848919, 10.881706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357226, -0.173508, 0.917761,
		-0.890651, 0.359210, -0.278764,
		-0.281301, -0.916986, -0.282854,
		15.535092, 19.573824, 10.796850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.053174, 20.083702, 11.378582>,  <15.732003, 20.215714, 10.994848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.053174, 20.083702, 11.378582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.196410, 19.724625, 11.275886>,  <15.282351, 19.509178, 11.214268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.196410, 19.724625, 11.275886>,  <15.053174, 20.083702, 11.378582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196410, 19.724625, 11.275886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349505, -0.383860, 0.854691,
		-0.865805, -0.216324, -0.451205,
		0.358090, -0.897694, -0.256742,
		15.303837, 19.455317, 11.198863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537148, 19.574133, 11.543223>,  <15.053174, 20.083702, 11.378582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537148, 19.574133, 11.543223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.877374, 19.367374, 11.504522>,  <15.081509, 19.243320, 11.481301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.877374, 19.367374, 11.504522>,  <14.537148, 19.574133, 11.543223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877374, 19.367374, 11.504522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224704, -0.523582, 0.821809,
		-0.475444, -0.677262, -0.561489,
		0.850566, -0.516893, -0.096751,
		15.132543, 19.212305, 11.475496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.322502, 18.970079, 11.798003>,  <14.537148, 19.574133, 11.543223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.322502, 18.970079, 11.798003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.719949, 18.996819, 11.834354>,  <14.958417, 19.012861, 11.856165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.719949, 18.996819, 11.834354>,  <14.322502, 18.970079, 11.798003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719949, 18.996819, 11.834354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046898, -0.487899, 0.871640,
		0.102605, -0.870337, -0.481649,
		0.993616, 0.066847, 0.090878,
		15.018034, 19.016872, 11.861618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.441648, 18.416983, 12.209259>,  <14.322502, 18.970079, 11.798003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.441648, 18.416983, 12.209259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.785228, 18.620800, 12.229549>,  <14.991375, 18.743090, 12.241723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.785228, 18.620800, 12.229549>,  <14.441648, 18.416983, 12.209259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.785228, 18.620800, 12.229549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265922, -0.528527, 0.806192,
		0.437600, -0.678988, -0.589476,
		0.858948, 0.509544, 0.050726,
		15.042912, 18.773663, 12.244767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025108, 17.911839, 12.272068>,  <14.441648, 18.416983, 12.209259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.025108, 17.911839, 12.272068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.135818, 18.260811, 12.433194>,  <15.202243, 18.470194, 12.529870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.135818, 18.260811, 12.433194>,  <15.025108, 17.911839, 12.272068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135818, 18.260811, 12.433194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275889, -0.473686, 0.836365,
		0.920479, -0.120350, -0.371798,
		0.276772, 0.872432, 0.402815,
		15.218849, 18.522541, 12.554039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793624, 17.805254, 12.542921>,  <15.025108, 17.911839, 12.272068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793624, 17.805254, 12.542921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.623389, 18.119362, 12.722801>,  <15.521249, 18.307827, 12.830729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.623389, 18.119362, 12.722801>,  <15.793624, 17.805254, 12.542921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623389, 18.119362, 12.722801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395403, -0.285630, 0.872967,
		0.813961, 0.549336, -0.188937,
		-0.425587, 0.785268, 0.449701,
		15.495713, 18.354942, 12.857712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207382, 17.934967, 13.084579>,  <15.793624, 17.805254, 12.542921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207382, 17.934967, 13.084579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.899228, 18.165836, 13.192930>,  <15.714335, 18.304358, 13.257941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.899228, 18.165836, 13.192930>,  <16.207382, 17.934967, 13.084579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899228, 18.165836, 13.192930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150542, -0.248179, 0.956945,
		0.619548, 0.777997, 0.104306,
		-0.770387, 0.577171, 0.270880,
		15.668112, 18.338987, 13.274195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412138, 18.574301, 13.448326>,  <16.207382, 17.934967, 13.084579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.412138, 18.574301, 13.448326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.031540, 18.514153, 13.555693>,  <15.803182, 18.478064, 13.620112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.031540, 18.514153, 13.555693>,  <16.412138, 18.574301, 13.448326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.031540, 18.514153, 13.555693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284609, -0.098819, 0.953537,
		-0.116859, 0.983679, 0.136823,
		-0.951494, -0.150371, 0.268416,
		15.746092, 18.469042, 13.636217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403166, 18.847834, 14.093628>,  <16.412138, 18.574301, 13.448326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403166, 18.847834, 14.093628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.080490, 18.612637, 14.069916>,  <15.886885, 18.471518, 14.055689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.080490, 18.612637, 14.069916>,  <16.403166, 18.847834, 14.093628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080490, 18.612637, 14.069916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156718, -0.309563, 0.937875,
		-0.569815, 0.747286, 0.341870,
		-0.806691, -0.587992, -0.059281,
		15.838483, 18.436239, 14.052132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006823, 19.033474, 14.684288>,  <16.403166, 18.847834, 14.093628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006823, 19.033474, 14.684288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.908963, 18.668655, 14.552639>,  <15.850247, 18.449764, 14.473650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.908963, 18.668655, 14.552639>,  <16.006823, 19.033474, 14.684288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.908963, 18.668655, 14.552639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213368, -0.381757, 0.899297,
		-0.945844, 0.149790, 0.287998,
		-0.244651, -0.912044, -0.329122,
		15.835568, 18.395042, 14.453902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687091, 18.801310, 15.199657>,  <16.006823, 19.033474, 14.684288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687091, 18.801310, 15.199657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.787984, 18.465542, 15.007093>,  <15.848520, 18.264082, 14.891555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.787984, 18.465542, 15.007093>,  <15.687091, 18.801310, 15.199657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.787984, 18.465542, 15.007093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426126, -0.350307, 0.834087,
		-0.868790, -0.415525, 0.269339,
		0.252233, -0.839419, -0.481409,
		15.863654, 18.213717, 14.862671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360386, 18.181509, 15.541943>,  <15.687091, 18.801310, 15.199657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360386, 18.181509, 15.541943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.676787, 18.035973, 15.345196>,  <15.866629, 17.948650, 15.227148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.676787, 18.035973, 15.345196>,  <15.360386, 18.181509, 15.541943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676787, 18.035973, 15.345196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324597, -0.431899, 0.841487,
		-0.518605, -0.825277, -0.223531,
		0.791003, -0.363842, -0.491867,
		15.914088, 17.926821, 15.197636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462790, 17.632593, 15.869994>,  <15.360386, 18.181509, 15.541943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.462790, 17.632593, 15.869994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.802539, 17.655754, 15.660151>,  <16.006388, 17.669651, 15.534245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.802539, 17.655754, 15.660151>,  <15.462790, 17.632593, 15.869994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802539, 17.655754, 15.660151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466813, -0.546215, 0.695510,
		-0.246277, -0.835641, -0.490969,
		0.849372, 0.057903, -0.524609,
		16.057350, 17.673124, 15.502768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726144, 16.932472, 15.782021>,  <15.462790, 17.632593, 15.869994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726144, 16.932472, 15.782021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.011860, 17.211910, 15.765287>,  <16.183290, 17.379574, 15.755248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.011860, 17.211910, 15.765287>,  <15.726144, 16.932472, 15.782021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011860, 17.211910, 15.765287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475803, -0.440919, 0.761053,
		0.513225, -0.563517, -0.647339,
		0.714291, 0.698597, -0.041832,
		16.226147, 17.421490, 15.752738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338837, 16.596531, 15.771074>,  <15.726144, 16.932472, 15.782021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.338837, 16.596531, 15.771074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.412224, 16.969387, 15.895945>,  <16.456257, 17.193100, 15.970867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.412224, 16.969387, 15.895945>,  <16.338837, 16.596531, 15.771074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.412224, 16.969387, 15.895945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491976, -0.362002, 0.791779,
		0.851058, 0.008317, -0.525006,
		0.183468, 0.932140, 0.312177,
		16.467264, 17.249029, 15.989597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.997852, 16.489613, 16.148085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.872345, 16.856194, 16.247412>,  <16.797041, 17.076143, 16.307009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.872345, 16.856194, 16.247412>,  <16.997852, 16.489613, 16.148085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872345, 16.856194, 16.247412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318504, -0.144784, 0.936799,
		0.894486, 0.373027, -0.246466,
		-0.313767, 0.916454, 0.248318,
		16.778215, 17.131130, 16.321907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445065, 16.707962, 16.584538>,  <16.997852, 16.489613, 16.148085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445065, 16.707962, 16.584538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.145473, 16.961201, 16.662737>,  <16.965717, 17.113144, 16.709656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.145473, 16.961201, 16.662737>,  <17.445065, 16.707962, 16.584538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145473, 16.961201, 16.662737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233192, -0.024312, 0.972127,
		0.620202, 0.773692, -0.129423,
		-0.748980, 0.633095, 0.195497,
		16.920780, 17.151129, 16.721386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645061, 17.296297, 17.032326>,  <17.445065, 16.707962, 16.584538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645061, 17.296297, 17.032326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.249588, 17.263428, 17.082523>,  <17.012304, 17.243706, 17.112642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.249588, 17.263428, 17.082523>,  <17.645061, 17.296297, 17.032326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249588, 17.263428, 17.082523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133935, -0.106860, 0.985212,
		-0.067548, 0.990873, 0.116656,
		-0.988685, -0.082174, 0.125494,
		16.952982, 17.238775, 17.120173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433203, 17.790623, 17.564541>,  <17.645061, 17.296297, 17.032326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.433203, 17.790623, 17.564541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.163395, 17.497219, 17.531107>,  <17.001511, 17.321177, 17.511047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.163395, 17.497219, 17.531107>,  <17.433203, 17.790623, 17.564541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163395, 17.497219, 17.531107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059153, -0.166551, 0.984257,
		-0.735885, 0.658955, 0.155731,
		-0.674518, -0.733511, -0.083583,
		16.961039, 17.277166, 17.506033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021948, 17.987289, 18.035698>,  <17.433203, 17.790623, 17.564541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021948, 17.987289, 18.035698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.938557, 17.601746, 17.969355>,  <16.888521, 17.370419, 17.929548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.938557, 17.601746, 17.969355>,  <17.021948, 17.987289, 18.035698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938557, 17.601746, 17.969355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085316, -0.186863, 0.978675,
		-0.974299, 0.189883, 0.121190,
		-0.208479, -0.963860, -0.165860,
		16.876013, 17.312588, 17.919596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434774, 17.799322, 18.486729>,  <17.021948, 17.987289, 18.035698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434774, 17.799322, 18.486729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.601231, 17.447483, 18.394526>,  <16.701105, 17.236380, 18.339203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.601231, 17.447483, 18.394526>,  <16.434774, 17.799322, 18.486729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601231, 17.447483, 18.394526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066356, -0.282203, 0.957057,
		-0.906875, -0.382976, -0.175803,
		0.416142, -0.879597, -0.230510,
		16.726074, 17.183603, 18.325373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908267, 17.414635, 18.792046>,  <16.434774, 17.799322, 18.486729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908267, 17.414635, 18.792046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.236897, 17.193577, 18.736046>,  <16.434074, 17.060942, 18.702446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.236897, 17.193577, 18.736046>,  <15.908267, 17.414635, 18.792046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236897, 17.193577, 18.736046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125492, -0.414853, 0.901193,
		-0.556119, -0.722828, -0.410185,
		0.821574, -0.552645, -0.139999,
		16.483370, 17.027784, 18.694046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831337, 16.772707, 18.967609>,  <15.908267, 17.414635, 18.792046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831337, 16.772707, 18.967609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.230949, 16.760296, 18.980106>,  <16.470716, 16.752850, 18.987604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.230949, 16.760296, 18.980106>,  <15.831337, 16.772707, 18.967609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.230949, 16.760296, 18.980106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042122, -0.466641, 0.883443,
		-0.012830, -0.883903, -0.467495,
		0.999030, -0.031026, 0.031244,
		16.530659, 16.750988, 18.989479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.050659, 16.068306, 19.147341>,  <15.831337, 16.772707, 18.967609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.050659, 16.068306, 19.147341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.333126, 16.330929, 19.253370>,  <16.502605, 16.488503, 19.316988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.333126, 16.330929, 19.253370>,  <16.050659, 16.068306, 19.147341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333126, 16.330929, 19.253370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108040, -0.270071, 0.956760,
		0.699754, -0.704271, -0.119781,
		0.706167, 0.656555, 0.265073,
		16.544977, 16.527895, 19.332891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510038, 15.732315, 19.544252>,  <16.050659, 16.068306, 19.147341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510038, 15.732315, 19.544252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.645370, 16.096867, 19.637997>,  <16.726570, 16.315598, 19.694242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.645370, 16.096867, 19.637997>,  <16.510038, 15.732315, 19.544252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645370, 16.096867, 19.637997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010925, -0.245226, 0.969404,
		0.940965, -0.330537, -0.073009,
		0.338328, 0.911378, 0.234360,
		16.746868, 16.370279, 19.708305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006105, 15.536771, 19.991907>,  <16.510038, 15.732315, 19.544252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006105, 15.536771, 19.991907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.892681, 15.913467, 20.064257>,  <16.824627, 16.139486, 20.107666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.892681, 15.913467, 20.064257>,  <17.006105, 15.536771, 19.991907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892681, 15.913467, 20.064257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058766, -0.171196, 0.983483,
		0.957152, 0.289507, -0.006798,
		-0.283561, 0.941742, 0.180874,
		16.807613, 16.195990, 20.118519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474932, 15.779437, 20.437092>,  <17.006105, 15.536771, 19.991907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474932, 15.779437, 20.437092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.173992, 16.037151, 20.492041>,  <16.993429, 16.191780, 20.525009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.173992, 16.037151, 20.492041>,  <17.474932, 15.779437, 20.437092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173992, 16.037151, 20.492041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196481, 0.020421, 0.980295,
		0.628784, 0.764513, -0.141954,
		-0.752347, 0.644285, 0.137372,
		16.948288, 16.230436, 20.533253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.709934, 16.138390, 20.987017>,  <17.474932, 15.779437, 20.437092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.709934, 16.138390, 20.987017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.330631, 16.260120, 20.950813>,  <17.103048, 16.333158, 20.929092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.330631, 16.260120, 20.950813>,  <17.709934, 16.138390, 20.987017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330631, 16.260120, 20.950813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005188, 0.270175, 0.962797,
		0.317457, 0.913450, -0.254617,
		-0.948259, 0.304325, -0.090508,
		17.046154, 16.351418, 20.923660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.576414, 16.896353, 21.218435>,  <17.709934, 16.138390, 20.987017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.576414, 16.896353, 21.218435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.268009, 16.649158, 21.279930>,  <17.082966, 16.500843, 21.316828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.268009, 16.649158, 21.279930>,  <17.576414, 16.896353, 21.218435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268009, 16.649158, 21.279930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193473, 0.002692, 0.981102,
		-0.606720, 0.786186, 0.117488,
		-0.771012, -0.617985, 0.153739,
		17.036705, 16.463762, 21.326052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298498, 17.168081, 21.803652>,  <17.576414, 16.896353, 21.218435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298498, 17.168081, 21.803652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.116070, 16.812325, 21.791142>,  <17.006613, 16.598869, 21.783636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.116070, 16.812325, 21.791142>,  <17.298498, 17.168081, 21.803652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116070, 16.812325, 21.791142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060723, -0.003960, 0.998147,
		-0.887869, 0.457126, -0.052201,
		-0.456072, -0.889393, -0.031274,
		16.979248, 16.545507, 21.781759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690580, 17.314981, 22.127449>,  <17.298498, 17.168081, 21.803652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.690580, 17.314981, 22.127449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.742424, 16.920292, 22.166605>,  <16.773531, 16.683479, 22.190098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.742424, 16.920292, 22.166605>,  <16.690580, 17.314981, 22.127449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742424, 16.920292, 22.166605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208602, 0.069378, 0.975537,
		-0.969374, -0.146857, -0.196841,
		0.129608, -0.986722, 0.097888,
		16.781307, 16.624275, 22.195971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063848, 17.108023, 22.679819>,  <16.690580, 17.314981, 22.127449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063848, 17.108023, 22.679819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.344357, 16.824650, 22.647959>,  <16.512661, 16.654625, 22.628843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.344357, 16.824650, 22.647959>,  <16.063848, 17.108023, 22.679819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344357, 16.824650, 22.647959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026384, -0.085858, 0.995958,
		-0.712409, -0.700535, -0.041519,
		0.701268, -0.708434, -0.079648,
		16.554737, 16.612120, 22.624063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840154, 16.627459, 23.130577>,  <16.063848, 17.108023, 22.679819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.840154, 16.627459, 23.130577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.227856, 16.553352, 23.065804>,  <16.460476, 16.508888, 23.026939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.227856, 16.553352, 23.065804>,  <15.840154, 16.627459, 23.130577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227856, 16.553352, 23.065804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151286, -0.070337, 0.985984,
		-0.194060, -0.980168, -0.040146,
		0.969254, -0.185267, -0.161936,
		16.518631, 16.497772, 23.017223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001543, 16.114056, 23.593267>,  <15.840154, 16.627459, 23.130577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001543, 16.114056, 23.593267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.377502, 16.200699, 23.487688>,  <16.603079, 16.252686, 23.424341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.377502, 16.200699, 23.487688>,  <16.001543, 16.114056, 23.593267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.377502, 16.200699, 23.487688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300749, -0.159168, 0.940327,
		0.161671, -0.963196, -0.214747,
		0.939900, 0.216608, -0.263948,
		16.659473, 16.265680, 23.408504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.420317, 15.565041, 23.888828>,  <16.001543, 16.114056, 23.593267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.420317, 15.565041, 23.888828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.632984, 15.900993, 23.845146>,  <16.760586, 16.102566, 23.818937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.632984, 15.900993, 23.845146>,  <16.420317, 15.565041, 23.888828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632984, 15.900993, 23.845146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093566, 0.069903, 0.993156,
		0.841767, -0.538250, -0.041419,
		0.531671, 0.839881, -0.109204,
		16.792486, 16.152958, 23.812386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031408, 15.498058, 24.177294>,  <16.420317, 15.565041, 23.888828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031408, 15.498058, 24.177294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.011150, 15.897522, 24.172966>,  <16.998997, 16.137199, 24.170370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.011150, 15.897522, 24.172966>,  <17.031408, 15.498058, 24.177294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011150, 15.897522, 24.172966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164349, 0.019020, 0.986219,
		0.985101, 0.048168, -0.165091,
		-0.050644, 0.998658, -0.010820,
		16.995956, 16.197119, 24.169720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424568, 15.688246, 24.761728>,  <17.031408, 15.498058, 24.177294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424568, 15.688246, 24.761728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.260246, 16.036358, 24.653025>,  <17.161654, 16.245224, 24.587803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.260246, 16.036358, 24.653025>,  <17.424568, 15.688246, 24.761728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.260246, 16.036358, 24.653025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232970, 0.388376, 0.891565,
		0.881455, 0.302948, -0.362296,
		-0.410806, 0.870279, -0.271758,
		17.137005, 16.297441, 24.571497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982008, 16.181080, 24.783466>,  <17.424568, 15.688246, 24.761728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.982008, 16.181080, 24.783466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.606377, 16.302780, 24.847424>,  <17.380999, 16.375801, 24.885798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.606377, 16.302780, 24.847424>,  <17.982008, 16.181080, 24.783466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.606377, 16.302780, 24.847424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275687, 0.388948, 0.879043,
		0.205259, 0.869569, -0.449130,
		-0.939077, 0.304250, 0.159894,
		17.324654, 16.394054, 24.895391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847042, 16.868219, 24.857231>,  <17.982008, 16.181080, 24.783466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847042, 16.868219, 24.857231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.568836, 16.675125, 25.070107>,  <17.401913, 16.559269, 25.197832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.568836, 16.675125, 25.070107>,  <17.847042, 16.868219, 24.857231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.568836, 16.675125, 25.070107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294253, 0.484353, 0.823904,
		-0.655495, 0.729635, -0.194829,
		-0.695515, -0.482736, 0.532188,
		17.360182, 16.530304, 25.229763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.991549, 17.122845, 25.621630>,  <17.847042, 16.868219, 24.857231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.991549, 17.122845, 25.621630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.362015, 17.261166, 25.681812>,  <18.584295, 17.344158, 25.717922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.362015, 17.261166, 25.681812>,  <17.991549, 17.122845, 25.621630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362015, 17.261166, 25.681812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176981, -0.046263, -0.983126,
		-0.333009, 0.937165, -0.104048,
		0.926166, 0.345805, 0.150454,
		18.639864, 17.364906, 25.726948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082273, 17.791910, 25.096203>,  <17.991549, 17.122845, 25.621630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082273, 17.791910, 25.096203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.452286, 17.681087, 25.200167>,  <18.674294, 17.614594, 25.262545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.452286, 17.681087, 25.200167>,  <18.082273, 17.791910, 25.096203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452286, 17.681087, 25.200167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224315, -0.153807, -0.962302,
		0.306591, 0.948463, -0.080128,
		0.925032, -0.277059, 0.259910,
		18.729795, 17.597969, 25.278139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569839, 18.257593, 24.752312>,  <18.082273, 17.791910, 25.096203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569839, 18.257593, 24.752312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.789940, 17.935993, 24.842474>,  <18.921999, 17.743032, 24.896572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.789940, 17.935993, 24.842474>,  <18.569839, 18.257593, 24.752312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.789940, 17.935993, 24.842474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400560, 0.017304, -0.916107,
		0.732651, 0.594376, 0.331572,
		0.550249, -0.804001, 0.225406,
		18.955015, 17.694794, 24.910095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.341675, 18.357880, 24.577286>,  <18.569839, 18.257593, 24.752312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.341675, 18.357880, 24.577286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.266960, 17.965458, 24.597836>,  <19.222132, 17.730005, 24.610165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.266960, 17.965458, 24.597836>,  <19.341675, 18.357880, 24.577286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266960, 17.965458, 24.597836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399127, -0.123567, -0.908531,
		0.897668, -0.149196, 0.414647,
		-0.186786, -0.981056, 0.051374,
		19.210924, 17.671141, 24.613247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981468, 18.018976, 24.289907>,  <19.341675, 18.357880, 24.577286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981468, 18.018976, 24.289907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.691208, 17.743881, 24.281445>,  <19.517052, 17.578823, 24.276367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.691208, 17.743881, 24.281445>,  <19.981468, 18.018976, 24.289907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691208, 17.743881, 24.281445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132945, -0.109972, -0.985003,
		0.675098, -0.717581, 0.171232,
		-0.725650, -0.687739, -0.021157,
		19.473513, 17.537560, 24.275097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.257122, 17.436501, 23.828568>,  <19.981468, 18.018976, 24.289907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.257122, 17.436501, 23.828568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.860039, 17.391968, 23.847042>,  <19.621788, 17.365248, 23.858128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.860039, 17.391968, 23.847042>,  <20.257122, 17.436501, 23.828568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860039, 17.391968, 23.847042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039920, -0.057869, -0.997526,
		0.113728, -0.992097, 0.053002,
		-0.992710, -0.111331, 0.046186,
		19.562225, 17.358568, 23.860897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.192480, 16.888855, 23.337833>,  <20.257122, 17.436501, 23.828568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.192480, 16.888855, 23.337833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.819168, 17.027767, 23.374454>,  <19.595181, 17.111115, 23.396427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.819168, 17.027767, 23.374454>,  <20.192480, 16.888855, 23.337833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819168, 17.027767, 23.374454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147331, -0.137733, -0.979450,
		-0.327535, -0.927591, 0.179709,
		-0.933282, 0.347281, 0.091550,
		19.539183, 17.131950, 23.401920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.684317, 16.448708, 23.007078>,  <20.192480, 16.888855, 23.337833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.684317, 16.448708, 23.007078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.477501, 16.790821, 23.020704>,  <19.353411, 16.996090, 23.028879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.477501, 16.790821, 23.020704>,  <19.684317, 16.448708, 23.007078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.477501, 16.790821, 23.020704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221417, -0.095200, -0.970521,
		-0.826828, -0.509340, 0.238597,
		-0.517040, 0.855283, 0.034063,
		19.322390, 17.047405, 23.030924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135923, 16.267555, 22.535097>,  <19.684317, 16.448708, 23.007078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135923, 16.267555, 22.535097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.140938, 16.665577, 22.574511>,  <19.143946, 16.904390, 22.598158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.140938, 16.665577, 22.574511>,  <19.135923, 16.267555, 22.535097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.140938, 16.665577, 22.574511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140546, 0.099314, -0.985081,
		-0.989995, -0.001500, 0.141096,
		0.012535, 0.995055, 0.098532,
		19.144699, 16.964094, 22.604071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623960, 16.470678, 22.083151>,  <19.135923, 16.267555, 22.535097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623960, 16.470678, 22.083151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.866692, 16.782612, 22.144627>,  <19.012331, 16.969772, 22.181513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.866692, 16.782612, 22.144627>,  <18.623960, 16.470678, 22.083151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866692, 16.782612, 22.144627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077615, 0.250574, -0.964981,
		-0.791034, 0.573649, 0.212582,
		0.606828, 0.779833, 0.153689,
		19.048740, 17.016562, 22.190733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308775, 16.952869, 21.774063>,  <18.623960, 16.470678, 22.083151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.308775, 16.952869, 21.774063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.698040, 17.044533, 21.782505>,  <18.931599, 17.099531, 21.787571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.698040, 17.044533, 21.782505>,  <18.308775, 16.952869, 21.774063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698040, 17.044533, 21.782505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049422, 0.297688, -0.953383,
		-0.224758, 0.926752, 0.301023,
		0.973161, 0.229157, 0.021105,
		18.989988, 17.113279, 21.788837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333044, 17.667103, 21.509064>,  <18.308775, 16.952869, 21.774063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333044, 17.667103, 21.509064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.700249, 17.508835, 21.498474>,  <18.920570, 17.413874, 21.492121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.700249, 17.508835, 21.498474>,  <18.333044, 17.667103, 21.509064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700249, 17.508835, 21.498474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010647, 0.042138, -0.999055,
		0.396413, 0.917425, 0.034470,
		0.918011, -0.395671, -0.026472,
		18.975653, 17.390133, 21.490532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.684372, 18.044073, 20.954611>,  <18.333044, 17.667103, 21.509064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.684372, 18.044073, 20.954611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.901913, 17.715267, 21.022158>,  <19.032438, 17.517984, 21.062685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.901913, 17.715267, 21.022158>,  <18.684372, 18.044073, 20.954611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.901913, 17.715267, 21.022158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122817, -0.121095, -0.985014,
		0.830144, 0.556442, 0.035100,
		0.543853, -0.822015, 0.168867,
		19.065069, 17.468662, 21.072819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220413, 18.168827, 20.489784>,  <18.684372, 18.044073, 20.954611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.220413, 18.168827, 20.489784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.198734, 17.779430, 20.578667>,  <19.185726, 17.545792, 20.631996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.198734, 17.779430, 20.578667>,  <19.220413, 18.168827, 20.489784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.198734, 17.779430, 20.578667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140159, -0.227746, -0.963580,
		0.988644, -0.021079, 0.148787,
		-0.054197, -0.973492, 0.222206,
		19.182476, 17.487383, 20.645329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.756880, 17.940775, 20.152924>,  <19.220413, 18.168827, 20.489784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.756880, 17.940775, 20.152924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.525642, 17.620113, 20.213797>,  <19.386900, 17.427715, 20.250320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.525642, 17.620113, 20.213797>,  <19.756880, 17.940775, 20.152924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.525642, 17.620113, 20.213797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101305, -0.255574, -0.961467,
		0.809659, -0.540399, 0.228957,
		-0.578091, -0.801655, 0.152183,
		19.352215, 17.379618, 20.259451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.046556, 17.288818, 19.828447>,  <19.756880, 17.940775, 20.152924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.046556, 17.288818, 19.828447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.649281, 17.242729, 19.835400>,  <19.410915, 17.215076, 19.839571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.649281, 17.242729, 19.835400>,  <20.046556, 17.288818, 19.828447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.649281, 17.242729, 19.835400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026706, -0.370250, -0.928548,
		0.113423, -0.921759, 0.370804,
		-0.993188, -0.115222, 0.017379,
		19.351324, 17.208162, 19.840612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883667, 16.570391, 19.632750>,  <20.046556, 17.288818, 19.828447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.883667, 16.570391, 19.632750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.554661, 16.790462, 19.575108>,  <19.357256, 16.922506, 19.540522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.554661, 16.790462, 19.575108>,  <19.883667, 16.570391, 19.632750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554661, 16.790462, 19.575108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001881, -0.256009, -0.966673,
		-0.568737, -0.794834, 0.211607,
		-0.822518, 0.550180, -0.144107,
		19.307905, 16.955517, 19.531876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448988, 16.165001, 19.135426>,  <19.883667, 16.570391, 19.632750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448988, 16.165001, 19.135426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.249115, 16.511448, 19.130333>,  <19.129192, 16.719316, 19.127277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.249115, 16.511448, 19.130333>,  <19.448988, 16.165001, 19.135426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249115, 16.511448, 19.130333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140758, -0.095694, -0.985408,
		-0.854697, -0.490596, 0.169730,
		-0.499680, 0.866116, -0.012734,
		19.099211, 16.771282, 19.126513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.891870, 15.933141, 18.699526>,  <19.448988, 16.165001, 19.135426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.891870, 15.933141, 18.699526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.927639, 16.331509, 18.704407>,  <18.949100, 16.570530, 18.707335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.927639, 16.331509, 18.704407>,  <18.891870, 15.933141, 18.699526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927639, 16.331509, 18.704407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037827, 0.015637, -0.999162,
		-0.995275, 0.088884, 0.039071,
		0.089420, 0.995919, 0.012201,
		18.954466, 16.630285, 18.708067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469522, 16.213562, 18.207121>,  <18.891870, 15.933141, 18.699526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469522, 16.213562, 18.207121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.771080, 16.472511, 18.251940>,  <18.952015, 16.627880, 18.278831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.771080, 16.472511, 18.251940>,  <18.469522, 16.213562, 18.207121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771080, 16.472511, 18.251940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200427, -0.064205, -0.977602,
		-0.625679, 0.759465, -0.178155,
		0.753893, 0.647372, 0.112046,
		18.997248, 16.666723, 18.285553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<14.869957, 17.605179, 13.989512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.158364, 17.877483, 14.041197>,  <15.331409, 18.040867, 14.072207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.158364, 17.877483, 14.041197>,  <14.869957, 17.605179, 13.989512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158364, 17.877483, 14.041197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367378, 0.533677, -0.761723,
		-0.587510, 0.501747, 0.634888,
		0.721017, 0.680763, 0.129210,
		15.374669, 18.081713, 14.079960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522174, 18.248039, 13.963930>,  <14.869957, 17.605179, 13.989512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.522174, 18.248039, 13.963930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.906844, 18.298176, 13.866383>,  <15.137646, 18.328257, 13.807855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.906844, 18.298176, 13.866383>,  <14.522174, 18.248039, 13.963930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906844, 18.298176, 13.866383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269226, 0.600165, -0.753206,
		0.051954, 0.789995, 0.610908,
		0.961675, 0.125340, -0.243868,
		15.195347, 18.335777, 13.793222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.448581, 18.830925, 13.559831>,  <14.522174, 18.248039, 13.963930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.448581, 18.830925, 13.559831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.827146, 18.713223, 13.506592>,  <15.054285, 18.642601, 13.474648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.827146, 18.713223, 13.506592>,  <14.448581, 18.830925, 13.559831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.827146, 18.713223, 13.506592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010743, 0.440575, -0.897652,
		0.322780, 0.848119, 0.420127,
		0.946413, -0.294258, -0.133098,
		15.111070, 18.624945, 13.466662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902138, 19.380873, 13.366807>,  <14.448581, 18.830925, 13.559831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902138, 19.380873, 13.366807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.080159, 19.057518, 13.212698>,  <15.186972, 18.863504, 13.120233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.080159, 19.057518, 13.212698>,  <14.902138, 19.380873, 13.366807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080159, 19.057518, 13.212698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197997, 0.508411, -0.838042,
		0.873341, 0.296691, 0.386329,
		0.445054, -0.808389, -0.385272,
		15.213675, 18.815001, 13.097116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592005, 19.570240, 13.199246>,  <14.902138, 19.380873, 13.366807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592005, 19.570240, 13.199246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.501863, 19.249695, 12.977606>,  <15.447778, 19.057367, 12.844622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.501863, 19.249695, 12.977606>,  <15.592005, 19.570240, 13.199246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501863, 19.249695, 12.977606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118709, 0.541909, -0.832011,
		0.967018, -0.253274, -0.026992,
		-0.225354, -0.801365, -0.554102,
		15.434257, 19.009285, 12.811376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107933, 19.463705, 12.636472>,  <15.592005, 19.570240, 13.199246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.107933, 19.463705, 12.636472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.770879, 19.279087, 12.525517>,  <15.568646, 19.168316, 12.458944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.770879, 19.279087, 12.525517>,  <16.107933, 19.463705, 12.636472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770879, 19.279087, 12.525517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113145, 0.351869, -0.929186,
		0.526467, -0.814348, -0.244274,
		-0.842633, -0.461547, -0.277386,
		15.518088, 19.140623, 12.442302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325876, 19.114326, 11.995411>,  <16.107933, 19.463705, 12.636472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325876, 19.114326, 11.995411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.928237, 19.078056, 11.971578>,  <15.689653, 19.056295, 11.957277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.928237, 19.078056, 11.971578>,  <16.325876, 19.114326, 11.995411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928237, 19.078056, 11.971578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056068, 0.040850, -0.997591,
		0.092894, -0.995042, -0.035525,
		-0.994096, -0.090679, -0.059584,
		15.630008, 19.050854, 11.953702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222595, 18.620937, 11.462425>,  <16.325876, 19.114326, 11.995411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.222595, 18.620937, 11.462425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.867637, 18.805305, 11.465998>,  <15.654661, 18.915926, 11.468141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.867637, 18.805305, 11.465998>,  <16.222595, 18.620937, 11.462425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867637, 18.805305, 11.465998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087502, 0.187421, -0.978375,
		-0.452626, -0.867425, -0.206648,
		-0.887397, 0.460919, 0.008930,
		15.601418, 18.943581, 11.468677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783513, 18.288836, 10.948324>,  <16.222595, 18.620937, 11.462425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.783513, 18.288836, 10.948324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.645825, 18.655880, 11.027829>,  <15.563213, 18.876106, 11.075532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.645825, 18.655880, 11.027829>,  <15.783513, 18.288836, 10.948324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645825, 18.655880, 11.027829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003367, 0.210492, -0.977590,
		-0.938884, -0.337173, -0.069366,
		-0.344218, 0.917609, 0.198763,
		15.542560, 18.931164, 11.087458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187037, 18.305281, 10.564740>,  <15.783513, 18.288836, 10.948324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187037, 18.305281, 10.564740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.300803, 18.683701, 10.626837>,  <15.369062, 18.910751, 10.664095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.300803, 18.683701, 10.626837>,  <15.187037, 18.305281, 10.564740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300803, 18.683701, 10.626837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019017, 0.156331, -0.987522,
		-0.958513, 0.283818, 0.026472,
		0.284415, 0.946048, 0.155242,
		15.386127, 18.967516, 10.673409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725656, 18.764664, 10.311934>,  <15.187037, 18.305281, 10.564740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725656, 18.764664, 10.311934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.048856, 19.000320, 10.314736>,  <15.242776, 19.141714, 10.316418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.048856, 19.000320, 10.314736>,  <14.725656, 18.764664, 10.311934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.048856, 19.000320, 10.314736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235238, 0.333482, -0.912936,
		-0.540184, 0.736005, 0.408042,
		0.808000, 0.589141, 0.007005,
		15.291256, 19.177063, 10.316838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549780, 19.251125, 9.761253>,  <14.725656, 18.764664, 10.311934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.549780, 19.251125, 9.761253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.933885, 19.329998, 9.840264>,  <15.164348, 19.377321, 9.887671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.933885, 19.329998, 9.840264>,  <14.549780, 19.251125, 9.761253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933885, 19.329998, 9.840264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051501, 0.570388, -0.819759,
		-0.274309, 0.797356, 0.537567,
		0.960261, 0.197182, 0.197527,
		15.221963, 19.389153, 9.899523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607782, 20.038027, 9.732664>,  <14.549780, 19.251125, 9.761253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607782, 20.038027, 9.732664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.966569, 19.871986, 9.671813>,  <15.181841, 19.772362, 9.635303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.966569, 19.871986, 9.671813>,  <14.607782, 20.038027, 9.732664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.966569, 19.871986, 9.671813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084406, 0.498564, -0.862734,
		0.433968, 0.761002, 0.482232,
		0.896965, -0.415103, -0.152128,
		15.235659, 19.747456, 9.626175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042582, 20.484165, 9.272160>,  <14.607782, 20.038027, 9.732664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.042582, 20.484165, 9.272160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.179912, 20.109283, 9.247572>,  <15.262310, 19.884356, 9.232820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.179912, 20.109283, 9.247572>,  <15.042582, 20.484165, 9.272160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179912, 20.109283, 9.247572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442061, 0.218991, -0.869842,
		0.828680, 0.271466, 0.489486,
		0.343325, -0.937203, -0.061469,
		15.282909, 19.828123, 9.229131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.210539, 21.045155, 8.756388>,  <15.042582, 20.484165, 9.272160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.210539, 21.045155, 8.756388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.214650, 21.445080, 8.749893>,  <15.217117, 21.685036, 8.745996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.214650, 21.445080, 8.749893>,  <15.210539, 21.045155, 8.756388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214650, 21.445080, 8.749893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204164, 0.017993, 0.978771,
		0.978883, -0.006745, 0.204311,
		0.010278, 0.999815, -0.016235,
		15.217733, 21.745024, 8.745023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.483795, 21.157867, 9.324914>,  <15.210539, 21.045155, 8.756388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.483795, 21.157867, 9.324914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.294177, 21.502121, 9.250524>,  <15.180407, 21.708673, 9.205889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.294177, 21.502121, 9.250524>,  <15.483795, 21.157867, 9.324914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.294177, 21.502121, 9.250524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277947, 0.054152, 0.959069,
		0.835480, 0.506333, 0.213541,
		-0.474044, 0.860636, -0.185977,
		15.151964, 21.760311, 9.194731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776196, 21.546141, 9.765879>,  <15.483795, 21.157867, 9.324914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776196, 21.546141, 9.765879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.440600, 21.733749, 9.655523>,  <15.239243, 21.846315, 9.589310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.440600, 21.733749, 9.655523>,  <15.776196, 21.546141, 9.765879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440600, 21.733749, 9.655523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205505, 0.196354, 0.958756,
		0.503850, 0.861082, -0.068353,
		-0.838989, 0.469023, -0.275890,
		15.188904, 21.874456, 9.572757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815709, 22.124159, 10.268533>,  <15.776196, 21.546141, 9.765879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.815709, 22.124159, 10.268533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.446540, 22.075165, 10.122541>,  <15.225039, 22.045769, 10.034946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.446540, 22.075165, 10.122541>,  <15.815709, 22.124159, 10.268533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446540, 22.075165, 10.122541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358819, -0.069849, 0.930790,
		-0.139503, 0.990009, 0.020515,
		-0.922924, -0.122486, -0.364978,
		15.169662, 22.038420, 10.013048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400885, 22.504808, 10.734553>,  <15.815709, 22.124159, 10.268533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400885, 22.504808, 10.734553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.108811, 22.294567, 10.559935>,  <14.933567, 22.168423, 10.455163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.108811, 22.294567, 10.559935>,  <15.400885, 22.504808, 10.734553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.108811, 22.294567, 10.559935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472112, -0.073737, 0.878449,
		-0.493904, 0.847529, -0.194301,
		-0.730184, -0.525602, -0.436548,
		14.889756, 22.136887, 10.428970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666344, 22.830709, 10.971655>,  <15.400885, 22.504808, 10.734553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666344, 22.830709, 10.971655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.585954, 22.463287, 10.835500>,  <14.537720, 22.242834, 10.753807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.585954, 22.463287, 10.835500>,  <14.666344, 22.830709, 10.971655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585954, 22.463287, 10.835500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433015, -0.228384, 0.871974,
		-0.878696, 0.322639, -0.351849,
		-0.200976, -0.918556, -0.340387,
		14.525661, 22.187721, 10.733383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974207, 22.685163, 10.962924>,  <14.666344, 22.830709, 10.971655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974207, 22.685163, 10.962924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.135552, 22.320316, 10.992148>,  <14.232360, 22.101408, 11.009683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.135552, 22.320316, 10.992148>,  <13.974207, 22.685163, 10.962924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135552, 22.320316, 10.992148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450711, -0.128560, 0.883364,
		-0.796340, -0.389247, -0.462958,
		0.403364, -0.912118, 0.073060,
		14.256562, 22.046680, 11.014067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.444839, 22.181625, 11.215455>,  <13.974207, 22.685163, 10.962924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.444839, 22.181625, 11.215455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.796294, 22.007481, 11.293898>,  <14.007167, 21.902994, 11.340963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.796294, 22.007481, 11.293898>,  <13.444839, 22.181625, 11.215455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.796294, 22.007481, 11.293898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312460, -0.213677, 0.925587,
		-0.361061, -0.874530, -0.323778,
		0.878637, -0.435361, 0.196106,
		14.059885, 21.876873, 11.352729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.184323, 21.535999, 11.656180>,  <13.444839, 22.181625, 11.215455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.184323, 21.535999, 11.656180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.577621, 21.582035, 11.712729>,  <13.813599, 21.609657, 11.746657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.577621, 21.582035, 11.712729>,  <13.184323, 21.535999, 11.656180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577621, 21.582035, 11.712729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119837, -0.176309, 0.977013,
		0.137370, -0.977584, -0.159562,
		0.983244, 0.115091, 0.141370,
		13.872594, 21.616562, 11.755139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451090, 20.893848, 12.171860>,  <13.184323, 21.535999, 11.656180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.451090, 20.893848, 12.171860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.737960, 21.172546, 12.177653>,  <13.910082, 21.339766, 12.181129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.737960, 21.172546, 12.177653>,  <13.451090, 20.893848, 12.171860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737960, 21.172546, 12.177653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024415, 0.004350, 0.999692,
		0.696466, -0.717307, 0.020131,
		0.717175, 0.696743, 0.014483,
		13.953113, 21.381569, 12.181998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.000204, 20.666784, 12.630521>,  <13.451090, 20.893848, 12.171860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.000204, 20.666784, 12.630521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.059295, 21.062328, 12.623178>,  <14.094748, 21.299654, 12.618772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.059295, 21.062328, 12.623178>,  <14.000204, 20.666784, 12.630521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059295, 21.062328, 12.623178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119216, 0.000623, 0.992868,
		0.981817, -0.148861, -0.117796,
		0.147726, 0.988858, -0.018358,
		14.103612, 21.358986, 12.617670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593354, 20.680769, 12.995264>,  <14.000204, 20.666784, 12.630521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.593354, 20.680769, 12.995264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.477616, 21.063454, 13.007778>,  <14.408174, 21.293064, 13.015286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.477616, 21.063454, 13.007778>,  <14.593354, 20.680769, 12.995264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477616, 21.063454, 13.007778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189811, 0.025310, 0.981494,
		0.938217, 0.289928, -0.188918,
		-0.289345, 0.956714, 0.031285,
		14.390813, 21.350468, 13.017163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.114718, 21.093300, 13.392637>,  <14.593354, 20.680769, 12.995264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.114718, 21.093300, 13.392637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.787408, 21.323200, 13.388912>,  <14.591022, 21.461140, 13.386678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.787408, 21.323200, 13.388912>,  <15.114718, 21.093300, 13.392637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787408, 21.323200, 13.388912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095038, 0.151247, 0.983917,
		0.566915, 0.804230, -0.178385,
		-0.818276, 0.574750, -0.009311,
		14.541925, 21.495625, 13.386119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271442, 21.789909, 13.587255>,  <15.114718, 21.093300, 13.392637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271442, 21.789909, 13.587255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.886178, 21.729485, 13.676250>,  <14.655020, 21.693230, 13.729649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.886178, 21.729485, 13.676250>,  <15.271442, 21.789909, 13.587255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886178, 21.729485, 13.676250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201683, 0.141524, 0.969172,
		-0.177892, 0.978341, -0.105844,
		-0.963161, -0.151061, 0.222491,
		14.597230, 21.684166, 13.742998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670559, 22.451548, 13.736904>,  <15.271442, 21.789909, 13.587255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670559, 22.451548, 13.736904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.066269, 22.493664, 13.777401>,  <16.303696, 22.518934, 13.801700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.066269, 22.493664, 13.777401>,  <15.670559, 22.451548, 13.736904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066269, 22.493664, 13.777401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099857, 0.018365, -0.994832,
		-0.106605, 0.994272, 0.007654,
		0.989275, 0.105290, 0.101243,
		16.363050, 22.525251, 13.807774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868343, 23.011152, 13.357944>,  <15.670559, 22.451548, 13.736904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868343, 23.011152, 13.357944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.215839, 22.816555, 13.395069>,  <16.424337, 22.699797, 13.417344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.215839, 22.816555, 13.395069>,  <15.868343, 23.011152, 13.357944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215839, 22.816555, 13.395069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158973, 0.096433, -0.982562,
		0.469059, 0.868347, 0.161114,
		0.868741, -0.486492, 0.092811,
		16.476461, 22.670607, 13.422913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426771, 23.502762, 13.257397>,  <15.868343, 23.011152, 13.357944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.426771, 23.502762, 13.257397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.561146, 23.133846, 13.180941>,  <16.641769, 22.912497, 13.135067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.561146, 23.133846, 13.180941>,  <16.426771, 23.502762, 13.257397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561146, 23.133846, 13.180941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214221, 0.272430, -0.938025,
		0.917200, 0.274169, 0.289092,
		0.335935, -0.922287, -0.191140,
		16.661926, 22.857161, 13.123599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188507, 23.600327, 12.993676>,  <16.426771, 23.502762, 13.257397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.188507, 23.600327, 12.993676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.042522, 23.257011, 12.849376>,  <16.954931, 23.051022, 12.762795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.042522, 23.257011, 12.849376>,  <17.188507, 23.600327, 12.993676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.042522, 23.257011, 12.849376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351947, 0.231539, -0.906931,
		0.861937, -0.457961, 0.217569,
		-0.364963, -0.858290, -0.360750,
		16.933033, 22.999525, 12.741151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.711161, 23.463171, 12.535268>,  <17.188507, 23.600327, 12.993676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.711161, 23.463171, 12.535268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.427422, 23.203300, 12.425910>,  <17.257177, 23.047379, 12.360295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.427422, 23.203300, 12.425910>,  <17.711161, 23.463171, 12.535268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.427422, 23.203300, 12.425910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326764, 0.040573, -0.944235,
		0.624540, -0.759127, 0.183511,
		-0.709348, -0.649677, -0.273395,
		17.214617, 23.008398, 12.343891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101570, 22.997963, 12.054409>,  <17.711161, 23.463171, 12.535268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101570, 22.997963, 12.054409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.708092, 22.967381, 11.989302>,  <17.472004, 22.949030, 11.950237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.708092, 22.967381, 11.989302>,  <18.101570, 22.997963, 12.054409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.708092, 22.967381, 11.989302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154962, 0.098874, -0.982960,
		0.091207, -0.992162, -0.085421,
		-0.983702, -0.076416, -0.162765,
		17.412983, 22.944443, 11.940471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.993017, 22.452238, 11.533179>,  <18.101570, 22.997963, 12.054409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.993017, 22.452238, 11.533179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.689819, 22.712742, 11.547628>,  <17.507900, 22.869043, 11.556298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.689819, 22.712742, 11.547628>,  <17.993017, 22.452238, 11.533179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689819, 22.712742, 11.547628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110419, -0.073539, -0.991161,
		-0.642846, -0.755284, 0.127654,
		-0.757995, 0.651259, 0.036124,
		17.462421, 22.908119, 11.558466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617493, 22.076418, 11.232934>,  <17.993017, 22.452238, 11.533179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617493, 22.076418, 11.232934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.457458, 22.440979, 11.194410>,  <17.361439, 22.659716, 11.171296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.457458, 22.440979, 11.194410>,  <17.617493, 22.076418, 11.232934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.457458, 22.440979, 11.194410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041864, -0.123150, -0.991505,
		-0.915522, -0.392653, 0.087425,
		-0.400083, 0.911404, -0.096309,
		17.337433, 22.714401, 11.165518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228765, 21.958109, 10.633654>,  <17.617493, 22.076418, 11.232934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228765, 21.958109, 10.633654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.279243, 22.352421, 10.678042>,  <17.309530, 22.589008, 10.704676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.279243, 22.352421, 10.678042>,  <17.228765, 21.958109, 10.633654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.279243, 22.352421, 10.678042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173050, 0.088275, -0.980949,
		-0.976795, 0.142995, -0.159449,
		0.126196, 0.985779, 0.110972,
		17.317102, 22.648155, 10.711334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785913, 22.274944, 10.065425>,  <17.228765, 21.958109, 10.633654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785913, 22.274944, 10.065425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.062317, 22.542461, 10.175133>,  <17.228159, 22.702972, 10.240957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.062317, 22.542461, 10.175133>,  <16.785913, 22.274944, 10.065425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.062317, 22.542461, 10.175133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261401, 0.122551, -0.957419,
		-0.673928, 0.733278, -0.090139,
		0.691007, 0.668794, 0.274270,
		17.269619, 22.743099, 10.257414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699709, 22.809433, 9.579976>,  <16.785913, 22.274944, 10.065425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.699709, 22.809433, 9.579976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.064106, 22.871830, 9.732691>,  <17.282743, 22.909267, 9.824320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.064106, 22.871830, 9.732691>,  <16.699709, 22.809433, 9.579976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064106, 22.871830, 9.732691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382000, 0.029817, -0.923681,
		-0.155471, 0.987308, -0.032426,
		0.910991, 0.155992, 0.381788,
		17.337402, 22.918627, 9.847227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929182, 23.360363, 9.216572>,  <16.699709, 22.809433, 9.579976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929182, 23.360363, 9.216572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.253544, 23.179901, 9.365648>,  <17.448160, 23.071625, 9.455094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.253544, 23.179901, 9.365648>,  <16.929182, 23.360363, 9.216572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253544, 23.179901, 9.365648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458012, 0.092909, -0.884077,
		0.364228, 0.887597, 0.281973,
		0.810903, -0.451153, 0.372690,
		17.496815, 23.044556, 9.477455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.203127, 23.682709, 17.254463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544315, 23.497986, 17.351763>,  <16.749029, 23.387152, 17.410143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544315, 23.497986, 17.351763>,  <16.203127, 23.682709, 17.254463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544315, 23.497986, 17.351763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209566, -0.123820, -0.969923,
		0.478037, 0.878295, -0.008836,
		0.852973, -0.461808, 0.243251,
		16.800207, 23.359444, 17.424738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771591, 24.058771, 16.834517>,  <16.203127, 23.682709, 17.254463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771591, 24.058771, 16.834517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907902, 23.698078, 16.940914>,  <16.989687, 23.481663, 17.004753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907902, 23.698078, 16.940914>,  <16.771591, 24.058771, 16.834517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907902, 23.698078, 16.940914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230816, -0.194024, -0.953456,
		0.911371, 0.386309, 0.142016,
		0.340774, -0.901732, 0.265994,
		17.010134, 23.427559, 17.020712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337366, 23.946848, 16.475729>,  <16.771591, 24.058771, 16.834517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337366, 23.946848, 16.475729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188976, 23.590118, 16.579287>,  <17.099941, 23.376081, 16.641420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188976, 23.590118, 16.579287>,  <17.337366, 23.946848, 16.475729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.188976, 23.590118, 16.579287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047366, -0.296595, -0.953828,
		0.927434, -0.341585, 0.152272,
		-0.370977, -0.891824, 0.258893,
		17.077682, 23.322571, 16.656954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716246, 23.391628, 16.159025>,  <17.337366, 23.946848, 16.475729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716246, 23.391628, 16.159025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354797, 23.233524, 16.225040>,  <17.137928, 23.138662, 16.264650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354797, 23.233524, 16.225040>,  <17.716246, 23.391628, 16.159025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.354797, 23.233524, 16.225040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010239, -0.365266, -0.930847,
		0.428209, -0.842823, 0.326015,
		-0.903622, -0.395259, 0.165040,
		17.083712, 23.114946, 16.274553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721424, 22.773603, 15.901243>,  <17.716246, 23.391628, 16.159025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721424, 22.773603, 15.901243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323872, 22.812901, 15.921419>,  <17.085340, 22.836479, 15.933525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323872, 22.812901, 15.921419>,  <17.721424, 22.773603, 15.901243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.323872, 22.812901, 15.921419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081706, -0.346868, -0.934348,
		-0.074297, -0.932754, 0.352773,
		-0.993883, 0.098243, 0.050441,
		17.025707, 22.842373, 15.936551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483429, 22.141441, 15.648341>,  <17.721424, 22.773603, 15.901243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.483429, 22.141441, 15.648341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169575, 22.387688, 15.619045>,  <16.981262, 22.535435, 15.601467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169575, 22.387688, 15.619045>,  <17.483429, 22.141441, 15.648341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.169575, 22.387688, 15.619045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144206, -0.296131, -0.944199,
		-0.602952, -0.730291, 0.321130,
		-0.784636, 0.615615, -0.073241,
		16.934183, 22.572372, 15.597074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980297, 21.693970, 15.307740>,  <17.483429, 22.141441, 15.648341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.980297, 21.693970, 15.307740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866707, 22.072479, 15.245871>,  <16.798553, 22.299585, 15.208749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866707, 22.072479, 15.245871>,  <16.980297, 21.693970, 15.307740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866707, 22.072479, 15.245871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155965, -0.204753, -0.966308,
		-0.946062, -0.250283, 0.205730,
		-0.283974, 0.946274, -0.154673,
		16.781515, 22.356361, 15.199469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285664, 21.634016, 14.933936>,  <16.980297, 21.693970, 15.307740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.285664, 21.634016, 14.933936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381115, 22.011230, 14.841209>,  <16.438385, 22.237558, 14.785573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381115, 22.011230, 14.841209>,  <16.285664, 21.634016, 14.933936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381115, 22.011230, 14.841209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105193, -0.212207, -0.971547,
		-0.965397, 0.256223, 0.048562,
		0.238628, 0.943037, -0.231817,
		16.452703, 22.294142, 14.771665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758116, 21.907696, 14.429965>,  <16.285664, 21.634016, 14.933936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758116, 21.907696, 14.429965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073135, 22.148834, 14.378830>,  <16.262148, 22.293518, 14.348149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073135, 22.148834, 14.378830>,  <15.758116, 21.907696, 14.429965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073135, 22.148834, 14.378830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063134, -0.127424, -0.989837,
		-0.613008, 0.787617, -0.062293,
		0.787550, 0.602845, -0.127837,
		16.309401, 22.329687, 14.340479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.120627, 22.255299, 14.178653>,  <15.758116, 21.907696, 14.429965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.120627, 22.255299, 14.178653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811721, 22.001530, 14.192015>,  <14.626377, 21.849268, 14.200032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811721, 22.001530, 14.192015>,  <15.120627, 22.255299, 14.178653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.811721, 22.001530, 14.192015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034882, 0.010158, 0.999340,
		-0.634341, 0.772921, 0.014285,
		-0.772266, -0.634421, 0.033405,
		14.580041, 21.811203, 14.202036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678274, 22.585621, 14.784579>,  <15.120627, 22.255299, 14.178653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.678274, 22.585621, 14.784579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577027, 22.206276, 14.708120>,  <14.516279, 21.978668, 14.662245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577027, 22.206276, 14.708120>,  <14.678274, 22.585621, 14.784579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.577027, 22.206276, 14.708120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178307, -0.148464, 0.972710,
		-0.950862, 0.280292, -0.131521,
		-0.253117, -0.948364, -0.191147,
		14.501092, 21.921766, 14.650776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.949557, 22.390776, 15.137240>,  <14.678274, 22.585621, 14.784579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.949557, 22.390776, 15.137240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151046, 22.050579, 15.076670>,  <14.271939, 21.846462, 15.040327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151046, 22.050579, 15.076670>,  <13.949557, 22.390776, 15.137240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151046, 22.050579, 15.076670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224671, -0.298235, 0.927674,
		-0.834138, -0.433269, -0.341308,
		0.503722, -0.850490, -0.151426,
		14.302162, 21.795431, 15.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.507050, 21.931261, 15.506169>,  <13.949557, 22.390776, 15.137240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.507050, 21.931261, 15.506169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854709, 21.738903, 15.459995>,  <14.063304, 21.623489, 15.432291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854709, 21.738903, 15.459995>,  <13.507050, 21.931261, 15.506169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854709, 21.738903, 15.459995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128131, -0.444404, 0.886616,
		-0.477674, -0.755805, -0.447869,
		0.869143, -0.480900, -0.115438,
		14.115453, 21.594635, 15.425365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387456, 21.237152, 15.759113>,  <13.507050, 21.931261, 15.506169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387456, 21.237152, 15.759113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.782676, 21.298744, 15.756279>,  <14.019808, 21.335699, 15.754579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.782676, 21.298744, 15.756279>,  <13.387456, 21.237152, 15.759113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782676, 21.298744, 15.756279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094495, -0.568755, 0.817061,
		0.121780, -0.807966, -0.576508,
		0.988049, 0.153979, -0.007086,
		14.079090, 21.344938, 15.754153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.682935, 20.524427, 15.953660>,  <13.387456, 21.237152, 15.759113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.682935, 20.524427, 15.953660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.942536, 20.822433, 16.015299>,  <14.098297, 21.001238, 16.052282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.942536, 20.822433, 16.015299>,  <13.682935, 20.524427, 15.953660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.942536, 20.822433, 16.015299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226023, -0.382221, 0.896002,
		0.726434, -0.546680, -0.416454,
		0.649005, 0.745015, 0.154096,
		14.137238, 21.045938, 16.061527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377466, 20.214722, 16.256968>,  <13.682935, 20.524427, 15.953660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.377466, 20.214722, 16.256968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.320077, 20.596001, 16.363420>,  <14.285644, 20.824768, 16.427292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.320077, 20.596001, 16.363420>,  <14.377466, 20.214722, 16.256968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320077, 20.596001, 16.363420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333219, -0.206686, 0.919916,
		0.931869, 0.220664, -0.287970,
		-0.143473, 0.953199, 0.266134,
		14.277035, 20.881960, 16.443260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.952072, 20.309978, 16.762913>,  <14.377466, 20.214722, 16.256968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.952072, 20.309978, 16.762913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706017, 20.621449, 16.812351>,  <14.558385, 20.808331, 16.842014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706017, 20.621449, 16.812351>,  <14.952072, 20.309978, 16.762913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706017, 20.621449, 16.812351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255970, 0.048970, 0.965444,
		0.745712, 0.625516, -0.229440,
		-0.615136, 0.778673, 0.123596,
		14.521477, 20.855051, 16.849430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310877, 20.807489, 17.130644>,  <14.952072, 20.309978, 16.762913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310877, 20.807489, 17.130644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937545, 20.938320, 17.189857>,  <14.713546, 21.016819, 17.225386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937545, 20.938320, 17.189857>,  <15.310877, 20.807489, 17.130644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937545, 20.938320, 17.189857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237965, 0.254849, 0.937243,
		0.268823, 0.909985, -0.315691,
		-0.933331, 0.327076, 0.148035,
		14.657545, 21.036444, 17.234268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393375, 21.526743, 17.411615>,  <15.310877, 20.807489, 17.130644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393375, 21.526743, 17.411615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039336, 21.379257, 17.525213>,  <14.826913, 21.290766, 17.593372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039336, 21.379257, 17.525213>,  <15.393375, 21.526743, 17.411615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.039336, 21.379257, 17.525213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221629, 0.202652, 0.953841,
		-0.409246, 0.907183, -0.097649,
		-0.885098, -0.368714, 0.283992,
		14.773807, 21.268642, 17.610411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.199239, 21.934549, 18.039940>,  <15.393375, 21.526743, 17.411615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.199239, 21.934549, 18.039940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938590, 21.634377, 18.084200>,  <14.782201, 21.454273, 18.110756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938590, 21.634377, 18.084200>,  <15.199239, 21.934549, 18.039940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938590, 21.634377, 18.084200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099653, 0.059916, 0.993217,
		-0.751969, 0.658229, 0.035740,
		-0.651622, -0.750430, 0.110650,
		14.743103, 21.409248, 18.117395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.785730, 22.106113, 18.576298>,  <15.199239, 21.934549, 18.039940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.785730, 22.106113, 18.576298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747199, 21.708076, 18.567209>,  <14.724080, 21.469255, 18.561756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747199, 21.708076, 18.567209>,  <14.785730, 22.106113, 18.576298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.747199, 21.708076, 18.567209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263023, -0.047466, 0.963621,
		-0.959969, 0.086848, 0.266304,
		-0.096328, -0.995090, -0.022723,
		14.718301, 21.409550, 18.560392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.404623, 21.990767, 19.113359>,  <14.785730, 22.106113, 18.576298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.404623, 21.990767, 19.113359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.578677, 21.635765, 19.052700>,  <14.683110, 21.422764, 19.016304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.578677, 21.635765, 19.052700>,  <14.404623, 21.990767, 19.113359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578677, 21.635765, 19.052700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051787, -0.143483, 0.988297,
		-0.898874, -0.437897, -0.016473,
		0.435136, -0.887501, -0.151650,
		14.709218, 21.369514, 19.007204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055022, 21.544369, 19.678490>,  <14.404623, 21.990767, 19.113359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055022, 21.544369, 19.678490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401259, 21.378201, 19.566648>,  <14.609001, 21.278500, 19.499544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401259, 21.378201, 19.566648>,  <14.055022, 21.544369, 19.678490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.401259, 21.378201, 19.566648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277323, -0.067227, 0.958422,
		-0.416945, -0.907142, 0.057014,
		0.865592, -0.415421, -0.279601,
		14.660937, 21.253574, 19.482769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<21.596762, 17.995199, 19.629902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.411709, 18.349113, 19.607536>,  <21.300678, 18.561462, 19.594116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.411709, 18.349113, 19.607536>,  <21.596762, 17.995199, 19.629902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.411709, 18.349113, 19.607536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110254, -0.119999, -0.986633,
		-0.879669, -0.450281, 0.153067,
		-0.462630, 0.884787, -0.055914,
		21.272921, 18.614550, 19.590763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137766, 17.960672, 19.061333>,  <21.596762, 17.995199, 19.629902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137766, 17.960672, 19.061333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.110374, 18.354778, 19.124025>,  <21.093941, 18.591242, 19.161642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.110374, 18.354778, 19.124025>,  <21.137766, 17.960672, 19.061333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110374, 18.354778, 19.124025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317021, 0.127470, -0.939813,
		-0.945943, -0.114044, 0.303620,
		-0.068478, 0.985264, 0.156734,
		21.089830, 18.650358, 19.171045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.553112, 18.090315, 18.786839>,  <21.137766, 17.960672, 19.061333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.553112, 18.090315, 18.786839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.748714, 18.438488, 18.764164>,  <20.866077, 18.647392, 18.750559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.748714, 18.438488, 18.764164>,  <20.553112, 18.090315, 18.786839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.748714, 18.438488, 18.764164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194409, 0.045403, -0.979869,
		-0.850339, 0.490185, 0.191423,
		0.489008, 0.870435, -0.056688,
		20.895416, 18.699619, 18.747158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271370, 18.344898, 18.253637>,  <20.553112, 18.090315, 18.786839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.271370, 18.344898, 18.253637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.593365, 18.579536, 18.289194>,  <20.786562, 18.720320, 18.310528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.593365, 18.579536, 18.289194>,  <20.271370, 18.344898, 18.253637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593365, 18.579536, 18.289194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113354, -0.004996, -0.993542,
		-0.582361, 0.809866, -0.070515,
		0.804988, 0.586593, 0.088892,
		20.834862, 18.755514, 18.315863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123804, 18.993122, 17.920216>,  <20.271370, 18.344898, 18.253637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123804, 18.993122, 17.920216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.519352, 18.937057, 17.940172>,  <20.756681, 18.903418, 17.952147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.519352, 18.937057, 17.940172>,  <20.123804, 18.993122, 17.920216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.519352, 18.937057, 17.940172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077657, 0.200232, -0.976666,
		0.126902, 0.969671, 0.208888,
		0.988871, -0.140163, 0.049892,
		20.816013, 18.895008, 17.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352545, 19.452721, 17.435940>,  <20.123804, 18.993122, 17.920216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352545, 19.452721, 17.435940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.656799, 19.197018, 17.481173>,  <20.839352, 19.043596, 17.508312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.656799, 19.197018, 17.481173>,  <20.352545, 19.452721, 17.435940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.656799, 19.197018, 17.481173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284460, 0.171627, -0.943200,
		0.583538, 0.749598, 0.312388,
		0.760635, -0.639256, 0.113080,
		20.884991, 19.005241, 17.515097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933378, 19.805685, 17.158020>,  <20.352545, 19.452721, 17.435940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933378, 19.805685, 17.158020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.031342, 19.417915, 17.164145>,  <21.090120, 19.185253, 17.167820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.031342, 19.417915, 17.164145>,  <20.933378, 19.805685, 17.158020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031342, 19.417915, 17.164145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313585, 0.064258, -0.947384,
		0.917434, 0.236824, 0.319735,
		0.244909, -0.969425, 0.015312,
		21.104815, 19.127089, 17.168737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620790, 19.786896, 16.822035>,  <20.933378, 19.805685, 17.158020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620790, 19.786896, 16.822035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.471973, 19.415905, 16.807207>,  <21.382683, 19.193312, 16.798309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.471973, 19.415905, 16.807207>,  <21.620790, 19.786896, 16.822035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.471973, 19.415905, 16.807207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275182, -0.072067, -0.958687,
		0.886487, -0.366872, 0.282037,
		-0.372041, -0.927476, -0.037070,
		21.360361, 19.137663, 16.796085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.063633, 19.372089, 16.488630>,  <21.620790, 19.786896, 16.822035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.063633, 19.372089, 16.488630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.737373, 19.145496, 16.441616>,  <21.541616, 19.009541, 16.413408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.737373, 19.145496, 16.441616>,  <22.063633, 19.372089, 16.488630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737373, 19.145496, 16.441616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174326, -0.046932, -0.983569,
		0.551657, -0.822737, 0.137032,
		-0.815650, -0.566481, -0.117534,
		21.492678, 18.975552, 16.406355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.292830, 18.920559, 16.036465>,  <22.063633, 19.372089, 16.488630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.292830, 18.920559, 16.036465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.895325, 18.880249, 16.017357>,  <21.656822, 18.856062, 16.005892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.895325, 18.880249, 16.017357>,  <22.292830, 18.920559, 16.036465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.895325, 18.880249, 16.017357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044192, 0.037417, -0.998322,
		0.102396, -0.994205, -0.032730,
		-0.993762, -0.100778, -0.047768,
		21.597197, 18.850016, 16.003027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.141155, 18.289810, 15.761965>,  <22.292830, 18.920559, 16.036465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.141155, 18.289810, 15.761965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.849903, 18.545067, 15.661886>,  <21.675152, 18.698221, 15.601839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.849903, 18.545067, 15.661886>,  <22.141155, 18.289810, 15.761965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.849903, 18.545067, 15.661886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178594, -0.175783, -0.968093,
		-0.661763, -0.749582, 0.014025,
		-0.728131, 0.638143, -0.250198,
		21.631464, 18.736509, 15.586827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975424, 18.056871, 15.143112>,  <22.141155, 18.289810, 15.761965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975424, 18.056871, 15.143112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.782608, 18.407291, 15.148468>,  <21.666920, 18.617542, 15.151681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.782608, 18.407291, 15.148468>,  <21.975424, 18.056871, 15.143112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.782608, 18.407291, 15.148468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070119, 0.053805, -0.996087,
		-0.873340, -0.479212, -0.087364,
		-0.482037, 0.876049, 0.013389,
		21.637997, 18.670105, 15.152485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535400, 18.004646, 14.688934>,  <21.975424, 18.056871, 15.143112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535400, 18.004646, 14.688934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.504978, 18.403477, 14.691946>,  <21.486725, 18.642775, 14.693753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.504978, 18.403477, 14.691946>,  <21.535400, 18.004646, 14.688934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504978, 18.403477, 14.691946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181226, -0.006399, -0.983421,
		-0.980496, -0.076159, 0.181183,
		-0.076055, 0.997075, 0.007528,
		21.482161, 18.702599, 14.694204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008730, 18.136478, 14.272194>,  <21.535400, 18.004646, 14.688934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008730, 18.136478, 14.272194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.226528, 18.471542, 14.289406>,  <21.357208, 18.672581, 14.299733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.226528, 18.471542, 14.289406>,  <21.008730, 18.136478, 14.272194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.226528, 18.471542, 14.289406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027011, 0.033763, -0.999065,
		-0.838327, 0.545151, -0.004242,
		0.544498, 0.837658, 0.043030,
		21.389877, 18.722839, 14.302315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.326332, 18.190884, 14.511569>,  <21.008730, 18.136478, 14.272194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.326332, 18.190884, 14.511569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.012589, 17.968830, 14.400856>,  <19.824343, 17.835598, 14.334428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.012589, 17.968830, 14.400856>,  <20.326332, 18.190884, 14.511569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.012589, 17.968830, 14.400856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262576, -0.107123, 0.958947,
		-0.561992, 0.824835, -0.061741,
		-0.784359, -0.555132, -0.276784,
		19.777281, 17.802290, 14.317821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719755, 18.439156, 14.847566>,  <20.326332, 18.190884, 14.511569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719755, 18.439156, 14.847566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.598606, 18.067780, 14.761528>,  <19.525917, 17.844954, 14.709906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.598606, 18.067780, 14.761528>,  <19.719755, 18.439156, 14.847566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598606, 18.067780, 14.761528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227054, -0.148899, 0.962432,
		-0.925589, 0.340331, -0.165709,
		-0.302872, -0.928441, -0.215093,
		19.507744, 17.789248, 14.697001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050085, 18.348562, 15.187409>,  <19.719755, 18.439156, 14.847566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050085, 18.348562, 15.187409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.209068, 17.983871, 15.145878>,  <19.304459, 17.765057, 15.120959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.209068, 17.983871, 15.145878>,  <19.050085, 18.348562, 15.187409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.209068, 17.983871, 15.145878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166459, -0.182910, 0.968935,
		-0.902397, -0.367826, -0.224464,
		0.397456, -0.911728, -0.103829,
		19.328304, 17.710354, 15.114729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647964, 17.897718, 15.560359>,  <19.050085, 18.348562, 15.187409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647964, 17.897718, 15.560359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.990845, 17.693336, 15.534651>,  <19.196573, 17.570707, 15.519226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.990845, 17.693336, 15.534651>,  <18.647964, 17.897718, 15.560359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990845, 17.693336, 15.534651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141788, -0.354145, 0.924380,
		-0.495079, -0.783266, -0.376021,
		0.857201, -0.510956, -0.064272,
		19.248005, 17.540051, 15.515369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.415676, 17.249407, 15.719811>,  <18.647964, 17.897718, 15.560359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.415676, 17.249407, 15.719811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.803726, 17.288143, 15.808788>,  <19.036556, 17.311384, 15.862175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.803726, 17.288143, 15.808788>,  <18.415676, 17.249407, 15.719811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803726, 17.288143, 15.808788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187029, -0.285479, 0.939958,
		0.154530, -0.953479, -0.258838,
		0.970124, 0.096842, 0.222443,
		19.094763, 17.317196, 15.875522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.607182, 16.589014, 16.101517>,  <18.415676, 17.249407, 15.719811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.607182, 16.589014, 16.101517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.917633, 16.832245, 16.168295>,  <19.103903, 16.978184, 16.208361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.917633, 16.832245, 16.168295>,  <18.607182, 16.589014, 16.101517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917633, 16.832245, 16.168295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116710, -0.121650, 0.985688,
		0.619681, -0.784503, -0.023448,
		0.776128, 0.608075, 0.166944,
		19.150471, 17.014668, 16.218378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900530, 16.341360, 16.655399>,  <18.607182, 16.589014, 16.101517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900530, 16.341360, 16.655399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.093990, 16.691463, 16.654684>,  <19.210068, 16.901525, 16.654255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.093990, 16.691463, 16.654684>,  <18.900530, 16.341360, 16.655399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.093990, 16.691463, 16.654684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074444, 0.043172, 0.996290,
		0.872088, -0.481726, 0.086038,
		0.483653, 0.875258, -0.001788,
		19.239086, 16.954041, 16.654148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.483898, 16.227247, 17.177147>,  <18.900530, 16.341360, 16.655399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.483898, 16.227247, 17.177147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.380150, 16.611988, 17.142345>,  <19.317900, 16.842833, 17.121464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.380150, 16.611988, 17.142345>,  <19.483898, 16.227247, 17.177147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.380150, 16.611988, 17.142345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019260, 0.095222, 0.995270,
		0.965585, 0.256470, -0.043223,
		-0.259372, 0.961850, -0.087006,
		19.302338, 16.900543, 17.116243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990185, 16.628304, 17.614378>,  <19.483898, 16.227247, 17.177147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990185, 16.628304, 17.614378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.645420, 16.829769, 17.590952>,  <19.438560, 16.950649, 17.576897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.645420, 16.829769, 17.590952>,  <19.990185, 16.628304, 17.614378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645420, 16.829769, 17.590952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140516, -0.126275, 0.981993,
		0.487199, 0.854621, 0.179610,
		-0.861912, 0.503664, -0.058567,
		19.386847, 16.980869, 17.573381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115961, 17.174427, 18.123291>,  <19.990185, 16.628304, 17.614378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115961, 17.174427, 18.123291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.725510, 17.128838, 18.049334>,  <19.491240, 17.101484, 18.004959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.725510, 17.128838, 18.049334>,  <20.115961, 17.174427, 18.123291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.725510, 17.128838, 18.049334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195975, 0.095149, 0.975982,
		-0.093646, 0.988917, -0.115214,
		-0.976127, -0.113975, -0.184893,
		19.432671, 17.094645, 17.993866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.865219, 17.555891, 18.596432>,  <20.115961, 17.174427, 18.123291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.865219, 17.555891, 18.596432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.593056, 17.284592, 18.485420>,  <19.429758, 17.121813, 18.418814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.593056, 17.284592, 18.485420>,  <19.865219, 17.555891, 18.596432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.593056, 17.284592, 18.485420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357878, -0.022948, 0.933486,
		-0.639503, 0.734475, -0.227116,
		-0.680411, -0.678247, -0.277528,
		19.388933, 17.081118, 18.402163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200922, 17.917282, 18.615717>,  <19.865219, 17.555891, 18.596432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200922, 17.917282, 18.615717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.124100, 17.526302, 18.650839>,  <19.078007, 17.291716, 18.671911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.124100, 17.526302, 18.650839>,  <19.200922, 17.917282, 18.615717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.124100, 17.526302, 18.650839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187054, 0.124290, 0.974455,
		-0.963392, 0.170727, -0.206707,
		-0.192057, -0.977448, 0.087804,
		19.066483, 17.233068, 18.677179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637058, 17.936247, 18.891043>,  <19.200922, 17.917282, 18.615717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637058, 17.936247, 18.891043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.771072, 17.568363, 18.972902>,  <18.851480, 17.347633, 19.022018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.771072, 17.568363, 18.972902>,  <18.637058, 17.936247, 18.891043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771072, 17.568363, 18.972902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329106, 0.089292, 0.940062,
		-0.882859, -0.382306, -0.272767,
		0.335036, -0.919711, 0.204651,
		18.871584, 17.292450, 19.034298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172153, 17.490597, 19.258539>,  <18.637058, 17.936247, 18.891043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172153, 17.490597, 19.258539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.541519, 17.373611, 19.357954>,  <18.763138, 17.303419, 19.417603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.541519, 17.373611, 19.357954>,  <18.172153, 17.490597, 19.258539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.541519, 17.373611, 19.357954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188344, 0.218924, 0.957392,
		-0.334415, -0.930879, 0.147073,
		0.923414, -0.292465, 0.248537,
		18.818542, 17.285872, 19.432514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807074, 16.910027, 19.000330>,  <18.172153, 17.490597, 19.258539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807074, 16.910027, 19.000330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.408634, 16.875187, 19.006044>,  <17.169571, 16.854282, 19.009474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.408634, 16.875187, 19.006044>,  <17.807074, 16.910027, 19.000330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408634, 16.875187, 19.006044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032241, 0.208384, -0.977516,
		0.082166, -0.974161, -0.210379,
		-0.996097, -0.087101, 0.014286,
		17.109804, 16.849056, 19.010330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598249, 16.396307, 18.590622>,  <17.807074, 16.910027, 19.000330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598249, 16.396307, 18.590622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.254810, 16.600056, 18.613768>,  <17.048746, 16.722305, 18.627655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.254810, 16.600056, 18.613768>,  <17.598249, 16.396307, 18.590622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254810, 16.600056, 18.613768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104330, -0.063109, -0.992539,
		-0.501920, -0.858229, 0.107328,
		-0.858598, 0.509372, 0.057863,
		16.997231, 16.752867, 18.631126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.209389, 16.038139, 18.001102>,  <17.598249, 16.396307, 18.590622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.209389, 16.038139, 18.001102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.058479, 16.391178, 18.113308>,  <16.967934, 16.603001, 18.180632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.058479, 16.391178, 18.113308>,  <17.209389, 16.038139, 18.001102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058479, 16.391178, 18.113308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162481, 0.235116, -0.958290,
		-0.911737, -0.407116, 0.054702,
		-0.377274, 0.882597, 0.280512,
		16.945297, 16.655956, 18.197462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592585, 16.020445, 17.674818>,  <17.209389, 16.038139, 18.001102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.592585, 16.020445, 17.674818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.679501, 16.401550, 17.759699>,  <16.731649, 16.630213, 17.810627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.679501, 16.401550, 17.759699>,  <16.592585, 16.020445, 17.674818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679501, 16.401550, 17.759699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472175, 0.292865, -0.831433,
		-0.854304, 0.080464, 0.513507,
		0.217289, 0.952762, 0.212203,
		16.744688, 16.687380, 17.823360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997828, 16.399172, 17.387009>,  <16.592585, 16.020445, 17.674818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997828, 16.399172, 17.387009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.298611, 16.660347, 17.423311>,  <16.479080, 16.817053, 17.445093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.298611, 16.660347, 17.423311>,  <15.997828, 16.399172, 17.387009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298611, 16.660347, 17.423311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307879, 0.469583, -0.827467,
		-0.582901, 0.594277, 0.554131,
		0.751955, 0.652937, 0.090755,
		16.524197, 16.856228, 17.450539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688648, 17.081842, 17.137344>,  <15.997828, 16.399172, 17.387009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688648, 17.081842, 17.137344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.087769, 17.094296, 17.113934>,  <16.327240, 17.101768, 17.099888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.087769, 17.094296, 17.113934>,  <15.688648, 17.081842, 17.137344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087769, 17.094296, 17.113934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066167, 0.521813, -0.850490,
		0.004060, 0.852492, 0.522725,
		0.997800, 0.031134, -0.058525,
		16.387108, 17.103636, 17.096376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782704, 17.730961, 16.863846>,  <15.688648, 17.081842, 17.137344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782704, 17.730961, 16.863846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.153362, 17.583870, 16.832590>,  <16.375757, 17.495615, 16.813837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.153362, 17.583870, 16.832590>,  <15.782704, 17.730961, 16.863846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153362, 17.583870, 16.832590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065317, 0.362168, -0.929821,
		0.370221, 0.856510, 0.359621,
		0.926645, -0.367728, -0.078137,
		16.431356, 17.473551, 16.809149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.322163, 18.263111, 16.746859>,  <15.782704, 17.730961, 16.863846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.322163, 18.263111, 16.746859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.448017, 17.914753, 16.595840>,  <16.523531, 17.705738, 16.505230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.448017, 17.914753, 16.595840>,  <16.322163, 18.263111, 16.746859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448017, 17.914753, 16.595840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068945, 0.417664, -0.905982,
		0.946705, 0.259027, 0.191457,
		0.314638, -0.870897, -0.377545,
		16.542408, 17.653484, 16.482576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869633, 18.407936, 16.303453>,  <16.322163, 18.263111, 16.746859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869633, 18.407936, 16.303453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.726967, 18.045074, 16.214130>,  <16.641367, 17.827358, 16.160538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.726967, 18.045074, 16.214130>,  <16.869633, 18.407936, 16.303453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726967, 18.045074, 16.214130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094776, 0.202658, -0.974652,
		0.929412, -0.368788, 0.013696,
		-0.356665, -0.907152, -0.223305,
		16.619967, 17.772928, 16.147139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243120, 18.241924, 15.736768>,  <16.869633, 18.407936, 16.303453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243120, 18.241924, 15.736768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.915489, 18.012779, 15.749044>,  <16.718910, 17.875292, 15.756411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.915489, 18.012779, 15.749044>,  <17.243120, 18.241924, 15.736768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915489, 18.012779, 15.749044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162827, 0.180844, -0.969940,
		0.550092, -0.799452, -0.241402,
		-0.819076, -0.572863, 0.030692,
		16.669765, 17.840921, 15.758252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.230511, 17.901600, 15.054556>,  <17.243120, 18.241924, 15.736768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.230511, 17.901600, 15.054556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.857853, 17.823944, 15.177418>,  <16.634258, 17.777349, 15.251135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.857853, 17.823944, 15.177418>,  <17.230511, 17.901600, 15.054556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.857853, 17.823944, 15.177418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334672, 0.129218, -0.933433,
		0.141532, -0.972425, -0.185360,
		-0.931645, -0.194145, 0.307155,
		16.578360, 17.765701, 15.269565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962109, 17.552605, 14.574206>,  <17.230511, 17.901600, 15.054556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962109, 17.552605, 14.574206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.631699, 17.670204, 14.766558>,  <16.433453, 17.740765, 14.881968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.631699, 17.670204, 14.766558>,  <16.962109, 17.552605, 14.574206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.631699, 17.670204, 14.766558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486607, 0.058538, -0.871657,
		-0.284418, -0.954011, 0.094709,
		-0.826026, 0.294001, 0.480878,
		16.383890, 17.758404, 14.910821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387375, 17.326727, 14.076962>,  <16.962109, 17.552605, 14.574206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.387375, 17.326727, 14.076962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.204910, 17.572460, 14.334492>,  <16.095432, 17.719900, 14.489010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.204910, 17.572460, 14.334492>,  <16.387375, 17.326727, 14.076962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.204910, 17.572460, 14.334492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635855, 0.281146, -0.718780,
		-0.622581, -0.737258, 0.262381,
		-0.456159, 0.614335, 0.643826,
		16.068062, 17.756762, 14.527639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.733272, 17.210609, 14.001813>,  <16.387375, 17.326727, 14.076962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.733272, 17.210609, 14.001813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.767003, 17.586704, 14.133780>,  <15.787242, 17.812361, 14.212959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.767003, 17.586704, 14.133780>,  <15.733272, 17.210609, 14.001813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767003, 17.586704, 14.133780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517830, 0.324226, -0.791663,
		-0.851317, -0.104081, 0.514224,
		0.084328, 0.940236, 0.329916,
		15.792301, 17.868774, 14.232755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.039209, 20.750095, 19.952524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.429854, 20.787987, 19.875319>,  <14.664242, 20.810720, 19.828995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.429854, 20.787987, 19.875319>,  <14.039209, 20.750095, 19.952524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429854, 20.787987, 19.875319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207075, -0.655992, 0.725806,
		-0.057863, -0.748800, -0.660266,
		0.976612, 0.094728, -0.193015,
		14.722838, 20.816404, 19.817413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.304160, 20.039299, 20.197086>,  <14.039209, 20.750095, 19.952524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.304160, 20.039299, 20.197086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.607638, 20.297344, 20.160839>,  <14.789725, 20.452171, 20.139091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.607638, 20.297344, 20.160839>,  <14.304160, 20.039299, 20.197086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.607638, 20.297344, 20.160839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374791, -0.318476, 0.870692,
		0.532835, -0.694552, -0.483409,
		0.758695, 0.645112, -0.090617,
		14.835247, 20.490877, 20.133654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898836, 19.649611, 20.305130>,  <14.304160, 20.039299, 20.197086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.898836, 19.649611, 20.305130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.953303, 20.033432, 20.403688>,  <14.985984, 20.263725, 20.462824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.953303, 20.033432, 20.403688>,  <14.898836, 19.649611, 20.305130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.953303, 20.033432, 20.403688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177431, -0.268313, 0.946851,
		0.974667, -0.085212, -0.206791,
		0.136168, 0.959556, 0.246397,
		14.994154, 20.321299, 20.477608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599376, 19.760054, 20.478310>,  <14.898836, 19.649611, 20.305130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599376, 19.760054, 20.478310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.418660, 20.072765, 20.650221>,  <15.310231, 20.260393, 20.753368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.418660, 20.072765, 20.650221>,  <15.599376, 19.760054, 20.478310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418660, 20.072765, 20.650221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233825, -0.361138, 0.902721,
		0.860937, 0.508332, -0.019641,
		-0.451789, 0.781779, 0.429778,
		15.283123, 20.307299, 20.779154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.010406, 19.881477, 21.022219>,  <15.599376, 19.760054, 20.478310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.010406, 19.881477, 21.022219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.661799, 20.056622, 21.110519>,  <15.452635, 20.161709, 21.163500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.661799, 20.056622, 21.110519>,  <16.010406, 19.881477, 21.022219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.661799, 20.056622, 21.110519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138175, -0.212653, 0.967309,
		0.470491, 0.873530, 0.124829,
		-0.871519, 0.437862, 0.220752,
		15.400344, 20.187981, 21.176744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106651, 20.261511, 21.576069>,  <16.010406, 19.881477, 21.022219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.106651, 20.261511, 21.576069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.709874, 20.216572, 21.599501>,  <15.471808, 20.189608, 21.613560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.709874, 20.216572, 21.599501>,  <16.106651, 20.261511, 21.576069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.709874, 20.216572, 21.599501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077619, -0.173385, 0.981791,
		-0.100145, 0.978425, 0.180708,
		-0.991941, -0.112347, 0.058581,
		15.412292, 20.182867, 21.617075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955010, 20.346939, 22.253529>,  <16.106651, 20.261511, 21.576069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955010, 20.346939, 22.253529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.609754, 20.188747, 22.127937>,  <15.402599, 20.093832, 22.052584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.609754, 20.188747, 22.127937>,  <15.955010, 20.346939, 22.253529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609754, 20.188747, 22.127937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129252, -0.428037, 0.894471,
		-0.488139, 0.812637, 0.318340,
		-0.863142, -0.395480, -0.313977,
		15.350811, 20.070103, 22.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461581, 20.381168, 22.736055>,  <15.955010, 20.346939, 22.253529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461581, 20.381168, 22.736055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.300027, 20.077721, 22.531557>,  <15.203094, 19.895653, 22.408857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.300027, 20.077721, 22.531557>,  <15.461581, 20.381168, 22.736055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300027, 20.077721, 22.531557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135760, -0.502962, 0.853580,
		-0.904679, 0.414157, 0.100149,
		-0.403887, -0.758620, -0.511245,
		15.178861, 19.850134, 22.378183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935635, 20.083511, 23.077711>,  <15.461581, 20.381168, 22.736055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935635, 20.083511, 23.077711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.057912, 19.792984, 22.831455>,  <15.131278, 19.618668, 22.683702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.057912, 19.792984, 22.831455>,  <14.935635, 20.083511, 23.077711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.057912, 19.792984, 22.831455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089836, -0.621703, 0.778084,
		-0.947882, -0.293162, -0.124801,
		0.305694, -0.726320, -0.615638,
		15.149620, 19.575089, 22.646765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488142, 19.434378, 23.286074>,  <14.935635, 20.083511, 23.077711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488142, 19.434378, 23.286074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.789590, 19.275574, 23.076525>,  <14.970459, 19.180292, 22.950796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.789590, 19.275574, 23.076525>,  <14.488142, 19.434378, 23.286074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789590, 19.275574, 23.076525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070819, -0.743312, 0.665185,
		-0.653483, -0.538398, -0.532060,
		0.753621, -0.397007, -0.523871,
		15.015676, 19.156471, 22.919363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405097, 18.737776, 23.378834>,  <14.488142, 19.434378, 23.286074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.405097, 18.737776, 23.378834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.788190, 18.777363, 23.270792>,  <15.018045, 18.801115, 23.205967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.788190, 18.777363, 23.270792>,  <14.405097, 18.737776, 23.378834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.788190, 18.777363, 23.270792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269151, -0.639700, 0.719959,
		-0.101531, -0.762226, -0.639299,
		0.957731, 0.098969, -0.270103,
		15.075509, 18.807053, 23.189760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.662413, 18.043056, 23.419638>,  <14.405097, 18.737776, 23.378834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.662413, 18.043056, 23.419638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.973237, 18.292591, 23.453112>,  <15.159732, 18.442312, 23.473196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.973237, 18.292591, 23.453112>,  <14.662413, 18.043056, 23.419638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973237, 18.292591, 23.453112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315897, -0.501525, 0.805408,
		0.544413, -0.599416, -0.586784,
		0.777061, 0.623838, 0.083683,
		15.206355, 18.479742, 23.478216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496836, 17.737091, 23.390917>,  <14.662413, 18.043056, 23.419638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496836, 17.737091, 23.390917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.369031, 18.041233, 23.617111>,  <15.292348, 18.223719, 23.752829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.369031, 18.041233, 23.617111>,  <15.496836, 17.737091, 23.390917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369031, 18.041233, 23.617111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143105, -0.551205, 0.822006,
		0.936714, 0.343564, 0.067305,
		-0.319511, 0.760353, 0.565487,
		15.273178, 18.269339, 23.786757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798535, 17.549150, 24.041933>,  <15.496836, 17.737091, 23.390917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798535, 17.549150, 24.041933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.510224, 17.811729, 24.130980>,  <15.337237, 17.969276, 24.184406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.510224, 17.811729, 24.130980>,  <15.798535, 17.549150, 24.041933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.510224, 17.811729, 24.130980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149538, -0.460851, 0.874789,
		0.676844, 0.597239, 0.430335,
		-0.720778, 0.656447, 0.222614,
		15.293991, 18.008663, 24.197763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350842, 17.346085, 24.503393>,  <15.798535, 17.549150, 24.041933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350842, 17.346085, 24.503393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.618061, 17.049046, 24.522402>,  <16.778393, 16.870823, 24.533808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.618061, 17.049046, 24.522402>,  <16.350842, 17.346085, 24.503393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.618061, 17.049046, 24.522402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116689, 0.041473, -0.992302,
		0.734910, 0.668453, 0.114359,
		0.668051, -0.742597, 0.047522,
		16.818476, 16.826267, 24.536659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893965, 17.482128, 24.075500>,  <16.350842, 17.346085, 24.503393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893965, 17.482128, 24.075500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.946411, 17.086346, 24.100105>,  <16.977879, 16.848877, 24.114868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.946411, 17.086346, 24.100105>,  <16.893965, 17.482128, 24.075500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946411, 17.086346, 24.100105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094202, -0.049333, -0.994330,
		0.986881, 0.136166, 0.086740,
		0.131115, -0.989457, 0.061512,
		16.985746, 16.789509, 24.118559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504425, 17.287397, 23.642092>,  <16.893965, 17.482128, 24.075500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504425, 17.287397, 23.642092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.302219, 16.947502, 23.701958>,  <17.180895, 16.743565, 23.737877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.302219, 16.947502, 23.701958>,  <17.504425, 17.287397, 23.642092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302219, 16.947502, 23.701958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119080, -0.240511, -0.963314,
		0.854560, -0.469149, 0.222769,
		-0.505516, -0.849737, 0.149665,
		17.150564, 16.692581, 23.746857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805294, 16.826874, 23.210157>,  <17.504425, 17.287397, 23.642092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.805294, 16.826874, 23.210157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.446304, 16.657742, 23.260361>,  <17.230909, 16.556261, 23.290482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.446304, 16.657742, 23.260361>,  <17.805294, 16.826874, 23.210157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446304, 16.657742, 23.260361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029345, -0.226681, -0.973527,
		0.440088, -0.877399, 0.191032,
		-0.897475, -0.422832, 0.125507,
		17.177061, 16.530891, 23.298014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793613, 16.195766, 22.832539>,  <17.805294, 16.826874, 23.210157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793613, 16.195766, 22.832539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.404644, 16.265961, 22.893986>,  <17.171263, 16.308077, 22.930855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.404644, 16.265961, 22.893986>,  <17.793613, 16.195766, 22.832539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404644, 16.265961, 22.893986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219777, -0.469073, -0.855376,
		-0.078047, -0.865549, 0.494705,
		-0.972423, 0.175485, 0.153618,
		17.112917, 16.318605, 22.940071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.441332, 15.633965, 22.579905>,  <17.793613, 16.195766, 22.832539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.441332, 15.633965, 22.579905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.165844, 15.923576, 22.595148>,  <17.000551, 16.097343, 22.604294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.165844, 15.923576, 22.595148>,  <17.441332, 15.633965, 22.579905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165844, 15.923576, 22.595148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275669, -0.212886, -0.937383,
		-0.670577, -0.656099, 0.346210,
		-0.688719, 0.724026, 0.038110,
		16.959229, 16.140783, 22.606581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.850183, 15.320097, 22.188814>,  <17.441332, 15.633965, 22.579905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.850183, 15.320097, 22.188814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.815720, 15.718323, 22.203918>,  <16.795040, 15.957258, 22.212982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.815720, 15.718323, 22.203918>,  <16.850183, 15.320097, 22.188814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.815720, 15.718323, 22.203918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250043, 0.015081, -0.968117,
		-0.964393, -0.092857, 0.247635,
		-0.086162, 0.995565, 0.037762,
		16.789871, 16.016993, 22.215248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210884, 15.520387, 21.865799>,  <16.850183, 15.320097, 22.188814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.210884, 15.520387, 21.865799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.475792, 15.816463, 21.819296>,  <16.634737, 15.994110, 21.791395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.475792, 15.816463, 21.819296>,  <16.210884, 15.520387, 21.865799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475792, 15.816463, 21.819296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305834, 0.125404, -0.943790,
		-0.684007, 0.660597, 0.309427,
		0.662268, 0.740193, -0.116256,
		16.674473, 16.038521, 21.784420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838360, 16.001608, 21.522526>,  <16.210884, 15.520387, 21.865799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838360, 16.001608, 21.522526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.229935, 16.064129, 21.469984>,  <16.464880, 16.101641, 21.438459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.229935, 16.064129, 21.469984>,  <15.838360, 16.001608, 21.522526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229935, 16.064129, 21.469984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135846, 0.018353, -0.990560,
		-0.152415, 0.987539, 0.039199,
		0.978936, 0.156301, -0.131356,
		16.523615, 16.111019, 21.430578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769531, 16.299845, 20.915710>,  <15.838360, 16.001608, 21.522526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769531, 16.299845, 20.915710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.164108, 16.356750, 20.948425>,  <16.400854, 16.390894, 20.968054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.164108, 16.356750, 20.948425>,  <15.769531, 16.299845, 20.915710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.164108, 16.356750, 20.948425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029716, 0.335301, -0.941642,
		-0.161388, 0.931307, 0.326528,
		0.986444, 0.142267, 0.081788,
		16.460041, 16.399431, 20.972961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883638, 16.897373, 20.571144>,  <15.769531, 16.299845, 20.915710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883638, 16.897373, 20.571144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.238579, 16.714085, 20.591709>,  <16.451544, 16.604113, 20.604048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.238579, 16.714085, 20.591709>,  <15.883638, 16.897373, 20.571144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238579, 16.714085, 20.591709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184663, 0.250993, -0.950212,
		0.422502, 0.852665, 0.307335,
		0.887351, -0.458220, 0.051411,
		16.504784, 16.576618, 20.607132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.307434, 17.385260, 20.311979>,  <15.883638, 16.897373, 20.571144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.307434, 17.385260, 20.311979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.460857, 17.021896, 20.245436>,  <16.552912, 16.803879, 20.205509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.460857, 17.021896, 20.245436>,  <16.307434, 17.385260, 20.311979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.460857, 17.021896, 20.245436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216450, 0.263547, -0.940049,
		0.897793, 0.324555, 0.297711,
		0.383558, -0.908409, -0.166360,
		16.575926, 16.749374, 20.195528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102438, 17.610264, 20.024462>,  <16.307434, 17.385260, 20.311979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102438, 17.610264, 20.024462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.960411, 17.251141, 19.920252>,  <16.875195, 17.035667, 19.857727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.960411, 17.251141, 19.920252>,  <17.102438, 17.610264, 20.024462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960411, 17.251141, 19.920252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221489, 0.189955, -0.956483,
		0.908224, -0.397317, 0.131408,
		-0.355065, -0.897806, -0.260523,
		16.853891, 16.981798, 19.842094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521696, 17.368973, 19.642183>,  <17.102438, 17.610264, 20.024462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521696, 17.368973, 19.642183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.226803, 17.113060, 19.555309>,  <17.049868, 16.959513, 19.503185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.226803, 17.113060, 19.555309>,  <17.521696, 17.368973, 19.642183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.226803, 17.113060, 19.555309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174352, 0.130412, -0.976009,
		0.652755, -0.757413, 0.015403,
		-0.737233, -0.639780, -0.217184,
		17.005632, 16.921125, 19.490154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.097486, 17.083303, 20.041924>,  <17.521696, 17.368973, 19.642183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.097486, 17.083303, 20.041924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.493500, 17.082050, 19.985603>,  <18.731108, 17.081299, 19.951811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.493500, 17.082050, 19.985603>,  <18.097486, 17.083303, 20.041924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493500, 17.082050, 19.985603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140601, 0.079792, 0.986846,
		0.008140, -0.996807, 0.079438,
		0.990033, -0.003136, -0.140801,
		18.790510, 17.081110, 19.943363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.415438, 16.479588, 20.504574>,  <18.097486, 17.083303, 20.041924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.415438, 16.479588, 20.504574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.700211, 16.750309, 20.429649>,  <18.871075, 16.912743, 20.384695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.700211, 16.750309, 20.429649>,  <18.415438, 16.479588, 20.504574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700211, 16.750309, 20.429649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168137, 0.094693, 0.981205,
		0.681821, -0.730047, -0.046380,
		0.711934, 0.676805, -0.187312,
		18.913792, 16.953350, 20.373455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994089, 16.251385, 20.821468>,  <18.415438, 16.479588, 20.504574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.994089, 16.251385, 20.821468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.066784, 16.643185, 20.786699>,  <19.110401, 16.878263, 20.765839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.066784, 16.643185, 20.786699>,  <18.994089, 16.251385, 20.821468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.066784, 16.643185, 20.786699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348832, 0.018429, 0.937004,
		0.919395, -0.200609, -0.338331,
		0.181736, 0.979498, -0.086923,
		19.121305, 16.937035, 20.760622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725544, 16.368601, 21.061987>,  <18.994089, 16.251385, 20.821468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725544, 16.368601, 21.061987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.548992, 16.727333, 21.073822>,  <19.443060, 16.942574, 21.080923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.548992, 16.727333, 21.073822>,  <19.725544, 16.368601, 21.061987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.548992, 16.727333, 21.073822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266903, 0.099734, 0.958549,
		0.856706, 0.430982, -0.283388,
		-0.441381, 0.896832, 0.029588,
		19.416578, 16.996382, 21.082699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188740, 16.838558, 21.465406>,  <19.725544, 16.368601, 21.061987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188740, 16.838558, 21.465406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.816833, 16.985630, 21.457958>,  <19.593689, 17.073874, 21.453489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.816833, 16.985630, 21.457958>,  <20.188740, 16.838558, 21.465406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816833, 16.985630, 21.457958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072036, 0.231290, 0.970214,
		0.361033, 0.900731, -0.241532,
		-0.929767, 0.367678, -0.018618,
		19.537903, 17.095934, 21.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249529, 17.442308, 21.858585>,  <20.188740, 16.838558, 21.465406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249529, 17.442308, 21.858585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.863407, 17.339935, 21.837841>,  <19.631735, 17.278511, 21.825394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.863407, 17.339935, 21.837841>,  <20.249529, 17.442308, 21.858585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.863407, 17.339935, 21.837841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147299, 0.369664, 0.917416,
		-0.215624, 0.893223, -0.394536,
		-0.965303, -0.255931, -0.051862,
		19.573816, 17.263155, 21.822283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.951221, 17.957775, 22.290581>,  <20.249529, 17.442308, 21.858585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.951221, 17.957775, 22.290581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.677414, 17.670654, 22.239683>,  <19.513128, 17.498381, 22.209145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.677414, 17.670654, 22.239683>,  <19.951221, 17.957775, 22.290581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.677414, 17.670654, 22.239683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310656, 0.129324, 0.941684,
		-0.659488, 0.684130, -0.311515,
		-0.684520, -0.717803, -0.127242,
		19.472057, 17.455313, 22.201511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943258, 18.773251, 21.983007>,  <19.951221, 17.957775, 22.290581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943258, 18.773251, 21.983007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.285168, 18.948330, 22.094564>,  <20.490314, 19.053377, 22.161499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.285168, 18.948330, 22.094564>,  <19.943258, 18.773251, 21.983007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.285168, 18.948330, 22.094564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337353, -0.060214, -0.939451,
		-0.394402, 0.897104, -0.199127,
		0.854775, 0.437697, 0.278892,
		20.541599, 19.079639, 22.178232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.135580, 19.340771, 21.430172>,  <19.943258, 18.773251, 21.983007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.135580, 19.340771, 21.430172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.473988, 19.221657, 21.607071>,  <20.677032, 19.150188, 21.713209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.473988, 19.221657, 21.607071>,  <20.135580, 19.340771, 21.430172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473988, 19.221657, 21.607071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434340, -0.096107, -0.895607,
		0.309200, 0.949783, 0.048031,
		0.846017, -0.297783, 0.442246,
		20.727793, 19.132322, 21.739744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666298, 19.814095, 21.132620>,  <20.135580, 19.340771, 21.430172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666298, 19.814095, 21.132620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.876076, 19.531773, 21.323112>,  <21.001942, 19.362379, 21.437408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.876076, 19.531773, 21.323112>,  <20.666298, 19.814095, 21.132620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.876076, 19.531773, 21.323112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594325, -0.097063, -0.798346,
		0.609702, 0.701724, 0.368574,
		0.524444, -0.705806, 0.476232,
		21.033409, 19.320030, 21.465982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477701, 19.941870, 21.138407>,  <20.666298, 19.814095, 21.132620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477701, 19.941870, 21.138407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.404369, 19.550484, 21.176340>,  <21.360371, 19.315651, 21.199100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.404369, 19.550484, 21.176340>,  <21.477701, 19.941870, 21.138407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.404369, 19.550484, 21.176340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490988, -0.174711, -0.853467,
		0.851658, -0.109904, 0.512445,
		-0.183329, -0.978467, 0.094833,
		21.349371, 19.256943, 21.204790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.000463, 19.672512, 20.705175>,  <21.477701, 19.941870, 21.138407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.000463, 19.672512, 20.705175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.747066, 19.368526, 20.763342>,  <21.595028, 19.186136, 20.798241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.747066, 19.368526, 20.763342>,  <22.000463, 19.672512, 20.705175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747066, 19.368526, 20.763342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160213, -0.312695, -0.936244,
		0.756981, -0.569806, 0.319845,
		-0.633491, -0.759962, 0.145414,
		21.557018, 19.140537, 20.806967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230259, 19.157795, 20.211384>,  <22.000463, 19.672512, 20.705175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230259, 19.157795, 20.211384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.860882, 19.038403, 20.307852>,  <21.639256, 18.966766, 20.365732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.860882, 19.038403, 20.307852>,  <22.230259, 19.157795, 20.211384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860882, 19.038403, 20.307852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144687, -0.311265, -0.939244,
		0.355415, -0.902232, 0.244248,
		-0.923442, -0.298483, 0.241169,
		21.583849, 18.948858, 20.380203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108095, 18.511370, 19.941160>,  <22.230259, 19.157795, 20.211384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108095, 18.511370, 19.941160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.759972, 18.706005, 19.971605>,  <21.551098, 18.822786, 19.989872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.759972, 18.706005, 19.971605>,  <22.108095, 18.511370, 19.941160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.759972, 18.706005, 19.971605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180776, -0.171860, -0.968392,
		-0.458127, -0.856561, 0.237535,
		-0.870310, 0.486588, 0.076112,
		21.498878, 18.851982, 19.994438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.448072, 20.467457, 23.327923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.131527, 20.252537, 23.211269>,  <17.941599, 20.123585, 23.141277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.131527, 20.252537, 23.211269>,  <18.448072, 20.467457, 23.327923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131527, 20.252537, 23.211269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152517, 0.635471, -0.756912,
		0.592013, -0.554515, -0.584837,
		-0.791366, -0.537299, -0.291634,
		17.894117, 20.091347, 23.123779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472542, 20.314590, 22.554573>,  <18.448072, 20.467457, 23.327923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.472542, 20.314590, 22.554573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.084770, 20.317932, 22.652664>,  <17.852108, 20.319937, 22.711519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.084770, 20.317932, 22.652664>,  <18.472542, 20.314590, 22.554573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084770, 20.317932, 22.652664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221610, 0.399223, -0.889669,
		-0.105335, -0.916816, -0.385166,
		-0.969430, 0.008357, 0.245228,
		17.793941, 20.320438, 22.726233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084875, 20.005688, 21.994999>,  <18.472542, 20.314590, 22.554573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084875, 20.005688, 21.994999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.802582, 20.230923, 22.166986>,  <17.633205, 20.366064, 22.270180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.802582, 20.230923, 22.166986>,  <18.084875, 20.005688, 21.994999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.802582, 20.230923, 22.166986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258145, 0.360797, -0.896206,
		-0.659776, -0.743476, -0.109267,
		-0.705731, 0.563089, 0.429970,
		17.590862, 20.399849, 22.295977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629986, 20.004633, 21.509127>,  <18.084875, 20.005688, 21.994999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629986, 20.004633, 21.509127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.496445, 20.294628, 21.750101>,  <17.416319, 20.468626, 21.894686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.496445, 20.294628, 21.750101>,  <17.629986, 20.004633, 21.509127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496445, 20.294628, 21.750101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197557, 0.571097, -0.796755,
		-0.921690, -0.385016, -0.047436,
		-0.333854, 0.724990, 0.602437,
		17.396288, 20.512125, 21.930832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.927902, 20.194481, 21.232670>,  <17.629986, 20.004633, 21.509127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.927902, 20.194481, 21.232670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.100849, 20.487453, 21.443043>,  <17.204617, 20.663237, 21.569267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.100849, 20.487453, 21.443043>,  <16.927902, 20.194481, 21.232670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.100849, 20.487453, 21.443043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142103, 0.631329, -0.762385,
		-0.890430, 0.254893, 0.377046,
		0.432366, 0.732430, 0.525933,
		17.230558, 20.707182, 21.600822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.463602, 20.868690, 21.259987>,  <16.927902, 20.194481, 21.232670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.463602, 20.868690, 21.259987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.818356, 21.030804, 21.348694>,  <17.031208, 21.128071, 21.401918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.818356, 21.030804, 21.348694>,  <16.463602, 20.868690, 21.259987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818356, 21.030804, 21.348694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119335, 0.664707, -0.737512,
		-0.446312, 0.627623, 0.637883,
		0.886885, 0.405282, 0.221770,
		17.084421, 21.152388, 21.415224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368391, 21.566301, 21.363506>,  <16.463602, 20.868690, 21.259987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368391, 21.566301, 21.363506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.757725, 21.543892, 21.274525>,  <16.991325, 21.530445, 21.221136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.757725, 21.543892, 21.274525>,  <16.368391, 21.566301, 21.363506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757725, 21.543892, 21.274525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100953, 0.766158, -0.634674,
		0.205992, 0.640206, 0.740070,
		0.973332, -0.056026, -0.222453,
		17.049725, 21.527084, 21.207788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577385, 22.221369, 21.399483>,  <16.368391, 21.566301, 21.363506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577385, 22.221369, 21.399483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.898518, 22.054817, 21.228796>,  <17.091198, 21.954885, 21.126385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.898518, 22.054817, 21.228796>,  <16.577385, 22.221369, 21.399483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898518, 22.054817, 21.228796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064482, 0.772163, -0.632144,
		0.592706, 0.479991, 0.646767,
		0.802834, -0.416380, -0.426715,
		17.139368, 21.929903, 21.100782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.203442, 22.772652, 21.426739>,  <16.577385, 22.221369, 21.399483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.203442, 22.772652, 21.426739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.250412, 22.511940, 21.127033>,  <17.278593, 22.355513, 20.947210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.250412, 22.511940, 21.127033>,  <17.203442, 22.772652, 21.426739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250412, 22.511940, 21.127033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129228, 0.758096, -0.639211,
		0.984638, -0.021767, 0.173247,
		0.117424, -0.651780, -0.749263,
		17.285639, 22.316406, 20.902254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.636118, 23.109383, 21.032793>,  <17.203442, 22.772652, 21.426739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.636118, 23.109383, 21.032793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.514225, 22.814861, 20.791134>,  <17.441090, 22.638149, 20.646137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.514225, 22.814861, 20.791134>,  <17.636118, 23.109383, 21.032793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.514225, 22.814861, 20.791134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018395, 0.629651, -0.776660,
		0.952260, -0.247787, -0.178331,
		-0.304733, -0.736302, -0.604150,
		17.422806, 22.593971, 20.609888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046785, 23.075129, 20.416286>,  <17.636118, 23.109383, 21.032793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046785, 23.075129, 20.416286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.697510, 22.895523, 20.340471>,  <17.487944, 22.787760, 20.294981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.697510, 22.895523, 20.340471>,  <18.046785, 23.075129, 20.416286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697510, 22.895523, 20.340471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018750, 0.419555, -0.907536,
		0.487023, -0.788896, -0.374770,
		-0.873188, -0.449018, -0.189541,
		17.435553, 22.760818, 20.283609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.155371, 22.904207, 19.779814>,  <18.046785, 23.075129, 20.416286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.155371, 22.904207, 19.779814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.757084, 22.885555, 19.811735>,  <17.518112, 22.874363, 19.830889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.757084, 22.885555, 19.811735>,  <18.155371, 22.904207, 19.779814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.757084, 22.885555, 19.811735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091708, 0.390698, -0.915939,
		0.011532, -0.919337, -0.393302,
		-0.995719, -0.046631, 0.079805,
		17.458368, 22.871565, 19.835676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.537117, 22.338467, 19.597198>,  <18.155371, 22.904207, 19.779814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.537117, 22.338467, 19.597198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.934872, 22.378056, 19.582258>,  <19.173525, 22.401810, 19.573294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.934872, 22.378056, 19.582258>,  <18.537117, 22.338467, 19.597198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934872, 22.378056, 19.582258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049089, -0.118983, 0.991682,
		0.093709, -0.987951, -0.123174,
		0.994388, 0.098976, -0.037348,
		19.233189, 22.407747, 19.571054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763649, 21.851688, 20.116970>,  <18.537117, 22.338467, 19.597198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763649, 21.851688, 20.116970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.076969, 22.095905, 20.070181>,  <19.264961, 22.242435, 20.042107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.076969, 22.095905, 20.070181>,  <18.763649, 21.851688, 20.116970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076969, 22.095905, 20.070181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196638, -0.064841, 0.978330,
		0.589726, -0.789325, -0.170845,
		0.783299, 0.610542, -0.116973,
		19.311958, 22.279068, 20.035089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294981, 21.639275, 20.567732>,  <18.763649, 21.851688, 20.116970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294981, 21.639275, 20.567732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.441658, 22.003971, 20.493692>,  <19.529665, 22.222790, 20.449268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.441658, 22.003971, 20.493692>,  <19.294981, 21.639275, 20.567732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.441658, 22.003971, 20.493692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222220, 0.107363, 0.969067,
		0.903413, -0.396482, -0.163238,
		0.366693, 0.911743, -0.185099,
		19.551666, 22.277494, 20.438162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816877, 21.620544, 20.973209>,  <19.294981, 21.639275, 20.567732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816877, 21.620544, 20.973209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.738747, 22.008175, 20.912897>,  <19.691868, 22.240753, 20.876709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.738747, 22.008175, 20.912897>,  <19.816877, 21.620544, 20.973209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738747, 22.008175, 20.912897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152675, 0.181915, 0.971389,
		0.968781, 0.166718, -0.183487,
		-0.195328, 0.969078, -0.150782,
		19.680149, 22.298899, 20.867662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.345303, 22.010845, 21.187389>,  <19.816877, 21.620544, 20.973209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.345303, 22.010845, 21.187389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.044613, 22.274632, 21.188946>,  <19.864199, 22.432903, 21.189880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.044613, 22.274632, 21.188946>,  <20.345303, 22.010845, 21.187389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.044613, 22.274632, 21.188946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152842, 0.168477, 0.973784,
		0.641521, 0.732613, -0.227442,
		-0.751725, 0.659465, 0.003893,
		19.819096, 22.472471, 21.190113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474272, 22.576990, 21.621700>,  <20.345303, 22.010845, 21.187389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474272, 22.576990, 21.621700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.074409, 22.573334, 21.611853>,  <19.834492, 22.571140, 21.605944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.074409, 22.573334, 21.611853>,  <20.474272, 22.576990, 21.621700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.074409, 22.573334, 21.611853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026053, 0.228012, 0.973310,
		-0.003285, 0.973615, -0.228172,
		-0.999655, -0.009141, -0.024617,
		19.774513, 22.570591, 21.604467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227161, 23.169807, 22.078768>,  <20.474272, 22.576990, 21.621700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227161, 23.169807, 22.078768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.889446, 22.957638, 22.048231>,  <19.686817, 22.830336, 22.029909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.889446, 22.957638, 22.048231>,  <20.227161, 23.169807, 22.078768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.889446, 22.957638, 22.048231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206078, 0.189860, 0.959940,
		-0.494680, 0.826199, -0.269605,
		-0.844289, -0.530422, -0.076342,
		19.636160, 22.798512, 22.025330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766418, 23.490507, 22.512640>,  <20.227161, 23.169807, 22.078768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766418, 23.490507, 22.512640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.616589, 23.122288, 22.468304>,  <19.526691, 22.901356, 22.441702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.616589, 23.122288, 22.468304>,  <19.766418, 23.490507, 22.512640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616589, 23.122288, 22.468304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255701, -0.012350, 0.966677,
		-0.891242, 0.390434, -0.230759,
		-0.374573, -0.920548, -0.110841,
		19.504217, 22.846123, 22.435051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.039486, 23.409836, 22.915367>,  <19.766418, 23.490507, 22.512640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.039486, 23.409836, 22.915367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.145599, 23.035168, 22.823912>,  <19.209269, 22.810368, 22.769039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.145599, 23.035168, 22.823912>,  <19.039486, 23.409836, 22.915367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145599, 23.035168, 22.823912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191192, -0.283529, 0.939711,
		-0.945024, -0.205577, -0.254300,
		0.265285, -0.936669, -0.228637,
		19.225185, 22.754168, 22.755322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.525330, 22.928713, 23.172733>,  <19.039486, 23.409836, 22.915367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.525330, 22.928713, 23.172733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.851570, 22.702381, 23.124342>,  <19.047314, 22.566582, 23.095308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.851570, 22.702381, 23.124342>,  <18.525330, 22.928713, 23.172733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851570, 22.702381, 23.124342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164358, -0.427020, 0.889179,
		-0.554783, -0.705331, -0.441276,
		0.815600, -0.565829, -0.120977,
		19.096251, 22.532633, 23.088049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306845, 22.383629, 23.554251>,  <18.525330, 22.928713, 23.172733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306845, 22.383629, 23.554251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.704872, 22.350498, 23.532408>,  <18.943687, 22.330620, 23.519302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.704872, 22.350498, 23.532408>,  <18.306845, 22.383629, 23.554251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.704872, 22.350498, 23.532408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034282, -0.229429, 0.972722,
		-0.093097, -0.969795, -0.225457,
		0.995067, -0.082828, -0.054606,
		19.003391, 22.325649, 23.516026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.491224, 21.684357, 23.710176>,  <18.306845, 22.383629, 23.554251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.491224, 21.684357, 23.710176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.819099, 21.901287, 23.783930>,  <19.015823, 22.031445, 23.828182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.819099, 21.901287, 23.783930>,  <18.491224, 21.684357, 23.710176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.819099, 21.901287, 23.783930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049910, -0.388286, 0.920187,
		0.570634, -0.745062, -0.345340,
		0.819686, 0.542325, 0.184383,
		19.065006, 22.063984, 23.839245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.854519, 21.150517, 24.175844>,  <18.491224, 21.684357, 23.710176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.854519, 21.150517, 24.175844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.007912, 21.514118, 24.241144>,  <19.099947, 21.732279, 24.280325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.007912, 21.514118, 24.241144>,  <18.854519, 21.150517, 24.175844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.007912, 21.514118, 24.241144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072536, -0.205862, 0.975889,
		0.920696, -0.362393, -0.144880,
		0.383480, 0.909006, 0.163249,
		19.122955, 21.786819, 24.290119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448841, 20.982540, 24.560349>,  <18.854519, 21.150517, 24.175844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448841, 20.982540, 24.560349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.417728, 21.374611, 24.633240>,  <19.399061, 21.609854, 24.676975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.417728, 21.374611, 24.633240>,  <19.448841, 20.982540, 24.560349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.417728, 21.374611, 24.633240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195697, -0.164217, 0.966817,
		0.977575, 0.110863, -0.179044,
		-0.077782, 0.980175, 0.182230,
		19.394394, 21.668663, 24.687908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.185720, 21.113415, 24.320547>,  <19.448841, 20.982540, 24.560349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.185720, 21.113415, 24.320547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.005802, 20.778679, 24.445370>,  <19.897850, 20.577837, 24.520264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.005802, 20.778679, 24.445370>,  <20.185720, 21.113415, 24.320547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005802, 20.778679, 24.445370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241881, -0.450475, -0.859398,
		0.859753, -0.311075, 0.405039,
		-0.449798, -0.836842, 0.312054,
		19.870863, 20.527626, 24.538986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683205, 20.625116, 24.353310>,  <20.185720, 21.113415, 24.320547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683205, 20.625116, 24.353310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.350109, 20.404255, 24.369680>,  <20.150251, 20.271738, 24.379503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.350109, 20.404255, 24.369680>,  <20.683205, 20.625116, 24.353310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.350109, 20.404255, 24.369680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306806, -0.521721, -0.796038,
		0.460887, -0.650335, 0.603861,
		-0.832738, -0.552152, 0.040928,
		20.100288, 20.238609, 24.381958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946674, 19.982483, 24.391003>,  <20.683205, 20.625116, 24.353310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946674, 19.982483, 24.391003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.575993, 19.946136, 24.245150>,  <20.353582, 19.924328, 24.157637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.575993, 19.946136, 24.245150>,  <20.946674, 19.982483, 24.391003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.575993, 19.946136, 24.245150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332992, -0.648258, -0.684746,
		-0.174157, -0.755979, 0.631002,
		-0.926707, -0.090865, -0.364634,
		20.297981, 19.918877, 24.135759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.935778, 19.304117, 24.179192>,  <20.946674, 19.982483, 24.391003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.935778, 19.304117, 24.179192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.619530, 19.459049, 23.989500>,  <20.429781, 19.552010, 23.875685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.619530, 19.459049, 23.989500>,  <20.935778, 19.304117, 24.179192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619530, 19.459049, 23.989500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197734, -0.571490, -0.796430,
		-0.579525, -0.723432, 0.375229,
		-0.790603, 0.387355, -0.474240,
		20.382343, 19.575249, 23.847231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.849369, 18.778845, 23.886528>,  <20.935778, 19.304117, 24.179192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.849369, 18.778845, 23.886528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.606670, 19.036320, 23.699970>,  <20.461050, 19.190804, 23.588036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.606670, 19.036320, 23.699970>,  <20.849369, 18.778845, 23.886528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606670, 19.036320, 23.699970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135382, -0.494486, -0.858577,
		-0.783280, -0.584083, 0.212885,
		-0.606749, 0.643685, -0.466395,
		20.424646, 19.229425, 23.560051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493721, 18.364851, 23.330341>,  <20.849369, 18.778845, 23.886528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493721, 18.364851, 23.330341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.475464, 18.749142, 23.220854>,  <20.464510, 18.979715, 23.155161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.475464, 18.749142, 23.220854>,  <20.493721, 18.364851, 23.330341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.475464, 18.749142, 23.220854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253783, -0.253863, -0.933353,
		-0.966184, -0.112064, -0.232229,
		-0.045641, 0.960727, -0.273718,
		20.461771, 19.037359, 23.138739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.031740, 18.467840, 22.782757>,  <20.493721, 18.364851, 23.330341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.031740, 18.467840, 22.782757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.279232, 18.779022, 22.739014>,  <20.427727, 18.965733, 22.712769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.279232, 18.779022, 22.739014>,  <20.031740, 18.467840, 22.782757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.279232, 18.779022, 22.739014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184511, -0.279211, -0.942336,
		-0.763630, 0.562872, -0.316297,
		0.618728, 0.777957, -0.109358,
		20.464851, 19.012409, 22.706205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.296917, 18.283157, 22.741838>,  <20.031740, 18.467840, 22.782757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.296917, 18.283157, 22.741838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.253685, 17.887924, 22.697996>,  <19.227747, 17.650785, 22.671690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.253685, 17.887924, 22.697996>,  <19.296917, 18.283157, 22.741838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.253685, 17.887924, 22.697996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129136, -0.095365, 0.987031,
		-0.985720, 0.120830, -0.117290,
		-0.108078, -0.988082, -0.109607,
		19.221262, 17.591499, 22.665113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692383, 18.134497, 23.054531>,  <19.296917, 18.283157, 22.741838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692383, 18.134497, 23.054531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.903355, 17.794701, 23.049046>,  <19.029938, 17.590824, 23.045753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.903355, 17.794701, 23.049046>,  <18.692383, 18.134497, 23.054531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.903355, 17.794701, 23.049046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137946, -0.101553, 0.985220,
		-0.838326, -0.517741, -0.170746,
		0.527429, -0.849489, -0.013714,
		19.061583, 17.539854, 23.044931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.338493, 17.731304, 23.521322>,  <18.692383, 18.134497, 23.054531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.338493, 17.731304, 23.521322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.695057, 17.552666, 23.490499>,  <18.908995, 17.445482, 23.472006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.695057, 17.552666, 23.490499>,  <18.338493, 17.731304, 23.521322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.695057, 17.552666, 23.490499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060948, -0.286624, 0.956103,
		-0.449080, -0.847583, -0.282718,
		0.891410, -0.446598, -0.077059,
		18.962481, 17.418686, 23.467382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292654, 17.123577, 23.760033>,  <18.338493, 17.731304, 23.521322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292654, 17.123577, 23.760033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.686451, 17.178486, 23.803722>,  <18.922729, 17.211432, 23.829937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.686451, 17.178486, 23.803722>,  <18.292654, 17.123577, 23.760033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686451, 17.178486, 23.803722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088762, -0.147240, 0.985110,
		0.151311, -0.979529, -0.132772,
		0.984493, 0.137273, 0.109224,
		18.981798, 17.219667, 23.836489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.619167, 16.621414, 24.181845>,  <18.292654, 17.123577, 23.760033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.619167, 16.621414, 24.181845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.871784, 16.928513, 24.225153>,  <19.023354, 17.112772, 24.251139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.871784, 16.928513, 24.225153>,  <18.619167, 16.621414, 24.181845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871784, 16.928513, 24.225153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070398, -0.082288, 0.994119,
		0.772141, -0.635448, 0.002080,
		0.631540, 0.767746, 0.108272,
		19.061247, 17.158836, 24.257635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.115664, 16.397928, 24.676216>,  <18.619167, 16.621414, 24.181845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.115664, 16.397928, 24.676216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.115658, 16.797340, 24.654545>,  <19.115654, 17.036987, 24.641542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.115658, 16.797340, 24.654545>,  <19.115664, 16.397928, 24.676216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.115658, 16.797340, 24.654545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066348, 0.054062, 0.996331,
		0.997796, -0.003579, -0.066251,
		-0.000016, 0.998531, -0.054180,
		19.115652, 17.096899, 24.638290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635511, 16.605303, 25.218573>,  <19.115664, 16.397928, 24.676216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635511, 16.605303, 25.218573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.408569, 16.923275, 25.132603>,  <19.272404, 17.114058, 25.081020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.408569, 16.923275, 25.132603>,  <19.635511, 16.605303, 25.218573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.408569, 16.923275, 25.132603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144222, 0.161042, 0.976353,
		0.810745, 0.584936, 0.023278,
		-0.567355, 0.794931, -0.214925,
		19.238363, 17.161755, 25.068125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925703, 17.094997, 25.641960>,  <19.635511, 16.605303, 25.218573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.925703, 17.094997, 25.641960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.579231, 17.247276, 25.512465>,  <19.371349, 17.338644, 25.434767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.579231, 17.247276, 25.512465>,  <19.925703, 17.094997, 25.641960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.579231, 17.247276, 25.512465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276348, 0.174865, 0.945015,
		0.416374, 0.908016, -0.046260,
		-0.866178, 0.380696, -0.323738,
		19.319378, 17.361485, 25.415342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859337, 17.751154, 26.098917>,  <19.925703, 17.094997, 25.641960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859337, 17.751154, 26.098917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.505478, 17.634197, 25.953644>,  <19.293161, 17.564024, 25.866480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.505478, 17.634197, 25.953644>,  <19.859337, 17.751154, 26.098917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.505478, 17.634197, 25.953644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443892, 0.289808, 0.847921,
		-0.142670, 0.911328, -0.386169,
		-0.884650, -0.292390, -0.363185,
		19.240084, 17.546480, 25.844688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.093250, 19.436684, 9.983939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.743275, 19.602226, 10.084503>,  <18.533289, 19.701551, 10.144841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.743275, 19.602226, 10.084503>,  <19.093250, 19.436684, 9.983939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.743275, 19.602226, 10.084503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163525, -0.236167, 0.957854,
		0.455791, 0.879174, 0.138955,
		-0.874937, 0.413859, 0.251410,
		18.480793, 19.726383, 10.159926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.152662, 19.922665, 10.515731>,  <19.093250, 19.436684, 9.983939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.152662, 19.922665, 10.515731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.777981, 19.787170, 10.551160>,  <18.553171, 19.705873, 10.572417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.777981, 19.787170, 10.551160>,  <19.152662, 19.922665, 10.515731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777981, 19.787170, 10.551160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108334, -0.039845, 0.993316,
		-0.332943, 0.940037, 0.074020,
		-0.936703, -0.338736, 0.088572,
		18.496969, 19.685549, 10.577731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.868835, 20.380020, 10.958370>,  <19.152662, 19.922665, 10.515731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.868835, 20.380020, 10.958370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.647915, 20.047523, 10.983674>,  <18.515362, 19.848026, 10.998857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.647915, 20.047523, 10.983674>,  <18.868835, 20.380020, 10.958370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647915, 20.047523, 10.983674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232607, -0.080792, 0.969209,
		-0.800536, 0.550009, 0.237974,
		-0.552301, -0.831241, 0.063259,
		18.482225, 19.798151, 11.002651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405094, 20.380329, 11.581986>,  <18.868835, 20.380020, 10.958370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405094, 20.380329, 11.581986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.467834, 19.996445, 11.488729>,  <18.505478, 19.766115, 11.432774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.467834, 19.996445, 11.488729>,  <18.405094, 20.380329, 11.581986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.467834, 19.996445, 11.488729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394007, -0.155660, 0.905830,
		-0.905625, -0.233941, 0.353716,
		0.156851, -0.959709, -0.233144,
		18.514891, 19.708532, 11.418785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.461760, 20.044022, 12.226804>,  <18.405094, 20.380329, 11.581986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.461760, 20.044022, 12.226804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.587345, 19.743362, 11.994786>,  <18.662697, 19.562967, 11.855576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.587345, 19.743362, 11.994786>,  <18.461760, 20.044022, 12.226804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587345, 19.743362, 11.994786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235003, -0.530403, 0.814522,
		-0.919892, -0.392042, 0.010112,
		0.313964, -0.751648, -0.580045,
		18.681534, 19.517868, 11.820773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023237, 19.417126, 12.499446>,  <18.461760, 20.044022, 12.226804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023237, 19.417126, 12.499446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.362690, 19.292931, 12.328136>,  <18.566362, 19.218412, 12.225351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.362690, 19.292931, 12.328136>,  <18.023237, 19.417126, 12.499446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362690, 19.292931, 12.328136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139348, -0.649806, 0.747218,
		-0.510296, -0.693794, -0.508182,
		0.848634, -0.310488, -0.428272,
		18.617279, 19.199783, 12.199655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022213, 18.617792, 12.297265>,  <18.023237, 19.417126, 12.499446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022213, 18.617792, 12.297265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.399990, 18.740833, 12.343575>,  <18.626657, 18.814657, 12.371362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.399990, 18.740833, 12.343575>,  <18.022213, 18.617792, 12.297265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399990, 18.740833, 12.343575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171487, -0.761698, 0.624827,
		0.280385, -0.570261, -0.772131,
		0.944445, 0.307603, 0.115777,
		18.683323, 18.833115, 12.378308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.393175, 18.024847, 12.232548>,  <18.022213, 18.617792, 12.297265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.393175, 18.024847, 12.232548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.666958, 18.265678, 12.396994>,  <18.831228, 18.410177, 12.495662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.666958, 18.265678, 12.396994>,  <18.393175, 18.024847, 12.232548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666958, 18.265678, 12.396994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325355, -0.756893, 0.566795,
		0.652427, -0.254189, -0.713952,
		0.684458, 0.602080, 0.411116,
		18.872295, 18.446302, 12.520329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935730, 17.635386, 12.286425>,  <18.393175, 18.024847, 12.232548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935730, 17.635386, 12.286425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.030102, 17.931870, 12.537803>,  <19.086725, 18.109760, 12.688629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.030102, 17.931870, 12.537803>,  <18.935730, 17.635386, 12.286425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030102, 17.931870, 12.537803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599777, -0.619895, 0.505963,
		0.764595, 0.257555, -0.590813,
		0.235928, 0.741212, 0.628444,
		19.100880, 18.154234, 12.726336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.609514, 17.378553, 12.627290>,  <18.935730, 17.635386, 12.286425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.609514, 17.378553, 12.627290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.448853, 17.665741, 12.854692>,  <19.352455, 17.838053, 12.991133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.448853, 17.665741, 12.854692>,  <19.609514, 17.378553, 12.627290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.448853, 17.665741, 12.854692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479523, -0.363992, 0.798478,
		0.780211, 0.593324, -0.198082,
		-0.401656, 0.717967, 0.568503,
		19.328356, 17.881130, 13.025243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.228477, 17.617004, 13.096419>,  <19.609514, 17.378553, 12.627290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.228477, 17.617004, 13.096419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.877205, 17.702145, 13.267765>,  <19.666441, 17.753229, 13.370572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.877205, 17.702145, 13.267765>,  <20.228477, 17.617004, 13.096419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877205, 17.702145, 13.267765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399774, -0.165127, 0.901617,
		0.262644, 0.963031, 0.059919,
		-0.878179, 0.212850, 0.428364,
		19.613750, 17.765999, 13.396275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379444, 18.000607, 13.763121>,  <20.228477, 17.617004, 13.096419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.379444, 18.000607, 13.763121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.992043, 17.906857, 13.796749>,  <19.759602, 17.850607, 13.816926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.992043, 17.906857, 13.796749>,  <20.379444, 18.000607, 13.763121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992043, 17.906857, 13.796749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139596, -0.231501, 0.962767,
		-0.206186, 0.944180, 0.256928,
		-0.968504, -0.234376, 0.084072,
		19.701490, 17.836544, 13.821971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.615191, 18.634632, 13.898783>,  <20.379444, 18.000607, 13.763121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.615191, 18.634632, 13.898783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.991726, 18.767262, 13.923891>,  <21.217648, 18.846838, 13.938956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.991726, 18.767262, 13.923891>,  <20.615191, 18.634632, 13.898783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991726, 18.767262, 13.923891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036512, 0.084842, -0.995725,
		-0.335480, 0.939607, 0.067759,
		0.941340, 0.331572, 0.062770,
		21.274128, 18.866734, 13.942722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.698122, 19.166197, 13.336802>,  <20.615191, 18.634632, 13.898783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.698122, 19.166197, 13.336802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.081989, 19.093380, 13.422495>,  <21.312309, 19.049690, 13.473911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.081989, 19.093380, 13.422495>,  <20.698122, 19.166197, 13.336802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081989, 19.093380, 13.422495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238533, 0.123956, -0.963191,
		0.148785, 0.975446, 0.162379,
		0.959669, -0.182041, 0.214233,
		21.369890, 19.038767, 13.486765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095575, 19.717369, 12.992434>,  <20.698122, 19.166197, 13.336802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095575, 19.717369, 12.992434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.340874, 19.407196, 13.052614>,  <21.488052, 19.221092, 13.088722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.340874, 19.407196, 13.052614>,  <21.095575, 19.717369, 12.992434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340874, 19.407196, 13.052614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205777, -0.027061, -0.978225,
		0.762617, 0.630852, 0.142971,
		0.613246, -0.775431, 0.150452,
		21.524847, 19.174566, 13.097750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.746693, 19.920691, 12.766665>,  <21.095575, 19.717369, 12.992434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.746693, 19.920691, 12.766665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.743721, 19.520931, 12.753086>,  <21.741938, 19.281076, 12.744939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.743721, 19.520931, 12.753086>,  <21.746693, 19.920691, 12.766665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.743721, 19.520931, 12.753086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269419, 0.030690, -0.962534,
		0.962994, -0.016299, 0.269028,
		-0.007431, -0.999396, -0.033946,
		21.741491, 19.221113, 12.742903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278660, 19.732889, 12.313144>,  <21.746693, 19.920691, 12.766665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278660, 19.732889, 12.313144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.060650, 19.398296, 12.335935>,  <21.929844, 19.197540, 12.349609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.060650, 19.398296, 12.335935>,  <22.278660, 19.732889, 12.313144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060650, 19.398296, 12.335935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069830, -0.022432, -0.997307,
		0.835508, -0.547534, -0.046186,
		-0.545024, -0.836482, 0.056977,
		21.897142, 19.147352, 12.353027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.618345, 19.242685, 11.971216>,  <22.278660, 19.732889, 12.313144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.618345, 19.242685, 11.971216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.243118, 19.104465, 11.981221>,  <22.017982, 19.021534, 11.987225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.243118, 19.104465, 11.981221>,  <22.618345, 19.242685, 11.971216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.243118, 19.104465, 11.981221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017481, -0.024897, -0.999537,
		0.346015, -0.938069, 0.017314,
		-0.938067, -0.345552, 0.025013,
		21.961699, 19.000799, 11.988726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643555, 18.719992, 11.385287>,  <22.618345, 19.242685, 11.971216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643555, 18.719992, 11.385287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.254116, 18.766148, 11.464077>,  <22.020452, 18.793842, 11.511351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.254116, 18.766148, 11.464077>,  <22.643555, 18.719992, 11.385287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.254116, 18.766148, 11.464077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194063, 0.036057, -0.980326,
		-0.120226, -0.992665, -0.012711,
		-0.973594, 0.115394, 0.196974,
		21.962038, 18.800766, 11.523170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364883, 18.253342, 11.078680>,  <22.643555, 18.719992, 11.385287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364883, 18.253342, 11.078680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.073612, 18.523872, 11.123110>,  <21.898849, 18.686192, 11.149768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.073612, 18.523872, 11.123110>,  <22.364883, 18.253342, 11.078680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.073612, 18.523872, 11.123110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208117, -0.063779, -0.976022,
		-0.653026, -0.733835, 0.187198,
		-0.728178, 0.676327, 0.111074,
		21.855158, 18.726770, 11.156432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.687679, 17.951796, 10.838561>,  <22.364883, 18.253342, 11.078680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.687679, 17.951796, 10.838561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.649452, 18.349098, 10.812316>,  <21.626516, 18.587481, 10.796569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.649452, 18.349098, 10.812316>,  <21.687679, 17.951796, 10.838561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649452, 18.349098, 10.812316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297003, -0.091365, -0.950495,
		-0.950082, -0.071351, 0.303733,
		-0.095569, 0.993258, -0.065612,
		21.620781, 18.647076, 10.792632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.149103, 18.074896, 10.296134>,  <21.687679, 17.951796, 10.838561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.149103, 18.074896, 10.296134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.296021, 18.444061, 10.342316>,  <21.384171, 18.665560, 10.370025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.296021, 18.444061, 10.342316>,  <21.149103, 18.074896, 10.296134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.296021, 18.444061, 10.342316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279153, 0.227790, -0.932837,
		-0.887226, 0.310396, 0.341299,
		0.367293, 0.922912, 0.115453,
		21.406208, 18.720936, 10.376951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650389, 18.504917, 9.884078>,  <21.149103, 18.074896, 10.296134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650389, 18.504917, 9.884078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.983452, 18.717842, 9.945166>,  <21.183290, 18.845596, 9.981818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.983452, 18.717842, 9.945166>,  <20.650389, 18.504917, 9.884078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.983452, 18.717842, 9.945166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007581, 0.286704, -0.957989,
		-0.553735, 0.796520, 0.242762,
		0.832659, 0.532312, 0.152720,
		21.233250, 18.877535, 9.990982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456800, 19.263424, 9.882501>,  <20.650389, 18.504917, 9.884078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456800, 19.263424, 9.882501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.837601, 19.193249, 9.782166>,  <21.066080, 19.151144, 9.721964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.837601, 19.193249, 9.782166>,  <20.456800, 19.263424, 9.882501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.837601, 19.193249, 9.782166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176790, 0.353840, -0.918446,
		0.249888, 0.918705, 0.305840,
		0.951999, -0.175439, -0.250838,
		21.123199, 19.140617, 9.706914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657717, 19.943098, 9.567937>,  <20.456800, 19.263424, 9.882501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657717, 19.943098, 9.567937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.963757, 19.708622, 9.461349>,  <21.147381, 19.567936, 9.397395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.963757, 19.708622, 9.461349>,  <20.657717, 19.943098, 9.567937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963757, 19.708622, 9.461349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022862, 0.438298, -0.898539,
		0.643507, 0.681379, 0.348742,
		0.765099, -0.586189, -0.266471,
		21.193287, 19.532764, 9.381408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.107790, 20.395124, 9.304406>,  <20.657717, 19.943098, 9.567937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.107790, 20.395124, 9.304406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.208645, 20.044914, 9.139540>,  <21.269157, 19.834787, 9.040620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.208645, 20.044914, 9.139540>,  <21.107790, 20.395124, 9.304406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.208645, 20.044914, 9.139540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258974, 0.471442, -0.843016,
		0.932394, 0.105817, 0.345607,
		0.252139, -0.875526, -0.412166,
		21.284286, 19.782257, 9.015890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625586, 20.818317, 9.280647>,  <21.107790, 20.395124, 9.304406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625586, 20.818317, 9.280647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.434128, 21.152901, 9.173884>,  <20.319252, 21.353651, 9.109827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.434128, 21.152901, 9.173884>,  <20.625586, 20.818317, 9.280647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.434128, 21.152901, 9.173884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203194, 0.190210, 0.960485,
		0.854173, 0.513966, 0.078919,
		-0.478646, 0.836456, -0.266907,
		20.290535, 21.403837, 9.093812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816330, 21.286633, 9.752060>,  <20.625586, 20.818317, 9.280647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816330, 21.286633, 9.752060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.488438, 21.455330, 9.597049>,  <20.291702, 21.556547, 9.504042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.488438, 21.455330, 9.597049>,  <20.816330, 21.286633, 9.752060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.488438, 21.455330, 9.597049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353893, 0.159043, 0.921664,
		0.450338, 0.892659, 0.018880,
		-0.819729, 0.421742, -0.387529,
		20.242519, 21.581852, 9.480790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.840252, 21.859339, 9.972604>,  <20.816330, 21.286633, 9.752060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.840252, 21.859339, 9.972604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.457203, 21.808990, 9.868976>,  <20.227373, 21.778782, 9.806799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.457203, 21.808990, 9.868976>,  <20.840252, 21.859339, 9.972604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.457203, 21.808990, 9.868976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279091, 0.183170, 0.942633,
		-0.071197, 0.974990, -0.210538,
		-0.957622, -0.125872, -0.259070,
		20.169916, 21.771229, 9.791255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.677954, 22.506756, 10.268651>,  <20.840252, 21.859339, 9.972604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.677954, 22.506756, 10.268651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.373798, 22.252232, 10.216623>,  <20.191305, 22.099518, 10.185407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.373798, 22.252232, 10.216623>,  <20.677954, 22.506756, 10.268651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373798, 22.252232, 10.216623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188498, 0.024570, 0.981766,
		-0.621513, 0.771042, -0.138626,
		-0.760389, -0.636311, -0.130069,
		20.145681, 22.061338, 10.177603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053940, 22.906981, 10.454208>,  <20.677954, 22.506756, 10.268651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053940, 22.906981, 10.454208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.969845, 22.517227, 10.486157>,  <19.919388, 22.283375, 10.505326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.969845, 22.517227, 10.486157>,  <20.053940, 22.906981, 10.454208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969845, 22.517227, 10.486157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350557, 0.151398, 0.924223,
		-0.912639, 0.166305, -0.373406,
		-0.210236, -0.974382, 0.079872,
		19.906775, 22.224913, 10.510119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492077, 22.939056, 10.964085>,  <20.053940, 22.906981, 10.454208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492077, 22.939056, 10.964085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.600254, 22.553963, 10.964692>,  <19.665161, 22.322906, 10.965056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.600254, 22.553963, 10.964692>,  <19.492077, 22.939056, 10.964085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600254, 22.553963, 10.964692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424287, -0.117771, 0.897836,
		-0.864199, -0.243460, -0.440327,
		0.270445, -0.962734, 0.001519,
		19.681387, 22.265142, 10.965148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859442, 22.477240, 11.143561>,  <19.492077, 22.939056, 10.964085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.859442, 22.477240, 11.143561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.161026, 22.230827, 11.234822>,  <19.341976, 22.082981, 11.289578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.161026, 22.230827, 11.234822>,  <18.859442, 22.477240, 11.143561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.161026, 22.230827, 11.234822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254852, 0.045813, 0.965894,
		-0.605472, -0.786389, -0.122455,
		0.753959, -0.616030, 0.228151,
		19.387215, 22.046019, 11.303267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608156, 22.029795, 11.629540>,  <18.859442, 22.477240, 11.143561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.608156, 22.029795, 11.629540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.999371, 21.953259, 11.662603>,  <19.234100, 21.907337, 11.682441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.999371, 21.953259, 11.662603>,  <18.608156, 22.029795, 11.629540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.999371, 21.953259, 11.662603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140346, -0.311374, 0.939867,
		-0.154095, -0.930826, -0.331389,
		0.978038, -0.191338, 0.082657,
		19.292782, 21.895857, 11.687400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694889, 21.340654, 11.828881>,  <18.608156, 22.029795, 11.629540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694889, 21.340654, 11.828881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.034943, 21.514908, 11.947200>,  <19.238976, 21.619461, 12.018191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.034943, 21.514908, 11.947200>,  <18.694889, 21.340654, 11.828881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034943, 21.514908, 11.947200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159258, -0.322718, 0.933001,
		0.501907, -0.840283, -0.204975,
		0.850133, 0.435635, 0.295796,
		19.289982, 21.645597, 12.035938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.106562, 20.830423, 12.212229>,  <18.694889, 21.340654, 11.828881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.106562, 20.830423, 12.212229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.262173, 21.177372, 12.336375>,  <19.355539, 21.385540, 12.410863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.262173, 21.177372, 12.336375>,  <19.106562, 20.830423, 12.212229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262173, 21.177372, 12.336375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061399, -0.311743, 0.948180,
		0.919177, -0.387925, -0.068021,
		0.389028, 0.867369, 0.310366,
		19.378881, 21.437582, 12.429485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.573172, 20.539204, 12.630803>,  <19.106562, 20.830423, 12.212229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.573172, 20.539204, 12.630803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.549065, 20.926315, 12.728598>,  <19.534601, 21.158583, 12.787274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.549065, 20.926315, 12.728598>,  <19.573172, 20.539204, 12.630803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549065, 20.926315, 12.728598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091843, -0.238516, 0.966786,
		0.993948, 0.080718, -0.074510,
		-0.060266, 0.967778, 0.244486,
		19.530985, 21.216648, 12.801944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199514, 20.797668, 13.019848>,  <19.573172, 20.539204, 12.630803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199514, 20.797668, 13.019848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.919804, 21.059845, 13.133976>,  <19.751976, 21.217150, 13.202453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.919804, 21.059845, 13.133976>,  <20.199514, 20.797668, 13.019848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919804, 21.059845, 13.133976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143885, -0.261911, 0.954306,
		0.700219, 0.708379, 0.088840,
		-0.699279, 0.655440, 0.285320,
		19.710020, 21.256477, 13.219572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471817, 21.139887, 13.589608>,  <20.199514, 20.797668, 13.019848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471817, 21.139887, 13.589608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.076202, 21.195599, 13.609247>,  <19.838835, 21.229025, 13.621031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.076202, 21.195599, 13.609247>,  <20.471817, 21.139887, 13.589608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.076202, 21.195599, 13.609247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020546, -0.199452, 0.979692,
		0.146242, 0.969959, 0.194403,
		-0.989036, 0.139278, 0.049097,
		19.779491, 21.237383, 13.623977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.341349, 21.674498, 14.175472>,  <20.471817, 21.139887, 13.589608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.341349, 21.674498, 14.175472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.998203, 21.472763, 14.136051>,  <19.792316, 21.351723, 14.112398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.998203, 21.472763, 14.136051>,  <20.341349, 21.674498, 14.175472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998203, 21.472763, 14.136051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029965, -0.142362, 0.989361,
		-0.513000, 0.851692, 0.107015,
		-0.857865, -0.504336, -0.098552,
		19.740843, 21.321463, 14.106485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964340, 21.857969, 14.699700>,  <20.341349, 21.674498, 14.175472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964340, 21.857969, 14.699700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.761494, 21.530594, 14.591633>,  <19.639786, 21.334167, 14.526793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.761494, 21.530594, 14.591633>,  <19.964340, 21.857969, 14.699700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761494, 21.530594, 14.591633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117167, -0.245091, 0.962394,
		-0.853877, 0.519699, 0.028396,
		-0.507115, -0.818439, -0.270169,
		19.609360, 21.285063, 14.510582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325731, 21.914711, 14.993008>,  <19.964340, 21.857969, 14.699700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325731, 21.914711, 14.993008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.365921, 21.525543, 14.909744>,  <19.390034, 21.292042, 14.859786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.365921, 21.525543, 14.909744>,  <19.325731, 21.914711, 14.993008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.365921, 21.525543, 14.909744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125918, -0.219970, 0.967346,
		-0.986940, -0.070981, -0.144609,
		0.100473, -0.972921, -0.208159,
		19.396063, 21.233667, 14.847297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682003, 21.550367, 15.157158>,  <19.325731, 21.914711, 14.993008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682003, 21.550367, 15.157158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.970181, 21.273087, 15.148855>,  <19.143087, 21.106718, 15.143874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.970181, 21.273087, 15.148855>,  <18.682003, 21.550367, 15.157158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.970181, 21.273087, 15.148855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263338, -0.301127, 0.916502,
		-0.641573, -0.654821, -0.399492,
		0.720442, -0.693204, -0.020756,
		19.186314, 21.065125, 15.142629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.401068, 20.991102, 15.538351>,  <18.682003, 21.550367, 15.157158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.401068, 20.991102, 15.538351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.798435, 20.948040, 15.522692>,  <19.036856, 20.922203, 15.513296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.798435, 20.948040, 15.522692>,  <18.401068, 20.991102, 15.538351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.798435, 20.948040, 15.522692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018959, -0.182514, 0.983020,
		-0.112967, -0.977292, -0.179272,
		0.993418, -0.107650, -0.039147,
		19.096460, 20.915743, 15.510947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512539, 20.421864, 15.947960>,  <18.401068, 20.991102, 15.538351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.512539, 20.421864, 15.947960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.855949, 20.625175, 15.920877>,  <19.061996, 20.747162, 15.904628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.855949, 20.625175, 15.920877>,  <18.512539, 20.421864, 15.947960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855949, 20.625175, 15.920877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073098, 0.009375, 0.997281,
		0.507533, -0.861140, -0.029106,
		0.858525, 0.508281, -0.067706,
		19.113506, 20.777660, 15.900566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.919767, 20.166197, 16.475811>,  <18.512539, 20.421864, 15.947960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.919767, 20.166197, 16.475811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.082916, 20.519939, 16.384987>,  <19.180805, 20.732185, 16.330492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.082916, 20.519939, 16.384987>,  <18.919767, 20.166197, 16.475811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.082916, 20.519939, 16.384987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064087, 0.220341, 0.973315,
		0.910787, -0.411541, 0.033196,
		0.407874, 0.884355, -0.227058,
		19.205278, 20.785246, 16.316870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.527866, 20.204489, 16.939150>,  <18.919767, 20.166197, 16.475811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.527866, 20.204489, 16.939150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.484463, 20.575298, 16.795565>,  <19.458420, 20.797783, 16.709414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.484463, 20.575298, 16.795565>,  <19.527866, 20.204489, 16.939150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.484463, 20.575298, 16.795565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160400, 0.372690, 0.913988,
		0.981070, 0.041598, -0.189134,
		-0.108509, 0.927023, -0.358963,
		19.451910, 20.853405, 16.687876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007017, 20.603155, 17.210148>,  <19.527866, 20.204489, 16.939150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007017, 20.603155, 17.210148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.742599, 20.885246, 17.107639>,  <19.583950, 21.054501, 17.046133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.742599, 20.885246, 17.107639>,  <20.007017, 20.603155, 17.210148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.742599, 20.885246, 17.107639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207836, 0.500266, 0.840558,
		0.720990, 0.502383, -0.477269,
		-0.661043, 0.705227, -0.256273,
		19.544287, 21.096815, 17.030758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308485, 21.221983, 17.390501>,  <20.007017, 20.603155, 17.210148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308485, 21.221983, 17.390501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.923164, 21.327076, 17.368530>,  <19.691971, 21.390133, 17.355349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.923164, 21.327076, 17.368530>,  <20.308485, 21.221983, 17.390501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.923164, 21.327076, 17.368530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070765, 0.445986, 0.892238,
		0.258918, 0.855609, -0.448212,
		-0.963304, 0.262734, -0.054927,
		19.634172, 21.405895, 17.352053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.293497, 21.919271, 17.659372>,  <20.308485, 21.221983, 17.390501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.293497, 21.919271, 17.659372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.904068, 21.833340, 17.690378>,  <19.670410, 21.781780, 17.708982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.904068, 21.833340, 17.690378>,  <20.293497, 21.919271, 17.659372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.904068, 21.833340, 17.690378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056033, 0.553706, 0.830825,
		-0.221406, 0.804523, -0.551109,
		-0.973571, -0.214830, 0.077514,
		19.611998, 21.768890, 17.713633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025583, 22.559938, 17.927794>,  <20.293497, 21.919271, 17.659372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025583, 22.559938, 17.927794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.746044, 22.282722, 17.998571>,  <19.578321, 22.116394, 18.041039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.746044, 22.282722, 17.998571>,  <20.025583, 22.559938, 17.927794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746044, 22.282722, 17.998571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305300, 0.512732, 0.802432,
		-0.646841, 0.506757, -0.569907,
		-0.698848, -0.693039, 0.176943,
		19.536390, 22.074810, 18.051655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492193, 22.980772, 18.141037>,  <20.025583, 22.559938, 17.927794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492193, 22.980772, 18.141037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.405338, 22.612560, 18.270948>,  <19.353226, 22.391634, 18.348894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.405338, 22.612560, 18.270948>,  <19.492193, 22.980772, 18.141037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.405338, 22.612560, 18.270948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151494, 0.360463, 0.920389,
		-0.964314, 0.150649, -0.217724,
		-0.217137, -0.920528, 0.324777,
		19.340197, 22.336403, 18.368382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915562, 23.062138, 18.564575>,  <19.492193, 22.980772, 18.141037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915562, 23.062138, 18.564575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.133354, 22.748405, 18.683479>,  <19.264030, 22.560165, 18.754822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.133354, 22.748405, 18.683479>,  <18.915562, 23.062138, 18.564575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.133354, 22.748405, 18.683479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261840, 0.177751, 0.948601,
		-0.796856, -0.594330, -0.108588,
		0.544481, -0.784332, 0.297261,
		19.296698, 22.513105, 18.772657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572084, 22.787531, 19.006050>,  <18.915562, 23.062138, 18.564575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.572084, 22.787531, 19.006050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.908840, 22.589973, 19.093033>,  <19.110893, 22.471439, 19.145222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.908840, 22.589973, 19.093033>,  <18.572084, 22.787531, 19.006050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.908840, 22.589973, 19.093033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222460, 0.049498, 0.973684,
		-0.491662, -0.868111, -0.068200,
		0.841891, -0.493896, 0.217456,
		19.161407, 22.441805, 19.158270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849161, 22.479355, 19.178394>,  <18.572084, 22.787531, 19.006050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849161, 22.479355, 19.178394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.518150, 22.676693, 19.285583>,  <17.319544, 22.795097, 19.349897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.518150, 22.676693, 19.285583>,  <17.849161, 22.479355, 19.178394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518150, 22.676693, 19.285583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145130, 0.273108, -0.950973,
		-0.542346, -0.825845, -0.154404,
		-0.827525, 0.493348, 0.267974,
		17.269894, 22.824697, 19.365976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248547, 22.108969, 18.810673>,  <17.849161, 22.479355, 19.178394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248547, 22.108969, 18.810673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.142242, 22.476898, 18.926117>,  <17.078461, 22.697657, 18.995382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.142242, 22.476898, 18.926117>,  <17.248547, 22.108969, 18.810673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142242, 22.476898, 18.926117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304169, 0.204078, -0.930502,
		-0.914797, -0.335076, 0.225546,
		-0.265760, 0.919824, 0.288609,
		17.062515, 22.752846, 19.012699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.498055, 22.203846, 18.643240>,  <17.248547, 22.108969, 18.810673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.498055, 22.203846, 18.643240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.651184, 22.573364, 18.645832>,  <16.743063, 22.795076, 18.647387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.651184, 22.573364, 18.645832>,  <16.498055, 22.203846, 18.643240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651184, 22.573364, 18.645832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284472, 0.124553, -0.950559,
		-0.878931, 0.362056, 0.310477,
		0.382826, 0.923798, 0.006478,
		16.766031, 22.850504, 18.647776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141390, 22.602064, 18.232185>,  <16.498055, 22.203846, 18.643240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141390, 22.602064, 18.232185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.471264, 22.825005, 18.270664>,  <16.669189, 22.958769, 18.293753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.471264, 22.825005, 18.270664>,  <16.141390, 22.602064, 18.232185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.471264, 22.825005, 18.270664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023251, 0.203350, -0.978830,
		-0.565113, 0.804991, 0.180659,
		0.824686, 0.557350, 0.096199,
		16.718670, 22.992210, 18.299524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040529, 23.180891, 17.789743>,  <16.141390, 22.602064, 18.232185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040529, 23.180891, 17.789743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.436703, 23.168762, 17.843594>,  <16.674406, 23.161486, 17.875904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.436703, 23.168762, 17.843594>,  <16.040529, 23.180891, 17.789743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436703, 23.168762, 17.843594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137905, 0.253177, -0.957540,
		-0.005050, 0.966945, 0.254936,
		0.990433, -0.030321, 0.134625,
		16.733833, 23.159666, 17.883982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
