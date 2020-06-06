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
	<23.200134, 17.045298, -2.155332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.181679, 16.705257, -1.945493>,  <23.170605, 16.501234, -1.819589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.181679, 16.705257, -1.945493>,  <23.200134, 17.045298, -2.155332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.181679, 16.705257, -1.945493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441918, -0.488344, -0.752482,
		0.895868, 0.197111, 0.398205,
		-0.046139, -0.850099, 0.524598,
		23.167837, 16.450228, -1.788113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.628817, 17.408213, -1.727135>,  <23.200134, 17.045298, -2.155332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.628817, 17.408213, -1.727135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.963436, 17.497189, -1.526853>,  <23.164207, 17.550573, -1.406684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.963436, 17.497189, -1.526853>,  <22.628817, 17.408213, -1.727135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.963436, 17.497189, -1.526853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167495, 0.973954, -0.152837,
		-0.521660, 0.043990, 0.852019,
		0.836550, 0.222438, 0.500705,
		23.214401, 17.563919, -1.376642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497919, 17.891193, -1.102679>,  <22.628817, 17.408213, -1.727135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497919, 17.891193, -1.102679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.862671, 17.955631, -1.253688>,  <23.081522, 17.994293, -1.344292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.862671, 17.955631, -1.253688>,  <22.497919, 17.891193, -1.102679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.862671, 17.955631, -1.253688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115590, 0.983324, 0.140400,
		0.393842, -0.084391, 0.915296,
		0.911881, 0.161094, -0.377520,
		23.136234, 18.003960, -1.366944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.910841, 18.274916, -0.633629>,  <22.497919, 17.891193, -1.102679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.910841, 18.274916, -0.633629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035896, 18.334042, -1.008949>,  <23.110929, 18.369516, -1.234141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035896, 18.334042, -1.008949>,  <22.910841, 18.274916, -0.633629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.035896, 18.334042, -1.008949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224950, 0.971239, 0.078051,
		0.922851, 0.186669, 0.336899,
		0.312640, 0.147815, -0.938300,
		23.129688, 18.378386, -1.290439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.431313, 18.785437, -0.689501>,  <22.910841, 18.274916, -0.633629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.431313, 18.785437, -0.689501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.213509, 18.761147, -1.024122>,  <23.082827, 18.746572, -1.224894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.213509, 18.761147, -1.024122>,  <23.431313, 18.785437, -0.689501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.213509, 18.761147, -1.024122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328414, 0.933178, 0.146027,
		0.771784, 0.354249, -0.528068,
		-0.544511, -0.060724, -0.836552,
		23.050156, 18.742929, -1.275087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.619041, 19.158930, -1.275347>,  <23.431313, 18.785437, -0.689501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.619041, 19.158930, -1.275347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.219570, 19.157627, -1.254839>,  <22.979887, 19.156845, -1.242533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.219570, 19.157627, -1.254839>,  <23.619041, 19.158930, -1.275347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.219570, 19.157627, -1.254839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000807, 0.998861, 0.047704,
		-0.051369, 0.047599, -0.997545,
		-0.998679, -0.003256, 0.051272,
		22.919966, 19.156651, -1.239457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.338802, 19.763241, -1.667018>,  <23.619041, 19.158930, -1.275347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.338802, 19.763241, -1.667018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047546, 19.644772, -1.419763>,  <22.872793, 19.573690, -1.271410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047546, 19.644772, -1.419763>,  <23.338802, 19.763241, -1.667018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047546, 19.644772, -1.419763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293241, 0.949732, 0.109629,
		-0.619536, -0.101439, -0.778387,
		-0.728138, -0.296174, 0.618139,
		22.829105, 19.555920, -1.234321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.760931, 20.047386, -1.871427>,  <23.338802, 19.763241, -1.667018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.760931, 20.047386, -1.871427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.742775, 20.005531, -1.474038>,  <22.731882, 19.980419, -1.235604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.742775, 20.005531, -1.474038>,  <22.760931, 20.047386, -1.871427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.742775, 20.005531, -1.474038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110671, 0.988904, 0.099100,
		-0.992820, -0.105451, -0.056466,
		-0.045389, -0.104638, 0.993474,
		22.729158, 19.974140, -1.175996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.069693, 20.248877, -1.406464>,  <22.760931, 20.047386, -1.871427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.069693, 20.248877, -1.406464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021774, 20.547611, -1.144813>,  <21.993023, 20.726852, -0.987822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021774, 20.547611, -1.144813>,  <22.069693, 20.248877, -1.406464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021774, 20.547611, -1.144813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991014, 0.050469, 0.123871,
		0.059499, 0.663090, -0.746171,
		-0.119796, 0.746836, 0.654129,
		21.985836, 20.771662, -0.948574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631762, 20.669931, -1.508652>,  <22.069693, 20.248877, -1.406464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631762, 20.669931, -1.508652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.509441, 20.701145, -1.129094>,  <22.436050, 20.719873, -0.901360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.509441, 20.701145, -1.129094>,  <22.631762, 20.669931, -1.508652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.509441, 20.701145, -1.129094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950960, -0.023630, 0.308409,
		0.046488, 0.996671, -0.066980,
		-0.305800, 0.078033, 0.948893,
		22.417702, 20.724556, -0.844427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.030331, 21.212954, -1.151395>,  <22.631762, 20.669931, -1.508652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.030331, 21.212954, -1.151395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.893627, 20.946957, -0.885767>,  <22.811605, 20.787359, -0.726391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.893627, 20.946957, -0.885767>,  <23.030331, 21.212954, -1.151395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.893627, 20.946957, -0.885767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919865, -0.091981, 0.381296,
		-0.192476, 0.741166, 0.643138,
		-0.341761, -0.664991, 0.664069,
		22.791100, 20.747459, -0.686547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.241577, 21.314491, -0.486964>,  <23.030331, 21.212954, -1.151395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.241577, 21.314491, -0.486964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191452, 20.919209, -0.522166>,  <23.161377, 20.682039, -0.543288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191452, 20.919209, -0.522166>,  <23.241577, 21.314491, -0.486964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.191452, 20.919209, -0.522166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886474, -0.151358, 0.437328,
		-0.445491, -0.023212, 0.894986,
		-0.125312, -0.988207, -0.088005,
		23.153858, 20.622747, -0.548568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.448246, 21.037270, 0.191386>,  <23.241577, 21.314491, -0.486964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.448246, 21.037270, 0.191386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.527508, 20.835224, -0.144613>,  <23.575066, 20.713997, -0.346212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.527508, 20.835224, -0.144613>,  <23.448246, 21.037270, 0.191386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.527508, 20.835224, -0.144613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940033, -0.144794, 0.308824,
		-0.277617, -0.850820, 0.446132,
		0.198156, -0.505114, -0.839996,
		23.586954, 20.683689, -0.396612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.807388, 20.439383, 0.413231>,  <23.448246, 21.037270, 0.191386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.807388, 20.439383, 0.413231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.899204, 20.578259, 0.049523>,  <23.954294, 20.661585, -0.168701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.899204, 20.578259, 0.049523>,  <23.807388, 20.439383, 0.413231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.899204, 20.578259, 0.049523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967768, 0.018044, 0.251199,
		0.103621, -0.937621, -0.331857,
		0.229541, 0.347190, -0.909269,
		23.968067, 20.682415, -0.223257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553743, 20.318262, 0.258502>,  <23.807388, 20.439383, 0.413231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553743, 20.318262, 0.258502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649944, 20.637768, 0.479095>,  <24.707664, 20.829472, 0.611451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649944, 20.637768, 0.479095>,  <24.553743, 20.318262, 0.258502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649944, 20.637768, 0.479095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525524, 0.370528, -0.765855,
		-0.816078, 0.474008, -0.330656,
		0.240504, 0.798765, 0.551482,
		24.722095, 20.877398, 0.644540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376059, 20.337025, 0.384476>,  <24.553743, 20.318262, 0.258502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376059, 20.337025, 0.384476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447430, 20.284401, -0.005572>,  <25.490253, 20.252827, -0.239600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447430, 20.284401, -0.005572>,  <25.376059, 20.337025, 0.384476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447430, 20.284401, -0.005572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942842, -0.306329, -0.131194,
		-0.281447, 0.942791, -0.178698,
		0.178429, -0.131559, -0.975118,
		25.500957, 20.244934, -0.298107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705431, 19.668510, 0.694870>,  <25.376059, 20.337025, 0.384476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705431, 19.668510, 0.694870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422527, 19.655090, 0.977334>,  <25.252785, 19.647038, 1.146813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422527, 19.655090, 0.977334>,  <25.705431, 19.668510, 0.694870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422527, 19.655090, 0.977334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692928, -0.165102, -0.701849,
		0.140136, -0.985706, 0.093521,
		-0.707257, -0.033552, 0.706160,
		25.210350, 19.645025, 1.189183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272739, 19.051378, 0.734147>,  <25.705431, 19.668510, 0.694870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272739, 19.051378, 0.734147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062607, 19.370224, 0.853237>,  <24.936527, 19.561531, 0.924692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062607, 19.370224, 0.853237>,  <25.272739, 19.051378, 0.734147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.062607, 19.370224, 0.853237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700156, -0.206104, -0.683596,
		-0.483540, -0.567568, 0.666375,
		-0.525330, 0.797113, 0.297726,
		24.905008, 19.609358, 0.942555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553204, 18.811480, 1.041824>,  <25.272739, 19.051378, 0.734147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553204, 18.811480, 1.041824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534882, 19.164536, 0.854699>,  <24.523890, 19.376369, 0.742423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534882, 19.164536, 0.854699>,  <24.553204, 18.811480, 1.041824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534882, 19.164536, 0.854699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703263, -0.361080, -0.612406,
		-0.709452, 0.300946, 0.637267,
		-0.045804, 0.882640, -0.467814,
		24.521141, 19.429327, 0.714355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597815, 18.813702, 1.831043>,  <24.553204, 18.811480, 1.041824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597815, 18.813702, 1.831043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711781, 19.069397, 1.545331>,  <24.780159, 19.222815, 1.373904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711781, 19.069397, 1.545331>,  <24.597815, 18.813702, 1.831043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711781, 19.069397, 1.545331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335428, 0.631565, 0.699010,
		0.897949, -0.438747, -0.034477,
		0.284914, 0.639240, -0.714281,
		24.797255, 19.261169, 1.331047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412365, 18.869486, 1.772955>,  <24.597815, 18.813702, 1.831043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412365, 18.869486, 1.772955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203457, 19.196728, 1.676675>,  <25.078112, 19.393072, 1.618907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203457, 19.196728, 1.676675>,  <25.412365, 18.869486, 1.772955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203457, 19.196728, 1.676675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519994, 0.529224, 0.670469,
		0.675898, 0.225005, -0.701808,
		-0.522272, 0.818105, -0.240700,
		25.046776, 19.442160, 1.604465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559290, 19.550758, 2.243516>,  <25.412365, 18.869486, 1.772955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559290, 19.550758, 2.243516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171108, 19.637604, 2.201409>,  <24.938200, 19.689711, 2.176145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171108, 19.637604, 2.201409>,  <25.559290, 19.550758, 2.243516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171108, 19.637604, 2.201409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155825, -0.230851, 0.960430,
		0.184220, 0.948457, 0.257862,
		-0.970454, 0.217112, -0.105266,
		24.879972, 19.702738, 2.169829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424198, 20.154333, 2.663341>,  <25.559290, 19.550758, 2.243516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424198, 20.154333, 2.663341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102341, 19.920277, 2.623030>,  <24.909225, 19.779842, 2.598844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102341, 19.920277, 2.623030>,  <25.424198, 20.154333, 2.663341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102341, 19.920277, 2.623030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008234, -0.158712, 0.987291,
		-0.593699, 0.795248, 0.122888,
		-0.804645, -0.585142, -0.100776,
		24.860947, 19.744734, 2.592798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941628, 20.419315, 3.134356>,  <25.424198, 20.154333, 2.663341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941628, 20.419315, 3.134356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920891, 20.026047, 3.064290>,  <24.908449, 19.790085, 3.022251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920891, 20.026047, 3.064290>,  <24.941628, 20.419315, 3.134356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920891, 20.026047, 3.064290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048971, -0.177691, 0.982867,
		-0.997454, 0.042374, 0.057358,
		-0.051840, -0.983174, -0.175164,
		24.905338, 19.731094, 3.011741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.577234, 20.168398, 3.539396>,  <24.941628, 20.419315, 3.134356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.577234, 20.168398, 3.539396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754578, 19.822872, 3.443679>,  <24.860983, 19.615557, 3.386248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754578, 19.822872, 3.443679>,  <24.577234, 20.168398, 3.539396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754578, 19.822872, 3.443679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148502, -0.192490, 0.969998,
		-0.883958, -0.465591, 0.042936,
		0.443358, -0.863813, -0.239294,
		24.887585, 19.563728, 3.371891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.083815, 19.714634, 3.950421>,  <24.577234, 20.168398, 3.539396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.083815, 19.714634, 3.950421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.448067, 19.569103, 3.872056>,  <24.666618, 19.481785, 3.825036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.448067, 19.569103, 3.872056>,  <24.083815, 19.714634, 3.950421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.448067, 19.569103, 3.872056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115013, -0.232218, 0.965840,
		-0.396893, -0.902056, -0.169620,
		0.910630, -0.363827, -0.195913,
		24.721256, 19.459955, 3.813282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.134008, 19.013073, 4.168217>,  <24.083815, 19.714634, 3.950421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.134008, 19.013073, 4.168217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494110, 19.185165, 4.194864>,  <24.710171, 19.288422, 4.210852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494110, 19.185165, 4.194864>,  <24.134008, 19.013073, 4.168217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494110, 19.185165, 4.194864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010871, -0.175184, 0.984476,
		0.435225, -0.885556, -0.162387,
		0.900256, 0.430234, 0.066618,
		24.764187, 19.314236, 4.214849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.666883, 18.619278, 4.526906>,  <24.134008, 19.013073, 4.168217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.666883, 18.619278, 4.526906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732521, 19.012897, 4.554393>,  <24.771904, 19.249069, 4.570885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732521, 19.012897, 4.554393>,  <24.666883, 18.619278, 4.526906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732521, 19.012897, 4.554393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053360, -0.078415, 0.995492,
		0.985001, -0.159686, -0.065376,
		0.164092, 0.984048, 0.068718,
		24.781750, 19.308111, 4.575008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297174, 18.703333, 4.861629>,  <24.666883, 18.619278, 4.526906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297174, 18.703333, 4.861629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019627, 18.986496, 4.914412>,  <24.853098, 19.156393, 4.946081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019627, 18.986496, 4.914412>,  <25.297174, 18.703333, 4.861629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.019627, 18.986496, 4.914412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102854, -0.083939, 0.991148,
		0.712716, 0.701301, -0.014568,
		-0.693871, 0.707906, 0.131957,
		24.811466, 19.198868, 4.953999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573259, 19.017317, 5.486631>,  <25.297174, 18.703333, 4.861629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573259, 19.017317, 5.486631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183777, 19.086575, 5.427412>,  <24.950087, 19.128128, 5.391881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183777, 19.086575, 5.427412>,  <25.573259, 19.017317, 5.486631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183777, 19.086575, 5.427412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196949, -0.313185, 0.929046,
		0.114491, 0.933775, 0.339050,
		-0.973706, 0.173143, -0.148049,
		24.891665, 19.138517, 5.382998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169884, 19.515593, 5.990789>,  <25.573259, 19.017317, 5.486631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169884, 19.515593, 5.990789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965637, 19.201000, 5.851810>,  <24.843090, 19.012245, 5.768422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965637, 19.201000, 5.851810>,  <25.169884, 19.515593, 5.990789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965637, 19.201000, 5.851810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270608, -0.236563, 0.933172,
		-0.816115, 0.570514, -0.092036,
		-0.510615, -0.786481, -0.347448,
		24.812452, 18.965055, 5.747575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.394026, 19.506094, 5.949289>,  <25.169884, 19.515593, 5.990789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.394026, 19.506094, 5.949289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574306, 19.156242, 6.020721>,  <24.682476, 18.946331, 6.063581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574306, 19.156242, 6.020721>,  <24.394026, 19.506094, 5.949289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574306, 19.156242, 6.020721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215215, 0.087687, 0.972622,
		-0.866342, -0.476798, -0.148712,
		0.450704, -0.874629, 0.178580,
		24.709518, 18.893854, 6.074296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.954727, 19.082058, 6.348999>,  <24.394026, 19.506094, 5.949289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.954727, 19.082058, 6.348999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335022, 18.988533, 6.430419>,  <24.563198, 18.932419, 6.479271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335022, 18.988533, 6.430419>,  <23.954727, 19.082058, 6.348999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335022, 18.988533, 6.430419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119887, 0.328208, 0.936967,
		-0.285882, -0.915211, 0.284008,
		0.950736, -0.233813, 0.203550,
		24.620243, 18.918388, 6.491484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.040174, 18.599125, 6.956350>,  <23.954727, 19.082058, 6.348999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.040174, 18.599125, 6.956350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367691, 18.825928, 6.992311>,  <24.564201, 18.962009, 7.013888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367691, 18.825928, 6.992311>,  <24.040174, 18.599125, 6.956350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367691, 18.825928, 6.992311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220745, 0.166390, 0.961034,
		0.529956, -0.806731, 0.261403,
		0.818791, 0.567009, 0.089903,
		24.613329, 18.996031, 7.019282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.501753, 18.492393, 7.499166>,  <24.040174, 18.599125, 6.956350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.501753, 18.492393, 7.499166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487331, 18.882553, 7.412170>,  <24.478680, 19.116648, 7.359973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487331, 18.882553, 7.412170>,  <24.501753, 18.492393, 7.499166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487331, 18.882553, 7.412170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330345, 0.193765, 0.923757,
		0.943172, 0.105150, 0.315232,
		-0.036052, 0.975397, -0.217490,
		24.476517, 19.175173, 7.346923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824839, 18.860390, 7.977887>,  <24.501753, 18.492393, 7.499166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824839, 18.860390, 7.977887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561840, 19.138126, 7.860866>,  <24.404041, 19.304770, 7.790653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561840, 19.138126, 7.860866>,  <24.824839, 18.860390, 7.977887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561840, 19.138126, 7.860866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110733, 0.295017, 0.949054,
		0.745278, 0.656393, -0.117085,
		-0.657494, 0.694344, -0.292554,
		24.364592, 19.346430, 7.773099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102064, 19.513226, 8.221641>,  <24.824839, 18.860390, 7.977887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102064, 19.513226, 8.221641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709648, 19.575039, 8.174856>,  <24.474199, 19.612127, 8.146786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709648, 19.575039, 8.174856>,  <25.102064, 19.513226, 8.221641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709648, 19.575039, 8.174856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061117, 0.326025, 0.943384,
		0.183915, 0.932646, -0.310399,
		-0.981040, 0.154531, -0.116961,
		24.415337, 19.621399, 8.139768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963358, 20.223991, 8.480879>,  <25.102064, 19.513226, 8.221641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963358, 20.223991, 8.480879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612953, 20.033104, 8.452971>,  <24.402710, 19.918571, 8.436227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612953, 20.033104, 8.452971>,  <24.963358, 20.223991, 8.480879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612953, 20.033104, 8.452971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192092, 0.212547, 0.958084,
		-0.442384, 0.852695, -0.277863,
		-0.876012, -0.477216, -0.069768,
		24.350149, 19.889938, 8.432041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610319, 20.664213, 8.845546>,  <24.963358, 20.223991, 8.480879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610319, 20.664213, 8.845546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419014, 20.313286, 8.829668>,  <24.304230, 20.102730, 8.820142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419014, 20.313286, 8.829668>,  <24.610319, 20.664213, 8.845546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419014, 20.313286, 8.829668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252913, 0.094309, 0.962881,
		-0.841010, 0.470551, -0.266990,
		-0.478264, -0.877319, -0.039693,
		24.275536, 20.050091, 8.817760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.989359, 20.924932, 9.085496>,  <24.610319, 20.664213, 8.845546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.989359, 20.924932, 9.085496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.028530, 20.530350, 9.138134>,  <24.052032, 20.293600, 9.169717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.028530, 20.530350, 9.138134>,  <23.989359, 20.924932, 9.085496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.028530, 20.530350, 9.138134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366732, 0.087154, 0.926235,
		-0.925158, -0.138966, -0.353230,
		0.097930, -0.986454, 0.131594,
		24.057909, 20.234413, 9.177612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.291988, 20.643370, 9.367648>,  <23.989359, 20.924932, 9.085496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.291988, 20.643370, 9.367648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.592712, 20.395618, 9.458117>,  <23.773148, 20.246967, 9.512398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.592712, 20.395618, 9.458117>,  <23.291988, 20.643370, 9.367648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.592712, 20.395618, 9.458117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261451, 0.034872, 0.964587,
		-0.605329, -0.784319, -0.135720,
		0.751811, -0.619377, 0.226170,
		23.818256, 20.209806, 9.525968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.043524, 20.092747, 9.805424>,  <23.291988, 20.643370, 9.367648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.043524, 20.092747, 9.805424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.435150, 20.065128, 9.882013>,  <23.670126, 20.048557, 9.927967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.435150, 20.065128, 9.882013>,  <23.043524, 20.092747, 9.805424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.435150, 20.065128, 9.882013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203397, -0.367585, 0.907475,
		0.007727, -0.927423, -0.373934,
		0.979066, -0.069045, 0.191476,
		23.728870, 20.044415, 9.939456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.269239, 19.388809, 10.051469>,  <23.043524, 20.092747, 9.805424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.269239, 19.388809, 10.051469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535610, 19.648163, 10.199056>,  <23.695433, 19.803776, 10.287608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535610, 19.648163, 10.199056>,  <23.269239, 19.388809, 10.051469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.535610, 19.648163, 10.199056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260677, -0.261168, 0.929429,
		0.698990, -0.715114, -0.004899,
		0.665927, 0.648385, 0.368968,
		23.735388, 19.842678, 10.309746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.548267, 19.060261, 10.632528>,  <23.269239, 19.388809, 10.051469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.548267, 19.060261, 10.632528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.654247, 19.441006, 10.694188>,  <23.717836, 19.669453, 10.731184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.654247, 19.441006, 10.694188>,  <23.548267, 19.060261, 10.632528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.654247, 19.441006, 10.694188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053951, -0.174247, 0.983223,
		0.962751, -0.252190, -0.097520,
		0.264951, 0.951860, 0.154150,
		23.733732, 19.726564, 10.740434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.088066, 19.016987, 11.160347>,  <23.548267, 19.060261, 10.632528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.088066, 19.016987, 11.160347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.986172, 19.403744, 11.166471>,  <23.925035, 19.635798, 11.170145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.986172, 19.403744, 11.166471>,  <24.088066, 19.016987, 11.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.986172, 19.403744, 11.166471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085966, -0.038411, 0.995557,
		0.963182, 0.252287, 0.092905,
		-0.254735, 0.966890, 0.015309,
		23.909752, 19.693811, 11.171063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466150, 19.244726, 11.727541>,  <24.088066, 19.016987, 11.160347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466150, 19.244726, 11.727541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.179424, 19.514656, 11.657353>,  <24.007389, 19.676615, 11.615241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.179424, 19.514656, 11.657353>,  <24.466150, 19.244726, 11.727541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.179424, 19.514656, 11.657353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153855, 0.092373, 0.983766,
		0.680078, 0.732174, 0.037611,
		-0.716814, 0.674825, -0.175469,
		23.964380, 19.717104, 11.604712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512392, 19.775856, 12.348851>,  <24.466150, 19.244726, 11.727541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512392, 19.775856, 12.348851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.159657, 19.856766, 12.178464>,  <23.948015, 19.905312, 12.076232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.159657, 19.856766, 12.178464>,  <24.512392, 19.775856, 12.348851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.159657, 19.856766, 12.178464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340657, 0.351353, 0.872069,
		0.326063, 0.914131, -0.240930,
		-0.881837, 0.202275, -0.425968,
		23.895105, 19.917448, 12.050673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379555, 20.431536, 12.499226>,  <24.512392, 19.775856, 12.348851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379555, 20.431536, 12.499226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023117, 20.283360, 12.394367>,  <23.809254, 20.194454, 12.331452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023117, 20.283360, 12.394367>,  <24.379555, 20.431536, 12.499226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.023117, 20.283360, 12.394367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397164, 0.357111, 0.845418,
		-0.219563, 0.857464, -0.465347,
		-0.891096, -0.370442, -0.262145,
		23.755789, 20.172228, 12.315723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.907480, 20.918848, 12.536699>,  <24.379555, 20.431536, 12.499226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.907480, 20.918848, 12.536699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.683792, 20.588352, 12.563845>,  <23.549580, 20.390055, 12.580132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.683792, 20.588352, 12.563845>,  <23.907480, 20.918848, 12.536699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.683792, 20.588352, 12.563845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377762, 0.326832, 0.866301,
		-0.737950, 0.458816, -0.494891,
		-0.559219, -0.826238, 0.067863,
		23.516027, 20.340481, 12.584204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.189835, 21.170578, 12.513877>,  <23.907480, 20.918848, 12.536699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.189835, 21.170578, 12.513877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.193745, 20.807308, 12.681266>,  <23.196091, 20.589346, 12.781699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.193745, 20.807308, 12.681266>,  <23.189835, 21.170578, 12.513877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.193745, 20.807308, 12.681266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344298, 0.389846, 0.854095,
		-0.938810, -0.152430, -0.308871,
		0.009777, -0.908177, 0.418472,
		23.196678, 20.534855, 12.806808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.615408, 21.181398, 12.933515>,  <23.189835, 21.170578, 12.513877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.615408, 21.181398, 12.933515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.841766, 20.890495, 13.088875>,  <22.977581, 20.715954, 13.182091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.841766, 20.890495, 13.088875>,  <22.615408, 21.181398, 12.933515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.841766, 20.890495, 13.088875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216449, 0.323518, 0.921133,
		-0.795556, -0.605336, 0.025664,
		0.565898, -0.727258, 0.388401,
		23.011536, 20.672318, 13.205395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220282, 20.949203, 13.457248>,  <22.615408, 21.181398, 12.933515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220282, 20.949203, 13.457248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.581089, 20.805302, 13.552700>,  <22.797573, 20.718962, 13.609971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.581089, 20.805302, 13.552700>,  <22.220282, 20.949203, 13.457248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.581089, 20.805302, 13.552700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143739, 0.270946, 0.951802,
		-0.407069, -0.892842, 0.192687,
		0.902017, -0.359753, 0.238630,
		22.851694, 20.697376, 13.624289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115669, 20.561228, 14.084471>,  <22.220282, 20.949203, 13.457248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115669, 20.561228, 14.084471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.513645, 20.601410, 14.083988>,  <22.752432, 20.625519, 14.083698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.513645, 20.601410, 14.083988>,  <22.115669, 20.561228, 14.084471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.513645, 20.601410, 14.083988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020982, 0.219528, 0.975380,
		0.098242, -0.970421, 0.220525,
		0.994942, 0.100451, -0.001206,
		22.812128, 20.631546, 14.083627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336283, 20.147612, 14.726392>,  <22.115669, 20.561228, 14.084471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336283, 20.147612, 14.726392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.610165, 20.424988, 14.636663>,  <22.774494, 20.591413, 14.582827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.610165, 20.424988, 14.636663>,  <22.336283, 20.147612, 14.726392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.610165, 20.424988, 14.636663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080702, 0.233759, 0.968940,
		0.724338, -0.681542, 0.104094,
		0.684706, 0.693439, -0.224322,
		22.815577, 20.633018, 14.569366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.905252, 20.028133, 15.241075>,  <22.336283, 20.147612, 14.726392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.905252, 20.028133, 15.241075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.923378, 20.406338, 15.112106>,  <22.934254, 20.633261, 15.034725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.923378, 20.406338, 15.112106>,  <22.905252, 20.028133, 15.241075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.923378, 20.406338, 15.112106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104295, 0.316509, 0.942839,
		0.993514, -0.076352, -0.084269,
		0.045315, 0.945512, -0.322420,
		22.936972, 20.689991, 15.015381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477060, 20.312010, 15.600978>,  <22.905252, 20.028133, 15.241075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477060, 20.312010, 15.600978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265816, 20.626976, 15.473808>,  <23.139069, 20.815956, 15.397507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265816, 20.626976, 15.473808>,  <23.477060, 20.312010, 15.600978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.265816, 20.626976, 15.473808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024444, 0.388334, 0.921194,
		0.848822, 0.478724, -0.224332,
		-0.528114, 0.787413, -0.317924,
		23.107382, 20.863199, 15.378431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.714895, 20.840815, 15.903475>,  <23.477060, 20.312010, 15.600978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.714895, 20.840815, 15.903475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.355755, 20.977856, 15.792850>,  <23.140270, 21.060080, 15.726476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.355755, 20.977856, 15.792850>,  <23.714895, 20.840815, 15.903475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.355755, 20.977856, 15.792850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150073, 0.352385, 0.923744,
		0.413932, 0.870890, -0.264974,
		-0.897852, 0.342601, -0.276560,
		23.086399, 21.080637, 15.709883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.666996, 21.555502, 16.279835>,  <23.714895, 20.840815, 15.903475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.666996, 21.555502, 16.279835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.297707, 21.453091, 16.165218>,  <23.076132, 21.391644, 16.096449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.297707, 21.453091, 16.165218>,  <23.666996, 21.555502, 16.279835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.297707, 21.453091, 16.165218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360137, 0.316474, 0.877580,
		-0.134003, 0.913397, -0.384382,
		-0.923225, -0.256028, -0.286539,
		23.020739, 21.376282, 16.079256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281878, 22.143873, 16.423038>,  <23.666996, 21.555502, 16.279835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281878, 22.143873, 16.423038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.018402, 21.843609, 16.402510>,  <22.860317, 21.663450, 16.390192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.018402, 21.843609, 16.402510>,  <23.281878, 22.143873, 16.423038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.018402, 21.843609, 16.402510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490422, 0.376600, 0.785913,
		-0.570627, 0.542843, -0.616204,
		-0.658689, -0.750663, -0.051324,
		22.820795, 21.618410, 16.387112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703987, 22.345121, 16.770786>,  <23.281878, 22.143873, 16.423038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703987, 22.345121, 16.770786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.561844, 21.971634, 16.753418>,  <22.476557, 21.747541, 16.742998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.561844, 21.971634, 16.753418>,  <22.703987, 22.345121, 16.770786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.561844, 21.971634, 16.753418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443190, 0.127410, 0.887327,
		-0.822984, 0.334563, -0.459092,
		-0.355360, -0.933721, -0.043419,
		22.455236, 21.691517, 16.740393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.947115, 22.329119, 16.825857>,  <22.703987, 22.345121, 16.770786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.947115, 22.329119, 16.825857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067749, 21.975903, 16.969681>,  <22.140129, 21.763973, 17.055975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067749, 21.975903, 16.969681>,  <21.947115, 22.329119, 16.825857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067749, 21.975903, 16.969681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503249, 0.172876, 0.846673,
		-0.809807, -0.436292, -0.392253,
		0.301585, -0.883042, 0.359559,
		22.158224, 21.710989, 17.077549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.354731, 22.106836, 17.149656>,  <21.947115, 22.329119, 16.825857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.354731, 22.106836, 17.149656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641796, 21.863308, 17.284887>,  <21.814035, 21.717192, 17.366026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641796, 21.863308, 17.284887>,  <21.354731, 22.106836, 17.149656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641796, 21.863308, 17.284887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306197, 0.160152, 0.938400,
		-0.625459, -0.776975, -0.071482,
		0.717666, -0.608819, 0.338076,
		21.857096, 21.680662, 17.386311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026323, 21.781931, 17.665417>,  <21.354731, 22.106836, 17.149656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026323, 21.781931, 17.665417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.411598, 21.703514, 17.738993>,  <21.642763, 21.656464, 17.783138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.411598, 21.703514, 17.738993>,  <21.026323, 21.781931, 17.665417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.411598, 21.703514, 17.738993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220670, -0.185804, 0.957487,
		-0.153519, -0.962834, -0.222223,
		0.963191, -0.196030, 0.183944,
		21.700556, 21.644701, 17.794174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.153650, 21.114323, 17.878614>,  <21.026323, 21.781931, 17.665417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.153650, 21.114323, 17.878614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.400860, 21.376148, 18.052782>,  <21.549185, 21.533243, 18.157284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.400860, 21.376148, 18.052782>,  <21.153650, 21.114323, 17.878614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.400860, 21.376148, 18.052782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345419, -0.271442, 0.898335,
		0.706211, -0.705594, 0.058342,
		0.618023, 0.654566, 0.435421,
		21.586267, 21.572517, 18.183409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019150, 20.990763, 18.589849>,  <21.153650, 21.114323, 17.878614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019150, 20.990763, 18.589849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.267986, 21.302383, 18.621054>,  <21.417288, 21.489355, 18.639776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.267986, 21.302383, 18.621054>,  <21.019150, 20.990763, 18.589849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.267986, 21.302383, 18.621054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280372, 0.128633, 0.951233,
		0.731024, -0.613623, 0.298446,
		0.622089, 0.779051, 0.078009,
		21.454613, 21.536098, 18.644457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324963, 20.838095, 19.162043>,  <21.019150, 20.990763, 18.589849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324963, 20.838095, 19.162043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313160, 21.224754, 19.060282>,  <21.306078, 21.456749, 18.999226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313160, 21.224754, 19.060282>,  <21.324963, 20.838095, 19.162043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313160, 21.224754, 19.060282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540154, 0.198731, 0.817765,
		0.841049, 0.161547, 0.516275,
		-0.029508, 0.966648, -0.254403,
		21.304308, 21.514750, 18.983961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.650183, 21.206482, 19.748569>,  <21.324963, 20.838095, 19.162043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.650183, 21.206482, 19.748569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410351, 21.454842, 19.546585>,  <21.266451, 21.603857, 19.425394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410351, 21.454842, 19.546585>,  <21.650183, 21.206482, 19.748569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.410351, 21.454842, 19.546585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376820, 0.337623, 0.862565,
		0.706053, 0.707457, 0.031535,
		-0.599580, 0.620899, -0.504963,
		21.230476, 21.641111, 19.395096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.577475, 21.727154, 20.185688>,  <21.650183, 21.206482, 19.748569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.577475, 21.727154, 20.185688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.286625, 21.830070, 19.931101>,  <21.112116, 21.891821, 19.778349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.286625, 21.830070, 19.931101>,  <21.577475, 21.727154, 20.185688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.286625, 21.830070, 19.931101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513926, 0.410678, 0.753142,
		0.455160, 0.874726, -0.166386,
		-0.727124, 0.257290, -0.636469,
		21.068487, 21.907257, 19.740160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321299, 22.396221, 20.341080>,  <21.577475, 21.727154, 20.185688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321299, 22.396221, 20.341080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022331, 22.258186, 20.114002>,  <20.842951, 22.175365, 19.977755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022331, 22.258186, 20.114002>,  <21.321299, 22.396221, 20.341080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022331, 22.258186, 20.114002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660621, 0.476475, 0.580130,
		0.070299, 0.808633, -0.584098,
		-0.747420, -0.345085, -0.567696,
		20.798105, 22.154661, 19.943693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844540, 22.990452, 20.289888>,  <21.321299, 22.396221, 20.341080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844540, 22.990452, 20.289888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.649887, 22.647747, 20.221596>,  <20.533094, 22.442125, 20.180620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.649887, 22.647747, 20.221596>,  <20.844540, 22.990452, 20.289888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.649887, 22.647747, 20.221596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760194, 0.318995, 0.565992,
		-0.430457, 0.405220, -0.806538,
		-0.486633, -0.856760, -0.170732,
		20.503897, 22.390718, 20.170376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.292034, 23.184435, 19.935503>,  <20.844540, 22.990452, 20.289888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.292034, 23.184435, 19.935503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.219162, 22.847069, 20.137676>,  <20.175438, 22.644650, 20.258980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.219162, 22.847069, 20.137676>,  <20.292034, 23.184435, 19.935503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.219162, 22.847069, 20.137676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814017, 0.417704, 0.403608,
		-0.551530, -0.337902, -0.762651,
		-0.182183, -0.843413, 0.505434,
		20.164507, 22.594046, 20.289307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.658281, 23.217989, 20.253069>,  <20.292034, 23.184435, 19.935503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.658281, 23.217989, 20.253069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748734, 22.872078, 20.432411>,  <19.803005, 22.664532, 20.540016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748734, 22.872078, 20.432411>,  <19.658281, 23.217989, 20.253069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748734, 22.872078, 20.432411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658463, 0.203487, 0.724582,
		-0.717837, -0.459078, -0.523409,
		0.226133, -0.864777, 0.448357,
		19.816574, 22.612644, 20.566917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.040123, 22.820889, 20.329954>,  <19.658281, 23.217989, 20.253069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.040123, 22.820889, 20.329954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.296448, 22.706150, 20.614792>,  <19.450243, 22.637306, 20.785694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.296448, 22.706150, 20.614792>,  <19.040123, 22.820889, 20.329954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.296448, 22.706150, 20.614792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615470, 0.362467, 0.699867,
		-0.458866, -0.886756, 0.055727,
		0.640811, -0.286847, 0.712096,
		19.488691, 22.620096, 20.828421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672447, 22.657223, 20.887131>,  <19.040123, 22.820889, 20.329954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.672447, 22.657223, 20.887131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040024, 22.696499, 21.039919>,  <19.260571, 22.720064, 21.131592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040024, 22.696499, 21.039919>,  <18.672447, 22.657223, 20.887131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040024, 22.696499, 21.039919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386495, 0.417024, 0.822625,
		-0.078517, -0.903576, 0.421171,
		0.918943, 0.098190, 0.381972,
		19.315706, 22.725956, 21.154510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709526, 22.449600, 21.685175>,  <18.672447, 22.657223, 20.887131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709526, 22.449600, 21.685175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.059025, 22.636028, 21.629539>,  <19.268724, 22.747885, 21.596157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.059025, 22.636028, 21.629539>,  <18.709526, 22.449600, 21.685175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059025, 22.636028, 21.629539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108616, 0.465719, 0.878242,
		0.474118, -0.752243, 0.457540,
		0.873737, 0.466086, -0.139100,
		19.321148, 22.775850, 21.587812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052778, 22.293781, 22.307837>,  <18.709526, 22.449600, 21.685175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052778, 22.293781, 22.307837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200104, 22.620480, 22.130177>,  <19.288500, 22.816498, 22.023581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200104, 22.620480, 22.130177>,  <19.052778, 22.293781, 22.307837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200104, 22.620480, 22.130177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177423, 0.530704, 0.828779,
		0.912615, -0.226448, 0.340375,
		0.368314, 0.816746, -0.444151,
		19.310598, 22.865503, 21.996931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.512239, 22.826601, 22.774040>,  <19.052778, 22.293781, 22.307837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.512239, 22.826601, 22.774040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.336876, 23.017391, 22.469332>,  <19.231657, 23.131865, 22.286507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.336876, 23.017391, 22.469332>,  <19.512239, 22.826601, 22.774040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336876, 23.017391, 22.469332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302831, 0.719612, 0.624861,
		0.846222, 0.504632, -0.171042,
		-0.438408, 0.476974, -0.761770,
		19.205353, 23.160484, 22.240801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.605412, 23.552267, 22.707762>,  <19.512239, 22.826601, 22.774040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.605412, 23.552267, 22.707762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235180, 23.501125, 22.565241>,  <19.013041, 23.470440, 22.479729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235180, 23.501125, 22.565241>,  <19.605412, 23.552267, 22.707762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235180, 23.501125, 22.565241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355280, 0.618316, 0.701043,
		0.130676, 0.775460, -0.617726,
		-0.925581, -0.127856, -0.356304,
		18.957506, 23.462769, 22.458349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.270689, 24.143673, 22.657267>,  <19.605412, 23.552267, 22.707762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.270689, 24.143673, 22.657267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.961971, 23.889336, 22.659641>,  <18.776741, 23.736732, 22.661066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.961971, 23.889336, 22.659641>,  <19.270689, 24.143673, 22.657267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.961971, 23.889336, 22.659641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452266, 0.555476, 0.697784,
		-0.446979, 0.535861, -0.716284,
		-0.771794, -0.635845, 0.005934,
		18.730433, 23.698582, 22.661421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.654449, 24.542187, 22.576401>,  <19.270689, 24.143673, 22.657267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.654449, 24.542187, 22.576401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584213, 24.204876, 22.779596>,  <18.542070, 24.002489, 22.901514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584213, 24.204876, 22.779596>,  <18.654449, 24.542187, 22.576401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584213, 24.204876, 22.779596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295642, 0.537358, 0.789837,
		-0.939023, -0.011495, -0.343663,
		-0.175591, -0.843276, 0.507990,
		18.531536, 23.951893, 22.931993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.978378, 24.610950, 22.882544>,  <18.654449, 24.542187, 22.576401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.978378, 24.610950, 22.882544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.222713, 24.374775, 23.093542>,  <18.369314, 24.233068, 23.220142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.222713, 24.374775, 23.093542>,  <17.978378, 24.610950, 22.882544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222713, 24.374775, 23.093542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200062, 0.529517, 0.824371,
		-0.766061, -0.609091, 0.205325,
		0.610840, -0.590441, 0.527498,
		18.405966, 24.197643, 23.251791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649118, 24.275303, 23.452816>,  <17.978378, 24.610950, 22.882544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649118, 24.275303, 23.452816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.033592, 24.329514, 23.548944>,  <18.264277, 24.362040, 23.606621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.033592, 24.329514, 23.548944>,  <17.649118, 24.275303, 23.452816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033592, 24.329514, 23.548944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275624, 0.510792, 0.814323,
		-0.012391, -0.848955, 0.528320,
		0.961186, 0.135528, 0.240322,
		18.321947, 24.370173, 23.621040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955139, 24.531361, 23.248934>,  <17.649118, 24.275303, 23.452816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955139, 24.531361, 23.248934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.881981, 24.144573, 23.319948>,  <16.838085, 23.912500, 23.362556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.881981, 24.144573, 23.319948>,  <16.955139, 24.531361, 23.248934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.881981, 24.144573, 23.319948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860627, 0.070180, -0.504377,
		0.475258, -0.245039, -0.845036,
		-0.182896, -0.966970, 0.177533,
		16.827112, 23.854483, 23.373209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201538, 24.090235, 22.761042>,  <16.955139, 24.531361, 23.248934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.201538, 24.090235, 22.761042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.591831, 24.064068, 22.844625>,  <17.826008, 24.048368, 22.894775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.591831, 24.064068, 22.844625>,  <17.201538, 24.090235, 22.761042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.591831, 24.064068, 22.844625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146814, -0.903479, 0.402705,
		0.162447, -0.423611, -0.891159,
		0.975734, -0.065416, 0.208960,
		17.884552, 24.044443, 22.907314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463289, 23.400967, 22.581421>,  <17.201538, 24.090235, 22.761042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463289, 23.400967, 22.581421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675117, 23.533829, 22.893633>,  <17.802216, 23.613546, 23.080959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675117, 23.533829, 22.893633>,  <17.463289, 23.400967, 22.581421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675117, 23.533829, 22.893633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149320, -0.869276, 0.471234,
		0.835019, -0.366102, -0.410747,
		0.529573, 0.332157, 0.780529,
		17.833990, 23.633476, 23.127792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.927063, 23.469017, 22.001852>,  <17.463289, 23.400967, 22.581421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.927063, 23.469017, 22.001852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058800, 23.830482, 22.111343>,  <17.137842, 24.047361, 22.177038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058800, 23.830482, 22.111343>,  <16.927063, 23.469017, 22.001852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058800, 23.830482, 22.111343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209088, 0.212907, -0.954439,
		-0.920769, 0.371572, -0.118825,
		0.329344, 0.903662, 0.273729,
		17.157602, 24.101582, 22.193462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563488, 24.157665, 21.629185>,  <16.927063, 23.469017, 22.001852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563488, 24.157665, 21.629185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.935303, 24.243584, 21.749067>,  <17.158392, 24.295135, 21.820997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.935303, 24.243584, 21.749067>,  <16.563488, 24.157665, 21.629185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935303, 24.243584, 21.749067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244988, 0.247702, -0.937350,
		-0.275576, 0.944726, 0.177626,
		0.929537, 0.214795, 0.299707,
		17.214165, 24.308022, 21.838980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754183, 24.799391, 21.322708>,  <16.563488, 24.157665, 21.629185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754183, 24.799391, 21.322708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.092922, 24.594078, 21.378401>,  <17.296165, 24.470890, 21.411816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.092922, 24.594078, 21.378401>,  <16.754183, 24.799391, 21.322708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.092922, 24.594078, 21.378401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258052, 0.167662, -0.951472,
		0.465031, 0.841683, 0.274439,
		0.846850, -0.513283, 0.139230,
		17.346977, 24.440094, 21.420170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.217133, 25.104660, 20.932571>,  <16.754183, 24.799391, 21.322708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.217133, 25.104660, 20.932571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.372173, 24.739662, 20.984911>,  <17.465199, 24.520664, 21.016314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.372173, 24.739662, 20.984911>,  <17.217133, 25.104660, 20.932571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372173, 24.739662, 20.984911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166094, -0.070490, -0.983587,
		0.906740, 0.402973, 0.124238,
		0.387602, -0.912493, 0.130848,
		17.488455, 24.465914, 21.024166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.856653, 25.086275, 20.413706>,  <17.217133, 25.104660, 20.932571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.856653, 25.086275, 20.413706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776199, 24.704231, 20.500711>,  <17.727928, 24.475004, 20.552914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776199, 24.704231, 20.500711>,  <17.856653, 25.086275, 20.413706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776199, 24.704231, 20.500711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159896, -0.251084, -0.954668,
		0.966426, -0.157235, 0.203220,
		-0.201133, -0.955110, 0.217513,
		17.715860, 24.417698, 20.565966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361885, 24.695711, 20.052572>,  <17.856653, 25.086275, 20.413706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361885, 24.695711, 20.052572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.076107, 24.421223, 20.107224>,  <17.904640, 24.256529, 20.140015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.076107, 24.421223, 20.107224>,  <18.361885, 24.695711, 20.052572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.076107, 24.421223, 20.107224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220978, -0.406567, -0.886494,
		0.663880, -0.603160, 0.442110,
		-0.714445, -0.686222, 0.136626,
		17.861773, 24.215357, 20.148211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.644880, 24.020950, 19.819202>,  <18.361885, 24.695711, 20.052572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.644880, 24.020950, 19.819202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252491, 23.948387, 19.846876>,  <18.017057, 23.904848, 19.863480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252491, 23.948387, 19.846876>,  <18.644880, 24.020950, 19.819202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252491, 23.948387, 19.846876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037395, -0.526205, -0.849535,
		0.190519, -0.830782, 0.522976,
		-0.980971, -0.181409, 0.069185,
		17.958200, 23.893965, 19.867632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514069, 23.274832, 19.850637>,  <18.644880, 24.020950, 19.819202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514069, 23.274832, 19.850637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.181473, 23.442837, 19.705193>,  <17.981916, 23.543640, 19.617926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.181473, 23.442837, 19.705193>,  <18.514069, 23.274832, 19.850637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.181473, 23.442837, 19.705193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119239, -0.504338, -0.855234,
		-0.542598, -0.754473, 0.369268,
		-0.831487, 0.420017, -0.363615,
		17.932026, 23.568840, 19.596107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181015, 22.744974, 19.535711>,  <18.514069, 23.274832, 19.850637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181015, 22.744974, 19.535711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.022030, 23.071777, 19.368610>,  <17.926640, 23.267860, 19.268349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.022030, 23.071777, 19.368610>,  <18.181015, 22.744974, 19.535711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022030, 23.071777, 19.368610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019574, -0.462704, -0.886297,
		-0.917410, -0.344092, 0.199899,
		-0.397462, 0.817010, -0.417753,
		17.902792, 23.316881, 19.243284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798012, 22.429214, 19.044994>,  <18.181015, 22.744974, 19.535711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798012, 22.429214, 19.044994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803139, 22.808746, 18.918783>,  <17.806215, 23.036465, 18.843056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803139, 22.808746, 18.918783>,  <17.798012, 22.429214, 19.044994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803139, 22.808746, 18.918783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135463, -0.310999, -0.940707,
		-0.990700, 0.054799, 0.124546,
		0.012817, 0.948829, -0.315530,
		17.806984, 23.093395, 18.824123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250881, 22.535604, 18.504612>,  <17.798012, 22.429214, 19.044994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250881, 22.535604, 18.504612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.489807, 22.842655, 18.411688>,  <17.633162, 23.026886, 18.355932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.489807, 22.842655, 18.411688>,  <17.250881, 22.535604, 18.504612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489807, 22.842655, 18.411688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046617, -0.322403, -0.945454,
		-0.800652, 0.553903, -0.228360,
		0.597314, 0.767625, -0.232311,
		17.669001, 23.072943, 18.341995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930332, 22.812244, 17.953190>,  <17.250881, 22.535604, 18.504612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.930332, 22.812244, 17.953190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.309017, 22.940788, 17.961809>,  <17.536228, 23.017914, 17.966980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.309017, 22.940788, 17.961809>,  <16.930332, 22.812244, 17.953190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309017, 22.940788, 17.961809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141662, -0.355383, -0.923923,
		-0.289255, 0.877742, -0.381970,
		0.946712, 0.321360, 0.021546,
		17.593031, 23.037197, 17.968273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087515, 23.223988, 17.293833>,  <16.930332, 22.812244, 17.953190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087515, 23.223988, 17.293833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425045, 23.081825, 17.454653>,  <17.627563, 22.996529, 17.551146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425045, 23.081825, 17.454653>,  <17.087515, 23.223988, 17.293833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425045, 23.081825, 17.454653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212779, -0.466213, -0.858703,
		0.492628, 0.810144, -0.317781,
		0.843826, -0.355404, 0.402052,
		17.678192, 22.975204, 17.575268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516453, 23.396069, 16.709127>,  <17.087515, 23.223988, 17.293833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516453, 23.396069, 16.709127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721344, 23.130680, 16.927275>,  <17.844278, 22.971447, 17.058163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721344, 23.130680, 16.927275>,  <17.516453, 23.396069, 16.709127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721344, 23.130680, 16.927275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439974, -0.342636, -0.830074,
		0.737594, 0.665135, 0.116403,
		0.512228, -0.663472, 0.545369,
		17.875011, 22.931639, 17.090885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228172, 23.439054, 16.502729>,  <17.516453, 23.396069, 16.709127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228172, 23.439054, 16.502729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.164978, 23.075947, 16.658161>,  <18.127062, 22.858082, 16.751421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.164978, 23.075947, 16.658161>,  <18.228172, 23.439054, 16.502729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.164978, 23.075947, 16.658161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575481, -0.404428, -0.710816,
		0.802410, 0.111322, 0.586298,
		-0.157986, -0.907769, 0.388581,
		18.117582, 22.803616, 16.774734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813114, 23.247787, 16.480068>,  <18.228172, 23.439054, 16.502729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813114, 23.247787, 16.480068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.585682, 22.921379, 16.521681>,  <18.449223, 22.725534, 16.546648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.585682, 22.921379, 16.521681>,  <18.813114, 23.247787, 16.480068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.585682, 22.921379, 16.521681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607773, -0.501930, -0.615369,
		0.554370, -0.286661, 0.781344,
		-0.568582, -0.816022, 0.104030,
		18.415108, 22.676573, 16.552891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.285290, 22.849398, 16.619032>,  <18.813114, 23.247787, 16.480068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.285290, 22.849398, 16.619032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976044, 22.641869, 16.473091>,  <18.790497, 22.517351, 16.385527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976044, 22.641869, 16.473091>,  <19.285290, 22.849398, 16.619032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976044, 22.641869, 16.473091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514899, -0.177488, -0.838676,
		0.370367, -0.836254, 0.404360,
		-0.773115, -0.518823, -0.364851,
		18.744108, 22.486221, 16.363636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.533007, 22.189926, 16.348358>,  <19.285290, 22.849398, 16.619032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.533007, 22.189926, 16.348358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.177227, 22.225567, 16.169052>,  <18.963758, 22.246950, 16.061468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.177227, 22.225567, 16.169052>,  <19.533007, 22.189926, 16.348358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.177227, 22.225567, 16.169052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423291, -0.209274, -0.881493,
		-0.172347, -0.973790, 0.148426,
		-0.889450, 0.089095, -0.448264,
		18.910393, 22.252296, 16.034573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565022, 21.676023, 15.797536>,  <19.533007, 22.189926, 16.348358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565022, 21.676023, 15.797536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.267975, 21.916737, 15.679976>,  <19.089746, 22.061165, 15.609439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.267975, 21.916737, 15.679976>,  <19.565022, 21.676023, 15.797536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.267975, 21.916737, 15.679976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257938, -0.147987, -0.954761,
		-0.618054, -0.784828, -0.045326,
		-0.742615, 0.601784, -0.293901,
		19.045191, 22.097271, 15.591805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077864, 21.261627, 15.319116>,  <19.565022, 21.676023, 15.797536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077864, 21.261627, 15.319116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.029873, 21.647930, 15.227102>,  <19.001078, 21.879713, 15.171894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.029873, 21.647930, 15.227102>,  <19.077864, 21.261627, 15.319116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.029873, 21.647930, 15.227102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300317, -0.185547, -0.935619,
		-0.946264, -0.181335, -0.267772,
		-0.119976, 0.965759, -0.230034,
		18.993879, 21.937658, 15.158092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097937, 21.246449, 14.595091>,  <19.077864, 21.261627, 15.319116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097937, 21.246449, 14.595091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.109917, 21.642319, 14.651157>,  <19.117104, 21.879841, 14.684797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.109917, 21.642319, 14.651157>,  <19.097937, 21.246449, 14.595091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.109917, 21.642319, 14.651157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278862, 0.126389, -0.951978,
		-0.959864, 0.067598, -0.272197,
		0.029949, 0.989675, 0.140167,
		19.118902, 21.939220, 14.693208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744644, 21.537861, 14.023832>,  <19.097937, 21.246449, 14.595091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.744644, 21.537861, 14.023832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.978828, 21.827564, 14.169535>,  <19.119339, 22.001387, 14.256956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.978828, 21.827564, 14.169535>,  <18.744644, 21.537861, 14.023832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978828, 21.827564, 14.169535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290765, 0.231825, -0.928285,
		-0.756762, 0.649389, -0.074864,
		0.585463, 0.724259, 0.364256,
		19.154467, 22.044842, 14.278811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.679205, 22.127001, 13.551873>,  <18.744644, 21.537861, 14.023832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.679205, 22.127001, 13.551873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.014820, 22.149849, 13.768299>,  <19.216190, 22.163557, 13.898154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.014820, 22.149849, 13.768299>,  <18.679205, 22.127001, 13.551873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014820, 22.149849, 13.768299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543898, -0.113127, -0.831491,
		0.013715, 0.991937, -0.125985,
		0.839039, 0.057119, 0.541064,
		19.266533, 22.166985, 13.930618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074736, 22.700865, 13.304950>,  <18.679205, 22.127001, 13.551873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074736, 22.700865, 13.304950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.336235, 22.453648, 13.479597>,  <19.493135, 22.305317, 13.584385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.336235, 22.453648, 13.479597>,  <19.074736, 22.700865, 13.304950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336235, 22.453648, 13.479597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557802, 0.003699, -0.829966,
		0.511339, 0.786136, 0.347164,
		0.653750, -0.618042, 0.436617,
		19.532360, 22.268234, 13.610582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754444, 23.002577, 13.144836>,  <19.074736, 22.700865, 13.304950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754444, 23.002577, 13.144836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821461, 22.620312, 13.241695>,  <19.861671, 22.390953, 13.299811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821461, 22.620312, 13.241695>,  <19.754444, 23.002577, 13.144836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821461, 22.620312, 13.241695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694096, -0.060083, -0.717370,
		0.700114, 0.288265, 0.653256,
		0.167543, -0.955664, 0.242148,
		19.871723, 22.333612, 13.314340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.441252, 22.985025, 13.282660>,  <19.754444, 23.002577, 13.144836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.441252, 22.985025, 13.282660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.343231, 22.606861, 13.196732>,  <20.284418, 22.379963, 13.145175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.343231, 22.606861, 13.196732>,  <20.441252, 22.985025, 13.282660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.343231, 22.606861, 13.196732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819536, -0.083613, -0.566894,
		0.517986, -0.314972, 0.795288,
		-0.245052, -0.945411, -0.214820,
		20.269716, 22.323238, 13.132285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171104, 22.709068, 13.219620>,  <20.441252, 22.985025, 13.282660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171104, 22.709068, 13.219620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.931946, 22.439064, 13.046701>,  <20.788450, 22.277061, 12.942950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.931946, 22.439064, 13.046701>,  <21.171104, 22.709068, 13.219620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.931946, 22.439064, 13.046701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667945, -0.121411, -0.734241,
		0.443135, -0.727750, 0.523461,
		-0.597898, -0.675010, -0.432296,
		20.752577, 22.236561, 12.917013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.583065, 22.062891, 13.069171>,  <21.171104, 22.709068, 13.219620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.583065, 22.062891, 13.069171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264523, 22.069481, 12.827330>,  <21.073397, 22.073435, 12.682225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264523, 22.069481, 12.827330>,  <21.583065, 22.062891, 13.069171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264523, 22.069481, 12.827330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582216, -0.249885, -0.773681,
		-0.163827, -0.968135, 0.189405,
		-0.796357, 0.016475, -0.604602,
		21.025616, 22.074425, 12.645948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.841778, 21.492090, 12.580867>,  <21.583065, 22.062891, 13.069171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.841778, 21.492090, 12.580867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.533863, 21.665550, 12.393515>,  <21.349115, 21.769627, 12.281103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.533863, 21.665550, 12.393515>,  <21.841778, 21.492090, 12.580867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.533863, 21.665550, 12.393515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418987, -0.210294, -0.883304,
		-0.481541, -0.876200, -0.019811,
		-0.769785, 0.433648, -0.468381,
		21.302927, 21.795645, 12.253000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.781578, 20.982290, 11.991904>,  <21.841778, 21.492090, 12.580867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.781578, 20.982290, 11.991904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570602, 21.316940, 11.932752>,  <21.444017, 21.517731, 11.897260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570602, 21.316940, 11.932752>,  <21.781578, 20.982290, 11.991904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570602, 21.316940, 11.932752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247638, -0.015114, -0.968735,
		-0.812703, -0.547567, -0.199208,
		-0.527437, 0.836625, -0.147882,
		21.412371, 21.567928, 11.888387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471500, 20.846628, 11.382254>,  <21.781578, 20.982290, 11.991904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471500, 20.846628, 11.382254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.453415, 21.242325, 11.437902>,  <21.442564, 21.479744, 11.471292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.453415, 21.242325, 11.437902>,  <21.471500, 20.846628, 11.382254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.453415, 21.242325, 11.437902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312903, 0.146281, -0.938453,
		-0.948708, 0.001100, -0.316151,
		-0.045214, 0.989242, 0.139122,
		21.439850, 21.539097, 11.479639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.990423, 21.118145, 10.851903>,  <21.471500, 20.846628, 11.382254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.990423, 21.118145, 10.851903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.255520, 21.387665, 10.982604>,  <21.414577, 21.549377, 11.061025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.255520, 21.387665, 10.982604>,  <20.990423, 21.118145, 10.851903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255520, 21.387665, 10.982604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332583, 0.126104, -0.934605,
		-0.670941, 0.728074, -0.140520,
		0.662741, 0.673800, 0.326753,
		21.454342, 21.589806, 11.080630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.821529, 21.683466, 10.537585>,  <20.990423, 21.118145, 10.851903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.821529, 21.683466, 10.537585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.202351, 21.758774, 10.634042>,  <21.430843, 21.803959, 10.691916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.202351, 21.758774, 10.634042>,  <20.821529, 21.683466, 10.537585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.202351, 21.758774, 10.634042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209536, 0.173040, -0.962368,
		-0.222911, 0.966753, 0.125294,
		0.952053, 0.188268, 0.241142,
		21.487967, 21.815254, 10.706385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.035522, 22.293234, 10.187807>,  <20.821529, 21.683466, 10.537585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.035522, 22.293234, 10.187807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.392620, 22.133705, 10.271667>,  <21.606878, 22.037989, 10.321983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.392620, 22.133705, 10.271667>,  <21.035522, 22.293234, 10.187807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392620, 22.133705, 10.271667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258139, 0.071358, -0.963469,
		0.369290, 0.914249, 0.166655,
		0.892743, -0.398819, 0.209651,
		21.660442, 22.014059, 10.334563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486994, 22.659224, 9.800713>,  <21.035522, 22.293234, 10.187807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486994, 22.659224, 9.800713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.725727, 22.354588, 9.901726>,  <21.868967, 22.171806, 9.962334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.725727, 22.354588, 9.901726>,  <21.486994, 22.659224, 9.800713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.725727, 22.354588, 9.901726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321856, -0.061059, -0.944818,
		0.734981, 0.645179, 0.208680,
		0.596835, -0.761588, 0.252532,
		21.904778, 22.126112, 9.977486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.179977, 22.799576, 9.506276>,  <21.486994, 22.659224, 9.800713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.179977, 22.799576, 9.506276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.186279, 22.406063, 9.577747>,  <22.190060, 22.169956, 9.620630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.186279, 22.406063, 9.577747>,  <22.179977, 22.799576, 9.506276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.186279, 22.406063, 9.577747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555296, -0.140000, -0.819784,
		0.831504, 0.112134, 0.544084,
		0.015754, -0.983781, 0.178678,
		22.191006, 22.110929, 9.631351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839388, 22.556908, 9.265396>,  <22.179977, 22.799576, 9.506276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839388, 22.556908, 9.265396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.611584, 22.229977, 9.300348>,  <22.474901, 22.033819, 9.321320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.611584, 22.229977, 9.300348>,  <22.839388, 22.556908, 9.265396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.611584, 22.229977, 9.300348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233184, -0.262583, -0.936310,
		0.788215, -0.512862, 0.340131,
		-0.569511, -0.817326, 0.087381,
		22.440731, 21.984779, 9.326563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.244137, 22.010193, 9.081148>,  <22.839388, 22.556908, 9.265396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.244137, 22.010193, 9.081148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858688, 21.915459, 9.031602>,  <22.627419, 21.858618, 9.001874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858688, 21.915459, 9.031602>,  <23.244137, 22.010193, 9.081148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.858688, 21.915459, 9.031602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184530, -0.254283, -0.949362,
		0.193346, -0.937683, 0.288735,
		-0.963621, -0.236836, -0.123867,
		22.569601, 21.844408, 8.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.295990, 21.443213, 8.718026>,  <23.244137, 22.010193, 9.081148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.295990, 21.443213, 8.718026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.909851, 21.533325, 8.665336>,  <22.678167, 21.587393, 8.633721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.909851, 21.533325, 8.665336>,  <23.295990, 21.443213, 8.718026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.909851, 21.533325, 8.665336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052956, -0.325151, -0.944178,
		-0.255538, -0.918436, 0.301953,
		-0.965347, 0.225283, -0.131725,
		22.620247, 21.600910, 8.625818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.964684, 20.778858, 8.542186>,  <23.295990, 21.443213, 8.718026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.964684, 20.778858, 8.542186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.728909, 21.072170, 8.406619>,  <22.587444, 21.248158, 8.325279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.728909, 21.072170, 8.406619>,  <22.964684, 20.778858, 8.542186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.728909, 21.072170, 8.406619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084463, -0.473192, -0.876901,
		-0.803387, -0.488252, 0.340851,
		-0.589436, 0.733280, -0.338917,
		22.552078, 21.292154, 8.304944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418522, 20.425858, 8.208311>,  <22.964684, 20.778858, 8.542186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418522, 20.425858, 8.208311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445663, 20.803459, 8.079161>,  <22.461948, 21.030020, 8.001671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445663, 20.803459, 8.079161>,  <22.418522, 20.425858, 8.208311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445663, 20.803459, 8.079161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030879, -0.325453, -0.945054,
		-0.997217, 0.054155, -0.051233,
		0.067854, 0.944006, -0.322875,
		22.466019, 21.086660, 7.982298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.034760, 20.463022, 7.651677>,  <22.418522, 20.425858, 8.208311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.034760, 20.463022, 7.651677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.235649, 20.804100, 7.594151>,  <22.356184, 21.008747, 7.559635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.235649, 20.804100, 7.594151>,  <22.034760, 20.463022, 7.651677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.235649, 20.804100, 7.594151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042334, -0.141868, -0.988980,
		-0.863700, 0.502779, -0.035152,
		0.502225, 0.852694, -0.143816,
		22.386316, 21.059908, 7.551006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.391603, 20.476799, 7.167738>,  <22.034760, 20.463022, 7.651677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.391603, 20.476799, 7.167738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.169384, 20.158905, 7.069954>,  <21.036053, 19.968168, 7.011283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.169384, 20.158905, 7.069954>,  <21.391603, 20.476799, 7.167738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.169384, 20.158905, 7.069954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417083, 0.012013, 0.908789,
		-0.719310, 0.606837, -0.338144,
		-0.555549, -0.794735, -0.244461,
		21.002720, 19.920485, 6.996616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771681, 20.666113, 7.478464>,  <21.391603, 20.476799, 7.167738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771681, 20.666113, 7.478464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.750793, 20.274189, 7.401263>,  <20.738260, 20.039036, 7.354943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.750793, 20.274189, 7.401263>,  <20.771681, 20.666113, 7.478464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.750793, 20.274189, 7.401263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338568, -0.164449, 0.926460,
		-0.939492, 0.113723, -0.323144,
		-0.052219, -0.979808, -0.193002,
		20.735128, 19.980247, 7.343363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.030504, 20.322969, 7.456754>,  <20.771681, 20.666113, 7.478464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.030504, 20.322969, 7.456754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.293552, 20.042526, 7.567014>,  <20.451382, 19.874260, 7.633170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.293552, 20.042526, 7.567014>,  <20.030504, 20.322969, 7.456754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.293552, 20.042526, 7.567014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570179, -0.224068, 0.790373,
		-0.492371, -0.676937, -0.547108,
		0.657622, -0.701106, 0.275650,
		20.490839, 19.832195, 7.649709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668175, 19.966341, 7.876899>,  <20.030504, 20.322969, 7.456754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.668175, 19.966341, 7.876899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020344, 19.793522, 7.955072>,  <20.231646, 19.689831, 8.001977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020344, 19.793522, 7.955072>,  <19.668175, 19.966341, 7.876899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020344, 19.793522, 7.955072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345696, -0.302691, 0.888185,
		-0.324594, -0.849531, -0.415855,
		0.880417, -0.432059, 0.195428,
		20.284470, 19.663908, 8.013702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.496111, 19.239922, 8.056133>,  <19.668175, 19.966341, 7.876899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.496111, 19.239922, 8.056133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.853756, 19.330120, 8.210904>,  <20.068342, 19.384239, 8.303766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.853756, 19.330120, 8.210904>,  <19.496111, 19.239922, 8.056133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.853756, 19.330120, 8.210904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318365, -0.287601, 0.903288,
		0.314970, -0.930826, -0.185357,
		0.894112, 0.225498, 0.386927,
		20.121990, 19.397770, 8.326982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467579, 18.819269, 8.558113>,  <19.496111, 19.239922, 8.056133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.467579, 18.819269, 8.558113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.775951, 19.046757, 8.672811>,  <19.960976, 19.183249, 8.741630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.775951, 19.046757, 8.672811>,  <19.467579, 18.819269, 8.558113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775951, 19.046757, 8.672811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255843, -0.135772, 0.957137,
		0.583272, -0.811250, 0.040831,
		0.770933, 0.568717, 0.286744,
		20.007231, 19.217371, 8.758834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.776501, 18.525991, 9.276640>,  <19.467579, 18.819269, 8.558113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.776501, 18.525991, 9.276640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874195, 18.912685, 9.246255>,  <19.932812, 19.144703, 9.228024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874195, 18.912685, 9.246255>,  <19.776501, 18.525991, 9.276640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874195, 18.912685, 9.246255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228702, 0.133550, 0.964292,
		0.942362, -0.218140, 0.253712,
		0.244234, 0.966736, -0.075963,
		19.947466, 19.202705, 9.223466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.087719, 18.635040, 9.948677>,  <19.776501, 18.525991, 9.276640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.087719, 18.635040, 9.948677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.988434, 18.987133, 9.786898>,  <19.928862, 19.198389, 9.689830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.988434, 18.987133, 9.786898>,  <20.087719, 18.635040, 9.948677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.988434, 18.987133, 9.786898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421350, 0.277848, 0.863287,
		0.872269, 0.384695, 0.301921,
		-0.248214, 0.880233, -0.404449,
		19.913969, 19.251204, 9.665563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.260769, 19.105320, 10.550928>,  <20.087719, 18.635040, 9.948677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.260769, 19.105320, 10.550928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013771, 19.290833, 10.296807>,  <19.865572, 19.402140, 10.144335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013771, 19.290833, 10.296807>,  <20.260769, 19.105320, 10.550928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013771, 19.290833, 10.296807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499333, 0.392934, 0.772185,
		0.607755, 0.794047, -0.011054,
		-0.617495, 0.463780, -0.635302,
		19.828522, 19.429966, 10.106216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.119686, 19.733574, 10.866345>,  <20.260769, 19.105320, 10.550928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.119686, 19.733574, 10.866345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.813385, 19.673794, 10.616133>,  <19.629604, 19.637926, 10.466005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.813385, 19.673794, 10.616133>,  <20.119686, 19.733574, 10.866345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813385, 19.673794, 10.616133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632551, 0.350762, 0.690540,
		0.116210, 0.924462, -0.363132,
		-0.765751, -0.149452, -0.625532,
		19.583660, 19.628958, 10.428473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.690912, 20.329388, 10.946509>,  <20.119686, 19.733574, 10.866345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.690912, 20.329388, 10.946509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449627, 20.074368, 10.754817>,  <19.304855, 19.921356, 10.639802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449627, 20.074368, 10.754817>,  <19.690912, 20.329388, 10.946509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.449627, 20.074368, 10.754817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756841, 0.267983, 0.596135,
		-0.251641, 0.722299, -0.644175,
		-0.603216, -0.637550, -0.479230,
		19.268661, 19.883102, 10.611048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.065817, 20.706955, 10.657945>,  <19.690912, 20.329388, 10.946509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.065817, 20.706955, 10.657945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977169, 20.320171, 10.708346>,  <18.923981, 20.088102, 10.738587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977169, 20.320171, 10.708346>,  <19.065817, 20.706955, 10.657945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977169, 20.320171, 10.708346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763499, 0.252449, 0.594423,
		-0.606592, 0.035533, -0.794219,
		-0.221621, -0.966958, 0.126005,
		18.910683, 20.030085, 10.746148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330170, 20.658495, 10.788659>,  <19.065817, 20.706955, 10.657945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330170, 20.658495, 10.788659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.449738, 20.297253, 10.911976>,  <18.521479, 20.080507, 10.985966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.449738, 20.297253, 10.911976>,  <18.330170, 20.658495, 10.788659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449738, 20.297253, 10.911976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753705, -0.025282, 0.656726,
		-0.585300, -0.428670, -0.688234,
		0.298919, -0.903107, 0.308293,
		18.539413, 20.026321, 11.004464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.731819, 20.360010, 10.981560>,  <18.330170, 20.658495, 10.788659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.731819, 20.360010, 10.981560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.008080, 20.151913, 11.182496>,  <18.173836, 20.027054, 11.303058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.008080, 20.151913, 11.182496>,  <17.731819, 20.360010, 10.981560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008080, 20.151913, 11.182496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600358, -0.025179, 0.799335,
		-0.403199, -0.853648, -0.329721,
		0.690653, -0.520242, 0.502342,
		18.215275, 19.995840, 11.333199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.383572, 19.756479, 11.376385>,  <17.731819, 20.360010, 10.981560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.383572, 19.756479, 11.376385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.735977, 19.826256, 11.552288>,  <17.947420, 19.868122, 11.657830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.735977, 19.826256, 11.552288>,  <17.383572, 19.756479, 11.376385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.735977, 19.826256, 11.552288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448638, 0.013073, 0.893618,
		0.150137, -0.984580, 0.089780,
		0.881012, 0.174444, 0.439757,
		18.000280, 19.878588, 11.684216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265959, 19.484037, 12.015381>,  <17.383572, 19.756479, 11.376385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.265959, 19.484037, 12.015381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585453, 19.709427, 12.099783>,  <17.777149, 19.844660, 12.150424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585453, 19.709427, 12.099783>,  <17.265959, 19.484037, 12.015381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585453, 19.709427, 12.099783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312431, 0.088702, 0.945790,
		0.514210, -0.821359, 0.246896,
		0.798733, 0.563473, 0.211006,
		17.825073, 19.878469, 12.163085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559147, 19.231205, 12.676143>,  <17.265959, 19.484037, 12.015381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559147, 19.231205, 12.676143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.711327, 19.599560, 12.642155>,  <17.802635, 19.820574, 12.621761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.711327, 19.599560, 12.642155>,  <17.559147, 19.231205, 12.676143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.711327, 19.599560, 12.642155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150743, 0.152402, 0.976755,
		0.912433, -0.358798, 0.196799,
		0.380451, 0.920889, -0.084971,
		17.825462, 19.875826, 12.616664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759523, 19.402433, 13.361499>,  <17.559147, 19.231205, 12.676143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759523, 19.402433, 13.361499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786789, 19.764889, 13.194517>,  <17.803148, 19.982361, 13.094328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786789, 19.764889, 13.194517>,  <17.759523, 19.402433, 13.361499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786789, 19.764889, 13.194517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283335, 0.418782, 0.862753,
		0.956595, 0.059471, 0.285286,
		0.068164, 0.906137, -0.417455,
		17.807238, 20.036730, 13.069281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298269, 19.818251, 13.800648>,  <17.759523, 19.402433, 13.361499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298269, 19.818251, 13.800648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034641, 20.048794, 13.607386>,  <17.876465, 20.187120, 13.491428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034641, 20.048794, 13.607386>,  <18.298269, 19.818251, 13.800648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034641, 20.048794, 13.607386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320757, 0.365656, 0.873734,
		0.680253, 0.730825, -0.056121,
		-0.659068, 0.576359, -0.483156,
		17.836922, 20.221701, 13.462439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326605, 20.444111, 14.083399>,  <18.298269, 19.818251, 13.800648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326605, 20.444111, 14.083399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964512, 20.436867, 13.913586>,  <17.747257, 20.432520, 13.811698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964512, 20.436867, 13.913586>,  <18.326605, 20.444111, 14.083399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964512, 20.436867, 13.913586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412665, 0.275677, 0.868165,
		0.101313, 0.961079, -0.257024,
		-0.905231, -0.018109, -0.424533,
		17.692942, 20.431435, 13.786225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091837, 20.989399, 14.418468>,  <18.326605, 20.444111, 14.083399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.091837, 20.989399, 14.418468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763580, 20.826977, 14.257639>,  <17.566626, 20.729523, 14.161141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763580, 20.826977, 14.257639>,  <18.091837, 20.989399, 14.418468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763580, 20.826977, 14.257639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547245, 0.355864, 0.757551,
		-0.164525, 0.841711, -0.514250,
		-0.820643, -0.406057, -0.402074,
		17.517387, 20.705160, 14.137016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549469, 21.544836, 14.492375>,  <18.091837, 20.989399, 14.418468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549469, 21.544836, 14.492375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.384010, 21.182728, 14.453629>,  <17.284735, 20.965464, 14.430381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.384010, 21.182728, 14.453629>,  <17.549469, 21.544836, 14.492375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.384010, 21.182728, 14.453629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590691, 0.185888, 0.785194,
		-0.692805, 0.382013, -0.611626,
		-0.413649, -0.905269, -0.096867,
		17.259916, 20.911148, 14.424568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803274, 21.655075, 14.659957>,  <17.549469, 21.544836, 14.492375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803274, 21.655075, 14.659957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882305, 21.263603, 14.682421>,  <16.929724, 21.028721, 14.695899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882305, 21.263603, 14.682421>,  <16.803274, 21.655075, 14.659957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882305, 21.263603, 14.682421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573357, -0.068902, 0.816403,
		-0.795126, -0.193502, -0.574745,
		0.197576, -0.978678, 0.056160,
		16.941578, 20.969999, 14.699269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177090, 21.374765, 14.734438>,  <16.803274, 21.655075, 14.659957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.177090, 21.374765, 14.734438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.443851, 21.112667, 14.876364>,  <16.603909, 20.955408, 14.961519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.443851, 21.112667, 14.876364>,  <16.177090, 21.374765, 14.734438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.443851, 21.112667, 14.876364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467358, 0.003045, 0.884063,
		-0.580357, -0.755411, -0.304203,
		0.666904, -0.655244, 0.354814,
		16.643923, 20.916094, 14.982808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810226, 20.933996, 15.163377>,  <16.177090, 21.374765, 14.734438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.810226, 20.933996, 15.163377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179485, 20.887753, 15.310038>,  <16.401041, 20.860006, 15.398034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179485, 20.887753, 15.310038>,  <15.810226, 20.933996, 15.163377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.179485, 20.887753, 15.310038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383223, -0.200673, 0.901593,
		-0.030652, -0.972813, -0.229554,
		0.923147, -0.115606, 0.366653,
		16.456429, 20.853071, 15.420033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708780, 20.326855, 15.601995>,  <15.810226, 20.933996, 15.163377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.708780, 20.326855, 15.601995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065109, 20.489052, 15.683983>,  <16.278906, 20.586370, 15.733176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065109, 20.489052, 15.683983>,  <15.708780, 20.326855, 15.601995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065109, 20.489052, 15.683983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131981, -0.200735, 0.970715,
		0.434762, -0.891786, -0.125301,
		0.890821, 0.405493, 0.204971,
		16.332355, 20.610699, 15.745474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.078068, 19.788225, 15.966324>,  <15.708780, 20.326855, 15.601995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.078068, 19.788225, 15.966324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.279194, 20.123474, 16.050919>,  <16.399870, 20.324623, 16.101675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.279194, 20.123474, 16.050919>,  <16.078068, 19.788225, 15.966324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.279194, 20.123474, 16.050919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086427, -0.194692, 0.977049,
		0.860062, -0.509555, -0.025458,
		0.502816, 0.838123, 0.211486,
		16.430038, 20.374910, 16.114365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628801, 19.518019, 16.478977>,  <16.078068, 19.788225, 15.966324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628801, 19.518019, 16.478977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.585678, 19.912594, 16.528484>,  <16.559805, 20.149340, 16.558187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.585678, 19.912594, 16.528484>,  <16.628801, 19.518019, 16.478977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.585678, 19.912594, 16.528484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147293, -0.138966, 0.979282,
		0.983200, 0.087344, 0.160277,
		-0.107807, 0.986438, 0.123766,
		16.553335, 20.208525, 16.565615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010183, 19.764357, 17.003143>,  <16.628801, 19.518019, 16.478977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010183, 19.764357, 17.003143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731148, 20.050655, 16.990004>,  <16.563726, 20.222435, 16.982119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731148, 20.050655, 16.990004>,  <17.010183, 19.764357, 17.003143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731148, 20.050655, 16.990004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193935, -0.144481, 0.970317,
		0.689754, 0.683251, 0.239596,
		-0.697587, 0.715747, -0.032850,
		16.521872, 20.265379, 16.980148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221146, 20.182388, 17.574610>,  <17.010183, 19.764357, 17.003143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221146, 20.182388, 17.574610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.836987, 20.267551, 17.502712>,  <16.606491, 20.318649, 17.459574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.836987, 20.267551, 17.502712>,  <17.221146, 20.182388, 17.574610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836987, 20.267551, 17.502712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167329, 0.075117, 0.983035,
		0.222800, 0.974180, -0.036516,
		-0.960396, 0.212910, -0.179745,
		16.548868, 20.331425, 17.448790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095388, 20.744595, 18.041897>,  <17.221146, 20.182388, 17.574610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095388, 20.744595, 18.041897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731148, 20.622353, 17.930605>,  <16.512604, 20.549007, 17.863831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731148, 20.622353, 17.930605>,  <17.095388, 20.744595, 18.041897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731148, 20.622353, 17.930605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325213, 0.114422, 0.938693,
		-0.255034, 0.945258, -0.203580,
		-0.910601, -0.305606, -0.278229,
		16.457968, 20.530670, 17.847136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690851, 21.194626, 18.291605>,  <17.095388, 20.744595, 18.041897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.690851, 21.194626, 18.291605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.446026, 20.882313, 18.241390>,  <16.299131, 20.694925, 18.211262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.446026, 20.882313, 18.241390>,  <16.690851, 21.194626, 18.291605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.446026, 20.882313, 18.241390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195158, -0.004707, 0.980760,
		-0.766351, 0.624786, -0.149495,
		-0.612062, -0.780782, -0.125539,
		16.262407, 20.648079, 18.203728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.220472, 21.374264, 18.749674>,  <16.690851, 21.194626, 18.291605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.220472, 21.374264, 18.749674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.152252, 20.995674, 18.640057>,  <16.111320, 20.768520, 18.574287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.152252, 20.995674, 18.640057>,  <16.220472, 21.374264, 18.749674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.152252, 20.995674, 18.640057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285990, -0.218596, 0.932966,
		-0.942933, 0.237492, -0.233400,
		-0.170552, -0.946474, -0.274042,
		16.101088, 20.711731, 18.557844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577027, 21.277828, 18.981380>,  <16.220472, 21.374264, 18.749674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577027, 21.277828, 18.981380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.748868, 20.916824, 18.993492>,  <15.851973, 20.700222, 19.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.748868, 20.916824, 18.993492>,  <15.577027, 21.277828, 18.981380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748868, 20.916824, 18.993492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225491, -0.074747, 0.971374,
		-0.874412, -0.424131, -0.235619,
		0.429602, -0.902511, 0.030278,
		15.877748, 20.646070, 19.002575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080887, 20.822315, 19.334299>,  <15.577027, 21.277828, 18.981380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080887, 20.822315, 19.334299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.441037, 20.652122, 19.370716>,  <15.657127, 20.550007, 19.392567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.441037, 20.652122, 19.370716>,  <15.080887, 20.822315, 19.334299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.441037, 20.652122, 19.370716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125931, -0.054540, 0.990539,
		-0.416493, -0.903321, -0.102688,
		0.900375, -0.425485, 0.091040,
		15.711149, 20.524477, 19.398027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034294, 20.217010, 19.769922>,  <15.080887, 20.822315, 19.334299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034294, 20.217010, 19.769922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425067, 20.288078, 19.817310>,  <15.659531, 20.330719, 19.845743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425067, 20.288078, 19.817310>,  <15.034294, 20.217010, 19.769922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425067, 20.288078, 19.817310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107195, -0.071816, 0.991641,
		0.184695, -0.981466, -0.051113,
		0.976933, 0.177672, 0.118473,
		15.718146, 20.341379, 19.852852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237249, 19.767590, 20.244865>,  <15.034294, 20.217010, 19.769922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237249, 19.767590, 20.244865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.535026, 20.034439, 20.255831>,  <15.713692, 20.194550, 20.262409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.535026, 20.034439, 20.255831>,  <15.237249, 19.767590, 20.244865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.535026, 20.034439, 20.255831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053854, 0.019073, 0.998367,
		0.665513, -0.744701, 0.050126,
		0.744441, 0.667125, 0.027412,
		15.758358, 20.234577, 20.264053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395709, 19.652946, 20.910910>,  <15.237249, 19.767590, 20.244865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.395709, 19.652946, 20.910910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.601808, 19.985607, 20.828081>,  <15.725467, 20.185204, 20.778383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.601808, 19.985607, 20.828081>,  <15.395709, 19.652946, 20.910910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.601808, 19.985607, 20.828081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161381, 0.143142, 0.976456,
		0.841710, -0.536534, -0.060459,
		0.515247, 0.831650, -0.207071,
		15.756382, 20.235102, 20.765961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035911, 19.099197, 20.546368>,  <15.395709, 19.652946, 20.910910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035911, 19.099197, 20.546368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011964, 18.710709, 20.638577>,  <14.997596, 18.477615, 20.693901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011964, 18.710709, 20.638577>,  <15.035911, 19.099197, 20.546368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011964, 18.710709, 20.638577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410069, -0.234478, -0.881398,
		0.910088, 0.041763, 0.412306,
		-0.059867, -0.971224, 0.230522,
		14.994004, 18.419342, 20.707733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717708, 18.704168, 20.361687>,  <15.035911, 19.099197, 20.546368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717708, 18.704168, 20.361687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.385631, 18.482807, 20.334784>,  <15.186384, 18.349991, 20.318642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.385631, 18.482807, 20.334784>,  <15.717708, 18.704168, 20.361687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.385631, 18.482807, 20.334784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249795, -0.261415, -0.932344,
		0.498380, -0.790826, 0.355263,
		-0.830193, -0.553404, -0.067260,
		15.136573, 18.316786, 20.314606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936832, 18.050879, 20.114986>,  <15.717708, 18.704168, 20.361687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936832, 18.050879, 20.114986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546613, 18.057831, 20.027349>,  <15.312481, 18.062002, 19.974768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546613, 18.057831, 20.027349>,  <15.936832, 18.050879, 20.114986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546613, 18.057831, 20.027349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212738, -0.175671, -0.961188,
		-0.055192, -0.984296, 0.167679,
		-0.975550, 0.017379, -0.219093,
		15.253948, 18.063046, 19.961622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851562, 17.435741, 19.718262>,  <15.936832, 18.050879, 20.114986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851562, 17.435741, 19.718262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.521594, 17.646008, 19.635138>,  <15.323613, 17.772167, 19.585262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.521594, 17.646008, 19.635138>,  <15.851562, 17.435741, 19.718262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521594, 17.646008, 19.635138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108288, -0.213867, -0.970842,
		-0.554782, -0.823369, 0.119499,
		-0.824919, 0.525666, -0.207810,
		15.274118, 17.803707, 19.572794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466139, 17.048206, 19.121897>,  <15.851562, 17.435741, 19.718262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466139, 17.048206, 19.121897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.290437, 17.407551, 19.121189>,  <15.185016, 17.623158, 19.120764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.290437, 17.407551, 19.121189>,  <15.466139, 17.048206, 19.121897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.290437, 17.407551, 19.121189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137753, 0.065408, -0.988304,
		-0.887738, -0.434361, -0.152483,
		-0.439255, 0.898361, -0.001770,
		15.158660, 17.677059, 19.120659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854419, 17.030598, 18.555433>,  <15.466139, 17.048206, 19.121897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854419, 17.030598, 18.555433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.990766, 17.397133, 18.639465>,  <15.072574, 17.617054, 18.689884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.990766, 17.397133, 18.639465>,  <14.854419, 17.030598, 18.555433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.990766, 17.397133, 18.639465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173035, 0.158491, -0.972080,
		-0.924050, 0.367701, -0.104534,
		0.340867, 0.916339, 0.210079,
		15.093026, 17.672035, 18.702490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.565072, 17.419611, 18.018265>,  <14.854419, 17.030598, 18.555433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.565072, 17.419611, 18.018265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.861733, 17.651112, 18.153910>,  <15.039730, 17.790012, 18.235296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.861733, 17.651112, 18.153910>,  <14.565072, 17.419611, 18.018265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861733, 17.651112, 18.153910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279144, 0.193404, -0.940571,
		-0.609943, 0.792238, -0.018117,
		0.741652, 0.578752, 0.339113,
		15.084229, 17.824738, 18.255644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595325, 18.135607, 17.672176>,  <14.565072, 17.419611, 18.018265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.595325, 18.135607, 17.672176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971612, 18.077591, 17.794825>,  <15.197384, 18.042782, 17.868414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971612, 18.077591, 17.794825>,  <14.595325, 18.135607, 17.672176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971612, 18.077591, 17.794825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331171, 0.197274, -0.922718,
		0.073340, 0.969560, 0.233611,
		0.940716, -0.145037, 0.306622,
		15.253827, 18.034081, 17.886812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.094230, 18.628220, 17.451187>,  <14.595325, 18.135607, 17.672176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.094230, 18.628220, 17.451187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.352164, 18.341145, 17.556339>,  <15.506926, 18.168900, 17.619431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.352164, 18.341145, 17.556339>,  <15.094230, 18.628220, 17.451187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352164, 18.341145, 17.556339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555921, 0.204364, -0.805722,
		0.524535, 0.665700, 0.530760,
		0.644837, -0.717690, 0.262880,
		15.545615, 18.125837, 17.635204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666898, 18.766588, 16.949104>,  <15.094230, 18.628220, 17.451187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666898, 18.766588, 16.949104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759812, 18.396843, 17.070162>,  <15.815561, 18.174995, 17.142796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759812, 18.396843, 17.070162>,  <15.666898, 18.766588, 16.949104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759812, 18.396843, 17.070162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534553, -0.138626, -0.833688,
		0.812586, 0.355434, 0.461921,
		0.232287, -0.924364, 0.302644,
		15.829498, 18.119534, 17.160955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449066, 18.638468, 16.824753>,  <15.666898, 18.766588, 16.949104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449066, 18.638468, 16.824753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322842, 18.260994, 16.864508>,  <16.247107, 18.034510, 16.888361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322842, 18.260994, 16.864508>,  <16.449066, 18.638468, 16.824753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322842, 18.260994, 16.864508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563018, -0.270512, -0.780919,
		0.763827, -0.190471, 0.616675,
		-0.315561, -0.943686, 0.099386,
		16.228174, 17.977888, 16.894323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036982, 18.275906, 16.727615>,  <16.449066, 18.638468, 16.824753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.036982, 18.275906, 16.727615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735565, 18.020332, 16.665728>,  <16.554716, 17.866989, 16.628595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735565, 18.020332, 16.665728>,  <17.036982, 18.275906, 16.727615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735565, 18.020332, 16.665728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419625, -0.286311, -0.861360,
		0.506054, -0.713995, 0.483860,
		-0.753541, -0.638934, -0.154721,
		16.509502, 17.828651, 16.619310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323677, 17.519222, 16.571005>,  <17.036982, 18.275906, 16.727615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323677, 17.519222, 16.571005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.955647, 17.578712, 16.426041>,  <16.734829, 17.614407, 16.339062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.955647, 17.578712, 16.426041>,  <17.323677, 17.519222, 16.571005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.955647, 17.578712, 16.426041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316613, -0.262464, -0.911520,
		-0.230683, -0.953412, 0.194400,
		-0.920077, 0.148723, -0.362408,
		16.679625, 17.623331, 16.317318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249989, 17.050858, 16.054438>,  <17.323677, 17.519222, 16.571005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.249989, 17.050858, 16.054438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939514, 17.289967, 15.974236>,  <16.753229, 17.433432, 15.926115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939514, 17.289967, 15.974236>,  <17.249989, 17.050858, 16.054438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939514, 17.289967, 15.974236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148147, -0.136191, -0.979543,
		-0.612852, -0.790012, 0.017151,
		-0.776186, 0.597774, -0.200503,
		16.706657, 17.469299, 15.914084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825985, 16.626549, 15.551161>,  <17.249989, 17.050858, 16.054438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825985, 16.626549, 15.551161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.749748, 17.013687, 15.485497>,  <16.704006, 17.245970, 15.446098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.749748, 17.013687, 15.485497>,  <16.825985, 16.626549, 15.551161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749748, 17.013687, 15.485497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302652, -0.101146, -0.947719,
		-0.933850, -0.230312, -0.273643,
		-0.190594, 0.967846, -0.164160,
		16.692570, 17.304041, 15.436249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589844, 16.648035, 14.904170>,  <16.825985, 16.626549, 15.551161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589844, 16.648035, 14.904170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679832, 17.035774, 14.943670>,  <16.733826, 17.268417, 14.967371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679832, 17.035774, 14.943670>,  <16.589844, 16.648035, 14.904170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679832, 17.035774, 14.943670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310341, 0.024786, -0.950302,
		-0.923622, 0.244436, -0.295252,
		0.224971, 0.969348, 0.098751,
		16.747324, 17.326578, 14.973295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414104, 16.889893, 14.201771>,  <16.589844, 16.648035, 14.904170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414104, 16.889893, 14.201771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.624626, 17.190571, 14.360746>,  <16.750940, 17.370977, 14.456132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.624626, 17.190571, 14.360746>,  <16.414104, 16.889893, 14.201771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.624626, 17.190571, 14.360746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453889, 0.146883, -0.878869,
		-0.719018, 0.642947, -0.263880,
		0.526307, 0.751694, 0.397438,
		16.782518, 17.416079, 14.479978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398764, 17.450251, 13.704626>,  <16.414104, 16.889893, 14.201771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398764, 17.450251, 13.704626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716351, 17.530861, 13.934061>,  <16.906902, 17.579227, 14.071722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716351, 17.530861, 13.934061>,  <16.398764, 17.450251, 13.704626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716351, 17.530861, 13.934061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566406, 0.097615, -0.818325,
		-0.220904, 0.974607, -0.036642,
		0.793969, 0.201526, 0.573586,
		16.954540, 17.591318, 14.106137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741415, 18.037748, 13.471886>,  <16.398764, 17.450251, 13.704626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.741415, 18.037748, 13.471886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043369, 17.895401, 13.692251>,  <17.224543, 17.809992, 13.824471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043369, 17.895401, 13.692251>,  <16.741415, 18.037748, 13.471886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043369, 17.895401, 13.692251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627003, 0.145177, -0.765370,
		0.192391, 0.923191, 0.332723,
		0.754886, -0.355868, 0.550913,
		17.269835, 17.788641, 13.857525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300081, 18.556868, 13.484331>,  <16.741415, 18.037748, 13.471886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.300081, 18.556868, 13.484331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.433685, 18.186665, 13.555742>,  <17.513847, 17.964542, 13.598589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.433685, 18.186665, 13.555742>,  <17.300081, 18.556868, 13.484331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433685, 18.186665, 13.555742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638313, 0.082734, -0.765318,
		0.693538, 0.369579, 0.618398,
		0.334008, -0.925509, 0.178528,
		17.533888, 17.909012, 13.609301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003298, 18.602922, 13.248128>,  <17.300081, 18.556868, 13.484331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003298, 18.602922, 13.248128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.938644, 18.210178, 13.287767>,  <17.899853, 17.974531, 13.311551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.938644, 18.210178, 13.287767>,  <18.003298, 18.602922, 13.248128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.938644, 18.210178, 13.287767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616899, -0.178911, -0.766438,
		0.770266, -0.062749, 0.634628,
		-0.161635, -0.981862, 0.099100,
		17.890154, 17.915619, 13.317497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635477, 18.209063, 13.252206>,  <18.003298, 18.602922, 13.248128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635477, 18.209063, 13.252206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341698, 17.971272, 13.121252>,  <18.165430, 17.828596, 13.042680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341698, 17.971272, 13.121252>,  <18.635477, 18.209063, 13.252206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341698, 17.971272, 13.121252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482949, -0.118897, -0.867539,
		0.476808, -0.795273, 0.374426,
		-0.734449, -0.594478, -0.327385,
		18.121363, 17.792929, 13.023037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991732, 17.691885, 12.745592>,  <18.635477, 18.209063, 13.252206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.991732, 17.691885, 12.745592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.603237, 17.626328, 12.676496>,  <18.370140, 17.586992, 12.635037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.603237, 17.626328, 12.676496>,  <18.991732, 17.691885, 12.745592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.603237, 17.626328, 12.676496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197895, -0.152090, -0.968352,
		0.132436, -0.974683, 0.180149,
		-0.971236, -0.163895, -0.172742,
		18.311867, 17.577160, 12.624673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032936, 17.176323, 12.254885>,  <18.991732, 17.691885, 12.745592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032936, 17.176323, 12.254885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.659874, 17.318043, 12.227688>,  <18.436037, 17.403074, 12.211370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.659874, 17.318043, 12.227688>,  <19.032936, 17.176323, 12.254885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659874, 17.318043, 12.227688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030216, -0.111088, -0.993351,
		-0.359498, -0.928510, 0.092901,
		-0.932656, 0.354301, -0.067992,
		18.380077, 17.424334, 12.207291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.670101, 16.647772, 11.867797>,  <19.032936, 17.176323, 12.254885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.670101, 16.647772, 11.867797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.456753, 16.984177, 11.831553>,  <18.328743, 17.186020, 11.809807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.456753, 16.984177, 11.831553>,  <18.670101, 16.647772, 11.867797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.456753, 16.984177, 11.831553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056417, -0.142249, -0.988222,
		-0.843997, -0.521979, 0.123319,
		-0.533373, 0.841013, -0.090609,
		18.296741, 17.236481, 11.804371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237085, 16.432745, 11.360207>,  <18.670101, 16.647772, 11.867797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.237085, 16.432745, 11.360207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233967, 16.832352, 11.377645>,  <18.232096, 17.072117, 11.388109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233967, 16.832352, 11.377645>,  <18.237085, 16.432745, 11.360207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233967, 16.832352, 11.377645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094234, 0.044138, -0.994571,
		-0.995519, -0.003646, -0.094486,
		-0.007797, 0.999019, 0.043597,
		18.231628, 17.132057, 11.390724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751574, 16.657885, 10.876107>,  <18.237085, 16.432745, 11.360207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751574, 16.657885, 10.876107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.009594, 16.958786, 10.929806>,  <18.164406, 17.139326, 10.962025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.009594, 16.958786, 10.929806>,  <17.751574, 16.657885, 10.876107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.009594, 16.958786, 10.929806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172873, 0.027467, -0.984561,
		-0.744326, 0.658302, -0.112327,
		0.645053, 0.752253, 0.134247,
		18.203110, 17.184462, 10.970080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475670, 17.163858, 10.452020>,  <17.751574, 16.657885, 10.876107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475670, 17.163858, 10.452020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.856834, 17.273499, 10.503905>,  <18.085533, 17.339283, 10.535037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.856834, 17.273499, 10.503905>,  <17.475670, 17.163858, 10.452020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.856834, 17.273499, 10.503905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118923, 0.055701, -0.991340,
		-0.278950, 0.960087, 0.020482,
		0.952914, 0.274099, 0.129714,
		18.142708, 17.355728, 10.542819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556524, 17.631699, 9.895933>,  <17.475670, 17.163858, 10.452020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556524, 17.631699, 9.895933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.921097, 17.511559, 10.008417>,  <18.139841, 17.439474, 10.075908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.921097, 17.511559, 10.008417>,  <17.556524, 17.631699, 9.895933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.921097, 17.511559, 10.008417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275543, -0.062000, -0.959287,
		0.305558, 0.951811, 0.026252,
		0.911433, -0.300352, 0.281210,
		18.194527, 17.421453, 10.092780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082142, 17.973486, 9.420242>,  <17.556524, 17.631699, 9.895933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082142, 17.973486, 9.420242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277859, 17.666241, 9.585455>,  <18.395288, 17.481894, 9.684583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277859, 17.666241, 9.585455>,  <18.082142, 17.973486, 9.420242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277859, 17.666241, 9.585455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512690, -0.129782, -0.848708,
		0.705508, 0.627023, 0.330303,
		0.489292, -0.768113, 0.413031,
		18.424646, 17.435806, 9.709364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.706367, 18.022638, 9.174577>,  <18.082142, 17.973486, 9.420242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.706367, 18.022638, 9.174577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.734467, 17.649300, 9.315390>,  <18.751326, 17.425297, 9.399878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.734467, 17.649300, 9.315390>,  <18.706367, 18.022638, 9.174577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.734467, 17.649300, 9.315390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558189, -0.255700, -0.789331,
		0.826735, 0.251949, 0.503022,
		0.070249, -0.933348, 0.352031,
		18.755541, 17.369295, 9.420999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.372271, 17.922483, 8.934393>,  <18.706367, 18.022638, 9.174577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.372271, 17.922483, 8.934393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.215473, 17.561691, 9.006809>,  <19.121395, 17.345217, 9.050260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.215473, 17.561691, 9.006809>,  <19.372271, 17.922483, 8.934393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215473, 17.561691, 9.006809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482388, -0.369091, -0.794402,
		0.783355, -0.224066, 0.579784,
		-0.391991, -0.901979, 0.181042,
		19.097876, 17.291098, 9.061122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956482, 17.455990, 9.054245>,  <19.372271, 17.922483, 8.934393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956482, 17.455990, 9.054245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627262, 17.270985, 8.922382>,  <19.429731, 17.159981, 8.843265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627262, 17.270985, 8.922382>,  <19.956482, 17.455990, 9.054245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.627262, 17.270985, 8.922382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548461, -0.496378, -0.672904,
		0.147595, -0.734635, 0.662214,
		-0.823047, -0.462515, -0.329656,
		19.380348, 17.132231, 8.823485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.149952, 16.741137, 8.957214>,  <19.956482, 17.455990, 9.054245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.149952, 16.741137, 8.957214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814865, 16.763336, 8.739904>,  <19.613813, 16.776657, 8.609518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814865, 16.763336, 8.739904>,  <20.149952, 16.741137, 8.957214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814865, 16.763336, 8.739904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383074, -0.649291, -0.657021,
		-0.389208, -0.758513, 0.522662,
		-0.837718, 0.055500, -0.543275,
		19.563549, 16.779985, 8.576921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071737, 16.084942, 8.780420>,  <20.149952, 16.741137, 8.957214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071737, 16.084942, 8.780420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855873, 16.288696, 8.512303>,  <19.726355, 16.410950, 8.351433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855873, 16.288696, 8.512303>,  <20.071737, 16.084942, 8.780420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855873, 16.288696, 8.512303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458900, -0.489518, -0.741474,
		-0.705817, -0.707741, 0.030415,
		-0.539660, 0.509387, -0.670293,
		19.693975, 16.441513, 8.311215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934753, 15.601697, 8.316817>,  <20.071737, 16.084942, 8.780420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934753, 15.601697, 8.316817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.859722, 15.930840, 8.102259>,  <19.814703, 16.128325, 7.973524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.859722, 15.930840, 8.102259>,  <19.934753, 15.601697, 8.316817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859722, 15.930840, 8.102259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249892, -0.488144, -0.836223,
		-0.949931, -0.290899, -0.114059,
		-0.187579, 0.822857, -0.536396,
		19.803448, 16.177696, 7.941340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502939, 15.438749, 7.713458>,  <19.934753, 15.601697, 8.316817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502939, 15.438749, 7.713458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695873, 15.778908, 7.629383>,  <19.811634, 15.983003, 7.578938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695873, 15.778908, 7.629383>,  <19.502939, 15.438749, 7.713458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695873, 15.778908, 7.629383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278411, -0.376323, -0.883668,
		-0.830566, 0.367706, -0.418273,
		0.482336, 0.850396, -0.210187,
		19.840574, 16.034027, 7.566327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396116, 15.537487, 7.023445>,  <19.502939, 15.438749, 7.713458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396116, 15.537487, 7.023445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.703121, 15.786720, 7.083704>,  <19.887323, 15.936260, 7.119860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.703121, 15.786720, 7.083704>,  <19.396116, 15.537487, 7.023445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.703121, 15.786720, 7.083704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441321, -0.343146, -0.829148,
		-0.464934, 0.702864, -0.538348,
		0.767510, 0.623084, 0.150648,
		19.933374, 15.973645, 7.128899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.550364, 15.723253, 6.414751>,  <19.396116, 15.537487, 7.023445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.550364, 15.723253, 6.414751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871986, 15.811302, 6.635671>,  <20.064960, 15.864131, 6.768223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871986, 15.811302, 6.635671>,  <19.550364, 15.723253, 6.414751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871986, 15.811302, 6.635671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585191, -0.128828, -0.800597,
		-0.105077, 0.966928, -0.232398,
		0.804059, 0.220121, 0.552301,
		20.113205, 15.877338, 6.801361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890682, 16.072119, 5.905118>,  <19.550364, 15.723253, 6.414751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890682, 16.072119, 5.905118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.167130, 15.965034, 6.173652>,  <20.332998, 15.900784, 6.334772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.167130, 15.965034, 6.173652>,  <19.890682, 16.072119, 5.905118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.167130, 15.965034, 6.173652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629741, -0.232759, -0.741114,
		0.354662, 0.934963, 0.007724,
		0.691116, -0.267710, 0.671335,
		20.374464, 15.884722, 6.375052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.562731, 16.471483, 5.763902>,  <19.890682, 16.072119, 5.905118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.562731, 16.471483, 5.763902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.618626, 16.123867, 5.953740>,  <20.652163, 15.915298, 6.067643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.618626, 16.123867, 5.953740>,  <20.562731, 16.471483, 5.763902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618626, 16.123867, 5.953740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697308, -0.253929, -0.670285,
		0.703019, 0.424603, 0.570506,
		0.139737, -0.869041, 0.474596,
		20.660547, 15.863154, 6.096119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.271082, 16.192106, 5.851299>,  <20.562731, 16.471483, 5.763902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.271082, 16.192106, 5.851299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035576, 15.869324, 5.869961>,  <20.894272, 15.675654, 5.881158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035576, 15.869324, 5.869961>,  <21.271082, 16.192106, 5.851299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035576, 15.869324, 5.869961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529054, -0.428357, -0.732538,
		0.611111, -0.406611, 0.679125,
		-0.588766, -0.806956, 0.046654,
		20.858946, 15.627237, 5.883957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.805353, 15.661999, 5.743717>,  <21.271082, 16.192106, 5.851299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.805353, 15.661999, 5.743717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.429935, 15.528721, 5.707685>,  <21.204685, 15.448754, 5.686065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.429935, 15.528721, 5.707685>,  <21.805353, 15.661999, 5.743717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.429935, 15.528721, 5.707685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305604, -0.680885, -0.665583,
		0.160434, -0.652209, 0.740867,
		-0.938545, -0.333195, -0.090081,
		21.148373, 15.428762, 5.680660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.914585, 15.008124, 5.579904>,  <21.805353, 15.661999, 5.743717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.914585, 15.008124, 5.579904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522110, 15.038998, 5.509125>,  <21.286625, 15.057522, 5.466657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522110, 15.038998, 5.509125>,  <21.914585, 15.008124, 5.579904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.522110, 15.038998, 5.509125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082106, -0.662717, -0.744355,
		-0.174719, -0.744882, 0.643914,
		-0.981189, 0.077183, -0.176949,
		21.227753, 15.062153, 5.456040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.768875, 14.325119, 5.607595>,  <21.914585, 15.008124, 5.579904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.768875, 14.325119, 5.607595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505993, 14.526566, 5.383292>,  <21.348263, 14.647433, 5.248710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505993, 14.526566, 5.383292>,  <21.768875, 14.325119, 5.607595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505993, 14.526566, 5.383292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208139, -0.593798, -0.777227,
		-0.724401, -0.627515, 0.285427,
		-0.657208, 0.503615, -0.560759,
		21.308830, 14.677650, 5.215065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.554779, 13.873279, 5.265486>,  <21.768875, 14.325119, 5.607595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.554779, 13.873279, 5.265486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.484894, 14.205894, 5.054577>,  <21.442963, 14.405464, 4.928031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.484894, 14.205894, 5.054577>,  <21.554779, 13.873279, 5.265486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.484894, 14.205894, 5.054577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198498, -0.494769, -0.846051,
		-0.964404, -0.252477, -0.078617,
		-0.174711, 0.831540, -0.527273,
		21.432480, 14.455357, 4.896395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.953989, 13.937256, 4.685878>,  <21.554779, 13.873279, 5.265486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.953989, 13.937256, 4.685878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283791, 14.151203, 4.612006>,  <21.481672, 14.279572, 4.567682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283791, 14.151203, 4.612006>,  <20.953989, 13.937256, 4.685878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.283791, 14.151203, 4.612006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058491, -0.405189, -0.912360,
		-0.562822, 0.741444, -0.365366,
		0.824506, 0.534867, -0.184681,
		21.531143, 14.311664, 4.556602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.776625, 14.296412, 4.067764>,  <20.953989, 13.937256, 4.685878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.776625, 14.296412, 4.067764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.164570, 14.201069, 4.087976>,  <21.397337, 14.143864, 4.100102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.164570, 14.201069, 4.087976>,  <20.776625, 14.296412, 4.067764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.164570, 14.201069, 4.087976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073136, -0.482605, -0.872779,
		0.232417, 0.842780, -0.485494,
		0.969863, -0.238356, 0.050528,
		21.455528, 14.129562, 4.103134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.136753, 14.580990, 3.532190>,  <20.776625, 14.296412, 4.067764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.136753, 14.580990, 3.532190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.414768, 14.296749, 3.575950>,  <21.581577, 14.126204, 3.602206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.414768, 14.296749, 3.575950>,  <21.136753, 14.580990, 3.532190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.414768, 14.296749, 3.575950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128127, -0.272145, -0.953688,
		0.707466, 0.648830, -0.280198,
		0.695036, -0.710603, 0.109401,
		21.623280, 14.083569, 3.608770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.692568, 14.671478, 2.873163>,  <21.136753, 14.580990, 3.532190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.692568, 14.671478, 2.873163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.640244, 14.313587, 3.043974>,  <21.608849, 14.098853, 3.146461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.640244, 14.313587, 3.043974>,  <21.692568, 14.671478, 2.873163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640244, 14.313587, 3.043974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148209, -0.408240, -0.900763,
		0.980267, -0.181117, -0.079205,
		-0.130809, -0.894727, 0.427027,
		21.601000, 14.045169, 3.172083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.282608, 14.244378, 2.629428>,  <21.692568, 14.671478, 2.873163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.282608, 14.244378, 2.629428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.932686, 14.069439, 2.712801>,  <21.722733, 13.964476, 2.762825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.932686, 14.069439, 2.712801>,  <22.282608, 14.244378, 2.629428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.932686, 14.069439, 2.712801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069895, -0.311794, -0.947576,
		0.479408, -0.843511, 0.242190,
		-0.874804, -0.437348, 0.208433,
		21.670244, 13.938234, 2.775331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.255161, 13.463478, 2.449040>,  <22.282608, 14.244378, 2.629428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.255161, 13.463478, 2.449040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910835, 13.666195, 2.430437>,  <21.704241, 13.787825, 2.419275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910835, 13.666195, 2.430437>,  <22.255161, 13.463478, 2.449040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.910835, 13.666195, 2.430437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316899, -0.605282, -0.730211,
		-0.398215, -0.613837, 0.681637,
		-0.860813, 0.506791, -0.046508,
		21.652592, 13.818233, 2.416485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.765831, 12.986584, 2.549381>,  <22.255161, 13.463478, 2.449040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.765831, 12.986584, 2.549381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602722, 13.277885, 2.329067>,  <21.504856, 13.452666, 2.196879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602722, 13.277885, 2.329067>,  <21.765831, 12.986584, 2.549381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602722, 13.277885, 2.329067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241868, -0.667819, -0.703930,
		-0.880466, -0.153827, 0.448460,
		-0.407773, 0.728255, -0.550786,
		21.480391, 13.496362, 2.163831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.048206, 12.941381, 2.486707>,  <21.765831, 12.986584, 2.549381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.048206, 12.941381, 2.486707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.133224, 13.119133, 2.138603>,  <21.184235, 13.225784, 1.929741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.133224, 13.119133, 2.138603>,  <21.048206, 12.941381, 2.486707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133224, 13.119133, 2.138603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392271, -0.776891, -0.492508,
		-0.894957, 0.446057, 0.009195,
		0.212543, 0.444380, -0.870260,
		21.196987, 13.252447, 1.877525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479918, 12.781113, 2.016291>,  <21.048206, 12.941381, 2.486707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479918, 12.781113, 2.016291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.798843, 12.883610, 1.797703>,  <20.990198, 12.945108, 1.666550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.798843, 12.883610, 1.797703>,  <20.479918, 12.781113, 2.016291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.798843, 12.883610, 1.797703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309377, -0.603907, -0.734563,
		-0.518244, 0.754743, -0.402227,
		0.797314, 0.256243, -0.546471,
		21.038038, 12.960483, 1.633761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.358734, 13.252068, 1.363630>,  <20.479918, 12.781113, 2.016291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.358734, 13.252068, 1.363630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.695354, 13.039871, 1.322888>,  <20.897326, 12.912553, 1.298444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.695354, 13.039871, 1.322888>,  <20.358734, 13.252068, 1.363630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.695354, 13.039871, 1.322888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348010, -0.388231, -0.853326,
		0.413140, 0.753562, -0.511332,
		0.841549, -0.530492, -0.101853,
		20.947819, 12.880724, 1.292332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.643244, 13.250629, 0.648048>,  <20.358734, 13.252068, 1.363630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.643244, 13.250629, 0.648048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.734379, 12.896019, 0.809124>,  <20.789059, 12.683252, 0.905771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.734379, 12.896019, 0.809124>,  <20.643244, 13.250629, 0.648048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.734379, 12.896019, 0.809124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448371, -0.462634, -0.764809,
		0.864323, -0.006305, -0.502898,
		0.227836, -0.886527, 0.402692,
		20.802729, 12.630061, 0.929932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062902, 12.835876, 0.156470>,  <20.643244, 13.250629, 0.648048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062902, 12.835876, 0.156470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.813591, 12.631443, 0.393221>,  <20.664005, 12.508783, 0.535272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.813591, 12.631443, 0.393221>,  <21.062902, 12.835876, 0.156470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.813591, 12.631443, 0.393221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516301, -0.299518, -0.802323,
		0.587332, -0.805657, -0.077190,
		-0.623277, -0.511084, 0.591878,
		20.626608, 12.478118, 0.570785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.028353, 12.176760, -0.085724>,  <21.062902, 12.835876, 0.156470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.028353, 12.176760, -0.085724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683308, 12.279305, 0.088712>,  <20.476280, 12.340831, 0.193373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683308, 12.279305, 0.088712>,  <21.028353, 12.176760, -0.085724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683308, 12.279305, 0.088712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493585, -0.237777, -0.836562,
		-0.110768, -0.936879, 0.331644,
		-0.862615, 0.256359, 0.436091,
		20.424522, 12.356213, 0.219539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395889, 11.585474, 0.024857>,  <21.028353, 12.176760, -0.085724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395889, 11.585474, 0.024857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255180, 11.957764, -0.015167>,  <20.170755, 12.181137, -0.039182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255180, 11.957764, -0.015167>,  <20.395889, 11.585474, 0.024857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.255180, 11.957764, -0.015167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311027, -0.217031, -0.925289,
		-0.882904, -0.294367, 0.365825,
		-0.351770, 0.930723, -0.100062,
		20.149649, 12.236980, -0.045186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.793692, 11.570772, -0.326041>,  <20.395889, 11.585474, 0.024857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.793692, 11.570772, -0.326041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970490, 11.921776, -0.400466>,  <20.076569, 12.132378, -0.445121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970490, 11.921776, -0.400466>,  <19.793692, 11.570772, -0.326041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970490, 11.921776, -0.400466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208451, -0.101267, -0.972776,
		-0.872461, 0.468747, 0.138158,
		0.441995, 0.877508, -0.186062,
		20.103088, 12.185028, -0.456284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037260, 11.400962, -0.290800>,  <19.793692, 11.570772, -0.326041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037260, 11.400962, -0.290800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641998, 11.382965, -0.349485>,  <18.404840, 11.372168, -0.384696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641998, 11.382965, -0.349485>,  <19.037260, 11.400962, -0.290800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641998, 11.382965, -0.349485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057571, 0.777534, -0.626200,
		0.142247, -0.627229, -0.765735,
		-0.988156, -0.044991, -0.146712,
		18.345552, 11.369468, -0.393499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856539, 11.261407, -1.074744>,  <19.037260, 11.400962, -0.290800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856539, 11.261407, -1.074744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.600605, 11.466202, -0.845491>,  <18.447044, 11.589079, -0.707939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.600605, 11.466202, -0.845491>,  <18.856539, 11.261407, -1.074744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600605, 11.466202, -0.845491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097360, 0.793761, -0.600387,
		-0.762322, -0.328347, -0.557722,
		-0.639833, 0.511987, 0.573134,
		18.408655, 11.619798, -0.673550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245134, 11.581102, -1.402840>,  <18.856539, 11.261407, -1.074744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.245134, 11.581102, -1.402840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329369, 11.804920, -1.082200>,  <18.379910, 11.939211, -0.889816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329369, 11.804920, -1.082200>,  <18.245134, 11.581102, -1.402840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.329369, 11.804920, -1.082200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006909, 0.819116, -0.573587,
		-0.977551, 0.126328, 0.168629,
		0.210587, 0.559545, 0.801600,
		18.392544, 11.972784, -0.841720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883335, 12.181073, -1.469816>,  <18.245134, 11.581102, -1.402840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.883335, 12.181073, -1.469816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235977, 12.249229, -1.293752>,  <18.447563, 12.290123, -1.188114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235977, 12.249229, -1.293752>,  <17.883335, 12.181073, -1.469816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235977, 12.249229, -1.293752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113544, 0.828614, -0.548185,
		-0.458127, 0.533260, 0.711164,
		0.881605, 0.170390, 0.440159,
		18.500458, 12.300346, -1.161705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.832998, 12.821050, -1.104653>,  <17.883335, 12.181073, -1.469816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.832998, 12.821050, -1.104653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.192307, 12.712524, -1.242925>,  <18.407892, 12.647409, -1.325889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.192307, 12.712524, -1.242925>,  <17.832998, 12.821050, -1.104653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.192307, 12.712524, -1.242925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059964, 0.703607, -0.708054,
		0.435328, 0.656754, 0.615762,
		0.898272, -0.271313, -0.345682,
		18.461788, 12.631130, -1.346630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293285, 13.371330, -1.127969>,  <17.832998, 12.821050, -1.104653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293285, 13.371330, -1.127969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402451, 13.113705, -1.413822>,  <18.467951, 12.959129, -1.585334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402451, 13.113705, -1.413822>,  <18.293285, 13.371330, -1.127969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402451, 13.113705, -1.413822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238884, 0.674197, -0.698851,
		0.931908, 0.361441, 0.030142,
		0.272915, -0.644064, -0.714632,
		18.484325, 12.920485, -1.628212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.845682, 13.601421, -1.654157>,  <18.293285, 13.371330, -1.127969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.845682, 13.601421, -1.654157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.566811, 13.372875, -1.827353>,  <18.399487, 13.235747, -1.931271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.566811, 13.372875, -1.827353>,  <18.845682, 13.601421, -1.654157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566811, 13.372875, -1.827353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127444, 0.693138, -0.709449,
		0.705484, -0.439426, -0.556055,
		-0.697173, -0.571371, -0.432996,
		18.357656, 13.201466, -1.957250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.057337, 13.436003, -2.421404>,  <18.845682, 13.601421, -1.654157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.057337, 13.436003, -2.421404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673065, 13.485432, -2.321945>,  <18.442503, 13.515089, -2.262270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673065, 13.485432, -2.321945>,  <19.057337, 13.436003, -2.421404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673065, 13.485432, -2.321945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022157, 0.858535, -0.512276,
		-0.276775, -0.497642, -0.822039,
		-0.960679, 0.123571, 0.248647,
		18.384861, 13.522503, -2.247351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.676220, 13.504773, -3.120784>,  <19.057337, 13.436003, -2.421404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.676220, 13.504773, -3.120784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543995, 13.691616, -2.792749>,  <18.464661, 13.803721, -2.595929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543995, 13.691616, -2.792749>,  <18.676220, 13.504773, -3.120784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543995, 13.691616, -2.792749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055178, 0.877012, -0.477290,
		-0.942170, -0.112523, -0.315680,
		-0.330562, 0.467107, 0.820086,
		18.444826, 13.831748, -2.546724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.085865, 13.959212, -3.206353>,  <18.676220, 13.504773, -3.120784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.085865, 13.959212, -3.206353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310184, 14.097214, -2.905294>,  <18.444777, 14.180015, -2.724658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310184, 14.097214, -2.905294>,  <18.085865, 13.959212, -3.206353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310184, 14.097214, -2.905294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051574, 0.892725, -0.447641,
		-0.826346, 0.289852, 0.482844,
		0.560796, 0.345004, 0.752649,
		18.478424, 14.200715, -2.679499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780281, 14.617614, -2.853856>,  <18.085865, 13.959212, -3.206353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780281, 14.617614, -2.853856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.177616, 14.577652, -2.830894>,  <18.416018, 14.553675, -2.817117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.177616, 14.577652, -2.830894>,  <17.780281, 14.617614, -2.853856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.177616, 14.577652, -2.830894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110124, 0.969729, -0.217942,
		-0.033894, 0.222812, 0.974272,
		0.993340, -0.099904, 0.057405,
		18.475618, 14.547681, -2.813672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063503, 14.871074, -3.415037>,  <17.780281, 14.617614, -2.853856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063503, 14.871074, -3.415037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026119, 14.960018, -3.026847>,  <18.003689, 15.013385, -2.793933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026119, 14.960018, -3.026847>,  <18.063503, 14.871074, -3.415037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026119, 14.960018, -3.026847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131214, 0.968990, -0.209385,
		-0.986939, 0.107771, -0.119739,
		-0.093460, 0.222362, 0.970474,
		17.998081, 15.026727, -2.735705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451929, 15.305592, -3.376897>,  <18.063503, 14.871074, -3.415037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451929, 15.305592, -3.376897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.699650, 15.433914, -3.090248>,  <17.848282, 15.510907, -2.918258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.699650, 15.433914, -3.090248>,  <17.451929, 15.305592, -3.376897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.699650, 15.433914, -3.090248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246185, 0.946032, -0.210752,
		-0.745559, -0.045903, 0.664857,
		0.619301, 0.320806, 0.716623,
		17.885441, 15.530156, -2.875261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392363, 15.271391, -4.112692>,  <17.451929, 15.305592, -3.376897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392363, 15.271391, -4.112692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.661697, 15.565987, -4.138626>,  <17.823298, 15.742743, -4.154187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.661697, 15.565987, -4.138626>,  <17.392363, 15.271391, -4.112692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.661697, 15.565987, -4.138626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720036, 0.673138, 0.168623,
		0.167833, -0.066856, 0.983546,
		0.673336, 0.736488, -0.064836,
		17.863699, 15.786933, -4.158077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.161531, 17.483477, 16.787216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.440788, 17.760799, 16.858683>,  <21.608343, 17.927193, 16.901562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.440788, 17.760799, 16.858683>,  <21.161531, 17.483477, 16.787216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440788, 17.760799, 16.858683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246423, 0.001610, -0.969161,
		-0.672215, 0.720639, -0.169723,
		0.698142, 0.693308, 0.178664,
		21.650230, 17.968792, 16.912281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.028715, 18.053978, 16.234505>,  <21.161531, 17.483477, 16.787216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.028715, 18.053978, 16.234505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.392441, 18.109718, 16.391340>,  <21.610676, 18.143162, 16.485441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.392441, 18.109718, 16.391340>,  <21.028715, 18.053978, 16.234505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392441, 18.109718, 16.391340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352087, 0.244545, -0.903456,
		-0.221779, 0.959573, 0.173305,
		0.909313, 0.139349, 0.392088,
		21.665234, 18.151524, 16.508966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170897, 18.692114, 16.081480>,  <21.028715, 18.053978, 16.234505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170897, 18.692114, 16.081480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.524441, 18.513969, 16.138666>,  <21.736568, 18.407082, 16.172977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.524441, 18.513969, 16.138666>,  <21.170897, 18.692114, 16.081480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.524441, 18.513969, 16.138666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314149, 0.338758, -0.886879,
		0.346551, 0.828792, 0.439325,
		0.883863, -0.445362, 0.142967,
		21.789600, 18.380362, 16.181557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720299, 19.175467, 15.828233>,  <21.170897, 18.692114, 16.081480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720299, 19.175467, 15.828233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.892857, 18.814617, 15.831705>,  <21.996391, 18.598108, 15.833789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.892857, 18.814617, 15.831705>,  <21.720299, 19.175467, 15.828233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892857, 18.814617, 15.831705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259907, 0.115061, -0.958754,
		0.863914, 0.415856, 0.284104,
		0.431393, -0.902122, 0.008681,
		22.022274, 18.543980, 15.834310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.257889, 19.260878, 15.433377>,  <21.720299, 19.175467, 15.828233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.257889, 19.260878, 15.433377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.204411, 18.864479, 15.430410>,  <22.172323, 18.626640, 15.428630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.204411, 18.864479, 15.430410>,  <22.257889, 19.260878, 15.433377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.204411, 18.864479, 15.430410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223278, -0.022828, -0.974488,
		0.965543, -0.131939, 0.224319,
		-0.133694, -0.990995, -0.007417,
		22.164303, 18.567181, 15.428185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.813633, 18.992561, 15.059890>,  <22.257889, 19.260878, 15.433377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.813633, 18.992561, 15.059890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.561024, 18.682507, 15.052509>,  <22.409458, 18.496473, 15.048081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.561024, 18.682507, 15.052509>,  <22.813633, 18.992561, 15.059890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.561024, 18.682507, 15.052509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165408, -0.111435, -0.979909,
		0.757510, -0.621886, 0.198588,
		-0.631521, -0.775139, -0.018451,
		22.371567, 18.449965, 15.046974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.225384, 18.443464, 14.667166>,  <22.813633, 18.992561, 15.059890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.225384, 18.443464, 14.667166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.845291, 18.319717, 14.652439>,  <22.617235, 18.245470, 14.643603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.845291, 18.319717, 14.652439>,  <23.225384, 18.443464, 14.667166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.845291, 18.319717, 14.652439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140584, -0.320322, -0.936819,
		0.278027, -0.895370, 0.347871,
		-0.950230, -0.309366, -0.036816,
		22.560223, 18.226908, 14.641395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.263172, 17.913076, 14.358675>,  <23.225384, 18.443464, 14.667166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.263172, 17.913076, 14.358675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.882172, 18.018349, 14.297390>,  <22.653570, 18.081512, 14.260619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.882172, 18.018349, 14.297390>,  <23.263172, 17.913076, 14.358675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.882172, 18.018349, 14.297390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053543, -0.350548, -0.935013,
		-0.299780, -0.898807, 0.319808,
		-0.952505, 0.263175, -0.153212,
		22.596420, 18.097301, 14.251426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977320, 17.318676, 14.012164>,  <23.263172, 17.913076, 14.358675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977320, 17.318676, 14.012164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.715549, 17.608624, 13.926100>,  <22.558487, 17.782593, 13.874461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.715549, 17.608624, 13.926100>,  <22.977320, 17.318676, 14.012164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.715549, 17.608624, 13.926100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136697, -0.393287, -0.909197,
		-0.743669, -0.565588, 0.356464,
		-0.654424, 0.724869, -0.215161,
		22.519222, 17.826084, 13.861551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.400755, 17.020021, 13.655770>,  <22.977320, 17.318676, 14.012164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.400755, 17.020021, 13.655770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.463989, 17.392956, 13.525690>,  <22.501930, 17.616716, 13.447642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.463989, 17.392956, 13.525690>,  <22.400755, 17.020021, 13.655770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.463989, 17.392956, 13.525690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137850, -0.346956, -0.927696,
		-0.977755, 0.101828, -0.183372,
		0.158088, 0.932337, -0.325201,
		22.511415, 17.672657, 13.428130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.007187, 17.097902, 12.986426>,  <22.400755, 17.020021, 13.655770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.007187, 17.097902, 12.986426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.272263, 17.397247, 12.997713>,  <22.431309, 17.576855, 13.004485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.272263, 17.397247, 12.997713>,  <22.007187, 17.097902, 12.986426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.272263, 17.397247, 12.997713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210826, -0.150271, -0.965904,
		-0.718605, 0.646045, -0.257357,
		0.662691, 0.748361, 0.028218,
		22.471069, 17.621756, 13.006179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.778006, 17.527857, 12.454824>,  <22.007187, 17.097902, 12.986426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.778006, 17.527857, 12.454824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.163193, 17.609974, 12.524736>,  <22.394304, 17.659245, 12.566684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.163193, 17.609974, 12.524736>,  <21.778006, 17.527857, 12.454824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.163193, 17.609974, 12.524736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208277, -0.154765, -0.965748,
		-0.171211, 0.966387, -0.191791,
		0.962968, 0.205292, 0.174779,
		22.452084, 17.671562, 12.577170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.911194, 18.033970, 11.997073>,  <21.778006, 17.527857, 12.454824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.911194, 18.033970, 11.997073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.265778, 17.875912, 12.093446>,  <22.478527, 17.781076, 12.151270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.265778, 17.875912, 12.093446>,  <21.911194, 18.033970, 11.997073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265778, 17.875912, 12.093446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230237, -0.075072, -0.970234,
		0.401472, 0.915546, 0.024429,
		0.886460, -0.395146, 0.240932,
		22.531715, 17.757368, 12.165726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.327972, 18.388948, 11.549942>,  <21.911194, 18.033970, 11.997073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.327972, 18.388948, 11.549942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.528492, 18.064716, 11.671042>,  <22.648804, 17.870176, 11.743703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.528492, 18.064716, 11.671042>,  <22.327972, 18.388948, 11.549942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.528492, 18.064716, 11.671042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347990, -0.131481, -0.928233,
		0.792213, 0.570677, 0.216163,
		0.501300, -0.810580, 0.302751,
		22.678883, 17.821543, 11.761868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.021183, 18.462023, 11.096842>,  <22.327972, 18.388948, 11.549942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.021183, 18.462023, 11.096842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.026127, 18.087646, 11.237617>,  <23.029093, 17.863020, 11.322082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.026127, 18.087646, 11.237617>,  <23.021183, 18.462023, 11.096842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.026127, 18.087646, 11.237617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304791, -0.331688, -0.892797,
		0.952339, 0.118303, 0.281167,
		0.012361, -0.935942, 0.351937,
		23.029835, 17.806864, 11.343198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.645241, 18.179539, 11.031691>,  <23.021183, 18.462023, 11.096842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.645241, 18.179539, 11.031691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.373001, 17.887199, 11.011112>,  <23.209658, 17.711796, 10.998765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.373001, 17.887199, 11.011112>,  <23.645241, 18.179539, 11.031691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.373001, 17.887199, 11.011112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348659, -0.261328, -0.900080,
		0.644377, -0.630531, 0.432676,
		-0.680599, -0.730847, -0.051446,
		23.168821, 17.667946, 10.995678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.023010, 17.556240, 10.717216>,  <23.645241, 18.179539, 11.031691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.023010, 17.556240, 10.717216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.638287, 17.459927, 10.665146>,  <23.407452, 17.402140, 10.633904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.638287, 17.459927, 10.665146>,  <24.023010, 17.556240, 10.717216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.638287, 17.459927, 10.665146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243606, -0.536151, -0.808207,
		0.124808, -0.809053, 0.574331,
		-0.961810, -0.240782, -0.130174,
		23.349743, 17.387691, 10.626094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.020357, 16.852507, 10.590331>,  <24.023010, 17.556240, 10.717216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.020357, 16.852507, 10.590331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.680698, 16.991848, 10.431537>,  <23.476904, 17.075453, 10.336260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.680698, 16.991848, 10.431537>,  <24.020357, 16.852507, 10.590331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.680698, 16.991848, 10.431537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211371, -0.464688, -0.859877,
		-0.484019, -0.814072, 0.320955,
		-0.849145, 0.348356, -0.396989,
		23.425955, 17.096354, 10.312441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.754751, 16.340378, 10.244546>,  <24.020357, 16.852507, 10.590331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.754751, 16.340378, 10.244546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.545151, 16.644234, 10.090469>,  <23.419390, 16.826548, 9.998024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.545151, 16.644234, 10.090469>,  <23.754751, 16.340378, 10.244546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.545151, 16.644234, 10.090469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023002, -0.439465, -0.897965,
		-0.851408, -0.479394, 0.212807,
		-0.524000, 0.759639, -0.385191,
		23.387951, 16.872126, 9.974913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.332155, 16.073145, 9.794395>,  <23.754751, 16.340378, 10.244546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.332155, 16.073145, 9.794395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.343922, 16.455112, 9.676232>,  <23.350981, 16.684294, 9.605334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.343922, 16.455112, 9.676232>,  <23.332155, 16.073145, 9.794395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.343922, 16.455112, 9.676232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103634, -0.296856, -0.949282,
		-0.994180, -0.002691, -0.107694,
		0.029415, 0.954918, -0.295408,
		23.352747, 16.741589, 9.587610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770128, 16.224159, 9.265027>,  <23.332155, 16.073145, 9.794395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770128, 16.224159, 9.265027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.055885, 16.499622, 9.215392>,  <23.227339, 16.664900, 9.185612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.055885, 16.499622, 9.215392>,  <22.770128, 16.224159, 9.265027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.055885, 16.499622, 9.215392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026988, -0.204314, -0.978533,
		-0.699226, 0.695707, -0.164546,
		0.714391, 0.688657, -0.124086,
		23.270203, 16.706219, 9.178166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.636158, 16.434475, 8.675988>,  <22.770128, 16.224159, 9.265027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.636158, 16.434475, 8.675988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.011517, 16.568340, 8.710433>,  <23.236732, 16.648659, 8.731100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.011517, 16.568340, 8.710433>,  <22.636158, 16.434475, 8.675988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.011517, 16.568340, 8.710433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149648, -0.168946, -0.974199,
		-0.311478, 0.927070, -0.208619,
		0.938396, 0.334661, 0.086112,
		23.293036, 16.668739, 8.736266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108074, 16.051577, 8.979268>,  <22.636158, 16.434475, 8.675988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108074, 16.051577, 8.979268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.985188, 15.682991, 8.884171>,  <21.911455, 15.461840, 8.827113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.985188, 15.682991, 8.884171>,  <22.108074, 16.051577, 8.979268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.985188, 15.682991, 8.884171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371146, -0.114023, 0.921547,
		-0.876282, 0.371350, -0.306969,
		-0.307215, -0.921465, -0.237741,
		21.893023, 15.406551, 8.812849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.404921, 16.071041, 9.200261>,  <22.108074, 16.051577, 8.979268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.404921, 16.071041, 9.200261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.539242, 15.694626, 9.183838>,  <21.619835, 15.468777, 9.173985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.539242, 15.694626, 9.183838>,  <21.404921, 16.071041, 9.200261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.539242, 15.694626, 9.183838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490449, -0.211894, 0.845317,
		-0.804175, -0.263721, -0.532685,
		0.335801, -0.941037, -0.041058,
		21.639982, 15.412314, 9.171520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785852, 15.702748, 9.366715>,  <21.404921, 16.071041, 9.200261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785852, 15.702748, 9.366715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.093731, 15.449116, 9.396395>,  <21.278458, 15.296936, 9.414203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.093731, 15.449116, 9.396395>,  <20.785852, 15.702748, 9.366715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093731, 15.449116, 9.396395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341031, -0.310127, 0.887423,
		-0.539689, -0.708350, -0.454946,
		0.769697, -0.634083, 0.074198,
		21.324640, 15.258891, 9.418654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468733, 15.097799, 9.690098>,  <20.785852, 15.702748, 9.366715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.468733, 15.097799, 9.690098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.859062, 15.049622, 9.763051>,  <21.093260, 15.020715, 9.806823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.859062, 15.049622, 9.763051>,  <20.468733, 15.097799, 9.690098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859062, 15.049622, 9.763051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212200, -0.322168, 0.922594,
		-0.052363, -0.938989, -0.339937,
		0.975822, -0.120444, 0.182383,
		21.151810, 15.013488, 9.817766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.535305, 14.453240, 10.087887>,  <20.468733, 15.097799, 9.690098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.535305, 14.453240, 10.087887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.869209, 14.659836, 10.164219>,  <21.069551, 14.783792, 10.210018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.869209, 14.659836, 10.164219>,  <20.535305, 14.453240, 10.087887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.869209, 14.659836, 10.164219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055499, -0.265885, 0.962406,
		0.547810, -0.813968, -0.193286,
		0.834760, 0.516488, 0.190830,
		21.119637, 14.814782, 10.221468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.981619, 14.086318, 10.422618>,  <20.535305, 14.453240, 10.087887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.981619, 14.086318, 10.422618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.129803, 14.448654, 10.504801>,  <21.218714, 14.666056, 10.554111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.129803, 14.448654, 10.504801>,  <20.981619, 14.086318, 10.422618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129803, 14.448654, 10.504801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051633, -0.200771, 0.978276,
		0.927412, -0.373020, -0.027607,
		0.370459, 0.905840, 0.205458,
		21.240940, 14.720407, 10.566438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.426188, 13.961993, 11.003342>,  <20.981619, 14.086318, 10.422618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.426188, 13.961993, 11.003342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.376011, 14.358833, 11.003186>,  <21.345905, 14.596937, 11.003093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.376011, 14.358833, 11.003186>,  <21.426188, 13.961993, 11.003342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.376011, 14.358833, 11.003186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118484, -0.014593, 0.992849,
		0.985000, 0.124592, 0.119378,
		-0.125443, 0.992101, -0.000388,
		21.338379, 14.656464, 11.003070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.915565, 14.195562, 11.487931>,  <21.426188, 13.961993, 11.003342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.915565, 14.195562, 11.487931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.619274, 14.461193, 11.447287>,  <21.441500, 14.620571, 11.422900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.619274, 14.461193, 11.447287>,  <21.915565, 14.195562, 11.487931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619274, 14.461193, 11.447287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023348, 0.125712, 0.991792,
		0.671400, 0.737020, -0.077614,
		-0.740727, 0.664077, -0.101611,
		21.397057, 14.660417, 11.416803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.120514, 14.680902, 11.969171>,  <21.915565, 14.195562, 11.487931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.120514, 14.680902, 11.969171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.734985, 14.742683, 11.882277>,  <21.503668, 14.779752, 11.830140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.734985, 14.742683, 11.882277>,  <22.120514, 14.680902, 11.969171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.734985, 14.742683, 11.882277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186759, 0.190177, 0.963822,
		0.190177, 0.969524, -0.154452,
		-0.963822, 0.154452, -0.217234,
		21.445839, 14.789019, 11.817106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929604, 15.333233, 12.369984>,  <22.120514, 14.680902, 11.969171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929604, 15.333233, 12.369984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.596420, 15.136971, 12.267660>,  <21.396511, 15.019214, 12.206266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.596420, 15.136971, 12.267660>,  <21.929604, 15.333233, 12.369984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596420, 15.136971, 12.267660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332647, 0.074587, 0.940097,
		-0.442183, 0.868156, -0.225343,
		-0.832958, -0.490655, -0.255809,
		21.346533, 14.989774, 12.190918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.476116, 15.763376, 12.557405>,  <21.929604, 15.333233, 12.369984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.476116, 15.763376, 12.557405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.328461, 15.391880, 12.571143>,  <21.239868, 15.168983, 12.579387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.328461, 15.391880, 12.571143>,  <21.476116, 15.763376, 12.557405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328461, 15.391880, 12.571143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255511, 0.136949, 0.957057,
		-0.893561, 0.344511, -0.287856,
		-0.369138, -0.928740, 0.034346,
		21.217720, 15.113258, 12.581447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893215, 15.808496, 12.945551>,  <21.476116, 15.763376, 12.557405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893215, 15.808496, 12.945551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.952957, 15.413273, 12.960697>,  <20.988802, 15.176139, 12.969785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.952957, 15.413273, 12.960697>,  <20.893215, 15.808496, 12.945551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952957, 15.413273, 12.960697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304628, -0.009548, 0.952424,
		-0.940688, -0.153785, -0.302416,
		0.149356, -0.988058, 0.037865,
		20.997765, 15.116856, 12.972056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283543, 15.521830, 13.190427>,  <20.893215, 15.808496, 12.945551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283543, 15.521830, 13.190427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.576946, 15.268375, 13.288790>,  <20.752989, 15.116303, 13.347807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.576946, 15.268375, 13.288790>,  <20.283543, 15.521830, 13.190427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.576946, 15.268375, 13.288790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164682, 0.185333, 0.968778,
		-0.659427, -0.751105, 0.031596,
		0.733510, -0.633635, 0.245907,
		20.796999, 15.078285, 13.362562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007862, 15.273852, 13.744302>,  <20.283543, 15.521830, 13.190427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007862, 15.273852, 13.744302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.393612, 15.173550, 13.778023>,  <20.625061, 15.113368, 13.798255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.393612, 15.173550, 13.778023>,  <20.007862, 15.273852, 13.744302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393612, 15.173550, 13.778023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058445, 0.108843, 0.992339,
		-0.258013, -0.961911, 0.090310,
		0.964372, -0.250758, 0.084302,
		20.682924, 15.098323, 13.803313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021656, 14.716281, 14.227461>,  <20.007862, 15.273852, 13.744302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021656, 14.716281, 14.227461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.380482, 14.892765, 14.237295>,  <20.595778, 14.998655, 14.243196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.380482, 14.892765, 14.237295>,  <20.021656, 14.716281, 14.227461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380482, 14.892765, 14.237295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018440, -0.018210, 0.999664,
		0.441511, -0.897218, -0.008199,
		0.897066, 0.441212, 0.024585,
		20.649601, 15.025128, 14.244671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.231260, 14.485788, 14.917769>,  <20.021656, 14.716281, 14.227461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.231260, 14.485788, 14.917769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.516266, 14.753098, 14.832222>,  <20.687269, 14.913483, 14.780893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.516266, 14.753098, 14.832222>,  <20.231260, 14.485788, 14.917769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516266, 14.753098, 14.832222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042775, 0.345605, 0.937405,
		0.700355, -0.658764, 0.274833,
		0.712511, 0.668272, -0.213868,
		20.730019, 14.953579, 14.768062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607803, 14.429816, 15.462459>,  <20.231260, 14.485788, 14.917769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607803, 14.429816, 15.462459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.685673, 14.777462, 15.280582>,  <20.732395, 14.986050, 15.171456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.685673, 14.777462, 15.280582>,  <20.607803, 14.429816, 15.462459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.685673, 14.777462, 15.280582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047213, 0.454719, 0.889382,
		0.979731, -0.194609, 0.047489,
		0.194676, 0.869113, -0.454690,
		20.744076, 15.038196, 15.144176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127367, 14.711788, 15.859679>,  <20.607803, 14.429816, 15.462459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127367, 14.711788, 15.859679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.921669, 14.989605, 15.658419>,  <20.798250, 15.156295, 15.537663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.921669, 14.989605, 15.658419>,  <21.127367, 14.711788, 15.859679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.921669, 14.989605, 15.658419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020836, 0.576379, 0.816917,
		0.857389, 0.430581, -0.281929,
		-0.514247, 0.694542, -0.503152,
		20.767395, 15.197968, 15.507473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<21.304399, 15.291931, 16.242552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.001469, 15.427361, 16.019186>,  <20.819710, 15.508618, 15.885167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.001469, 15.427361, 16.019186>,  <21.304399, 15.291931, 16.242552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001469, 15.427361, 16.019186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219157, 0.673743, 0.705720,
		0.615165, 0.656841, -0.436042,
		-0.757326, 0.338573, -0.558414,
		20.774271, 15.528933, 15.851662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.392996, 16.115761, 16.147438>,  <21.304399, 15.291931, 16.242552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.392996, 16.115761, 16.147438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.011734, 16.014145, 16.081762>,  <20.782976, 15.953176, 16.042356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.011734, 16.014145, 16.081762>,  <21.392996, 16.115761, 16.147438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011734, 16.014145, 16.081762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284909, 0.571713, 0.769397,
		-0.101587, 0.780134, -0.617309,
		-0.953156, -0.254038, -0.164188,
		20.725786, 15.937934, 16.032505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.918423, 16.779957, 16.258078>,  <21.392996, 16.115761, 16.147438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.918423, 16.779957, 16.258078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.667667, 16.468361, 16.263557>,  <20.517214, 16.281404, 16.266846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.667667, 16.468361, 16.263557>,  <20.918423, 16.779957, 16.258078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.667667, 16.468361, 16.263557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600749, 0.494497, 0.628151,
		-0.496096, 0.385552, -0.777971,
		-0.626889, -0.778988, 0.013698,
		20.479601, 16.234665, 16.267668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356838, 17.060009, 16.307695>,  <20.918423, 16.779957, 16.258078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.356838, 17.060009, 16.307695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.263283, 16.688839, 16.423798>,  <20.207150, 16.466137, 16.493460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.263283, 16.688839, 16.423798>,  <20.356838, 17.060009, 16.307695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.263283, 16.688839, 16.423798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583228, 0.372765, 0.721728,
		-0.777907, -0.000481, -0.628379,
		-0.233891, -0.927926, 0.290257,
		20.193115, 16.410461, 16.510874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.573187, 17.034050, 16.248724>,  <20.356838, 17.060009, 16.307695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.573187, 17.034050, 16.248724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.715393, 16.773312, 16.516666>,  <19.800716, 16.616869, 16.677431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.715393, 16.773312, 16.516666>,  <19.573187, 17.034050, 16.248724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.715393, 16.773312, 16.516666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544620, 0.437970, 0.715243,
		-0.759603, -0.619097, -0.199302,
		0.355516, -0.651845, 0.669856,
		19.822048, 16.577759, 16.717623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059076, 16.982277, 16.701839>,  <19.573187, 17.034050, 16.248724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059076, 16.982277, 16.701839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.334450, 16.779373, 16.909203>,  <19.499674, 16.657631, 17.033621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.334450, 16.779373, 16.909203>,  <19.059076, 16.982277, 16.701839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334450, 16.779373, 16.909203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409947, 0.317494, 0.855068,
		-0.598335, -0.801176, 0.010623,
		0.688433, -0.507262, 0.518407,
		19.540979, 16.627195, 17.064724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.668762, 16.684753, 17.220928>,  <19.059076, 16.982277, 16.701839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.668762, 16.684753, 17.220928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.045891, 16.637062, 17.345423>,  <19.272169, 16.608448, 17.420120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.045891, 16.637062, 17.345423>,  <18.668762, 16.684753, 17.220928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045891, 16.637062, 17.345423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305462, 0.064455, 0.950020,
		-0.133330, -0.990773, 0.024350,
		0.942824, -0.119229, 0.311237,
		19.328737, 16.601294, 17.438793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.721249, 16.126566, 17.686867>,  <18.668762, 16.684753, 17.220928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.721249, 16.126566, 17.686867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.029526, 16.368038, 17.768454>,  <19.214491, 16.512922, 17.817406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.029526, 16.368038, 17.768454>,  <18.721249, 16.126566, 17.686867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.029526, 16.368038, 17.768454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394068, 0.199996, 0.897057,
		0.500744, -0.771732, 0.392026,
		0.770692, 0.603681, 0.203969,
		19.260733, 16.549143, 17.829643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900921, 15.912169, 18.365818>,  <18.721249, 16.126566, 17.686867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900921, 15.912169, 18.365818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.039982, 16.281109, 18.298405>,  <19.123419, 16.502474, 18.257957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.039982, 16.281109, 18.298405>,  <18.900921, 15.912169, 18.365818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.039982, 16.281109, 18.298405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304020, 0.280923, 0.910304,
		0.886966, -0.265234, 0.378078,
		0.347654, 0.922352, -0.168533,
		19.144278, 16.557814, 18.247845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300291, 16.148426, 19.003820>,  <18.900921, 15.912169, 18.365818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300291, 16.148426, 19.003820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.159290, 16.464069, 18.802603>,  <19.074690, 16.653456, 18.681871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.159290, 16.464069, 18.802603>,  <19.300291, 16.148426, 19.003820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.159290, 16.464069, 18.802603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353679, 0.385340, 0.852305,
		0.866403, 0.478354, 0.143258,
		-0.352501, 0.789107, -0.503043,
		19.053539, 16.700802, 18.651690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489597, 16.757627, 19.344204>,  <19.300291, 16.148426, 19.003820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489597, 16.757627, 19.344204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.190220, 16.909389, 19.126623>,  <19.010593, 17.000446, 18.996075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.190220, 16.909389, 19.126623>,  <19.489597, 16.757627, 19.344204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.190220, 16.909389, 19.126623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289621, 0.550867, 0.782730,
		0.596615, 0.743369, -0.302410,
		-0.748445, 0.379404, -0.543951,
		18.965687, 17.023211, 18.963438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.377785, 17.400814, 19.596895>,  <19.489597, 16.757627, 19.344204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.377785, 17.400814, 19.596895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.039074, 17.320473, 19.399866>,  <18.835848, 17.272268, 19.281649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.039074, 17.320473, 19.399866>,  <19.377785, 17.400814, 19.596895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.039074, 17.320473, 19.399866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527816, 0.432434, 0.731035,
		0.066172, 0.879010, -0.472189,
		-0.846777, -0.200855, -0.492571,
		18.785040, 17.260216, 19.252094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981567, 17.951639, 19.627007>,  <19.377785, 17.400814, 19.596895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.981567, 17.951639, 19.627007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.699490, 17.682091, 19.538824>,  <18.530243, 17.520363, 19.485914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.699490, 17.682091, 19.538824>,  <18.981567, 17.951639, 19.627007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699490, 17.682091, 19.538824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575183, 0.361926, 0.733604,
		-0.414565, 0.644135, -0.642826,
		-0.705196, -0.673869, -0.220454,
		18.487930, 17.479931, 19.472689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317030, 18.320541, 19.611507>,  <18.981567, 17.951639, 19.627007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317030, 18.320541, 19.611507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.234962, 17.934708, 19.677816>,  <18.185722, 17.703207, 19.717602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.234962, 17.934708, 19.677816>,  <18.317030, 18.320541, 19.611507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234962, 17.934708, 19.677816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593047, 0.257264, 0.762961,
		-0.778589, 0.058225, -0.624827,
		-0.205169, -0.964585, 0.165773,
		18.173412, 17.645332, 19.727549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637745, 18.210892, 19.539963>,  <18.317030, 18.320541, 19.611507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637745, 18.210892, 19.539963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.758133, 17.918270, 19.784664>,  <17.830366, 17.742697, 19.931486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.758133, 17.918270, 19.784664>,  <17.637745, 18.210892, 19.539963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758133, 17.918270, 19.784664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661989, 0.301482, 0.686207,
		-0.686431, -0.611502, -0.393544,
		0.300970, -0.731555, 0.611754,
		17.848425, 17.698803, 19.968191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.042055, 18.119200, 19.973148>,  <17.637745, 18.210892, 19.539963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.042055, 18.119200, 19.973148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.314243, 17.905087, 20.173323>,  <17.477556, 17.776619, 20.293427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.314243, 17.905087, 20.173323>,  <17.042055, 18.119200, 19.973148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314243, 17.905087, 20.173323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399938, 0.300948, 0.865725,
		-0.614012, -0.789242, -0.009294,
		0.680469, -0.535282, 0.500434,
		17.518385, 17.744501, 20.323452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682705, 17.709814, 20.298090>,  <17.042055, 18.119200, 19.973148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682705, 17.709814, 20.298090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.022163, 17.716820, 20.509560>,  <17.225838, 17.721024, 20.636442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.022163, 17.716820, 20.509560>,  <16.682705, 17.709814, 20.298090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022163, 17.716820, 20.509560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527263, 0.108103, 0.842798,
		-0.042390, -0.993985, 0.100975,
		0.848644, 0.017514, 0.528674,
		17.276756, 17.722075, 20.668161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508486, 17.296564, 20.813665>,  <16.682705, 17.709814, 20.298090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508486, 17.296564, 20.813665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.818886, 17.499695, 20.963297>,  <17.005127, 17.621572, 21.053076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.818886, 17.499695, 20.963297>,  <16.508486, 17.296564, 20.813665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818886, 17.499695, 20.963297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454191, 0.038387, 0.890077,
		0.437644, -0.860604, 0.260438,
		0.776002, 0.507826, 0.374079,
		17.051687, 17.652042, 21.075521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684349, 16.911856, 21.460030>,  <16.508486, 17.296564, 20.813665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.684349, 16.911856, 21.460030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.836945, 17.280891, 21.482988>,  <16.928503, 17.502314, 21.496763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.836945, 17.280891, 21.482988>,  <16.684349, 16.911856, 21.460030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836945, 17.280891, 21.482988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385954, 0.102557, 0.916800,
		0.839943, -0.371902, 0.395202,
		0.381491, 0.922589, 0.057395,
		16.951391, 17.557669, 21.500208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011148, 16.990238, 22.271074>,  <16.684349, 16.911856, 21.460030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.011148, 16.990238, 22.271074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.954308, 17.356995, 22.121878>,  <16.920204, 17.577047, 22.032360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.954308, 17.356995, 22.121878>,  <17.011148, 16.990238, 22.271074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954308, 17.356995, 22.121878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467840, 0.269858, 0.841607,
		0.872315, 0.294092, 0.390611,
		-0.142100, 0.916890, -0.372989,
		16.911678, 17.632061, 22.009981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162724, 17.441597, 22.774450>,  <17.011148, 16.990238, 22.271074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162724, 17.441597, 22.774450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.979149, 17.708038, 22.539270>,  <16.869003, 17.867903, 22.398163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.979149, 17.708038, 22.539270>,  <17.162724, 17.441597, 22.774450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979149, 17.708038, 22.539270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500847, 0.352628, 0.790447,
		0.733846, 0.657238, 0.171782,
		-0.458936, 0.666103, -0.587950,
		16.841469, 17.907869, 22.362885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208685, 18.124128, 23.125662>,  <17.162724, 17.441597, 22.774450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208685, 18.124128, 23.125662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.900612, 18.099579, 22.871716>,  <16.715769, 18.084848, 22.719347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.900612, 18.099579, 22.871716>,  <17.208685, 18.124128, 23.125662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900612, 18.099579, 22.871716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615502, 0.332546, 0.714542,
		0.167267, 0.941088, -0.293897,
		-0.770181, -0.061375, -0.634866,
		16.669558, 18.081167, 22.681255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790617, 18.655422, 23.296906>,  <17.208685, 18.124128, 23.125662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790617, 18.655422, 23.296906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.540924, 18.451508, 23.060110>,  <16.391108, 18.329159, 22.918034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.540924, 18.451508, 23.060110>,  <16.790617, 18.655422, 23.296906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540924, 18.451508, 23.060110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779681, 0.358709, 0.513250,
		-0.049297, 0.781949, -0.621389,
		-0.624234, -0.509787, -0.591987,
		16.353653, 18.298571, 22.882513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328230, 19.131847, 23.035793>,  <16.790617, 18.655422, 23.296906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328230, 19.131847, 23.035793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.159588, 18.769367, 23.048771>,  <16.058403, 18.551880, 23.056557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.159588, 18.769367, 23.048771>,  <16.328230, 19.131847, 23.035793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159588, 18.769367, 23.048771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794180, 0.386285, 0.469108,
		-0.437638, 0.172013, -0.882544,
		-0.421606, -0.906198, 0.032444,
		16.033106, 18.497507, 23.058504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.062521, 19.315130, 22.836754>,  <16.328230, 19.131847, 23.035793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.062521, 19.315130, 22.836754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.199852, 19.663486, 22.977427>,  <17.282251, 19.872499, 23.061831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.199852, 19.663486, 22.977427>,  <17.062521, 19.315130, 22.836754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.199852, 19.663486, 22.977427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298255, 0.253964, -0.920079,
		-0.890601, 0.420779, -0.172554,
		0.343328, 0.870888, 0.351680,
		17.302851, 19.924753, 23.082932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931822, 19.916784, 22.299797>,  <17.062521, 19.315130, 22.836754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.931822, 19.916784, 22.299797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.232887, 20.006115, 22.547546>,  <17.413527, 20.059713, 22.696196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.232887, 20.006115, 22.547546>,  <16.931822, 19.916784, 22.299797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232887, 20.006115, 22.547546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602166, 0.146940, -0.784733,
		-0.266261, 0.963605, -0.023882,
		0.752663, 0.223325, 0.619374,
		17.458687, 20.073112, 22.733358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.225924, 20.646505, 22.021263>,  <16.931822, 19.916784, 22.299797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.225924, 20.646505, 22.021263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.513596, 20.468067, 22.234346>,  <17.686199, 20.361004, 22.362196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.513596, 20.468067, 22.234346>,  <17.225924, 20.646505, 22.021263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513596, 20.468067, 22.234346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673278, 0.257963, -0.692929,
		0.171695, 0.857002, 0.485869,
		0.719178, -0.446097, 0.532710,
		17.729349, 20.334238, 22.394159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798117, 21.125380, 22.072321>,  <17.225924, 20.646505, 22.021263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798117, 21.125380, 22.072321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.962166, 20.765430, 22.131685>,  <18.060595, 20.549461, 22.167303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.962166, 20.765430, 22.131685>,  <17.798117, 21.125380, 22.072321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.962166, 20.765430, 22.131685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804211, 0.280066, -0.524220,
		0.430168, 0.334347, 0.838551,
		0.410121, -0.899875, 0.148410,
		18.085201, 20.495468, 22.176208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.546032, 21.186382, 22.077810>,  <17.798117, 21.125380, 22.072321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.546032, 21.186382, 22.077810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.489670, 20.797657, 22.002211>,  <18.455853, 20.564421, 21.956852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.489670, 20.797657, 22.002211>,  <18.546032, 21.186382, 22.077810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.489670, 20.797657, 22.002211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783103, 0.007392, -0.621848,
		0.605719, -0.235627, 0.759990,
		-0.140907, -0.971815, -0.188998,
		18.447397, 20.506113, 21.945511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.315619, 21.007275, 22.032576>,  <18.546032, 21.186382, 22.077810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.315619, 21.007275, 22.032576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.119881, 20.686050, 21.896555>,  <19.002438, 20.493317, 21.814943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.119881, 20.686050, 21.896555>,  <19.315619, 21.007275, 22.032576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.119881, 20.686050, 21.896555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786192, -0.237480, -0.570531,
		0.377415, -0.546533, 0.747569,
		-0.489347, -0.803060, -0.340051,
		18.973076, 20.445133, 21.794540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862007, 20.528988, 22.005983>,  <19.315619, 21.007275, 22.032576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862007, 20.528988, 22.005983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.563690, 20.388466, 21.779577>,  <19.384699, 20.304153, 21.643734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.563690, 20.388466, 21.779577>,  <19.862007, 20.528988, 22.005983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.563690, 20.388466, 21.779577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666148, -0.385455, -0.638492,
		0.006131, -0.853235, 0.521490,
		-0.745795, -0.351304, -0.566017,
		19.339952, 20.283075, 21.609772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098259, 19.835537, 21.795982>,  <19.862007, 20.528988, 22.005983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098259, 19.835537, 21.795982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.799152, 19.936604, 21.550379>,  <19.619688, 19.997244, 21.403017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.799152, 19.936604, 21.550379>,  <20.098259, 19.835537, 21.795982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799152, 19.936604, 21.550379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526396, -0.338020, -0.780160,
		-0.404667, -0.906588, 0.119757,
		-0.747765, 0.252665, -0.614011,
		19.574823, 20.012403, 21.366177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988075, 19.263493, 21.471796>,  <20.098259, 19.835537, 21.795982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988075, 19.263493, 21.471796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.857513, 19.557793, 21.234434>,  <19.779177, 19.734373, 21.092016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.857513, 19.557793, 21.234434>,  <19.988075, 19.263493, 21.471796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.857513, 19.557793, 21.234434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431001, -0.442878, -0.786192,
		-0.841248, -0.512375, -0.172551,
		-0.326406, 0.735752, -0.593404,
		19.759592, 19.778519, 21.056414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587074, 18.977356, 20.855522>,  <19.988075, 19.263493, 21.471796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.587074, 18.977356, 20.855522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.685627, 19.339321, 20.716709>,  <19.744759, 19.556499, 20.633421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.685627, 19.339321, 20.716709>,  <19.587074, 18.977356, 20.855522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685627, 19.339321, 20.716709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291609, -0.410694, -0.863883,
		-0.924262, 0.111647, -0.365068,
		0.246381, 0.904912, -0.347031,
		19.759541, 19.610794, 20.612600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.264769, 19.016136, 20.192133>,  <19.587074, 18.977356, 20.855522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.264769, 19.016136, 20.192133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.566948, 19.277809, 20.206800>,  <19.748255, 19.434813, 20.215601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.566948, 19.277809, 20.206800>,  <19.264769, 19.016136, 20.192133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566948, 19.277809, 20.206800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371338, -0.381364, -0.846563,
		-0.539823, 0.653151, -0.531023,
		0.755447, 0.654183, 0.036671,
		19.793581, 19.474064, 20.217802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220129, 19.269739, 19.526205>,  <19.264769, 19.016136, 20.192133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.220129, 19.269739, 19.526205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.582291, 19.352215, 19.674654>,  <19.799587, 19.401701, 19.763723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.582291, 19.352215, 19.674654>,  <19.220129, 19.269739, 19.526205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582291, 19.352215, 19.674654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417868, -0.278289, -0.864836,
		-0.075041, 0.938105, -0.338124,
		0.905403, 0.206190, 0.371121,
		19.853912, 19.414072, 19.785990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544382, 19.558126, 18.929958>,  <19.220129, 19.269739, 19.526205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544382, 19.558126, 18.929958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.847637, 19.470051, 19.175476>,  <20.029591, 19.417206, 19.322786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.847637, 19.470051, 19.175476>,  <19.544382, 19.558126, 18.929958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.847637, 19.470051, 19.175476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503890, -0.399642, -0.765755,
		0.413907, 0.889833, -0.192034,
		0.758139, -0.220188, 0.613793,
		20.075079, 19.403994, 19.359613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.132534, 19.748722, 18.556252>,  <19.544382, 19.558126, 18.929958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.132534, 19.748722, 18.556252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.264236, 19.478142, 18.819767>,  <20.343258, 19.315794, 18.977877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.264236, 19.478142, 18.819767>,  <20.132534, 19.748722, 18.556252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.264236, 19.478142, 18.819767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516372, -0.455129, -0.725409,
		0.790538, 0.579026, 0.199446,
		0.329257, -0.676452, 0.658789,
		20.363014, 19.275206, 19.017405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.923471, 19.699110, 18.488098>,  <20.132534, 19.748722, 18.556252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.923471, 19.699110, 18.488098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.802464, 19.349247, 18.639603>,  <20.729858, 19.139330, 18.730505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.802464, 19.349247, 18.639603>,  <20.923471, 19.699110, 18.488098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802464, 19.349247, 18.639603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543745, -0.484743, -0.685103,
		0.782830, -0.001309, 0.622234,
		-0.302521, -0.874655, 0.378760,
		20.711708, 19.086851, 18.753231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.578724, 19.236017, 18.590477>,  <20.923471, 19.699110, 18.488098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.578724, 19.236017, 18.590477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.259666, 18.995560, 18.610050>,  <21.068232, 18.851286, 18.621794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.259666, 18.995560, 18.610050>,  <21.578724, 19.236017, 18.590477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.259666, 18.995560, 18.610050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464945, -0.664540, -0.584989,
		0.384181, -0.443860, 0.809563,
		-0.797641, -0.601144, 0.048933,
		21.020374, 18.815216, 18.624731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809774, 18.570021, 18.857960>,  <21.578724, 19.236017, 18.590477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809774, 18.570021, 18.857960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.476364, 18.507477, 18.646002>,  <21.276318, 18.469950, 18.518827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.476364, 18.507477, 18.646002>,  <21.809774, 18.570021, 18.857960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476364, 18.507477, 18.646002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539741, -0.435251, -0.720581,
		-0.117965, -0.886627, 0.447187,
		-0.833525, -0.156361, -0.529893,
		21.226307, 18.460567, 18.487034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.881695, 17.851456, 18.565708>,  <21.809774, 18.570021, 18.857960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.881695, 17.851456, 18.565708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.585407, 18.002789, 18.343645>,  <21.407635, 18.093588, 18.210407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.585407, 18.002789, 18.343645>,  <21.881695, 17.851456, 18.565708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585407, 18.002789, 18.343645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406316, -0.405806, -0.818675,
		-0.535019, -0.831976, 0.146865,
		-0.740717, 0.378333, -0.555160,
		21.363192, 18.116289, 18.177097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.718008, 17.361618, 18.104383>,  <21.881695, 17.851456, 18.565708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.718008, 17.361618, 18.104383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.586304, 17.700855, 17.938335>,  <21.507282, 17.904398, 17.838707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.586304, 17.700855, 17.938335>,  <21.718008, 17.361618, 18.104383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.586304, 17.700855, 17.938335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374815, -0.286125, -0.881842,
		-0.866662, -0.445948, -0.223669,
		-0.329259, 0.848093, -0.415122,
		21.487526, 17.955284, 17.813799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.485027, 17.182333, 17.511484>,  <21.718008, 17.361618, 18.104383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.485027, 17.182333, 17.511484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.553730, 17.572762, 17.458147>,  <21.594952, 17.807018, 17.426144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.553730, 17.572762, 17.458147>,  <21.485027, 17.182333, 17.511484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553730, 17.572762, 17.458147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355282, -0.187620, -0.915737,
		-0.918844, 0.109909, -0.379006,
		0.171757, 0.976073, -0.133345,
		21.605257, 17.865583, 17.418144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.103384, 13.828947, 13.080231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.103851, 14.225178, 13.025448>,  <21.104132, 14.462916, 12.992579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.103851, 14.225178, 13.025448>,  <21.103384, 13.828947, 13.080231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103851, 14.225178, 13.025448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217255, -0.133434, -0.966952,
		-0.976114, 0.030885, 0.215051,
		0.001169, 0.990576, -0.136957,
		21.104202, 14.522350, 12.984361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.594910, 13.901917, 12.512473>,  <21.103384, 13.828947, 13.080231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.594910, 13.901917, 12.512473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.788250, 14.250469, 12.546095>,  <20.904255, 14.459601, 12.566268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.788250, 14.250469, 12.546095>,  <20.594910, 13.901917, 12.512473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.788250, 14.250469, 12.546095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103290, 0.152112, -0.982951,
		-0.869312, 0.466428, 0.163528,
		0.483350, 0.871382, 0.084055,
		20.933254, 14.511884, 12.571312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275539, 14.317962, 12.052420>,  <20.594910, 13.901917, 12.512473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275539, 14.317962, 12.052420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.608292, 14.535076, 12.098655>,  <20.807943, 14.665345, 12.126396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.608292, 14.535076, 12.098655>,  <20.275539, 14.317962, 12.052420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.608292, 14.535076, 12.098655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066786, 0.108852, -0.991812,
		-0.550923, 0.832787, 0.054301,
		0.831879, 0.542786, 0.115588,
		20.857855, 14.697912, 12.133331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.151415, 14.866673, 11.627666>,  <20.275539, 14.317962, 12.052420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.151415, 14.866673, 11.627666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.548420, 14.865028, 11.676488>,  <20.786623, 14.864042, 11.705781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.548420, 14.865028, 11.676488>,  <20.151415, 14.866673, 11.627666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.548420, 14.865028, 11.676488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118313, 0.280097, -0.952653,
		-0.030272, 0.959963, 0.278487,
		0.992515, -0.004110, 0.122055,
		20.846174, 14.863795, 11.713104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.452335, 15.538798, 11.256631>,  <20.151415, 14.866673, 11.627666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.452335, 15.538798, 11.256631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.747608, 15.273937, 11.308224>,  <20.924772, 15.115021, 11.339180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.747608, 15.273937, 11.308224>,  <20.452335, 15.538798, 11.256631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.747608, 15.273937, 11.308224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314316, 0.168419, -0.934259,
		0.596900, 0.730197, 0.332450,
		0.738184, -0.662153, 0.128983,
		20.969063, 15.075291, 11.346919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070637, 15.906093, 11.098903>,  <20.452335, 15.538798, 11.256631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070637, 15.906093, 11.098903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.154716, 15.518314, 11.048318>,  <21.205164, 15.285647, 11.017967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.154716, 15.518314, 11.048318>,  <21.070637, 15.906093, 11.098903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.154716, 15.518314, 11.048318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393596, 0.202320, -0.896743,
		0.894929, 0.138720, 0.424097,
		0.210199, -0.969445, -0.126462,
		21.217775, 15.227481, 11.010379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.683012, 15.933965, 10.793941>,  <21.070637, 15.906093, 11.098903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.683012, 15.933965, 10.793941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.555939, 15.561085, 10.724566>,  <21.479694, 15.337357, 10.682941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.555939, 15.561085, 10.724566>,  <21.683012, 15.933965, 10.793941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.555939, 15.561085, 10.724566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279835, 0.082594, -0.956489,
		0.905964, -0.352392, 0.234624,
		-0.317681, -0.932200, -0.173438,
		21.460634, 15.281425, 10.672535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.207378, 15.539770, 10.422425>,  <21.683012, 15.933965, 10.793941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.207378, 15.539770, 10.422425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.893169, 15.300198, 10.360157>,  <21.704643, 15.156454, 10.322796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.893169, 15.300198, 10.360157>,  <22.207378, 15.539770, 10.422425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.893169, 15.300198, 10.360157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120158, 0.099147, -0.987792,
		0.607053, -0.794639, -0.005916,
		-0.785525, -0.598931, -0.155670,
		21.657513, 15.120519, 10.313456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422630, 14.931221, 10.032036>,  <22.207378, 15.539770, 10.422425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422630, 14.931221, 10.032036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.027317, 14.962219, 9.979436>,  <21.790129, 14.980819, 9.947876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.027317, 14.962219, 9.979436>,  <22.422630, 14.931221, 10.032036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.027317, 14.962219, 9.979436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136738, 0.066667, -0.988361,
		-0.067830, -0.994761, -0.076483,
		-0.988283, 0.077498, -0.131500,
		21.730833, 14.985468, 9.939986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.192137, 14.333914, 9.635551>,  <22.422630, 14.931221, 10.032036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.192137, 14.333914, 9.635551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.941734, 14.637428, 9.563594>,  <21.791492, 14.819536, 9.520419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.941734, 14.637428, 9.563594>,  <22.192137, 14.333914, 9.635551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.941734, 14.637428, 9.563594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367631, 0.083717, -0.926196,
		-0.687724, -0.645939, -0.331360,
		-0.626006, 0.758785, -0.179893,
		21.753933, 14.865064, 9.509626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023165, 14.173774, 9.052732>,  <22.192137, 14.333914, 9.635551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023165, 14.173774, 9.052732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.916592, 14.556347, 9.100484>,  <21.852648, 14.785891, 9.129135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.916592, 14.556347, 9.100484>,  <22.023165, 14.173774, 9.052732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.916592, 14.556347, 9.100484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313337, 0.203076, -0.927675,
		-0.911501, -0.209756, -0.353792,
		-0.266432, 0.956432, 0.119380,
		21.836662, 14.843277, 9.136298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.449139, 14.273319, 8.522162>,  <22.023165, 14.173774, 9.052732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.449139, 14.273319, 8.522162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.611542, 14.629238, 8.605513>,  <21.708982, 14.842790, 8.655523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.611542, 14.629238, 8.605513>,  <21.449139, 14.273319, 8.522162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.611542, 14.629238, 8.605513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214113, 0.129050, -0.968247,
		-0.888434, 0.437730, -0.138122,
		0.406006, 0.889797, 0.208376,
		21.733343, 14.896177, 8.668025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473419, 14.576336, 7.825621>,  <21.449139, 14.273319, 8.522162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473419, 14.576336, 7.825621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708458, 14.758327, 8.093270>,  <21.849482, 14.867522, 8.253860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708458, 14.758327, 8.093270>,  <21.473419, 14.576336, 7.825621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.708458, 14.758327, 8.093270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629969, 0.261740, -0.731185,
		-0.507810, 0.851168, -0.132825,
		0.587595, 0.454979, 0.669124,
		21.884737, 14.894821, 8.294007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798616, 15.349133, 7.738979>,  <21.473419, 14.576336, 7.825621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798616, 15.349133, 7.738979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.004261, 15.069504, 7.937769>,  <22.127647, 14.901726, 8.057043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.004261, 15.069504, 7.937769>,  <21.798616, 15.349133, 7.738979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.004261, 15.069504, 7.937769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775478, 0.131263, -0.617579,
		0.366499, 0.702898, 0.609600,
		0.514113, -0.699074, 0.496974,
		22.158495, 14.859781, 8.086861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.285286, 15.579065, 7.264298>,  <21.798616, 15.349133, 7.738979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.285286, 15.579065, 7.264298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032089, 15.702007, 6.980086>,  <20.880171, 15.775773, 6.809559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032089, 15.702007, 6.980086>,  <21.285286, 15.579065, 7.264298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032089, 15.702007, 6.980086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548183, 0.470122, 0.691723,
		0.546641, 0.827356, -0.129096,
		-0.632993, 0.307356, -0.710530,
		20.842192, 15.794214, 6.766927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171934, 16.204052, 7.469563>,  <21.285286, 15.579065, 7.264298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171934, 16.204052, 7.469563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.855377, 16.143265, 7.232716>,  <20.665443, 16.106792, 7.090607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.855377, 16.143265, 7.232716>,  <21.171934, 16.204052, 7.469563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.855377, 16.143265, 7.232716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583328, 0.477414, 0.657118,
		0.182826, 0.865438, -0.466468,
		-0.791393, -0.151966, -0.592118,
		20.617960, 16.097675, 7.055080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.911978, 16.737072, 7.493671>,  <21.171934, 16.204052, 7.469563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.911978, 16.737072, 7.493671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.612309, 16.499802, 7.375766>,  <20.432507, 16.357439, 7.305023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.612309, 16.499802, 7.375766>,  <20.911978, 16.737072, 7.493671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.612309, 16.499802, 7.375766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606015, 0.434186, 0.666504,
		-0.267371, 0.677957, -0.684753,
		-0.749172, -0.593175, -0.294763,
		20.387556, 16.321850, 7.287337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.371225, 17.203819, 7.234822>,  <20.911978, 16.737072, 7.493671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.371225, 17.203819, 7.234822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.213425, 16.845692, 7.317546>,  <20.118744, 16.630816, 7.367180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.213425, 16.845692, 7.317546>,  <20.371225, 17.203819, 7.234822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.213425, 16.845692, 7.317546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677996, 0.435525, 0.592148,
		-0.620232, 0.093388, -0.778839,
		-0.394503, -0.895320, 0.206810,
		20.095074, 16.577095, 7.379589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642401, 17.373955, 7.395776>,  <20.371225, 17.203819, 7.234822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642401, 17.373955, 7.395776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.680553, 17.005714, 7.547247>,  <19.703445, 16.784771, 7.638130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.680553, 17.005714, 7.547247>,  <19.642401, 17.373955, 7.395776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680553, 17.005714, 7.547247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592118, 0.253324, 0.764998,
		-0.800186, -0.297189, -0.520942,
		0.095382, -0.920601, 0.378678,
		19.709167, 16.729534, 7.660851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.003870, 17.251356, 7.586621>,  <19.642401, 17.373955, 7.395776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.003870, 17.251356, 7.586621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.217598, 16.980347, 7.788796>,  <19.345835, 16.817741, 7.910101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.217598, 16.980347, 7.788796>,  <19.003870, 17.251356, 7.586621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217598, 16.980347, 7.788796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554327, 0.170563, 0.814635,
		-0.638142, -0.715452, -0.284434,
		0.534319, -0.677523, 0.505438,
		19.377893, 16.777090, 7.940428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458046, 16.805012, 7.920391>,  <19.003870, 17.251356, 7.586621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.458046, 16.805012, 7.920391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.802380, 16.807678, 8.123927>,  <19.008980, 16.809278, 8.246049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.802380, 16.807678, 8.123927>,  <18.458046, 16.805012, 7.920391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802380, 16.807678, 8.123927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479749, 0.344112, 0.807111,
		-0.169720, -0.938905, 0.299420,
		0.860835, 0.006663, 0.508841,
		19.060631, 16.809677, 8.276579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293077, 16.528248, 8.533855>,  <18.458046, 16.805012, 7.920391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293077, 16.528248, 8.533855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.641987, 16.697468, 8.631972>,  <18.851332, 16.799000, 8.690843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.641987, 16.697468, 8.631972>,  <18.293077, 16.528248, 8.533855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641987, 16.697468, 8.631972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386725, 0.289748, 0.875494,
		0.299323, -0.858522, 0.416348,
		0.872267, 0.423068, 0.245283,
		18.903669, 16.824383, 8.705560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.427872, 16.185719, 9.097862>,  <18.293077, 16.528248, 8.533855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.427872, 16.185719, 9.097862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.655125, 16.514889, 9.096147>,  <18.791475, 16.712391, 9.095118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.655125, 16.514889, 9.096147>,  <18.427872, 16.185719, 9.097862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.655125, 16.514889, 9.096147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371740, 0.261284, 0.890808,
		0.734192, -0.504501, 0.454359,
		0.568130, 0.822928, -0.004289,
		18.825563, 16.761766, 9.094860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626820, 16.127455, 9.774822>,  <18.427872, 16.185719, 9.097862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.626820, 16.127455, 9.774822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.675697, 16.511539, 9.674377>,  <18.705025, 16.741991, 9.614110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.675697, 16.511539, 9.674377>,  <18.626820, 16.127455, 9.774822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.675697, 16.511539, 9.674377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202558, 0.271811, 0.940792,
		0.971617, -0.064095, 0.227713,
		0.122195, 0.960214, -0.251113,
		18.712357, 16.799604, 9.599044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980398, 16.399441, 10.301801>,  <18.626820, 16.127455, 9.774822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980398, 16.399441, 10.301801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.812687, 16.717327, 10.126240>,  <18.712059, 16.908058, 10.020904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.812687, 16.717327, 10.126240>,  <18.980398, 16.399441, 10.301801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812687, 16.717327, 10.126240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233115, 0.372995, 0.898071,
		0.877418, 0.478858, 0.028870,
		-0.419280, 0.794713, -0.438901,
		18.686903, 16.955742, 9.994570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375816, 16.983288, 10.548918>,  <18.980398, 16.399441, 10.301801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.375816, 16.983288, 10.548918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.031593, 17.123917, 10.401492>,  <18.825060, 17.208294, 10.313037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.031593, 17.123917, 10.401492>,  <19.375816, 16.983288, 10.548918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.031593, 17.123917, 10.401492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206042, 0.421472, 0.883124,
		0.465822, 0.835917, -0.290262,
		-0.860556, 0.351573, -0.368565,
		18.773426, 17.229389, 10.290922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371984, 17.759411, 10.767773>,  <19.375816, 16.983288, 10.548918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371984, 17.759411, 10.767773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.004189, 17.614544, 10.706622>,  <18.783510, 17.527624, 10.669931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.004189, 17.614544, 10.706622>,  <19.371984, 17.759411, 10.767773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.004189, 17.614544, 10.706622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254712, 0.252660, 0.933426,
		-0.299432, 0.897216, -0.324567,
		-0.919490, -0.362169, -0.152877,
		18.728342, 17.505894, 10.660759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.957348, 18.210114, 11.117102>,  <19.371984, 17.759411, 10.767773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.957348, 18.210114, 11.117102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.716198, 17.894417, 11.070387>,  <18.571508, 17.704998, 11.042358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.716198, 17.894417, 11.070387>,  <18.957348, 18.210114, 11.117102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.716198, 17.894417, 11.070387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343668, 0.124787, 0.930763,
		-0.720025, 0.601268, -0.346469,
		-0.602874, -0.789243, -0.116787,
		18.535336, 17.657644, 11.035351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565952, 18.782614, 10.727766>,  <18.957348, 18.210114, 11.117102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565952, 18.782614, 10.727766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.683746, 19.164825, 10.721521>,  <18.754423, 19.394152, 10.717774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.683746, 19.164825, 10.721521>,  <18.565952, 18.782614, 10.727766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683746, 19.164825, 10.721521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590641, -0.194825, -0.783063,
		-0.751280, 0.221380, -0.621747,
		0.294486, 0.955528, -0.015612,
		18.772093, 19.451485, 10.716838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463461, 18.985741, 10.057100>,  <18.565952, 18.782614, 10.727766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463461, 18.985741, 10.057100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.724953, 19.245193, 10.213007>,  <18.881847, 19.400866, 10.306551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.724953, 19.245193, 10.213007>,  <18.463461, 18.985741, 10.057100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.724953, 19.245193, 10.213007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469404, 0.056413, -0.881180,
		-0.593548, 0.759010, -0.267591,
		0.653729, 0.648630, 0.389766,
		18.921072, 19.439783, 10.329937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740358, 19.508417, 9.442028>,  <18.463461, 18.985741, 10.057100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.740358, 19.508417, 9.442028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.990372, 19.560291, 9.749928>,  <19.140379, 19.591415, 9.934669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.990372, 19.560291, 9.749928>,  <18.740358, 19.508417, 9.442028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990372, 19.560291, 9.749928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740867, 0.212044, -0.637302,
		-0.245869, 0.968617, 0.036456,
		0.625032, 0.129684, 0.769751,
		19.177881, 19.599197, 9.980854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.943163, 20.128487, 9.387631>,  <18.740358, 19.508417, 9.442028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.943163, 20.128487, 9.387631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.215054, 19.907291, 9.580369>,  <19.378187, 19.774574, 9.696012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.215054, 19.907291, 9.580369>,  <18.943163, 20.128487, 9.387631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215054, 19.907291, 9.580369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618355, 0.078727, -0.781946,
		0.394474, 0.829460, 0.395457,
		0.679726, -0.552990, 0.481844,
		19.418972, 19.741394, 9.724922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604509, 20.444824, 9.297773>,  <18.943163, 20.128487, 9.387631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.604509, 20.444824, 9.297773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.714127, 20.080719, 9.421918>,  <19.779898, 19.862257, 9.496405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.714127, 20.080719, 9.421918>,  <19.604509, 20.444824, 9.297773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714127, 20.080719, 9.421918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605164, -0.087599, -0.791267,
		0.747447, 0.404660, 0.526852,
		0.274043, -0.910262, 0.310361,
		19.796339, 19.807640, 9.515026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.238972, 20.473593, 9.176974>,  <19.604509, 20.444824, 9.297773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.238972, 20.473593, 9.176974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.175064, 20.078945, 9.189980>,  <20.136719, 19.842157, 9.197783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.175064, 20.078945, 9.189980>,  <20.238972, 20.473593, 9.176974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175064, 20.078945, 9.189980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621562, -0.126133, -0.773143,
		0.766899, -0.103316, 0.633397,
		-0.159771, -0.986619, 0.032514,
		20.127132, 19.782959, 9.199734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904564, 20.096235, 9.218036>,  <20.238972, 20.473593, 9.176974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904564, 20.096235, 9.218036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.633072, 19.850487, 9.057100>,  <20.470177, 19.703037, 8.960539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.633072, 19.850487, 9.057100>,  <20.904564, 20.096235, 9.218036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633072, 19.850487, 9.057100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627574, -0.200683, -0.752248,
		0.381417, -0.763069, 0.521773,
		-0.678728, -0.614371, -0.402338,
		20.429453, 19.666176, 8.936399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288639, 19.646858, 8.887655>,  <20.904564, 20.096235, 9.218036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288639, 19.646858, 8.887655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.940804, 19.595154, 8.697032>,  <20.732101, 19.564131, 8.582658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.940804, 19.595154, 8.697032>,  <21.288639, 19.646858, 8.887655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940804, 19.595154, 8.697032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484375, -0.035875, -0.874124,
		0.095895, -0.990961, 0.093808,
		-0.869589, -0.129262, -0.476557,
		20.679926, 19.556376, 8.554065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.427843, 19.230108, 8.351558>,  <21.288639, 19.646858, 8.887655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.427843, 19.230108, 8.351558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.066753, 19.365879, 8.245819>,  <20.850100, 19.447342, 8.182376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.066753, 19.365879, 8.245819>,  <21.427843, 19.230108, 8.351558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.066753, 19.365879, 8.245819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284909, 0.011257, -0.958489,
		-0.322362, -0.940565, -0.106868,
		-0.902723, 0.339428, -0.264346,
		20.795937, 19.467707, 8.166515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313515, 18.852695, 7.702044>,  <21.427843, 19.230108, 8.351558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313515, 18.852695, 7.702044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.021351, 19.125744, 7.692860>,  <20.846052, 19.289574, 7.687349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.021351, 19.125744, 7.692860>,  <21.313515, 18.852695, 7.702044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.021351, 19.125744, 7.692860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044563, 0.014085, -0.998907,
		-0.681554, -0.730635, -0.040707,
		-0.730410, 0.682623, -0.022960,
		20.802227, 19.330530, 7.685972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.697191, 18.654190, 7.231348>,  <21.313515, 18.852695, 7.702044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.697191, 18.654190, 7.231348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.738209, 19.050743, 7.263954>,  <20.762819, 19.288675, 7.283518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.738209, 19.050743, 7.263954>,  <20.697191, 18.654190, 7.231348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738209, 19.050743, 7.263954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253176, 0.053238, -0.965954,
		-0.961970, 0.119691, -0.245535,
		0.102544, 0.991383, 0.081516,
		20.768972, 19.348158, 7.288409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261902, 18.935194, 6.738650>,  <20.697191, 18.654190, 7.231348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261902, 18.935194, 6.738650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.513752, 19.237408, 6.811026>,  <20.664862, 19.418736, 6.854451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.513752, 19.237408, 6.811026>,  <20.261902, 18.935194, 6.738650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.513752, 19.237408, 6.811026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156348, 0.104908, -0.982115,
		-0.761004, 0.646654, -0.052073,
		0.629625, 0.755535, 0.180938,
		20.702639, 19.464067, 6.865307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.465073, 20.069954, 13.671973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791958, 20.255825, 13.808346>,  <16.988089, 20.367348, 13.890169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791958, 20.255825, 13.808346>,  <16.465073, 20.069954, 13.671973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791958, 20.255825, 13.808346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317330, 0.131023, -0.939220,
		-0.481106, 0.875732, -0.040383,
		0.817214, 0.464680, 0.340932,
		17.037123, 20.395229, 13.910625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564718, 20.413151, 13.180662>,  <16.465073, 20.069954, 13.671973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564718, 20.413151, 13.180662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915970, 20.455750, 13.367229>,  <17.126720, 20.481310, 13.479170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915970, 20.455750, 13.367229>,  <16.564718, 20.413151, 13.180662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915970, 20.455750, 13.367229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460599, 0.075434, -0.884397,
		-0.129370, 0.991447, 0.017188,
		0.878130, 0.106498, 0.466419,
		17.179409, 20.487700, 13.507155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947550, 20.976748, 12.966166>,  <16.564718, 20.413151, 13.180662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947550, 20.976748, 12.966166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224850, 20.725201, 13.106979>,  <17.391230, 20.574272, 13.191468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224850, 20.725201, 13.106979>,  <16.947550, 20.976748, 12.966166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.224850, 20.725201, 13.106979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402014, -0.067978, -0.913107,
		0.598154, 0.774535, 0.205687,
		0.693251, -0.628868, 0.352035,
		17.432825, 20.536541, 13.212590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567099, 21.187759, 12.516099>,  <16.947550, 20.976748, 12.966166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567099, 21.187759, 12.516099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644032, 20.824345, 12.664459>,  <17.690191, 20.606295, 12.753475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644032, 20.824345, 12.664459>,  <17.567099, 21.187759, 12.516099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644032, 20.824345, 12.664459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475038, -0.244527, -0.845308,
		0.858690, 0.338771, 0.384560,
		0.192330, -0.908538, 0.370901,
		17.701731, 20.551783, 12.775729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.342903, 21.057915, 12.529708>,  <17.567099, 21.187759, 12.516099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.342903, 21.057915, 12.529708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.165428, 20.699444, 12.528455>,  <18.058943, 20.484362, 12.527702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.165428, 20.699444, 12.528455>,  <18.342903, 21.057915, 12.529708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165428, 20.699444, 12.528455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426428, -0.208043, -0.880271,
		0.788226, -0.391903, 0.474461,
		-0.443689, -0.896176, -0.003134,
		18.032322, 20.430592, 12.527514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855375, 20.669580, 12.273575>,  <18.342903, 21.057915, 12.529708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855375, 20.669580, 12.273575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.559437, 20.401184, 12.253983>,  <18.381874, 20.240147, 12.242227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.559437, 20.401184, 12.253983>,  <18.855375, 20.669580, 12.273575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559437, 20.401184, 12.253983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432759, -0.418895, -0.798277,
		0.515118, -0.611800, 0.600295,
		-0.739847, -0.670990, -0.048981,
		18.337482, 20.199886, 12.239288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104315, 20.024345, 12.265072>,  <18.855375, 20.669580, 12.273575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.104315, 20.024345, 12.265072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747807, 19.974228, 12.090746>,  <18.533901, 19.944157, 11.986150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747807, 19.974228, 12.090746>,  <19.104315, 20.024345, 12.265072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747807, 19.974228, 12.090746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441916, -0.455539, -0.772784,
		-0.101706, -0.881355, 0.461378,
		-0.891272, -0.125294, -0.435816,
		18.480425, 19.936640, 11.960001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150404, 19.334585, 12.005080>,  <19.104315, 20.024345, 12.265072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150404, 19.334585, 12.005080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865112, 19.526577, 11.800756>,  <18.693937, 19.641771, 11.678161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865112, 19.526577, 11.800756>,  <19.150404, 19.334585, 12.005080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865112, 19.526577, 11.800756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437431, -0.264635, -0.859431,
		-0.547687, -0.836414, -0.021212,
		-0.713227, 0.479978, -0.510811,
		18.651144, 19.670570, 11.647512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.912605, 18.863916, 11.387730>,  <19.150404, 19.334585, 12.005080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.912605, 18.863916, 11.387730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807751, 19.231758, 11.270690>,  <18.744839, 19.452463, 11.200466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807751, 19.231758, 11.270690>,  <18.912605, 18.863916, 11.387730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.807751, 19.231758, 11.270690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410036, -0.168335, -0.896400,
		-0.873588, -0.354955, -0.332944,
		-0.262136, 0.919604, -0.292599,
		18.729111, 19.507639, 11.182910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.281057, 18.412216, 11.336217>,  <18.912605, 18.863916, 11.387730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.281057, 18.412216, 11.336217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258949, 18.012939, 11.345699>,  <18.245684, 17.773375, 11.351389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258949, 18.012939, 11.345699>,  <18.281057, 18.412216, 11.336217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258949, 18.012939, 11.345699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373926, 0.042709, 0.926475,
		-0.925810, 0.042343, -0.375610,
		-0.055272, -0.998190, 0.023707,
		18.242369, 17.713482, 11.352812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566547, 18.301054, 11.698689>,  <18.281057, 18.412216, 11.336217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566547, 18.301054, 11.698689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781792, 17.965157, 11.727723>,  <17.910938, 17.763618, 11.745143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781792, 17.965157, 11.727723>,  <17.566547, 18.301054, 11.698689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.781792, 17.965157, 11.727723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315341, -0.120713, 0.941270,
		-0.781663, -0.529396, -0.329762,
		0.538111, -0.839743, 0.072583,
		17.943226, 17.713234, 11.749498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.283842, 18.069324, 12.231079>,  <17.566547, 18.301054, 11.698689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.283842, 18.069324, 12.231079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613979, 17.845947, 12.197731>,  <17.812061, 17.711920, 12.177722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613979, 17.845947, 12.197731>,  <17.283842, 18.069324, 12.231079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613979, 17.845947, 12.197731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006265, -0.156704, 0.987626,
		-0.564599, -0.814606, -0.132832,
		0.825341, -0.558445, -0.083371,
		17.861582, 17.678413, 12.172720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037376, 17.505995, 12.410430>,  <17.283842, 18.069324, 12.231079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037376, 17.505995, 12.410430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.431118, 17.498768, 12.480534>,  <17.667364, 17.494431, 12.522596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.431118, 17.498768, 12.480534>,  <17.037376, 17.505995, 12.410430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431118, 17.498768, 12.480534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176167, -0.116746, 0.977413,
		0.002801, -0.992998, -0.118102,
		0.984356, -0.018068, 0.175260,
		17.726425, 17.493347, 12.533112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306944, 16.874491, 12.679584>,  <17.037376, 17.505995, 12.410430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.306944, 16.874491, 12.679584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546978, 17.174339, 12.791270>,  <17.690998, 17.354248, 12.858282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546978, 17.174339, 12.791270>,  <17.306944, 16.874491, 12.679584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.546978, 17.174339, 12.791270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186826, -0.208059, 0.960108,
		0.777812, -0.628313, 0.015195,
		0.600087, 0.749622, 0.279216,
		17.727005, 17.399225, 12.875035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667316, 16.624374, 13.305110>,  <17.306944, 16.874491, 12.679584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.667316, 16.624374, 13.305110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713036, 17.021656, 13.296333>,  <17.740467, 17.260025, 13.291067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713036, 17.021656, 13.296333>,  <17.667316, 16.624374, 13.305110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713036, 17.021656, 13.296333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149686, 0.039052, 0.987962,
		0.982105, -0.109638, 0.153132,
		0.114299, 0.993204, -0.021942,
		17.747326, 17.319618, 13.289751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984728, 16.756001, 13.947603>,  <17.667316, 16.624374, 13.305110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984728, 16.756001, 13.947603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819599, 17.097828, 13.821562>,  <17.720522, 17.302925, 13.745937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819599, 17.097828, 13.821562>,  <17.984728, 16.756001, 13.947603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819599, 17.097828, 13.821562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426707, 0.124182, 0.895824,
		0.804672, 0.504274, 0.313385,
		-0.412824, 0.854568, -0.315103,
		17.695751, 17.354198, 13.727031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132423, 17.147827, 14.509082>,  <17.984728, 16.756001, 13.947603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.132423, 17.147827, 14.509082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872845, 17.366062, 14.296968>,  <17.717096, 17.497004, 14.169701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872845, 17.366062, 14.296968>,  <18.132423, 17.147827, 14.509082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872845, 17.366062, 14.296968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492384, 0.230178, 0.839390,
		0.580021, 0.805824, 0.119266,
		-0.648948, 0.545588, -0.530283,
		17.678160, 17.529739, 14.137883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938457, 17.797245, 14.901738>,  <18.132423, 17.147827, 14.509082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938457, 17.797245, 14.901738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640999, 17.750984, 14.638342>,  <17.462523, 17.723227, 14.480304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640999, 17.750984, 14.638342>,  <17.938457, 17.797245, 14.901738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.640999, 17.750984, 14.638342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667917, 0.085001, 0.739365,
		-0.029538, 0.989646, -0.140459,
		-0.743649, -0.115654, -0.658491,
		17.417904, 17.716288, 14.440795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517677, 18.362152, 14.946844>,  <17.938457, 17.797245, 14.901738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517677, 18.362152, 14.946844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.290218, 18.055279, 14.828138>,  <17.153742, 17.871155, 14.756915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.290218, 18.055279, 14.828138>,  <17.517677, 18.362152, 14.946844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.290218, 18.055279, 14.828138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611839, 0.153340, 0.775977,
		-0.549810, 0.622830, -0.556589,
		-0.568649, -0.767183, -0.296764,
		17.119623, 17.825125, 14.739109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826624, 18.574364, 14.852404>,  <17.517677, 18.362152, 14.946844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826624, 18.574364, 14.852404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.813885, 18.181938, 14.928820>,  <16.806242, 17.946482, 14.974669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.813885, 18.181938, 14.928820>,  <16.826624, 18.574364, 14.852404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813885, 18.181938, 14.928820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473910, 0.183109, 0.861324,
		-0.879997, -0.063104, -0.470769,
		-0.031849, -0.981065, 0.191041,
		16.804331, 17.887619, 14.986132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223030, 18.569393, 15.202960>,  <16.826624, 18.574364, 14.852404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223030, 18.569393, 15.202960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373547, 18.205059, 15.270823>,  <16.463856, 17.986458, 15.311540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373547, 18.205059, 15.270823>,  <16.223030, 18.569393, 15.202960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373547, 18.205059, 15.270823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573337, -0.085077, 0.814891,
		-0.727798, -0.403906, -0.554229,
		0.376292, -0.910836, 0.169655,
		16.486435, 17.931808, 15.321719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.755254, 18.259687, 15.583002>,  <16.223030, 18.569393, 15.202960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.755254, 18.259687, 15.583002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042385, 17.998436, 15.679455>,  <16.214664, 17.841684, 15.737327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042385, 17.998436, 15.679455>,  <15.755254, 18.259687, 15.583002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.042385, 17.998436, 15.679455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326434, -0.009820, 0.945169,
		-0.614950, -0.757183, -0.220252,
		0.717828, -0.653129, 0.241132,
		16.257734, 17.802498, 15.751794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.431333, 17.690750, 15.887629>,  <15.755254, 18.259687, 15.583002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.431333, 17.690750, 15.887629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810672, 17.704357, 16.013790>,  <16.038275, 17.712521, 16.089487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810672, 17.704357, 16.013790>,  <15.431333, 17.690750, 15.887629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810672, 17.704357, 16.013790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313084, -0.059935, 0.947833,
		0.051146, -0.997623, -0.046189,
		0.948347, 0.034017, 0.315405,
		16.095177, 17.714561, 16.108412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.947386, 21.614029, 18.153679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.564236, 21.580952, 18.043667>,  <22.334347, 21.561106, 17.977659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.564236, 21.580952, 18.043667>,  <22.947386, 21.614029, 18.153679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.564236, 21.580952, 18.043667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282180, -0.449095, -0.847755,
		-0.053412, -0.889649, 0.453510,
		-0.957874, -0.082691, -0.275028,
		22.276875, 21.556145, 17.961159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.871040, 20.973513, 17.828646>,  <22.947386, 21.614029, 18.153679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.871040, 20.973513, 17.828646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.568649, 21.193760, 17.687046>,  <22.387215, 21.325909, 17.602087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.568649, 21.193760, 17.687046>,  <22.871040, 20.973513, 17.828646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568649, 21.193760, 17.687046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128865, -0.405022, -0.905180,
		-0.641786, -0.729915, 0.235233,
		-0.755979, 0.550619, -0.353998,
		22.341856, 21.358946, 17.580847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507816, 20.523312, 17.415916>,  <22.871040, 20.973513, 17.828646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507816, 20.523312, 17.415916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.415161, 20.896980, 17.307348>,  <22.359568, 21.121181, 17.242207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.415161, 20.896980, 17.307348>,  <22.507816, 20.523312, 17.415916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.415161, 20.896980, 17.307348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119381, -0.249603, -0.960961,
		-0.965449, -0.254997, -0.053705,
		-0.231637, 0.934171, -0.271421,
		22.345671, 21.177231, 17.225922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.206696, 20.432154, 16.885523>,  <22.507816, 20.523312, 17.415916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.206696, 20.432154, 16.885523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.283558, 20.820225, 16.826416>,  <22.329676, 21.053066, 16.790953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.283558, 20.820225, 16.826416>,  <22.206696, 20.432154, 16.885523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.283558, 20.820225, 16.826416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082916, -0.166083, -0.982620,
		-0.977855, 0.176563, -0.112357,
		0.192155, 0.970176, -0.147766,
		22.341204, 21.111279, 16.782085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.818077, 20.743364, 16.350033>,  <22.206696, 20.432154, 16.885523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.818077, 20.743364, 16.350033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.155571, 20.958023, 16.354515>,  <22.358067, 21.086819, 16.357204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.155571, 20.958023, 16.354515>,  <21.818077, 20.743364, 16.350033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.155571, 20.958023, 16.354515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138187, -0.196995, -0.970617,
		-0.518671, 0.820490, -0.240369,
		0.843733, 0.536647, 0.011206,
		22.408691, 21.119017, 16.357876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793158, 21.142080, 15.683671>,  <21.818077, 20.743364, 16.350033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793158, 21.142080, 15.683671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.168476, 21.208805, 15.804846>,  <22.393667, 21.248840, 15.877550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.168476, 21.208805, 15.804846>,  <21.793158, 21.142080, 15.683671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168476, 21.208805, 15.804846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316271, -0.059573, -0.946796,
		-0.139891, 0.984187, -0.108655,
		0.938298, 0.166813, 0.302936,
		22.449966, 21.258848, 15.895727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058033, 21.790165, 15.313231>,  <21.793158, 21.142080, 15.683671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058033, 21.790165, 15.313231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.372639, 21.579269, 15.441862>,  <22.561403, 21.452732, 15.519040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.372639, 21.579269, 15.441862>,  <22.058033, 21.790165, 15.313231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.372639, 21.579269, 15.441862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265670, -0.181208, -0.946881,
		0.557506, 0.830169, -0.002451,
		0.786515, -0.527241, 0.321575,
		22.608593, 21.421097, 15.538335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.603889, 21.987720, 14.877581>,  <22.058033, 21.790165, 15.313231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.603889, 21.987720, 14.877581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.703590, 21.636135, 15.040205>,  <22.763411, 21.425184, 15.137780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.703590, 21.636135, 15.040205>,  <22.603889, 21.987720, 14.877581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.703590, 21.636135, 15.040205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274511, -0.338468, -0.900046,
		0.928717, 0.335946, 0.156921,
		0.249255, -0.878965, 0.406562,
		22.778366, 21.372446, 15.162173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.140484, 21.874811, 14.473422>,  <22.603889, 21.987720, 14.877581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.140484, 21.874811, 14.473422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.065536, 21.527195, 14.656578>,  <23.020569, 21.318624, 14.766472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.065536, 21.527195, 14.656578>,  <23.140484, 21.874811, 14.473422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.065536, 21.527195, 14.656578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420483, -0.492236, -0.762167,
		0.887743, 0.049730, 0.457646,
		-0.187367, -0.869040, 0.457889,
		23.009327, 21.266483, 14.793945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.684458, 21.538242, 14.319857>,  <23.140484, 21.874811, 14.473422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.684458, 21.538242, 14.319857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.441952, 21.230217, 14.399303>,  <23.296448, 21.045403, 14.446972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.441952, 21.230217, 14.399303>,  <23.684458, 21.538242, 14.319857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.441952, 21.230217, 14.399303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177187, -0.374269, -0.910235,
		0.775274, -0.516650, 0.363351,
		-0.606264, -0.770062, 0.198617,
		23.260073, 20.999199, 14.458888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.089134, 20.917545, 13.992226>,  <23.684458, 21.538242, 14.319857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.089134, 20.917545, 13.992226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.705055, 20.818180, 14.043314>,  <23.474607, 20.758562, 14.073967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.705055, 20.818180, 14.043314>,  <24.089134, 20.917545, 13.992226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.705055, 20.818180, 14.043314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018199, -0.511922, -0.858839,
		0.278729, -0.822331, 0.496067,
		-0.960197, -0.248411, 0.127722,
		23.416996, 20.743656, 14.081631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.991186, 20.164448, 13.928137>,  <24.089134, 20.917545, 13.992226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.991186, 20.164448, 13.928137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.628540, 20.314896, 13.851625>,  <23.410954, 20.405165, 13.805718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.628540, 20.314896, 13.851625>,  <23.991186, 20.164448, 13.928137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.628540, 20.314896, 13.851625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016354, -0.421645, -0.906613,
		-0.421645, -0.825076, 0.376118,
		0.906613, -0.376118, 0.191278,
		23.356556, 20.427731, 13.794242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.692070, 19.646564, 13.665105>,  <23.991186, 20.164448, 13.928137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.692070, 19.646564, 13.665105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.480759, 19.952522, 13.517670>,  <23.353971, 20.136097, 13.429209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.480759, 19.952522, 13.517670>,  <23.692070, 19.646564, 13.665105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.480759, 19.952522, 13.517670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046840, -0.407191, -0.912141,
		-0.847777, -0.499130, 0.179283,
		-0.528280, 0.764895, -0.368587,
		23.322275, 20.181992, 13.407094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.095833, 19.380480, 13.394424>,  <23.692070, 19.646564, 13.665105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.095833, 19.380480, 13.394424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.185574, 19.720810, 13.204367>,  <23.239418, 19.925009, 13.090332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.185574, 19.720810, 13.204367>,  <23.095833, 19.380480, 13.394424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.185574, 19.720810, 13.204367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024781, -0.492395, -0.870019,
		-0.974194, 0.183414, -0.131553,
		0.224350, 0.850827, -0.475143,
		23.252878, 19.976057, 13.061824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.573425, 18.941181, 13.234809>,  <23.095833, 19.380480, 13.394424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.573425, 18.941181, 13.234809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.536148, 18.546257, 13.286243>,  <22.513781, 18.309303, 13.317104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.536148, 18.546257, 13.286243>,  <22.573425, 18.941181, 13.234809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536148, 18.546257, 13.286243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472648, 0.157538, 0.867056,
		-0.876310, 0.020029, -0.481331,
		-0.093195, -0.987310, 0.128585,
		22.508190, 18.250065, 13.324819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857615, 18.862131, 13.497599>,  <22.573425, 18.941181, 13.234809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.857615, 18.862131, 13.497599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.051437, 18.532684, 13.615486>,  <22.167730, 18.335016, 13.686218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.051437, 18.532684, 13.615486>,  <21.857615, 18.862131, 13.497599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.051437, 18.532684, 13.615486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382350, 0.103612, 0.918190,
		-0.786774, -0.557600, -0.264705,
		0.484556, -0.823618, 0.294718,
		22.196804, 18.285599, 13.703901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.417961, 18.408123, 13.872114>,  <21.857615, 18.862131, 13.497599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.417961, 18.408123, 13.872114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.787388, 18.308315, 13.988571>,  <22.009045, 18.248430, 14.058445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.787388, 18.308315, 13.988571>,  <21.417961, 18.408123, 13.872114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.787388, 18.308315, 13.988571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302619, -0.008051, 0.953077,
		-0.235467, -0.968336, -0.082945,
		0.923567, -0.249519, 0.291142,
		22.064459, 18.233459, 14.075913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.271658, 17.972795, 14.472376>,  <21.417961, 18.408123, 13.872114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.271658, 17.972795, 14.472376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.656586, 18.073635, 14.513149>,  <21.887543, 18.134140, 14.537613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.656586, 18.073635, 14.513149>,  <21.271658, 17.972795, 14.472376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.656586, 18.073635, 14.513149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081261, -0.091118, 0.992519,
		0.259504, -0.963401, -0.067198,
		0.962317, 0.252102, 0.101933,
		21.945280, 18.149265, 14.543729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.476431, 17.566589, 15.048144>,  <21.271658, 17.972795, 14.472376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.476431, 17.566589, 15.048144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.767567, 17.840580, 15.035160>,  <21.942249, 18.004974, 15.027369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.767567, 17.840580, 15.035160>,  <21.476431, 17.566589, 15.048144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767567, 17.840580, 15.035160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009851, 0.036889, 0.999271,
		0.685676, -0.727629, 0.020101,
		0.727840, 0.684978, -0.032462,
		21.985918, 18.046074, 15.025421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.024881, 17.307997, 15.452120>,  <21.476431, 17.566589, 15.048144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.024881, 17.307997, 15.452120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.057384, 17.706661, 15.448935>,  <22.076887, 17.945860, 15.447023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.057384, 17.706661, 15.448935>,  <22.024881, 17.307997, 15.452120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.057384, 17.706661, 15.448935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082136, 0.001265, 0.996621,
		0.993303, -0.081638, -0.081759,
		0.081259, 0.996661, -0.007962,
		22.081762, 18.005659, 15.446546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.511530, 17.352640, 15.966613>,  <22.024881, 17.307997, 15.452120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.511530, 17.352640, 15.966613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.342541, 17.711277, 15.913486>,  <22.241146, 17.926458, 15.881611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.342541, 17.711277, 15.913486>,  <22.511530, 17.352640, 15.966613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.342541, 17.711277, 15.913486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060593, 0.118270, 0.991131,
		0.904347, 0.426775, 0.004361,
		-0.422474, 0.896591, -0.132816,
		22.215799, 17.980255, 15.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.899809, 17.867619, 16.405977>,  <22.511530, 17.352640, 15.966613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.899809, 17.867619, 16.405977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.534252, 18.007690, 16.323835>,  <22.314919, 18.091734, 16.274551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.534252, 18.007690, 16.323835>,  <22.899809, 17.867619, 16.405977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534252, 18.007690, 16.323835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108264, 0.277291, 0.954667,
		0.391250, 0.894697, -0.215502,
		-0.913894, 0.350182, -0.205354,
		22.260084, 18.112745, 16.262230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.841738, 18.286703, 17.032846>,  <22.899809, 17.867619, 16.405977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.841738, 18.286703, 17.032846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.480473, 18.269608, 16.861982>,  <22.263714, 18.259350, 16.759464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.480473, 18.269608, 16.861982>,  <22.841738, 18.286703, 17.032846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.480473, 18.269608, 16.861982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429287, 0.083924, 0.899260,
		-0.002586, 0.995555, -0.094145,
		-0.903164, -0.042741, -0.427162,
		22.209524, 18.256784, 16.733833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.567635, 18.820612, 17.304821>,  <22.841738, 18.286703, 17.032846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.567635, 18.820612, 17.304821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.288441, 18.559338, 17.187405>,  <22.120924, 18.402573, 17.116955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.288441, 18.559338, 17.187405>,  <22.567635, 18.820612, 17.304821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.288441, 18.559338, 17.187405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458899, 0.093295, 0.883577,
		-0.549752, 0.751430, -0.364864,
		-0.697986, -0.653184, -0.293542,
		22.079044, 18.363382, 17.099342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.856649, 19.142160, 17.309769>,  <22.567635, 18.820612, 17.304821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.856649, 19.142160, 17.309769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.775539, 18.752350, 17.348093>,  <21.726873, 18.518463, 17.371088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.775539, 18.752350, 17.348093>,  <21.856649, 19.142160, 17.309769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775539, 18.752350, 17.348093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558906, 0.195520, 0.805851,
		-0.804057, 0.109858, -0.584315,
		-0.202775, -0.974527, 0.095809,
		21.714706, 18.459991, 17.376835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102549, 19.087196, 17.273691>,  <21.856649, 19.142160, 17.309769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102549, 19.087196, 17.273691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.223492, 18.744820, 17.441475>,  <21.296059, 18.539394, 17.542145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.223492, 18.744820, 17.441475>,  <21.102549, 19.087196, 17.273691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.223492, 18.744820, 17.441475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697485, 0.101264, 0.709409,
		-0.649688, -0.507061, -0.566388,
		0.302359, -0.855941, 0.419457,
		21.314199, 18.488037, 17.567312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474131, 18.712740, 17.434477>,  <21.102549, 19.087196, 17.273691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474131, 18.712740, 17.434477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.746380, 18.537525, 17.669382>,  <20.909729, 18.432396, 17.810326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.746380, 18.537525, 17.669382>,  <20.474131, 18.712740, 17.434477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.746380, 18.537525, 17.669382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545459, 0.232157, 0.805343,
		-0.489106, -0.868463, -0.080919,
		0.680624, -0.438036, 0.587261,
		20.950567, 18.406115, 17.845560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.182236, 18.129009, 17.846893>,  <20.474131, 18.712740, 17.434477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.182236, 18.129009, 17.846893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.506180, 18.261040, 18.040873>,  <20.700546, 18.340258, 18.157261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.506180, 18.261040, 18.040873>,  <20.182236, 18.129009, 17.846893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506180, 18.261040, 18.040873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534118, 0.073057, 0.842247,
		0.242577, -0.941123, 0.235465,
		0.809861, 0.330077, 0.484949,
		20.749138, 18.360062, 18.186357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175535, 17.385698, 18.114002>,  <20.182236, 18.129009, 17.846893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175535, 17.385698, 18.114002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.877453, 17.142113, 18.005314>,  <19.698603, 16.995962, 17.940102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.877453, 17.142113, 18.005314>,  <20.175535, 17.385698, 18.114002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877453, 17.142113, 18.005314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593386, -0.419664, -0.686859,
		0.304240, -0.673087, 0.674086,
		-0.745205, -0.608963, -0.271721,
		19.653891, 16.959423, 17.923798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.506584, 16.806971, 18.005638>,  <20.175535, 17.385698, 18.114002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.506584, 16.806971, 18.005638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.153404, 16.714527, 17.842182>,  <19.941496, 16.659061, 17.744108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.153404, 16.714527, 17.842182>,  <20.506584, 16.806971, 18.005638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.153404, 16.714527, 17.842182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453356, -0.645799, -0.614339,
		-0.121921, -0.727691, 0.674983,
		-0.882952, -0.231107, -0.408639,
		19.888519, 16.645195, 17.719591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460775, 16.109858, 17.836073>,  <20.506584, 16.806971, 18.005638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460775, 16.109858, 17.836073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.166245, 16.256901, 17.608850>,  <19.989527, 16.345127, 17.472517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.166245, 16.256901, 17.608850>,  <20.460775, 16.109858, 17.836073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166245, 16.256901, 17.608850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376653, -0.474753, -0.795451,
		-0.562101, -0.799672, 0.211112,
		-0.736325, 0.367608, -0.568058,
		19.945347, 16.367182, 17.438433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056530, 15.586837, 17.589649>,  <20.460775, 16.109858, 17.836073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056530, 15.586837, 17.589649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.006668, 15.892445, 17.336433>,  <19.976751, 16.075809, 17.184504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.006668, 15.892445, 17.336433>,  <20.056530, 15.586837, 17.589649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006668, 15.892445, 17.336433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279937, -0.585013, -0.761180,
		-0.951891, -0.272095, -0.140953,
		-0.124653, 0.764018, -0.633038,
		19.969273, 16.121651, 17.146523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.851536, 15.303689, 16.969292>,  <20.056530, 15.586837, 17.589649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.851536, 15.303689, 16.969292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.946548, 15.657936, 16.809662>,  <20.003555, 15.870484, 16.713884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.946548, 15.657936, 16.809662>,  <19.851536, 15.303689, 16.969292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946548, 15.657936, 16.809662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402948, -0.463651, -0.789088,
		-0.883862, 0.026625, -0.466989,
		0.237530, 0.885618, -0.399075,
		20.017807, 15.923621, 16.689939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735285, 15.146688, 16.312977>,  <19.851536, 15.303689, 16.969292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735285, 15.146688, 16.312977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.946091, 15.486507, 16.322084>,  <20.072575, 15.690399, 16.327549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.946091, 15.486507, 16.322084>,  <19.735285, 15.146688, 16.312977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946091, 15.486507, 16.322084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463695, -0.264993, -0.845438,
		-0.712208, 0.456119, -0.533588,
		0.527017, 0.849550, 0.022770,
		20.104197, 15.741372, 16.328915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501392, 15.680539, 15.778666>,  <19.735285, 15.146688, 16.312977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501392, 15.680539, 15.778666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.889996, 15.724327, 15.862755>,  <20.123158, 15.750600, 15.913208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.889996, 15.724327, 15.862755>,  <19.501392, 15.680539, 15.778666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.889996, 15.724327, 15.862755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231530, -0.248610, -0.940525,
		-0.050697, 0.962398, -0.266872,
		0.971506, 0.109471, 0.210220,
		20.181448, 15.757169, 15.925820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667368, 15.984906, 15.250384>,  <19.501392, 15.680539, 15.778666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667368, 15.984906, 15.250384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.997555, 15.834057, 15.418377>,  <20.195667, 15.743547, 15.519173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.997555, 15.834057, 15.418377>,  <19.667368, 15.984906, 15.250384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997555, 15.834057, 15.418377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359214, -0.222953, -0.906232,
		0.435398, 0.898927, -0.048572,
		0.825466, -0.377124, 0.419981,
		20.245195, 15.720920, 15.544371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198561, 16.205326, 14.912285>,  <19.667368, 15.984906, 15.250384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.198561, 16.205326, 14.912285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.371731, 15.890911, 15.088795>,  <20.475634, 15.702263, 15.194701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.371731, 15.890911, 15.088795>,  <20.198561, 16.205326, 14.912285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371731, 15.890911, 15.088795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437929, -0.244480, -0.865129,
		0.787905, 0.567783, 0.238386,
		0.432925, -0.786036, 0.441276,
		20.501608, 15.655101, 15.221177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864132, 16.234917, 14.650002>,  <20.198561, 16.205326, 14.912285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864132, 16.234917, 14.650002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.851505, 15.871998, 14.817724>,  <20.843929, 15.654246, 14.918358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.851505, 15.871998, 14.817724>,  <20.864132, 16.234917, 14.650002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.851505, 15.871998, 14.817724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450497, -0.387402, -0.804346,
		0.892220, 0.163505, 0.420963,
		-0.031568, -0.907296, 0.419306,
		20.842035, 15.599809, 14.943516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.602070, 15.945664, 14.620667>,  <20.864132, 16.234917, 14.650002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.602070, 15.945664, 14.620667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.322124, 15.662216, 14.656555>,  <21.154158, 15.492147, 14.678088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.322124, 15.662216, 14.656555>,  <21.602070, 15.945664, 14.620667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322124, 15.662216, 14.656555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363261, -0.461262, -0.809493,
		0.615009, -0.533941, 0.580234,
		-0.699861, -0.708622, 0.089721,
		21.112165, 15.449630, 14.683472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.899361, 15.328688, 14.285826>,  <21.602070, 15.945664, 14.620667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.899361, 15.328688, 14.285826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.504406, 15.266277, 14.275063>,  <21.267433, 15.228831, 14.268605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.504406, 15.266277, 14.275063>,  <21.899361, 15.328688, 14.285826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504406, 15.266277, 14.275063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089526, -0.410021, -0.907672,
		0.130588, -0.898632, 0.418818,
		-0.987387, -0.156026, -0.026907,
		21.208191, 15.219470, 14.266991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796873, 14.549444, 14.106545>,  <21.899361, 15.328688, 14.285826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796873, 14.549444, 14.106545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.461533, 14.745201, 14.010492>,  <21.260328, 14.862655, 13.952861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.461533, 14.745201, 14.010492>,  <21.796873, 14.549444, 14.106545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.461533, 14.745201, 14.010492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014880, -0.419798, -0.907495,
		-0.544927, -0.764373, 0.344656,
		-0.838351, 0.489391, -0.240133,
		21.210028, 14.892018, 13.938453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.622576, 14.087555, 13.550566>,  <21.796873, 14.549444, 14.106545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.622576, 14.087555, 13.550566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.371853, 14.394100, 13.494280>,  <21.221418, 14.578027, 13.460508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.371853, 14.394100, 13.494280>,  <21.622576, 14.087555, 13.550566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.371853, 14.394100, 13.494280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176439, -0.315508, -0.932375,
		-0.758934, -0.559592, 0.332979,
		-0.626808, 0.766362, -0.140716,
		21.183811, 14.624009, 13.452065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.626305, 16.981949, 16.224632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.903800, 17.231758, 16.368128>,  <16.070297, 17.381643, 16.454226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.903800, 17.231758, 16.368128>,  <15.626305, 16.981949, 16.224632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903800, 17.231758, 16.368128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355683, -0.136037, 0.924653,
		0.626271, -0.769066, 0.127759,
		0.693739, 0.624525, 0.358739,
		16.111921, 17.419115, 16.475750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580774, 16.825422, 16.915367>,  <15.626305, 16.981949, 16.224632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580774, 16.825422, 16.915367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.778096, 17.173046, 16.900473>,  <15.896489, 17.381620, 16.891537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.778096, 17.173046, 16.900473>,  <15.580774, 16.825422, 16.915367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778096, 17.173046, 16.900473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234267, 0.173958, 0.956482,
		0.837716, -0.463114, 0.289407,
		0.493305, 0.869059, -0.037235,
		15.926087, 17.433764, 16.889301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899386, 16.910637, 17.550398>,  <15.580774, 16.825422, 16.915367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899386, 16.910637, 17.550398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.908048, 17.287952, 17.417894>,  <15.913244, 17.514341, 17.338392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.908048, 17.287952, 17.417894>,  <15.899386, 16.910637, 17.550398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.908048, 17.287952, 17.417894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103667, 0.331670, 0.937682,
		0.994376, 0.014036, 0.104970,
		0.021654, 0.943291, -0.331260,
		15.914544, 17.570940, 17.318516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424625, 17.255049, 17.972174>,  <15.899386, 16.910637, 17.550398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424625, 17.255049, 17.972174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.160919, 17.536228, 17.865412>,  <16.002695, 17.704935, 17.801355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.160919, 17.536228, 17.865412>,  <16.424625, 17.255049, 17.972174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160919, 17.536228, 17.865412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252752, 0.127132, 0.959142,
		0.708158, 0.699788, 0.093858,
		-0.659264, 0.702947, -0.266903,
		15.963140, 17.747112, 17.785341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430035, 17.949949, 18.363331>,  <16.424625, 17.255049, 17.972174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430035, 17.949949, 18.363331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.068371, 17.992245, 18.197769>,  <15.851373, 18.017622, 18.098433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.068371, 17.992245, 18.197769>,  <16.430035, 17.949949, 18.363331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068371, 17.992245, 18.197769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371384, 0.284257, 0.883896,
		0.211116, 0.952899, -0.217744,
		-0.904159, 0.105738, -0.413903,
		15.797123, 18.023966, 18.073599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069695, 18.510771, 18.767994>,  <16.430035, 17.949949, 18.363331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.069695, 18.510771, 18.767994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.770015, 18.293995, 18.615677>,  <15.590207, 18.163929, 18.524286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.770015, 18.293995, 18.615677>,  <16.069695, 18.510771, 18.767994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770015, 18.293995, 18.615677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546895, 0.181836, 0.817216,
		-0.373640, 0.820510, -0.432615,
		-0.749199, -0.541940, -0.380792,
		15.545255, 18.131413, 18.501440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435737, 18.891073, 18.937815>,  <16.069695, 18.510771, 18.767994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435737, 18.891073, 18.937815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.333632, 18.512001, 18.861145>,  <15.272369, 18.284557, 18.815144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.333632, 18.512001, 18.861145>,  <15.435737, 18.891073, 18.937815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333632, 18.512001, 18.861145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573946, -0.011018, 0.818819,
		-0.778092, 0.319025, -0.541106,
		-0.255261, -0.947682, -0.191676,
		15.257054, 18.227695, 18.803642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747983, 18.889275, 18.926052>,  <15.435737, 18.891073, 18.937815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747983, 18.889275, 18.926052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.865636, 18.517136, 19.013632>,  <14.936228, 18.293852, 19.066179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.865636, 18.517136, 19.013632>,  <14.747983, 18.889275, 18.926052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865636, 18.517136, 19.013632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318705, 0.120500, 0.940163,
		-0.901062, -0.346312, -0.261064,
		0.294131, -0.930348, 0.218949,
		14.953876, 18.238031, 19.079317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250267, 18.583107, 19.329845>,  <14.747983, 18.889275, 18.926052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250267, 18.583107, 19.329845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.564198, 18.345119, 19.399189>,  <14.752558, 18.202326, 19.440796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.564198, 18.345119, 19.399189>,  <14.250267, 18.583107, 19.329845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564198, 18.345119, 19.399189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133789, 0.110471, 0.984833,
		-0.605099, -0.796119, 0.007100,
		0.784828, -0.594971, 0.173358,
		14.799647, 18.166628, 19.451197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992640, 18.164858, 19.809353>,  <14.250267, 18.583107, 19.329845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992640, 18.164858, 19.809353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.389483, 18.138889, 19.852253>,  <14.627590, 18.123308, 19.877993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.389483, 18.138889, 19.852253>,  <13.992640, 18.164858, 19.809353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.389483, 18.138889, 19.852253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101652, 0.084157, 0.991254,
		-0.073382, -0.994335, 0.076893,
		0.992109, -0.064923, 0.107252,
		14.687117, 18.119411, 19.884428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.048157, 17.626467, 20.199282>,  <13.992640, 18.164858, 19.809353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.048157, 17.626467, 20.199282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.347732, 17.887840, 20.243317>,  <14.527476, 18.044664, 20.269737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.347732, 17.887840, 20.243317>,  <14.048157, 17.626467, 20.199282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.347732, 17.887840, 20.243317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121074, -0.028396, 0.992237,
		0.651486, -0.756452, 0.057847,
		0.748937, 0.653433, 0.110086,
		14.572412, 18.083870, 20.276342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467282, 17.445000, 20.661278>,  <14.048157, 17.626467, 20.199282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.467282, 17.445000, 20.661278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.569268, 17.831718, 20.654373>,  <14.630460, 18.063749, 20.650230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.569268, 17.831718, 20.654373>,  <14.467282, 17.445000, 20.661278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.569268, 17.831718, 20.654373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071116, -0.000943, 0.997468,
		0.964332, -0.255546, -0.068995,
		0.254964, 0.966797, -0.017264,
		14.645758, 18.121758, 20.649195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.029143, 17.415100, 21.103308>,  <14.467282, 17.445000, 20.661278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.029143, 17.415100, 21.103308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.852710, 17.773647, 21.085541>,  <14.746849, 17.988775, 21.074881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.852710, 17.773647, 21.085541>,  <15.029143, 17.415100, 21.103308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.852710, 17.773647, 21.085541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267527, 0.178566, 0.946860,
		0.856664, 0.405762, -0.318565,
		-0.441085, 0.896366, -0.044419,
		14.720385, 18.042557, 21.072216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.408824, 17.649210, 21.709276>,  <15.029143, 17.415100, 21.103308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.408824, 17.649210, 21.709276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.224563, 17.850800, 21.417028>,  <15.114006, 17.971754, 21.241680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.224563, 17.850800, 21.417028>,  <15.408824, 17.649210, 21.709276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.224563, 17.850800, 21.417028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516197, -0.821753, -0.241378,
		-0.722038, 0.265952, 0.638694,
		-0.460654, 0.503976, -0.730621,
		15.086367, 18.001993, 21.197842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689979, 18.301529, 21.840109>,  <15.408824, 17.649210, 21.709276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689979, 18.301529, 21.840109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.991632, 18.233826, 22.093924>,  <16.172623, 18.193205, 22.246212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.991632, 18.233826, 22.093924>,  <15.689979, 18.301529, 21.840109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.991632, 18.233826, 22.093924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605759, -0.193920, -0.771655,
		0.253657, 0.966306, -0.043712,
		0.754132, -0.169257, 0.634537,
		16.217871, 18.183048, 22.284285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230093, 18.736292, 21.600700>,  <15.689979, 18.301529, 21.840109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230093, 18.736292, 21.600700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.421265, 18.472012, 21.832237>,  <16.535967, 18.313444, 21.971159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.421265, 18.472012, 21.832237>,  <16.230093, 18.736292, 21.600700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421265, 18.472012, 21.832237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655262, -0.170697, -0.735862,
		0.584991, 0.730983, 0.351352,
		0.477929, -0.660701, 0.578842,
		16.564644, 18.273802, 22.005890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901514, 18.860661, 21.547285>,  <16.230093, 18.736292, 21.600700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901514, 18.860661, 21.547285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.888115, 18.479939, 21.669235>,  <16.880075, 18.251505, 21.742405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.888115, 18.479939, 21.669235>,  <16.901514, 18.860661, 21.547285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888115, 18.479939, 21.669235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651452, -0.252135, -0.715568,
		0.757950, 0.174642, 0.628500,
		-0.033499, -0.951803, 0.304876,
		16.878065, 18.194397, 21.760698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529211, 18.725609, 21.575191>,  <16.901514, 18.860661, 21.547285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529211, 18.725609, 21.575191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.318897, 18.387207, 21.539806>,  <17.192709, 18.184166, 21.518576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.318897, 18.387207, 21.539806>,  <17.529211, 18.725609, 21.575191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318897, 18.387207, 21.539806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569100, -0.272571, -0.775777,
		0.632201, -0.458233, 0.624775,
		-0.525782, -0.846007, -0.088461,
		17.161163, 18.133406, 21.513268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079967, 18.315424, 21.470774>,  <17.529211, 18.725609, 21.575191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.079967, 18.315424, 21.470774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.770340, 18.091068, 21.353323>,  <17.584562, 17.956455, 21.282852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.770340, 18.091068, 21.353323>,  <18.079967, 18.315424, 21.470774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770340, 18.091068, 21.353323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574839, -0.428333, -0.697202,
		0.265284, -0.708472, 0.653982,
		-0.774070, -0.560891, -0.293627,
		17.538118, 17.922802, 21.265234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292261, 17.589151, 21.397455>,  <18.079967, 18.315424, 21.470774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292261, 17.589151, 21.397455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.972649, 17.636406, 21.161629>,  <17.780880, 17.664759, 21.020132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.972649, 17.636406, 21.161629>,  <18.292261, 17.589151, 21.397455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972649, 17.636406, 21.161629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469433, -0.490148, -0.734430,
		-0.375737, -0.863597, 0.336188,
		-0.799033, 0.118135, -0.589568,
		17.732939, 17.671846, 20.984758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380945, 17.090975, 21.033966>,  <18.292261, 17.589151, 21.397455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380945, 17.090975, 21.033966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.096481, 17.279102, 20.824947>,  <17.925804, 17.391979, 20.699535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.096481, 17.279102, 20.824947>,  <18.380945, 17.090975, 21.033966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096481, 17.279102, 20.824947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364688, -0.388661, -0.846136,
		-0.601047, -0.792302, 0.104879,
		-0.711158, 0.470319, -0.522546,
		17.883133, 17.420198, 20.668184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.105295, 16.557220, 20.561119>,  <18.380945, 17.090975, 21.033966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.105295, 16.557220, 20.561119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.008244, 16.902687, 20.384388>,  <17.950012, 17.109966, 20.278349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.008244, 16.902687, 20.384388>,  <18.105295, 16.557220, 20.561119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008244, 16.902687, 20.384388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366686, -0.340005, -0.865989,
		-0.898149, -0.372128, -0.234198,
		-0.242630, 0.863665, -0.441830,
		17.935455, 17.161787, 20.251839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809465, 16.405767, 19.849794>,  <18.105295, 16.557220, 20.561119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.809465, 16.405767, 19.849794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.907764, 16.791748, 19.812973>,  <17.966743, 17.023336, 19.790880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.907764, 16.791748, 19.812973>,  <17.809465, 16.405767, 19.849794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.907764, 16.791748, 19.812973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239549, -0.152479, -0.958836,
		-0.939268, 0.213582, -0.268625,
		0.245750, 0.964952, -0.092055,
		17.981489, 17.081234, 19.785357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605597, 16.618187, 19.219305>,  <17.809465, 16.405767, 19.849794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.605597, 16.618187, 19.219305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.896191, 16.876766, 19.312534>,  <18.070547, 17.031914, 19.368471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.896191, 16.876766, 19.312534>,  <17.605597, 16.618187, 19.219305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896191, 16.876766, 19.312534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370094, -0.082288, -0.925343,
		-0.579007, 0.758507, -0.299028,
		0.726485, 0.646449, 0.233074,
		18.114136, 17.070702, 19.382456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.654154, 17.047918, 18.650753>,  <17.605597, 16.618187, 19.219305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.654154, 17.047918, 18.650753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.012234, 17.101608, 18.820744>,  <18.227081, 17.133821, 18.922737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.012234, 17.101608, 18.820744>,  <17.654154, 17.047918, 18.650753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012234, 17.101608, 18.820744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440361, -0.119678, -0.889809,
		-0.068573, 0.983697, -0.166243,
		0.895198, 0.134224, 0.424975,
		18.280794, 17.141876, 18.948236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092663, 17.414494, 18.108618>,  <17.654154, 17.047918, 18.650753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092663, 17.414494, 18.108618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.369907, 17.324390, 18.382511>,  <18.536253, 17.270329, 18.546846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.369907, 17.324390, 18.382511>,  <18.092663, 17.414494, 18.108618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369907, 17.324390, 18.382511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642047, -0.238897, -0.728494,
		0.327680, 0.944556, -0.020956,
		0.693110, -0.225258, 0.684732,
		18.577841, 17.256813, 18.587931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.779095, 17.713369, 17.958578>,  <18.092663, 17.414494, 18.108618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.779095, 17.713369, 17.958578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.855621, 17.386326, 18.175804>,  <18.901537, 17.190100, 18.306139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.855621, 17.386326, 18.175804>,  <18.779095, 17.713369, 17.958578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855621, 17.386326, 18.175804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694523, -0.278196, -0.663509,
		0.693567, 0.504109, 0.514624,
		0.191315, -0.817607, 0.543063,
		18.913015, 17.141045, 18.338722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.569145, 17.787378, 18.053732>,  <18.779095, 17.713369, 17.958578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.569145, 17.787378, 18.053732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.418835, 17.419685, 18.100731>,  <19.328648, 17.199070, 18.128929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.418835, 17.419685, 18.100731>,  <19.569145, 17.787378, 18.053732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.418835, 17.419685, 18.100731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651780, -0.352290, -0.671621,
		0.658768, -0.175799, 0.731519,
		-0.375777, -0.919231, 0.117495,
		19.306101, 17.143915, 18.135979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978128, 18.029360, 18.614544>,  <19.569145, 17.787378, 18.053732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978128, 18.029360, 18.614544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.308266, 18.254322, 18.634600>,  <20.506348, 18.389299, 18.646633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.308266, 18.254322, 18.634600>,  <19.978128, 18.029360, 18.614544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308266, 18.254322, 18.634600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233912, 0.259742, 0.936920,
		0.513905, -0.785007, 0.345929,
		0.825341, 0.562404, 0.050140,
		20.555868, 18.423042, 18.649641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.380297, 17.980757, 19.315500>,  <19.978128, 18.029360, 18.614544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.380297, 17.980757, 19.315500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.501823, 18.327721, 19.157869>,  <20.574739, 18.535900, 19.063292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.501823, 18.327721, 19.157869>,  <20.380297, 17.980757, 19.315500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501823, 18.327721, 19.157869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184515, 0.459366, 0.868871,
		0.934693, -0.191264, 0.299612,
		0.303815, 0.867410, -0.394075,
		20.592968, 18.587944, 19.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726181, 18.335524, 19.849384>,  <20.380297, 17.980757, 19.315500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726181, 18.335524, 19.849384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.617012, 18.620155, 19.590412>,  <20.551510, 18.790936, 19.435030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.617012, 18.620155, 19.590412>,  <20.726181, 18.335524, 19.849384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617012, 18.620155, 19.590412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220930, 0.608632, 0.762074,
		0.936324, 0.351025, -0.008901,
		-0.272925, 0.711582, -0.647429,
		20.535135, 18.833630, 19.396183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.125973, 18.941332, 20.021858>,  <20.726181, 18.335524, 19.849384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.125973, 18.941332, 20.021858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.791645, 19.064877, 19.840305>,  <20.591049, 19.139004, 19.731373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.791645, 19.064877, 19.840305>,  <21.125973, 18.941332, 20.021858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791645, 19.064877, 19.840305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240299, 0.537520, 0.808287,
		0.493621, 0.784650, -0.375050,
		-0.835820, 0.308864, -0.453882,
		20.540899, 19.157536, 19.704142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.130009, 19.637321, 20.262520>,  <21.125973, 18.941332, 20.021858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.130009, 19.637321, 20.262520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.765762, 19.567986, 20.112463>,  <20.547215, 19.526384, 20.022429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.765762, 19.567986, 20.112463>,  <21.130009, 19.637321, 20.262520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765762, 19.567986, 20.112463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401169, 0.588721, 0.701763,
		0.099209, 0.789532, -0.605638,
		-0.910616, -0.173342, -0.375142,
		20.492579, 19.515984, 19.999920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.713987, 20.363598, 20.173847>,  <21.130009, 19.637321, 20.262520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.713987, 20.363598, 20.173847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.442047, 20.071960, 20.205402>,  <20.278883, 19.896976, 20.224335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.442047, 20.071960, 20.205402>,  <20.713987, 20.363598, 20.173847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.442047, 20.071960, 20.205402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560721, 0.586126, 0.584849,
		-0.472648, 0.353376, -0.807297,
		-0.679850, -0.729096, 0.078886,
		20.238092, 19.853231, 20.229069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089920, 20.777798, 20.258635>,  <20.713987, 20.363598, 20.173847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089920, 20.777798, 20.258635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.991253, 20.408913, 20.377750>,  <19.932053, 20.187582, 20.449219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.991253, 20.408913, 20.377750>,  <20.089920, 20.777798, 20.258635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.991253, 20.408913, 20.377750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627411, 0.386161, 0.676192,
		-0.738587, -0.020042, -0.673860,
		-0.246666, -0.922214, 0.297788,
		19.917253, 20.132248, 20.467087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622019, 21.402462, 19.935698>,  <20.089920, 20.777798, 20.258635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622019, 21.402462, 19.935698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.903294, 21.682106, 19.987499>,  <20.072058, 21.849894, 20.018579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.903294, 21.682106, 19.987499>,  <19.622019, 21.402462, 19.935698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903294, 21.682106, 19.987499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523579, -0.385933, -0.759553,
		-0.481032, 0.601913, -0.637423,
		0.703187, 0.699111, 0.129503,
		20.114250, 21.891840, 20.026350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.832710, 21.509218, 19.298473>,  <19.622019, 21.402462, 19.935698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.832710, 21.509218, 19.298473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.110008, 21.726944, 19.487421>,  <20.276386, 21.857580, 19.600790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.110008, 21.726944, 19.487421>,  <19.832710, 21.509218, 19.298473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.110008, 21.726944, 19.487421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642562, -0.169986, -0.747140,
		-0.326384, 0.821478, -0.467598,
		0.693244, 0.544316, 0.472370,
		20.317982, 21.890238, 19.629131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094074, 21.948257, 18.844023>,  <19.832710, 21.509218, 19.298473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094074, 21.948257, 18.844023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.382496, 21.934196, 19.120817>,  <20.555550, 21.925760, 19.286894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.382496, 21.934196, 19.120817>,  <20.094074, 21.948257, 18.844023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382496, 21.934196, 19.120817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683610, -0.126701, -0.718765,
		0.112941, 0.991318, -0.067328,
		0.721056, -0.035152, 0.691985,
		20.598812, 21.923651, 19.328413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.487246, 22.509462, 18.726213>,  <20.094074, 21.948257, 18.844023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.487246, 22.509462, 18.726213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.727310, 22.265022, 18.932655>,  <20.871349, 22.118359, 19.056520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.727310, 22.265022, 18.932655>,  <20.487246, 22.509462, 18.726213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727310, 22.265022, 18.932655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716560, 0.124023, -0.686411,
		0.355457, 0.781777, 0.512323,
		0.600161, -0.611099, 0.516106,
		20.907358, 22.081692, 19.087486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259079, 22.751490, 18.631432>,  <20.487246, 22.509462, 18.726213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259079, 22.751490, 18.631432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.289440, 22.376247, 18.766605>,  <21.307657, 22.151102, 18.847710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.289440, 22.376247, 18.766605>,  <21.259079, 22.751490, 18.631432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.289440, 22.376247, 18.766605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863101, -0.107895, -0.493370,
		0.499294, 0.329118, 0.801490,
		0.075901, -0.938104, 0.337934,
		21.312210, 22.094816, 18.867985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.921576, 22.717422, 18.834414>,  <21.259079, 22.751490, 18.631432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.921576, 22.717422, 18.834414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.808132, 22.340328, 18.764196>,  <21.740067, 22.114071, 18.722067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.808132, 22.340328, 18.764196>,  <21.921576, 22.717422, 18.834414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.808132, 22.340328, 18.764196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737837, -0.097604, -0.667885,
		0.612505, -0.318940, 0.723267,
		-0.283609, -0.942736, -0.175543,
		21.723049, 22.057507, 18.711535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.450596, 22.340944, 18.698139>,  <21.921576, 22.717422, 18.834414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.450596, 22.340944, 18.698139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.163235, 22.122643, 18.525608>,  <21.990818, 21.991661, 18.422089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.163235, 22.122643, 18.525608>,  <22.450596, 22.340944, 18.698139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.163235, 22.122643, 18.525608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572407, -0.111452, -0.812360,
		0.395279, -0.830499, 0.392462,
		-0.718405, -0.545757, -0.431328,
		21.947714, 21.958916, 18.396210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<16.201569, 21.387260, 20.549700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.136604, 21.001480, 20.633085>,  <16.097626, 20.770012, 20.683117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.136604, 21.001480, 20.633085>,  <16.201569, 21.387260, 20.549700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136604, 21.001480, 20.633085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294112, -0.248984, -0.922770,
		0.941871, -0.088554, 0.324094,
		-0.162409, -0.964451, 0.208466,
		16.087881, 20.712145, 20.695625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817200, 20.951841, 20.352695>,  <16.201569, 21.387260, 20.549700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817200, 20.951841, 20.352695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.491150, 20.723133, 20.315489>,  <16.295521, 20.585907, 20.293165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.491150, 20.723133, 20.315489>,  <16.817200, 20.951841, 20.352695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491150, 20.723133, 20.315489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257660, -0.214039, -0.942230,
		0.518833, -0.791999, 0.321791,
		-0.815122, -0.571773, -0.093016,
		16.246613, 20.551601, 20.287584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988218, 20.504791, 19.920847>,  <16.817200, 20.951841, 20.352695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.988218, 20.504791, 19.920847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.595520, 20.437981, 19.884455>,  <16.359901, 20.397894, 19.862619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.595520, 20.437981, 19.884455>,  <16.988218, 20.504791, 19.920847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595520, 20.437981, 19.884455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128465, -0.229575, -0.964776,
		0.140259, -0.958852, 0.246842,
		-0.981745, -0.167029, -0.090979,
		16.300997, 20.387873, 19.857161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868069, 19.966980, 19.475580>,  <16.988218, 20.504791, 19.920847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868069, 19.966980, 19.475580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.509678, 20.140808, 19.438982>,  <16.294643, 20.245106, 19.417023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.509678, 20.140808, 19.438982>,  <16.868069, 19.966980, 19.475580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509678, 20.140808, 19.438982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056190, -0.093432, -0.994039,
		-0.440529, -0.895778, 0.059295,
		-0.895978, 0.434571, -0.091494,
		16.240885, 20.271179, 19.411533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544252, 19.554384, 19.004690>,  <16.868069, 19.966980, 19.475580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544252, 19.554384, 19.004690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.336040, 19.895565, 18.989067>,  <16.211113, 20.100273, 18.979694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.336040, 19.895565, 18.989067>,  <16.544252, 19.554384, 19.004690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.336040, 19.895565, 18.989067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025337, -0.030291, -0.999220,
		-0.853468, -0.521113, -0.005844,
		-0.520529, 0.852950, -0.039056,
		16.179882, 20.151449, 18.977350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948722, 19.408903, 18.591024>,  <16.544252, 19.554384, 19.004690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.948722, 19.408903, 18.591024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.955274, 19.808475, 18.573753>,  <15.959205, 20.048220, 18.563391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.955274, 19.808475, 18.573753>,  <15.948722, 19.408903, 18.591024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955274, 19.808475, 18.573753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041459, -0.042466, -0.998237,
		-0.999006, 0.018142, 0.040719,
		0.016380, 0.998933, -0.043175,
		15.960188, 20.108156, 18.560801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443295, 19.621647, 18.095852>,  <15.948722, 19.408903, 18.591024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443295, 19.621647, 18.095852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.696826, 19.929527, 18.126385>,  <15.848945, 20.114256, 18.144705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.696826, 19.929527, 18.126385>,  <15.443295, 19.621647, 18.095852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.696826, 19.929527, 18.126385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073838, 0.038026, -0.996545,
		-0.769942, 0.637273, -0.032731,
		0.633827, 0.769699, 0.076333,
		15.886974, 20.160437, 18.149284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239513, 20.105722, 17.595400>,  <15.443295, 19.621647, 18.095852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239513, 20.105722, 17.595400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.612821, 20.231205, 17.665371>,  <15.836804, 20.306496, 17.707354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.612821, 20.231205, 17.665371>,  <15.239513, 20.105722, 17.595400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612821, 20.231205, 17.665371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115685, 0.198531, -0.973243,
		-0.340042, 0.928533, 0.148991,
		0.933268, 0.313707, 0.174927,
		15.892801, 20.325317, 17.717850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303974, 20.664406, 17.251120>,  <15.239513, 20.105722, 17.595400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303974, 20.664406, 17.251120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.688054, 20.563927, 17.299969>,  <15.918502, 20.503639, 17.329279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.688054, 20.563927, 17.299969>,  <15.303974, 20.664406, 17.251120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.688054, 20.563927, 17.299969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187888, 0.257380, -0.947868,
		0.206670, 0.933089, 0.294334,
		0.960201, -0.251198, 0.122123,
		15.976114, 20.488567, 17.336605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694147, 21.227562, 17.006001>,  <15.303974, 20.664406, 17.251120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694147, 21.227562, 17.006001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.953807, 20.923939, 16.986238>,  <16.109602, 20.741766, 16.974380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.953807, 20.923939, 16.986238>,  <15.694147, 21.227562, 17.006001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953807, 20.923939, 16.986238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300349, 0.315451, -0.900156,
		0.698854, 0.569496, 0.432756,
		0.649148, -0.759056, -0.049407,
		16.148552, 20.696222, 16.971416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327755, 21.471630, 16.733301>,  <15.694147, 21.227562, 17.006001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327755, 21.471630, 16.733301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.383381, 21.082462, 16.659451>,  <16.416758, 20.848961, 16.615141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.383381, 21.082462, 16.659451>,  <16.327755, 21.471630, 16.733301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383381, 21.082462, 16.659451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381683, 0.224693, -0.896566,
		0.913771, 0.054214, 0.402595,
		0.139066, -0.972920, -0.184625,
		16.425100, 20.790586, 16.604063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.994837, 21.474640, 16.483040>,  <16.327755, 21.471630, 16.733301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.994837, 21.474640, 16.483040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.835365, 21.122566, 16.380018>,  <16.739683, 20.911322, 16.318205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.835365, 21.122566, 16.380018>,  <16.994837, 21.474640, 16.483040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.835365, 21.122566, 16.380018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429698, 0.068823, -0.900346,
		0.810196, -0.469617, 0.350775,
		-0.398677, -0.880184, -0.257554,
		16.715763, 20.858511, 16.302752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704037, 21.663940, 16.646288>,  <16.994837, 21.474640, 16.483040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704037, 21.663940, 16.646288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.909019, 22.006493, 16.620995>,  <18.032009, 22.212025, 16.605818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.909019, 22.006493, 16.620995>,  <17.704037, 21.663940, 16.646288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.909019, 22.006493, 16.620995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245504, 0.216676, 0.944870,
		0.822870, -0.468681, 0.321282,
		0.512457, 0.856382, -0.063233,
		18.062756, 22.263407, 16.602024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256363, 21.620235, 17.208967>,  <17.704037, 21.663940, 16.646288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256363, 21.620235, 17.208967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.190651, 21.996380, 17.089815>,  <18.151224, 22.222067, 17.018324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.190651, 21.996380, 17.089815>,  <18.256363, 21.620235, 17.208967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.190651, 21.996380, 17.089815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264945, 0.248821, 0.931607,
		0.950167, 0.231965, 0.208268,
		-0.164279, 0.940362, -0.297879,
		18.141367, 22.278488, 17.000452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576355, 22.048788, 17.734753>,  <18.256363, 21.620235, 17.208967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576355, 22.048788, 17.734753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.360203, 22.322300, 17.538618>,  <18.230511, 22.486408, 17.420937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.360203, 22.322300, 17.538618>,  <18.576355, 22.048788, 17.734753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360203, 22.322300, 17.538618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123809, 0.511791, 0.850142,
		0.832262, 0.520109, -0.191905,
		-0.540381, 0.683781, -0.490338,
		18.198088, 22.527433, 17.391516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860712, 22.618254, 17.985220>,  <18.576355, 22.048788, 17.734753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.860712, 22.618254, 17.985220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.493763, 22.711952, 17.856497>,  <18.273594, 22.768171, 17.779263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.493763, 22.711952, 17.856497>,  <18.860712, 22.618254, 17.985220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493763, 22.711952, 17.856497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167536, 0.506144, 0.846020,
		0.361058, 0.830028, -0.425077,
		-0.917371, 0.234247, -0.321807,
		18.218552, 22.782227, 17.759954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848494, 23.374886, 17.969448>,  <18.860712, 22.618254, 17.985220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848494, 23.374886, 17.969448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.459507, 23.282078, 17.960754>,  <18.226114, 23.226393, 17.955538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.459507, 23.282078, 17.960754>,  <18.848494, 23.374886, 17.969448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.459507, 23.282078, 17.960754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163083, 0.610973, 0.774672,
		-0.166458, 0.756889, -0.631990,
		-0.972469, -0.232017, -0.021735,
		18.167767, 23.212473, 17.954233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569580, 23.970369, 18.212538>,  <18.848494, 23.374886, 17.969448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569580, 23.970369, 18.212538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.281704, 23.693783, 18.237593>,  <18.108978, 23.527830, 18.252625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.281704, 23.693783, 18.237593>,  <18.569580, 23.970369, 18.212538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281704, 23.693783, 18.237593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235363, 0.327849, 0.914942,
		-0.653187, 0.643731, -0.398695,
		-0.719688, -0.691467, 0.062637,
		18.065798, 23.486343, 18.256384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091389, 24.337908, 18.544195>,  <18.569580, 23.970369, 18.212538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.091389, 24.337908, 18.544195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.988209, 23.958069, 18.615446>,  <17.926302, 23.730165, 18.658197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.988209, 23.958069, 18.615446>,  <18.091389, 24.337908, 18.544195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988209, 23.958069, 18.615446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305817, 0.255137, 0.917268,
		-0.916481, 0.182133, -0.356215,
		-0.257949, -0.949596, 0.178129,
		17.910824, 23.673189, 18.668884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314629, 24.304113, 18.645361>,  <18.091389, 24.337908, 18.544195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.314629, 24.304113, 18.645361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.497601, 24.008171, 18.842693>,  <17.607384, 23.830606, 18.961092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.497601, 24.008171, 18.842693>,  <17.314629, 24.304113, 18.645361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497601, 24.008171, 18.842693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217734, 0.444699, 0.868812,
		-0.862178, -0.504834, 0.042326,
		0.457428, -0.739855, 0.493329,
		17.634829, 23.786215, 18.990692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.833397, 24.162333, 19.177662>,  <17.314629, 24.304113, 18.645361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.833397, 24.162333, 19.177662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.183559, 24.011063, 19.298096>,  <17.393656, 23.920301, 19.370356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.183559, 24.011063, 19.298096>,  <16.833397, 24.162333, 19.177662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183559, 24.011063, 19.298096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138685, 0.400186, 0.905880,
		-0.463070, -0.834767, 0.297877,
		0.875404, -0.378175, 0.301083,
		17.446180, 23.897610, 19.388420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673059, 23.839088, 19.810452>,  <16.833397, 24.162333, 19.177662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673059, 23.839088, 19.810452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.072380, 23.846874, 19.832399>,  <17.311974, 23.851545, 19.845568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.072380, 23.846874, 19.832399>,  <16.673059, 23.839088, 19.810452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072380, 23.846874, 19.832399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056414, 0.090451, 0.994302,
		0.014388, -0.995711, 0.091395,
		0.998304, 0.019462, 0.054870,
		17.371872, 23.852715, 19.848860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.945440, 23.373262, 20.373751>,  <16.673059, 23.839088, 19.810452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.945440, 23.373262, 20.373751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.250809, 23.621159, 20.300966>,  <17.434029, 23.769897, 20.257296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.250809, 23.621159, 20.300966>,  <16.945440, 23.373262, 20.373751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250809, 23.621159, 20.300966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072865, 0.197281, 0.977635,
		0.641780, -0.759605, 0.105450,
		0.763420, 0.619743, -0.181959,
		17.479836, 23.807081, 20.246378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435606, 23.169062, 20.868187>,  <16.945440, 23.373262, 20.373751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435606, 23.169062, 20.868187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.512936, 23.552338, 20.783812>,  <17.559334, 23.782303, 20.733187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.512936, 23.552338, 20.783812>,  <17.435606, 23.169062, 20.868187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512936, 23.552338, 20.783812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085226, 0.197782, 0.976534,
		0.977427, -0.206763, -0.043428,
		0.193322, 0.958192, -0.210939,
		17.570932, 23.839796, 20.720530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872070, 23.281723, 21.351439>,  <17.435606, 23.169062, 20.868187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872070, 23.281723, 21.351439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.764214, 23.650055, 21.238749>,  <17.699499, 23.871054, 21.171135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.764214, 23.650055, 21.238749>,  <17.872070, 23.281723, 21.351439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.764214, 23.650055, 21.238749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173656, 0.334261, 0.926344,
		0.947173, 0.200857, -0.250038,
		-0.269641, 0.920829, -0.281723,
		17.683321, 23.926304, 21.154232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433722, 23.784784, 21.422529>,  <17.872070, 23.281723, 21.351439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433722, 23.784784, 21.422529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.068169, 23.934822, 21.484652>,  <17.848837, 24.024845, 21.521925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.068169, 23.934822, 21.484652>,  <18.433722, 23.784784, 21.422529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068169, 23.934822, 21.484652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244598, 0.203410, 0.948049,
		0.324019, 0.904393, -0.277641,
		-0.913884, 0.375096, 0.155304,
		17.794004, 24.047352, 21.531242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.119305, 24.184286, 21.412777>,  <18.433722, 23.784784, 21.422529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.119305, 24.184286, 21.412777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.266712, 23.922546, 21.676905>,  <19.355156, 23.765503, 21.835381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.266712, 23.922546, 21.676905>,  <19.119305, 24.184286, 21.412777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266712, 23.922546, 21.676905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471874, -0.480330, -0.739336,
		0.800956, 0.584045, 0.131761,
		0.368517, -0.654350, 0.660319,
		19.377268, 23.726242, 21.875000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.752695, 23.896681, 21.362761>,  <19.119305, 24.184286, 21.412777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.752695, 23.896681, 21.362761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.631863, 23.582893, 21.579409>,  <19.559364, 23.394621, 21.709398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.631863, 23.582893, 21.579409>,  <19.752695, 23.896681, 21.362761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.631863, 23.582893, 21.579409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500129, -0.614110, -0.610524,
		0.811553, 0.086454, 0.577847,
		-0.302079, -0.784471, 0.541622,
		19.541239, 23.347551, 21.741896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368820, 23.412374, 21.395050>,  <19.752695, 23.896681, 21.362761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.368820, 23.412374, 21.395050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.048149, 23.193996, 21.492418>,  <19.855745, 23.062969, 21.550840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.048149, 23.193996, 21.492418>,  <20.368820, 23.412374, 21.395050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048149, 23.193996, 21.492418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300391, -0.720025, -0.625563,
		0.516793, -0.428380, 0.741226,
		-0.801680, -0.545944, 0.243422,
		19.807646, 23.030212, 21.565445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.551332, 22.642899, 21.634380>,  <20.368820, 23.412374, 21.395050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.551332, 22.642899, 21.634380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.180206, 22.672943, 21.488218>,  <19.957531, 22.690969, 21.400520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.180206, 22.672943, 21.488218>,  <20.551332, 22.642899, 21.634380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180206, 22.672943, 21.488218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248909, -0.604946, -0.756363,
		-0.277861, -0.792717, 0.542581,
		-0.927814, 0.075110, -0.365405,
		19.901863, 22.695477, 21.378597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.238621, 21.939022, 21.658957>,  <20.551332, 22.642899, 21.634380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.238621, 21.939022, 21.658957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.027462, 22.157818, 21.399073>,  <19.900766, 22.289095, 21.243141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.027462, 22.157818, 21.399073>,  <20.238621, 21.939022, 21.658957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027462, 22.157818, 21.399073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391039, -0.522543, -0.757653,
		-0.753930, -0.654026, 0.061955,
		-0.527899, 0.546990, -0.649711,
		19.869093, 22.321915, 21.204159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098427, 21.513248, 21.189880>,  <20.238621, 21.939022, 21.658957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098427, 21.513248, 21.189880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.001877, 21.846607, 20.991007>,  <19.943947, 22.046621, 20.871683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.001877, 21.846607, 20.991007>,  <20.098427, 21.513248, 21.189880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.001877, 21.846607, 20.991007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586721, -0.282759, -0.758819,
		-0.772978, -0.474868, -0.420719,
		-0.241377, 0.833395, -0.497182,
		19.929464, 22.096626, 20.841852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638796, 21.307459, 20.656658>,  <20.098427, 21.513248, 21.189880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638796, 21.307459, 20.656658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.892406, 21.606056, 20.575901>,  <20.044573, 21.785213, 20.527447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.892406, 21.606056, 20.575901>,  <19.638796, 21.307459, 20.656658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892406, 21.606056, 20.575901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410662, -0.546241, -0.730053,
		-0.655261, 0.379962, -0.652887,
		0.634026, 0.746491, -0.201895,
		20.082615, 21.830004, 20.515333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234724, 20.753313, 20.307743>,  <19.638796, 21.307459, 20.656658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234724, 20.753313, 20.307743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.403664, 20.460663, 20.521788>,  <19.505028, 20.285072, 20.650215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.403664, 20.460663, 20.521788>,  <19.234724, 20.753313, 20.307743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.403664, 20.460663, 20.521788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769112, 0.023155, 0.638694,
		-0.479675, -0.681314, -0.552922,
		0.422348, -0.731625, 0.535114,
		19.530369, 20.241175, 20.682322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700413, 20.267069, 20.422367>,  <19.234724, 20.753313, 20.307743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700413, 20.267069, 20.422367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.962917, 20.206448, 20.718031>,  <19.120420, 20.170074, 20.895430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.962917, 20.206448, 20.718031>,  <18.700413, 20.267069, 20.422367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.962917, 20.206448, 20.718031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721761, 0.159494, 0.673515,
		-0.219965, -0.975496, -0.004717,
		0.656259, -0.151554, 0.739159,
		19.159796, 20.160982, 20.939779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380188, 19.801653, 20.836916>,  <18.700413, 20.267069, 20.422367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380188, 19.801653, 20.836916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.668221, 19.934845, 21.080427>,  <18.841040, 20.014761, 21.226534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.668221, 19.934845, 21.080427>,  <18.380188, 19.801653, 20.836916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.668221, 19.934845, 21.080427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638420, -0.025802, 0.769256,
		0.271856, -0.942580, 0.194003,
		0.720080, 0.332982, 0.608776,
		18.884245, 20.034739, 21.263060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317478, 19.373426, 21.339516>,  <18.380188, 19.801653, 20.836916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317478, 19.373426, 21.339516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.527264, 19.683155, 21.481142>,  <18.653135, 19.868992, 21.566118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.527264, 19.683155, 21.481142>,  <18.317478, 19.373426, 21.339516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527264, 19.683155, 21.481142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663771, 0.111399, 0.739593,
		0.533240, -0.622910, 0.572397,
		0.524464, 0.774322, 0.354067,
		18.684603, 19.915451, 21.587362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477112, 19.211061, 22.007351>,  <18.317478, 19.373426, 21.339516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477112, 19.211061, 22.007351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.487228, 19.609848, 21.977903>,  <18.493298, 19.849119, 21.960234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.487228, 19.609848, 21.977903>,  <18.477112, 19.211061, 22.007351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487228, 19.609848, 21.977903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653917, 0.072201, 0.753113,
		0.756143, 0.029096, 0.653759,
		0.025289, 0.996966, -0.073621,
		18.494816, 19.908937, 21.955816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735754, 19.439629, 22.604391>,  <18.477112, 19.211061, 22.007351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735754, 19.439629, 22.604391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.533470, 19.756176, 22.466988>,  <18.412100, 19.946104, 22.384546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.533470, 19.756176, 22.466988>,  <18.735754, 19.439629, 22.604391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.533470, 19.756176, 22.466988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585971, -0.022856, 0.810009,
		0.633164, 0.610914, 0.475277,
		-0.505709, 0.791367, -0.343507,
		18.381758, 19.993586, 22.363935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573318, 19.782818, 23.175055>,  <18.735754, 19.439629, 22.604391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573318, 19.782818, 23.175055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.313389, 19.946087, 22.918579>,  <18.157431, 20.044048, 22.764694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.313389, 19.946087, 22.918579>,  <18.573318, 19.782818, 23.175055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.313389, 19.946087, 22.918579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713655, -0.037333, 0.699502,
		0.261581, 0.912141, 0.315554,
		-0.649825, 0.408173, -0.641188,
		18.118441, 20.068539, 22.726223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.396402, 20.481524, 23.427753>,  <18.573318, 19.782818, 23.175055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.396402, 20.481524, 23.427753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.102943, 20.329144, 23.202669>,  <17.926868, 20.237715, 23.067619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.102943, 20.329144, 23.202669>,  <18.396402, 20.481524, 23.427753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.102943, 20.329144, 23.202669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665226, 0.233602, 0.709158,
		-0.138704, 0.894599, -0.424799,
		-0.733646, -0.380951, -0.562708,
		17.882851, 20.214859, 23.033857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814537, 20.977539, 23.640362>,  <18.396402, 20.481524, 23.427753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814537, 20.977539, 23.640362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.651897, 20.654800, 23.468929>,  <17.554314, 20.461157, 23.366070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.651897, 20.654800, 23.468929>,  <17.814537, 20.977539, 23.640362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651897, 20.654800, 23.468929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682986, -0.043132, 0.729156,
		-0.606801, 0.589188, -0.533526,
		-0.406598, -0.806844, -0.428580,
		17.529919, 20.412746, 23.340355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<24.521166, 16.996826, 8.958250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.137951, 16.917542, 8.875424>,  <23.908022, 16.869970, 8.825729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.137951, 16.917542, 8.875424>,  <24.521166, 16.996826, 8.958250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.137951, 16.917542, 8.875424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274591, 0.427373, 0.861367,
		-0.082241, 0.882080, -0.463867,
		-0.958038, -0.198213, -0.207063,
		23.850540, 16.858078, 8.813306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.115374, 17.656004, 8.962782>,  <24.521166, 16.996826, 8.958250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.115374, 17.656004, 8.962782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.855366, 17.359550, 9.029946>,  <23.699360, 17.181679, 9.070245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.855366, 17.359550, 9.029946>,  <24.115374, 17.656004, 8.962782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.855366, 17.359550, 9.029946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368090, 0.500384, 0.783661,
		-0.664817, 0.447591, -0.598065,
		-0.650022, -0.741133, 0.167910,
		23.660358, 17.137211, 9.080319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.591751, 17.981913, 9.345843>,  <24.115374, 17.656004, 8.962782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.591751, 17.981913, 9.345843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.477276, 17.600742, 9.385893>,  <23.408590, 17.372040, 9.409923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.477276, 17.600742, 9.385893>,  <23.591751, 17.981913, 9.345843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.477276, 17.600742, 9.385893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440465, 0.223638, 0.869469,
		-0.850933, 0.204731, -0.483734,
		-0.286188, -0.952928, 0.100125,
		23.391418, 17.314863, 9.415931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.796587, 17.919361, 9.519318>,  <23.591751, 17.981913, 9.345843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.796587, 17.919361, 9.519318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.972889, 17.582962, 9.644830>,  <23.078671, 17.381123, 9.720137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.972889, 17.582962, 9.644830>,  <22.796587, 17.919361, 9.519318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.972889, 17.582962, 9.644830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367187, 0.150059, 0.917963,
		-0.819090, -0.519813, -0.242664,
		0.440755, -0.840997, 0.313780,
		23.105116, 17.330664, 9.738964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.249838, 17.403032, 9.892748>,  <22.796587, 17.919361, 9.519318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.249838, 17.403032, 9.892748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.613377, 17.302734, 10.026091>,  <22.831499, 17.242556, 10.106096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.613377, 17.302734, 10.026091>,  <22.249838, 17.403032, 9.892748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.613377, 17.302734, 10.026091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316752, 0.105140, 0.942663,
		-0.271418, -0.962327, 0.016132,
		0.908846, -0.250745, 0.333356,
		22.886030, 17.227510, 10.126098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161003, 16.973379, 10.433787>,  <22.249838, 17.403032, 9.892748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161003, 16.973379, 10.433787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.532600, 17.101009, 10.508797>,  <22.755558, 17.177588, 10.553802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.532600, 17.101009, 10.508797>,  <22.161003, 16.973379, 10.433787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.532600, 17.101009, 10.508797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238796, 0.129660, 0.962375,
		0.282756, -0.938818, 0.196647,
		0.928992, 0.319075, 0.187523,
		22.811298, 17.196732, 10.565054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.564249, 16.565924, 10.971148>,  <22.161003, 16.973379, 10.433787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.564249, 16.565924, 10.971148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.729916, 16.929817, 10.982802>,  <22.829315, 17.148153, 10.989795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.729916, 16.929817, 10.982802>,  <22.564249, 16.565924, 10.971148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.729916, 16.929817, 10.982802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141774, 0.032857, 0.989354,
		0.899092, -0.413888, 0.142585,
		0.414167, 0.909735, 0.029137,
		22.854166, 17.202738, 10.991544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.844101, 16.549591, 11.655766>,  <22.564249, 16.565924, 10.971148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.844101, 16.549591, 11.655766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.902176, 16.935978, 11.570133>,  <22.937021, 17.167810, 11.518753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.902176, 16.935978, 11.570133>,  <22.844101, 16.549591, 11.655766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.902176, 16.935978, 11.570133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265742, 0.246498, 0.931998,
		0.953048, -0.078425, 0.292486,
		0.145189, 0.965965, -0.214084,
		22.945732, 17.225767, 11.505908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.317234, 16.759335, 12.198400>,  <22.844101, 16.549591, 11.655766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.317234, 16.759335, 12.198400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.146942, 17.093220, 12.058682>,  <23.044767, 17.293550, 11.974852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.146942, 17.093220, 12.058682>,  <23.317234, 16.759335, 12.198400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.146942, 17.093220, 12.058682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101829, 0.339374, 0.935123,
		0.899101, 0.433680, -0.059484,
		-0.425732, 0.834714, -0.349293,
		23.019222, 17.343634, 11.953895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.705221, 17.367321, 12.523636>,  <23.317234, 16.759335, 12.198400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.705221, 17.367321, 12.523636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.329594, 17.462864, 12.424767>,  <23.104218, 17.520189, 12.365446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.329594, 17.462864, 12.424767>,  <23.705221, 17.367321, 12.523636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.329594, 17.462864, 12.424767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159698, 0.333581, 0.929096,
		0.304374, 0.911960, -0.275111,
		-0.939070, 0.238858, -0.247172,
		23.047873, 17.534521, 12.350616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.658884, 18.071657, 12.723582>,  <23.705221, 17.367321, 12.523636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.658884, 18.071657, 12.723582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.285919, 17.931522, 12.688097>,  <23.062140, 17.847441, 12.666806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.285919, 17.931522, 12.688097>,  <23.658884, 18.071657, 12.723582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.285919, 17.931522, 12.688097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247372, 0.439745, 0.863384,
		-0.263466, 0.826975, -0.496687,
		-0.932412, -0.350339, -0.088713,
		23.006195, 17.826420, 12.661483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.275393, 18.634727, 12.977651>,  <23.658884, 18.071657, 12.723582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.275393, 18.634727, 12.977651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.000652, 18.344242, 12.989315>,  <22.835808, 18.169950, 12.996313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.000652, 18.344242, 12.989315>,  <23.275393, 18.634727, 12.977651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.000652, 18.344242, 12.989315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426181, 0.434933, 0.793224,
		-0.588732, 0.532399, -0.608232,
		-0.686852, -0.726212, 0.029160,
		22.794598, 18.126379, 12.998063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.950064, 19.206640, 12.678119>,  <23.275393, 18.634727, 12.977651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.950064, 19.206640, 12.678119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.117867, 19.568974, 12.654538>,  <23.218548, 19.786373, 12.640389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.117867, 19.568974, 12.654538>,  <22.950064, 19.206640, 12.678119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.117867, 19.568974, 12.654538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051688, -0.041000, -0.997821,
		-0.906278, 0.421642, 0.029620,
		0.419509, 0.905835, -0.058951,
		23.243719, 19.840725, 12.636852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.651190, 19.533232, 12.060053>,  <22.950064, 19.206640, 12.678119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.651190, 19.533232, 12.060053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.987419, 19.736576, 12.134895>,  <23.189156, 19.858583, 12.179801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.987419, 19.736576, 12.134895>,  <22.651190, 19.533232, 12.060053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.987419, 19.736576, 12.134895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177083, 0.068555, -0.981805,
		-0.511939, 0.858411, -0.032397,
		0.840571, 0.508362, 0.187106,
		23.239590, 19.889084, 12.191027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631781, 20.076490, 11.599162>,  <22.651190, 19.533232, 12.060053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631781, 20.076490, 11.599162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.007862, 20.013412, 11.719927>,  <23.233511, 19.975565, 11.792386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.007862, 20.013412, 11.719927>,  <22.631781, 20.076490, 11.599162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.007862, 20.013412, 11.719927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318963, 0.096637, -0.942828,
		0.119504, 0.982748, 0.141158,
		0.940203, -0.157695, 0.301912,
		23.289923, 19.966105, 11.810500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.986759, 20.630903, 11.476379>,  <22.631781, 20.076490, 11.599162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.986759, 20.630903, 11.476379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.282280, 20.362434, 11.500714>,  <23.459593, 20.201353, 11.515315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.282280, 20.362434, 11.500714>,  <22.986759, 20.630903, 11.476379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.282280, 20.362434, 11.500714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237269, 0.174556, -0.955632,
		0.630775, 0.720456, 0.288211,
		0.738800, -0.671173, 0.060836,
		23.503920, 20.161083, 11.518965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.530554, 20.968468, 11.146684>,  <22.986759, 20.630903, 11.476379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.530554, 20.968468, 11.146684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.621632, 20.579044, 11.154079>,  <23.676277, 20.345390, 11.158517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.621632, 20.579044, 11.154079>,  <23.530554, 20.968468, 11.146684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.621632, 20.579044, 11.154079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399002, 0.075963, -0.913798,
		0.888230, 0.215442, 0.405748,
		0.227692, -0.973557, 0.018489,
		23.689939, 20.286978, 11.159626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183933, 20.933279, 10.834742>,  <23.530554, 20.968468, 11.146684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183933, 20.933279, 10.834742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.053013, 20.555836, 10.814819>,  <23.974461, 20.329370, 10.802866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.053013, 20.555836, 10.814819>,  <24.183933, 20.933279, 10.834742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.053013, 20.555836, 10.814819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368701, -0.079002, -0.926185,
		0.870020, -0.321504, 0.373767,
		-0.327301, -0.943607, -0.049805,
		23.954823, 20.272753, 10.799878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761639, 20.565796, 10.373621>,  <24.183933, 20.933279, 10.834742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761639, 20.565796, 10.373621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.446388, 20.319668, 10.379725>,  <24.257238, 20.171991, 10.383387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.446388, 20.319668, 10.379725>,  <24.761639, 20.565796, 10.373621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.446388, 20.319668, 10.379725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104102, -0.157690, -0.981986,
		0.606644, -0.772342, 0.188337,
		-0.788128, -0.615323, 0.015260,
		24.209949, 20.135071, 10.384302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.931870, 19.932411, 10.218397>,  <24.761639, 20.565796, 10.373621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.931870, 19.932411, 10.218397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.551891, 19.972054, 10.099886>,  <24.323904, 19.995838, 10.028779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.551891, 19.972054, 10.099886>,  <24.931870, 19.932411, 10.218397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551891, 19.972054, 10.099886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258183, -0.284942, -0.923120,
		-0.175907, -0.953408, 0.245092,
		-0.949947, 0.099104, -0.296277,
		24.266907, 20.001785, 10.011003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800062, 19.426956, 9.784111>,  <24.931870, 19.932411, 10.218397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800062, 19.426956, 9.784111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.482594, 19.655518, 9.700604>,  <24.292112, 19.792654, 9.650500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.482594, 19.655518, 9.700604>,  <24.800062, 19.426956, 9.784111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.482594, 19.655518, 9.700604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042188, -0.290647, -0.955900,
		-0.606882, -0.767478, 0.206572,
		-0.793671, 0.571404, -0.208767,
		24.244492, 19.826939, 9.637975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274784, 18.998703, 9.454226>,  <24.800062, 19.426956, 9.784111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274784, 18.998703, 9.454226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.184002, 19.376301, 9.358424>,  <24.129534, 19.602859, 9.300943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.184002, 19.376301, 9.358424>,  <24.274784, 18.998703, 9.454226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184002, 19.376301, 9.358424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065137, -0.230657, -0.970852,
		-0.971725, -0.235939, -0.009141,
		-0.226953, 0.943997, -0.239504,
		24.115915, 19.659500, 9.286573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.711199, 18.879293, 8.887459>,  <24.274784, 18.998703, 9.454226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.711199, 18.879293, 8.887459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.868382, 19.246246, 8.862177>,  <23.962692, 19.466417, 8.847008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.868382, 19.246246, 8.862177>,  <23.711199, 18.879293, 8.887459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.868382, 19.246246, 8.862177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038473, -0.052272, -0.997891,
		-0.918751, 0.394561, 0.014754,
		0.392958, 0.917382, -0.063205,
		23.986269, 19.521461, 8.843215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.217398, 19.227711, 8.440034>,  <23.711199, 18.879293, 8.887459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.217398, 19.227711, 8.440034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.569260, 19.417873, 8.434432>,  <23.780376, 19.531971, 8.431071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.569260, 19.417873, 8.434432>,  <23.217398, 19.227711, 8.440034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569260, 19.417873, 8.434432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028685, 0.023641, -0.999309,
		-0.474749, 0.879448, 0.034433,
		0.879654, 0.475408, -0.014004,
		23.833157, 19.560495, 8.430231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.133284, 19.823521, 8.010969>,  <23.217398, 19.227711, 8.440034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.133284, 19.823521, 8.010969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.527279, 19.757793, 8.032121>,  <23.763676, 19.718357, 8.044811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.527279, 19.757793, 8.032121>,  <23.133284, 19.823521, 8.010969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.527279, 19.757793, 8.032121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063068, 0.057418, -0.996356,
		0.160685, 0.984734, 0.066920,
		0.984989, -0.164320, 0.052879,
		23.822775, 19.708498, 8.047984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396706, 20.132290, 7.409606>,  <23.133284, 19.823521, 8.010969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396706, 20.132290, 7.409606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.679787, 19.873592, 7.523361>,  <23.849636, 19.718374, 7.591614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.679787, 19.873592, 7.523361>,  <23.396706, 20.132290, 7.409606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.679787, 19.873592, 7.523361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118789, -0.287869, -0.950274,
		0.696452, 0.706294, -0.126900,
		0.707703, -0.646746, 0.284387,
		23.892097, 19.679569, 7.608677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.177221, 20.788342, 7.044910>,  <23.396706, 20.132290, 7.409606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.177221, 20.788342, 7.044910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.039471, 21.119816, 6.868418>,  <22.956821, 21.318701, 6.762523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.039471, 21.119816, 6.868418>,  <23.177221, 20.788342, 7.044910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.039471, 21.119816, 6.868418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259276, 0.367752, 0.893048,
		0.902321, 0.421943, 0.088214,
		-0.344374, 0.828687, -0.441230,
		22.936159, 21.368422, 6.736049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.537762, 21.416389, 7.194318>,  <23.177221, 20.788342, 7.044910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.537762, 21.416389, 7.194318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.143112, 21.370872, 7.147631>,  <22.906322, 21.343561, 7.119618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.143112, 21.370872, 7.147631>,  <23.537762, 21.416389, 7.194318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143112, 21.370872, 7.147631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141771, 0.245597, 0.958949,
		-0.080457, 0.962670, -0.258444,
		-0.986624, -0.113794, -0.116719,
		22.847124, 21.336735, 7.112615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.221792, 21.988298, 7.586346>,  <23.537762, 21.416389, 7.194318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.221792, 21.988298, 7.586346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.940128, 21.707306, 7.545012>,  <22.771130, 21.538710, 7.520213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.940128, 21.707306, 7.545012>,  <23.221792, 21.988298, 7.586346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.940128, 21.707306, 7.545012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442745, 0.320630, 0.837361,
		-0.555099, 0.635387, -0.536795,
		-0.704161, -0.702481, -0.103333,
		22.728880, 21.496561, 7.514013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.648203, 22.320765, 7.649839>,  <23.221792, 21.988298, 7.586346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.648203, 22.320765, 7.649839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.594521, 21.947437, 7.783047>,  <22.562311, 21.723440, 7.862971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.594521, 21.947437, 7.783047>,  <22.648203, 22.320765, 7.649839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594521, 21.947437, 7.783047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350669, 0.359045, 0.864938,
		-0.926833, -0.000698, -0.375473,
		-0.134208, -0.933320, 0.333019,
		22.554258, 21.667440, 7.882953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913834, 22.343842, 7.959987>,  <22.648203, 22.320765, 7.649839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913834, 22.343842, 7.959987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.091717, 22.003754, 8.072669>,  <22.198446, 21.799700, 8.140278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.091717, 22.003754, 8.072669>,  <21.913834, 22.343842, 7.959987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091717, 22.003754, 8.072669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302160, 0.153668, 0.940790,
		-0.843168, -0.503498, -0.188566,
		0.444709, -0.850221, 0.281705,
		22.225130, 21.748688, 8.157181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.380281, 21.975601, 8.367043>,  <21.913834, 22.343842, 7.959987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.380281, 21.975601, 8.367043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.751080, 21.850681, 8.450135>,  <21.973558, 21.775728, 8.499990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.751080, 21.850681, 8.450135>,  <21.380281, 21.975601, 8.367043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.751080, 21.850681, 8.450135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236791, -0.057767, 0.969842,
		-0.290884, -0.948225, -0.127500,
		0.926993, -0.312303, 0.207728,
		22.029177, 21.756990, 8.512454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.273947, 21.507416, 8.896977>,  <21.380281, 21.975601, 8.367043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.273947, 21.507416, 8.896977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.663895, 21.594322, 8.916687>,  <21.897863, 21.646465, 8.928513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.663895, 21.594322, 8.916687>,  <21.273947, 21.507416, 8.896977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663895, 21.594322, 8.916687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053949, 0.015631, 0.998421,
		0.216152, -0.975987, 0.026959,
		0.974868, 0.217265, 0.049275,
		21.956356, 21.659502, 8.931469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.633261, 20.962521, 9.356419>,  <21.273947, 21.507416, 8.896977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.633261, 20.962521, 9.356419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.862385, 21.290237, 9.346239>,  <21.999859, 21.486868, 9.340131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.862385, 21.290237, 9.346239>,  <21.633261, 20.962521, 9.356419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.862385, 21.290237, 9.346239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130506, -0.060503, 0.989600,
		0.809234, -0.570172, -0.141580,
		0.572808, 0.819295, -0.025449,
		22.034227, 21.536026, 9.338604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.110474, 20.813410, 9.837952>,  <21.633261, 20.962521, 9.356419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.110474, 20.813410, 9.837952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.143257, 21.208458, 9.784454>,  <22.162928, 21.445488, 9.752357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.143257, 21.208458, 9.784454>,  <22.110474, 20.813410, 9.837952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143257, 21.208458, 9.784454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077782, 0.140123, 0.987074,
		0.993596, -0.070497, 0.088303,
		0.081959, 0.987621, -0.133742,
		22.167845, 21.504744, 9.744331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630177, 21.108047, 10.278093>,  <22.110474, 20.813410, 9.837952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630177, 21.108047, 10.278093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.406311, 21.428711, 10.194077>,  <22.271992, 21.621109, 10.143666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.406311, 21.428711, 10.194077>,  <22.630177, 21.108047, 10.278093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.406311, 21.428711, 10.194077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156422, 0.146710, 0.976733,
		0.813824, 0.579497, 0.043289,
		-0.559664, 0.801660, -0.210042,
		22.238413, 21.669209, 10.131063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.796537, 21.606806, 10.798565>,  <22.630177, 21.108047, 10.278093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.796537, 21.606806, 10.798565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.439198, 21.711628, 10.652550>,  <22.224794, 21.774521, 10.564940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.439198, 21.711628, 10.652550>,  <22.796537, 21.606806, 10.798565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.439198, 21.711628, 10.652550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235996, 0.417692, 0.877405,
		0.382403, 0.869977, -0.311301,
		-0.893350, 0.262057, -0.365038,
		22.171192, 21.790245, 10.543038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.676258, 22.019352, 11.287589>,  <22.796537, 21.606806, 10.798565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.676258, 22.019352, 11.287589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.325611, 21.989929, 11.097378>,  <22.115223, 21.972275, 10.983251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.325611, 21.989929, 11.097378>,  <22.676258, 22.019352, 11.287589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.325611, 21.989929, 11.097378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475845, -0.014297, 0.879413,
		-0.071487, 0.997188, -0.022469,
		-0.876619, -0.073558, -0.475529,
		22.062626, 21.967861, 10.954719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.247784, 22.564657, 11.437378>,  <22.676258, 22.019352, 11.287589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.247784, 22.564657, 11.437378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.010292, 22.255661, 11.347271>,  <21.867796, 22.070263, 11.293207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.010292, 22.255661, 11.347271>,  <22.247784, 22.564657, 11.437378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.010292, 22.255661, 11.347271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488132, 0.123214, 0.864029,
		-0.639696, 0.622960, -0.450232,
		-0.593730, -0.772489, -0.225267,
		21.832172, 22.023914, 11.279691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709904, 22.798670, 11.717727>,  <22.247784, 22.564657, 11.437378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709904, 22.798670, 11.717727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.596878, 22.422802, 11.640600>,  <21.529062, 22.197281, 11.594324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.596878, 22.422802, 11.640600>,  <21.709904, 22.798670, 11.717727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596878, 22.422802, 11.640600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681987, 0.055437, 0.729260,
		-0.674575, 0.337561, -0.656507,
		-0.282565, -0.939670, -0.192815,
		21.512108, 22.140902, 11.582756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972931, 22.686043, 11.530112>,  <21.709904, 22.798670, 11.717727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972931, 22.686043, 11.530112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.116325, 22.343601, 11.679013>,  <21.202362, 22.138136, 11.768354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.116325, 22.343601, 11.679013>,  <20.972931, 22.686043, 11.530112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116325, 22.343601, 11.679013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709890, 0.008966, 0.704256,
		-0.606254, -0.516724, -0.604526,
		0.358485, -0.856105, 0.372253,
		21.223871, 22.086769, 11.790689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333860, 22.440535, 11.717829>,  <20.972931, 22.686043, 11.530112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333860, 22.440535, 11.717829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.635921, 22.232769, 11.877804>,  <20.817158, 22.108110, 11.973789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.635921, 22.232769, 11.877804>,  <20.333860, 22.440535, 11.717829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635921, 22.232769, 11.877804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579967, -0.244966, 0.776936,
		-0.305584, -0.818656, -0.486232,
		0.755153, -0.519418, 0.399936,
		20.862469, 22.076944, 11.997786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053761, 21.858416, 11.873834>,  <20.333860, 22.440535, 11.717829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053761, 21.858416, 11.873834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.373951, 21.904190, 12.109168>,  <20.566065, 21.931656, 12.250369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.373951, 21.904190, 12.109168>,  <20.053761, 21.858416, 11.873834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373951, 21.904190, 12.109168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584530, -0.067970, 0.808520,
		0.132515, -0.991102, 0.012485,
		0.800478, 0.114439, 0.588336,
		20.614094, 21.938520, 12.285669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.817020, 21.538774, 12.404881>,  <20.053761, 21.858416, 11.873834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.817020, 21.538774, 12.404881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.114212, 21.741581, 12.579657>,  <20.292526, 21.863264, 12.684522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.114212, 21.741581, 12.579657>,  <19.817020, 21.538774, 12.404881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114212, 21.741581, 12.579657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515620, 0.017346, 0.856642,
		0.426753, -0.861761, 0.274316,
		0.742979, 0.507017, 0.436939,
		20.337105, 21.893686, 12.710738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996363, 21.058491, 12.924640>,  <19.817020, 21.538774, 12.404881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996363, 21.058491, 12.924640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.100155, 21.434879, 13.011578>,  <20.162430, 21.660713, 13.063740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.100155, 21.434879, 13.011578>,  <19.996363, 21.058491, 12.924640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100155, 21.434879, 13.011578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460954, -0.077089, 0.884069,
		0.848641, -0.329584, 0.413743,
		0.259480, 0.940973, 0.217344,
		20.177999, 21.717171, 13.076781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276533, 21.167793, 13.651895>,  <19.996363, 21.058491, 12.924640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276533, 21.167793, 13.651895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.148891, 21.531013, 13.543367>,  <20.072306, 21.748945, 13.478251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.148891, 21.531013, 13.543367>,  <20.276533, 21.167793, 13.651895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.148891, 21.531013, 13.543367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432047, 0.115420, 0.894435,
		0.843509, 0.402642, 0.355490,
		-0.319106, 0.908052, -0.271317,
		20.053160, 21.803429, 13.461972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.429518, 21.568604, 14.279318>,  <20.276533, 21.167793, 13.651895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.429518, 21.568604, 14.279318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.153957, 21.762882, 14.064093>,  <19.988621, 21.879450, 13.934958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.153957, 21.762882, 14.064093>,  <20.429518, 21.568604, 14.279318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.153957, 21.762882, 14.064093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424711, 0.331072, 0.842622,
		0.587396, 0.809006, -0.021797,
		-0.688902, 0.485696, -0.538064,
		19.947287, 21.908590, 13.902674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368679, 22.229567, 14.563484>,  <20.429518, 21.568604, 14.279318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.368679, 22.229567, 14.563484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.016899, 22.180084, 14.379629>,  <19.805832, 22.150394, 14.269317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.016899, 22.180084, 14.379629>,  <20.368679, 22.229567, 14.563484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.016899, 22.180084, 14.379629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464992, 0.429681, 0.774052,
		0.101743, 0.894467, -0.435405,
		-0.879449, -0.123705, -0.459637,
		19.753065, 22.142973, 14.241738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978296, 22.823927, 14.894324>,  <20.368679, 22.229567, 14.563484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978296, 22.823927, 14.894324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.710835, 22.603634, 14.694485>,  <19.550358, 22.471458, 14.574581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.710835, 22.603634, 14.694485>,  <19.978296, 22.823927, 14.894324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.710835, 22.603634, 14.694485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610933, 0.023895, 0.791322,
		-0.423868, 0.834341, -0.352437,
		-0.668653, -0.550731, -0.499598,
		19.510239, 22.438414, 14.544605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289225, 23.180435, 14.915161>,  <19.978296, 22.823927, 14.894324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289225, 23.180435, 14.915161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.225163, 22.795742, 14.826241>,  <19.186726, 22.564926, 14.772888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.225163, 22.795742, 14.826241>,  <19.289225, 23.180435, 14.915161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.225163, 22.795742, 14.826241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591160, -0.086901, 0.801859,
		-0.790493, 0.259839, -0.554621,
		-0.160157, -0.961734, -0.222301,
		19.177116, 22.507221, 14.759550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.599455, 23.141218, 14.842054>,  <19.289225, 23.180435, 14.915161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.599455, 23.141218, 14.842054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.741428, 22.779453, 14.936760>,  <18.826612, 22.562393, 14.993583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.741428, 22.779453, 14.936760>,  <18.599455, 23.141218, 14.842054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741428, 22.779453, 14.936760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525381, 0.016519, 0.850707,
		-0.773302, -0.426335, -0.469299,
		0.354934, -0.904414, 0.236763,
		18.847908, 22.508129, 15.007789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079058, 22.825142, 15.216446>,  <18.599455, 23.141218, 14.842054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.079058, 22.825142, 15.216446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.366505, 22.570179, 15.327658>,  <18.538973, 22.417200, 15.394384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.366505, 22.570179, 15.327658>,  <18.079058, 22.825142, 15.216446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366505, 22.570179, 15.327658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463023, -0.140273, 0.875176,
		-0.518846, -0.757649, -0.395938,
		0.718616, -0.637410, 0.278028,
		18.582090, 22.378956, 15.411066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665207, 22.387793, 15.522611>,  <18.079058, 22.825142, 15.216446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665207, 22.387793, 15.522611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.037968, 22.317795, 15.649694>,  <18.261623, 22.275797, 15.725945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.037968, 22.317795, 15.649694>,  <17.665207, 22.387793, 15.522611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.037968, 22.317795, 15.649694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322329, 0.002131, 0.946625,
		-0.166334, -0.984567, -0.054420,
		0.931900, -0.174997, 0.317709,
		18.317537, 22.265297, 15.745008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.654787, 21.888847, 15.923281>,  <17.665207, 22.387793, 15.522611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.654787, 21.888847, 15.923281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.997620, 22.057796, 16.041269>,  <18.203320, 22.159166, 16.112062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.997620, 22.057796, 16.041269>,  <17.654787, 21.888847, 15.923281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997620, 22.057796, 16.041269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330739, 0.012127, 0.943644,
		0.394994, -0.906340, 0.150090,
		0.857083, 0.422375, 0.294972,
		18.254745, 22.184509, 16.129761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.510569, 21.196278, 16.091028>,  <17.654787, 21.888847, 15.923281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.510569, 21.196278, 16.091028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.177723, 20.999699, 15.988213>,  <16.978016, 20.881752, 15.926523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.177723, 20.999699, 15.988213>,  <17.510569, 21.196278, 16.091028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177723, 20.999699, 15.988213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344563, -0.094930, -0.933951,
		0.434586, -0.865719, 0.248327,
		-0.832113, -0.491447, -0.257039,
		16.928089, 20.852264, 15.911100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736448, 20.724014, 15.593616>,  <17.510569, 21.196278, 16.091028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736448, 20.724014, 15.593616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.340530, 20.734882, 15.537657>,  <17.102980, 20.741404, 15.504081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.340530, 20.734882, 15.537657>,  <17.736448, 20.724014, 15.593616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340530, 20.734882, 15.537657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125917, -0.293030, -0.947775,
		-0.066746, -0.955717, 0.286618,
		-0.989793, 0.027170, -0.139900,
		17.043592, 20.743034, 15.495687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526585, 20.062319, 15.317811>,  <17.736448, 20.724014, 15.593616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.526585, 20.062319, 15.317811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.231701, 20.310932, 15.211821>,  <17.054770, 20.460100, 15.148226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.231701, 20.310932, 15.211821>,  <17.526585, 20.062319, 15.317811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231701, 20.310932, 15.211821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182577, -0.194334, -0.963795,
		-0.650527, -0.758899, 0.029787,
		-0.737211, 0.621536, -0.264977,
		17.010538, 20.497393, 15.132328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.254160, 19.734987, 14.761066>,  <17.526585, 20.062319, 15.317811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.254160, 19.734987, 14.761066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.151211, 20.121185, 14.745155>,  <17.089441, 20.352903, 14.735609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.151211, 20.121185, 14.745155>,  <17.254160, 19.734987, 14.761066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151211, 20.121185, 14.745155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129745, -0.006264, -0.991528,
		-0.957562, -0.260354, -0.123656,
		-0.257373, 0.965493, -0.039778,
		17.073999, 20.410833, 14.733222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692358, 19.739985, 14.264540>,  <17.254160, 19.734987, 14.761066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692358, 19.739985, 14.264540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.859161, 20.100788, 14.309235>,  <16.959244, 20.317270, 14.336052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.859161, 20.100788, 14.309235>,  <16.692358, 19.739985, 14.264540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.859161, 20.100788, 14.309235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072162, 0.089692, -0.993352,
		-0.906033, 0.422300, -0.027688,
		0.417009, 0.902008, 0.111738,
		16.984264, 20.371391, 14.342756>
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
