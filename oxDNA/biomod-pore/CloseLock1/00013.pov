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
	<24.681620, 35.316975, 35.482056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498005, 35.165993, 35.160358>,  <24.387836, 35.075401, 34.967339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498005, 35.165993, 35.160358>,  <24.681620, 35.316975, 35.482056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498005, 35.165993, 35.160358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757426, -0.639392, -0.132226,
		-0.464319, -0.669854, 0.579400,
		-0.459036, -0.377457, -0.804246,
		24.360294, 35.052757, 34.919083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595602, 34.592930, 35.636761>,  <24.681620, 35.316975, 35.482056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595602, 34.592930, 35.636761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589785, 34.671852, 35.244667>,  <24.586294, 34.719204, 35.009411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589785, 34.671852, 35.244667>,  <24.595602, 34.592930, 35.636761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.589785, 34.671852, 35.244667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523400, -0.833798, -0.175594,
		-0.851963, -0.515608, -0.091143,
		-0.014543, 0.197304, -0.980235,
		24.585423, 34.731045, 34.950596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.370625, 33.933781, 35.287468>,  <24.595602, 34.592930, 35.636761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.370625, 33.933781, 35.287468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609571, 34.160389, 35.060417>,  <24.752939, 34.296352, 34.924187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609571, 34.160389, 35.060417>,  <24.370625, 33.933781, 35.287468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609571, 34.160389, 35.060417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563795, -0.800034, -0.205138,
		-0.570337, -0.197483, -0.797318,
		0.597370, 0.566522, -0.567629,
		24.788782, 34.330345, 34.890129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.414888, 33.842232, 34.502995>,  <24.370625, 33.933781, 35.287468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.414888, 33.842232, 34.502995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774952, 33.930851, 34.652996>,  <24.990990, 33.984020, 34.742996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774952, 33.930851, 34.652996>,  <24.414888, 33.842232, 34.502995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774952, 33.930851, 34.652996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371377, -0.840247, -0.395049,
		0.227577, 0.494876, -0.838634,
		0.900160, 0.221545, 0.375006,
		25.045000, 33.997314, 34.765499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900703, 33.844059, 34.025299>,  <24.414888, 33.842232, 34.502995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900703, 33.844059, 34.025299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115110, 33.730667, 34.343376>,  <25.243753, 33.662632, 34.534222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115110, 33.730667, 34.343376>,  <24.900703, 33.844059, 34.025299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115110, 33.730667, 34.343376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573619, -0.568794, -0.589436,
		0.619394, 0.772082, -0.142271,
		0.536015, -0.283484, 0.795188,
		25.275915, 33.645622, 34.581932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620121, 33.883011, 33.798428>,  <24.900703, 33.844059, 34.025299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620121, 33.883011, 33.798428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618542, 33.642796, 34.118263>,  <25.617594, 33.498669, 34.310165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618542, 33.642796, 34.118263>,  <25.620121, 33.883011, 33.798428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618542, 33.642796, 34.118263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524813, -0.681872, -0.509531,
		0.851208, 0.417624, 0.317861,
		-0.003948, -0.600535, 0.799589,
		25.617357, 33.462635, 34.358139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314939, 33.649803, 33.771336>,  <25.620121, 33.883011, 33.798428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314939, 33.649803, 33.771336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124424, 33.373566, 33.989044>,  <26.010115, 33.207825, 34.119671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124424, 33.373566, 33.989044>,  <26.314939, 33.649803, 33.771336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124424, 33.373566, 33.989044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521911, -0.720195, -0.457087,
		0.707642, 0.066357, 0.703448,
		-0.476289, -0.690591, 0.544273,
		25.981537, 33.166389, 34.152325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790331, 33.148911, 33.968273>,  <26.314939, 33.649803, 33.771336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790331, 33.148911, 33.968273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441092, 32.954952, 33.988567>,  <26.231548, 32.838577, 34.000744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441092, 32.954952, 33.988567>,  <26.790331, 33.148911, 33.968273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441092, 32.954952, 33.988567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382811, -0.746262, -0.544563,
		0.301923, -0.456033, 0.837183,
		-0.873097, -0.484899, 0.050740,
		26.179163, 32.809483, 34.003788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947910, 32.517952, 34.148396>,  <26.790331, 33.148911, 33.968273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947910, 32.517952, 34.148396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573351, 32.461411, 34.019913>,  <26.348616, 32.427486, 33.942822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573351, 32.461411, 34.019913>,  <26.947910, 32.517952, 34.148396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573351, 32.461411, 34.019913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269846, -0.875190, -0.401530,
		-0.224364, -0.462670, 0.857670,
		-0.936400, -0.141350, -0.321210,
		26.292431, 32.419006, 33.923550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622425, 31.788857, 34.383148>,  <26.947910, 32.517952, 34.148396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622425, 31.788857, 34.383148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431028, 31.915735, 34.055630>,  <26.316191, 31.991861, 33.859119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431028, 31.915735, 34.055630>,  <26.622425, 31.788857, 34.383148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431028, 31.915735, 34.055630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110940, -0.903165, -0.414711,
		-0.871053, -0.289275, 0.396971,
		-0.478496, 0.317195, -0.818797,
		26.287479, 32.010895, 33.809990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148251, 31.319048, 34.332905>,  <26.622425, 31.788857, 34.383148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148251, 31.319048, 34.332905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188042, 31.495583, 33.976181>,  <26.211916, 31.601503, 33.762146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188042, 31.495583, 33.976181>,  <26.148251, 31.319048, 34.332905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188042, 31.495583, 33.976181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015512, -0.896835, -0.442094,
		-0.994919, 0.030145, -0.096062,
		0.099478, 0.441338, -0.891810,
		26.217886, 31.627983, 33.708637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668041, 31.001560, 33.992889>,  <26.148251, 31.319048, 34.332905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668041, 31.001560, 33.992889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871563, 31.164751, 33.689663>,  <25.993677, 31.262667, 33.507725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871563, 31.164751, 33.689663>,  <25.668041, 31.001560, 33.992889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871563, 31.164751, 33.689663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100511, -0.902705, -0.418357,
		-0.854993, 0.136668, -0.500308,
		0.508807, 0.407979, -0.758069,
		26.024204, 31.287144, 33.462242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516304, 30.693199, 33.443222>,  <25.668041, 31.001560, 33.992889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516304, 30.693199, 33.443222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858797, 30.842041, 33.299889>,  <26.064293, 30.931347, 33.213890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858797, 30.842041, 33.299889>,  <25.516304, 30.693199, 33.443222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858797, 30.842041, 33.299889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127929, -0.824778, -0.550795,
		-0.500497, 0.425769, -0.753806,
		0.856234, 0.372105, -0.358331,
		26.115667, 30.953672, 33.192390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533281, 30.502865, 32.762859>,  <25.516304, 30.693199, 33.443222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533281, 30.502865, 32.762859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917526, 30.555101, 32.860977>,  <26.148073, 30.586443, 32.919846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917526, 30.555101, 32.860977>,  <25.533281, 30.502865, 32.762859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917526, 30.555101, 32.860977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264848, -0.697477, -0.665869,
		0.084128, 0.704607, -0.704593,
		0.960613, 0.130592, 0.245291,
		26.205709, 30.594278, 32.934563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998571, 30.509727, 32.137024>,  <25.533281, 30.502865, 32.762859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998571, 30.509727, 32.137024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275850, 30.419579, 32.410866>,  <26.442217, 30.365490, 32.575172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275850, 30.419579, 32.410866>,  <25.998571, 30.509727, 32.137024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275850, 30.419579, 32.410866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369547, -0.704364, -0.606058,
		0.618800, 0.673112, -0.404978,
		0.693197, -0.225370, 0.684607,
		26.483809, 30.351967, 32.616249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777704, 30.549528, 31.833040>,  <25.998571, 30.509727, 32.137024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777704, 30.549528, 31.833040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757820, 30.325636, 32.163914>,  <26.745890, 30.191301, 32.362438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757820, 30.325636, 32.163914>,  <26.777704, 30.549528, 31.833040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757820, 30.325636, 32.163914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460694, -0.747687, -0.478252,
		0.886166, 0.357305, 0.295031,
		-0.049708, -0.559730, 0.827183,
		26.742908, 30.157717, 32.412067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335800, 30.195539, 31.701122>,  <26.777704, 30.549528, 31.833040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335800, 30.195539, 31.701122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147892, 29.987581, 31.986507>,  <27.035147, 29.862806, 32.157738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147892, 29.987581, 31.986507>,  <27.335800, 30.195539, 31.701122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147892, 29.987581, 31.986507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201896, -0.850042, -0.486484,
		0.859392, -0.084491, 0.504289,
		-0.469770, -0.519894, 0.713461,
		27.006962, 29.831614, 32.200546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682570, 29.712234, 31.813391>,  <27.335800, 30.195539, 31.701122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682570, 29.712234, 31.813391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348181, 29.554611, 31.966164>,  <27.147547, 29.460037, 32.057827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348181, 29.554611, 31.966164>,  <27.682570, 29.712234, 31.813391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348181, 29.554611, 31.966164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198669, -0.866081, -0.458732,
		0.511549, -0.307609, 0.802305,
		-0.835971, -0.394057, 0.381931,
		27.097389, 29.436394, 32.080742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880362, 29.163008, 32.165470>,  <27.682570, 29.712234, 31.813391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880362, 29.163008, 32.165470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495308, 29.075954, 32.101006>,  <27.264277, 29.023722, 32.062328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495308, 29.075954, 32.101006>,  <27.880362, 29.163008, 32.165470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495308, 29.075954, 32.101006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270116, -0.814176, -0.513960,
		-0.019358, -0.538288, 0.842539,
		-0.962633, -0.217634, -0.161161,
		27.206518, 29.010664, 32.052658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814138, 28.434200, 32.318546>,  <27.880362, 29.163008, 32.165470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814138, 28.434200, 32.318546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492460, 28.518490, 32.096245>,  <27.299454, 28.569063, 31.962864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492460, 28.518490, 32.096245>,  <27.814138, 28.434200, 32.318546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492460, 28.518490, 32.096245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125558, -0.853712, -0.505382,
		-0.580951, -0.476205, 0.660094,
		-0.804196, 0.210722, -0.555756,
		27.251202, 28.581707, 31.929518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582943, 27.760481, 32.267117>,  <27.814138, 28.434200, 32.318546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582943, 27.760481, 32.267117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403574, 28.000381, 32.002026>,  <27.295952, 28.144321, 31.842970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403574, 28.000381, 32.002026>,  <27.582943, 27.760481, 32.267117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403574, 28.000381, 32.002026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150570, -0.781549, -0.605400,
		-0.881048, -0.171688, 0.440770,
		-0.448423, 0.599753, -0.662731,
		27.269047, 28.180307, 31.803205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142378, 27.236444, 31.949949>,  <27.582943, 27.760481, 32.267117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142378, 27.236444, 31.949949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163452, 27.547478, 31.699322>,  <27.176096, 27.734098, 31.548946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163452, 27.547478, 31.699322>,  <27.142378, 27.236444, 31.949949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163452, 27.547478, 31.699322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148271, -0.614393, -0.774943,
		-0.987542, 0.133730, 0.082924,
		0.052686, 0.777584, -0.626568,
		27.179258, 27.780752, 31.511351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468697, 27.349871, 31.535969>,  <27.142378, 27.236444, 31.949949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468697, 27.349871, 31.535969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776270, 27.474152, 31.312468>,  <26.960814, 27.548719, 31.178368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776270, 27.474152, 31.312468>,  <26.468697, 27.349871, 31.535969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776270, 27.474152, 31.312468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246443, -0.662383, -0.707470,
		-0.589920, 0.681699, -0.432759,
		0.768934, 0.310701, -0.558753,
		27.006950, 27.567362, 31.144842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219458, 27.175802, 30.891617>,  <26.468697, 27.349871, 31.535969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219458, 27.175802, 30.891617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586559, 27.304386, 30.798328>,  <26.806820, 27.381536, 30.742355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586559, 27.304386, 30.798328>,  <26.219458, 27.175802, 30.891617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586559, 27.304386, 30.798328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009113, -0.604127, -0.796836,
		-0.397047, 0.729173, -0.557369,
		0.917753, 0.321460, -0.233222,
		26.861885, 27.400824, 30.728361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213182, 27.321728, 30.200977>,  <26.219458, 27.175802, 30.891617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213182, 27.321728, 30.200977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580879, 27.216986, 30.318571>,  <26.801497, 27.154140, 30.389128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580879, 27.216986, 30.318571>,  <26.213182, 27.321728, 30.200977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580879, 27.216986, 30.318571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024884, -0.706599, -0.707176,
		0.392907, 0.657382, -0.643019,
		0.919241, -0.261853, 0.293986,
		26.856651, 27.138430, 30.406767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638111, 27.334513, 29.660870>,  <26.213182, 27.321728, 30.200977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638111, 27.334513, 29.660870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769714, 27.059065, 29.919344>,  <26.848677, 26.893797, 30.074429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769714, 27.059065, 29.919344>,  <26.638111, 27.334513, 29.660870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769714, 27.059065, 29.919344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121361, -0.709443, -0.694235,
		0.936496, 0.149986, -0.316983,
		0.329007, -0.688618, 0.646188,
		26.868416, 26.852480, 30.113201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755037, 26.820110, 29.244148>,  <26.638111, 27.334513, 29.660870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755037, 26.820110, 29.244148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720863, 26.657488, 29.607998>,  <26.700359, 26.559914, 29.826307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720863, 26.657488, 29.607998>,  <26.755037, 26.820110, 29.244148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720863, 26.657488, 29.607998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197564, -0.887920, -0.415412,
		0.976560, -0.215199, -0.004461,
		-0.085436, -0.406555, 0.909623,
		26.695232, 26.535521, 29.880884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138021, 26.165089, 29.215988>,  <26.755037, 26.820110, 29.244148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138021, 26.165089, 29.215988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819239, 26.196821, 29.455511>,  <26.627970, 26.215860, 29.599224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819239, 26.196821, 29.455511>,  <27.138021, 26.165089, 29.215988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819239, 26.196821, 29.455511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439545, -0.756141, -0.484821,
		0.414320, -0.649583, 0.637480,
		-0.796956, 0.079330, 0.598805,
		26.580153, 26.220621, 29.635153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440699, 25.939833, 29.852285>,  <27.138021, 26.165089, 29.215988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440699, 25.939833, 29.852285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085695, 25.755518, 29.851248>,  <26.872694, 25.644928, 29.850624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085695, 25.755518, 29.851248>,  <27.440699, 25.939833, 29.852285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085695, 25.755518, 29.851248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199385, -0.389093, 0.899363,
		-0.415425, 0.797673, 0.437196,
		-0.887507, -0.460788, -0.002595,
		26.819443, 25.617281, 29.850470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013716, 26.141502, 30.338232>,  <27.440699, 25.939833, 29.852285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013716, 26.141502, 30.338232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937080, 25.756372, 30.262056>,  <26.891098, 25.525295, 30.216351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937080, 25.756372, 30.262056>,  <27.013716, 26.141502, 30.338232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937080, 25.756372, 30.262056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070494, -0.207029, 0.975792,
		-0.978940, 0.173527, 0.107537,
		-0.191589, -0.962823, -0.190437,
		26.879604, 25.467525, 30.204926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438301, 25.867998, 30.811975>,  <27.013716, 26.141502, 30.338232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438301, 25.867998, 30.811975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687115, 25.581221, 30.686077>,  <26.836403, 25.409155, 30.610538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687115, 25.581221, 30.686077>,  <26.438301, 25.867998, 30.811975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687115, 25.581221, 30.686077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201230, -0.242101, 0.949154,
		-0.756690, -0.653743, -0.006324,
		0.622034, -0.716943, -0.314748,
		26.873726, 25.366138, 30.591652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285872, 25.082613, 31.043047>,  <26.438301, 25.867998, 30.811975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285872, 25.082613, 31.043047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671892, 25.185743, 31.024281>,  <26.903505, 25.247622, 31.013021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671892, 25.185743, 31.024281>,  <26.285872, 25.082613, 31.043047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671892, 25.185743, 31.024281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096703, -0.183968, 0.978164,
		0.243564, -0.948516, -0.202471,
		0.965052, 0.257825, -0.046916,
		26.961409, 25.263090, 31.010206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750486, 24.566584, 31.340761>,  <26.285872, 25.082613, 31.043047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750486, 24.566584, 31.340761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951832, 24.907318, 31.398727>,  <27.072639, 25.111759, 31.433508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951832, 24.907318, 31.398727>,  <26.750486, 24.566584, 31.340761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951832, 24.907318, 31.398727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110562, -0.229828, 0.966931,
		0.856972, -0.470696, -0.209868,
		0.503364, 0.851836, 0.144916,
		27.102840, 25.162868, 31.442202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196466, 24.367016, 31.867270>,  <26.750486, 24.566584, 31.340761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196466, 24.367016, 31.867270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166960, 24.765867, 31.874157>,  <27.149256, 25.005178, 31.878288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166960, 24.765867, 31.874157>,  <27.196466, 24.367016, 31.867270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166960, 24.765867, 31.874157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331143, 0.008207, 0.943545,
		0.940692, 0.075305, -0.330797,
		-0.073769, 0.997127, 0.017217,
		27.144829, 25.065004, 31.879322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753635, 24.760815, 32.414173>,  <27.196466, 24.367016, 31.867270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753635, 24.760815, 32.414173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528862, 25.066444, 32.287415>,  <27.393999, 25.249823, 32.211361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528862, 25.066444, 32.287415>,  <27.753635, 24.760815, 32.414173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528862, 25.066444, 32.287415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000630, 0.382708, 0.923869,
		0.827183, 0.519351, -0.214574,
		-0.561932, 0.764074, -0.316897,
		27.360283, 25.295666, 32.192345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999033, 25.363436, 32.697624>,  <27.753635, 24.760815, 32.414173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999033, 25.363436, 32.697624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605198, 25.409563, 32.645023>,  <27.368896, 25.437241, 32.613464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605198, 25.409563, 32.645023>,  <27.999033, 25.363436, 32.697624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605198, 25.409563, 32.645023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053646, 0.516503, 0.854603,
		0.166474, 0.848484, -0.502355,
		-0.984585, 0.115320, -0.131503,
		27.309822, 25.444159, 32.605572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823622, 26.066156, 32.685085>,  <27.999033, 25.363436, 32.697624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823622, 26.066156, 32.685085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466311, 25.908520, 32.771564>,  <27.251923, 25.813938, 32.823452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466311, 25.908520, 32.771564>,  <27.823622, 26.066156, 32.685085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466311, 25.908520, 32.771564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176481, 0.749839, 0.637648,
		-0.413406, 0.531444, -0.739367,
		-0.893280, -0.394092, 0.216198,
		27.198326, 25.790293, 32.836426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412050, 26.582163, 32.620338>,  <27.823622, 26.066156, 32.685085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412050, 26.582163, 32.620338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152605, 26.333107, 32.795437>,  <26.996937, 26.183674, 32.900494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152605, 26.333107, 32.795437>,  <27.412050, 26.582163, 32.620338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152605, 26.333107, 32.795437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314583, 0.743016, 0.590732,
		-0.693063, 0.245452, -0.677803,
		-0.648615, -0.622640, 0.437742,
		26.958021, 26.146315, 32.926758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797531, 26.915907, 32.627117>,  <27.412050, 26.582163, 32.620338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797531, 26.915907, 32.627117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762117, 26.647120, 32.921223>,  <26.740870, 26.485847, 33.097687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762117, 26.647120, 32.921223>,  <26.797531, 26.915907, 32.627117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762117, 26.647120, 32.921223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266627, 0.727216, 0.632508,
		-0.959725, -0.140044, -0.243549,
		-0.088534, -0.671971, 0.735267,
		26.735558, 26.445528, 33.141804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164463, 27.139795, 32.956551>,  <26.797531, 26.915907, 32.627117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164463, 27.139795, 32.956551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376009, 26.921452, 33.216499>,  <26.502937, 26.790445, 33.372471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376009, 26.921452, 33.216499>,  <26.164463, 27.139795, 32.956551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376009, 26.921452, 33.216499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292930, 0.601269, 0.743416,
		-0.796551, -0.583535, 0.158092,
		0.528865, -0.545859, 0.649877,
		26.534668, 26.757694, 33.411461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759007, 27.135431, 33.583946>,  <26.164463, 27.139795, 32.956551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759007, 27.135431, 33.583946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132891, 27.069607, 33.709953>,  <26.357222, 27.030111, 33.785557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132891, 27.069607, 33.709953>,  <25.759007, 27.135431, 33.583946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132891, 27.069607, 33.709953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111725, 0.705365, 0.699984,
		-0.337392, -0.689478, 0.640927,
		0.934711, -0.164561, 0.315016,
		26.413303, 27.020239, 33.804459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787874, 27.221497, 34.389366>,  <25.759007, 27.135431, 33.583946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787874, 27.221497, 34.389366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165527, 27.260216, 34.263351>,  <26.392118, 27.283447, 34.187744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165527, 27.260216, 34.263351>,  <25.787874, 27.221497, 34.389366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165527, 27.260216, 34.263351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083155, 0.855002, 0.511916,
		0.318904, -0.509513, 0.799185,
		0.944132, 0.096796, -0.315032,
		26.448767, 27.289255, 34.168842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193747, 27.530325, 34.968666>,  <25.787874, 27.221497, 34.389366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193747, 27.530325, 34.968666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405895, 27.619114, 34.641392>,  <26.533184, 27.672388, 34.445026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405895, 27.619114, 34.641392>,  <26.193747, 27.530325, 34.968666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405895, 27.619114, 34.641392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207508, 0.901764, 0.379160,
		0.821978, -0.370876, 0.432208,
		0.530370, 0.221974, -0.818190,
		26.565006, 27.685707, 34.395935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795475, 27.734739, 35.258648>,  <26.193747, 27.530325, 34.968666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795475, 27.734739, 35.258648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805410, 27.898859, 34.894005>,  <26.811371, 27.997332, 34.675217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805410, 27.898859, 34.894005>,  <26.795475, 27.734739, 35.258648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805410, 27.898859, 34.894005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342733, 0.853133, 0.393317,
		0.939105, -0.322208, -0.119434,
		0.024837, 0.410300, -0.911612,
		26.812862, 28.021950, 34.620522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454073, 28.086086, 35.321438>,  <26.795475, 27.734739, 35.258648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454073, 28.086086, 35.321438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215780, 28.251665, 35.046120>,  <27.072805, 28.351013, 34.880928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215780, 28.251665, 35.046120>,  <27.454073, 28.086086, 35.321438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215780, 28.251665, 35.046120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247958, 0.909886, 0.332603,
		0.763951, 0.027473, -0.644689,
		-0.595731, 0.413949, -0.688296,
		27.037062, 28.375849, 34.839630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904026, 28.578178, 35.006638>,  <27.454073, 28.086086, 35.321438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904026, 28.578178, 35.006638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524883, 28.684586, 34.936440>,  <27.297398, 28.748430, 34.894321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524883, 28.684586, 34.936440>,  <27.904026, 28.578178, 35.006638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524883, 28.684586, 34.936440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194491, 0.919086, 0.342717,
		0.252460, 0.290716, -0.922902,
		-0.947859, 0.266018, -0.175491,
		27.240526, 28.764391, 34.883793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966421, 29.263281, 34.730343>,  <27.904026, 28.578178, 35.006638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966421, 29.263281, 34.730343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576294, 29.258816, 34.818554>,  <27.342218, 29.256136, 34.871479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576294, 29.258816, 34.818554>,  <27.966421, 29.263281, 34.730343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576294, 29.258816, 34.818554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042518, 0.970537, 0.237172,
		-0.216678, 0.240694, -0.946106,
		-0.975317, -0.011164, 0.220528,
		27.283699, 29.255466, 34.884712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688765, 29.912430, 34.550289>,  <27.966421, 29.263281, 34.730343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688765, 29.912430, 34.550289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409807, 29.770489, 34.799358>,  <27.242434, 29.685324, 34.948799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409807, 29.770489, 34.799358>,  <27.688765, 29.912430, 34.550289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409807, 29.770489, 34.799358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159316, 0.923841, 0.348047,
		-0.698759, 0.143523, -0.700812,
		-0.697391, -0.354851, 0.622676,
		27.200590, 29.664034, 34.986160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271219, 30.409840, 34.513832>,  <27.688765, 29.912430, 34.550289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271219, 30.409840, 34.513832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176931, 30.210888, 34.847790>,  <27.120358, 30.091516, 35.048164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176931, 30.210888, 34.847790>,  <27.271219, 30.409840, 34.513832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176931, 30.210888, 34.847790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224790, 0.863711, 0.451080,
		-0.945465, -0.081346, -0.315401,
		-0.235722, -0.497379, 0.834895,
		27.106215, 30.061674, 35.098259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691940, 30.719929, 34.769600>,  <27.271219, 30.409840, 34.513832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691940, 30.719929, 34.769600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854004, 30.537567, 35.086586>,  <26.951242, 30.428150, 35.276775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854004, 30.537567, 35.086586>,  <26.691940, 30.719929, 34.769600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854004, 30.537567, 35.086586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158193, 0.818760, 0.551913,
		-0.900456, -0.348974, 0.259606,
		0.405158, -0.455906, 0.792463,
		26.975552, 30.400795, 35.324326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201563, 30.678415, 35.349155>,  <26.691940, 30.719929, 34.769600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201563, 30.678415, 35.349155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569342, 30.686306, 35.506245>,  <26.790009, 30.691040, 35.600498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569342, 30.686306, 35.506245>,  <26.201563, 30.678415, 35.349155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569342, 30.686306, 35.506245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247124, 0.805845, 0.538091,
		-0.305857, -0.591797, 0.745807,
		0.919446, 0.019728, 0.392721,
		26.845175, 30.692225, 35.624062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090847, 30.889135, 36.063435>,  <26.201563, 30.678415, 35.349155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090847, 30.889135, 36.063435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485989, 30.933395, 36.019794>,  <26.723074, 30.959951, 35.993610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485989, 30.933395, 36.019794>,  <26.090847, 30.889135, 36.063435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485989, 30.933395, 36.019794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028922, 0.820760, 0.570541,
		0.152677, -0.560456, 0.813990,
		0.987853, 0.110650, -0.109101,
		26.782345, 30.966591, 35.987064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445904, 31.071589, 36.816898>,  <26.090847, 30.889135, 36.063435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445904, 31.071589, 36.816898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684732, 31.190643, 36.518929>,  <26.828030, 31.262075, 36.340145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684732, 31.190643, 36.518929>,  <26.445904, 31.071589, 36.816898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684732, 31.190643, 36.518929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160503, 0.865518, 0.474465,
		0.785967, -0.402853, 0.469005,
		0.597072, 0.297637, -0.744928,
		26.863853, 31.279934, 36.295448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083576, 31.374153, 37.124805>,  <26.445904, 31.071589, 36.816898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083576, 31.374153, 37.124805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082842, 31.494514, 36.743343>,  <27.082401, 31.566730, 36.514465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082842, 31.494514, 36.743343>,  <27.083576, 31.374153, 37.124805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082842, 31.494514, 36.743343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357641, 0.890776, 0.280375,
		0.933857, -0.340551, -0.109249,
		-0.001835, 0.300902, -0.953653,
		27.082291, 31.584785, 36.457249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717142, 31.749359, 37.033878>,  <27.083576, 31.374153, 37.124805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717142, 31.749359, 37.033878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472219, 31.898409, 36.754955>,  <27.325266, 31.987839, 36.587601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472219, 31.898409, 36.754955>,  <27.717142, 31.749359, 37.033878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472219, 31.898409, 36.754955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240726, 0.927961, 0.284500,
		0.753082, 0.006342, -0.657896,
		-0.612306, 0.372624, -0.697304,
		27.288528, 32.010197, 36.545765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096695, 32.305161, 36.794456>,  <27.717142, 31.749359, 37.033878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096695, 32.305161, 36.794456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709839, 32.359035, 36.708199>,  <27.477726, 32.391361, 36.656445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709839, 32.359035, 36.708199>,  <28.096695, 32.305161, 36.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709839, 32.359035, 36.708199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068797, 0.955155, 0.288004,
		0.244764, 0.263705, -0.933033,
		-0.967139, 0.134683, -0.215645,
		27.419697, 32.399441, 36.643505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040195, 32.947445, 36.439739>,  <28.096695, 32.305161, 36.794456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040195, 32.947445, 36.439739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685669, 32.868736, 36.607418>,  <27.472954, 32.821510, 36.708027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685669, 32.868736, 36.607418>,  <28.040195, 32.947445, 36.439739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685669, 32.868736, 36.607418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077777, 0.955626, 0.284129,
		-0.456505, 0.219224, -0.862290,
		-0.886315, -0.196772, 0.419197,
		27.419775, 32.809704, 36.733177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367340, 32.333370, 36.047672>,  <28.040195, 32.947445, 36.439739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367340, 32.333370, 36.047672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059469, 32.084213, 36.103680>,  <27.874746, 31.934721, 36.137283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059469, 32.084213, 36.103680>,  <28.367340, 32.333370, 36.047672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059469, 32.084213, 36.103680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616719, 0.668697, -0.415334,
		0.165079, -0.406024, -0.898829,
		-0.769679, -0.622888, 0.140015,
		27.828566, 31.897346, 36.145683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123808, 32.301598, 36.306698>,  <28.367340, 32.333370, 36.047672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123808, 32.301598, 36.306698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284994, 32.557594, 36.045002>,  <29.381706, 32.711193, 35.887985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284994, 32.557594, 36.045002>,  <29.123808, 32.301598, 36.306698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284994, 32.557594, 36.045002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774560, 0.619268, 0.128703,
		0.487518, 0.454885, 0.745256,
		0.402968, 0.639990, -0.654240,
		29.405884, 32.749592, 35.848728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141912, 32.016575, 35.629299>,  <29.123808, 32.301598, 36.306698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141912, 32.016575, 35.629299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429907, 32.070911, 35.357075>,  <29.602703, 32.103512, 35.193741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429907, 32.070911, 35.357075>,  <29.141912, 32.016575, 35.629299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429907, 32.070911, 35.357075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077612, 0.958744, 0.273471,
		0.689633, -0.249715, 0.679742,
		0.719988, 0.135839, -0.680562,
		29.645903, 32.111664, 35.152905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894032, 32.213581, 35.808487>,  <29.141912, 32.016575, 35.629299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894032, 32.213581, 35.808487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719389, 32.368904, 35.483871>,  <29.614603, 32.462097, 35.289104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719389, 32.368904, 35.483871>,  <29.894032, 32.213581, 35.808487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719389, 32.368904, 35.483871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258002, 0.918209, 0.300546,
		0.861865, -0.078158, -0.501079,
		-0.436605, 0.388310, -0.811537,
		29.588408, 32.485397, 35.240410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232870, 32.469254, 35.234100>,  <29.894032, 32.213581, 35.808487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232870, 32.469254, 35.234100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900019, 32.681847, 35.297462>,  <29.700308, 32.809402, 35.335480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900019, 32.681847, 35.297462>,  <30.232870, 32.469254, 35.234100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900019, 32.681847, 35.297462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552609, 0.818705, 0.156031,
		-0.046760, 0.217374, -0.974968,
		-0.832128, 0.531480, 0.158405,
		29.650381, 32.841290, 35.344982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246954, 33.074722, 34.843933>,  <30.232870, 32.469254, 35.234100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246954, 33.074722, 34.843933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023014, 33.142082, 35.168453>,  <29.888649, 33.182499, 35.363167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023014, 33.142082, 35.168453>,  <30.246954, 33.074722, 34.843933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023014, 33.142082, 35.168453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524382, 0.830117, 0.189549,
		-0.641553, 0.531551, -0.553049,
		-0.559851, 0.168403, 0.811300,
		29.855059, 33.192604, 35.411842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097773, 33.742908, 34.712875>,  <30.246954, 33.074722, 34.843933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097773, 33.742908, 34.712875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112339, 33.593636, 35.083691>,  <30.121078, 33.504070, 35.306179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112339, 33.593636, 35.083691>,  <30.097773, 33.742908, 34.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112339, 33.593636, 35.083691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650872, 0.712779, 0.261364,
		-0.758314, 0.593868, 0.268852,
		0.036417, -0.373185, 0.927042,
		30.123264, 33.481682, 35.361805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868374, 34.253445, 35.247795>,  <30.097773, 33.742908, 34.712875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868374, 34.253445, 35.247795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131315, 33.992065, 35.397938>,  <30.289080, 33.835236, 35.488022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131315, 33.992065, 35.397938>,  <29.868374, 34.253445, 35.247795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131315, 33.992065, 35.397938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579507, 0.756739, 0.302518,
		-0.481727, 0.018660, 0.876123,
		0.657351, -0.653451, 0.375356,
		30.328520, 33.796032, 35.510544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980299, 34.530895, 35.854786>,  <29.868374, 34.253445, 35.247795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980299, 34.530895, 35.854786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283319, 34.281506, 35.777443>,  <30.465132, 34.131870, 35.731037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283319, 34.281506, 35.777443>,  <29.980299, 34.530895, 35.854786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283319, 34.281506, 35.777443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601690, 0.552065, 0.577229,
		-0.253144, -0.553623, 0.793359,
		0.757553, -0.623479, -0.193358,
		30.510586, 34.094463, 35.719437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147331, 34.291225, 36.494408>,  <29.980299, 34.530895, 35.854786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147331, 34.291225, 36.494408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443996, 34.303967, 36.226402>,  <30.621996, 34.311611, 36.065598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443996, 34.303967, 36.226402>,  <30.147331, 34.291225, 36.494408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443996, 34.303967, 36.226402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409407, 0.769741, 0.489781,
		0.531341, -0.637561, 0.557847,
		0.741662, 0.031854, -0.670016,
		30.666494, 34.313522, 36.025398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767584, 34.346928, 36.814644>,  <30.147331, 34.291225, 36.494408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767584, 34.346928, 36.814644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888779, 34.461655, 36.451118>,  <30.961496, 34.530491, 36.233006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888779, 34.461655, 36.451118>,  <30.767584, 34.346928, 36.814644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888779, 34.461655, 36.451118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452008, 0.796295, 0.401999,
		0.838980, -0.532591, 0.111625,
		0.302988, 0.286813, -0.908811,
		30.979675, 34.547699, 36.178474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421867, 34.393513, 36.890366>,  <30.767584, 34.346928, 36.814644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421867, 34.393513, 36.890366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334072, 34.609089, 36.565067>,  <31.281395, 34.738434, 36.369888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334072, 34.609089, 36.565067>,  <31.421867, 34.393513, 36.890366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334072, 34.609089, 36.565067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453658, 0.794349, 0.403985,
		0.863724, -0.280264, -0.418847,
		-0.219488, 0.538945, -0.813242,
		31.268227, 34.770771, 36.321095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108086, 34.649162, 36.636105>,  <31.421867, 34.393513, 36.890366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108086, 34.649162, 36.636105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806570, 34.883282, 36.516621>,  <31.625660, 35.023754, 36.444931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806570, 34.883282, 36.516621>,  <32.108086, 34.649162, 36.636105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806570, 34.883282, 36.516621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536451, 0.810648, 0.234671,
		0.379501, 0.016649, -0.925042,
		-0.753790, 0.585297, -0.298710,
		31.580433, 35.058872, 36.427006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416935, 35.287750, 36.595882>,  <32.108086, 34.649162, 36.636105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416935, 35.287750, 36.595882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033371, 35.399368, 36.575359>,  <31.803234, 35.466339, 36.563046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033371, 35.399368, 36.575359>,  <32.416935, 35.287750, 36.595882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033371, 35.399368, 36.575359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266958, 0.948608, 0.169930,
		0.096086, 0.149250, -0.984120,
		-0.958906, 0.279047, -0.051305,
		31.745699, 35.483082, 36.559967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478630, 35.906780, 36.196369>,  <32.416935, 35.287750, 36.595882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478630, 35.906780, 36.196369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121174, 35.910503, 36.375847>,  <31.906700, 35.912739, 36.483532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121174, 35.910503, 36.375847>,  <32.478630, 35.906780, 36.196369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121174, 35.910503, 36.375847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131160, 0.961551, 0.241279,
		-0.429196, 0.274467, -0.860499,
		-0.893638, 0.009307, 0.448693,
		31.853083, 35.913296, 36.510456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188320, 36.487511, 35.998314>,  <32.478630, 35.906780, 36.196369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188320, 36.487511, 35.998314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977373, 36.420094, 36.331413>,  <31.850805, 36.379642, 36.531273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977373, 36.420094, 36.331413>,  <32.188320, 36.487511, 35.998314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977373, 36.420094, 36.331413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341305, 0.855546, 0.389296,
		-0.778070, 0.489525, -0.393665,
		-0.527369, -0.168540, 0.832752,
		31.819162, 36.369530, 36.581238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913683, 37.088097, 36.176250>,  <32.188320, 36.487511, 35.998314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913683, 37.088097, 36.176250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847189, 36.885632, 36.514755>,  <31.807293, 36.764153, 36.717857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847189, 36.885632, 36.514755>,  <31.913683, 37.088097, 36.176250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847189, 36.885632, 36.514755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054575, 0.852167, 0.520416,
		-0.984575, 0.132695, -0.114035,
		-0.166233, -0.506165, 0.846264,
		31.797319, 36.733784, 36.768635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216854, 37.332329, 36.515850>,  <31.913683, 37.088097, 36.176250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216854, 37.332329, 36.515850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485966, 37.196636, 36.778847>,  <31.647432, 37.115223, 36.936646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485966, 37.196636, 36.778847>,  <31.216854, 37.332329, 36.515850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485966, 37.196636, 36.778847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056172, 0.909542, 0.411798,
		-0.737707, -0.240117, 0.630977,
		0.672780, -0.339229, 0.657488,
		31.687799, 37.094868, 36.976093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063816, 37.742054, 36.980213>,  <31.216854, 37.332329, 36.515850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063816, 37.742054, 36.980213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402359, 37.571613, 37.108036>,  <31.605484, 37.469349, 37.184731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402359, 37.571613, 37.108036>,  <31.063816, 37.742054, 36.980213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402359, 37.571613, 37.108036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106952, 0.723716, 0.681760,
		-0.521768, -0.542835, 0.658095,
		0.846357, -0.426105, 0.319554,
		31.656265, 37.443783, 37.203903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066042, 37.773987, 37.794064>,  <31.063816, 37.742054, 36.980213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066042, 37.773987, 37.794064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454624, 37.748955, 37.702534>,  <31.687773, 37.733936, 37.647614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454624, 37.748955, 37.702534>,  <31.066042, 37.773987, 37.794064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454624, 37.748955, 37.702534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219763, 0.600666, 0.768703,
		0.089343, -0.797047, 0.597272,
		0.971454, -0.062580, -0.228826,
		31.746059, 37.730183, 37.633884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427376, 37.433109, 38.383934>,  <31.066042, 37.773987, 37.794064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427376, 37.433109, 38.383934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698452, 37.647327, 38.182369>,  <31.861097, 37.775860, 38.061432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698452, 37.647327, 38.182369>,  <31.427376, 37.433109, 38.383934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698452, 37.647327, 38.182369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376730, 0.335651, 0.863373,
		0.631517, -0.774935, 0.025709,
		0.677688, 0.535550, -0.503911,
		31.901758, 37.807991, 38.031197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092167, 37.311794, 38.757614>,  <31.427376, 37.433109, 38.383934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092167, 37.311794, 38.757614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151669, 37.633255, 38.527130>,  <32.187370, 37.826130, 38.388840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151669, 37.633255, 38.527130>,  <32.092167, 37.311794, 38.757614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151669, 37.633255, 38.527130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331889, 0.508319, 0.794645,
		0.931515, -0.309447, -0.191107,
		0.148758, 0.803651, -0.576209,
		32.196297, 37.874352, 38.354267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864944, 37.560825, 38.939880>,  <32.092167, 37.311794, 38.757614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864944, 37.560825, 38.939880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647263, 37.852055, 38.773148>,  <32.516651, 38.026791, 38.673107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647263, 37.852055, 38.773148>,  <32.864944, 37.560825, 38.939880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647263, 37.852055, 38.773148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169407, 0.581978, 0.795363,
		0.821669, 0.362228, -0.440057,
		-0.544206, 0.728074, -0.416830,
		32.484001, 38.070477, 38.648098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243847, 38.226372, 39.086056>,  <32.864944, 37.560825, 38.939880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243847, 38.226372, 39.086056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857254, 38.305801, 39.020969>,  <32.625298, 38.353458, 38.981918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857254, 38.305801, 39.020969>,  <33.243847, 38.226372, 39.086056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857254, 38.305801, 39.020969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006941, 0.653779, 0.756654,
		0.256632, 0.730165, -0.633245,
		-0.966484, 0.198577, -0.162712,
		32.567310, 38.365376, 38.972157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192364, 38.842785, 39.473412>,  <33.243847, 38.226372, 39.086056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192364, 38.842785, 39.473412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813740, 38.782177, 39.359524>,  <32.586563, 38.745811, 39.291191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813740, 38.782177, 39.359524>,  <33.192364, 38.842785, 39.473412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813740, 38.782177, 39.359524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291213, 0.780933, 0.552574,
		0.138619, 0.605959, -0.783325,
		-0.946562, -0.151517, -0.284716,
		32.529770, 38.736721, 39.274109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921371, 39.451912, 39.055206>,  <33.192364, 38.842785, 39.473412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921371, 39.451912, 39.055206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633492, 39.238132, 39.232475>,  <32.460762, 39.109867, 39.338837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633492, 39.238132, 39.232475>,  <32.921371, 39.451912, 39.055206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633492, 39.238132, 39.232475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123262, 0.726529, 0.675990,
		-0.683256, 0.431883, -0.588759,
		-0.719700, -0.534446, 0.443170,
		32.417583, 39.077797, 39.365425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333603, 39.915096, 39.065178>,  <32.921371, 39.451912, 39.055206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333603, 39.915096, 39.065178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207756, 39.637798, 39.324539>,  <32.132248, 39.471420, 39.480156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207756, 39.637798, 39.324539>,  <32.333603, 39.915096, 39.065178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207756, 39.637798, 39.324539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457596, 0.709244, 0.536263,
		-0.831637, -0.127985, -0.540370,
		-0.314621, -0.693248, 0.648399,
		32.113369, 39.429825, 39.519058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628893, 39.987885, 39.195614>,  <32.333603, 39.915096, 39.065178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628893, 39.987885, 39.195614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754639, 39.789898, 39.519634>,  <31.830086, 39.671104, 39.714046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754639, 39.789898, 39.519634>,  <31.628893, 39.987885, 39.195614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754639, 39.789898, 39.519634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032475, 0.847205, 0.530273,
		-0.948746, -0.193006, 0.250258,
		0.314366, -0.494967, 0.810050,
		31.848948, 39.641407, 39.762650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286146, 40.270283, 39.796070>,  <31.628893, 39.987885, 39.195614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286146, 40.270283, 39.796070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627586, 40.110111, 39.929352>,  <31.832451, 40.014008, 40.009319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627586, 40.110111, 39.929352>,  <31.286146, 40.270283, 39.796070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627586, 40.110111, 39.929352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037560, 0.685271, 0.727319,
		-0.519574, -0.608325, 0.599987,
		0.853600, -0.400431, 0.333200,
		31.883667, 39.989983, 40.029312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142191, 40.265961, 40.570202>,  <31.286146, 40.270283, 39.796070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142191, 40.265961, 40.570202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532766, 40.258232, 40.484230>,  <31.767111, 40.253593, 40.432648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532766, 40.258232, 40.484230>,  <31.142191, 40.265961, 40.570202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532766, 40.258232, 40.484230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162282, 0.722260, 0.672314,
		0.142243, -0.691352, 0.708378,
		0.976438, -0.019325, -0.214931,
		31.825697, 40.252434, 40.419750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511333, 40.283455, 41.269447>,  <31.142191, 40.265961, 40.570202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511333, 40.283455, 41.269447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738796, 40.429398, 40.974556>,  <31.875275, 40.516964, 40.797623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738796, 40.429398, 40.974556>,  <31.511333, 40.283455, 41.269447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738796, 40.429398, 40.974556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093452, 0.861786, 0.498589,
		0.817250, -0.352421, 0.455963,
		0.568656, 0.364861, -0.737229,
		31.909393, 40.538857, 40.753387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889261, 40.763000, 41.577774>,  <31.511333, 40.283455, 41.269447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889261, 40.763000, 41.577774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985273, 40.852100, 41.199829>,  <32.042881, 40.905560, 40.973061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985273, 40.852100, 41.199829>,  <31.889261, 40.763000, 41.577774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985273, 40.852100, 41.199829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306973, 0.905957, 0.291563,
		0.920952, -0.360032, 0.149081,
		0.240033, 0.222752, -0.944862,
		32.057281, 40.918926, 40.916370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519135, 41.049927, 41.626987>,  <31.889261, 40.763000, 41.577774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519135, 41.049927, 41.626987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355518, 41.192989, 41.291187>,  <32.257347, 41.278828, 41.089706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355518, 41.192989, 41.291187>,  <32.519135, 41.049927, 41.626987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355518, 41.192989, 41.291187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283301, 0.924302, 0.255746,
		0.867425, -0.133221, -0.479402,
		-0.409041, 0.357656, -0.839504,
		32.232807, 41.300285, 41.039337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013771, 41.458088, 41.351814>,  <32.519135, 41.049927, 41.626987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013771, 41.458088, 41.351814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672565, 41.585518, 41.186462>,  <32.467842, 41.661976, 41.087250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672565, 41.585518, 41.186462>,  <33.013771, 41.458088, 41.351814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672565, 41.585518, 41.186462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241211, 0.943057, 0.229044,
		0.462808, 0.095665, -0.881282,
		-0.853010, 0.318578, -0.413378,
		32.416664, 41.681091, 41.062450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185287, 42.030849, 40.948174>,  <33.013771, 41.458088, 41.351814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185287, 42.030849, 40.948174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792873, 42.066761, 41.016891>,  <32.557426, 42.088310, 41.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792873, 42.066761, 41.016891>,  <33.185287, 42.030849, 40.948174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792873, 42.066761, 41.016891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142368, 0.935200, 0.324242,
		-0.131552, 0.342550, -0.930244,
		-0.981033, 0.089782, 0.171796,
		32.498562, 42.093697, 41.068432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004436, 42.693214, 40.802483>,  <33.185287, 42.030849, 40.948174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004436, 42.693214, 40.802483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678036, 42.614853, 41.020020>,  <32.482197, 42.567837, 41.150543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678036, 42.614853, 41.020020>,  <33.004436, 42.693214, 40.802483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678036, 42.614853, 41.020020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225981, 0.757840, 0.612055,
		-0.532051, 0.622335, -0.574126,
		-0.815999, -0.195903, 0.543845,
		32.433235, 42.556084, 41.183174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583332, 43.361526, 40.921459>,  <33.004436, 42.693214, 40.802483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583332, 43.361526, 40.921459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513119, 43.098354, 41.214390>,  <32.470989, 42.940449, 41.390148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513119, 43.098354, 41.214390>,  <32.583332, 43.361526, 40.921459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513119, 43.098354, 41.214390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158514, 0.715287, 0.680616,
		-0.971627, 0.235558, -0.021268,
		-0.175538, -0.657934, 0.732331,
		32.460457, 42.900974, 41.434090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000454, 43.506855, 41.392673>,  <32.583332, 43.361526, 40.921459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000454, 43.506855, 41.392673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243011, 43.276272, 41.611755>,  <32.388546, 43.137924, 41.743206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243011, 43.276272, 41.611755>,  <32.000454, 43.506855, 41.392673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243011, 43.276272, 41.611755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061653, 0.720808, 0.690388,
		-0.792768, -0.384882, 0.472636,
		0.606398, -0.576457, 0.547704,
		32.424931, 43.103336, 41.776066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731842, 43.695351, 42.135452>,  <32.000454, 43.506855, 41.392673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731842, 43.695351, 42.135452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080070, 43.502102, 42.172768>,  <32.289005, 43.386154, 42.195156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080070, 43.502102, 42.172768>,  <31.731842, 43.695351, 42.135452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080070, 43.502102, 42.172768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063037, 0.297533, 0.952628,
		-0.487992, -0.823448, 0.289478,
		0.870569, -0.483122, 0.093286,
		32.341240, 43.357166, 42.200752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736132, 43.253754, 42.745697>,  <31.731842, 43.695351, 42.135452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736132, 43.253754, 42.745697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125034, 43.300484, 42.664639>,  <32.358376, 43.328522, 42.616005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125034, 43.300484, 42.664639>,  <31.736132, 43.253754, 42.745697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125034, 43.300484, 42.664639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212754, -0.081639, 0.973689,
		0.097211, -0.989791, -0.104230,
		0.972258, 0.116829, -0.202646,
		32.416710, 43.335533, 42.603844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024273, 42.854218, 43.265018>,  <31.736132, 43.253754, 42.745697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024273, 42.854218, 43.265018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335754, 43.077202, 43.149876>,  <32.522644, 43.210991, 43.080788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335754, 43.077202, 43.149876>,  <32.024273, 42.854218, 43.265018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335754, 43.077202, 43.149876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233565, 0.168260, 0.957672,
		0.582299, -0.812974, 0.000821,
		0.778701, 0.557460, -0.287860,
		32.569366, 43.244438, 43.063519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674709, 42.669601, 43.561588>,  <32.024273, 42.854218, 43.265018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674709, 42.669601, 43.561588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769009, 43.048653, 43.475403>,  <32.825588, 43.276085, 43.423691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769009, 43.048653, 43.475403>,  <32.674709, 42.669601, 43.561588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769009, 43.048653, 43.475403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176352, 0.176321, 0.968407,
		0.955680, -0.266297, -0.125549,
		0.235747, 0.947627, -0.215468,
		32.839733, 43.332939, 43.410763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042500, 42.723682, 44.103611>,  <32.674709, 42.669601, 43.561588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042500, 42.723682, 44.103611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999115, 43.094860, 43.960976>,  <32.973083, 43.317566, 43.875393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999115, 43.094860, 43.960976>,  <33.042500, 42.723682, 44.103611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999115, 43.094860, 43.960976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245174, 0.372596, 0.895021,
		0.963393, 0.009646, -0.267919,
		-0.108459, 0.927944, -0.356591,
		32.966576, 43.373241, 43.854000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751343, 43.155479, 44.254436>,  <33.042500, 42.723682, 44.103611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751343, 43.155479, 44.254436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408314, 43.359604, 44.228649>,  <33.202496, 43.482079, 44.213177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408314, 43.359604, 44.228649>,  <33.751343, 43.155479, 44.254436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408314, 43.359604, 44.228649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124796, 0.328010, 0.936395,
		0.498998, 0.794980, -0.344976,
		-0.857570, 0.510311, -0.064466,
		33.151043, 43.512695, 44.209309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971836, 43.624893, 44.740719>,  <33.751343, 43.155479, 44.254436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971836, 43.624893, 44.740719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582863, 43.623562, 44.647457>,  <33.349480, 43.622765, 44.591499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582863, 43.623562, 44.647457>,  <33.971836, 43.624893, 44.740719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582863, 43.623562, 44.647457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232631, 0.082128, 0.969091,
		0.015922, 0.996616, -0.080638,
		-0.972435, -0.003329, -0.233151,
		33.291134, 43.622562, 44.577511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643276, 44.313457, 44.973724>,  <33.971836, 43.624893, 44.740719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643276, 44.313457, 44.973724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371510, 44.021851, 44.940411>,  <33.208450, 43.846886, 44.920422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371510, 44.021851, 44.940411>,  <33.643276, 44.313457, 44.973724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371510, 44.021851, 44.940411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297323, 0.169750, 0.939566,
		-0.670817, 0.663117, -0.332083,
		-0.679414, -0.729013, -0.083288,
		33.167686, 43.803146, 44.915424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109375, 44.623199, 45.340214>,  <33.643276, 44.313457, 44.973724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109375, 44.623199, 45.340214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013344, 44.235432, 45.319847>,  <32.955727, 44.002769, 45.307629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013344, 44.235432, 45.319847>,  <33.109375, 44.623199, 45.340214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013344, 44.235432, 45.319847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283352, 0.019815, 0.958811,
		-0.928480, 0.244613, -0.279444,
		-0.240075, -0.969418, -0.050914,
		32.941322, 43.944607, 45.304573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476974, 44.548328, 45.687061>,  <33.109375, 44.623199, 45.340214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476974, 44.548328, 45.687061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655693, 44.190495, 45.683121>,  <32.762924, 43.975796, 45.680756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655693, 44.190495, 45.683121>,  <32.476974, 44.548328, 45.687061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655693, 44.190495, 45.683121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252974, -0.136890, 0.957740,
		-0.858123, -0.425425, -0.287468,
		0.446798, -0.894581, -0.009847,
		32.789734, 43.922119, 45.680168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990952, 43.996269, 45.831371>,  <32.476974, 44.548328, 45.687061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990952, 43.996269, 45.831371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354992, 43.866009, 45.933876>,  <32.573418, 43.787853, 45.995377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354992, 43.866009, 45.933876>,  <31.990952, 43.996269, 45.831371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354992, 43.866009, 45.933876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312203, -0.132212, 0.940771,
		-0.272480, -0.936202, -0.221994,
		0.910101, -0.325648, 0.256260,
		32.628021, 43.768314, 46.010754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966667, 43.324726, 46.094349>,  <31.990952, 43.996269, 45.831371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966667, 43.324726, 46.094349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273075, 43.526058, 46.254284>,  <32.456921, 43.646858, 46.350246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273075, 43.526058, 46.254284>,  <31.966667, 43.324726, 46.094349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273075, 43.526058, 46.254284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214572, -0.386122, 0.897145,
		0.605945, -0.773027, -0.187778,
		0.766022, 0.503329, 0.399838,
		32.502880, 43.677055, 46.374237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436821, 42.888489, 46.440079>,  <31.966667, 43.324726, 46.094349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436821, 42.888489, 46.440079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452293, 43.250938, 46.608574>,  <32.461578, 43.468407, 46.709671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452293, 43.250938, 46.608574>,  <32.436821, 42.888489, 46.440079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452293, 43.250938, 46.608574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359964, -0.380616, 0.851797,
		0.932164, -0.184577, 0.311450,
		0.038679, 0.906125, 0.421238,
		32.463898, 43.522778, 46.734943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861725, 42.973652, 47.163536>,  <32.436821, 42.888489, 46.440079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861725, 42.973652, 47.163536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624130, 43.294991, 47.180634>,  <32.481575, 43.487793, 47.190891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624130, 43.294991, 47.180634>,  <32.861725, 42.973652, 47.163536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624130, 43.294991, 47.180634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220128, -0.213411, 0.951840,
		0.773776, 0.555965, 0.303600,
		-0.593982, 0.803342, 0.042748,
		32.445934, 43.535992, 47.193459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910763, 43.344765, 47.826302>,  <32.861725, 42.973652, 47.163536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910763, 43.344765, 47.826302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545071, 43.426151, 47.686138>,  <32.325657, 43.474983, 47.602039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545071, 43.426151, 47.686138>,  <32.910763, 43.344765, 47.826302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545071, 43.426151, 47.686138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397567, -0.283437, 0.872699,
		0.078248, 0.937158, 0.340019,
		-0.914231, 0.203468, -0.350405,
		32.270802, 43.487190, 47.581017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518959, 43.717907, 47.672672>,  <32.910763, 43.344765, 47.826302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518959, 43.717907, 47.672672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413181, 43.686859, 48.057182>,  <33.349716, 43.668228, 48.287888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413181, 43.686859, 48.057182>,  <33.518959, 43.717907, 47.672672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413181, 43.686859, 48.057182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822079, 0.503012, 0.266770,
		-0.504239, 0.860787, -0.069205,
		-0.264443, -0.077623, 0.961272,
		33.333847, 43.663570, 48.345566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119896, 43.440186, 47.940235>,  <33.518959, 43.717907, 47.672672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119896, 43.440186, 47.940235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924908, 43.291023, 47.624435>,  <33.807915, 43.201527, 47.434956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924908, 43.291023, 47.624435>,  <34.119896, 43.440186, 47.940235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924908, 43.291023, 47.624435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240633, 0.811815, -0.532027,
		0.839327, -0.449326, -0.306000,
		-0.487469, -0.372911, -0.789501,
		33.778667, 43.179150, 47.387585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586304, 43.454330, 47.222626>,  <34.119896, 43.440186, 47.940235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586304, 43.454330, 47.222626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186604, 43.469723, 47.220654>,  <33.946785, 43.478958, 47.219471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186604, 43.469723, 47.220654>,  <34.586304, 43.454330, 47.222626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186604, 43.469723, 47.220654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036436, 0.887284, -0.459781,
		-0.013322, -0.459615, -0.888019,
		-0.999247, 0.038481, -0.004926,
		33.886829, 43.481266, 47.219177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506268, 43.269066, 46.570080>,  <34.586304, 43.454330, 47.222626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506268, 43.269066, 46.570080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207348, 43.145374, 46.805336>,  <34.027996, 43.071159, 46.946491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207348, 43.145374, 46.805336>,  <34.506268, 43.269066, 46.570080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207348, 43.145374, 46.805336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152153, -0.781966, -0.604465,
		0.646828, -0.541207, 0.537316,
		-0.747304, -0.309231, 0.588144,
		33.983158, 43.052605, 46.981781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601177, 42.550655, 46.928791>,  <34.506268, 43.269066, 46.570080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601177, 42.550655, 46.928791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224915, 42.646114, 46.832279>,  <33.999157, 42.703388, 46.774372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224915, 42.646114, 46.832279>,  <34.601177, 42.550655, 46.928791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224915, 42.646114, 46.832279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041560, -0.786636, -0.616017,
		-0.336812, -0.569431, 0.749870,
		-0.940654, 0.238647, -0.241283,
		33.942719, 42.717709, 46.759895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187901, 41.991821, 47.095444>,  <34.601177, 42.550655, 46.928791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187901, 41.991821, 47.095444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070442, 42.211670, 46.782600>,  <33.999969, 42.343578, 46.594894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070442, 42.211670, 46.782600>,  <34.187901, 41.991821, 47.095444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070442, 42.211670, 46.782600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009834, -0.816393, -0.577413,
		-0.955865, -0.177244, 0.234322,
		-0.293642, 0.549624, -0.782105,
		33.982349, 42.376556, 46.547970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574211, 41.707790, 46.765041>,  <34.187901, 41.991821, 47.095444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574211, 41.707790, 46.765041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789658, 41.913284, 46.497921>,  <33.918926, 42.036579, 46.337646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789658, 41.913284, 46.497921>,  <33.574211, 41.707790, 46.765041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789658, 41.913284, 46.497921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136496, -0.835337, -0.532524,
		-0.831419, 0.195676, -0.520052,
		0.538621, 0.513735, -0.667806,
		33.951244, 42.067406, 46.297581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181419, 41.622425, 46.061817>,  <33.574211, 41.707790, 46.765041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181419, 41.622425, 46.061817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567642, 41.709351, 46.004597>,  <33.799377, 41.761505, 45.970264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567642, 41.709351, 46.004597>,  <33.181419, 41.622425, 46.061817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567642, 41.709351, 46.004597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121587, -0.863001, -0.490354,
		-0.230015, 0.456074, -0.859703,
		0.965562, 0.217317, -0.143051,
		33.857311, 41.774548, 45.961681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308918, 41.632282, 45.369675>,  <33.181419, 41.622425, 46.061817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308918, 41.632282, 45.369675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667980, 41.559460, 45.530212>,  <33.883415, 41.515766, 45.626534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667980, 41.559460, 45.530212>,  <33.308918, 41.632282, 45.369675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667980, 41.559460, 45.530212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079134, -0.829299, -0.553173,
		0.433543, 0.528317, -0.730015,
		0.897651, -0.182056, 0.401345,
		33.937275, 41.504845, 45.650616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730362, 41.336647, 44.769718>,  <33.308918, 41.632282, 45.369675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730362, 41.336647, 44.769718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911438, 41.238827, 45.112709>,  <34.020084, 41.180134, 45.318504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911438, 41.238827, 45.112709>,  <33.730362, 41.336647, 44.769718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911438, 41.238827, 45.112709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344124, -0.839238, -0.421021,
		0.822587, 0.485671, -0.295762,
		0.452692, -0.244548, 0.857477,
		34.047245, 41.165462, 45.369953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340385, 41.064415, 44.517231>,  <33.730362, 41.336647, 44.769718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340385, 41.064415, 44.517231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265858, 40.926109, 44.885086>,  <34.221142, 40.843128, 45.105801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265858, 40.926109, 44.885086>,  <34.340385, 41.064415, 44.517231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265858, 40.926109, 44.885086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354980, -0.896488, -0.265138,
		0.916118, 0.277051, 0.289775,
		-0.186323, -0.345762, 0.919637,
		34.209961, 40.822380, 45.160976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894070, 40.642967, 44.629818>,  <34.340385, 41.064415, 44.517231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894070, 40.642967, 44.629818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603542, 40.544060, 44.886353>,  <34.429226, 40.484715, 45.040276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603542, 40.544060, 44.886353>,  <34.894070, 40.642967, 44.629818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603542, 40.544060, 44.886353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223411, -0.967318, -0.119935,
		0.650035, 0.056171, 0.757825,
		-0.726321, -0.247268, 0.641340,
		34.385647, 40.469879, 45.078754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099232, 40.064777, 44.857769>,  <34.894070, 40.642967, 44.629818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099232, 40.064777, 44.857769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711395, 40.044540, 44.953541>,  <34.478691, 40.032398, 45.011002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711395, 40.044540, 44.953541>,  <35.099232, 40.064777, 44.857769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711395, 40.044540, 44.953541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050633, -0.998699, -0.005976,
		0.239418, 0.006329, 0.970896,
		-0.969595, -0.050591, 0.239427,
		34.420517, 40.029362, 45.025368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016853, 39.512436, 45.351635>,  <35.099232, 40.064777, 44.857769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016853, 39.512436, 45.351635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646755, 39.582512, 45.217037>,  <34.424698, 39.624557, 45.136276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646755, 39.582512, 45.217037>,  <35.016853, 39.512436, 45.351635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646755, 39.582512, 45.217037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134852, -0.980937, -0.139918,
		-0.354595, -0.084081, 0.931232,
		-0.925245, 0.175193, -0.336497,
		34.369183, 39.635071, 45.116089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602428, 39.080925, 45.787334>,  <35.016853, 39.512436, 45.351635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602428, 39.080925, 45.787334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374527, 39.167492, 45.470211>,  <34.237785, 39.219433, 45.279938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374527, 39.167492, 45.470211>,  <34.602428, 39.080925, 45.787334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374527, 39.167492, 45.470211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264446, -0.961674, -0.072469,
		-0.778105, 0.168366, 0.605149,
		-0.569755, 0.216418, -0.792807,
		34.203602, 39.232418, 45.232368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994194, 38.670975, 45.950161>,  <34.602428, 39.080925, 45.787334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994194, 38.670975, 45.950161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019875, 38.759113, 45.560837>,  <34.035282, 38.811996, 45.327244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019875, 38.759113, 45.560837>,  <33.994194, 38.670975, 45.950161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019875, 38.759113, 45.560837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227814, -0.946328, -0.229268,
		-0.971586, 0.236452, -0.010556,
		0.064200, 0.220349, -0.973306,
		34.039135, 38.825218, 45.268845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528336, 38.260998, 45.723465>,  <33.994194, 38.670975, 45.950161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528336, 38.260998, 45.723465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711514, 38.329792, 45.374592>,  <33.821419, 38.371067, 45.165268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711514, 38.329792, 45.374592>,  <33.528336, 38.260998, 45.723465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711514, 38.329792, 45.374592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146246, -0.953166, -0.264737,
		-0.876870, 0.248789, -0.411343,
		0.457942, 0.171983, -0.872187,
		33.848896, 38.381386, 45.112934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195457, 37.858585, 45.218830>,  <33.528336, 38.260998, 45.723465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195457, 37.858585, 45.218830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561413, 37.899948, 45.062737>,  <33.780987, 37.924767, 44.969078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561413, 37.899948, 45.062737>,  <33.195457, 37.858585, 45.218830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561413, 37.899948, 45.062737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023990, -0.951005, -0.308244,
		-0.402990, 0.291371, -0.867584,
		0.914890, 0.103406, -0.390236,
		33.835880, 37.930969, 44.945667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169781, 37.477875, 44.629665>,  <33.195457, 37.858585, 45.218830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169781, 37.477875, 44.629665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560223, 37.562347, 44.650127>,  <33.794487, 37.613033, 44.662403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560223, 37.562347, 44.650127>,  <33.169781, 37.477875, 44.629665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560223, 37.562347, 44.650127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209493, -0.852110, -0.479606,
		-0.057696, 0.478863, -0.875992,
		0.976106, 0.211186, 0.051155,
		33.853054, 37.625702, 44.665474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327007, 37.652874, 44.016800>,  <33.169781, 37.477875, 44.629665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327007, 37.652874, 44.016800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644981, 37.513355, 44.215363>,  <33.835766, 37.429642, 44.334499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644981, 37.513355, 44.215363>,  <33.327007, 37.652874, 44.016800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644981, 37.513355, 44.215363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030735, -0.794007, -0.607132,
		0.605915, 0.497888, -0.620464,
		0.794935, -0.348800, 0.496403,
		33.883461, 37.408714, 44.364285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848789, 37.458595, 43.487370>,  <33.327007, 37.652874, 44.016800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848789, 37.458595, 43.487370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923420, 37.260899, 43.826996>,  <33.968197, 37.142281, 44.030773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923420, 37.260899, 43.826996>,  <33.848789, 37.458595, 43.487370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923420, 37.260899, 43.826996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033196, -0.860578, -0.508236,
		0.981880, 0.123010, -0.144157,
		0.186576, -0.494241, 0.849067,
		33.979393, 37.112625, 44.081715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379738, 37.020153, 43.198105>,  <33.848789, 37.458595, 43.487370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379738, 37.020153, 43.198105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255257, 36.869286, 43.547024>,  <34.180569, 36.778767, 43.756374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255257, 36.869286, 43.547024>,  <34.379738, 37.020153, 43.198105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255257, 36.869286, 43.547024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048195, -0.910428, -0.410851,
		0.949121, -0.169898, 0.265148,
		-0.311201, -0.377169, 0.872294,
		34.161896, 36.756134, 43.808712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771091, 36.445827, 43.229469>,  <34.379738, 37.020153, 43.198105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771091, 36.445827, 43.229469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466949, 36.403706, 43.485836>,  <34.284466, 36.378433, 43.639656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466949, 36.403706, 43.485836>,  <34.771091, 36.445827, 43.229469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466949, 36.403706, 43.485836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286488, -0.831220, -0.476442,
		0.582913, -0.545880, 0.601854,
		-0.760353, -0.105301, 0.640917,
		34.238842, 36.372116, 43.678112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757500, 35.734158, 43.499252>,  <34.771091, 36.445827, 43.229469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757500, 35.734158, 43.499252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397182, 35.907803, 43.503712>,  <34.180992, 36.011990, 43.506386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397182, 35.907803, 43.503712>,  <34.757500, 35.734158, 43.499252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397182, 35.907803, 43.503712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389843, -0.797089, -0.461164,
		-0.191309, -0.419759, 0.887245,
		-0.900790, 0.434111, 0.011150,
		34.126945, 36.038036, 43.507057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256126, 35.243275, 43.680851>,  <34.757500, 35.734158, 43.499252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256126, 35.243275, 43.680851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009563, 35.506550, 43.507954>,  <33.861626, 35.664516, 43.404217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009563, 35.506550, 43.507954>,  <34.256126, 35.243275, 43.680851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009563, 35.506550, 43.507954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486822, -0.749990, -0.447794,
		-0.618911, -0.065596, 0.782718,
		-0.616404, 0.658189, -0.432243,
		33.824642, 35.704006, 43.378281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932480, 34.818455, 43.342979>,  <34.256126, 35.243275, 43.680851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932480, 34.818455, 43.342979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732609, 35.144405, 43.225471>,  <33.612686, 35.339977, 43.154968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732609, 35.144405, 43.225471>,  <33.932480, 34.818455, 43.342979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732609, 35.144405, 43.225471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615463, -0.572636, -0.541566,
		-0.609529, -0.089808, 0.787660,
		-0.499680, 0.814875, -0.293765,
		33.582706, 35.388866, 43.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316063, 34.676605, 43.413204>,  <33.932480, 34.818455, 43.342979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316063, 34.676605, 43.413204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315807, 34.954926, 43.125912>,  <33.315655, 35.121918, 42.953537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315807, 34.954926, 43.125912>,  <33.316063, 34.676605, 43.413204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315807, 34.954926, 43.125912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603768, -0.572815, -0.554389,
		-0.797160, 0.433287, 0.420473,
		-0.000644, 0.695805, -0.718230,
		33.315613, 35.163666, 42.910442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637501, 34.707249, 43.290180>,  <33.316063, 34.676605, 43.413204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637501, 34.707249, 43.290180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806522, 34.877239, 42.969971>,  <32.907936, 34.979233, 42.777843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806522, 34.877239, 42.969971>,  <32.637501, 34.707249, 43.290180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806522, 34.877239, 42.969971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529693, -0.600915, -0.598604,
		-0.735441, 0.676976, -0.028812,
		0.422554, 0.424977, -0.800527,
		32.933289, 35.004734, 42.729813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185574, 34.672981, 42.726246>,  <32.637501, 34.707249, 43.290180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185574, 34.672981, 42.726246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527176, 34.727448, 42.525391>,  <32.732136, 34.760128, 42.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527176, 34.727448, 42.525391>,  <32.185574, 34.672981, 42.726246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527176, 34.727448, 42.525391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378800, -0.498858, -0.779520,
		-0.356636, 0.855921, -0.374447,
		0.854003, 0.136164, -0.502134,
		32.783379, 34.768295, 42.374752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025154, 34.940155, 42.017113>,  <32.185574, 34.672981, 42.726246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025154, 34.940155, 42.017113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379776, 34.755955, 41.999435>,  <32.592548, 34.645435, 41.988831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379776, 34.755955, 41.999435>,  <32.025154, 34.940155, 42.017113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379776, 34.755955, 41.999435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281742, -0.461696, -0.841105,
		0.366930, 0.758138, -0.539063,
		0.886557, -0.460503, -0.044189,
		32.645744, 34.617805, 41.986179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032055, 34.805901, 41.269775>,  <32.025154, 34.940155, 42.017113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032055, 34.805901, 41.269775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319782, 34.569542, 41.415878>,  <32.492420, 34.427727, 41.503540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319782, 34.569542, 41.415878>,  <32.032055, 34.805901, 41.269775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319782, 34.569542, 41.415878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221543, -0.693470, -0.685579,
		0.658402, 0.412233, -0.629739,
		0.719323, -0.590901, 0.365255,
		32.535580, 34.392273, 41.525455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405201, 34.664898, 40.630482>,  <32.032055, 34.805901, 41.269775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405201, 34.664898, 40.630482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483414, 34.393650, 40.913868>,  <32.530342, 34.230900, 41.083900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483414, 34.393650, 40.913868>,  <32.405201, 34.664898, 40.630482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483414, 34.393650, 40.913868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090611, -0.731809, -0.675459,
		0.976502, 0.067880, -0.204538,
		0.195533, -0.678120, 0.708463,
		32.542072, 34.190212, 41.126408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857018, 34.165283, 40.317986>,  <32.405201, 34.664898, 40.630482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857018, 34.165283, 40.317986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706169, 33.954472, 40.622620>,  <32.615658, 33.827984, 40.805401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706169, 33.954472, 40.622620>,  <32.857018, 34.165283, 40.317986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706169, 33.954472, 40.622620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056907, -0.807564, -0.587028,
		0.924412, -0.264723, 0.274561,
		-0.377126, -0.527031, 0.761587,
		32.593033, 33.796364, 40.851097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307331, 33.504978, 40.363293>,  <32.857018, 34.165283, 40.317986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307331, 33.504978, 40.363293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952126, 33.462791, 40.542316>,  <32.739002, 33.437481, 40.649731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952126, 33.462791, 40.542316>,  <33.307331, 33.504978, 40.363293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952126, 33.462791, 40.542316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212569, -0.768928, -0.602962,
		0.407728, -0.630576, 0.660402,
		-0.888016, -0.105464, 0.447555,
		32.685722, 33.431152, 40.676582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245419, 32.811451, 40.449806>,  <33.307331, 33.504978, 40.363293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245419, 32.811451, 40.449806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882305, 32.978161, 40.430904>,  <32.664436, 33.078186, 40.419563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882305, 32.978161, 40.430904>,  <33.245419, 32.811451, 40.449806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882305, 32.978161, 40.430904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231665, -0.592112, -0.771838,
		-0.349659, -0.689715, 0.634060,
		-0.907783, 0.416770, -0.047254,
		32.609970, 33.103191, 40.416729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959095, 32.215591, 40.629246>,  <33.245419, 32.811451, 40.449806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959095, 32.215591, 40.629246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728275, 32.493862, 40.458111>,  <32.589783, 32.660824, 40.355431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728275, 32.493862, 40.458111>,  <32.959095, 32.215591, 40.629246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728275, 32.493862, 40.458111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258261, -0.652405, -0.712509,
		-0.774801, -0.300659, 0.556136,
		-0.577048, 0.695681, -0.427836,
		32.555161, 32.702568, 40.329762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328671, 31.829412, 40.399685>,  <32.959095, 32.215591, 40.629246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328671, 31.829412, 40.399685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340553, 32.165047, 40.182407>,  <32.347683, 32.366428, 40.052040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340553, 32.165047, 40.182407>,  <32.328671, 31.829412, 40.399685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340553, 32.165047, 40.182407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242187, -0.521195, -0.818352,
		-0.969775, 0.155866, 0.187731,
		0.029709, 0.839084, -0.543191,
		32.349464, 32.416771, 40.019451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566011, 31.924995, 40.071236>,  <32.328671, 31.829412, 40.399685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566011, 31.924995, 40.071236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812300, 32.166794, 39.869057>,  <31.960073, 32.311874, 39.747749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812300, 32.166794, 39.869057>,  <31.566011, 31.924995, 40.071236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812300, 32.166794, 39.869057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424294, -0.286169, -0.859117,
		-0.663974, 0.743434, 0.080283,
		0.615722, 0.604495, -0.505443,
		31.997017, 32.348141, 39.717422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161072, 32.366344, 39.628330>,  <31.566011, 31.924995, 40.071236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161072, 32.366344, 39.628330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526194, 32.402321, 39.468979>,  <31.745266, 32.423908, 39.373367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526194, 32.402321, 39.468979>,  <31.161072, 32.366344, 39.628330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526194, 32.402321, 39.468979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385961, -0.128915, -0.913463,
		-0.133513, 0.987569, -0.082961,
		0.912802, 0.089940, -0.398375,
		31.800034, 32.429302, 39.349468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021629, 32.603333, 38.950314>,  <31.161072, 32.366344, 39.628330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021629, 32.603333, 38.950314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406994, 32.505123, 38.907318>,  <31.638212, 32.446198, 38.881519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406994, 32.505123, 38.907318>,  <31.021629, 32.603333, 38.950314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406994, 32.505123, 38.907318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164388, -0.224538, -0.960499,
		0.211692, 0.943027, -0.256685,
		0.963412, -0.245526, -0.107490,
		31.696018, 32.431465, 38.875072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267809, 33.085262, 38.390949>,  <31.021629, 32.603333, 38.950314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267809, 33.085262, 38.390949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539984, 32.792179, 38.395660>,  <31.703289, 32.616329, 38.398487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539984, 32.792179, 38.395660>,  <31.267809, 33.085262, 38.390949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539984, 32.792179, 38.395660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191722, -0.193505, -0.962184,
		0.707280, 0.652451, -0.272144,
		0.680439, -0.732710, 0.011773,
		31.744116, 32.572365, 38.399193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718250, 33.166130, 37.822411>,  <31.267809, 33.085262, 38.390949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718250, 33.166130, 37.822411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737270, 32.779011, 37.921284>,  <31.748682, 32.546738, 37.980606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737270, 32.779011, 37.921284>,  <31.718250, 33.166130, 37.822411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737270, 32.779011, 37.921284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502929, -0.237002, -0.831200,
		0.863019, -0.084788, -0.498006,
		0.047552, -0.967802, 0.247179,
		31.751535, 32.488670, 37.995438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952749, 32.824913, 37.222759>,  <31.718250, 33.166130, 37.822411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952749, 32.824913, 37.222759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777020, 32.543121, 37.445724>,  <31.671581, 32.374046, 37.579502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777020, 32.543121, 37.445724>,  <31.952749, 32.824913, 37.222759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777020, 32.543121, 37.445724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418038, -0.388894, -0.820978,
		0.795135, -0.593693, -0.123650,
		-0.439322, -0.704479, 0.557409,
		31.645224, 32.331779, 37.612946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219833, 32.210178, 37.010429>,  <31.952749, 32.824913, 37.222759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219833, 32.210178, 37.010429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847088, 32.187923, 37.153831>,  <31.623440, 32.174572, 37.239872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847088, 32.187923, 37.153831>,  <32.219833, 32.210178, 37.010429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847088, 32.187923, 37.153831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335308, -0.245258, -0.909625,
		0.138537, -0.967860, 0.209892,
		-0.931867, -0.055638, 0.358509,
		31.567528, 32.171230, 37.261383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476711, 32.882862, 36.653534>,  <32.219833, 32.210178, 37.010429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476711, 32.882862, 36.653534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742283, 32.611294, 36.528145>,  <32.901627, 32.448353, 36.452911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742283, 32.611294, 36.528145>,  <32.476711, 32.882862, 36.653534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742283, 32.611294, 36.528145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619274, 0.264215, 0.739385,
		-0.419157, -0.685027, 0.595856,
		0.663933, -0.678917, -0.313472,
		32.941463, 32.407619, 36.434105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924145, 32.887508, 37.254456>,  <32.476711, 32.882862, 36.653534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924145, 32.887508, 37.254456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122803, 32.639587, 37.011414>,  <33.241997, 32.490837, 36.865589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122803, 32.639587, 37.011414>,  <32.924145, 32.887508, 37.254456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122803, 32.639587, 37.011414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724810, -0.088951, 0.683183,
		-0.477484, -0.779703, 0.405059,
		0.496649, -0.619800, -0.607609,
		33.271797, 32.453648, 36.829132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201633, 32.319263, 37.672958>,  <32.924145, 32.887508, 37.254456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201633, 32.319263, 37.672958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427505, 32.340557, 37.343521>,  <33.563030, 32.353333, 37.145859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427505, 32.340557, 37.343521>,  <33.201633, 32.319263, 37.672958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427505, 32.340557, 37.343521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825307, -0.037260, 0.563454,
		-0.000693, -0.997886, -0.064972,
		0.564684, 0.053232, -0.823588,
		33.596912, 32.356525, 37.096443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771439, 31.849571, 37.660656>,  <33.201633, 32.319263, 37.672958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771439, 31.849571, 37.660656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875980, 32.140648, 37.406990>,  <33.938705, 32.315292, 37.254791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875980, 32.140648, 37.406990>,  <33.771439, 31.849571, 37.660656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875980, 32.140648, 37.406990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833048, 0.161820, 0.529003,
		0.487572, -0.666542, -0.563911,
		0.261351, 0.727693, -0.634160,
		33.954384, 32.358955, 37.216743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498203, 31.640642, 37.650318>,  <33.771439, 31.849571, 37.660656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498203, 31.640642, 37.650318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441216, 32.010914, 37.510136>,  <34.407024, 32.233078, 37.426025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441216, 32.010914, 37.510136>,  <34.498203, 31.640642, 37.650318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441216, 32.010914, 37.510136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800854, 0.315879, 0.508777,
		0.581667, -0.208180, -0.786337,
		-0.142470, 0.925679, -0.350458,
		34.398476, 32.288616, 37.404999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138031, 31.891556, 37.430946>,  <34.498203, 31.640642, 37.650318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138031, 31.891556, 37.430946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943653, 32.239697, 37.462811>,  <34.827026, 32.448582, 37.481930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943653, 32.239697, 37.462811>,  <35.138031, 31.891556, 37.430946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943653, 32.239697, 37.462811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808661, 0.413167, 0.418761,
		0.331555, 0.267915, -0.904596,
		-0.485942, 0.870353, 0.079665,
		34.797871, 32.500801, 37.486710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585682, 32.517658, 37.234901>,  <35.138031, 31.891556, 37.430946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585682, 32.517658, 37.234901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286289, 32.653767, 37.462582>,  <35.106655, 32.735432, 37.599190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286289, 32.653767, 37.462582>,  <35.585682, 32.517658, 37.234901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286289, 32.653767, 37.462582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653924, 0.521419, 0.548185,
		-0.110263, 0.782521, -0.612783,
		-0.748482, 0.340269, 0.569202,
		35.061745, 32.755848, 37.633343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714180, 33.325516, 37.293419>,  <35.585682, 32.517658, 37.234901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714180, 33.325516, 37.293419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481018, 33.213047, 37.598358>,  <35.341122, 33.145565, 37.781322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481018, 33.213047, 37.598358>,  <35.714180, 33.325516, 37.293419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481018, 33.213047, 37.598358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512741, 0.600550, 0.613544,
		-0.630335, 0.748521, -0.205895,
		-0.582901, -0.281167, 0.762346,
		35.306149, 33.128696, 37.827061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543690, 33.896446, 37.805485>,  <35.714180, 33.325516, 37.293419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543690, 33.896446, 37.805485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448563, 33.598183, 38.054462>,  <35.391487, 33.419224, 38.203850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448563, 33.598183, 38.054462>,  <35.543690, 33.896446, 37.805485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448563, 33.598183, 38.054462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270741, 0.564545, 0.779736,
		-0.932814, 0.353956, 0.067621,
		-0.237817, -0.745657, 0.622446,
		35.377216, 33.374485, 38.241196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081554, 34.170288, 38.291710>,  <35.543690, 33.896446, 37.805485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081554, 34.170288, 38.291710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240948, 33.848167, 38.467304>,  <35.336582, 33.654896, 38.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240948, 33.848167, 38.467304>,  <35.081554, 34.170288, 38.291710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240948, 33.848167, 38.467304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022630, 0.487113, 0.873046,
		-0.916897, -0.337959, 0.212330,
		0.398483, -0.805298, 0.438984,
		35.360493, 33.606579, 38.598999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776066, 34.218685, 38.966156>,  <35.081554, 34.170288, 38.291710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776066, 34.218685, 38.966156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076630, 33.956970, 39.000309>,  <35.256966, 33.799942, 39.020802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076630, 33.956970, 39.000309>,  <34.776066, 34.218685, 38.966156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076630, 33.956970, 39.000309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202286, 0.351588, 0.914038,
		-0.628067, -0.669543, 0.396540,
		0.751407, -0.654292, 0.085381,
		35.302052, 33.760681, 39.025925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664066, 33.925644, 39.602028>,  <34.776066, 34.218685, 38.966156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664066, 33.925644, 39.602028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048935, 33.844875, 39.528866>,  <35.279858, 33.796413, 39.484970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048935, 33.844875, 39.528866>,  <34.664066, 33.925644, 39.602028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048935, 33.844875, 39.528866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238368, 0.298797, 0.924068,
		-0.131935, -0.932710, 0.335625,
		0.962172, -0.201919, -0.182906,
		35.337585, 33.784298, 39.473995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885105, 33.567200, 40.084278>,  <34.664066, 33.925644, 39.602028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885105, 33.567200, 40.084278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234184, 33.722145, 39.965389>,  <35.443634, 33.815113, 39.894054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234184, 33.722145, 39.965389>,  <34.885105, 33.567200, 40.084278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234184, 33.722145, 39.965389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240899, 0.187886, 0.952190,
		0.424692, -0.902577, 0.070652,
		0.872700, 0.387368, -0.297224,
		35.495995, 33.838356, 39.876221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417336, 33.287346, 40.492714>,  <34.885105, 33.567200, 40.084278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417336, 33.287346, 40.492714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579651, 33.613293, 40.327145>,  <35.677040, 33.808861, 40.227802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579651, 33.613293, 40.327145>,  <35.417336, 33.287346, 40.492714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579651, 33.613293, 40.327145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319372, 0.297914, 0.899583,
		0.856354, -0.497230, -0.139357,
		0.405784, 0.814868, -0.413921,
		35.701385, 33.857754, 40.202969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047489, 33.345459, 40.884392>,  <35.417336, 33.287346, 40.492714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047489, 33.345459, 40.884392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008438, 33.699650, 40.702671>,  <35.985008, 33.912167, 40.593639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008438, 33.699650, 40.702671>,  <36.047489, 33.345459, 40.884392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008438, 33.699650, 40.702671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380476, 0.455017, 0.805107,
		0.919623, -0.094251, -0.381327,
		-0.097628, 0.885481, -0.454304,
		35.979149, 33.965294, 40.566380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728451, 33.620110, 40.784084>,  <36.047489, 33.345459, 40.884392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728451, 33.620110, 40.784084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444851, 33.900352, 40.816269>,  <36.274693, 34.068497, 40.835579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444851, 33.900352, 40.816269>,  <36.728451, 33.620110, 40.784084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444851, 33.900352, 40.816269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443894, 0.354700, 0.822888,
		0.547981, 0.619142, -0.562476,
		-0.708995, 0.700608, 0.080465,
		36.232151, 34.110535, 40.840408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971725, 34.189991, 41.190353>,  <36.728451, 33.620110, 40.784084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971725, 34.189991, 41.190353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587521, 34.300133, 41.206348>,  <36.356998, 34.366219, 41.215946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587521, 34.300133, 41.206348>,  <36.971725, 34.189991, 41.190353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587521, 34.300133, 41.206348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152126, 0.399361, 0.904084,
		0.232978, 0.874465, -0.425479,
		-0.960510, 0.275358, 0.039987,
		36.299366, 34.382740, 41.218346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053192, 34.825153, 41.518509>,  <36.971725, 34.189991, 41.190353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053192, 34.825153, 41.518509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661747, 34.762012, 41.571274>,  <36.426880, 34.724129, 41.602932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661747, 34.762012, 41.571274>,  <37.053192, 34.825153, 41.518509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661747, 34.762012, 41.571274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024172, 0.548551, 0.835768,
		-0.204290, 0.821081, -0.533002,
		-0.978612, -0.157856, 0.131911,
		36.368164, 34.714657, 41.610847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668083, 35.466644, 41.677025>,  <37.053192, 34.825153, 41.518509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668083, 35.466644, 41.677025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429489, 35.188557, 41.837463>,  <36.286331, 35.021706, 41.933727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429489, 35.188557, 41.837463>,  <36.668083, 35.466644, 41.677025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429489, 35.188557, 41.837463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010050, 0.493225, 0.869844,
		-0.802559, 0.522882, -0.287216,
		-0.596488, -0.695214, 0.401097,
		36.250542, 34.979992, 41.957794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143456, 35.759514, 41.874138>,  <36.668083, 35.466644, 41.677025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143456, 35.759514, 41.874138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186481, 35.424469, 42.088364>,  <36.212296, 35.223442, 42.216900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186481, 35.424469, 42.088364>,  <36.143456, 35.759514, 41.874138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186481, 35.424469, 42.088364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037676, 0.541739, 0.839702,
		-0.993484, -0.070145, 0.089830,
		0.107565, -0.837614, 0.535567,
		36.218750, 35.173183, 42.249035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615749, 35.758457, 42.392715>,  <36.143456, 35.759514, 41.874138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615749, 35.758457, 42.392715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878761, 35.501732, 42.550560>,  <36.036568, 35.347694, 42.645267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878761, 35.501732, 42.550560>,  <35.615749, 35.758457, 42.392715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878761, 35.501732, 42.550560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048828, 0.558959, 0.827756,
		-0.751842, -0.525009, 0.398872,
		0.657533, -0.641818, 0.394614,
		36.076023, 35.309185, 42.668945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428246, 35.516644, 43.170071>,  <35.615749, 35.758457, 42.392715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428246, 35.516644, 43.170071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821487, 35.448395, 43.143551>,  <36.057434, 35.407448, 43.127640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821487, 35.448395, 43.143551>,  <35.428246, 35.516644, 43.170071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821487, 35.448395, 43.143551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155694, 0.588938, 0.793040,
		-0.096258, -0.789963, 0.605551,
		0.983104, -0.170617, -0.066302,
		36.116417, 35.397209, 43.123661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662506, 35.245747, 43.734009>,  <35.428246, 35.516644, 43.170071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662506, 35.245747, 43.734009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955982, 35.462711, 43.570305>,  <36.132069, 35.592888, 43.472084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955982, 35.462711, 43.570305>,  <35.662506, 35.245747, 43.734009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955982, 35.462711, 43.570305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011362, 0.612017, 0.790763,
		0.679394, -0.575521, 0.455191,
		0.733686, 0.542411, -0.409262,
		36.176090, 35.625435, 43.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093395, 35.428822, 44.327923>,  <35.662506, 35.245747, 43.734009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093395, 35.428822, 44.327923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176292, 35.698711, 44.044575>,  <36.226028, 35.860645, 43.874565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176292, 35.698711, 44.044575>,  <36.093395, 35.428822, 44.327923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176292, 35.698711, 44.044575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047361, 0.716324, 0.696158,
		0.977143, -0.177820, 0.116495,
		0.207239, 0.674729, -0.708373,
		36.238464, 35.901131, 43.832062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516193, 35.855927, 44.715374>,  <36.093395, 35.428822, 44.327923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516193, 35.855927, 44.715374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449783, 36.083099, 44.392910>,  <36.409935, 36.219402, 44.199432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449783, 36.083099, 44.392910>,  <36.516193, 35.855927, 44.715374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449783, 36.083099, 44.392910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057644, 0.810517, 0.582872,
		0.984435, 0.143243, -0.101831,
		-0.166028, 0.567929, -0.806158,
		36.399975, 36.253479, 44.151062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085674, 36.398163, 44.581200>,  <36.516193, 35.855927, 44.715374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085674, 36.398163, 44.581200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742970, 36.527210, 44.420265>,  <36.537346, 36.604641, 44.323704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742970, 36.527210, 44.420265>,  <37.085674, 36.398163, 44.581200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742970, 36.527210, 44.420265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171781, 0.914134, 0.367220,
		0.486260, 0.245507, -0.838616,
		-0.856763, 0.322623, -0.402333,
		36.485939, 36.623997, 44.299564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331402, 37.044834, 44.200367>,  <37.085674, 36.398163, 44.581200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331402, 37.044834, 44.200367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937981, 37.090302, 44.256508>,  <36.701927, 37.117584, 44.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937981, 37.090302, 44.256508>,  <37.331402, 37.044834, 44.200367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937981, 37.090302, 44.256508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165448, 0.878718, 0.447751,
		-0.072429, 0.463608, -0.883075,
		-0.983555, 0.113673, 0.140348,
		36.642914, 37.124405, 44.298611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260269, 37.696163, 44.178848>,  <37.331402, 37.044834, 44.200367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260269, 37.696163, 44.178848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919571, 37.575031, 44.349876>,  <36.715153, 37.502354, 44.452496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919571, 37.575031, 44.349876>,  <37.260269, 37.696163, 44.178848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919571, 37.575031, 44.349876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074135, 0.877503, 0.473807,
		-0.518679, 0.371867, -0.769862,
		-0.851749, -0.302827, 0.427573,
		36.664047, 37.484184, 44.478149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899284, 38.294399, 44.111389>,  <37.260269, 37.696163, 44.178848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899284, 38.294399, 44.111389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738022, 38.054306, 44.387703>,  <36.641266, 37.910248, 44.553490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738022, 38.054306, 44.387703>,  <36.899284, 38.294399, 44.111389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738022, 38.054306, 44.387703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092127, 0.777632, 0.621934,
		-0.910482, 0.187098, -0.368806,
		-0.403157, -0.600236, 0.690783,
		36.617073, 37.874237, 44.594936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347591, 38.680260, 44.364574>,  <36.899284, 38.294399, 44.111389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347591, 38.680260, 44.364574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422710, 38.399872, 44.639782>,  <36.467781, 38.231640, 44.804905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422710, 38.399872, 44.639782>,  <36.347591, 38.680260, 44.364574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422710, 38.399872, 44.639782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102978, 0.710673, 0.695944,
		-0.976795, -0.059843, 0.205645,
		0.187794, -0.700972, 0.688020,
		36.479050, 38.189579, 44.846188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887508, 38.842876, 44.851997>,  <36.347591, 38.680260, 44.364574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887508, 38.842876, 44.851997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180374, 38.630577, 45.022758>,  <36.356094, 38.503197, 45.125214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180374, 38.630577, 45.022758>,  <35.887508, 38.842876, 44.851997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180374, 38.630577, 45.022758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225843, 0.780465, 0.582983,
		-0.642597, -0.330426, 0.691294,
		0.732163, -0.530747, 0.426900,
		36.400024, 38.471352, 45.150829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716927, 38.900246, 45.520100>,  <35.887508, 38.842876, 44.851997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716927, 38.900246, 45.520100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103233, 38.796638, 45.525879>,  <36.335018, 38.734474, 45.529346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103233, 38.796638, 45.525879>,  <35.716927, 38.900246, 45.520100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103233, 38.796638, 45.525879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211621, 0.818792, 0.533662,
		-0.150057, -0.512335, 0.845574,
		0.965763, -0.259021, 0.014444,
		36.392963, 38.718933, 45.530212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801781, 38.832241, 46.172417>,  <35.716927, 38.900246, 45.520100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801781, 38.832241, 46.172417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170547, 38.884243, 46.026447>,  <36.391808, 38.915443, 45.938866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170547, 38.884243, 46.026447>,  <35.801781, 38.832241, 46.172417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170547, 38.884243, 46.026447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149711, 0.749252, 0.645141,
		0.357289, -0.649400, 0.671286,
		0.921917, 0.130003, -0.364922,
		36.447124, 38.923244, 45.916969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135952, 38.872009, 46.704628>,  <35.801781, 38.832241, 46.172417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135952, 38.872009, 46.704628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363182, 39.036903, 46.419712>,  <36.499519, 39.135841, 46.248764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363182, 39.036903, 46.419712>,  <36.135952, 38.872009, 46.704628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363182, 39.036903, 46.419712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041811, 0.849924, 0.525244,
		0.821916, -0.328158, 0.465582,
		0.568072, 0.412240, -0.712287,
		36.533604, 39.160576, 46.206024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625820, 39.213280, 47.080524>,  <36.135952, 38.872009, 46.704628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625820, 39.213280, 47.080524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606579, 39.379288, 46.717110>,  <36.595036, 39.478893, 46.499062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606579, 39.379288, 46.717110>,  <36.625820, 39.213280, 47.080524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606579, 39.379288, 46.717110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045058, 0.909568, 0.413106,
		0.997826, -0.021065, -0.062453,
		-0.048103, 0.415022, -0.908539,
		36.592148, 39.503796, 46.444550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092091, 39.805515, 47.107773>,  <36.625820, 39.213280, 47.080524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092091, 39.805515, 47.107773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831150, 39.878548, 46.813534>,  <36.674587, 39.922367, 46.636990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831150, 39.878548, 46.813534>,  <37.092091, 39.805515, 47.107773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831150, 39.878548, 46.813534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081435, 0.948045, 0.307536,
		0.753528, 0.260525, -0.603592,
		-0.652353, 0.182583, -0.735594,
		36.635445, 39.933323, 46.592857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342999, 40.272926, 46.745426>,  <37.092091, 39.805515, 47.107773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342999, 40.272926, 46.745426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950535, 40.298279, 46.672424>,  <36.715057, 40.313492, 46.628624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950535, 40.298279, 46.672424>,  <37.342999, 40.272926, 46.745426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950535, 40.298279, 46.672424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009711, 0.927286, 0.374228,
		0.192956, 0.368949, -0.909200,
		-0.981159, 0.063381, -0.182508,
		36.656185, 40.317291, 46.617672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230774, 40.940937, 46.493717>,  <37.342999, 40.272926, 46.745426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230774, 40.940937, 46.493717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875919, 40.827312, 46.639202>,  <36.663006, 40.759136, 46.726494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875919, 40.827312, 46.639202>,  <37.230774, 40.940937, 46.493717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875919, 40.827312, 46.639202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134467, 0.913028, 0.385094,
		-0.441474, 0.292725, -0.848182,
		-0.887141, -0.284062, 0.363717,
		36.609776, 40.742092, 46.748318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818005, 41.469269, 46.255119>,  <37.230774, 40.940937, 46.493717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818005, 41.469269, 46.255119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610752, 41.293613, 46.548706>,  <36.486401, 41.188221, 46.724857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610752, 41.293613, 46.548706>,  <36.818005, 41.469269, 46.255119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610752, 41.293613, 46.548706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242155, 0.898339, 0.366536,
		-0.820307, 0.012179, -0.571794,
		-0.518128, -0.439135, 0.733965,
		36.455315, 41.161873, 46.768894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120350, 41.881279, 45.683121>,  <36.818005, 41.469269, 46.255119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120350, 41.881279, 45.683121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433651, 42.114887, 45.768375>,  <37.621632, 42.255051, 45.819530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433651, 42.114887, 45.768375>,  <37.120350, 41.881279, 45.683121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433651, 42.114887, 45.768375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467731, -0.327719, -0.820870,
		-0.409556, 0.742644, -0.529853,
		0.783257, 0.584021, 0.213138,
		37.668629, 42.290092, 45.832317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217491, 42.354675, 45.115688>,  <37.120350, 41.881279, 45.683121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217491, 42.354675, 45.115688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574753, 42.288483, 45.282967>,  <37.789112, 42.248768, 45.383331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574753, 42.288483, 45.282967>,  <37.217491, 42.354675, 45.115688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574753, 42.288483, 45.282967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327445, -0.398146, -0.856889,
		0.308298, 0.902273, -0.301423,
		0.893158, -0.165478, 0.418192,
		37.842701, 42.238838, 45.408424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686615, 42.614838, 44.662121>,  <37.217491, 42.354675, 45.115688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686615, 42.614838, 44.662121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890003, 42.363976, 44.898132>,  <38.012035, 42.213459, 45.039738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890003, 42.363976, 44.898132>,  <37.686615, 42.614838, 44.662121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890003, 42.363976, 44.898132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484099, -0.358474, -0.798213,
		0.712115, 0.691499, 0.121333,
		0.508469, -0.627157, 0.590029,
		38.042545, 42.175827, 45.075142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264935, 42.493729, 44.286152>,  <37.686615, 42.614838, 44.662121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264935, 42.493729, 44.286152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261589, 42.196716, 44.554054>,  <38.259583, 42.018509, 44.714794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261589, 42.196716, 44.554054>,  <38.264935, 42.493729, 44.286152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261589, 42.196716, 44.554054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330943, -0.634091, -0.698860,
		0.943614, 0.215805, 0.251040,
		-0.008365, -0.742534, 0.669756,
		38.259079, 41.973957, 44.754982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893269, 42.207436, 44.115311>,  <38.264935, 42.493729, 44.286152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893269, 42.207436, 44.115311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672970, 41.943401, 44.319649>,  <38.540791, 41.784981, 44.442253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672970, 41.943401, 44.319649>,  <38.893269, 42.207436, 44.115311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672970, 41.943401, 44.319649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236987, -0.710512, -0.662578,
		0.800320, -0.243850, 0.547745,
		-0.550749, -0.660083, 0.510848,
		38.507744, 41.745377, 44.472904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278030, 41.704044, 44.246933>,  <38.893269, 42.207436, 44.115311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278030, 41.704044, 44.246933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918549, 41.532604, 44.284077>,  <38.702858, 41.429741, 44.306362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918549, 41.532604, 44.284077>,  <39.278030, 41.704044, 44.246933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918549, 41.532604, 44.284077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307015, -0.766095, -0.564660,
		0.313153, -0.478956, 0.820083,
		-0.898708, -0.428603, 0.092858,
		38.648937, 41.404022, 44.311935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531441, 40.989857, 44.310562>,  <39.278030, 41.704044, 44.246933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531441, 40.989857, 44.310562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142582, 40.970036, 44.218929>,  <38.909267, 40.958145, 44.163948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142582, 40.970036, 44.218929>,  <39.531441, 40.989857, 44.310562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142582, 40.970036, 44.218929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185680, -0.759265, -0.623730,
		-0.143027, -0.648892, 0.747317,
		-0.972145, -0.049551, -0.229082,
		38.850937, 40.955170, 44.150204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384918, 40.288673, 44.404827>,  <39.531441, 40.989857, 44.310562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384918, 40.288673, 44.404827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112865, 40.439526, 44.153370>,  <38.949635, 40.530037, 44.002495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112865, 40.439526, 44.153370>,  <39.384918, 40.288673, 44.404827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112865, 40.439526, 44.153370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229207, -0.705141, -0.671000,
		-0.696334, -0.600460, 0.393151,
		-0.680135, 0.377127, -0.628643,
		38.908825, 40.552662, 43.964779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278229, 39.716137, 43.991894>,  <39.384918, 40.288673, 44.404827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278229, 39.716137, 43.991894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085670, 40.003197, 43.790604>,  <38.970135, 40.175434, 43.669830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085670, 40.003197, 43.790604>,  <39.278229, 39.716137, 43.991894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085670, 40.003197, 43.790604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155721, -0.494973, -0.854841,
		-0.862562, -0.489876, 0.126522,
		-0.481391, 0.717651, -0.503229,
		38.941254, 40.218491, 43.639633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634010, 39.374760, 43.623917>,  <39.278229, 39.716137, 43.991894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634010, 39.374760, 43.623917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779636, 39.694717, 43.433075>,  <38.867012, 39.886692, 43.318569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779636, 39.694717, 43.433075>,  <38.634010, 39.374760, 43.623917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779636, 39.694717, 43.433075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187843, -0.564796, -0.803568,
		-0.912235, 0.202929, -0.355876,
		0.364065, 0.799891, -0.477107,
		38.888855, 39.934685, 43.289944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302452, 39.371689, 42.941025>,  <38.634010, 39.374760, 43.623917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302452, 39.371689, 42.941025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631947, 39.592442, 42.889042>,  <38.829643, 39.724892, 42.857853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631947, 39.592442, 42.889042>,  <38.302452, 39.371689, 42.941025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631947, 39.592442, 42.889042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210202, -0.510140, -0.834010,
		-0.526570, 0.659686, -0.536226,
		0.823735, 0.551881, -0.129957,
		38.879066, 39.758007, 42.850056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390438, 39.315254, 42.233597>,  <38.302452, 39.371689, 42.941025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390438, 39.315254, 42.233597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753365, 39.439465, 42.346985>,  <38.971119, 39.513992, 42.415020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753365, 39.439465, 42.346985>,  <38.390438, 39.315254, 42.233597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753365, 39.439465, 42.346985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417403, -0.584097, -0.696136,
		-0.050595, 0.749934, -0.659575,
		0.907312, 0.310530, 0.283472,
		39.025558, 39.532623, 42.432026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680119, 39.712898, 41.714848>,  <38.390438, 39.315254, 42.233597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680119, 39.712898, 41.714848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979408, 39.543270, 41.918938>,  <39.158981, 39.441494, 42.041393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979408, 39.543270, 41.918938>,  <38.680119, 39.712898, 41.714848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979408, 39.543270, 41.918938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019021, -0.782450, -0.622423,
		0.663176, 0.456005, -0.593512,
		0.748221, -0.424066, 0.510228,
		39.203876, 39.416050, 42.072006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035000, 39.307587, 41.223526>,  <38.680119, 39.712898, 41.714848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035000, 39.307587, 41.223526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107327, 39.150391, 41.584164>,  <39.150723, 39.056072, 41.800545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107327, 39.150391, 41.584164>,  <39.035000, 39.307587, 41.223526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107327, 39.150391, 41.584164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033581, -0.918634, -0.393679,
		0.982944, 0.040906, -0.179297,
		0.180812, -0.392986, 0.901593,
		39.161572, 39.032494, 41.854641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771461, 38.993942, 41.354984>,  <39.035000, 39.307587, 41.223526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771461, 38.993942, 41.354984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480019, 38.823524, 41.569504>,  <39.305153, 38.721275, 41.698215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480019, 38.823524, 41.569504>,  <39.771461, 38.993942, 41.354984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480019, 38.823524, 41.569504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150869, -0.863595, -0.481084,
		0.668112, -0.269608, 0.693496,
		-0.728604, -0.426045, 0.536303,
		39.261436, 38.695709, 41.730396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847954, 38.231777, 41.351444>,  <39.771461, 38.993942, 41.354984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847954, 38.231777, 41.351444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470089, 38.244583, 41.482037>,  <39.243370, 38.252266, 41.560390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470089, 38.244583, 41.482037>,  <39.847954, 38.231777, 41.351444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470089, 38.244583, 41.482037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218649, -0.803373, -0.553882,
		0.244549, -0.594616, 0.765917,
		-0.944663, 0.032015, 0.326476,
		39.186691, 38.254189, 41.579979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724762, 37.533607, 41.346619>,  <39.847954, 38.231777, 41.351444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724762, 37.533607, 41.346619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368927, 37.713379, 41.379246>,  <39.155426, 37.821243, 41.398823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368927, 37.713379, 41.379246>,  <39.724762, 37.533607, 41.346619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368927, 37.713379, 41.379246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441331, -0.799665, -0.407141,
		-0.117757, -0.398182, 0.909716,
		-0.889584, 0.449430, 0.081564,
		39.102051, 37.848209, 41.403713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219410, 37.033588, 41.657478>,  <39.724762, 37.533607, 41.346619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219410, 37.033588, 41.657478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981312, 37.299946, 41.477581>,  <38.838451, 37.459759, 41.369640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981312, 37.299946, 41.477581>,  <39.219410, 37.033588, 41.657478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981312, 37.299946, 41.477581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437023, -0.737962, -0.514220,
		-0.674309, -0.109539, 0.730279,
		-0.595246, 0.665892, -0.449744,
		38.802738, 37.499714, 41.342659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602123, 36.797649, 41.648529>,  <39.219410, 37.033588, 41.657478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602123, 36.797649, 41.648529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570450, 37.056587, 41.345299>,  <38.551445, 37.211948, 41.163361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570450, 37.056587, 41.345299>,  <38.602123, 36.797649, 41.648529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570450, 37.056587, 41.345299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549948, -0.662635, -0.508401,
		-0.831437, 0.376646, 0.408473,
		-0.079181, 0.647342, -0.758075,
		38.546696, 37.250790, 41.117878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897675, 36.737717, 41.343685>,  <38.602123, 36.797649, 41.648529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897675, 36.737717, 41.343685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130074, 36.893486, 41.057808>,  <38.269512, 36.986950, 40.886280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130074, 36.893486, 41.057808>,  <37.897675, 36.737717, 41.343685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130074, 36.893486, 41.057808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504168, -0.517148, -0.691645,
		-0.638947, 0.762171, -0.104126,
		0.581001, 0.389427, -0.714692,
		38.304375, 37.010315, 40.843399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452404, 36.935703, 40.838192>,  <37.897675, 36.737717, 41.343685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452404, 36.935703, 40.838192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817974, 36.919903, 40.676613>,  <38.037315, 36.910423, 40.579666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817974, 36.919903, 40.676613>,  <37.452404, 36.935703, 40.838192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817974, 36.919903, 40.676613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387961, -0.377466, -0.840836,
		-0.119263, 0.925180, -0.360302,
		0.913927, -0.039502, -0.403951,
		38.092152, 36.908051, 40.555428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191223, 36.952686, 40.147263>,  <37.452404, 36.935703, 40.838192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191223, 36.952686, 40.147263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579208, 36.855995, 40.136414>,  <37.812000, 36.797981, 40.129906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579208, 36.855995, 40.136414>,  <37.191223, 36.952686, 40.147263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579208, 36.855995, 40.136414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152892, -0.519151, -0.840896,
		0.189188, 0.819787, -0.540516,
		0.969965, -0.241728, -0.027121,
		37.870197, 36.783478, 40.128277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416538, 37.032681, 39.478016>,  <37.191223, 36.952686, 40.147263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416538, 37.032681, 39.478016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641994, 36.759670, 39.664120>,  <37.777267, 36.595863, 39.775780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641994, 36.759670, 39.664120>,  <37.416538, 37.032681, 39.478016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641994, 36.759670, 39.664120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166410, -0.645527, -0.745388,
		0.809084, 0.342707, -0.477425,
		0.563641, -0.682530, 0.465255,
		37.811089, 36.554913, 39.803696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853546, 36.672810, 38.964905>,  <37.416538, 37.032681, 39.478016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853546, 36.672810, 38.964905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853760, 36.424549, 39.278542>,  <37.853886, 36.275593, 39.466724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853760, 36.424549, 39.278542>,  <37.853546, 36.672810, 38.964905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853760, 36.424549, 39.278542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010468, -0.784048, -0.620611,
		0.999945, -0.007878, -0.006914,
		0.000531, -0.620650, 0.784088,
		37.853920, 36.238354, 39.513767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366943, 36.162315, 38.793705>,  <37.853546, 36.672810, 38.964905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366943, 36.162315, 38.793705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163029, 35.968281, 39.077904>,  <38.040680, 35.851860, 39.248425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163029, 35.968281, 39.077904>,  <38.366943, 36.162315, 38.793705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163029, 35.968281, 39.077904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081265, -0.849332, -0.521566,
		0.856453, -0.208150, 0.472401,
		-0.509789, -0.485087, 0.710497,
		38.010094, 35.822754, 39.291054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818672, 35.644764, 38.943733>,  <38.366943, 36.162315, 38.793705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818672, 35.644764, 38.943733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468483, 35.528336, 39.098049>,  <38.258369, 35.458481, 39.190639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468483, 35.528336, 39.098049>,  <38.818672, 35.644764, 38.943733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468483, 35.528336, 39.098049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136735, -0.914849, -0.379942,
		0.463524, -0.279877, 0.840722,
		-0.875471, -0.291069, 0.385785,
		38.205841, 35.441013, 39.213783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791283, 35.013321, 39.306835>,  <38.818672, 35.644764, 38.943733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791283, 35.013321, 39.306835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408234, 35.034100, 39.193508>,  <38.178406, 35.046566, 39.125511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408234, 35.034100, 39.193508>,  <38.791283, 35.013321, 39.306835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408234, 35.034100, 39.193508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099056, -0.864211, -0.493282,
		-0.270470, -0.500440, 0.822439,
		-0.957619, 0.051950, -0.283314,
		38.120949, 35.049686, 39.108513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560600, 34.358902, 39.445061>,  <38.791283, 35.013321, 39.306835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560600, 34.358902, 39.445061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282494, 34.515518, 39.203964>,  <38.115631, 34.609489, 39.059307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282494, 34.515518, 39.203964>,  <38.560600, 34.358902, 39.445061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282494, 34.515518, 39.203964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052080, -0.863836, -0.501074,
		-0.716864, -0.316988, 0.620987,
		-0.695265, 0.391543, -0.602744,
		38.073914, 34.632980, 39.023140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134918, 33.788719, 39.256737>,  <38.560600, 34.358902, 39.445061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134918, 33.788719, 39.256737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060726, 34.044621, 38.958389>,  <38.016212, 34.198162, 38.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060726, 34.044621, 38.958389>,  <38.134918, 33.788719, 39.256737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060726, 34.044621, 38.958389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121126, -0.738364, -0.663435,
		-0.975155, -0.213396, 0.059460,
		-0.185478, 0.639750, -0.745867,
		38.005081, 34.236546, 38.734631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666683, 33.455784, 38.957561>,  <38.134918, 33.788719, 39.256737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666683, 33.455784, 38.957561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810677, 33.708012, 38.682522>,  <37.897072, 33.859348, 38.517498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810677, 33.708012, 38.682522>,  <37.666683, 33.455784, 38.957561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810677, 33.708012, 38.682522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098934, -0.707054, -0.700204,
		-0.927697, 0.320091, -0.192145,
		0.359986, 0.630568, -0.687600,
		37.918671, 33.897182, 38.476242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199894, 33.309219, 38.334915>,  <37.666683, 33.455784, 38.957561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199894, 33.309219, 38.334915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553715, 33.460800, 38.226124>,  <37.766006, 33.551746, 38.160851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553715, 33.460800, 38.226124>,  <37.199894, 33.309219, 38.334915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553715, 33.460800, 38.226124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009050, -0.569024, -0.822271,
		-0.466359, 0.729801, -0.499900,
		0.884550, 0.378949, -0.271974,
		37.819080, 33.574486, 38.144531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178860, 33.430298, 37.577026>,  <37.199894, 33.309219, 38.334915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178860, 33.430298, 37.577026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570957, 33.422691, 37.655777>,  <37.806217, 33.418129, 37.703026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570957, 33.422691, 37.655777>,  <37.178860, 33.430298, 37.577026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570957, 33.422691, 37.655777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171181, -0.417079, -0.892604,
		0.099084, 0.908671, -0.405585,
		0.980245, -0.019014, 0.196873,
		37.865032, 33.416988, 37.714840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531799, 33.498016, 36.783653>,  <37.178860, 33.430298, 37.577026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531799, 33.498016, 36.783653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809063, 33.397930, 37.054035>,  <37.975422, 33.337879, 37.216267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809063, 33.397930, 37.054035>,  <37.531799, 33.498016, 36.783653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809063, 33.397930, 37.054035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510741, -0.491226, -0.705578,
		0.508597, 0.834318, -0.212701,
		0.693161, -0.250220, 0.675957,
		38.017010, 33.322865, 37.256821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207825, 33.750553, 36.550762>,  <37.531799, 33.498016, 36.783653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207825, 33.750553, 36.550762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279362, 33.472481, 36.829258>,  <38.322285, 33.305637, 36.996353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279362, 33.472481, 36.829258>,  <38.207825, 33.750553, 36.550762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279362, 33.472481, 36.829258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698160, -0.408942, -0.587656,
		0.693244, 0.591182, 0.412208,
		0.178842, -0.695176, 0.696236,
		38.333015, 33.263927, 37.038128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924034, 33.617863, 36.555111>,  <38.207825, 33.750553, 36.550762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924034, 33.617863, 36.555111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756676, 33.290909, 36.713520>,  <38.656261, 33.094738, 36.808567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756676, 33.290909, 36.713520>,  <38.924034, 33.617863, 36.555111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756676, 33.290909, 36.713520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608234, -0.575966, -0.546182,
		0.674536, 0.012358, 0.738138,
		-0.418393, -0.817380, 0.396026,
		38.631157, 33.045696, 36.832329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443401, 33.207863, 36.722237>,  <38.924034, 33.617863, 36.555111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443401, 33.207863, 36.722237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127342, 32.968075, 36.671162>,  <38.937706, 32.824203, 36.640518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127342, 32.968075, 36.671162>,  <39.443401, 33.207863, 36.722237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127342, 32.968075, 36.671162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580897, -0.665983, -0.468001,
		0.195516, -0.443962, 0.874455,
		-0.790147, -0.599470, -0.127686,
		38.890297, 32.788235, 36.632854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740585, 32.564995, 36.875061>,  <39.443401, 33.207863, 36.722237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740585, 32.564995, 36.875061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401752, 32.480976, 36.679787>,  <39.198452, 32.430565, 36.562622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401752, 32.480976, 36.679787>,  <39.740585, 32.564995, 36.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401752, 32.480976, 36.679787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523170, -0.491145, -0.696469,
		-0.093479, -0.845374, 0.525933,
		-0.847086, -0.210047, -0.488186,
		39.147625, 32.417961, 36.533329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929100, 31.946159, 36.674114>,  <39.740585, 32.564995, 36.875061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929100, 31.946159, 36.674114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630314, 32.087223, 36.448662>,  <39.451042, 32.171860, 36.313393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630314, 32.087223, 36.448662>,  <39.929100, 31.946159, 36.674114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630314, 32.087223, 36.448662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370586, -0.482993, -0.793337,
		-0.552008, -0.801466, 0.230087,
		-0.746963, 0.352661, -0.563628,
		39.406223, 32.193020, 36.279575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488941, 31.378529, 36.239407>,  <39.929100, 31.946159, 36.674114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488941, 31.378529, 36.239407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414936, 31.728683, 36.060757>,  <39.370533, 31.938776, 35.953568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414936, 31.728683, 36.060757>,  <39.488941, 31.378529, 36.239407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414936, 31.728683, 36.060757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341760, -0.368788, -0.864405,
		-0.921396, -0.312562, -0.230941,
		-0.185012, 0.875386, -0.446621,
		39.359432, 31.991299, 35.926769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223122, 31.205603, 35.596893>,  <39.488941, 31.378529, 36.239407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223122, 31.205603, 35.596893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381939, 31.572672, 35.590816>,  <39.477230, 31.792913, 35.587170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381939, 31.572672, 35.590816>,  <39.223122, 31.205603, 35.596893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381939, 31.572672, 35.590816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490335, -0.226081, -0.841700,
		-0.775841, 0.326742, -0.539732,
		0.397042, 0.917675, -0.015190,
		39.501053, 31.847975, 35.586258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367653, 31.284340, 34.897465>,  <39.223122, 31.205603, 35.596893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367653, 31.284340, 34.897465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568821, 31.577662, 35.080475>,  <39.689522, 31.753654, 35.190281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568821, 31.577662, 35.080475>,  <39.367653, 31.284340, 34.897465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568821, 31.577662, 35.080475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631765, 0.049378, -0.773586,
		-0.589866, 0.678105, -0.438443,
		0.502923, 0.733305, 0.457529,
		39.719696, 31.797653, 35.217735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671497, 31.489244, 34.363052>,  <39.367653, 31.284340, 34.897465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671497, 31.489244, 34.363052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885471, 31.625641, 34.672264>,  <40.013855, 31.707479, 34.857792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885471, 31.625641, 34.672264>,  <39.671497, 31.489244, 34.363052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885471, 31.625641, 34.672264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741138, 0.249908, -0.623105,
		-0.405659, 0.906240, -0.119037,
		0.534935, 0.340991, 0.773027,
		40.045952, 31.727938, 34.904171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100677, 32.052319, 34.057674>,  <39.671497, 31.489244, 34.363052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100677, 32.052319, 34.057674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287441, 31.949615, 34.396160>,  <40.399498, 31.887993, 34.599251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287441, 31.949615, 34.396160>,  <40.100677, 32.052319, 34.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287441, 31.949615, 34.396160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884286, 0.129148, -0.448730,
		0.005930, 0.957807, 0.287351,
		0.466908, -0.256761, 0.846210,
		40.427513, 31.872587, 34.650024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641468, 32.507374, 34.278805>,  <40.100677, 32.052319, 34.057674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641468, 32.507374, 34.278805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718410, 32.130405, 34.388241>,  <40.764576, 31.904226, 34.453903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718410, 32.130405, 34.388241>,  <40.641468, 32.507374, 34.278805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718410, 32.130405, 34.388241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847151, 0.018754, -0.531021,
		0.495312, 0.333915, 0.801977,
		0.192356, -0.942416, 0.273588,
		40.776115, 31.847681, 34.470318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271530, 32.437431, 34.738804>,  <40.641468, 32.507374, 34.278805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271530, 32.437431, 34.738804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209011, 32.111439, 34.515602>,  <41.171497, 31.915842, 34.381680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209011, 32.111439, 34.515602>,  <41.271530, 32.437431, 34.738804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209011, 32.111439, 34.515602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764611, 0.257791, -0.590689,
		0.625252, -0.518981, 0.582854,
		-0.156302, -0.814986, -0.558003,
		41.162121, 31.866943, 34.348202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148136, 33.058033, 34.333641>,  <41.271530, 32.437431, 34.738804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148136, 33.058033, 34.333641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376793, 33.386147, 34.326000>,  <41.513985, 33.583015, 34.321415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376793, 33.386147, 34.326000>,  <41.148136, 33.058033, 34.333641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376793, 33.386147, 34.326000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813081, 0.563187, -0.147378,
		-0.110134, 0.099778, 0.988896,
		0.571639, 0.820283, -0.019102,
		41.548283, 33.632233, 34.320271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791504, 33.106766, 34.777565>,  <41.148136, 33.058033, 34.333641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791504, 33.106766, 34.777565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183758, 33.145000, 34.709194>,  <42.419109, 33.167942, 34.668171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183758, 33.145000, 34.709194>,  <41.791504, 33.106766, 34.777565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183758, 33.145000, 34.709194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150985, -0.924886, 0.348983,
		-0.124730, -0.368032, -0.921409,
		0.980636, 0.095590, -0.170928,
		42.477947, 33.173679, 34.657917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131622, 32.682304, 34.383389>,  <41.791504, 33.106766, 34.777565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131622, 32.682304, 34.383389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422688, 32.765373, 34.644886>,  <42.597328, 32.815216, 34.801785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422688, 32.765373, 34.644886>,  <42.131622, 32.682304, 34.383389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422688, 32.765373, 34.644886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230862, -0.971613, 0.051684,
		0.645919, 0.113316, -0.754949,
		0.727661, 0.207673, 0.653744,
		42.640987, 32.827675, 34.841011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805977, 32.388206, 34.166145>,  <42.131622, 32.682304, 34.383389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805977, 32.388206, 34.166145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827103, 32.456333, 34.559734>,  <42.839779, 32.497208, 34.795887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827103, 32.456333, 34.559734>,  <42.805977, 32.388206, 34.166145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827103, 32.456333, 34.559734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127302, -0.978457, 0.162527,
		0.990457, 0.116677, -0.073362,
		0.052818, 0.170315, 0.983973,
		42.842949, 32.507427, 34.854927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440948, 32.142323, 34.494366>,  <42.805977, 32.388206, 34.166145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440948, 32.142323, 34.494366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224300, 32.149414, 34.830540>,  <43.094311, 32.153667, 35.032246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224300, 32.149414, 34.830540>,  <43.440948, 32.142323, 34.494366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224300, 32.149414, 34.830540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287204, -0.935715, 0.204821,
		0.790041, 0.352312, 0.501708,
		-0.541617, 0.017725, 0.840439,
		43.061817, 32.154732, 35.082672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774891, 31.612032, 34.986454>,  <43.440948, 32.142323, 34.494366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774891, 31.612032, 34.986454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419113, 31.674644, 35.158215>,  <43.205647, 31.712212, 35.261272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419113, 31.674644, 35.158215>,  <43.774891, 31.612032, 34.986454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419113, 31.674644, 35.158215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084848, -0.866639, 0.491669,
		0.449100, 0.473746, 0.757545,
		-0.889444, 0.156532, 0.429404,
		43.152279, 31.721603, 35.287037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868496, 31.503796, 35.705551>,  <43.774891, 31.612032, 34.986454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868496, 31.503796, 35.705551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477852, 31.468582, 35.627083>,  <43.243465, 31.447454, 35.580002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477852, 31.468582, 35.627083>,  <43.868496, 31.503796, 35.705551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477852, 31.468582, 35.627083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045550, -0.806926, 0.588893,
		-0.210137, 0.584055, 0.784043,
		-0.976610, -0.088035, -0.196168,
		43.184868, 31.442171, 35.568233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634521, 31.448460, 36.275955>,  <43.868496, 31.503796, 35.705551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634521, 31.448460, 36.275955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338463, 31.291918, 36.057220>,  <43.160828, 31.197992, 35.925980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338463, 31.291918, 36.057220>,  <43.634521, 31.448460, 36.275955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338463, 31.291918, 36.057220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018771, -0.824907, 0.564957,
		-0.672184, 0.407886, 0.617898,
		-0.740147, -0.391353, -0.546833,
		43.116421, 31.174511, 35.893169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041100, 31.269077, 36.779835>,  <43.634521, 31.448460, 36.275955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041100, 31.269077, 36.779835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024204, 31.050224, 36.445442>,  <43.014069, 30.918913, 36.244808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024204, 31.050224, 36.445442>,  <43.041100, 31.269077, 36.779835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024204, 31.050224, 36.445442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163265, -0.821699, 0.546035,
		-0.985678, 0.159549, -0.054621,
		-0.042237, -0.547132, -0.835980,
		43.011532, 30.886086, 36.194649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381531, 30.944712, 36.916172>,  <43.041100, 31.269077, 36.779835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381531, 30.944712, 36.916172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591999, 30.743763, 36.641720>,  <42.718281, 30.623194, 36.477051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591999, 30.743763, 36.641720>,  <42.381531, 30.944712, 36.916172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591999, 30.743763, 36.641720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069705, -0.829613, 0.553971,
		-0.847517, -0.243657, -0.471536,
		0.526172, -0.502369, -0.686126,
		42.749851, 30.593052, 36.435883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994305, 30.333961, 36.862446>,  <42.381531, 30.944712, 36.916172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994305, 30.333961, 36.862446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345341, 30.230116, 36.701237>,  <42.555962, 30.167809, 36.604511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345341, 30.230116, 36.701237>,  <41.994305, 30.333961, 36.862446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345341, 30.230116, 36.701237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023872, -0.863303, 0.504122,
		-0.478809, -0.432793, -0.763827,
		0.877594, -0.259612, -0.403025,
		42.608620, 30.152231, 36.580330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924320, 29.689322, 36.847252>,  <41.994305, 30.333961, 36.862446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924320, 29.689322, 36.847252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315666, 29.713036, 36.767963>,  <42.550472, 29.727264, 36.720390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315666, 29.713036, 36.767963>,  <41.924320, 29.689322, 36.847252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315666, 29.713036, 36.767963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137967, -0.900890, 0.411537,
		-0.154177, -0.429981, -0.889576,
		0.978363, 0.059283, -0.198220,
		42.609177, 29.730820, 36.708496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101604, 29.184347, 36.399422>,  <41.924320, 29.689322, 36.847252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101604, 29.184347, 36.399422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435688, 29.264608, 36.604233>,  <42.636139, 29.312765, 36.727119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435688, 29.264608, 36.604233>,  <42.101604, 29.184347, 36.399422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435688, 29.264608, 36.604233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022725, -0.942857, 0.332423,
		0.549469, -0.266006, -0.792039,
		0.835205, 0.200655, 0.512025,
		42.686249, 29.324804, 36.757839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511326, 28.642441, 36.307289>,  <42.101604, 29.184347, 36.399422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511326, 28.642441, 36.307289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688931, 28.796921, 36.630695>,  <42.795494, 28.889608, 36.824741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688931, 28.796921, 36.630695>,  <42.511326, 28.642441, 36.307289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688931, 28.796921, 36.630695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175401, -0.922349, 0.344248,
		0.878686, -0.011035, -0.477273,
		0.444011, 0.386200, 0.808519,
		42.822132, 28.912781, 36.873253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238754, 28.328627, 36.446384>,  <42.511326, 28.642441, 36.307289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238754, 28.328627, 36.446384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114246, 28.491331, 36.789932>,  <43.039539, 28.588953, 36.996059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114246, 28.491331, 36.789932>,  <43.238754, 28.328627, 36.446384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114246, 28.491331, 36.789932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077319, -0.889930, 0.449495,
		0.947170, 0.206322, 0.245561,
		-0.311273, 0.406762, 0.858868,
		43.020863, 28.613359, 37.047592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630810, 27.981102, 36.939453>,  <43.238754, 28.328627, 36.446384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630810, 27.981102, 36.939453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340084, 28.156614, 37.150814>,  <43.165649, 28.261923, 37.277630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340084, 28.156614, 37.150814>,  <43.630810, 27.981102, 36.939453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340084, 28.156614, 37.150814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000964, -0.769982, 0.638064,
		0.686830, 0.463247, 0.560060,
		-0.726817, 0.438782, 0.528401,
		43.122040, 28.288248, 37.309334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842018, 27.967833, 37.609509>,  <43.630810, 27.981102, 36.939453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842018, 27.967833, 37.609509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449017, 28.021893, 37.660770>,  <43.213215, 28.054329, 37.691528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449017, 28.021893, 37.660770>,  <43.842018, 27.967833, 37.609509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449017, 28.021893, 37.660770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004397, -0.704718, 0.709474,
		0.186199, 0.696496, 0.692981,
		-0.982502, 0.135151, 0.128155,
		43.154266, 28.062437, 37.699219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781956, 28.123955, 38.289986>,  <43.842018, 27.967833, 37.609509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781956, 28.123955, 38.289986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424866, 27.983421, 38.177128>,  <43.210613, 27.899101, 38.109413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424866, 27.983421, 38.177128>,  <43.781956, 28.123955, 38.289986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424866, 27.983421, 38.177128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023844, -0.662109, 0.749028,
		-0.449969, 0.661949, 0.599459,
		-0.892726, -0.351333, -0.282145,
		43.157047, 27.878021, 38.092484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383297, 28.128378, 38.809399>,  <43.781956, 28.123955, 38.289986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383297, 28.128378, 38.809399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183952, 27.874924, 38.572708>,  <43.064346, 27.722851, 38.430695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183952, 27.874924, 38.572708>,  <43.383297, 28.128378, 38.809399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183952, 27.874924, 38.572708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039185, -0.665364, 0.745490,
		-0.866084, 0.394710, 0.306763,
		-0.498361, -0.633637, -0.591727,
		43.034443, 27.684834, 38.395191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818474, 27.878897, 39.175468>,  <43.383297, 28.128378, 38.809399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818474, 27.878897, 39.175468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828671, 27.603781, 38.885284>,  <42.834789, 27.438711, 38.711174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828671, 27.603781, 38.885284>,  <42.818474, 27.878897, 39.175468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828671, 27.603781, 38.885284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176408, -0.717402, 0.673954,
		-0.983987, 0.110800, -0.139616,
		0.025487, -0.687792, -0.725460,
		42.836315, 27.397444, 38.667645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291481, 27.374941, 39.417454>,  <42.818474, 27.878897, 39.175468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291481, 27.374941, 39.417454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537014, 27.187355, 39.163433>,  <42.684334, 27.074804, 39.011021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537014, 27.187355, 39.163433>,  <42.291481, 27.374941, 39.417454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537014, 27.187355, 39.163433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102454, -0.844951, 0.524939,
		-0.782763, -0.257159, -0.566702,
		0.613829, -0.468963, -0.635050,
		42.721161, 27.046665, 38.972919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017189, 26.707752, 39.239174>,  <42.291481, 27.374941, 39.417454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017189, 26.707752, 39.239174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408077, 26.661581, 39.167942>,  <42.642612, 26.633879, 39.125202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408077, 26.661581, 39.167942>,  <42.017189, 26.707752, 39.239174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408077, 26.661581, 39.167942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017086, -0.793628, 0.608164,
		-0.211528, -0.597354, -0.773578,
		0.977223, -0.115427, -0.178081,
		42.701244, 26.626953, 39.114517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100834, 26.060045, 39.601730>,  <42.017189, 26.707752, 39.239174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100834, 26.060045, 39.601730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476559, 26.157812, 39.505440>,  <42.701996, 26.216473, 39.447666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476559, 26.157812, 39.505440>,  <42.100834, 26.060045, 39.601730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476559, 26.157812, 39.505440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342047, -0.721103, 0.602507,
		-0.026324, -0.648282, -0.760945,
		0.939314, 0.244418, -0.240725,
		42.758354, 26.231138, 39.433224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526333, 25.578068, 39.209286>,  <42.100834, 26.060045, 39.601730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526333, 25.578068, 39.209286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740826, 25.813059, 39.451714>,  <42.869522, 25.954054, 39.597172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740826, 25.813059, 39.451714>,  <42.526333, 25.578068, 39.209286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740826, 25.813059, 39.451714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167666, -0.777864, 0.605653,
		0.827248, -0.223155, -0.515618,
		0.536235, 0.587477, 0.606071,
		42.901695, 25.989302, 39.633533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158123, 25.244427, 39.396313>,  <42.526333, 25.578068, 39.209286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158123, 25.244427, 39.396313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128132, 25.493305, 39.708019>,  <43.110138, 25.642632, 39.895042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128132, 25.493305, 39.708019>,  <43.158123, 25.244427, 39.396313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128132, 25.493305, 39.708019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323575, -0.723999, 0.609200,
		0.943227, 0.297826, -0.147043,
		-0.074977, 0.622194, 0.779265,
		43.105640, 25.679964, 39.941799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486046, 24.618259, 39.741470>,  <43.158123, 25.244427, 39.396313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486046, 24.618259, 39.741470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683037, 24.684965, 39.399792>,  <43.801231, 24.724989, 39.194786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683037, 24.684965, 39.399792>,  <43.486046, 24.618259, 39.741470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683037, 24.684965, 39.399792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715812, 0.635887, -0.288551,
		0.495051, 0.753550, 0.432536,
		0.492481, 0.166766, -0.854196,
		43.830780, 24.734995, 39.143532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218082, 24.387629, 39.359337>,  <43.486046, 24.618259, 39.741470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218082, 24.387629, 39.359337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488258, 24.668730, 39.448704>,  <44.650364, 24.837391, 39.502323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488258, 24.668730, 39.448704>,  <44.218082, 24.387629, 39.359337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488258, 24.668730, 39.448704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341895, 0.029997, 0.939259,
		0.653367, -0.710800, 0.260529,
		0.675440, 0.702754, 0.223420,
		44.690891, 24.879557, 39.515728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594231, 24.151714, 39.955475>,  <44.218082, 24.387629, 39.359337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594231, 24.151714, 39.955475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552021, 24.547354, 39.914387>,  <44.526695, 24.784737, 39.889732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552021, 24.547354, 39.914387>,  <44.594231, 24.151714, 39.955475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552021, 24.547354, 39.914387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537884, 0.030115, 0.842481,
		0.836389, 0.144152, 0.528841,
		-0.105520, 0.989097, -0.102725,
		44.520367, 24.844084, 39.883568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918304, 24.544500, 40.591877>,  <44.594231, 24.151714, 39.955475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918304, 24.544500, 40.591877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609188, 24.684725, 40.380257>,  <44.423717, 24.768860, 40.253284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609188, 24.684725, 40.380257>,  <44.918304, 24.544500, 40.591877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609188, 24.684725, 40.380257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603516, -0.148012, 0.783492,
		0.196356, 0.924770, 0.325952,
		-0.772795, 0.350560, -0.529051,
		44.377350, 24.789892, 40.221542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467907, 24.952927, 40.968918>,  <44.918304, 24.544500, 40.591877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467907, 24.952927, 40.968918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229176, 24.855543, 40.663101>,  <44.085938, 24.797113, 40.479610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229176, 24.855543, 40.663101>,  <44.467907, 24.952927, 40.968918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229176, 24.855543, 40.663101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789811, 0.010328, 0.613263,
		-0.141408, 0.969856, -0.198451,
		-0.596827, -0.243459, -0.764543,
		44.050129, 24.782505, 40.433739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943439, 25.503187, 40.819462>,  <44.467907, 24.952927, 40.968918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943439, 25.503187, 40.819462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825199, 25.125877, 40.758991>,  <43.754253, 24.899492, 40.722710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825199, 25.125877, 40.758991>,  <43.943439, 25.503187, 40.819462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825199, 25.125877, 40.758991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774100, 0.143777, 0.616521,
		-0.559811, 0.299274, -0.772688,
		-0.295603, -0.943273, -0.151180,
		43.736519, 24.842896, 40.713638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598526, 25.970995, 40.844231>,  <43.943439, 25.503187, 40.819462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598526, 25.970995, 40.844231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375015, 26.152678, 40.566681>,  <44.240910, 26.261686, 40.400150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375015, 26.152678, 40.566681>,  <44.598526, 25.970995, 40.844231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375015, 26.152678, 40.566681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754855, 0.625061, -0.198725,
		0.343453, -0.634819, -0.692131,
		-0.558778, 0.454206, -0.693876,
		44.207382, 26.288939, 40.358517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047539, 26.113352, 40.260216>,  <44.598526, 25.970995, 40.844231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047539, 26.113352, 40.260216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743202, 26.371653, 40.234501>,  <44.560600, 26.526632, 40.219070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743202, 26.371653, 40.234501>,  <45.047539, 26.113352, 40.260216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743202, 26.371653, 40.234501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632497, 0.715749, -0.296057,
		-0.145164, -0.265914, -0.953004,
		-0.760838, 0.645750, -0.064289,
		44.514950, 26.565378, 40.215214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156910, 26.472052, 39.640182>,  <45.047539, 26.113352, 40.260216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156910, 26.472052, 39.640182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905937, 26.714886, 39.835232>,  <44.755356, 26.860586, 39.952263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905937, 26.714886, 39.835232>,  <45.156910, 26.472052, 39.640182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905937, 26.714886, 39.835232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409172, 0.789847, -0.456859,
		-0.662503, -0.087123, -0.743975,
		-0.627430, 0.607084, 0.487628,
		44.717709, 26.897011, 39.981522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908241, 27.020199, 39.144035>,  <45.156910, 26.472052, 39.640182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908241, 27.020199, 39.144035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827728, 27.181141, 39.501266>,  <44.779419, 27.277706, 39.715607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827728, 27.181141, 39.501266>,  <44.908241, 27.020199, 39.144035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827728, 27.181141, 39.501266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145017, 0.913937, -0.379064,
		-0.968738, 0.053211, -0.242312,
		-0.201287, 0.402353, 0.893082,
		44.767342, 27.301847, 39.769192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478428, 27.582485, 39.041122>,  <44.908241, 27.020199, 39.144035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478428, 27.582485, 39.041122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641117, 27.660490, 39.398121>,  <44.738731, 27.707293, 39.612320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641117, 27.660490, 39.398121>,  <44.478428, 27.582485, 39.041122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641117, 27.660490, 39.398121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098709, 0.961850, -0.255148,
		-0.908204, 0.191871, 0.371955,
		0.406721, 0.195012, 0.892496,
		44.763134, 27.718994, 39.665871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143059, 28.251286, 39.176830>,  <44.478428, 27.582485, 39.041122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143059, 28.251286, 39.176830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425053, 28.216997, 39.458439>,  <44.594250, 28.196424, 39.627403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425053, 28.216997, 39.458439>,  <44.143059, 28.251286, 39.176830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425053, 28.216997, 39.458439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187810, 0.979795, -0.068764,
		-0.683906, 0.180700, 0.706838,
		0.704982, -0.085723, 0.704025,
		44.636547, 28.191280, 39.669647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015083, 28.746649, 39.815186>,  <44.143059, 28.251286, 39.176830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015083, 28.746649, 39.815186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407207, 28.669313, 39.799095>,  <44.642483, 28.622911, 39.789440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407207, 28.669313, 39.799095>,  <44.015083, 28.746649, 39.815186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407207, 28.669313, 39.799095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191658, 0.980555, -0.042183,
		0.047597, 0.033644, 0.998300,
		0.980307, -0.193340, -0.040224,
		44.701298, 28.611311, 39.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323776, 29.298981, 40.323650>,  <44.015083, 28.746649, 39.815186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323776, 29.298981, 40.323650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594975, 29.175217, 40.056942>,  <44.757694, 29.100958, 39.896915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594975, 29.175217, 40.056942>,  <44.323776, 29.298981, 40.323650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594975, 29.175217, 40.056942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163737, 0.947874, -0.273360,
		0.716599, 0.076161, 0.693315,
		0.677994, -0.309411, -0.666775,
		44.798374, 29.082394, 39.856911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892113, 29.734346, 40.372120>,  <44.323776, 29.298981, 40.323650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892113, 29.734346, 40.372120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943974, 29.577456, 40.007847>,  <44.975090, 29.483322, 39.789284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943974, 29.577456, 40.007847>,  <44.892113, 29.734346, 40.372120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943974, 29.577456, 40.007847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101276, 0.918873, -0.381334,
		0.986374, -0.042789, 0.158857,
		0.129653, -0.392226, -0.910686,
		44.982868, 29.459787, 39.734642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593369, 30.001625, 40.148102>,  <44.892113, 29.734346, 40.372120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593369, 30.001625, 40.148102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417957, 29.895443, 39.804653>,  <45.312710, 29.831734, 39.598583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417957, 29.895443, 39.804653>,  <45.593369, 30.001625, 40.148102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417957, 29.895443, 39.804653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236012, 0.887835, -0.395029,
		0.867174, -0.375876, -0.326690,
		-0.438529, -0.265456, -0.858618,
		45.286400, 29.815805, 39.547066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106041, 30.288826, 39.641182>,  <45.593369, 30.001625, 40.148102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106041, 30.288826, 39.641182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765182, 30.213186, 39.446003>,  <45.560669, 30.167803, 39.328896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765182, 30.213186, 39.446003>,  <46.106041, 30.288826, 39.641182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765182, 30.213186, 39.446003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139410, 0.816698, -0.559972,
		0.504395, -0.545202, -0.669582,
		-0.852145, -0.189101, -0.487946,
		45.509541, 30.156456, 39.299618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275272, 30.315437, 38.908890>,  <46.106041, 30.288826, 39.641182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275272, 30.315437, 38.908890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884125, 30.392567, 38.941349>,  <45.649437, 30.438845, 38.960823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884125, 30.392567, 38.941349>,  <46.275272, 30.315437, 38.908890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884125, 30.392567, 38.941349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127253, 0.856124, -0.500857,
		-0.166048, -0.479448, -0.861718,
		-0.977873, 0.192823, 0.081147,
		45.590763, 30.450413, 38.965694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064510, 30.514872, 38.244564>,  <46.275272, 30.315437, 38.908890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064510, 30.514872, 38.244564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745174, 30.629427, 38.456463>,  <45.553574, 30.698160, 38.583603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745174, 30.629427, 38.456463>,  <46.064510, 30.514872, 38.244564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745174, 30.629427, 38.456463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015566, 0.869573, -0.493558,
		-0.602004, -0.402274, -0.689758,
		-0.798341, 0.286387, 0.529749,
		45.505672, 30.715343, 38.615387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483368, 30.615852, 37.883232>,  <46.064510, 30.514872, 38.244564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483368, 30.615852, 37.883232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412121, 30.859461, 38.192390>,  <45.369373, 31.005625, 38.377888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412121, 30.859461, 38.192390>,  <45.483368, 30.615852, 37.883232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412121, 30.859461, 38.192390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155834, 0.758088, -0.633261,
		-0.971592, -0.233236, -0.040120,
		-0.178113, 0.609019, 0.772898,
		45.358688, 31.042166, 38.424259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005730, 31.084034, 37.564709>,  <45.483368, 30.615852, 37.883232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005730, 31.084034, 37.564709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104134, 31.269817, 37.905003>,  <45.163177, 31.381287, 38.109180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104134, 31.269817, 37.905003>,  <45.005730, 31.084034, 37.564709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104134, 31.269817, 37.905003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044161, 0.882173, -0.468850,
		-0.968260, 0.077774, 0.237537,
		0.246013, 0.464458, 0.850739,
		45.177937, 31.409155, 38.160225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657223, 31.779490, 37.555119>,  <45.005730, 31.084034, 37.564709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657223, 31.779490, 37.555119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947666, 31.871754, 37.814213>,  <45.121933, 31.927113, 37.969669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947666, 31.871754, 37.814213>,  <44.657223, 31.779490, 37.555119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947666, 31.871754, 37.814213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157679, 0.861085, -0.483393,
		-0.669256, 0.453130, 0.588871,
		0.726109, 0.230661, 0.647736,
		45.165501, 31.940952, 38.008533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517845, 32.407303, 37.842735>,  <44.657223, 31.779490, 37.555119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517845, 32.407303, 37.842735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912518, 32.378799, 37.901226>,  <45.149323, 32.361698, 37.936321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912518, 32.378799, 37.901226>,  <44.517845, 32.407303, 37.842735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912518, 32.378799, 37.901226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117912, 0.932571, -0.341187,
		-0.112056, 0.353885, 0.928552,
		0.986681, -0.071256, 0.146227,
		45.208523, 32.357422, 37.945095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755871, 33.035122, 38.197479>,  <44.517845, 32.407303, 37.842735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755871, 33.035122, 38.197479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073883, 32.888008, 38.004536>,  <45.264690, 32.799740, 37.888771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073883, 32.888008, 38.004536>,  <44.755871, 33.035122, 38.197479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073883, 32.888008, 38.004536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149835, 0.889646, -0.431369,
		0.587775, 0.270677, 0.762401,
		0.795029, -0.367782, -0.482354,
		45.312393, 32.777672, 37.859829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259697, 33.589993, 38.225410>,  <44.755871, 33.035122, 38.197479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259697, 33.589993, 38.225410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354088, 33.349224, 37.920254>,  <45.410721, 33.204765, 37.737160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354088, 33.349224, 37.920254>,  <45.259697, 33.589993, 38.225410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354088, 33.349224, 37.920254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207368, 0.798175, -0.565611,
		0.949375, -0.024729, 0.313169,
		0.235977, -0.601918, -0.762895,
		45.424881, 33.168648, 37.691383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718529, 33.977085, 37.937023>,  <45.259697, 33.589993, 38.225410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718529, 33.977085, 37.937023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647369, 33.712273, 37.645798>,  <45.604675, 33.553387, 37.471062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647369, 33.712273, 37.645798>,  <45.718529, 33.977085, 37.937023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647369, 33.712273, 37.645798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146885, 0.713708, -0.684869,
		0.973025, -0.228777, -0.029724,
		-0.177897, -0.662029, -0.728059,
		45.594002, 33.513664, 37.427380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320271, 34.015663, 37.422714>,  <45.718529, 33.977085, 37.937023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320271, 34.015663, 37.422714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.021034, 33.836800, 37.226589>,  <45.841492, 33.729481, 37.108913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.021034, 33.836800, 37.226589>,  <46.320271, 34.015663, 37.422714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021034, 33.836800, 37.226589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185475, 0.568531, -0.801481,
		0.637153, -0.690519, -0.342373,
		-0.748088, -0.447164, -0.490315,
		45.796608, 33.702652, 37.079494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475361, 34.026245, 36.719143>,  <46.320271, 34.015663, 37.422714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475361, 34.026245, 36.719143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088078, 33.931053, 36.688301>,  <45.855709, 33.873940, 36.669796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088078, 33.931053, 36.688301>,  <46.475361, 34.026245, 36.719143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.088078, 33.931053, 36.688301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045536, 0.470748, -0.881092,
		0.245979, -0.849566, -0.466617,
		-0.968205, -0.237978, -0.077108,
		45.797615, 33.859661, 36.665169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275074, 33.844635, 36.051102>,  <46.475361, 34.026245, 36.719143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275074, 33.844635, 36.051102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947186, 34.004646, 36.215073>,  <45.750454, 34.100655, 36.313454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947186, 34.004646, 36.215073>,  <46.275074, 33.844635, 36.051102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947186, 34.004646, 36.215073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008996, 0.706612, -0.707544,
		-0.572698, -0.583673, -0.575623,
		-0.819717, 0.400030, 0.409926,
		45.701271, 34.124657, 36.338051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204063, 34.329758, 35.416561>,  <46.275074, 33.844635, 36.051102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204063, 34.329758, 35.416561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296951, 34.632305, 35.661179>,  <46.352684, 34.813831, 35.807949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296951, 34.632305, 35.661179>,  <46.204063, 34.329758, 35.416561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296951, 34.632305, 35.661179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882552, -0.100445, 0.459361,
		0.408872, -0.646390, 0.644208,
		0.232219, 0.756367, 0.611542,
		46.366615, 34.859215, 35.844643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647385, 33.819618, 35.055779>,  <46.204063, 34.329758, 35.416561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647385, 33.819618, 35.055779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783638, 34.165855, 35.202591>,  <46.865391, 34.373600, 35.290680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783638, 34.165855, 35.202591>,  <46.647385, 33.819618, 35.055779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783638, 34.165855, 35.202591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877369, -0.432958, 0.206810,
		0.337924, 0.251577, -0.906927,
		0.340633, 0.865596, 0.367033,
		46.885826, 34.425533, 35.312702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.443798, 33.811462, 34.752518>,  <46.647385, 33.819618, 35.055779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.443798, 33.811462, 34.752518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.333519, 34.002888, 35.085976>,  <47.267353, 34.117744, 35.286053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.333519, 34.002888, 35.085976>,  <47.443798, 33.811462, 34.752518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.333519, 34.002888, 35.085976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819151, -0.336827, 0.464261,
		0.502973, 0.810880, -0.299152,
		-0.275697, 0.478562, 0.833648,
		47.250809, 34.146458, 35.336071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493164, 34.580963, 34.895119>,  <47.443798, 33.811462, 34.752518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493164, 34.580963, 34.895119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562626, 34.962078, 34.994743>,  <47.604305, 35.190746, 35.054520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562626, 34.962078, 34.994743>,  <47.493164, 34.580963, 34.895119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.562626, 34.962078, 34.994743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878009, -0.035248, -0.477344,
		-0.446029, 0.301576, -0.842680,
		0.173659, 0.952790, 0.249065,
		47.614723, 35.247913, 35.069462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.672066, 41.204163, 39.565186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346073, 41.391422, 39.428574>,  <35.150478, 41.503780, 39.346607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346073, 41.391422, 39.428574>,  <35.672066, 41.204163, 39.565186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346073, 41.391422, 39.428574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255185, -0.819073, -0.513809,
		-0.520282, -0.331589, 0.786992,
		-0.814977, 0.468154, -0.341532,
		35.101582, 41.531868, 39.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183224, 40.724785, 39.685413>,  <35.672066, 41.204163, 39.565186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183224, 40.724785, 39.685413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015125, 40.956978, 39.406437>,  <34.914265, 41.096294, 39.239052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015125, 40.956978, 39.406437>,  <35.183224, 40.724785, 39.685413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015125, 40.956978, 39.406437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281785, -0.814096, -0.507784,
		-0.862547, -0.016867, 0.505696,
		-0.420250, 0.580485, -0.697444,
		34.889050, 41.131123, 39.197205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499615, 40.431019, 39.579010>,  <35.183224, 40.724785, 39.685413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499615, 40.431019, 39.579010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570042, 40.672543, 39.268032>,  <34.612297, 40.817455, 39.081448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570042, 40.672543, 39.268032>,  <34.499615, 40.431019, 39.579010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570042, 40.672543, 39.268032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338363, -0.704534, -0.623813,
		-0.924397, 0.372890, 0.080262,
		0.176066, 0.603809, -0.777442,
		34.622860, 40.853683, 39.034798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903019, 40.332138, 39.208256>,  <34.499615, 40.431019, 39.579010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903019, 40.332138, 39.208256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.179096, 40.476402, 38.957321>,  <34.344742, 40.562962, 38.806759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.179096, 40.476402, 38.957321>,  <33.903019, 40.332138, 39.208256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179096, 40.476402, 38.957321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160582, -0.768987, -0.618767,
		-0.705581, 0.527809, -0.472835,
		0.690194, 0.360661, -0.627340,
		34.386154, 40.584602, 38.769119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504246, 40.400925, 38.563637>,  <33.903019, 40.332138, 39.208256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504246, 40.400925, 38.563637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898182, 40.376648, 38.498631>,  <34.134544, 40.362083, 38.459625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898182, 40.376648, 38.498631>,  <33.504246, 40.400925, 38.563637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898182, 40.376648, 38.498631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158244, -0.698171, -0.698223,
		-0.071090, 0.713354, -0.697189,
		0.984838, -0.060689, -0.162517,
		34.193634, 40.358440, 38.449875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558514, 40.285137, 37.969162>,  <33.504246, 40.400925, 38.563637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558514, 40.285137, 37.969162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931358, 40.170788, 38.058105>,  <34.155064, 40.102177, 38.111473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931358, 40.170788, 38.058105>,  <33.558514, 40.285137, 37.969162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931358, 40.170788, 38.058105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090487, -0.778313, -0.621322,
		0.350686, 0.559020, -0.751343,
		0.932111, -0.285875, 0.222360,
		34.210991, 40.085026, 38.124813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900364, 40.014019, 37.278519>,  <33.558514, 40.285137, 37.969162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900364, 40.014019, 37.278519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093517, 39.863564, 37.594833>,  <34.209408, 39.773293, 37.784622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093517, 39.863564, 37.594833>,  <33.900364, 40.014019, 37.278519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093517, 39.863564, 37.594833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070168, -0.883527, -0.463094,
		0.872868, 0.279109, -0.400249,
		0.482885, -0.376135, 0.790788,
		34.238384, 39.750725, 37.832069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426342, 39.609203, 37.060722>,  <33.900364, 40.014019, 37.278519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426342, 39.609203, 37.060722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366856, 39.470005, 37.430973>,  <34.331165, 39.386486, 37.653122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366856, 39.470005, 37.430973>,  <34.426342, 39.609203, 37.060722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366856, 39.470005, 37.430973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081512, -0.937162, -0.339240,
		0.985515, 0.024999, 0.167736,
		-0.148715, -0.347998, 0.925625,
		34.322243, 39.365604, 37.708660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001633, 39.149666, 37.111713>,  <34.426342, 39.609203, 37.060722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001633, 39.149666, 37.111713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723961, 39.011330, 37.364227>,  <34.557358, 38.928329, 37.515736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723961, 39.011330, 37.364227>,  <35.001633, 39.149666, 37.111713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723961, 39.011330, 37.364227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234905, -0.937845, -0.255471,
		0.680397, -0.029050, 0.732267,
		-0.694175, -0.345836, 0.631283,
		34.515709, 38.907578, 37.553612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384594, 38.602821, 37.324871>,  <35.001633, 39.149666, 37.111713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384594, 38.602821, 37.324871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.017235, 38.555965, 37.476040>,  <34.796818, 38.527851, 37.566742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.017235, 38.555965, 37.476040>,  <35.384594, 38.602821, 37.324871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017235, 38.555965, 37.476040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001516, -0.956200, -0.292710,
		0.395654, -0.268252, 0.878350,
		-0.918398, -0.117144, 0.377918,
		34.741714, 38.520821, 37.589417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405403, 38.082970, 37.870605>,  <35.384594, 38.602821, 37.324871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405403, 38.082970, 37.870605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026035, 38.103363, 37.745453>,  <34.798412, 38.115601, 37.670361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026035, 38.103363, 37.745453>,  <35.405403, 38.082970, 37.870605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026035, 38.103363, 37.745453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059432, -0.940880, -0.333485,
		-0.311384, -0.334880, 0.889323,
		-0.948424, 0.050987, -0.312877,
		34.741508, 38.118660, 37.651588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003929, 37.575367, 38.270828>,  <35.405403, 38.082970, 37.870605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003929, 37.575367, 38.270828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.795376, 37.629700, 37.933853>,  <34.670242, 37.662300, 37.731667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.795376, 37.629700, 37.933853>,  <35.003929, 37.575367, 38.270828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795376, 37.629700, 37.933853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011222, -0.988256, -0.152398,
		-0.853247, -0.070005, 0.516787,
		-0.521386, 0.135833, -0.842441,
		34.638962, 37.670448, 37.681122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620140, 36.932156, 38.286331>,  <35.003929, 37.575367, 38.270828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620140, 36.932156, 38.286331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555042, 37.080315, 37.920528>,  <34.515984, 37.169209, 37.701046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555042, 37.080315, 37.920528>,  <34.620140, 36.932156, 38.286331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555042, 37.080315, 37.920528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067775, -0.920476, -0.384877,
		-0.984337, -0.124618, 0.124702,
		-0.162748, 0.370397, -0.914505,
		34.506218, 37.191433, 37.646175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188595, 36.562218, 38.000927>,  <34.620140, 36.932156, 38.286331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188595, 36.562218, 38.000927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413338, 36.733418, 37.717762>,  <34.548183, 36.836136, 37.547863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413338, 36.733418, 37.717762>,  <34.188595, 36.562218, 38.000927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413338, 36.733418, 37.717762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083288, -0.880672, -0.466348,
		-0.823032, 0.203060, -0.530457,
		0.561855, 0.428000, -0.707909,
		34.581894, 36.861816, 37.505390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936707, 36.271591, 37.416412>,  <34.188595, 36.562218, 38.000927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936707, 36.271591, 37.416412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284889, 36.416508, 37.283119>,  <34.493797, 36.503460, 37.203144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284889, 36.416508, 37.283119>,  <33.936707, 36.271591, 37.416412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284889, 36.416508, 37.283119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170077, -0.856640, -0.487074,
		-0.461927, 0.367302, -0.807287,
		0.870458, 0.362294, -0.333236,
		34.546028, 36.525196, 37.183147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095989, 35.896591, 36.806114>,  <33.936707, 36.271591, 37.416412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095989, 35.896591, 36.806114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442684, 36.075146, 36.895119>,  <34.650700, 36.182278, 36.948521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442684, 36.075146, 36.895119>,  <34.095989, 35.896591, 36.806114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442684, 36.075146, 36.895119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498443, -0.759035, -0.418833,
		-0.018069, 0.473925, -0.880380,
		0.866734, 0.446387, 0.222510,
		34.702705, 36.209061, 36.961872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469189, 36.074535, 36.201283>,  <34.095989, 35.896591, 36.806114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469189, 36.074535, 36.201283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751709, 36.029278, 36.480808>,  <34.921223, 36.002125, 36.648521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751709, 36.029278, 36.480808>,  <34.469189, 36.074535, 36.201283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751709, 36.029278, 36.480808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441886, -0.700749, -0.560079,
		0.553061, 0.704379, -0.444943,
		0.706301, -0.113144, 0.698812,
		34.963600, 35.995335, 36.690453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090328, 36.019455, 35.858372>,  <34.469189, 36.074535, 36.201283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090328, 36.019455, 35.858372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174305, 35.868378, 36.219097>,  <35.224693, 35.777733, 36.435532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174305, 35.868378, 36.219097>,  <35.090328, 36.019455, 35.858372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174305, 35.868378, 36.219097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464873, -0.772880, -0.431914,
		0.860126, 0.509908, 0.013315,
		0.209945, -0.377690, 0.901816,
		35.237289, 35.755070, 36.489643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784966, 36.069138, 35.872250>,  <35.090328, 36.019455, 35.858372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784966, 36.069138, 35.872250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653790, 35.786438, 36.122993>,  <35.575085, 35.616817, 36.273441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653790, 35.786438, 36.122993>,  <35.784966, 36.069138, 35.872250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653790, 35.786438, 36.122993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527015, -0.687576, -0.499495,
		0.784033, 0.166559, 0.597955,
		-0.327944, -0.706752, 0.626861,
		35.555405, 35.574413, 36.311050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382820, 35.645130, 36.123837>,  <35.784966, 36.069138, 35.872250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382820, 35.645130, 36.123837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.061707, 35.419456, 36.201027>,  <35.869038, 35.284054, 36.247341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.061707, 35.419456, 36.201027>,  <36.382820, 35.645130, 36.123837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061707, 35.419456, 36.201027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427245, -0.770013, -0.473858,
		0.415938, -0.297956, 0.859196,
		-0.802781, -0.564182, 0.192977,
		35.820873, 35.250202, 36.258919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711884, 35.050179, 36.456287>,  <36.382820, 35.645130, 36.123837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711884, 35.050179, 36.456287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356697, 34.959610, 36.296162>,  <36.143585, 34.905270, 36.200085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356697, 34.959610, 36.296162>,  <36.711884, 35.050179, 36.456287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356697, 34.959610, 36.296162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420581, -0.751970, -0.507595,
		-0.186092, -0.619090, 0.762953,
		-0.887965, -0.226425, -0.400313,
		36.090309, 34.891682, 36.176067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787453, 34.388920, 36.426605>,  <36.711884, 35.050179, 36.456287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787453, 34.388920, 36.426605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452919, 34.412365, 36.208572>,  <36.252197, 34.426434, 36.077755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452919, 34.412365, 36.208572>,  <36.787453, 34.388920, 36.426605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452919, 34.412365, 36.208572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256505, -0.836888, -0.483554,
		-0.484513, -0.544228, 0.684883,
		-0.836333, 0.058612, -0.545080,
		36.202019, 34.429947, 36.045048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414532, 34.207012, 36.132950>,  <36.787453, 34.388920, 36.426605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414532, 34.207012, 36.132950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776245, 34.316738, 36.002090>,  <37.993271, 34.382572, 35.923576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776245, 34.316738, 36.002090>,  <37.414532, 34.207012, 36.132950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776245, 34.316738, 36.002090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219828, 0.956050, 0.194020,
		0.365992, -0.103533, 0.924841,
		0.904282, 0.274315, -0.327147,
		38.047531, 34.399033, 35.903946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741989, 34.526909, 36.574650>,  <37.414532, 34.207012, 36.132950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741989, 34.526909, 36.574650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951347, 34.649811, 36.256744>,  <38.076962, 34.723553, 36.066002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951347, 34.649811, 36.256744>,  <37.741989, 34.526909, 36.574650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951347, 34.649811, 36.256744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022639, 0.937409, 0.347493,
		0.851791, -0.163882, 0.497588,
		0.523392, 0.307257, -0.794767,
		38.108364, 34.741989, 36.018314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240524, 34.908222, 36.843975>,  <37.741989, 34.526909, 36.574650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240524, 34.908222, 36.843975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216431, 35.039875, 36.467030>,  <38.201973, 35.118866, 36.240864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216431, 35.039875, 36.467030>,  <38.240524, 34.908222, 36.843975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216431, 35.039875, 36.467030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069613, 0.943162, 0.324961,
		0.995754, -0.046026, -0.079725,
		-0.060237, 0.329131, -0.942361,
		38.198360, 35.138615, 36.184322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567375, 35.519634, 36.903942>,  <38.240524, 34.908222, 36.843975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567375, 35.519634, 36.903942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408310, 35.554436, 36.538582>,  <38.312870, 35.575317, 36.319366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408310, 35.554436, 36.538582>,  <38.567375, 35.519634, 36.903942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408310, 35.554436, 36.538582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017837, 0.994573, 0.102504,
		0.917358, 0.057055, -0.393953,
		-0.397664, 0.087006, -0.913397,
		38.289009, 35.580536, 36.264565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960865, 36.019432, 36.512405>,  <38.567375, 35.519634, 36.903942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960865, 36.019432, 36.512405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610928, 36.002205, 36.319408>,  <38.400967, 35.991871, 36.203609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610928, 36.002205, 36.319408>,  <38.960865, 36.019432, 36.512405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610928, 36.002205, 36.319408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083687, 0.994500, 0.062972,
		0.477124, 0.095469, -0.873635,
		-0.874842, -0.043066, -0.482490,
		38.348476, 35.989285, 36.174660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037853, 36.356522, 35.823902>,  <38.960865, 36.019432, 36.512405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037853, 36.356522, 35.823902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.641846, 36.393284, 35.866646>,  <38.404243, 36.415340, 35.892292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.641846, 36.393284, 35.866646>,  <39.037853, 36.356522, 35.823902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641846, 36.393284, 35.866646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107176, 0.983271, 0.147282,
		-0.091538, 0.157265, -0.983305,
		-0.990017, 0.091905, 0.106862,
		38.344841, 36.420856, 35.898705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882755, 36.917835, 35.516609>,  <39.037853, 36.356522, 35.823902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882755, 36.917835, 35.516609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568859, 36.846970, 35.754196>,  <38.380520, 36.804451, 35.896748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568859, 36.846970, 35.754196>,  <38.882755, 36.917835, 35.516609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568859, 36.846970, 35.754196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072356, 0.925542, 0.371666,
		-0.615587, 0.334639, -0.713491,
		-0.784741, -0.177167, 0.593965,
		38.333435, 36.793819, 35.932384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636623, 37.524319, 35.582714>,  <38.882755, 36.917835, 35.516609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636623, 37.524319, 35.582714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460205, 37.343479, 35.892834>,  <38.354355, 37.234978, 36.078903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460205, 37.343479, 35.892834>,  <38.636623, 37.524319, 35.582714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460205, 37.343479, 35.892834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002171, 0.864391, 0.502815,
		-0.897481, 0.220082, -0.382219,
		-0.441047, -0.452097, 0.775297,
		38.327892, 37.207851, 36.125423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023781, 37.958439, 35.642944>,  <38.636623, 37.524319, 35.582714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023781, 37.958439, 35.642944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117512, 37.771179, 35.983749>,  <38.173752, 37.658825, 36.188232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117512, 37.771179, 35.983749>,  <38.023781, 37.958439, 35.642944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117512, 37.771179, 35.983749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120486, 0.855672, 0.503298,
		-0.964662, -0.220593, 0.144102,
		0.234328, -0.468150, 0.852013,
		38.187809, 37.630733, 36.239353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515625, 38.179844, 36.050526>,  <38.023781, 37.958439, 35.642944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515625, 38.179844, 36.050526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.810406, 38.061077, 36.293423>,  <37.987274, 37.989819, 36.439159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.810406, 38.061077, 36.293423>,  <37.515625, 38.179844, 36.050526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810406, 38.061077, 36.293423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024475, 0.909492, 0.415000,
		-0.675498, -0.290974, 0.677522,
		0.736955, -0.296914, 0.607239,
		38.031494, 37.972004, 36.475594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340923, 38.533936, 36.646954>,  <37.515625, 38.179844, 36.050526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340923, 38.533936, 36.646954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710728, 38.398895, 36.717720>,  <37.932610, 38.317871, 36.760181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710728, 38.398895, 36.717720>,  <37.340923, 38.533936, 36.646954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710728, 38.398895, 36.717720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185448, 0.803954, 0.565037,
		-0.332993, -0.489574, 0.805874,
		0.924513, -0.337601, 0.176920,
		37.988083, 38.297615, 36.770798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421314, 38.433674, 37.391457>,  <37.340923, 38.533936, 36.646954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421314, 38.433674, 37.391457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778130, 38.486511, 37.218567>,  <37.992218, 38.518211, 37.114834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778130, 38.486511, 37.218567>,  <37.421314, 38.433674, 37.391457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778130, 38.486511, 37.218567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182081, 0.770257, 0.611188,
		0.413653, -0.623904, 0.663050,
		0.892041, 0.132091, -0.432220,
		38.045742, 38.526138, 37.088902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940102, 38.513428, 37.943943>,  <37.421314, 38.433674, 37.391457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940102, 38.513428, 37.943943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106884, 38.709110, 37.637524>,  <38.206955, 38.826519, 37.453674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106884, 38.709110, 37.637524>,  <37.940102, 38.513428, 37.943943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106884, 38.709110, 37.637524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222432, 0.762259, 0.607853,
		0.881289, -0.423842, 0.209015,
		0.416957, 0.489202, -0.766047,
		38.231972, 38.855869, 37.407711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507393, 38.796772, 38.245625>,  <37.940102, 38.513428, 37.943943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507393, 38.796772, 38.245625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435299, 38.992676, 37.904415>,  <38.392044, 39.110218, 37.699688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435299, 38.992676, 37.904415>,  <38.507393, 38.796772, 38.245625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435299, 38.992676, 37.904415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189220, 0.868294, 0.458543,
		0.965252, -0.078766, -0.249166,
		-0.180232, 0.489757, -0.853027,
		38.381229, 39.139603, 37.648506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955650, 39.403309, 38.352753>,  <38.507393, 38.796772, 38.245625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955650, 39.403309, 38.352753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.690407, 39.465611, 38.059898>,  <38.531261, 39.502991, 37.884186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.690407, 39.465611, 38.059898>,  <38.955650, 39.403309, 38.352753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690407, 39.465611, 38.059898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206726, 0.901961, 0.379119,
		0.719406, 0.402750, -0.565904,
		-0.663113, 0.155753, -0.732135,
		38.491474, 39.512337, 37.840260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151970, 40.070496, 38.110580>,  <38.955650, 39.403309, 38.352753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151970, 40.070496, 38.110580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.767651, 39.994831, 38.029499>,  <38.537060, 39.949432, 37.980850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.767651, 39.994831, 38.029499>,  <39.151970, 40.070496, 38.110580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767651, 39.994831, 38.029499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257885, 0.878176, 0.402867,
		0.101802, 0.439347, -0.892531,
		-0.960797, -0.189157, -0.202701,
		38.479412, 39.938084, 37.968689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807125, 40.700069, 38.088066>,  <39.151970, 40.070496, 38.110580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807125, 40.700069, 38.088066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491554, 40.454895, 38.070637>,  <38.302212, 40.307789, 38.060181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491554, 40.454895, 38.070637>,  <38.807125, 40.700069, 38.088066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491554, 40.454895, 38.070637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566547, 0.698094, 0.437823,
		-0.237940, 0.370098, -0.898005,
		-0.788929, -0.612938, -0.043573,
		38.254875, 40.271015, 38.057564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291107, 41.122364, 37.952057>,  <38.807125, 40.700069, 38.088066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291107, 41.122364, 37.952057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134823, 40.800419, 38.130741>,  <38.041054, 40.607254, 38.237949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134823, 40.800419, 38.130741>,  <38.291107, 41.122364, 37.952057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134823, 40.800419, 38.130741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544159, 0.593356, 0.593144,
		-0.742456, -0.011335, -0.669800,
		-0.390706, -0.804860, 0.446709,
		38.017612, 40.558960, 38.264755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.529400, 41.330200, 37.997066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.569469, 41.009136, 38.232254>,  <37.593510, 40.816498, 38.373367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.569469, 41.009136, 38.232254>,  <37.529400, 41.330200, 37.997066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569469, 41.009136, 38.232254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534174, 0.455171, 0.712375,
		-0.839419, -0.385436, -0.383164,
		0.100170, -0.802657, 0.587969,
		37.599522, 40.768337, 38.408646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864368, 41.136623, 38.250340>,  <37.529400, 41.330200, 37.997066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864368, 41.136623, 38.250340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.167114, 41.038910, 38.492821>,  <37.348763, 40.980282, 38.638309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.167114, 41.038910, 38.492821>,  <36.864368, 41.136623, 38.250340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167114, 41.038910, 38.492821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401265, 0.558456, 0.726026,
		-0.515894, -0.792751, 0.324653,
		0.756862, -0.244281, 0.606207,
		37.394173, 40.965626, 38.674683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544064, 41.339798, 38.828293>,  <36.864368, 41.136623, 38.250340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544064, 41.339798, 38.828293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916462, 41.246418, 38.940540>,  <37.139900, 41.190388, 39.007889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916462, 41.246418, 38.940540>,  <36.544064, 41.339798, 38.828293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916462, 41.246418, 38.940540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133581, 0.497550, 0.857088,
		-0.339714, -0.835431, 0.432031,
		0.930994, -0.233453, 0.280622,
		37.195759, 41.176384, 39.024727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450806, 41.167889, 39.499397>,  <36.544064, 41.339798, 38.828293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450806, 41.167889, 39.499397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835789, 41.276131, 39.490856>,  <37.066776, 41.341076, 39.485733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835789, 41.276131, 39.490856>,  <36.450806, 41.167889, 39.499397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835789, 41.276131, 39.490856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154445, 0.610609, 0.776726,
		0.223223, -0.744266, 0.629476,
		0.962454, 0.270603, -0.021353,
		37.124523, 41.357311, 39.484451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779888, 40.937557, 40.188351>,  <36.450806, 41.167889, 39.499397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779888, 40.937557, 40.188351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.015667, 41.218426, 40.028599>,  <37.157135, 41.386948, 39.932747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.015667, 41.218426, 40.028599>,  <36.779888, 40.937557, 40.188351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015667, 41.218426, 40.028599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009189, 0.500196, 0.865864,
		0.807755, -0.506711, 0.301290,
		0.589446, 0.702174, -0.399379,
		37.192501, 41.429077, 39.908787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485420, 41.049694, 40.595787>,  <36.779888, 40.937557, 40.188351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485420, 41.049694, 40.595787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403675, 41.391350, 40.404507>,  <37.354626, 41.596344, 40.289738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403675, 41.391350, 40.404507>,  <37.485420, 41.049694, 40.595787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403675, 41.391350, 40.404507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098013, 0.503910, 0.858177,
		0.973975, 0.128513, -0.186699,
		-0.204366, 0.854143, -0.478200,
		37.342365, 41.647591, 40.261047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900101, 41.664589, 40.853607>,  <37.485420, 41.049694, 40.595787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900101, 41.664589, 40.853607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605511, 41.862015, 40.668568>,  <37.428757, 41.980469, 40.557545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605511, 41.862015, 40.668568>,  <37.900101, 41.664589, 40.853607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605511, 41.862015, 40.668568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053657, 0.639071, 0.767274,
		0.674330, 0.589902, -0.444178,
		-0.736478, 0.493563, -0.462597,
		37.384567, 42.010082, 40.529789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022842, 42.327702, 40.989231>,  <37.900101, 41.664589, 40.853607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022842, 42.327702, 40.989231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641861, 42.342964, 40.868320>,  <37.413273, 42.352123, 40.795773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641861, 42.342964, 40.868320>,  <38.022842, 42.327702, 40.989231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641861, 42.342964, 40.868320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211337, 0.631902, 0.745679,
		0.219464, 0.774109, -0.593794,
		-0.952456, 0.038159, -0.302277,
		37.356125, 42.354412, 40.777637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887478, 42.991924, 40.860989>,  <38.022842, 42.327702, 40.989231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887478, 42.991924, 40.860989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526909, 42.844616, 40.952042>,  <37.310570, 42.756229, 41.006676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526909, 42.844616, 40.952042>,  <37.887478, 42.991924, 40.860989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526909, 42.844616, 40.952042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131321, 0.733587, 0.666787,
		-0.412548, 0.571162, -0.709632,
		-0.901421, -0.368271, 0.227634,
		37.256481, 42.734135, 41.020332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411457, 43.597622, 40.921238>,  <37.887478, 42.991924, 40.860989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411457, 43.597622, 40.921238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255142, 43.294308, 41.129963>,  <37.161354, 43.112320, 41.255196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255142, 43.294308, 41.129963>,  <37.411457, 43.597622, 40.921238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255142, 43.294308, 41.129963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100263, 0.598580, 0.794763,
		-0.915003, 0.258268, -0.309948,
		-0.390791, -0.758287, 0.521808,
		37.137905, 43.066822, 41.286507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952419, 43.960011, 41.319180>,  <37.411457, 43.597622, 40.921238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952419, 43.960011, 41.319180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975403, 43.598572, 41.488983>,  <36.989193, 43.381710, 41.590866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975403, 43.598572, 41.488983>,  <36.952419, 43.960011, 41.319180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975403, 43.598572, 41.488983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248311, 0.424788, 0.870573,
		-0.966975, 0.055390, 0.248780,
		0.057458, -0.903597, 0.424513,
		36.992641, 43.327492, 41.616337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469685, 43.953316, 41.874680>,  <36.952419, 43.960011, 41.319180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469685, 43.953316, 41.874680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745975, 43.674522, 41.951729>,  <36.911751, 43.507244, 41.997959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745975, 43.674522, 41.951729>,  <36.469685, 43.953316, 41.874680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745975, 43.674522, 41.951729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065681, 0.325752, 0.943171,
		-0.720124, -0.638825, 0.270786,
		0.690730, -0.696985, 0.192623,
		36.953194, 43.465427, 42.009518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198555, 43.681324, 42.486397>,  <36.469685, 43.953316, 41.874680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198555, 43.681324, 42.486397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579178, 43.559444, 42.502872>,  <36.807552, 43.486317, 42.512760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579178, 43.559444, 42.502872>,  <36.198555, 43.681324, 42.486397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579178, 43.559444, 42.502872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030397, 0.226543, 0.973527,
		-0.305964, -0.925115, 0.224831,
		0.951558, -0.304699, 0.041193,
		36.864647, 43.468037, 42.515232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286327, 43.146893, 42.997131>,  <36.198555, 43.681324, 42.486397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286327, 43.146893, 42.997131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.665947, 43.271423, 42.977619>,  <36.893719, 43.346142, 42.965912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.665947, 43.271423, 42.977619>,  <36.286327, 43.146893, 42.997131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665947, 43.271423, 42.977619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008783, 0.180876, 0.983467,
		0.315009, -0.932929, 0.174395,
		0.949048, 0.311332, -0.048784,
		36.950661, 43.364822, 42.962986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651115, 42.780746, 43.494717>,  <36.286327, 43.146893, 42.997131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651115, 42.780746, 43.494717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879360, 43.101830, 43.425369>,  <37.016308, 43.294479, 43.383759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879360, 43.101830, 43.425369>,  <36.651115, 42.780746, 43.494717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879360, 43.101830, 43.425369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131158, 0.297484, 0.945675,
		0.810680, -0.516872, 0.275029,
		0.570610, 0.802712, -0.173373,
		37.050545, 43.342644, 43.373356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997414, 42.810101, 44.083805>,  <36.651115, 42.780746, 43.494717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997414, 42.810101, 44.083805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006031, 43.160885, 43.891777>,  <37.011200, 43.371357, 43.776558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006031, 43.160885, 43.891777>,  <36.997414, 42.810101, 44.083805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006031, 43.160885, 43.891777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056692, 0.480483, 0.875170,
		0.998159, 0.008362, 0.060068,
		0.021544, 0.876964, -0.480072,
		37.012493, 43.423973, 43.747757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372200, 43.273537, 44.547649>,  <36.997414, 42.810101, 44.083805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372200, 43.273537, 44.547649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194439, 43.529488, 44.296871>,  <37.087780, 43.683060, 44.146404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194439, 43.529488, 44.296871>,  <37.372200, 43.273537, 44.547649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194439, 43.529488, 44.296871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119971, 0.651034, 0.749507,
		0.887756, 0.408300, -0.212556,
		-0.444405, 0.639879, -0.626944,
		37.061119, 43.721451, 44.108788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740116, 43.899361, 44.568451>,  <37.372200, 43.273537, 44.547649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740116, 43.899361, 44.568451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358932, 43.949749, 44.458176>,  <37.130222, 43.979980, 44.392010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358932, 43.949749, 44.458176>,  <37.740116, 43.899361, 44.568451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358932, 43.949749, 44.458176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172266, 0.523285, 0.834564,
		0.249395, 0.842796, -0.476968,
		-0.952957, 0.125971, -0.275689,
		37.073044, 43.987541, 44.375469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670036, 44.583668, 44.816395>,  <37.740116, 43.899361, 44.568451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670036, 44.583668, 44.816395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296906, 44.453705, 44.754086>,  <37.073025, 44.375729, 44.716702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296906, 44.453705, 44.754086>,  <37.670036, 44.583668, 44.816395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296906, 44.453705, 44.754086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261597, 0.313402, 0.912878,
		-0.247780, 0.892309, -0.377345,
		-0.932830, -0.324905, -0.155771,
		37.017056, 44.356232, 44.707355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235939, 45.119617, 44.980141>,  <37.670036, 44.583668, 44.816395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235939, 45.119617, 44.980141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947021, 44.843246, 44.992199>,  <36.773670, 44.677422, 44.999435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947021, 44.843246, 44.992199>,  <37.235939, 45.119617, 44.980141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947021, 44.843246, 44.992199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213295, 0.264019, 0.940638,
		-0.657873, 0.672987, -0.338071,
		-0.722294, -0.690929, 0.030146,
		36.730335, 44.635967, 45.001244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640446, 45.427979, 45.165806>,  <37.235939, 45.119617, 44.980141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640446, 45.427979, 45.165806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.559715, 45.042374, 45.235023>,  <36.511276, 44.811012, 45.276554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.559715, 45.042374, 45.235023>,  <36.640446, 45.427979, 45.165806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559715, 45.042374, 45.235023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256682, 0.222567, 0.940520,
		-0.945188, 0.145403, -0.292364,
		-0.201825, -0.964014, 0.173045,
		36.499168, 44.753170, 45.286938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975990, 45.469059, 45.405006>,  <36.640446, 45.427979, 45.165806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975990, 45.469059, 45.405006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202206, 45.173370, 45.551273>,  <36.337936, 44.995956, 45.639034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202206, 45.173370, 45.551273>,  <35.975990, 45.469059, 45.405006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202206, 45.173370, 45.551273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075223, 0.395300, 0.915467,
		-0.821282, -0.545241, 0.167952,
		0.565542, -0.739223, 0.365668,
		36.371868, 44.951603, 45.660973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447952, 45.760597, 45.170052>,  <35.975990, 45.469059, 45.405006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447952, 45.760597, 45.170052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.745758, 45.602192, 44.955063>,  <35.924442, 45.507149, 44.826069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.745758, 45.602192, 44.955063>,  <35.447952, 45.760597, 45.170052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745758, 45.602192, 44.955063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369185, 0.426558, -0.825682,
		0.556241, 0.813158, 0.171377,
		0.744512, -0.396009, -0.537475,
		35.969112, 45.483391, 44.793819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236660, 46.439255, 45.592655>,  <35.447952, 45.760597, 45.170052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236660, 46.439255, 45.592655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431210, 46.393223, 45.246197>,  <35.547939, 46.365604, 45.038322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431210, 46.393223, 45.246197>,  <35.236660, 46.439255, 45.592655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431210, 46.393223, 45.246197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872804, 0.110164, 0.475476,
		0.040701, -0.987229, 0.154020,
		0.486371, -0.115077, -0.866141,
		35.577122, 46.358700, 44.986355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090984, 46.658951, 44.928352>,  <35.236660, 46.439255, 45.592655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090984, 46.658951, 44.928352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881252, 46.974117, 44.799198>,  <34.755413, 47.163219, 44.721706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881252, 46.974117, 44.799198>,  <35.090984, 46.658951, 44.928352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881252, 46.974117, 44.799198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541220, -0.601120, -0.587992,
		-0.657386, -0.133550, 0.741626,
		-0.524332, 0.787920, -0.322888,
		34.723953, 47.210495, 44.702332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401024, 46.468052, 44.929508>,  <35.090984, 46.658951, 44.928352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401024, 46.468052, 44.929508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428616, 46.750011, 44.647133>,  <34.445171, 46.919189, 44.477707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428616, 46.750011, 44.647133>,  <34.401024, 46.468052, 44.929508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428616, 46.750011, 44.647133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453957, -0.607943, -0.651405,
		-0.888350, 0.365401, 0.278060,
		0.068979, 0.704902, -0.705942,
		34.449310, 46.961483, 44.435349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894501, 46.255287, 44.440392>,  <34.401024, 46.468052, 44.929508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894501, 46.255287, 44.440392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.080719, 46.533909, 44.222008>,  <34.192448, 46.701084, 44.090977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.080719, 46.533909, 44.222008>,  <33.894501, 46.255287, 44.440392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080719, 46.533909, 44.222008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102416, -0.570345, -0.814996,
		-0.879079, 0.435331, -0.194181,
		0.465543, 0.696559, -0.545963,
		34.220383, 46.742878, 44.058220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494900, 46.448349, 43.864044>,  <33.894501, 46.255287, 44.440392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494900, 46.448349, 43.864044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.863441, 46.545620, 43.742733>,  <34.084568, 46.603981, 43.669949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.863441, 46.545620, 43.742733>,  <33.494900, 46.448349, 43.864044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863441, 46.545620, 43.742733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035704, -0.723935, -0.688944,
		-0.387084, 0.645589, -0.658317,
		0.921353, 0.243175, -0.303273,
		34.139847, 46.618572, 43.651752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419086, 46.465984, 43.134716>,  <33.494900, 46.448349, 43.864044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419086, 46.465984, 43.134716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801613, 46.412689, 43.238800>,  <34.031128, 46.380711, 43.301250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801613, 46.412689, 43.238800>,  <33.419086, 46.465984, 43.134716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801613, 46.412689, 43.238800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017035, -0.863186, -0.504599,
		0.291844, 0.486988, -0.823207,
		0.956314, -0.133241, 0.260212,
		34.088509, 46.372719, 43.316864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702385, 46.408184, 42.448288>,  <33.419086, 46.465984, 43.134716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702385, 46.408184, 42.448288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949821, 46.256432, 42.723511>,  <34.098282, 46.165382, 42.888645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949821, 46.256432, 42.723511>,  <33.702385, 46.408184, 42.448288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949821, 46.256432, 42.723511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186390, -0.779853, -0.597568,
		0.763286, 0.497896, -0.411697,
		0.618590, -0.379379, 0.688054,
		34.135399, 46.142616, 42.929928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353214, 46.215645, 42.099869>,  <33.702385, 46.408184, 42.448288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353214, 46.215645, 42.099869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.392570, 45.989307, 42.427315>,  <34.416183, 45.853504, 42.623783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.392570, 45.989307, 42.427315>,  <34.353214, 46.215645, 42.099869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392570, 45.989307, 42.427315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335211, -0.755692, -0.562639,
		0.936992, 0.329767, 0.115327,
		0.098388, -0.565847, 0.818619,
		34.422089, 45.819553, 42.672901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839020, 45.795197, 41.816181>,  <34.353214, 46.215645, 42.099869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839020, 45.795197, 41.816181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732365, 45.619915, 42.159550>,  <34.668373, 45.514744, 42.365570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732365, 45.619915, 42.159550>,  <34.839020, 45.795197, 41.816181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732365, 45.619915, 42.159550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294796, -0.885056, -0.360239,
		0.917607, 0.157006, 0.365167,
		-0.266633, -0.438208, 0.858418,
		34.652374, 45.488453, 42.417076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394337, 45.400669, 42.030975>,  <34.839020, 45.795197, 41.816181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394337, 45.400669, 42.030975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039410, 45.258095, 42.148026>,  <34.826454, 45.172550, 42.218258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039410, 45.258095, 42.148026>,  <35.394337, 45.400669, 42.030975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039410, 45.258095, 42.148026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143941, -0.816893, -0.558540,
		0.438129, -0.453478, 0.776145,
		-0.887313, -0.356431, 0.292630,
		34.773216, 45.151165, 42.235813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562717, 44.739216, 42.415646>,  <35.394337, 45.400669, 42.030975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562717, 44.739216, 42.415646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187325, 44.753139, 42.278217>,  <34.962090, 44.761494, 42.195759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187325, 44.753139, 42.278217>,  <35.562717, 44.739216, 42.415646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187325, 44.753139, 42.278217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139282, -0.872239, -0.468829,
		-0.315996, -0.487840, 0.813731,
		-0.938482, 0.034810, -0.343571,
		34.905781, 44.763584, 42.175144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293060, 44.111801, 42.574570>,  <35.562717, 44.739216, 42.415646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293060, 44.111801, 42.574570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049648, 44.249123, 42.288399>,  <34.903603, 44.331516, 42.116695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049648, 44.249123, 42.288399>,  <35.293060, 44.111801, 42.574570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049648, 44.249123, 42.288399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176140, -0.820645, -0.543615,
		-0.773737, -0.456820, 0.438916,
		-0.608528, 0.343304, -0.715427,
		34.867088, 44.352116, 42.073772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905411, 43.569157, 42.443806>,  <35.293060, 44.111801, 42.574570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905411, 43.569157, 42.443806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891060, 43.826298, 42.137749>,  <34.882450, 43.980583, 41.954113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891060, 43.826298, 42.137749>,  <34.905411, 43.569157, 42.443806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891060, 43.826298, 42.137749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014390, -0.765227, -0.643599,
		-0.999252, -0.034103, 0.018206,
		-0.035880, 0.642856, -0.765146,
		34.880295, 44.019154, 41.908203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437344, 43.311226, 42.061958>,  <34.905411, 43.569157, 42.443806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437344, 43.311226, 42.061958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.636913, 43.558525, 41.819031>,  <34.756657, 43.706905, 41.673275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.636913, 43.558525, 41.819031>,  <34.437344, 43.311226, 42.061958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636913, 43.558525, 41.819031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119536, -0.644978, -0.754794,
		-0.858359, 0.449185, -0.247895,
		0.498929, 0.618253, -0.607317,
		34.786591, 43.743999, 41.636837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056561, 43.384594, 41.458797>,  <34.437344, 43.311226, 42.061958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056561, 43.384594, 41.458797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417809, 43.521038, 41.354473>,  <34.634556, 43.602905, 41.291878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417809, 43.521038, 41.354473>,  <34.056561, 43.384594, 41.458797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417809, 43.521038, 41.354473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045324, -0.679722, -0.732068,
		-0.426996, 0.649322, -0.629329,
		0.903117, 0.341114, -0.260809,
		34.688744, 43.623371, 41.276230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973175, 43.408852, 40.734791>,  <34.056561, 43.384594, 41.458797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973175, 43.408852, 40.734791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368141, 43.391838, 40.795719>,  <34.605122, 43.381630, 40.832275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368141, 43.391838, 40.795719>,  <33.973175, 43.408852, 40.734791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368141, 43.391838, 40.795719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107982, -0.522386, -0.845844,
		0.115547, 0.851648, -0.511219,
		0.987415, -0.042532, 0.152323,
		34.664364, 43.379078, 40.841415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337471, 43.619625, 40.029240>,  <33.973175, 43.408852, 40.734791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337471, 43.619625, 40.029240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.576508, 43.399105, 40.262119>,  <34.719929, 43.266792, 40.401848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.576508, 43.399105, 40.262119>,  <34.337471, 43.619625, 40.029240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576508, 43.399105, 40.262119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162311, -0.627903, -0.761179,
		0.785198, 0.549373, -0.285750,
		0.597594, -0.551296, 0.582197,
		34.755787, 43.233715, 40.436779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918579, 43.522045, 39.613514>,  <34.337471, 43.619625, 40.029240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918579, 43.522045, 39.613514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.931763, 43.222832, 39.878651>,  <34.939671, 43.043304, 40.037731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.931763, 43.222832, 39.878651>,  <34.918579, 43.522045, 39.613514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931763, 43.222832, 39.878651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303232, -0.624455, -0.719796,
		0.952347, 0.224715, 0.206250,
		0.032955, -0.748037, 0.662838,
		34.941650, 42.998421, 40.077503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567539, 43.230247, 39.421345>,  <34.918579, 43.522045, 39.613514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567539, 43.230247, 39.421345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364735, 42.969009, 39.646343>,  <35.243053, 42.812267, 39.781342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364735, 42.969009, 39.646343>,  <35.567539, 43.230247, 39.421345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364735, 42.969009, 39.646343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161732, -0.713085, -0.682167,
		0.846631, -0.254893, 0.467168,
		-0.507010, -0.653100, 0.562496,
		35.212631, 42.773079, 39.815090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759624, 42.644279, 39.276257>,  <35.567539, 43.230247, 39.421345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759624, 42.644279, 39.276257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438927, 42.501457, 39.467972>,  <35.246506, 42.415764, 39.583000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438927, 42.501457, 39.467972>,  <35.759624, 42.644279, 39.276257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438927, 42.501457, 39.467972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011057, -0.792936, -0.609205,
		0.597563, -0.493727, 0.631785,
		-0.801746, -0.357053, 0.479288,
		35.198402, 42.394341, 39.611759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840675, 41.949085, 39.368294>,  <35.759624, 42.644279, 39.276257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840675, 41.949085, 39.368294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.442348, 41.968533, 39.399235>,  <35.203354, 41.980202, 39.417801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.442348, 41.968533, 39.399235>,  <35.840675, 41.949085, 39.368294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442348, 41.968533, 39.399235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088652, -0.719098, -0.689230,
		0.022115, -0.693205, 0.720401,
		-0.995817, 0.048623, 0.077357,
		35.143604, 41.983120, 39.422443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.899422, 26.767437, 39.399082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.559662, 26.564655, 39.340397>,  <43.355808, 26.442987, 39.305187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.559662, 26.564655, 39.340397>,  <43.899422, 26.767437, 39.399082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559662, 26.564655, 39.340397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279813, 0.668299, -0.689261,
		0.447470, -0.544405, -0.709503,
		-0.849397, -0.506952, -0.146712,
		43.304844, 26.412569, 39.296383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893391, 26.427967, 38.670731>,  <43.899422, 26.767437, 39.399082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893391, 26.427967, 38.670731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.534695, 26.516687, 38.823914>,  <43.319477, 26.569920, 38.915821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.534695, 26.516687, 38.823914>,  <43.893391, 26.427967, 38.670731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534695, 26.516687, 38.823914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174051, 0.618841, -0.765991,
		-0.406887, -0.753551, -0.516336,
		-0.896744, 0.221803, 0.382955,
		43.265671, 26.583229, 38.938801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574806, 26.507547, 38.117191>,  <43.893391, 26.427967, 38.670731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574806, 26.507547, 38.117191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.324036, 26.663458, 38.387016>,  <43.173573, 26.757004, 38.548912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.324036, 26.663458, 38.387016>,  <43.574806, 26.507547, 38.117191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324036, 26.663458, 38.387016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421756, 0.558207, -0.714512,
		-0.655046, -0.732448, -0.185564,
		-0.626926, 0.389775, 0.674566,
		43.135960, 26.780390, 38.589386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829983, 26.394619, 37.814262>,  <43.574806, 26.507547, 38.117191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829983, 26.394619, 37.814262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.874908, 26.703718, 38.064140>,  <42.901863, 26.889177, 38.214066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.874908, 26.703718, 38.064140>,  <42.829983, 26.394619, 37.814262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874908, 26.703718, 38.064140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161699, 0.634506, -0.755814,
		-0.980428, -0.016125, 0.196216,
		0.112313, 0.772749, 0.624695,
		42.908604, 26.935543, 38.251549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383507, 26.879900, 37.562084>,  <42.829983, 26.394619, 37.814262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383507, 26.879900, 37.562084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.619663, 27.099546, 37.798698>,  <42.761356, 27.231335, 37.940666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.619663, 27.099546, 37.798698>,  <42.383507, 26.879900, 37.562084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619663, 27.099546, 37.798698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212632, 0.812823, -0.542316,
		-0.778607, 0.194398, 0.596641,
		0.590388, 0.549116, 0.591534,
		42.796780, 27.264282, 37.976158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975807, 27.508911, 37.581993>,  <42.383507, 26.879900, 37.562084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975807, 27.508911, 37.581993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.332390, 27.605406, 37.735413>,  <42.546341, 27.663303, 37.827465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.332390, 27.605406, 37.735413>,  <41.975807, 27.508911, 37.581993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332390, 27.605406, 37.735413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065528, 0.906228, -0.417681,
		-0.448345, 0.347210, 0.823670,
		0.891456, 0.241239, 0.383551,
		42.599827, 27.677778, 37.850479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889778, 28.237461, 37.804844>,  <41.975807, 27.508911, 37.581993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889778, 28.237461, 37.804844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286736, 28.188606, 37.811028>,  <42.524910, 28.159294, 37.814739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286736, 28.188606, 37.811028>,  <41.889778, 28.237461, 37.804844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286736, 28.188606, 37.811028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120071, 0.932472, -0.340704,
		0.027195, 0.339969, 0.940043,
		0.992393, -0.122137, 0.015462,
		42.584454, 28.151966, 37.815666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247475, 28.669777, 38.242371>,  <41.889778, 28.237461, 37.804844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247475, 28.669777, 38.242371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489670, 28.576338, 37.938053>,  <42.634987, 28.520275, 37.755463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489670, 28.576338, 37.938053>,  <42.247475, 28.669777, 38.242371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489670, 28.576338, 37.938053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105489, 0.971075, -0.214209,
		0.788829, 0.049446, 0.612621,
		0.605492, -0.233599, -0.760796,
		42.671318, 28.506258, 37.709816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623817, 29.280037, 38.143593>,  <42.247475, 28.669777, 38.242371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623817, 29.280037, 38.143593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730484, 29.070036, 37.820293>,  <42.794483, 28.944035, 37.626316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730484, 29.070036, 37.820293>,  <42.623817, 29.280037, 38.143593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730484, 29.070036, 37.820293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022377, 0.841759, -0.539389,
		0.963529, 0.125752, 0.236219,
		0.266669, -0.525002, -0.808245,
		42.810486, 28.912535, 37.577820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348095, 29.462761, 37.886829>,  <42.623817, 29.280037, 38.143593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348095, 29.462761, 37.886829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179691, 29.283197, 37.571556>,  <43.078651, 29.175459, 37.382393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179691, 29.283197, 37.571556>,  <43.348095, 29.462761, 37.886829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179691, 29.283197, 37.571556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012899, 0.871822, -0.489654,
		0.906967, -0.195979, -0.372830,
		-0.421003, -0.448909, -0.788186,
		43.053391, 29.148525, 37.335102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786312, 29.511570, 37.415062>,  <43.348095, 29.462761, 37.886829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786312, 29.511570, 37.415062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.436733, 29.478779, 37.223438>,  <43.226986, 29.459105, 37.108463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.436733, 29.478779, 37.223438>,  <43.786312, 29.511570, 37.415062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436733, 29.478779, 37.223438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254848, 0.762002, -0.595319,
		0.413844, -0.642365, -0.645059,
		-0.873948, -0.081977, -0.479055,
		43.174549, 29.454185, 37.079723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955685, 29.749855, 36.703037>,  <43.786312, 29.511570, 37.415062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955685, 29.749855, 36.703037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555908, 29.741842, 36.713795>,  <43.316044, 29.737034, 36.720249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555908, 29.741842, 36.713795>,  <43.955685, 29.749855, 36.703037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555908, 29.741842, 36.713795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033037, 0.725688, -0.687230,
		-0.005748, -0.687732, -0.725941,
		-0.999437, -0.020033, 0.026892,
		43.256077, 29.735832, 36.721863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763035, 29.799789, 36.044193>,  <43.955685, 29.749855, 36.703037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763035, 29.799789, 36.044193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414406, 29.906935, 36.208443>,  <43.205227, 29.971222, 36.306992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414406, 29.906935, 36.208443>,  <43.763035, 29.799789, 36.044193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414406, 29.906935, 36.208443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112630, 0.705752, -0.699448,
		-0.477156, -0.655868, -0.584944,
		-0.871571, 0.267864, 0.410625,
		43.152935, 29.987293, 36.331631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264076, 29.768784, 35.481148>,  <43.763035, 29.799789, 36.044193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264076, 29.768784, 35.481148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.139610, 30.019653, 35.766758>,  <43.064930, 30.170176, 35.938122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.139610, 30.019653, 35.766758>,  <43.264076, 29.768784, 35.481148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139610, 30.019653, 35.766758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054736, 0.738248, -0.672305,
		-0.948779, -0.248279, -0.195386,
		-0.311163, 0.627174, 0.714024,
		43.046261, 30.207806, 35.980965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855095, 30.165453, 35.129215>,  <43.264076, 29.768784, 35.481148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855095, 30.165453, 35.129215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.904827, 30.381174, 35.462368>,  <42.934666, 30.510607, 35.662258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.904827, 30.381174, 35.462368>,  <42.855095, 30.165453, 35.129215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904827, 30.381174, 35.462368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164044, 0.839016, -0.518788,
		-0.978586, -0.072126, 0.192789,
		0.124335, 0.539305, 0.832881,
		42.942127, 30.542965, 35.712231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246090, 30.578598, 35.122257>,  <42.855095, 30.165453, 35.129215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246090, 30.578598, 35.122257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497265, 30.771606, 35.366508>,  <42.647972, 30.887411, 35.513058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497265, 30.771606, 35.366508>,  <42.246090, 30.578598, 35.122257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497265, 30.771606, 35.366508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274847, 0.871539, -0.406053,
		-0.728115, 0.087148, 0.679892,
		0.627939, 0.482519, 0.610629,
		42.685646, 30.916363, 35.549698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944355, 31.282850, 35.256592>,  <42.246090, 30.578598, 35.122257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944355, 31.282850, 35.256592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.314724, 31.327833, 35.400822>,  <42.536945, 31.354822, 35.487358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.314724, 31.327833, 35.400822>,  <41.944355, 31.282850, 35.256592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314724, 31.327833, 35.400822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041507, 0.979162, -0.198793,
		-0.375417, 0.169101, 0.911300,
		0.925926, 0.112456, 0.360575,
		42.592503, 31.361570, 35.508995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007721, 31.823904, 35.795258>,  <41.944355, 31.282850, 35.256592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007721, 31.823904, 35.795258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375420, 31.795853, 35.640305>,  <42.596039, 31.779022, 35.547333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375420, 31.795853, 35.640305>,  <42.007721, 31.823904, 35.795258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375420, 31.795853, 35.640305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108071, 0.991156, 0.077014,
		0.378555, -0.112660, 0.918697,
		0.919248, -0.070130, -0.387382,
		42.651196, 31.774815, 35.524090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340767, 32.293003, 36.145622>,  <42.007721, 31.823904, 35.795258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340767, 32.293003, 36.145622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552902, 32.241863, 35.810387>,  <42.680183, 32.211178, 35.609245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552902, 32.241863, 35.810387>,  <42.340767, 32.293003, 36.145622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552902, 32.241863, 35.810387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097421, 0.991205, -0.089565,
		0.842172, -0.034148, 0.538127,
		0.530336, -0.127854, -0.838091,
		42.712002, 32.203506, 35.558960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984722, 32.741581, 36.142338>,  <42.340767, 32.293003, 36.145622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984722, 32.741581, 36.142338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899982, 32.663895, 35.759212>,  <42.849140, 32.617283, 35.529339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899982, 32.663895, 35.759212>,  <42.984722, 32.741581, 36.142338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899982, 32.663895, 35.759212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117636, 0.967862, -0.222270,
		0.970199, -0.159759, -0.182186,
		-0.211840, -0.194214, -0.957812,
		42.836430, 32.605629, 35.471870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338634, 33.222561, 35.823433>,  <42.984722, 32.741581, 36.142338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338634, 33.222561, 35.823433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122902, 33.073067, 35.521587>,  <42.993462, 32.983372, 35.340481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122902, 33.073067, 35.521587>,  <43.338634, 33.222561, 35.823433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122902, 33.073067, 35.521587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059865, 0.876835, -0.477050,
		0.839963, -0.302463, -0.450532,
		-0.539332, -0.373733, -0.754616,
		42.961102, 32.960945, 35.295204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940067, 33.829411, 35.977264>,  <43.338634, 33.222561, 35.823433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940067, 33.829411, 35.977264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.144581, 33.539742, 35.792156>,  <44.267288, 33.365940, 35.681091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.144581, 33.539742, 35.792156>,  <43.940067, 33.829411, 35.977264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144581, 33.539742, 35.792156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840031, -0.307399, -0.447050,
		0.181488, 0.617312, -0.765498,
		0.511283, -0.724176, -0.462772,
		44.297966, 33.322487, 35.653324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544655, 33.614029, 36.446217>,  <43.940067, 33.829411, 35.977264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544655, 33.614029, 36.446217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937859, 33.673740, 36.488926>,  <45.173782, 33.709568, 36.514553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937859, 33.673740, 36.488926>,  <44.544655, 33.614029, 36.446217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937859, 33.673740, 36.488926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080039, -0.872206, 0.482546,
		0.165165, -0.465803, -0.869338,
		0.983013, 0.149280, 0.106776,
		45.232761, 33.718525, 36.520958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948490, 33.037540, 36.337227>,  <44.544655, 33.614029, 36.446217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948490, 33.037540, 36.337227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192150, 33.247837, 36.574726>,  <45.338345, 33.374016, 36.717224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192150, 33.247837, 36.574726>,  <44.948490, 33.037540, 36.337227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192150, 33.247837, 36.574726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042723, -0.769346, 0.637402,
		0.791907, -0.362903, -0.491105,
		0.609145, 0.525745, 0.593746,
		45.374893, 33.405560, 36.752850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456051, 32.623718, 36.477463>,  <44.948490, 33.037540, 36.337227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456051, 32.623718, 36.477463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.544598, 32.893467, 36.759235>,  <45.597725, 33.055317, 36.928299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.544598, 32.893467, 36.759235>,  <45.456051, 32.623718, 36.477463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544598, 32.893467, 36.759235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008002, -0.721069, 0.692817,
		0.975157, -0.159005, -0.154226,
		0.221368, 0.674371, 0.704429,
		45.611008, 33.095779, 36.970566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848309, 32.232010, 36.868923>,  <45.456051, 32.623718, 36.477463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848309, 32.232010, 36.868923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.749763, 32.534565, 37.111309>,  <45.690636, 32.716099, 37.256741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.749763, 32.534565, 37.111309>,  <45.848309, 32.232010, 36.868923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749763, 32.534565, 37.111309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012613, -0.622678, 0.782377,
		0.969096, 0.200391, 0.143864,
		-0.246362, 0.756384, 0.605962,
		45.675854, 32.761478, 37.293098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401966, 32.269958, 37.390152>,  <45.848309, 32.232010, 36.868923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401966, 32.269958, 37.390152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.056461, 32.422535, 37.521858>,  <45.849159, 32.514080, 37.600883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.056461, 32.422535, 37.521858>,  <46.401966, 32.269958, 37.390152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056461, 32.422535, 37.521858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048005, -0.712761, 0.699763,
		0.501603, 0.588624, 0.633969,
		-0.863765, 0.381437, 0.329266,
		45.797333, 32.536964, 37.620640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502384, 32.250031, 38.106182>,  <46.401966, 32.269958, 37.390152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502384, 32.250031, 38.106182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106762, 32.274574, 38.052521>,  <45.869389, 32.289299, 38.020325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106762, 32.274574, 38.052521>,  <46.502384, 32.250031, 38.106182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106762, 32.274574, 38.052521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133236, -0.761922, 0.633817,
		-0.063320, 0.644756, 0.761761,
		-0.989060, 0.061361, -0.134150,
		45.810043, 32.292984, 38.012276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.183060, 32.160473, 38.758366>,  <46.502384, 32.250031, 38.106182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.183060, 32.160473, 38.758366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864471, 32.081356, 38.529804>,  <45.673317, 32.033886, 38.392666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864471, 32.081356, 38.529804>,  <46.183060, 32.160473, 38.758366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864471, 32.081356, 38.529804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230809, -0.773986, 0.589638,
		-0.558887, 0.601517, 0.570808,
		-0.796475, -0.197793, -0.571407,
		45.625530, 32.022018, 38.358383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605476, 32.074467, 39.193993>,  <46.183060, 32.160473, 38.758366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605476, 32.074467, 39.193993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488140, 31.856789, 38.879589>,  <45.417740, 31.726183, 38.690948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488140, 31.856789, 38.879589>,  <45.605476, 32.074467, 39.193993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488140, 31.856789, 38.879589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346522, -0.705740, 0.617943,
		-0.890996, 0.453636, 0.018446,
		-0.293339, -0.544193, -0.786007,
		45.400139, 31.693531, 38.643787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885063, 31.757826, 39.402103>,  <45.605476, 32.074467, 39.193993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885063, 31.757826, 39.402103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.061424, 31.547922, 39.110836>,  <45.167240, 31.421980, 38.936077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.061424, 31.547922, 39.110836>,  <44.885063, 31.757826, 39.402103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061424, 31.547922, 39.110836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284861, -0.851150, 0.440906,
		-0.851150, 0.013028, -0.524761,
		-0.440906, 0.524761, 0.728167,
		45.193695, 31.390493, 38.892387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491314, 31.209364, 39.299046>,  <44.885063, 31.757826, 39.402103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491314, 31.209364, 39.299046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.814247, 31.054310, 39.121075>,  <45.008007, 30.961277, 39.014294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.814247, 31.054310, 39.121075>,  <44.491314, 31.209364, 39.299046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814247, 31.054310, 39.121075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316784, -0.920823, 0.227447,
		-0.497863, -0.042680, -0.866205,
		0.807329, -0.387638, -0.444924,
		45.056446, 30.938019, 38.987598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290642, 30.549763, 39.062565>,  <44.491314, 31.209364, 39.299046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290642, 30.549763, 39.062565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688103, 30.524302, 39.025459>,  <44.926579, 30.509026, 39.003197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688103, 30.524302, 39.025459>,  <44.290642, 30.549763, 39.062565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688103, 30.524302, 39.025459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060421, -0.997478, 0.037227,
		-0.094897, -0.031386, -0.994992,
		0.993652, -0.063651, -0.092761,
		44.986198, 30.505205, 38.997631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400158, 30.014530, 38.600471>,  <44.290642, 30.549763, 39.062565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400158, 30.014530, 38.600471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749283, 30.041424, 38.793835>,  <44.958759, 30.057560, 38.909851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749283, 30.041424, 38.793835>,  <44.400158, 30.014530, 38.600471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749283, 30.041424, 38.793835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011976, -0.993118, 0.116503,
		0.487912, -0.095896, -0.867609,
		0.872811, 0.067234, 0.483405,
		45.011127, 30.061594, 38.938858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915535, 29.561167, 38.306671>,  <44.400158, 30.014530, 38.600471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915535, 29.561167, 38.306671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.008911, 29.618523, 38.691368>,  <45.064938, 29.652935, 38.922188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.008911, 29.618523, 38.691368>,  <44.915535, 29.561167, 38.306671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008911, 29.618523, 38.691368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052298, -0.985785, 0.159667,
		0.970964, -0.087570, -0.222621,
		0.233439, 0.143388, 0.961741,
		45.078941, 29.661539, 38.979889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325287, 29.009558, 38.543499>,  <44.915535, 29.561167, 38.306671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325287, 29.009558, 38.543499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.218117, 29.144915, 38.904324>,  <45.153816, 29.226130, 39.120819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.218117, 29.144915, 38.904324>,  <45.325287, 29.009558, 38.543499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218117, 29.144915, 38.904324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192266, -0.898675, 0.394230,
		0.944060, 0.279059, 0.175716,
		-0.267925, 0.338393, 0.902057,
		45.137741, 29.246433, 39.174942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761387, 28.652254, 39.023769>,  <45.325287, 29.009558, 38.543499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761387, 28.652254, 39.023769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.462963, 28.763678, 39.265694>,  <45.283909, 28.830532, 39.410851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.462963, 28.763678, 39.265694>,  <45.761387, 28.652254, 39.023769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462963, 28.763678, 39.265694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014802, -0.915008, 0.403165,
		0.665715, 0.291833, 0.686773,
		-0.746059, 0.278558, 0.604815,
		45.239147, 28.847244, 39.447140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920868, 28.506132, 39.736851>,  <45.761387, 28.652254, 39.023769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920868, 28.506132, 39.736851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.522545, 28.539389, 39.721619>,  <45.283550, 28.559341, 39.712479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.522545, 28.539389, 39.721619>,  <45.920868, 28.506132, 39.736851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522545, 28.539389, 39.721619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091445, -0.903896, 0.417864,
		0.000322, 0.419595, 0.907711,
		-0.995810, 0.083140, -0.038079,
		45.223801, 28.564331, 39.710194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737038, 28.144547, 40.379864>,  <45.920868, 28.506132, 39.736851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737038, 28.144547, 40.379864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.411301, 28.145639, 40.147713>,  <45.215858, 28.146296, 40.008423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.411301, 28.145639, 40.147713>,  <45.737038, 28.144547, 40.379864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411301, 28.145639, 40.147713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173600, -0.955353, 0.239091,
		-0.553809, 0.295456, 0.778461,
		-0.814345, 0.002730, -0.580375,
		45.166996, 28.146458, 39.973598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208244, 27.985235, 40.848015>,  <45.737038, 28.144547, 40.379864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208244, 27.985235, 40.848015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062233, 27.919613, 40.481445>,  <44.974625, 27.880239, 40.261501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062233, 27.919613, 40.481445>,  <45.208244, 27.985235, 40.848015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062233, 27.919613, 40.481445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220279, -0.941182, 0.256230,
		-0.904562, 0.295401, 0.307418,
		-0.365027, -0.164058, -0.916428,
		44.952724, 27.870396, 40.206516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512875, 27.833172, 40.883671>,  <45.208244, 27.985235, 40.848015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512875, 27.833172, 40.883671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628429, 27.647968, 40.548489>,  <44.697762, 27.536846, 40.347378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628429, 27.647968, 40.548489>,  <44.512875, 27.833172, 40.883671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628429, 27.647968, 40.548489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593819, -0.773216, 0.222521,
		-0.750950, 0.433310, -0.498314,
		0.288884, -0.463011, -0.837954,
		44.715096, 27.509066, 40.297104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929554, 27.616684, 40.645214>,  <44.512875, 27.833172, 40.883671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929554, 27.616684, 40.645214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201214, 27.396582, 40.450905>,  <44.364208, 27.264521, 40.334320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201214, 27.396582, 40.450905>,  <43.929554, 27.616684, 40.645214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201214, 27.396582, 40.450905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565561, -0.814151, 0.131524,
		-0.467867, 0.185412, -0.864131,
		0.679148, -0.550255, -0.485776,
		44.404957, 27.231504, 40.305172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.180836, 38.758862, 36.520039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836796, 38.678097, 36.707424>,  <38.630371, 38.629639, 36.819855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836796, 38.678097, 36.707424>,  <39.180836, 38.758862, 36.520039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836796, 38.678097, 36.707424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046048, -0.883850, -0.465498,
		0.508038, -0.421947, 0.750905,
		-0.860103, -0.201913, 0.468460,
		38.578766, 38.617523, 36.847961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258274, 38.041817, 36.799358>,  <39.180836, 38.758862, 36.520039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258274, 38.041817, 36.799358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866413, 38.121712, 36.791546>,  <38.631294, 38.169651, 36.786858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866413, 38.121712, 36.791546>,  <39.258274, 38.041817, 36.799358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866413, 38.121712, 36.791546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189773, -0.953617, -0.233669,
		-0.065297, -0.225209, 0.972120,
		-0.979654, 0.199740, -0.019530,
		38.572517, 38.181633, 36.785686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918079, 37.555382, 37.272995>,  <39.258274, 38.041817, 36.799358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918079, 37.555382, 37.272995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655403, 37.687908, 37.002003>,  <38.497799, 37.767426, 36.839405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655403, 37.687908, 37.002003>,  <38.918079, 37.555382, 37.272995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655403, 37.687908, 37.002003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178237, -0.941065, -0.287450,
		-0.732795, -0.068013, 0.677042,
		-0.656691, 0.331316, -0.677486,
		38.458397, 37.787304, 36.798756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380562, 37.169281, 37.383095>,  <38.918079, 37.555382, 37.272995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380562, 37.169281, 37.383095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354370, 37.290680, 37.002865>,  <38.338654, 37.363518, 36.774727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354370, 37.290680, 37.002865>,  <38.380562, 37.169281, 37.383095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354370, 37.290680, 37.002865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404629, -0.878865, -0.252729,
		-0.912134, 0.368083, 0.180353,
		-0.065480, 0.303499, -0.950579,
		38.334724, 37.381729, 36.717690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721001, 36.839725, 37.196964>,  <38.380562, 37.169281, 37.383095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721001, 36.839725, 37.196964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915211, 36.936108, 36.860821>,  <38.031734, 36.993938, 36.659134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915211, 36.936108, 36.860821>,  <37.721001, 36.839725, 37.196964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915211, 36.936108, 36.860821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098503, -0.940066, -0.326456,
		-0.868657, 0.241280, -0.432688,
		0.485523, 0.240957, -0.840361,
		38.060867, 37.008396, 36.608711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308220, 36.486763, 36.682331>,  <37.721001, 36.839725, 37.196964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308220, 36.486763, 36.682331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627518, 36.591949, 36.465569>,  <37.819096, 36.655064, 36.335510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627518, 36.591949, 36.465569>,  <37.308220, 36.486763, 36.682331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627518, 36.591949, 36.465569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114400, -0.817101, -0.565030,
		-0.591376, 0.513024, -0.622159,
		0.798240, 0.262970, -0.541903,
		37.866989, 36.670841, 36.302998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076279, 36.349697, 36.158707>,  <37.308220, 36.486763, 36.682331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076279, 36.349697, 36.158707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467731, 36.354691, 36.076607>,  <37.702602, 36.357685, 36.027348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467731, 36.354691, 36.076607>,  <37.076279, 36.349697, 36.158707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467731, 36.354691, 36.076607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073035, -0.911974, -0.403694,
		-0.192225, 0.410057, -0.891573,
		0.978629, 0.012485, -0.205253,
		37.761322, 36.358437, 36.015030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196175, 35.886974, 35.568604>,  <37.076279, 36.349697, 36.158707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196175, 35.886974, 35.568604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559105, 35.936562, 35.729298>,  <37.776863, 35.966312, 35.825714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559105, 35.936562, 35.729298>,  <37.196175, 35.886974, 35.568604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559105, 35.936562, 35.729298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293716, -0.870593, -0.394714,
		0.300819, 0.476131, -0.826321,
		0.907325, 0.123966, 0.401738,
		37.831303, 35.973751, 35.849819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782501, 35.815521, 35.065178>,  <37.196175, 35.886974, 35.568604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782501, 35.815521, 35.065178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946445, 35.730846, 35.420074>,  <38.044811, 35.680042, 35.633015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946445, 35.730846, 35.420074>,  <37.782501, 35.815521, 35.065178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946445, 35.730846, 35.420074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359293, -0.856593, -0.370348,
		0.838404, 0.470572, -0.275028,
		0.409862, -0.211686, 0.887244,
		38.069405, 35.667339, 35.686249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304455, 35.431389, 34.917496>,  <37.782501, 35.815521, 35.065178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304455, 35.431389, 34.917496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272655, 35.343460, 35.306416>,  <38.253574, 35.290703, 35.539768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272655, 35.343460, 35.306416>,  <38.304455, 35.431389, 34.917496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272655, 35.343460, 35.306416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405310, -0.898246, -0.169936,
		0.910716, 0.380571, 0.160507,
		-0.079503, -0.219818, 0.972296,
		38.248806, 35.277515, 35.598103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883591, 35.110497, 35.051693>,  <38.304455, 35.431389, 34.917496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883591, 35.110497, 35.051693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646191, 35.007149, 35.356586>,  <38.503750, 34.945141, 35.539524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646191, 35.007149, 35.356586>,  <38.883591, 35.110497, 35.051693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646191, 35.007149, 35.356586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407252, -0.913285, 0.007527,
		0.694195, 0.314890, 0.647254,
		-0.593498, -0.258371, 0.762237,
		38.468140, 34.929638, 35.585258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265713, 34.768681, 35.588753>,  <38.883591, 35.110497, 35.051693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265713, 34.768681, 35.588753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889431, 34.644863, 35.644257>,  <38.663662, 34.570572, 35.677559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889431, 34.644863, 35.644257>,  <39.265713, 34.768681, 35.588753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889431, 34.644863, 35.644257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322941, -0.942409, 0.087036,
		0.103829, 0.126687, 0.986494,
		-0.940706, -0.309542, 0.138761,
		38.607220, 34.552002, 35.685886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261585, 34.307320, 36.161404>,  <39.265713, 34.768681, 35.588753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261585, 34.307320, 36.161404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966522, 34.238060, 35.900364>,  <38.789486, 34.196503, 35.743740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966522, 34.238060, 35.900364>,  <39.261585, 34.307320, 36.161404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966522, 34.238060, 35.900364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154418, -0.984204, 0.086589,
		-0.657283, -0.036901, 0.752740,
		-0.737655, -0.173150, -0.652599,
		38.745224, 34.186115, 35.704586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325970, 33.786205, 35.679642>,  <39.261585, 34.307320, 36.161404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325970, 33.786205, 35.679642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397163, 33.804497, 35.286453>,  <39.439880, 33.815472, 35.050541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397163, 33.804497, 35.286453>,  <39.325970, 33.786205, 35.679642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397163, 33.804497, 35.286453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603337, -0.784060, -0.145720,
		-0.777371, 0.618998, -0.111963,
		0.177986, 0.045727, -0.982970,
		39.450558, 33.818214, 34.991562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744560, 33.163342, 35.365402>,  <39.325970, 33.786205, 35.679642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744560, 33.163342, 35.365402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668873, 32.774410, 35.420208>,  <39.623459, 32.541050, 35.453091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668873, 32.774410, 35.420208>,  <39.744560, 33.163342, 35.365402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668873, 32.774410, 35.420208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721013, 0.232304, 0.652821,
		-0.666586, 0.024734, -0.745018,
		-0.189217, -0.972329, 0.137017,
		39.612106, 32.482712, 35.461311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041580, 33.083389, 35.283493>,  <39.744560, 33.163342, 35.365402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041580, 33.083389, 35.283493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160198, 32.755672, 35.479790>,  <39.231369, 32.559044, 35.597569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160198, 32.755672, 35.479790>,  <39.041580, 33.083389, 35.283493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160198, 32.755672, 35.479790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788256, 0.080138, 0.610107,
		-0.539180, -0.567754, -0.622045,
		0.296541, -0.819288, 0.490744,
		39.249161, 32.509888, 35.627014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462639, 32.537079, 35.466187>,  <39.041580, 33.083389, 35.283493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462639, 32.537079, 35.466187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743416, 32.424992, 35.728104>,  <38.911880, 32.357738, 35.885254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743416, 32.424992, 35.728104>,  <38.462639, 32.537079, 35.466187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743416, 32.424992, 35.728104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646413, 0.135352, 0.750886,
		-0.299043, -0.950345, -0.086130,
		0.701942, -0.280223, 0.654791,
		38.953999, 32.340923, 35.924541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076958, 32.259789, 35.868961>,  <38.462639, 32.537079, 35.466187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076958, 32.259789, 35.868961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406925, 32.275429, 36.094521>,  <38.604904, 32.284813, 36.229858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406925, 32.275429, 36.094521>,  <38.076958, 32.259789, 35.868961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406925, 32.275429, 36.094521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563623, 0.132689, 0.815306,
		-0.042943, -0.990386, 0.131497,
		0.824915, 0.039103, 0.563902,
		38.654400, 32.287159, 36.263691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803429, 32.085407, 36.591370>,  <38.076958, 32.259789, 35.868961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803429, 32.085407, 36.591370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159397, 32.264519, 36.626110>,  <38.372978, 32.371986, 36.646954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159397, 32.264519, 36.626110>,  <37.803429, 32.085407, 36.591370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159397, 32.264519, 36.626110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315879, 0.467665, 0.825536,
		0.329041, -0.762092, 0.557627,
		0.889917, 0.447778, 0.086848,
		38.426373, 32.398853, 36.652164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099232, 31.964163, 37.316029>,  <37.803429, 32.085407, 36.591370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099232, 31.964163, 37.316029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279659, 32.280579, 37.150719>,  <38.387917, 32.470428, 37.051533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279659, 32.280579, 37.150719>,  <38.099232, 31.964163, 37.316029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279659, 32.280579, 37.150719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137539, 0.519135, 0.843553,
		0.881826, -0.323662, 0.342966,
		0.451072, 0.791038, -0.413270,
		38.414982, 32.517891, 37.026737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455212, 32.248226, 37.806297>,  <38.099232, 31.964163, 37.316029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455212, 32.248226, 37.806297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442287, 32.561550, 37.557983>,  <38.434532, 32.749546, 37.408993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442287, 32.561550, 37.557983>,  <38.455212, 32.248226, 37.806297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442287, 32.561550, 37.557983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149231, 0.610371, 0.777931,
		0.988274, 0.117774, 0.097174,
		-0.032308, 0.783311, -0.620789,
		38.432594, 32.796543, 37.371746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887768, 32.795303, 38.112408>,  <38.455212, 32.248226, 37.806297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887768, 32.795303, 38.112408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627895, 32.958878, 37.856068>,  <38.471973, 33.057022, 37.702263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627895, 32.958878, 37.856068>,  <38.887768, 32.795303, 38.112408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627895, 32.958878, 37.856068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241170, 0.688572, 0.683890,
		0.720938, 0.598863, -0.348728,
		-0.649681, 0.408940, -0.640845,
		38.432991, 33.081558, 37.663815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038307, 33.462112, 38.165913>,  <38.887768, 32.795303, 38.112408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038307, 33.462112, 38.165913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668026, 33.446297, 38.015442>,  <38.445858, 33.436806, 37.925159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668026, 33.446297, 38.015442>,  <39.038307, 33.462112, 38.165913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668026, 33.446297, 38.015442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263206, 0.781598, 0.565533,
		0.271660, 0.622528, -0.733935,
		-0.925702, -0.039544, -0.376182,
		38.390316, 33.434433, 37.902588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935207, 34.084763, 37.751266>,  <39.038307, 33.462112, 38.165913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935207, 34.084763, 37.751266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584805, 33.932232, 37.869392>,  <38.374565, 33.840714, 37.940266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584805, 33.932232, 37.869392>,  <38.935207, 34.084763, 37.751266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584805, 33.932232, 37.869392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132685, 0.779206, 0.612562,
		-0.463692, 0.497424, -0.733184,
		-0.876005, -0.381322, 0.295311,
		38.322002, 33.817837, 37.957985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339840, 34.555412, 37.480976>,  <38.935207, 34.084763, 37.751266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339840, 34.555412, 37.480976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230209, 34.358997, 37.811737>,  <38.164429, 34.241150, 38.010193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230209, 34.358997, 37.811737>,  <38.339840, 34.555412, 37.480976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230209, 34.358997, 37.811737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292195, 0.861698, 0.414847,
		-0.916243, -0.127915, -0.379652,
		-0.274081, -0.491033, 0.826901,
		38.147984, 34.211689, 38.059807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804657, 35.098049, 37.766186>,  <38.339840, 34.555412, 37.480976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804657, 35.098049, 37.766186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836536, 34.826450, 38.058109>,  <37.855663, 34.663490, 38.233261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836536, 34.826450, 38.058109>,  <37.804657, 35.098049, 37.766186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836536, 34.826450, 38.058109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317514, 0.676709, 0.664267,
		-0.944898, -0.284666, -0.161656,
		0.079700, -0.678993, 0.729806,
		37.860447, 34.622753, 38.277050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240711, 35.198048, 38.191650>,  <37.804657, 35.098049, 37.766186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240711, 35.198048, 38.191650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491894, 35.011543, 38.440899>,  <37.642601, 34.899643, 38.590446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491894, 35.011543, 38.440899>,  <37.240711, 35.198048, 38.191650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491894, 35.011543, 38.440899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201938, 0.675627, 0.709048,
		-0.751597, -0.571080, 0.330106,
		0.627952, -0.466257, 0.623122,
		37.680279, 34.871666, 38.627834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852554, 35.079269, 38.872063>,  <37.240711, 35.198048, 38.191650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852554, 35.079269, 38.872063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248421, 35.083622, 38.929256>,  <37.485939, 35.086235, 38.963573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248421, 35.083622, 38.929256>,  <36.852554, 35.079269, 38.872063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248421, 35.083622, 38.929256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127898, 0.517836, 0.845865,
		-0.064837, -0.855411, 0.513876,
		0.989666, 0.010881, 0.142980,
		37.545319, 35.086887, 38.972149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402157, 34.479881, 39.247467>,  <36.852554, 35.079269, 38.872063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402157, 34.479881, 39.247467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154270, 34.257233, 39.468781>,  <36.005539, 34.123642, 39.601566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154270, 34.257233, 39.468781>,  <36.402157, 34.479881, 39.247467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154270, 34.257233, 39.468781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068891, -0.663672, -0.744844,
		0.781795, -0.499710, 0.372944,
		-0.619718, -0.556623, 0.553281,
		35.968353, 34.090244, 39.634766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511372, 33.787743, 38.985497>,  <36.402157, 34.479881, 39.247467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511372, 33.787743, 38.985497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156960, 33.751999, 39.167473>,  <35.944313, 33.730553, 39.276657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156960, 33.751999, 39.167473>,  <36.511372, 33.787743, 38.985497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156960, 33.751999, 39.167473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268099, -0.701814, -0.659985,
		0.378256, -0.706734, 0.597871,
		-0.886028, -0.089355, 0.454940,
		35.891151, 33.725193, 39.303955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395348, 33.068542, 39.141113>,  <36.511372, 33.787743, 38.985497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395348, 33.068542, 39.141113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050259, 33.267654, 39.105495>,  <35.843204, 33.387123, 39.084126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050259, 33.267654, 39.105495>,  <36.395348, 33.068542, 39.141113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050259, 33.267654, 39.105495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248454, -0.570618, -0.782730,
		-0.440435, -0.653155, 0.615959,
		-0.862721, 0.497779, -0.089041,
		35.791443, 33.416988, 39.078785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876930, 32.514179, 39.130939>,  <36.395348, 33.068542, 39.141113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876930, 32.514179, 39.130939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724308, 32.849731, 38.975662>,  <35.632736, 33.051064, 38.882496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724308, 32.849731, 38.975662>,  <35.876930, 32.514179, 39.130939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724308, 32.849731, 38.975662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412240, -0.530322, -0.740822,
		-0.827331, -0.122631, 0.548165,
		-0.381552, 0.838880, -0.388198,
		35.609844, 33.101395, 38.859203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133980, 32.443119, 39.130184>,  <35.876930, 32.514179, 39.130939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133980, 32.443119, 39.130184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208603, 32.720753, 38.852062>,  <35.253376, 32.887333, 38.685188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208603, 32.720753, 38.852062>,  <35.133980, 32.443119, 39.130184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208603, 32.720753, 38.852062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622620, -0.463929, -0.630170,
		-0.759962, 0.550471, 0.345600,
		0.186556, 0.694083, -0.695303,
		35.264568, 32.928978, 38.643471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526257, 32.619408, 38.733917>,  <35.133980, 32.443119, 39.130184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526257, 32.619408, 38.733917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737167, 32.822514, 38.461403>,  <34.863712, 32.944378, 38.297894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737167, 32.822514, 38.461403>,  <34.526257, 32.619408, 38.733917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737167, 32.822514, 38.461403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628854, -0.306014, -0.714771,
		-0.571421, 0.805312, 0.157958,
		0.527276, 0.507768, -0.681286,
		34.895351, 32.974846, 38.257015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109520, 33.132118, 38.427315>,  <34.526257, 32.619408, 38.733917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109520, 33.132118, 38.427315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394192, 33.018364, 38.170364>,  <34.564995, 32.950111, 38.016193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394192, 33.018364, 38.170364>,  <34.109520, 33.132118, 38.427315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394192, 33.018364, 38.170364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690765, -0.116794, -0.713585,
		0.127909, 0.951569, -0.279564,
		0.711676, -0.284387, -0.642372,
		34.607693, 32.933048, 37.977654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048073, 33.482521, 37.662697>,  <34.109520, 33.132118, 38.427315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048073, 33.482521, 37.662697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287552, 33.166149, 37.612122>,  <34.431240, 32.976326, 37.581776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287552, 33.166149, 37.612122>,  <34.048073, 33.482521, 37.662697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287552, 33.166149, 37.612122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587314, -0.326156, -0.740732,
		0.544632, 0.517732, -0.659795,
		0.598697, -0.790934, -0.126437,
		34.467159, 32.928867, 37.574192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319565, 33.516666, 36.969326>,  <34.048073, 33.482521, 37.662697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319565, 33.516666, 36.969326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327538, 33.142181, 37.109676>,  <34.332321, 32.917492, 37.193886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327538, 33.142181, 37.109676>,  <34.319565, 33.516666, 36.969326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327538, 33.142181, 37.109676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513470, -0.310712, -0.799879,
		0.857876, -0.164223, -0.486908,
		0.019930, -0.936210, 0.350876,
		34.333515, 32.861317, 37.214939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247639, 33.201115, 36.337494>,  <34.319565, 33.516666, 36.969326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247639, 33.201115, 36.337494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142059, 32.957592, 36.636742>,  <34.078712, 32.811478, 36.816292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142059, 32.957592, 36.636742>,  <34.247639, 33.201115, 36.337494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142059, 32.957592, 36.636742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554490, -0.538874, -0.634158,
		0.789222, -0.582211, -0.195343,
		-0.263948, -0.608807, 0.748121,
		34.062874, 32.774948, 36.861179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095314, 32.544506, 35.875095>,  <34.247639, 33.201115, 36.337494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095314, 32.544506, 35.875095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955441, 32.499462, 36.247124>,  <33.871517, 32.472435, 36.470341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955441, 32.499462, 36.247124>,  <34.095314, 32.544506, 35.875095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955441, 32.499462, 36.247124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855317, -0.366730, -0.365980,
		0.382299, -0.923487, 0.031925,
		-0.349686, -0.112608, 0.930075,
		33.850536, 32.465679, 36.526146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903347, 31.814377, 35.923443>,  <34.095314, 32.544506, 35.875095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903347, 31.814377, 35.923443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706028, 31.999277, 36.218193>,  <33.587635, 32.110218, 36.395042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706028, 31.999277, 36.218193>,  <33.903347, 31.814377, 35.923443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706028, 31.999277, 36.218193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851694, -0.428887, -0.301120,
		0.176842, -0.776132, 0.605266,
		-0.493299, 0.462251, 0.736872,
		33.558037, 32.137951, 36.439255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.278111, 34.885643, 43.287575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.918236, 35.051765, 43.233780>,  <36.702312, 35.151440, 43.201504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.918236, 35.051765, 43.233780>,  <37.278111, 34.885643, 43.287575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918236, 35.051765, 43.233780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214990, -0.689666, -0.691476,
		-0.379924, -0.593199, 0.709770,
		-0.899687, 0.415302, -0.134489,
		36.648331, 35.176357, 43.193432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799809, 34.330753, 43.088177>,  <37.278111, 34.885643, 43.287575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799809, 34.330753, 43.088177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.576855, 34.644138, 42.978264>,  <36.443081, 34.832169, 42.912315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.576855, 34.644138, 42.978264>,  <36.799809, 34.330753, 43.088177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576855, 34.644138, 42.978264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345355, -0.519760, -0.781396,
		-0.755018, -0.340639, 0.560279,
		-0.557384, 0.783464, -0.274787,
		36.409637, 34.879177, 42.895828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102341, 34.125088, 43.041607>,  <36.799809, 34.330753, 43.088177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102341, 34.125088, 43.041607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140198, 34.442612, 42.801304>,  <36.162910, 34.633125, 42.657124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140198, 34.442612, 42.801304>,  <36.102341, 34.125088, 43.041607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140198, 34.442612, 42.801304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445932, -0.505732, -0.738498,
		-0.890049, 0.337789, 0.306123,
		0.094640, 0.793810, -0.600757,
		36.168591, 34.680756, 42.621078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530251, 34.119778, 42.523960>,  <36.102341, 34.125088, 43.041607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530251, 34.119778, 42.523960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.770031, 34.390095, 42.352394>,  <35.913898, 34.552284, 42.249454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.770031, 34.390095, 42.352394>,  <35.530251, 34.119778, 42.523960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770031, 34.390095, 42.352394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211306, -0.383247, -0.899151,
		-0.772019, 0.629626, -0.086938,
		0.599447, 0.675791, -0.428917,
		35.949863, 34.592831, 42.223721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166439, 34.296272, 41.857506>,  <35.530251, 34.119778, 42.523960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166439, 34.296272, 41.857506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540234, 34.419891, 41.786823>,  <35.764511, 34.494061, 41.744415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540234, 34.419891, 41.786823>,  <35.166439, 34.296272, 41.857506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540234, 34.419891, 41.786823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072867, -0.319817, -0.944673,
		-0.348459, 0.895661, -0.276346,
		0.934487, 0.309044, -0.176708,
		35.820580, 34.512604, 41.733810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056477, 34.739674, 41.325966>,  <35.166439, 34.296272, 41.857506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056477, 34.739674, 41.325966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.440731, 34.635242, 41.287975>,  <35.671284, 34.572582, 41.265179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.440731, 34.635242, 41.287975>,  <35.056477, 34.739674, 41.325966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440731, 34.635242, 41.287975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169506, -0.279934, -0.944936,
		0.220114, 0.923838, -0.313168,
		0.960634, -0.261078, -0.094979,
		35.728920, 34.556919, 41.259483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397289, 35.152344, 40.786945>,  <35.056477, 34.739674, 41.325966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397289, 35.152344, 40.786945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.636627, 34.832993, 40.814022>,  <35.780228, 34.641384, 40.830269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.636627, 34.832993, 40.814022>,  <35.397289, 35.152344, 40.786945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636627, 34.832993, 40.814022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194573, -0.226741, -0.954322,
		0.777257, 0.557839, -0.291011,
		0.598342, -0.798376, 0.067696,
		35.816132, 34.593479, 40.834332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658638, 35.121418, 40.180317>,  <35.397289, 35.152344, 40.786945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658638, 35.121418, 40.180317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.759167, 34.752903, 40.299019>,  <35.819485, 34.531796, 40.370239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.759167, 34.752903, 40.299019>,  <35.658638, 35.121418, 40.180317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759167, 34.752903, 40.299019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053828, -0.292819, -0.954651,
		0.966405, 0.255902, -0.024002,
		0.251325, -0.921288, 0.296757,
		35.834564, 34.476517, 40.388046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291374, 34.926865, 39.853012>,  <35.658638, 35.121418, 40.180317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291374, 34.926865, 39.853012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101265, 34.586899, 39.944012>,  <35.987198, 34.382919, 39.998611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101265, 34.586899, 39.944012>,  <36.291374, 34.926865, 39.853012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101265, 34.586899, 39.944012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155068, -0.173607, -0.972530,
		0.866066, -0.497495, -0.049284,
		-0.475272, -0.849917, 0.227500,
		35.958683, 34.331924, 40.012260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046051, 35.047535, 39.658363>,  <36.291374, 34.926865, 39.853012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046051, 35.047535, 39.658363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398262, 35.179413, 39.522141>,  <37.609589, 35.258541, 39.440407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398262, 35.179413, 39.522141>,  <37.046051, 35.047535, 39.658363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398262, 35.179413, 39.522141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072412, 0.616473, 0.784039,
		0.468434, -0.715027, 0.518947,
		0.880526, 0.329693, -0.340553,
		37.662418, 35.278320, 39.419975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446636, 35.260208, 40.249508>,  <37.046051, 35.047535, 39.658363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446636, 35.260208, 40.249508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653469, 35.427967, 39.951050>,  <37.777569, 35.528622, 39.771976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653469, 35.427967, 39.951050>,  <37.446636, 35.260208, 40.249508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653469, 35.427967, 39.951050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261329, 0.752753, 0.604210,
		0.815065, -0.507417, 0.279638,
		0.517085, 0.419393, -0.746145,
		37.808594, 35.553783, 39.727207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003056, 35.533264, 40.582600>,  <37.446636, 35.260208, 40.249508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003056, 35.533264, 40.582600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952728, 35.755749, 40.254017>,  <37.922531, 35.889240, 40.056866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952728, 35.755749, 40.254017>,  <38.003056, 35.533264, 40.582600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952728, 35.755749, 40.254017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323689, 0.805740, 0.495993,
		0.937761, -0.203492, -0.281418,
		-0.125819, 0.556214, -0.821459,
		37.914982, 35.922611, 40.007580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701206, 35.748707, 40.318310>,  <38.003056, 35.533264, 40.582600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701206, 35.748707, 40.318310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410686, 35.986794, 40.180782>,  <38.236374, 36.129646, 40.098267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410686, 35.986794, 40.180782>,  <38.701206, 35.748707, 40.318310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410686, 35.986794, 40.180782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388850, 0.768232, 0.508543,
		0.566824, 0.235660, -0.789414,
		-0.726296, 0.595218, -0.343816,
		38.192799, 36.165359, 40.077637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049042, 36.267288, 39.984303>,  <38.701206, 35.748707, 40.318310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049042, 36.267288, 39.984303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688766, 36.430473, 40.044060>,  <38.472599, 36.528385, 40.079914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688766, 36.430473, 40.044060>,  <39.049042, 36.267288, 39.984303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688766, 36.430473, 40.044060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424445, 0.752862, 0.503036,
		0.092746, 0.516492, -0.851255,
		-0.900691, 0.407965, 0.149397,
		38.418560, 36.552864, 40.088879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149010, 36.930107, 39.867207>,  <39.049042, 36.267288, 39.984303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149010, 36.930107, 39.867207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803307, 36.952011, 40.067234>,  <38.595886, 36.965153, 40.187248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803307, 36.952011, 40.067234>,  <39.149010, 36.930107, 39.867207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803307, 36.952011, 40.067234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367111, 0.748291, 0.552531,
		-0.343937, 0.661107, -0.666817,
		-0.864255, 0.054760, 0.500065,
		38.544029, 36.968441, 40.217255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906891, 37.578583, 39.878456>,  <39.149010, 36.930107, 39.867207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906891, 37.578583, 39.878456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711765, 37.415909, 40.187428>,  <38.594688, 37.318306, 40.372810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711765, 37.415909, 40.187428>,  <38.906891, 37.578583, 39.878456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711765, 37.415909, 40.187428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343103, 0.724316, 0.598036,
		-0.802692, 0.556755, -0.213800,
		-0.487818, -0.406683, 0.772427,
		38.565418, 37.293903, 40.419155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521286, 38.062000, 40.132133>,  <38.906891, 37.578583, 39.878456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521286, 38.062000, 40.132133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.561737, 37.801010, 40.432549>,  <38.586006, 37.644417, 40.612797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.561737, 37.801010, 40.432549>,  <38.521286, 38.062000, 40.132133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561737, 37.801010, 40.432549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251655, 0.747130, 0.615196,
		-0.962519, 0.126791, 0.239750,
		0.101123, -0.652473, 0.751035,
		38.592075, 37.605267, 40.657860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269638, 38.416374, 40.624382>,  <38.521286, 38.062000, 40.132133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269638, 38.416374, 40.624382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.436592, 38.138477, 40.858688>,  <38.536766, 37.971741, 40.999271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.436592, 38.138477, 40.858688>,  <38.269638, 38.416374, 40.624382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436592, 38.138477, 40.858688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199668, 0.698960, 0.686723,
		-0.886522, -0.169670, 0.430454,
		0.417387, -0.694743, 0.585765,
		38.561810, 37.930054, 41.034416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959862, 38.414684, 41.339275>,  <38.269638, 38.416374, 40.624382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959862, 38.414684, 41.339275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.324238, 38.253475, 41.374512>,  <38.542862, 38.156750, 41.395653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.324238, 38.253475, 41.374512>,  <37.959862, 38.414684, 41.339275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324238, 38.253475, 41.374512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211265, 0.639149, 0.739497,
		-0.354336, -0.655028, 0.667372,
		0.910941, -0.403022, 0.088089,
		38.597519, 38.132568, 41.400940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965794, 38.250954, 42.038738>,  <37.959862, 38.414684, 41.339275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965794, 38.250954, 42.038738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334763, 38.265366, 41.884937>,  <38.556145, 38.274014, 41.792656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334763, 38.265366, 41.884937>,  <37.965794, 38.250954, 42.038738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334763, 38.265366, 41.884937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217173, 0.774892, 0.593615,
		0.319334, -0.631067, 0.706952,
		0.922422, 0.036031, -0.384500,
		38.611488, 38.276176, 41.769588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457626, 38.211330, 42.688126>,  <37.965794, 38.250954, 42.038738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457626, 38.211330, 42.688126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651878, 38.359722, 42.371506>,  <38.768429, 38.448757, 42.181534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651878, 38.359722, 42.371506>,  <38.457626, 38.211330, 42.688126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651878, 38.359722, 42.371506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187506, 0.840205, 0.508819,
		0.853818, -0.395517, 0.338468,
		0.485629, 0.370975, -0.791545,
		38.797565, 38.471016, 42.134041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163776, 38.162991, 42.895744>,  <38.457626, 38.211330, 42.688126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163776, 38.162991, 42.895744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.068325, 38.456161, 42.640911>,  <39.011055, 38.632065, 42.488010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.068325, 38.456161, 42.640911>,  <39.163776, 38.162991, 42.895744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068325, 38.456161, 42.640911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175539, 0.677784, 0.713999,
		0.955115, 0.058544, -0.290393,
		-0.238624, 0.732926, -0.637085,
		38.996738, 38.676041, 42.449787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597836, 38.623734, 43.066929>,  <39.163776, 38.162991, 42.895744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597836, 38.623734, 43.066929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364063, 38.860222, 42.844612>,  <39.223801, 39.002113, 42.711224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364063, 38.860222, 42.844612>,  <39.597836, 38.623734, 43.066929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364063, 38.860222, 42.844612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128929, 0.743895, 0.655742,
		0.801136, 0.311577, -0.510979,
		-0.584429, 0.591219, -0.555790,
		39.188736, 39.037586, 42.677876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.277609, 42.000946, 40.578571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647337, 41.911697, 40.702412>,  <31.869173, 41.858150, 40.776714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647337, 41.911697, 40.702412>,  <31.277609, 42.000946, 40.578571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647337, 41.911697, 40.702412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012552, -0.828614, -0.559679,
		0.381414, 0.513436, -0.768705,
		0.924319, -0.223118, 0.309601,
		31.924633, 41.844761, 40.795292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630711, 41.797745, 39.997696>,  <31.277609, 42.000946, 40.578571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630711, 41.797745, 39.997696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818867, 41.628517, 40.307468>,  <31.931761, 41.526981, 40.493332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818867, 41.628517, 40.307468>,  <31.630711, 41.797745, 39.997696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818867, 41.628517, 40.307468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033642, -0.885545, -0.463334,
		0.881818, 0.191894, -0.430783,
		0.470389, -0.423068, 0.774434,
		31.959984, 41.501598, 40.539799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163158, 41.368919, 39.726582>,  <31.630711, 41.797745, 39.997696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163158, 41.368919, 39.726582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126778, 41.233437, 40.101177>,  <32.104950, 41.152149, 40.325935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126778, 41.233437, 40.101177>,  <32.163158, 41.368919, 39.726582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126778, 41.233437, 40.101177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166491, -0.932321, -0.321027,
		0.981840, 0.126720, 0.141185,
		-0.090949, -0.338703, 0.936487,
		32.099491, 41.131824, 40.382122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815907, 40.965981, 39.885582>,  <32.163158, 41.368919, 39.726582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815907, 40.965981, 39.885582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514172, 40.820236, 40.104019>,  <32.333130, 40.732792, 40.235081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514172, 40.820236, 40.104019>,  <32.815907, 40.965981, 39.885582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514172, 40.820236, 40.104019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295674, -0.931259, -0.212915,
		0.586133, 0.000857, 0.810214,
		-0.754337, -0.364356, 0.546095,
		32.287872, 40.710930, 40.267849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045593, 40.363365, 39.932533>,  <32.815907, 40.965981, 39.885582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045593, 40.363365, 39.932533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688187, 40.310516, 40.104191>,  <32.473743, 40.278809, 40.207188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688187, 40.310516, 40.104191>,  <33.045593, 40.363365, 39.932533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688187, 40.310516, 40.104191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039944, -0.975331, -0.217105,
		0.447243, -0.176846, 0.876755,
		-0.893520, -0.132120, 0.429146,
		32.420132, 40.270882, 40.232933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028900, 39.744308, 40.453377>,  <33.045593, 40.363365, 39.932533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028900, 39.744308, 40.453377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.652168, 39.812016, 40.337238>,  <32.426128, 39.852638, 40.267555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.652168, 39.812016, 40.337238>,  <33.028900, 39.744308, 40.453377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652168, 39.812016, 40.337238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072765, -0.946120, -0.315535,
		-0.328114, -0.276054, 0.903402,
		-0.941832, 0.169268, -0.290348,
		32.369617, 39.862797, 40.250134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550598, 39.078968, 40.610546>,  <33.028900, 39.744308, 40.453377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550598, 39.078968, 40.610546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.316093, 39.264774, 40.345055>,  <32.175392, 39.376259, 40.185760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.316093, 39.264774, 40.345055>,  <32.550598, 39.078968, 40.610546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316093, 39.264774, 40.345055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154269, -0.868308, -0.471427,
		-0.795301, -0.173985, 0.580712,
		-0.586258, 0.464511, -0.663725,
		32.140217, 39.404129, 40.145935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902660, 38.668236, 40.567097>,  <32.550598, 39.078968, 40.610546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902660, 38.668236, 40.567097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962158, 38.885517, 40.236568>,  <31.997858, 39.015888, 40.038254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962158, 38.885517, 40.236568>,  <31.902660, 38.668236, 40.567097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962158, 38.885517, 40.236568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106221, -0.822002, -0.559491,
		-0.983154, 0.170994, -0.064570,
		0.148746, 0.543207, -0.826318,
		32.006783, 39.048481, 39.988674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475603, 38.418518, 39.998066>,  <31.902660, 38.668236, 40.567097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475603, 38.418518, 39.998066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.765059, 38.621143, 39.810558>,  <31.938732, 38.742718, 39.698055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.765059, 38.621143, 39.810558>,  <31.475603, 38.418518, 39.998066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765059, 38.621143, 39.810558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087739, -0.741206, -0.665519,
		-0.684579, 0.440467, -0.580810,
		0.723639, 0.506560, -0.468768,
		31.982151, 38.773113, 39.669930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340651, 38.403393, 39.340694>,  <31.475603, 38.418518, 39.998066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340651, 38.403393, 39.340694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720280, 38.524460, 39.305687>,  <31.948057, 38.597099, 39.284683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720280, 38.524460, 39.305687>,  <31.340651, 38.403393, 39.340694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720280, 38.524460, 39.305687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085058, -0.513602, -0.853802,
		-0.303364, 0.802875, -0.513188,
		0.949071, 0.302664, -0.087518,
		32.005001, 38.615257, 39.279430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349552, 38.807438, 38.763283>,  <31.340651, 38.403393, 39.340694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349552, 38.807438, 38.763283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711611, 38.645531, 38.815239>,  <31.928846, 38.548386, 38.846413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711611, 38.645531, 38.815239>,  <31.349552, 38.807438, 38.763283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711611, 38.645531, 38.815239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004458, -0.314566, -0.949225,
		0.425077, 0.858608, -0.286533,
		0.905146, -0.404772, 0.129887,
		31.983154, 38.524097, 38.854206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599550, 38.954357, 38.171333>,  <31.349552, 38.807438, 38.763283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599550, 38.954357, 38.171333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.865416, 38.686783, 38.304443>,  <32.024937, 38.526237, 38.384312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.865416, 38.686783, 38.304443>,  <31.599550, 38.954357, 38.171333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865416, 38.686783, 38.304443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030643, -0.420619, -0.906720,
		0.746514, 0.612861, -0.259072,
		0.664664, -0.668940, 0.332778,
		32.064816, 38.486099, 38.404278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250458, 38.937721, 37.614365>,  <31.599550, 38.954357, 38.171333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250458, 38.937721, 37.614365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.242855, 38.613480, 37.848480>,  <32.238293, 38.418934, 37.988949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.242855, 38.613480, 37.848480>,  <32.250458, 38.937721, 37.614365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242855, 38.613480, 37.848480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193052, -0.577351, -0.793345,
		0.981004, 0.097911, 0.167463,
		-0.019008, -0.810604, 0.585286,
		32.237152, 38.370300, 38.024067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840271, 38.426834, 37.346546>,  <32.250458, 38.937721, 37.614365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840271, 38.426834, 37.346546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563160, 38.234634, 37.561646>,  <32.396893, 38.119316, 37.690704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563160, 38.234634, 37.561646>,  <32.840271, 38.426834, 37.346546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563160, 38.234634, 37.561646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052339, -0.777225, -0.627043,
		0.719246, -0.406258, 0.563596,
		-0.692782, -0.480496, 0.537752,
		32.355324, 38.090485, 37.722973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429813, 38.301121, 37.895908>,  <32.840271, 38.426834, 37.346546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429813, 38.301121, 37.895908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818928, 38.365459, 37.829197>,  <34.052395, 38.404064, 37.789169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818928, 38.365459, 37.829197>,  <33.429813, 38.301121, 37.895908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818928, 38.365459, 37.829197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068087, 0.886449, 0.457791,
		0.221479, -0.433977, 0.873276,
		0.972785, 0.160850, -0.166782,
		34.110764, 38.413715, 37.779163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761120, 38.540455, 38.551079>,  <33.429813, 38.301121, 37.895908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761120, 38.540455, 38.551079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973984, 38.672085, 38.239052>,  <34.101704, 38.751064, 38.051834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973984, 38.672085, 38.239052>,  <33.761120, 38.540455, 38.551079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973984, 38.672085, 38.239052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089705, 0.894268, 0.438450,
		0.841877, -0.303302, 0.446375,
		0.532162, 0.329078, -0.780071,
		34.133633, 38.770809, 38.005032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312283, 38.905521, 38.884895>,  <33.761120, 38.540455, 38.551079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312283, 38.905521, 38.884895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330036, 39.047749, 38.511456>,  <34.340687, 39.133087, 38.287392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330036, 39.047749, 38.511456>,  <34.312283, 38.905521, 38.884895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330036, 39.047749, 38.511456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267283, 0.896221, 0.354044,
		0.962595, -0.265248, -0.055262,
		0.044382, 0.355572, -0.933595,
		34.343349, 39.154419, 38.231377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895473, 39.162003, 38.858906>,  <34.312283, 38.905521, 38.884895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895473, 39.162003, 38.858906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708736, 39.359577, 38.565491>,  <34.596695, 39.478123, 38.389442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708736, 39.359577, 38.565491>,  <34.895473, 39.162003, 38.858906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708736, 39.359577, 38.565491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251831, 0.869388, 0.425141,
		0.847725, 0.013747, -0.530258,
		-0.466845, 0.493938, -0.733540,
		34.568684, 39.507759, 38.345428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316696, 39.703457, 38.665768>,  <34.895473, 39.162003, 38.858906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316696, 39.703457, 38.665768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973076, 39.807503, 38.489418>,  <34.766903, 39.869930, 38.383610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973076, 39.807503, 38.489418>,  <35.316696, 39.703457, 38.665768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973076, 39.807503, 38.489418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119427, 0.939345, 0.321510,
		0.497760, 0.223542, -0.838012,
		-0.859053, 0.260116, -0.440872,
		34.715359, 39.885536, 38.357155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435070, 40.256592, 38.191257>,  <35.316696, 39.703457, 38.665768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435070, 40.256592, 38.191257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048840, 40.277668, 38.293148>,  <34.817101, 40.290314, 38.354282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048840, 40.277668, 38.293148>,  <35.435070, 40.256592, 38.191257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048840, 40.277668, 38.293148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134298, 0.939639, 0.314710,
		-0.222768, 0.338086, -0.914370,
		-0.965577, 0.052691, 0.254726,
		34.759167, 40.293476, 38.369564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272762, 40.939701, 37.871960>,  <35.435070, 40.256592, 38.191257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272762, 40.939701, 37.871960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012161, 40.831699, 38.155548>,  <34.855801, 40.766899, 38.325703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012161, 40.831699, 38.155548>,  <35.272762, 40.939701, 37.871960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012161, 40.831699, 38.155548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065921, 0.910842, 0.407458,
		-0.755777, 0.312196, -0.575617,
		-0.651503, -0.270002, 0.708973,
		34.816711, 40.750698, 38.368240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933975, 41.584457, 37.992924>,  <35.272762, 40.939701, 37.871960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933975, 41.584457, 37.992924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.849339, 41.368034, 38.318497>,  <34.798557, 41.238178, 38.513840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.849339, 41.368034, 38.318497>,  <34.933975, 41.584457, 37.992924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849339, 41.368034, 38.318497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099605, 0.816513, 0.568669,
		-0.972269, 0.201397, -0.118875,
		-0.211591, -0.541059, 0.813931,
		34.785862, 41.205715, 38.562675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463444, 42.036514, 38.357468>,  <34.933975, 41.584457, 37.992924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463444, 42.036514, 38.357468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586254, 41.747887, 38.605682>,  <34.659943, 41.574711, 38.754612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586254, 41.747887, 38.605682>,  <34.463444, 42.036514, 38.357468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586254, 41.747887, 38.605682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079749, 0.630230, 0.772302,
		-0.948353, -0.286606, 0.135955,
		0.307030, -0.721573, 0.620537,
		34.678364, 41.531414, 38.791843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014572, 42.147148, 38.817719>,  <34.463444, 42.036514, 38.357468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014572, 42.147148, 38.817719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313202, 41.935062, 38.978470>,  <34.492378, 41.807812, 39.074921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313202, 41.935062, 38.978470>,  <34.014572, 42.147148, 38.817719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313202, 41.935062, 38.978470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003906, 0.600541, 0.799584,
		-0.665295, -0.598516, 0.446275,
		0.746570, -0.530216, 0.401874,
		34.537174, 41.775997, 39.099033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881779, 41.996140, 39.536098>,  <34.014572, 42.147148, 38.817719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881779, 41.996140, 39.536098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281002, 41.984932, 39.513866>,  <34.520538, 41.978207, 39.500526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281002, 41.984932, 39.513866>,  <33.881779, 41.996140, 39.536098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281002, 41.984932, 39.513866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058440, 0.729221, 0.681778,
		0.021429, -0.683704, 0.729445,
		0.998061, -0.028018, -0.055582,
		34.580421, 41.976528, 39.497192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097626, 41.920757, 40.239536>,  <33.881779, 41.996140, 39.536098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097626, 41.920757, 40.239536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415539, 42.068687, 40.047058>,  <34.606289, 42.157444, 39.931572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415539, 42.068687, 40.047058>,  <34.097626, 41.920757, 40.239536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415539, 42.068687, 40.047058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166146, 0.630003, 0.758612,
		0.583700, -0.682884, 0.439276,
		0.794789, 0.369818, -0.481191,
		34.653976, 42.179634, 39.902699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647526, 41.870705, 40.627327>,  <34.097626, 41.920757, 40.239536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647526, 41.870705, 40.627327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793499, 42.158195, 40.390598>,  <34.881081, 42.330688, 40.248562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793499, 42.158195, 40.390598>,  <34.647526, 41.870705, 40.627327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793499, 42.158195, 40.390598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298138, 0.511979, 0.805600,
		0.882009, -0.470433, -0.027444,
		0.364930, 0.718729, -0.591824,
		34.902977, 42.373814, 40.213051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381287, 42.081188, 40.951679>,  <34.647526, 41.870705, 40.627327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381287, 42.081188, 40.951679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272278, 42.375019, 40.703125>,  <35.206871, 42.551319, 40.553993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272278, 42.375019, 40.703125>,  <35.381287, 42.081188, 40.951679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272278, 42.375019, 40.703125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204909, 0.675327, 0.708482,
		0.940076, 0.065750, -0.334564,
		-0.272523, 0.734582, -0.621386,
		35.190521, 42.595394, 40.516708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094505, 42.350861, 40.558147>,  <35.381287, 42.081188, 40.951679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094505, 42.350861, 40.558147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.484005, 42.339237, 40.648449>,  <36.717705, 42.332264, 40.702629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.484005, 42.339237, 40.648449>,  <36.094505, 42.350861, 40.558147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484005, 42.339237, 40.648449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188324, -0.454199, -0.870768,
		0.127844, 0.890426, -0.436804,
		0.973751, -0.029062, 0.225755,
		36.776131, 42.330517, 40.716175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394966, 42.658150, 39.903263>,  <36.094505, 42.350861, 40.558147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394966, 42.658150, 39.903263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684505, 42.465408, 40.100792>,  <36.858227, 42.349762, 40.219311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684505, 42.465408, 40.100792>,  <36.394966, 42.658150, 39.903263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684505, 42.465408, 40.100792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358115, -0.349385, -0.865843,
		0.589747, 0.803582, -0.080340,
		0.723845, -0.481857, 0.493824,
		36.901657, 42.320850, 40.248940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082962, 42.648785, 39.479034>,  <36.394966, 42.658150, 39.903263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082962, 42.648785, 39.479034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145611, 42.344048, 39.730453>,  <37.183201, 42.161205, 39.881306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145611, 42.344048, 39.730453>,  <37.082962, 42.648785, 39.479034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145611, 42.344048, 39.730453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383547, -0.539538, -0.749527,
		0.910144, 0.358466, 0.207700,
		0.156618, -0.761840, 0.628546,
		37.192596, 42.115494, 39.919018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743462, 42.410141, 39.299503>,  <37.082962, 42.648785, 39.479034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743462, 42.410141, 39.299503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599079, 42.101177, 39.508537>,  <37.512451, 41.915798, 39.633957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599079, 42.101177, 39.508537>,  <37.743462, 42.410141, 39.299503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599079, 42.101177, 39.508537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455589, -0.634991, -0.623879,
		0.813726, 0.012891, 0.581105,
		-0.360954, -0.772412, 0.522582,
		37.490791, 41.869453, 39.665314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265388, 41.892441, 39.442085>,  <37.743462, 42.410141, 39.299503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265388, 41.892441, 39.442085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920845, 41.689484, 39.451977>,  <37.714119, 41.567707, 39.457912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920845, 41.689484, 39.451977>,  <38.265388, 41.892441, 39.442085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920845, 41.689484, 39.451977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435069, -0.761956, -0.479726,
		0.262256, -0.402456, 0.877069,
		-0.861357, -0.507397, 0.024732,
		37.662437, 41.537266, 39.459396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466175, 41.167377, 39.430992>,  <38.265388, 41.892441, 39.442085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466175, 41.167377, 39.430992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079369, 41.129120, 39.336563>,  <37.847286, 41.106163, 39.279907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079369, 41.129120, 39.336563>,  <38.466175, 41.167377, 39.430992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079369, 41.129120, 39.336563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224474, -0.758008, -0.612401,
		-0.120369, -0.645194, 0.754477,
		-0.967017, -0.095647, -0.236070,
		37.789265, 41.100426, 39.265743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180710, 40.413166, 39.562126>,  <38.466175, 41.167377, 39.430992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180710, 40.413166, 39.562126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932575, 40.572235, 39.291706>,  <37.783695, 40.667675, 39.129456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932575, 40.572235, 39.291706>,  <38.180710, 40.413166, 39.562126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932575, 40.572235, 39.291706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170729, -0.772805, -0.611247,
		-0.765519, -0.494606, 0.411516,
		-0.620349, 0.397664, -0.676041,
		37.746475, 40.691536, 39.088890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809071, 39.875904, 39.383282>,  <38.180710, 40.413166, 39.562126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809071, 39.875904, 39.383282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.753242, 40.141895, 39.089798>,  <37.719746, 40.301491, 38.913708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.753242, 40.141895, 39.089798>,  <37.809071, 39.875904, 39.383282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753242, 40.141895, 39.089798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107727, -0.726366, -0.678814,
		-0.984335, -0.173783, 0.029744,
		-0.139571, 0.664976, -0.733708,
		37.711372, 40.341389, 38.869686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495556, 39.505230, 38.840885>,  <37.809071, 39.875904, 39.383282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495556, 39.505230, 38.840885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.637955, 39.829460, 38.654884>,  <37.723392, 40.023998, 38.543282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.637955, 39.829460, 38.654884>,  <37.495556, 39.505230, 38.840885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637955, 39.829460, 38.654884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347084, -0.576701, -0.739559,
		-0.867639, 0.101885, -0.486643,
		0.355998, 0.810577, -0.465006,
		37.744755, 40.072632, 38.515381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337757, 39.392891, 38.132114>,  <37.495556, 39.505230, 38.840885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337757, 39.392891, 38.132114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629623, 39.666393, 38.128922>,  <37.804745, 39.830494, 38.127007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629623, 39.666393, 38.128922>,  <37.337757, 39.392891, 38.132114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629623, 39.666393, 38.128922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330510, -0.362871, -0.871257,
		-0.598626, 0.633087, -0.490763,
		0.729665, 0.683758, -0.007983,
		37.848522, 39.871521, 38.126526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330330, 39.787994, 37.501411>,  <37.337757, 39.392891, 38.132114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330330, 39.787994, 37.501411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705631, 39.798481, 37.639397>,  <37.930813, 39.804771, 37.722187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705631, 39.798481, 37.639397>,  <37.330330, 39.787994, 37.501411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705631, 39.798481, 37.639397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336145, -0.304905, -0.891089,
		0.081820, 0.952022, -0.294890,
		0.938250, 0.026217, 0.344965,
		37.987106, 39.806347, 37.742886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697136, 40.064648, 36.911297>,  <37.330330, 39.787994, 37.501411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697136, 40.064648, 36.911297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922848, 39.877277, 37.183228>,  <38.058277, 39.764854, 37.346386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922848, 39.877277, 37.183228>,  <37.697136, 40.064648, 36.911297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922848, 39.877277, 37.183228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368704, -0.593783, -0.715178,
		0.738676, 0.654217, -0.162351,
		0.564283, -0.468425, 0.679826,
		38.092133, 39.736752, 37.387177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245567, 39.826103, 36.570717>,  <37.697136, 40.064648, 36.911297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245567, 39.826103, 36.570717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.305817, 39.600082, 36.895195>,  <38.341965, 39.464470, 37.089882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.305817, 39.600082, 36.895195>,  <38.245567, 39.826103, 36.570717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305817, 39.600082, 36.895195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141889, -0.799701, -0.583392,
		0.978356, 0.202972, -0.040279,
		0.150623, -0.565050, 0.811192,
		38.351002, 39.430569, 37.138554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814117, 39.447411, 36.455860>,  <38.245567, 39.826103, 36.570717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814117, 39.447411, 36.455860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.643288, 39.256073, 36.762794>,  <38.540791, 39.141270, 36.946957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.643288, 39.256073, 36.762794>,  <38.814117, 39.447411, 36.455860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643288, 39.256073, 36.762794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008398, -0.850678, -0.525621,
		0.904180, -0.218033, 0.367316,
		-0.427070, -0.478340, 0.767334,
		38.515167, 39.112572, 36.992996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.105923, 26.907318, 30.695339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.725361, 26.992470, 30.606337>,  <27.497025, 27.043562, 30.552935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.725361, 26.992470, 30.606337>,  <28.105923, 26.907318, 30.695339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725361, 26.992470, 30.606337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090042, 0.883301, 0.460078,
		0.294484, 0.417686, -0.859545,
		-0.951405, 0.212881, -0.222508,
		27.439939, 27.056334, 30.539583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175184, 27.595730, 30.513979>,  <28.105923, 26.907318, 30.695339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175184, 27.595730, 30.513979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.787104, 27.528919, 30.584192>,  <27.554255, 27.488832, 30.626320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.787104, 27.528919, 30.584192>,  <28.175184, 27.595730, 30.513979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787104, 27.528919, 30.584192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032244, 0.806996, 0.589677,
		-0.240145, 0.566445, -0.788334,
		-0.970201, -0.167027, 0.175532,
		27.496044, 27.478811, 30.636852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855877, 28.249140, 30.561348>,  <28.175184, 27.595730, 30.513979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855877, 28.249140, 30.561348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.570959, 28.037273, 30.745560>,  <27.400007, 27.910154, 30.856087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.570959, 28.037273, 30.745560>,  <27.855877, 28.249140, 30.561348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570959, 28.037273, 30.745560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236530, 0.798903, 0.552999,
		-0.660823, 0.284970, -0.694338,
		-0.712297, -0.529667, 0.460529,
		27.357269, 27.878374, 30.883718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177864, 28.589108, 30.544634>,  <27.855877, 28.249140, 30.561348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177864, 28.589108, 30.544634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164377, 28.348454, 30.863857>,  <27.156284, 28.204062, 31.055391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164377, 28.348454, 30.863857>,  <27.177864, 28.589108, 30.544634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164377, 28.348454, 30.863857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183155, 0.788710, 0.586848,
		-0.982506, -0.126382, -0.136785,
		-0.033717, -0.601634, 0.798060,
		27.154263, 28.167963, 31.103275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754202, 28.882008, 30.846470>,  <27.177864, 28.589108, 30.544634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754202, 28.882008, 30.846470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.901079, 28.657780, 31.143368>,  <26.989206, 28.523243, 31.321507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.901079, 28.657780, 31.143368>,  <26.754202, 28.882008, 30.846470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901079, 28.657780, 31.143368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334188, 0.665197, 0.667707,
		-0.868036, -0.493227, 0.056921,
		0.367195, -0.560571, 0.742245,
		27.011238, 28.489609, 31.366041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171978, 28.755615, 31.236874>,  <26.754202, 28.882008, 30.846470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171978, 28.755615, 31.236874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.496632, 28.694494, 31.462404>,  <26.691423, 28.657822, 31.597721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.496632, 28.694494, 31.462404>,  <26.171978, 28.755615, 31.236874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496632, 28.694494, 31.462404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289633, 0.732932, 0.615567,
		-0.507306, -0.662919, 0.550617,
		0.811636, -0.152804, 0.563824,
		26.740122, 28.648653, 31.631552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921175, 28.738243, 31.953979>,  <26.171978, 28.755615, 31.236874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921175, 28.738243, 31.953979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.313103, 28.817425, 31.965076>,  <26.548260, 28.864933, 31.971735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.313103, 28.817425, 31.965076>,  <25.921175, 28.738243, 31.953979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313103, 28.817425, 31.965076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167266, 0.735996, 0.655997,
		0.109438, -0.647399, 0.754253,
		0.979819, 0.197952, 0.027742,
		26.607048, 28.876810, 31.973398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967955, 29.060404, 32.537487>,  <25.921175, 28.738243, 31.953979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967955, 29.060404, 32.537487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329414, 29.168289, 32.404419>,  <26.546291, 29.233021, 32.324577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329414, 29.168289, 32.404419>,  <25.967955, 29.060404, 32.537487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329414, 29.168289, 32.404419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036835, 0.822852, 0.567060,
		0.426684, -0.500170, 0.753506,
		0.903650, 0.269711, -0.332673,
		26.600510, 29.249203, 32.304615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311611, 29.240816, 33.137978>,  <25.967955, 29.060404, 32.537487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311611, 29.240816, 33.137978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525990, 29.426558, 32.855946>,  <26.654615, 29.538002, 32.686726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525990, 29.426558, 32.855946>,  <26.311611, 29.240816, 33.137978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525990, 29.426558, 32.855946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068076, 0.856204, 0.512133,
		0.841501, -0.226478, 0.490493,
		0.535949, 0.464352, -0.705078,
		26.686773, 29.565863, 32.644421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879944, 29.582285, 33.514622>,  <26.311611, 29.240816, 33.137978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879944, 29.582285, 33.514622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819054, 29.751734, 33.157440>,  <26.782520, 29.853403, 32.943130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819054, 29.751734, 33.157440>,  <26.879944, 29.582285, 33.514622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819054, 29.751734, 33.157440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066874, 0.897000, 0.436942,
		0.986081, 0.126228, -0.108215,
		-0.152224, 0.423624, -0.892956,
		26.773386, 29.878820, 32.889553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136885, 30.210287, 33.730797>,  <26.879944, 29.582285, 33.514622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136885, 30.210287, 33.730797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948648, 30.255051, 33.380707>,  <26.835707, 30.281908, 33.170650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948648, 30.255051, 33.380707>,  <27.136885, 30.210287, 33.730797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948648, 30.255051, 33.380707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228778, 0.942528, 0.243520,
		0.852178, 0.314830, -0.417941,
		-0.470589, 0.111907, -0.875227,
		26.807472, 30.288622, 33.118137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365377, 30.865618, 33.308800>,  <27.136885, 30.210287, 33.730797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365377, 30.865618, 33.308800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995913, 30.755573, 33.202095>,  <26.774235, 30.689547, 33.138073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995913, 30.755573, 33.202095>,  <27.365377, 30.865618, 33.308800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995913, 30.755573, 33.202095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296524, 0.954067, 0.042778,
		0.242743, 0.118615, -0.962811,
		-0.923660, -0.275113, -0.266765,
		26.718815, 30.673038, 33.122066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234135, 31.495632, 32.824535>,  <27.365377, 30.865618, 33.308800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234135, 31.495632, 32.824535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.878069, 31.334101, 32.908943>,  <26.664429, 31.237183, 32.959587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.878069, 31.334101, 32.908943>,  <27.234135, 31.495632, 32.824535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878069, 31.334101, 32.908943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366396, 0.909724, 0.195338,
		-0.270849, 0.096568, -0.957766,
		-0.890166, -0.403828, 0.211016,
		26.611019, 31.212952, 32.972248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699711, 31.720167, 32.424740>,  <27.234135, 31.495632, 32.824535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699711, 31.720167, 32.424740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505938, 31.610374, 32.757000>,  <26.389673, 31.544498, 32.956356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505938, 31.610374, 32.757000>,  <26.699711, 31.720167, 32.424740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505938, 31.610374, 32.757000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324898, 0.938043, 0.120490,
		-0.812261, -0.211508, -0.543596,
		-0.484432, -0.274482, 0.830654,
		26.360607, 31.528030, 33.006195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174810, 32.158951, 32.433140>,  <26.699711, 31.720167, 32.424740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174810, 32.158951, 32.433140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.201086, 32.010910, 32.803806>,  <26.216852, 31.922085, 33.026207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.201086, 32.010910, 32.803806>,  <26.174810, 32.158951, 32.433140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201086, 32.010910, 32.803806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301388, 0.877939, 0.372007,
		-0.951236, -0.303723, -0.053873,
		0.065689, -0.370103, 0.926665,
		26.220793, 31.899879, 33.081806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504911, 32.355785, 32.855267>,  <26.174810, 32.158951, 32.433140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504911, 32.355785, 32.855267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770363, 32.249142, 33.134842>,  <25.929634, 32.185154, 33.302589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770363, 32.249142, 33.134842>,  <25.504911, 32.355785, 32.855267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770363, 32.249142, 33.134842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392011, 0.671826, 0.628472,
		-0.637123, -0.691064, 0.341329,
		0.663628, -0.266609, 0.698941,
		25.969452, 32.169159, 33.344524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125221, 32.247719, 33.408863>,  <25.504911, 32.355785, 32.855267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125221, 32.247719, 33.408863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.491232, 32.306026, 33.559315>,  <25.710838, 32.341011, 33.649586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.491232, 32.306026, 33.559315>,  <25.125221, 32.247719, 33.408863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491232, 32.306026, 33.559315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383331, 0.604570, 0.698249,
		-0.125618, -0.783101, 0.609075,
		0.915029, 0.145764, 0.376132,
		25.765741, 32.349754, 33.672153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941710, 32.367626, 34.121555>,  <25.125221, 32.247719, 33.408863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941710, 32.367626, 34.121555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.318167, 32.497875, 34.085281>,  <25.544041, 32.576023, 34.063519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.318167, 32.497875, 34.085281>,  <24.941710, 32.367626, 34.121555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318167, 32.497875, 34.085281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177246, 0.703864, 0.687866,
		0.287811, -0.631307, 0.720150,
		0.941142, 0.325619, -0.090684,
		25.600510, 32.595562, 34.058075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329771, 32.315250, 34.842567>,  <24.941710, 32.367626, 34.121555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329771, 32.315250, 34.842567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.519701, 32.581696, 34.612492>,  <25.633659, 32.741562, 34.474445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.519701, 32.581696, 34.612492>,  <25.329771, 32.315250, 34.842567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519701, 32.581696, 34.612492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264725, 0.731394, 0.628477,
		0.839323, -0.146150, 0.523620,
		0.474825, 0.666110, -0.575186,
		25.662149, 32.781528, 34.439938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552620, 32.662449, 35.355263>,  <25.329771, 32.315250, 34.842567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552620, 32.662449, 35.355263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.602867, 32.915070, 35.049229>,  <25.633015, 33.066643, 34.865608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.602867, 32.915070, 35.049229>,  <25.552620, 32.662449, 35.355263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602867, 32.915070, 35.049229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115833, 0.775260, 0.620930,
		0.985293, 0.010624, 0.170540,
		0.125616, 0.631552, -0.765089,
		25.640553, 33.104534, 34.819702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918943, 33.238300, 35.660923>,  <25.552620, 32.662449, 35.355263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918943, 33.238300, 35.660923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717869, 33.346924, 35.332642>,  <25.597223, 33.412098, 35.135674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717869, 33.346924, 35.332642>,  <25.918943, 33.238300, 35.660923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717869, 33.346924, 35.332642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140003, 0.911271, 0.387278,
		0.853056, 0.309582, -0.420065,
		-0.502688, 0.271559, -0.820707,
		25.567062, 33.428391, 35.086430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264454, 32.695576, 36.090015>,  <25.918943, 33.238300, 35.660923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264454, 32.695576, 36.090015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618092, 32.621948, 36.261826>,  <26.830275, 32.577770, 36.364914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618092, 32.621948, 36.261826>,  <26.264454, 32.695576, 36.090015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618092, 32.621948, 36.261826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084995, -0.840486, -0.535124,
		0.459513, 0.509609, -0.727425,
		0.884095, -0.184069, 0.429529,
		26.883320, 32.566727, 36.390686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677204, 32.430607, 35.529659>,  <26.264454, 32.695576, 36.090015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677204, 32.430607, 35.529659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870373, 32.316124, 35.860687>,  <26.986275, 32.247437, 36.059303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870373, 32.316124, 35.860687>,  <26.677204, 32.430607, 35.529659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870373, 32.316124, 35.860687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009210, -0.946687, -0.322024,
		0.875614, 0.147891, -0.459813,
		0.482923, -0.286204, 0.827570,
		27.015249, 32.230263, 36.108959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239885, 32.173904, 35.283089>,  <26.677204, 32.430607, 35.529659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239885, 32.173904, 35.283089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.155945, 32.006073, 35.636341>,  <27.105581, 31.905375, 35.848293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.155945, 32.006073, 35.636341>,  <27.239885, 32.173904, 35.283089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155945, 32.006073, 35.636341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205582, -0.901984, -0.379686,
		0.955876, 0.101877, 0.275541,
		-0.209852, -0.419578, 0.883129,
		27.092989, 31.880199, 35.901279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731434, 31.600956, 35.356319>,  <27.239885, 32.173904, 35.283089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731434, 31.600956, 35.356319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467325, 31.503372, 35.640438>,  <27.308859, 31.444822, 35.810909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467325, 31.503372, 35.640438>,  <27.731434, 31.600956, 35.356319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467325, 31.503372, 35.640438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039909, -0.955832, -0.291192,
		0.749964, -0.163919, 0.640847,
		-0.660274, -0.243959, 0.710298,
		27.269243, 31.430185, 35.853527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031757, 31.060623, 35.768864>,  <27.731434, 31.600956, 35.356319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031757, 31.060623, 35.768864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644268, 31.006975, 35.852371>,  <27.411774, 30.974787, 35.902477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644268, 31.006975, 35.852371>,  <28.031757, 31.060623, 35.768864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644268, 31.006975, 35.852371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047336, -0.925773, -0.375106,
		0.243583, -0.353492, 0.903167,
		-0.968724, -0.134122, 0.208770,
		27.353651, 30.966738, 35.915001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017500, 30.387812, 36.098820>,  <28.031757, 31.060623, 35.768864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017500, 30.387812, 36.098820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651899, 30.481997, 35.966663>,  <27.432539, 30.538507, 35.887371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651899, 30.481997, 35.966663>,  <28.017500, 30.387812, 36.098820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651899, 30.481997, 35.966663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080537, -0.903445, -0.421070,
		-0.397632, -0.358251, 0.844715,
		-0.914004, 0.235462, -0.330387,
		27.377699, 30.552635, 35.867546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495857, 29.793766, 36.370506>,  <28.017500, 30.387812, 36.098820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495857, 29.793766, 36.370506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347933, 29.984514, 36.051548>,  <27.259178, 30.098963, 35.860172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347933, 29.984514, 36.051548>,  <27.495857, 29.793766, 36.370506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347933, 29.984514, 36.051548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153743, -0.877813, -0.453660,
		-0.916300, -0.045173, 0.397938,
		-0.369808, 0.476869, -0.797394,
		27.236990, 30.127575, 35.812328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908098, 29.458797, 36.186646>,  <27.495857, 29.793766, 36.370506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908098, 29.458797, 36.186646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961819, 29.656675, 35.843197>,  <26.994051, 29.775402, 35.637127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961819, 29.656675, 35.843197>,  <26.908098, 29.458797, 36.186646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961819, 29.656675, 35.843197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192982, -0.836829, -0.512324,
		-0.971967, 0.234506, -0.016921,
		0.134303, 0.494697, -0.858626,
		27.002110, 29.805084, 35.585609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330761, 29.165983, 35.756390>,  <26.908098, 29.458797, 36.186646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330761, 29.165983, 35.756390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.615955, 29.327597, 35.527161>,  <26.787071, 29.424564, 35.389626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.615955, 29.327597, 35.527161>,  <26.330761, 29.165983, 35.756390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615955, 29.327597, 35.527161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011903, -0.810201, -0.586031,
		-0.701078, 0.424653, -0.572852,
		0.712985, 0.404035, -0.573068,
		26.829851, 29.448807, 35.355240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030621, 29.072845, 35.107044>,  <26.330761, 29.165983, 35.756390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030621, 29.072845, 35.107044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.418667, 29.140026, 35.036995>,  <26.651495, 29.180334, 34.994965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.418667, 29.140026, 35.036995>,  <26.030621, 29.072845, 35.107044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418667, 29.140026, 35.036995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029351, -0.797659, -0.602394,
		-0.240865, 0.579251, -0.778751,
		0.970115, 0.167953, -0.175127,
		26.709702, 29.190413, 34.984455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124712, 29.040607, 34.344337>,  <26.030621, 29.072845, 35.107044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124712, 29.040607, 34.344337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486063, 28.980034, 34.504826>,  <26.702873, 28.943689, 34.601116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486063, 28.980034, 34.504826>,  <26.124712, 29.040607, 34.344337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486063, 28.980034, 34.504826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102404, -0.832338, -0.544727,
		0.416438, 0.533181, -0.736409,
		0.903379, -0.151434, 0.401217,
		26.757076, 28.934605, 34.625191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491886, 28.930576, 33.746914>,  <26.124712, 29.040607, 34.344337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491886, 28.930576, 33.746914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670959, 28.771980, 34.067509>,  <26.778402, 28.676823, 34.259865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670959, 28.771980, 34.067509>,  <26.491886, 28.930576, 33.746914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670959, 28.771980, 34.067509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063808, -0.879872, -0.470907,
		0.891913, 0.261958, -0.368604,
		0.447682, -0.396489, 0.801485,
		26.805264, 28.653034, 34.307953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821907, 28.379259, 33.346771>,  <26.491886, 28.930576, 33.746914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821907, 28.379259, 33.346771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859682, 28.270609, 33.729874>,  <26.882347, 28.205418, 33.959736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859682, 28.270609, 33.729874>,  <26.821907, 28.379259, 33.346771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859682, 28.270609, 33.729874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010249, -0.961741, -0.273768,
		0.995478, 0.035670, -0.088040,
		0.094437, -0.271628, 0.957758,
		26.888014, 28.189121, 34.017200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444092, 27.864706, 33.427563>,  <26.821907, 28.379259, 33.346771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444092, 27.864706, 33.427563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183414, 27.809145, 33.725826>,  <27.027008, 27.775808, 33.904785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183414, 27.809145, 33.725826>,  <27.444092, 27.864706, 33.427563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183414, 27.809145, 33.725826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021013, -0.979405, -0.200811,
		0.758192, -0.146536, 0.635352,
		-0.651692, -0.138903, 0.745656,
		26.987907, 27.767473, 33.949524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680182, 27.356775, 33.765865>,  <27.444092, 27.864706, 33.427563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680182, 27.356775, 33.765865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295916, 27.344481, 33.876270>,  <27.065357, 27.337103, 33.942513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295916, 27.344481, 33.876270>,  <27.680182, 27.356775, 33.765865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295916, 27.344481, 33.876270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035356, -0.999305, 0.011772,
		0.275456, 0.021068, 0.961083,
		-0.960663, -0.030737, 0.276009,
		27.007717, 27.335258, 33.959072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597044, 26.861500, 34.226959>,  <27.680182, 27.356775, 33.765865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597044, 26.861500, 34.226959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234066, 26.899754, 34.063305>,  <27.016279, 26.922707, 33.965111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234066, 26.899754, 34.063305>,  <27.597044, 26.861500, 34.226959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234066, 26.899754, 34.063305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031833, -0.986602, -0.160010,
		-0.418959, -0.132177, 0.898333,
		-0.907447, 0.095635, -0.409138,
		26.961832, 26.928444, 33.940563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237549, 26.164473, 34.321941>,  <27.597044, 26.861500, 34.226959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237549, 26.164473, 34.321941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037029, 26.351032, 34.030415>,  <26.916718, 26.462967, 33.855499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037029, 26.351032, 34.030415>,  <27.237549, 26.164473, 34.321941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037029, 26.351032, 34.030415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097219, -0.867321, -0.488162,
		-0.859787, -0.173868, 0.480141,
		-0.501313, 0.466395, -0.728808,
		26.886639, 26.490952, 33.811771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834974, 25.591509, 34.078293>,  <27.237549, 26.164473, 34.321941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834974, 25.591509, 34.078293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.783966, 25.855501, 33.782139>,  <26.753361, 26.013897, 33.604446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.783966, 25.855501, 33.782139>,  <26.834974, 25.591509, 34.078293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783966, 25.855501, 33.782139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133459, -0.751106, -0.646551,
		-0.982816, 0.016361, 0.183862,
		-0.127521, 0.659979, -0.740383,
		26.745710, 26.053495, 33.560024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287252, 25.320015, 33.674812>,  <26.834974, 25.591509, 34.078293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287252, 25.320015, 33.674812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.492485, 25.579563, 33.450058>,  <26.615623, 25.735292, 33.315205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.492485, 25.579563, 33.450058>,  <26.287252, 25.320015, 33.674812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492485, 25.579563, 33.450058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050040, -0.676115, -0.735095,
		-0.856881, 0.349046, -0.379371,
		0.513080, 0.648872, -0.561884,
		26.646410, 25.774225, 33.281494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984678, 25.319056, 33.034355>,  <26.287252, 25.320015, 33.674812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984678, 25.319056, 33.034355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355200, 25.457615, 32.975071>,  <26.577513, 25.540751, 32.939499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355200, 25.457615, 32.975071>,  <25.984678, 25.319056, 33.034355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355200, 25.457615, 32.975071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092869, -0.591147, -0.801199,
		-0.365149, 0.728391, -0.579752,
		0.926305, 0.346398, -0.148211,
		26.633091, 25.561535, 32.930607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016838, 25.475597, 32.348400>,  <25.984678, 25.319056, 33.034355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016838, 25.475597, 32.348400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.397501, 25.423443, 32.459648>,  <26.625898, 25.392151, 32.526398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.397501, 25.423443, 32.459648>,  <26.016838, 25.475597, 32.348400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397501, 25.423443, 32.459648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171080, -0.526998, -0.832469,
		0.255109, 0.839805, -0.479214,
		0.951657, -0.130387, 0.278116,
		26.682999, 25.384327, 32.543083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.232677, 39.932522, 42.790619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866085, 39.812073, 42.685246>,  <39.646130, 39.739803, 42.622021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866085, 39.812073, 42.685246>,  <40.232677, 39.932522, 42.790619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866085, 39.812073, 42.685246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365024, 0.898877, 0.242440,
		0.163794, 0.318351, -0.933715,
		-0.916476, -0.301118, -0.263436,
		39.591141, 39.721737, 42.606216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848011, 40.603359, 42.631516>,  <40.232677, 39.932522, 42.790619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848011, 40.603359, 42.631516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.567951, 40.331715, 42.719700>,  <39.399914, 40.168728, 42.772610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.567951, 40.331715, 42.719700>,  <39.848011, 40.603359, 42.631516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567951, 40.331715, 42.719700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445636, 0.656886, 0.608202,
		-0.557851, 0.327588, -0.762554,
		-0.700150, -0.679108, 0.220459,
		39.357906, 40.127983, 42.785839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292458, 41.053223, 42.800076>,  <39.848011, 40.603359, 42.631516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292458, 41.053223, 42.800076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163681, 40.697025, 42.928688>,  <39.086414, 40.483307, 43.005856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163681, 40.697025, 42.928688>,  <39.292458, 41.053223, 42.800076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163681, 40.697025, 42.928688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467276, 0.444816, 0.764063,
		-0.823411, 0.095743, -0.559310,
		-0.321944, -0.890490, 0.321528,
		39.067097, 40.429878, 43.025146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561584, 41.086445, 42.773693>,  <39.292458, 41.053223, 42.800076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561584, 41.086445, 42.773693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690899, 40.822868, 43.045364>,  <38.768490, 40.664722, 43.208366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690899, 40.822868, 43.045364>,  <38.561584, 41.086445, 42.773693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690899, 40.822868, 43.045364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492476, 0.495708, 0.715360,
		-0.808054, -0.565746, -0.164256,
		0.323289, -0.658942, 0.679175,
		38.787884, 40.625187, 43.249119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027771, 40.961376, 43.127380>,  <38.561584, 41.086445, 42.773693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027771, 40.961376, 43.127380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306980, 40.867599, 43.398026>,  <38.474506, 40.811333, 43.560413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306980, 40.867599, 43.398026>,  <38.027771, 40.961376, 43.127380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306980, 40.867599, 43.398026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482028, 0.544911, 0.686091,
		-0.529543, -0.805051, 0.267350,
		0.698021, -0.234445, 0.676611,
		38.516388, 40.797268, 43.601009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589565, 40.879910, 43.732491>,  <38.027771, 40.961376, 43.127380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589565, 40.879910, 43.732491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966515, 40.937164, 43.853447>,  <38.192684, 40.971516, 43.926022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966515, 40.937164, 43.853447>,  <37.589565, 40.879910, 43.732491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966515, 40.937164, 43.853447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334242, 0.442187, 0.832318,
		-0.014578, -0.885428, 0.464548,
		0.942375, 0.143138, 0.302393,
		38.249226, 40.980106, 43.944164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502541, 40.865097, 44.458134>,  <37.589565, 40.879910, 43.732491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502541, 40.865097, 44.458134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867779, 41.018692, 44.403278>,  <38.086922, 41.110847, 44.370365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867779, 41.018692, 44.403278>,  <37.502541, 40.865097, 44.458134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867779, 41.018692, 44.403278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141556, 0.613959, 0.776541,
		0.382377, -0.689646, 0.614960,
		0.913099, 0.383983, -0.137140,
		38.141708, 41.133888, 44.362137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748722, 40.834682, 45.144516>,  <37.502541, 40.865097, 44.458134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748722, 40.834682, 45.144516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966618, 41.099304, 44.938370>,  <38.097355, 41.258076, 44.814682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966618, 41.099304, 44.938370>,  <37.748722, 40.834682, 45.144516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966618, 41.099304, 44.938370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110191, 0.665692, 0.738046,
		0.831337, -0.345251, 0.435523,
		0.544735, 0.661556, -0.515371,
		38.130039, 41.297771, 44.783760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305645, 40.986290, 45.594311>,  <37.748722, 40.834682, 45.144516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305645, 40.986290, 45.594311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299850, 41.287243, 45.330883>,  <38.296375, 41.467815, 45.172825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299850, 41.287243, 45.330883>,  <38.305645, 40.986290, 45.594311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299850, 41.287243, 45.330883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037454, 0.658583, 0.751576,
		0.999193, -0.013778, -0.037721,
		-0.014487, 0.752382, -0.658568,
		38.295506, 41.512959, 45.133312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844738, 41.455845, 45.748219>,  <38.305645, 40.986290, 45.594311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844738, 41.455845, 45.748219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578835, 41.658340, 45.528465>,  <38.419292, 41.779839, 45.396614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578835, 41.658340, 45.528465>,  <38.844738, 41.455845, 45.748219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578835, 41.658340, 45.528465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093285, 0.673385, 0.733383,
		0.741212, 0.538770, -0.400413,
		-0.664757, 0.506240, -0.549381,
		38.379406, 41.810211, 45.363651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054543, 42.134701, 46.009232>,  <38.844738, 41.455845, 45.748219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054543, 42.134701, 46.009232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.703941, 42.175133, 45.820961>,  <38.493580, 42.199390, 45.708000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.703941, 42.175133, 45.820961>,  <39.054543, 42.134701, 46.009232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703941, 42.175133, 45.820961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327526, 0.591339, 0.736916,
		0.352812, 0.800064, -0.485202,
		-0.876499, 0.101077, -0.470673,
		38.440990, 42.205456, 45.679760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801128, 42.892853, 46.067780>,  <39.054543, 42.134701, 46.009232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801128, 42.892853, 46.067780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.457893, 42.701344, 45.993526>,  <38.251953, 42.586437, 45.948975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.457893, 42.701344, 45.993526>,  <38.801128, 42.892853, 46.067780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457893, 42.701344, 45.993526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461644, 0.560941, 0.687190,
		-0.224876, 0.675368, -0.702359,
		-0.858088, -0.478773, -0.185637,
		38.200466, 42.557713, 45.937836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219761, 43.373409, 45.883179>,  <38.801128, 42.892853, 46.067780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219761, 43.373409, 45.883179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.072731, 43.050255, 46.067444>,  <37.984512, 42.856361, 46.178001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.072731, 43.050255, 46.067444>,  <38.219761, 43.373409, 45.883179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072731, 43.050255, 46.067444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601625, 0.584293, 0.544655,
		-0.709181, -0.076945, -0.700815,
		-0.367573, -0.807887, 0.460661,
		37.962460, 42.807888, 46.205643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508724, 43.495014, 45.849735>,  <38.219761, 43.373409, 45.883179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508724, 43.495014, 45.849735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647324, 43.277016, 46.155132>,  <37.730484, 43.146217, 46.338371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647324, 43.277016, 46.155132>,  <37.508724, 43.495014, 45.849735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647324, 43.277016, 46.155132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390591, 0.656180, 0.645652,
		-0.852866, -0.521929, 0.014494,
		0.346495, -0.544993, 0.763494,
		37.751274, 43.113518, 46.384182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823299, 43.821888, 45.932789>,  <37.508724, 43.495014, 45.849735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823299, 43.821888, 45.932789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625938, 44.160755, 45.853947>,  <36.507523, 44.364075, 45.806641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625938, 44.160755, 45.853947>,  <36.823299, 43.821888, 45.932789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625938, 44.160755, 45.853947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050000, -0.198606, -0.978803,
		-0.868361, -0.492803, 0.055634,
		-0.493406, 0.847173, -0.197102,
		36.477917, 44.414906, 45.794815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256012, 43.546490, 45.636417>,  <36.823299, 43.821888, 45.932789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256012, 43.546490, 45.636417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301395, 43.931629, 45.538399>,  <36.328625, 44.162712, 45.479588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301395, 43.931629, 45.538399>,  <36.256012, 43.546490, 45.636417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301395, 43.931629, 45.538399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000405, -0.246590, -0.969120,
		-0.993543, 0.110053, -0.027588,
		0.113457, 0.962851, -0.245042,
		36.335434, 44.220486, 45.464886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934193, 43.656925, 45.045776>,  <36.256012, 43.546490, 45.636417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934193, 43.656925, 45.045776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.192188, 43.958652, 44.996799>,  <36.346985, 44.139690, 44.967415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.192188, 43.958652, 44.996799>,  <35.934193, 43.656925, 45.045776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192188, 43.958652, 44.996799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060571, -0.210178, -0.975785,
		-0.761790, 0.621952, -0.181252,
		0.644986, 0.754322, -0.122439,
		36.385685, 44.184948, 44.960068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809456, 43.951035, 44.430840>,  <35.934193, 43.656925, 45.045776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809456, 43.951035, 44.430840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176476, 44.089767, 44.508621>,  <36.396687, 44.173008, 44.555290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176476, 44.089767, 44.508621>,  <35.809456, 43.951035, 44.430840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176476, 44.089767, 44.508621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261999, -0.159497, -0.951797,
		-0.299096, 0.924267, -0.237215,
		0.917550, 0.346829, 0.194452,
		36.451740, 44.193817, 44.566956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944798, 44.367344, 43.839680>,  <35.809456, 43.951035, 44.430840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944798, 44.367344, 43.839680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287643, 44.245110, 44.005558>,  <36.493351, 44.171768, 44.105083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287643, 44.245110, 44.005558>,  <35.944798, 44.367344, 43.839680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287643, 44.245110, 44.005558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434567, -0.003309, -0.900633,
		0.276591, 0.952160, 0.129960,
		0.857117, -0.305584, 0.414692,
		36.544777, 44.153435, 44.129967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454094, 44.443333, 43.328396>,  <35.944798, 44.367344, 43.839680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454094, 44.443333, 43.328396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701401, 44.248993, 43.575520>,  <36.849785, 44.132389, 43.723793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701401, 44.248993, 43.575520>,  <36.454094, 44.443333, 43.328396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701401, 44.248993, 43.575520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601313, -0.213784, -0.769883,
		0.506126, 0.847494, 0.159971,
		0.618271, -0.485851, 0.617810,
		36.886883, 44.103237, 43.760864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161125, 44.626518, 43.332920>,  <36.454094, 44.443333, 43.328396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161125, 44.626518, 43.332920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166595, 44.244812, 43.452377>,  <37.169876, 44.015789, 43.524052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166595, 44.244812, 43.452377>,  <37.161125, 44.626518, 43.332920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166595, 44.244812, 43.452377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473932, -0.256809, -0.842281,
		0.880455, 0.153053, 0.448746,
		0.013672, -0.954266, 0.298646,
		37.170696, 43.958530, 43.541969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818558, 44.359035, 43.188477>,  <37.161125, 44.626518, 43.332920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818558, 44.359035, 43.188477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574291, 44.044952, 43.229530>,  <37.427731, 43.856503, 43.254162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574291, 44.044952, 43.229530>,  <37.818558, 44.359035, 43.188477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574291, 44.044952, 43.229530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387798, -0.409525, -0.825774,
		0.690436, -0.464470, 0.554586,
		-0.610664, -0.785211, 0.102630,
		37.391090, 43.809387, 43.260319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125843, 43.880863, 42.801613>,  <37.818558, 44.359035, 43.188477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125843, 43.880863, 42.801613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763508, 43.716911, 42.844437>,  <37.546108, 43.618542, 42.870132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763508, 43.716911, 42.844437>,  <38.125843, 43.880863, 42.801613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763508, 43.716911, 42.844437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088805, -0.430834, -0.898051,
		0.414218, -0.803978, 0.426664,
		-0.905835, -0.409879, 0.107062,
		37.491756, 43.593948, 42.876556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210320, 43.268417, 42.433094>,  <38.125843, 43.880863, 42.801613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210320, 43.268417, 42.433094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.813946, 43.312389, 42.463974>,  <37.576122, 43.338772, 42.482502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.813946, 43.312389, 42.463974>,  <38.210320, 43.268417, 42.433094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813946, 43.312389, 42.463974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121897, -0.494463, -0.860609,
		-0.056431, -0.862219, 0.503382,
		-0.990937, 0.109925, 0.077199,
		37.516666, 43.345367, 42.487133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898384, 42.631409, 42.341839>,  <38.210320, 43.268417, 42.433094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898384, 42.631409, 42.341839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.607430, 42.880692, 42.226936>,  <37.432858, 43.030262, 42.157993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.607430, 42.880692, 42.226936>,  <37.898384, 42.631409, 42.341839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607430, 42.880692, 42.226936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208694, -0.599670, -0.772556,
		-0.653727, -0.501997, 0.566252,
		-0.727385, 0.623213, -0.287257,
		37.389214, 43.067654, 42.140759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257641, 42.198631, 42.209538>,  <37.898384, 42.631409, 42.341839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257641, 42.198631, 42.209538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.171581, 42.546303, 42.031441>,  <37.119946, 42.754906, 41.924583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.171581, 42.546303, 42.031441>,  <37.257641, 42.198631, 42.209538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171581, 42.546303, 42.031441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322603, -0.493577, -0.807657,
		-0.921759, -0.030130, 0.386592,
		-0.215147, 0.869180, -0.445239,
		37.107037, 42.807056, 41.897869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538136, 42.205547, 41.994781>,  <37.257641, 42.198631, 42.209538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538136, 42.205547, 41.994781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725258, 42.453461, 41.742744>,  <36.837532, 42.602207, 41.591522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725258, 42.453461, 41.742744>,  <36.538136, 42.205547, 41.994781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725258, 42.453461, 41.742744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238936, -0.597686, -0.765298,
		-0.850919, 0.508567, -0.131515,
		0.467811, 0.619783, -0.630097,
		36.865601, 42.639397, 41.553715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174793, 42.207638, 41.399242>,  <36.538136, 42.205547, 41.994781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174793, 42.207638, 41.399242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517262, 42.365990, 41.266426>,  <36.722744, 42.460999, 41.186737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517262, 42.365990, 41.266426>,  <36.174793, 42.207638, 41.399242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517262, 42.365990, 41.266426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004646, -0.636703, -0.771095,
		-0.516670, 0.661733, -0.543288,
		0.856172, 0.395878, -0.332039,
		36.774113, 42.484753, 41.166813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598572, 42.721760, 41.238541>,  <36.174793, 42.207638, 41.399242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598572, 42.721760, 41.238541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367146, 42.876045, 40.951073>,  <35.228291, 42.968616, 40.778591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367146, 42.876045, 40.951073>,  <35.598572, 42.721760, 41.238541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367146, 42.876045, 40.951073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061090, 0.899133, 0.433391,
		0.813342, 0.206844, -0.543775,
		-0.578570, 0.385714, -0.718666,
		35.193573, 42.991760, 40.735474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959488, 43.363422, 40.996246>,  <35.598572, 42.721760, 41.238541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959488, 43.363422, 40.996246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563953, 43.374535, 40.937683>,  <35.326633, 43.381203, 40.902546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563953, 43.374535, 40.937683>,  <35.959488, 43.363422, 40.996246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563953, 43.374535, 40.937683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045526, 0.879201, 0.474271,
		0.141899, 0.475641, -0.868119,
		-0.988834, 0.027777, -0.146411,
		35.267303, 43.382866, 40.893761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890751, 44.002346, 40.961533>,  <35.959488, 43.363422, 40.996246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890751, 44.002346, 40.961533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520473, 43.888191, 41.060844>,  <35.298306, 43.819698, 41.120434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520473, 43.888191, 41.060844>,  <35.890751, 44.002346, 40.961533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520473, 43.888191, 41.060844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142048, 0.870580, 0.471075,
		-0.350588, 0.400804, -0.846430,
		-0.925694, -0.285388, 0.248282,
		35.242764, 43.802574, 41.135330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400967, 44.531826, 40.766617>,  <35.890751, 44.002346, 40.961533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400967, 44.531826, 40.766617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210739, 44.311016, 41.040585>,  <35.096603, 44.178532, 41.204964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210739, 44.311016, 41.040585>,  <35.400967, 44.531826, 40.766617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210739, 44.311016, 41.040585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339700, 0.833444, 0.435861,
		-0.811445, -0.025386, -0.583878,
		-0.475565, -0.552020, 0.684917,
		35.068069, 44.145409, 41.246059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796638, 44.929771, 41.006313>,  <35.400967, 44.531826, 40.766617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796638, 44.929771, 41.006313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794930, 44.624626, 41.264931>,  <34.793903, 44.441536, 41.420101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794930, 44.624626, 41.264931>,  <34.796638, 44.929771, 41.006313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794930, 44.624626, 41.264931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504627, 0.559831, 0.657222,
		-0.863327, -0.323453, -0.387356,
		-0.004273, -0.762868, 0.646540,
		34.793648, 44.395767, 41.458893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157768, 44.885899, 41.134956>,  <34.796638, 44.929771, 41.006313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157768, 44.885899, 41.134956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358059, 44.722828, 41.440395>,  <34.478233, 44.624985, 41.623657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358059, 44.722828, 41.440395>,  <34.157768, 44.885899, 41.134956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358059, 44.722828, 41.440395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516404, 0.567281, 0.641498,
		-0.694695, -0.715536, 0.073526,
		0.500725, -0.407676, 0.763593,
		34.508278, 44.600525, 41.669472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649628, 44.668461, 41.818665>,  <34.157768, 44.885899, 41.134956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649628, 44.668461, 41.818665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030060, 44.711304, 41.934574>,  <34.258320, 44.737011, 42.004120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030060, 44.711304, 41.934574>,  <33.649628, 44.668461, 41.818665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030060, 44.711304, 41.934574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300240, 0.541396, 0.785332,
		-0.072766, -0.833918, 0.547071,
		0.951084, 0.107107, 0.289770,
		34.315384, 44.743435, 42.021503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468273, 44.092983, 42.426121>,  <33.649628, 44.668461, 41.818665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468273, 44.092983, 42.426121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.204498, 43.866940, 42.624432>,  <33.046234, 43.731312, 42.743420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.204498, 43.866940, 42.624432>,  <33.468273, 44.092983, 42.426121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204498, 43.866940, 42.624432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077268, -0.605048, -0.792431,
		0.747780, -0.560865, 0.355325,
		-0.659435, -0.565109, 0.495780,
		33.006668, 43.697407, 42.773167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651432, 43.392315, 42.355984>,  <33.468273, 44.092983, 42.426121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651432, 43.392315, 42.355984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265827, 43.374428, 42.460819>,  <33.034466, 43.363697, 42.523720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265827, 43.374428, 42.460819>,  <33.651432, 43.392315, 42.355984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265827, 43.374428, 42.460819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184974, -0.595279, -0.781939,
		0.190977, -0.802274, 0.565582,
		-0.964008, -0.044714, 0.262085,
		32.976624, 43.361015, 42.539444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432266, 42.703827, 42.403824>,  <33.651432, 43.392315, 42.355984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432266, 42.703827, 42.403824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076847, 42.882263, 42.360966>,  <32.863594, 42.989326, 42.335251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076847, 42.882263, 42.360966>,  <33.432266, 42.703827, 42.403824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076847, 42.882263, 42.360966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300035, -0.741700, -0.599884,
		-0.347072, -0.500881, 0.792881,
		-0.888550, 0.446095, -0.107142,
		32.810284, 43.016090, 42.328823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841213, 42.148052, 42.500874>,  <33.432266, 42.703827, 42.403824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841213, 42.148052, 42.500874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721855, 42.452785, 42.270893>,  <32.650238, 42.635628, 42.132904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721855, 42.452785, 42.270893>,  <32.841213, 42.148052, 42.500874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721855, 42.452785, 42.270893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449592, -0.643570, -0.619423,
		-0.841918, 0.073659, 0.534554,
		-0.298397, 0.761835, -0.574950,
		32.632336, 42.681335, 42.098408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226173, 42.010590, 42.398369>,  <32.841213, 42.148052, 42.500874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226173, 42.010590, 42.398369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.269932, 42.279907, 42.105873>,  <32.296188, 42.441498, 41.930378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.269932, 42.279907, 42.105873>,  <32.226173, 42.010590, 42.398369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269932, 42.279907, 42.105873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616646, -0.531008, -0.581187,
		-0.779602, 0.514493, 0.357095,
		0.109397, 0.673296, -0.731235,
		32.302750, 42.481895, 41.886501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587650, 42.184681, 42.054947>,  <32.226173, 42.010590, 42.398369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587650, 42.184681, 42.054947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834269, 42.314289, 41.767925>,  <31.982241, 42.392056, 41.595715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834269, 42.314289, 41.767925>,  <31.587650, 42.184681, 42.054947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834269, 42.314289, 41.767925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330098, -0.721027, -0.609226,
		-0.714777, 0.612478, -0.337587,
		0.616547, 0.324023, -0.717551,
		32.019234, 42.411495, 41.552658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225023, 42.165413, 41.430870>,  <31.587650, 42.184681, 42.054947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225023, 42.165413, 41.430870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.608479, 42.147839, 41.318382>,  <31.838551, 42.137295, 41.250889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.608479, 42.147839, 41.318382>,  <31.225023, 42.165413, 41.430870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608479, 42.147839, 41.318382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212988, -0.766152, -0.606339,
		-0.188821, 0.641156, -0.743818,
		0.958636, -0.043934, -0.281224,
		31.896069, 42.134659, 41.234016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.644291, 40.736088, 47.682575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.889198, 40.866634, 47.394516>,  <36.036144, 40.944962, 47.221680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.889198, 40.866634, 47.394516>,  <35.644291, 40.736088, 47.682575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889198, 40.866634, 47.394516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098274, -0.872352, -0.478900,
		-0.784515, 0.363989, -0.502044,
		0.612273, 0.326366, -0.720143,
		36.072880, 40.964542, 47.178474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429272, 40.313194, 47.066914>,  <35.644291, 40.736088, 47.682575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429272, 40.313194, 47.066914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790901, 40.451630, 46.966618>,  <36.007877, 40.534691, 46.906441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790901, 40.451630, 46.966618>,  <35.429272, 40.313194, 47.066914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790901, 40.451630, 46.966618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089444, -0.726932, -0.680860,
		-0.417913, 0.593119, -0.688156,
		0.904073, 0.346092, -0.250743,
		36.062122, 40.555458, 46.891396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403343, 40.472351, 46.321789>,  <35.429272, 40.313194, 47.066914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403343, 40.472351, 46.321789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.785316, 40.410259, 46.422985>,  <36.014500, 40.373005, 46.483704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.785316, 40.410259, 46.422985>,  <35.403343, 40.472351, 46.321789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785316, 40.410259, 46.422985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062257, -0.728638, -0.682063,
		0.290217, 0.667076, -0.686137,
		0.954933, -0.155230, 0.252994,
		36.071796, 40.363689, 46.498882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758362, 40.264008, 45.727913>,  <35.403343, 40.472351, 46.321789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758362, 40.264008, 45.727913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025051, 40.145279, 46.001373>,  <36.185066, 40.074043, 46.165451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025051, 40.145279, 46.001373>,  <35.758362, 40.264008, 45.727913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025051, 40.145279, 46.001373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303844, -0.729343, -0.612974,
		0.680558, 0.616407, -0.396083,
		0.666723, -0.296817, 0.683653,
		36.225067, 40.056232, 46.206470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466301, 40.129108, 45.335735>,  <35.758362, 40.264008, 45.727913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466301, 40.129108, 45.335735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536427, 39.947090, 45.684952>,  <36.578503, 39.837879, 45.894482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536427, 39.947090, 45.684952>,  <36.466301, 40.129108, 45.335735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536427, 39.947090, 45.684952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263531, -0.832725, -0.486949,
		0.948587, 0.315442, -0.026069,
		0.175312, -0.455044, 0.873041,
		36.589020, 39.810577, 45.946865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065102, 39.644592, 45.175709>,  <36.466301, 40.129108, 45.335735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065102, 39.644592, 45.175709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.915638, 39.493473, 45.514565>,  <36.825958, 39.402802, 45.717880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.915638, 39.493473, 45.514565>,  <37.065102, 39.644592, 45.175709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915638, 39.493473, 45.514565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026967, -0.917335, -0.397202,
		0.927173, -0.125574, 0.352960,
		-0.373661, -0.377793, 0.847142,
		36.803539, 39.380135, 45.768707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634026, 39.189865, 45.418861>,  <37.065102, 39.644592, 45.175709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634026, 39.189865, 45.418861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.274235, 39.094013, 45.565025>,  <37.058361, 39.036503, 45.652725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.274235, 39.094013, 45.565025>,  <37.634026, 39.189865, 45.418861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274235, 39.094013, 45.565025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091849, -0.921224, -0.378034,
		0.427214, -0.306469, 0.850626,
		-0.899473, -0.239630, 0.365411,
		37.004395, 39.022125, 45.674648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635651, 38.407536, 45.603363>,  <37.634026, 39.189865, 45.418861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635651, 38.407536, 45.603363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.243763, 38.483906, 45.579029>,  <37.008629, 38.529728, 45.564430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.243763, 38.483906, 45.579029>,  <37.635651, 38.407536, 45.603363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243763, 38.483906, 45.579029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130155, -0.837157, -0.531252,
		-0.152352, -0.512560, 0.845028,
		-0.979719, 0.190922, -0.060831,
		36.949848, 38.541183, 45.560780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285233, 37.799000, 45.830036>,  <37.635651, 38.407536, 45.603363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285233, 37.799000, 45.830036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.029758, 38.020611, 45.616444>,  <36.876472, 38.153576, 45.488289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.029758, 38.020611, 45.616444>,  <37.285233, 37.799000, 45.830036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029758, 38.020611, 45.616444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332049, -0.824467, -0.458256,
		-0.694133, -0.115375, 0.710541,
		-0.638688, 0.554025, -0.533979,
		36.838154, 38.186817, 45.456249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811176, 37.333160, 45.732586>,  <37.285233, 37.799000, 45.830036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811176, 37.333160, 45.732586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.713692, 37.607964, 45.458759>,  <36.655201, 37.772846, 45.294464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.713692, 37.607964, 45.458759>,  <36.811176, 37.333160, 45.732586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713692, 37.607964, 45.458759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270738, -0.725981, -0.632181,
		-0.931294, 0.031272, 0.362924,
		-0.243706, 0.687003, -0.684568,
		36.640579, 37.814064, 45.253387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154579, 37.103542, 45.579113>,  <36.811176, 37.333160, 45.732586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154579, 37.103542, 45.579113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.268318, 37.343811, 45.280224>,  <36.336563, 37.487972, 45.100891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.268318, 37.343811, 45.280224>,  <36.154579, 37.103542, 45.579113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268318, 37.343811, 45.280224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377871, -0.646087, -0.663163,
		-0.881113, 0.470923, 0.043262,
		0.284348, 0.600669, -0.747223,
		36.353622, 37.524014, 45.056057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601372, 37.200665, 45.066586>,  <36.154579, 37.103542, 45.579113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601372, 37.200665, 45.066586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947823, 37.290989, 44.888222>,  <36.155693, 37.345184, 44.781204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947823, 37.290989, 44.888222>,  <35.601372, 37.200665, 45.066586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947823, 37.290989, 44.888222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274298, -0.531053, -0.801713,
		-0.417837, 0.816696, -0.398020,
		0.866126, 0.225809, -0.445911,
		36.207661, 37.358730, 44.754448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137325, 37.740643, 44.762192>,  <35.601372, 37.200665, 45.066586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137325, 37.740643, 44.762192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740917, 37.713856, 44.715904>,  <34.503071, 37.697784, 44.688129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740917, 37.713856, 44.715904>,  <35.137325, 37.740643, 44.762192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740917, 37.713856, 44.715904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097895, 0.952935, 0.286936,
		0.091062, 0.295688, -0.950934,
		-0.991022, -0.066962, -0.115722,
		34.443611, 37.693768, 44.681187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933758, 38.307453, 44.377384>,  <35.137325, 37.740643, 44.762192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933758, 38.307453, 44.377384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.581924, 38.187626, 44.525215>,  <34.370823, 38.115730, 44.613914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.581924, 38.187626, 44.525215>,  <34.933758, 38.307453, 44.377384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581924, 38.187626, 44.525215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197149, 0.936529, 0.289907,
		-0.432970, 0.182135, -0.882816,
		-0.879585, -0.299567, 0.369582,
		34.318050, 38.097755, 44.636089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503384, 38.681160, 44.072472>,  <34.933758, 38.307453, 44.377384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503384, 38.681160, 44.072472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.288544, 38.586887, 44.396439>,  <34.159637, 38.530323, 44.590820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.288544, 38.586887, 44.396439>,  <34.503384, 38.681160, 44.072472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288544, 38.586887, 44.396439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232002, 0.964417, 0.126789,
		-0.810984, -0.119804, -0.572671,
		-0.537104, -0.235685, 0.809921,
		34.127411, 38.516182, 44.639416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897240, 38.986366, 43.969448>,  <34.503384, 38.681160, 44.072472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897240, 38.986366, 43.969448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934433, 38.947155, 44.365780>,  <33.956749, 38.923630, 44.603580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934433, 38.947155, 44.365780>,  <33.897240, 38.986366, 43.969448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934433, 38.947155, 44.365780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211711, 0.970439, 0.115876,
		-0.972899, -0.220544, 0.069478,
		0.092980, -0.098027, 0.990831,
		33.962326, 38.917747, 44.663029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455688, 39.479778, 44.132282>,  <33.897240, 38.986366, 43.969448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455688, 39.479778, 44.132282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.662399, 39.394367, 44.463909>,  <33.786427, 39.343121, 44.662884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.662399, 39.394367, 44.463909>,  <33.455688, 39.479778, 44.132282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662399, 39.394367, 44.463909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142500, 0.933434, 0.329234,
		-0.844176, -0.288283, 0.451951,
		0.516779, -0.213528, 0.829062,
		33.817432, 39.330307, 44.712627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105354, 39.741745, 44.794033>,  <33.455688, 39.479778, 44.132282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105354, 39.741745, 44.794033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.490318, 39.742603, 44.902672>,  <33.721298, 39.743118, 44.967854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.490318, 39.742603, 44.902672>,  <33.105354, 39.741745, 44.794033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490318, 39.742603, 44.902672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131318, 0.879004, 0.458375,
		-0.237750, -0.476809, 0.846243,
		0.962409, 0.002148, 0.271597,
		33.779041, 39.743248, 44.984150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212753, 40.043224, 45.439190>,  <33.105354, 39.741745, 44.794033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212753, 40.043224, 45.439190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603508, 40.029358, 45.354813>,  <33.837959, 40.021038, 45.304188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603508, 40.029358, 45.354813>,  <33.212753, 40.043224, 45.439190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603508, 40.029358, 45.354813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124094, 0.895435, 0.427547,
		0.174067, -0.443841, 0.879037,
		0.976883, -0.034662, -0.210944,
		33.896572, 40.018959, 45.291531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628559, 40.046268, 46.019768>,  <33.212753, 40.043224, 45.439190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628559, 40.046268, 46.019768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.848866, 40.189072, 45.717983>,  <33.981049, 40.274754, 45.536915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.848866, 40.189072, 45.717983>,  <33.628559, 40.046268, 46.019768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848866, 40.189072, 45.717983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138167, 0.852442, 0.504234,
		0.823146, -0.381955, 0.420168,
		0.550763, 0.357005, -0.754458,
		34.014095, 40.296173, 45.491646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101608, 40.522976, 46.395157>,  <33.628559, 40.046268, 46.019768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101608, 40.522976, 46.395157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146931, 40.594246, 46.004177>,  <34.174122, 40.637009, 45.769588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146931, 40.594246, 46.004177>,  <34.101608, 40.522976, 46.395157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146931, 40.594246, 46.004177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228217, 0.952817, 0.200141,
		0.966995, -0.245747, 0.067292,
		0.113301, 0.178178, -0.977454,
		34.180920, 40.647697, 45.710941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766605, 40.850819, 46.364681>,  <34.101608, 40.522976, 46.395157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766605, 40.850819, 46.364681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.522709, 40.962547, 46.067982>,  <34.376373, 41.029583, 45.889961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.522709, 40.962547, 46.067982>,  <34.766605, 40.850819, 46.364681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522709, 40.962547, 46.067982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085253, 0.953528, 0.288991,
		0.788004, 0.112972, -0.605217,
		-0.609739, 0.279322, -0.741753,
		34.339787, 41.046345, 45.845455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146046, 41.349998, 46.048203>,  <34.766605, 40.850819, 46.364681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146046, 41.349998, 46.048203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765610, 41.400539, 45.935444>,  <34.537350, 41.430866, 45.867790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765610, 41.400539, 45.935444>,  <35.146046, 41.349998, 46.048203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765610, 41.400539, 45.935444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082308, 0.983187, 0.162999,
		0.297748, 0.131825, -0.945499,
		-0.951090, 0.126355, -0.281892,
		34.480282, 41.438446, 45.850876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169949, 41.931404, 45.646656>,  <35.146046, 41.349998, 46.048203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169949, 41.931404, 45.646656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797054, 41.889977, 45.785336>,  <34.573318, 41.865120, 45.868546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797054, 41.889977, 45.785336>,  <35.169949, 41.931404, 45.646656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797054, 41.889977, 45.785336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122457, 0.991926, -0.032962,
		-0.340490, -0.073185, -0.937396,
		-0.932240, -0.103567, 0.346702,
		34.517384, 41.858906, 45.889347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773178, 42.414265, 45.352085>,  <35.169949, 41.931404, 45.646656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773178, 42.414265, 45.352085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534615, 42.331726, 45.662369>,  <34.391476, 42.282204, 45.848537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534615, 42.331726, 45.662369>,  <34.773178, 42.414265, 45.352085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534615, 42.331726, 45.662369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269021, 0.961885, 0.049033,
		-0.756260, -0.179438, -0.629184,
		-0.596405, -0.206345, 0.775708,
		34.355694, 42.269821, 45.895081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989647, 42.654766, 45.280159>,  <34.773178, 42.414265, 45.352085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989647, 42.654766, 45.280159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.126228, 42.662621, 45.656036>,  <34.208176, 42.667332, 45.881561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.126228, 42.662621, 45.656036>,  <33.989647, 42.654766, 45.280159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126228, 42.662621, 45.656036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299102, 0.950077, 0.088833,
		-0.891038, -0.311396, 0.330279,
		0.341453, 0.019633, 0.939694,
		34.228664, 42.668510, 45.937946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332470, 42.751747, 45.557728>,  <33.989647, 42.654766, 45.280159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332470, 42.751747, 45.557728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124256, 43.090206, 45.603489>,  <32.999329, 43.293282, 45.630947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124256, 43.090206, 45.603489>,  <33.332470, 42.751747, 45.557728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124256, 43.090206, 45.603489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210586, 0.002629, -0.977572,
		-0.827466, -0.532949, 0.176817,
		-0.520532, 0.846143, 0.114407,
		32.968098, 43.344048, 45.637810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605827, 42.730804, 45.246189>,  <33.332470, 42.751747, 45.557728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605827, 42.730804, 45.246189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.712013, 43.116165, 45.261074>,  <32.775726, 43.347382, 45.270004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.712013, 43.116165, 45.261074>,  <32.605827, 42.730804, 45.246189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712013, 43.116165, 45.261074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040865, 0.049805, -0.997923,
		-0.963254, 0.263392, 0.052590,
		0.265464, 0.963402, 0.037211,
		32.791653, 43.405186, 45.272236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165291, 43.055191, 44.794113>,  <32.605827, 42.730804, 45.246189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165291, 43.055191, 44.794113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.494362, 43.276447, 44.846622>,  <32.691807, 43.409203, 44.878128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.494362, 43.276447, 44.846622>,  <32.165291, 43.055191, 44.794113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494362, 43.276447, 44.846622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046615, 0.164497, -0.985276,
		-0.566590, 0.816686, 0.109544,
		0.822680, 0.553141, 0.131272,
		32.741165, 43.442390, 44.886005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028206, 43.637585, 44.401310>,  <32.165291, 43.055191, 44.794113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028206, 43.637585, 44.401310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.425732, 43.632435, 44.445419>,  <32.664249, 43.629345, 44.471886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.425732, 43.632435, 44.445419>,  <32.028206, 43.637585, 44.401310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425732, 43.632435, 44.445419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110902, 0.161536, -0.980615,
		-0.005186, 0.986783, 0.161966,
		0.993818, -0.012877, 0.110274,
		32.723877, 43.628571, 44.478500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197502, 44.302891, 44.192657>,  <32.028206, 43.637585, 44.401310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197502, 44.302891, 44.192657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510288, 44.054016, 44.177586>,  <32.697960, 43.904694, 44.168541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510288, 44.054016, 44.177586>,  <32.197502, 44.302891, 44.192657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510288, 44.054016, 44.177586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062630, -0.018277, -0.997870,
		0.620169, 0.782658, -0.053260,
		0.781964, -0.622184, -0.037683,
		32.744877, 43.867359, 44.166279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671982, 44.605228, 43.659580>,  <32.197502, 44.302891, 44.192657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671982, 44.605228, 43.659580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752262, 44.216000, 43.704922>,  <32.800430, 43.982464, 43.732128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752262, 44.216000, 43.704922>,  <32.671982, 44.605228, 43.659580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752262, 44.216000, 43.704922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018399, -0.119434, -0.992671,
		0.979480, 0.197141, -0.041874,
		0.200698, -0.973073, 0.113356,
		32.812473, 43.924076, 43.738930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984020, 44.530216, 43.047474>,  <32.671982, 44.605228, 43.659580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984020, 44.530216, 43.047474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.895321, 44.161129, 43.173592>,  <32.842102, 43.939674, 43.249264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.895321, 44.161129, 43.173592>,  <32.984020, 44.530216, 43.047474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895321, 44.161129, 43.173592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005111, -0.324442, -0.945892,
		0.975089, -0.208143, 0.076662,
		-0.221753, -0.922721, 0.315296,
		32.828796, 43.884312, 43.268181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647869, 44.714153, 42.713215>,  <32.984020, 44.530216, 43.047474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647869, 44.714153, 42.713215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.004963, 44.821011, 42.568077>,  <34.219219, 44.885124, 42.480995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.004963, 44.821011, 42.568077>,  <33.647869, 44.714153, 42.713215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004963, 44.821011, 42.568077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047019, 0.745655, 0.664671,
		0.448119, -0.610437, 0.653113,
		0.892737, 0.267143, -0.362845,
		34.272785, 44.901154, 42.459225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039700, 44.733734, 43.272968>,  <33.647869, 44.714153, 42.713215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039700, 44.733734, 43.272968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.191601, 44.979263, 42.996128>,  <34.282742, 45.126579, 42.830025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.191601, 44.979263, 42.996128>,  <34.039700, 44.733734, 43.272968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191601, 44.979263, 42.996128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073711, 0.725695, 0.684056,
		0.922145, -0.310790, 0.230342,
		0.379756, 0.613821, -0.692105,
		34.305527, 45.163410, 42.788498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439178, 45.030842, 43.629345>,  <34.039700, 44.733734, 43.272968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439178, 45.030842, 43.629345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.385242, 45.288773, 43.328411>,  <34.352879, 45.443531, 43.147850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.385242, 45.288773, 43.328411>,  <34.439178, 45.030842, 43.629345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385242, 45.288773, 43.328411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078076, 0.763826, 0.640682,
		0.987786, 0.027652, -0.153343,
		-0.134844, 0.644829, -0.752338,
		34.344788, 45.482220, 43.102711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920799, 45.536804, 43.770927>,  <34.439178, 45.030842, 43.629345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920799, 45.536804, 43.770927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.680191, 45.737839, 43.522549>,  <34.535828, 45.858459, 43.373520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.680191, 45.737839, 43.522549>,  <34.920799, 45.536804, 43.770927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680191, 45.737839, 43.522549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138819, 0.831234, 0.538311,
		0.786702, 0.237607, -0.569774,
		-0.601522, 0.502586, -0.620950,
		34.499733, 45.888615, 43.336266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347775, 46.188328, 43.536232>,  <34.920799, 45.536804, 43.770927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347775, 46.188328, 43.536232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965504, 46.267521, 43.449074>,  <34.736141, 46.315037, 43.396778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965504, 46.267521, 43.449074>,  <35.347775, 46.188328, 43.536232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965504, 46.267521, 43.449074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072712, 0.875916, 0.476953,
		0.285284, 0.439972, -0.851492,
		-0.955681, 0.197980, -0.217894,
		34.678799, 46.326916, 43.383705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340118, 46.875561, 43.215439>,  <35.347775, 46.188328, 43.536232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340118, 46.875561, 43.215439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978554, 46.795494, 43.366631>,  <34.761616, 46.747456, 43.457348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978554, 46.795494, 43.366631>,  <35.340118, 46.875561, 43.215439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978554, 46.795494, 43.366631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084150, 0.783236, 0.616003,
		-0.419351, 0.588622, -0.691136,
		-0.903916, -0.200163, 0.377983,
		34.707378, 46.735447, 43.480026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085102, 47.514744, 43.484707>,  <35.340118, 46.875561, 43.215439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085102, 47.514744, 43.484707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797428, 47.289284, 43.647217>,  <34.624825, 47.154007, 43.744724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797428, 47.289284, 43.647217>,  <35.085102, 47.514744, 43.484707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797428, 47.289284, 43.647217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053726, 0.628091, 0.776283,
		-0.692735, 0.536466, -0.481998,
		-0.719188, -0.563654, 0.406279,
		34.581673, 47.120186, 43.769100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436325, 47.925919, 43.598221>,  <35.085102, 47.514744, 43.484707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436325, 47.925919, 43.598221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.471710, 47.627441, 43.862152>,  <34.492939, 47.448353, 44.020512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.471710, 47.627441, 43.862152>,  <34.436325, 47.925919, 43.598221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471710, 47.627441, 43.862152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013142, 0.661488, 0.749840,
		-0.995993, -0.075002, 0.048708,
		0.088460, -0.746195, 0.659824,
		34.498249, 47.403584, 44.060101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078548, 48.201462, 44.138134>,  <34.436325, 47.925919, 43.598221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078548, 48.201462, 44.138134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.279018, 47.912487, 44.328674>,  <34.399300, 47.739101, 44.442997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.279018, 47.912487, 44.328674>,  <34.078548, 48.201462, 44.138134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279018, 47.912487, 44.328674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230860, 0.642143, 0.730997,
		-0.833985, -0.256384, 0.488606,
		0.501171, -0.722440, 0.476349,
		34.429371, 47.695755, 44.471581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.169685, 34.560383, 35.249428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456425, 34.500233, 35.521755>,  <35.628468, 34.464142, 35.685150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456425, 34.500233, 35.521755>,  <35.169685, 34.560383, 35.249428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456425, 34.500233, 35.521755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500705, 0.568492, 0.652772,
		-0.485202, -0.808828, 0.332229,
		0.716850, -0.150378, 0.680818,
		35.671478, 34.455120, 35.726002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884518, 34.393055, 35.903175>,  <35.169685, 34.560383, 35.249428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884518, 34.393055, 35.903175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243565, 34.559258, 35.962006>,  <35.458992, 34.658978, 35.997303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243565, 34.559258, 35.962006>,  <34.884518, 34.393055, 35.903175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243565, 34.559258, 35.962006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396648, 0.615965, 0.680630,
		0.192214, -0.669284, 0.717714,
		0.897622, 0.415506, 0.147073,
		35.512852, 34.683910, 36.006126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843246, 34.523392, 36.652916>,  <34.884518, 34.393055, 35.903175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843246, 34.523392, 36.652916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141422, 34.754128, 36.519306>,  <35.320328, 34.892570, 36.439140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141422, 34.754128, 36.519306>,  <34.843246, 34.523392, 36.652916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141422, 34.754128, 36.519306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324434, 0.751725, 0.574153,
		0.582285, -0.319631, 0.747515,
		0.745444, 0.576841, -0.334020,
		35.365055, 34.927181, 36.419102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111118, 34.747200, 37.280525>,  <34.843246, 34.523392, 36.652916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111118, 34.747200, 37.280525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245018, 34.987488, 36.990128>,  <35.325359, 35.131660, 36.815887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245018, 34.987488, 36.990128>,  <35.111118, 34.747200, 37.280525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245018, 34.987488, 36.990128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135081, 0.793082, 0.593948,
		0.932575, -0.100755, 0.346630,
		0.334749, 0.600724, -0.725998,
		35.345444, 35.167706, 36.772327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480228, 35.276939, 37.673321>,  <35.111118, 34.747200, 37.280525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480228, 35.276939, 37.673321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411537, 35.416046, 37.304634>,  <35.370323, 35.499512, 37.083420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411537, 35.416046, 37.304634>,  <35.480228, 35.276939, 37.673321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411537, 35.416046, 37.304634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233994, 0.894445, 0.381071,
		0.956952, 0.281116, -0.072223,
		-0.171725, 0.347767, -0.921720,
		35.360020, 35.520374, 37.028118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850464, 35.974037, 37.639324>,  <35.480228, 35.276939, 37.673321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850464, 35.974037, 37.639324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573082, 35.969921, 37.351154>,  <35.406654, 35.967453, 37.178253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573082, 35.969921, 37.351154>,  <35.850464, 35.974037, 37.639324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573082, 35.969921, 37.351154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350673, 0.878297, 0.324998,
		0.629405, 0.478005, -0.612667,
		-0.693454, -0.010290, -0.720428,
		35.365047, 35.966835, 37.135025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931892, 36.586773, 37.305859>,  <35.850464, 35.974037, 37.639324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931892, 36.586773, 37.305859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557491, 36.488205, 37.205322>,  <35.332851, 36.429062, 37.145000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557491, 36.488205, 37.205322>,  <35.931892, 36.586773, 37.305859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557491, 36.488205, 37.205322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297254, 0.935807, 0.189485,
		0.188513, 0.252071, -0.949170,
		-0.936004, -0.246424, -0.251341,
		35.276691, 36.414276, 37.129921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710217, 37.170135, 36.824711>,  <35.931892, 36.586773, 37.305859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710217, 37.170135, 36.824711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391155, 36.983536, 36.977623>,  <35.199718, 36.871578, 37.069370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391155, 36.983536, 36.977623>,  <35.710217, 37.170135, 36.824711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391155, 36.983536, 36.977623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513724, 0.857579, -0.025411,
		-0.315980, -0.216655, -0.923697,
		-0.797649, -0.466496, 0.382279,
		35.151859, 36.843586, 37.092308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200218, 37.492226, 36.482704>,  <35.710217, 37.170135, 36.824711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200218, 37.492226, 36.482704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044235, 37.314342, 36.805237>,  <34.950645, 37.207615, 36.998756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044235, 37.314342, 36.805237>,  <35.200218, 37.492226, 36.482704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044235, 37.314342, 36.805237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496901, 0.838844, 0.222327,
		-0.775259, -0.313971, -0.548084,
		-0.389953, -0.444705, 0.806334,
		34.927250, 37.180931, 37.047138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588150, 37.796074, 36.462448>,  <35.200218, 37.492226, 36.482704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588150, 37.796074, 36.462448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558266, 37.600822, 36.810276>,  <34.540337, 37.483669, 37.018970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558266, 37.600822, 36.810276>,  <34.588150, 37.796074, 36.462448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558266, 37.600822, 36.810276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382504, 0.819331, 0.427069,
		-0.920929, -0.300707, -0.247923,
		-0.074708, -0.488131, 0.869567,
		34.535854, 37.454384, 37.071148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836975, 37.925690, 36.692062>,  <34.588150, 37.796074, 36.462448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836975, 37.925690, 36.692062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092201, 37.844578, 36.989182>,  <34.245338, 37.795910, 37.167454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092201, 37.844578, 36.989182>,  <33.836975, 37.925690, 36.692062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092201, 37.844578, 36.989182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248042, 0.859139, 0.447611,
		-0.728936, -0.469851, 0.497888,
		0.638066, -0.202783, 0.742800,
		34.283623, 37.783745, 37.212021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497986, 38.176365, 37.202362>,  <33.836975, 37.925690, 36.692062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497986, 38.176365, 37.202362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874611, 38.148094, 37.334099>,  <34.100586, 38.131130, 37.413139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874611, 38.148094, 37.334099>,  <33.497986, 38.176365, 37.202362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874611, 38.148094, 37.334099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144128, 0.799178, 0.583559,
		-0.304447, -0.596924, 0.742289,
		0.941562, -0.070678, 0.329341,
		34.157078, 38.126892, 37.432899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017868, 37.682377, 37.390411>,  <33.497986, 38.176365, 37.202362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017868, 37.682377, 37.390411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625164, 37.662926, 37.463940>,  <32.389542, 37.651253, 37.508057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625164, 37.662926, 37.463940>,  <33.017868, 37.682377, 37.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625164, 37.662926, 37.463940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062124, -0.831648, -0.551817,
		0.179709, -0.553170, 0.813454,
		-0.981757, -0.048632, 0.183819,
		32.330639, 37.648335, 37.519085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898495, 37.020557, 37.523487>,  <33.017868, 37.682377, 37.390411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898495, 37.020557, 37.523487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518360, 37.134148, 37.472546>,  <32.290279, 37.202301, 37.441982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518360, 37.134148, 37.472546>,  <32.898495, 37.020557, 37.523487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518360, 37.134148, 37.472546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233643, -0.921300, -0.310834,
		-0.205601, -0.265641, 0.941893,
		-0.950336, 0.283974, -0.127355,
		32.233261, 37.219341, 37.434338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502487, 36.499790, 37.810665>,  <32.898495, 37.020557, 37.523487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502487, 36.499790, 37.810665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243046, 36.690228, 37.573128>,  <32.087379, 36.804489, 37.430607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243046, 36.690228, 37.573128>,  <32.502487, 36.499790, 37.810665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243046, 36.690228, 37.573128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376163, -0.878779, -0.293681,
		-0.661675, 0.032899, 0.749068,
		-0.648604, 0.476093, -0.593842,
		32.048466, 36.833054, 37.394974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851963, 36.236549, 37.926029>,  <32.502487, 36.499790, 37.810665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851963, 36.236549, 37.926029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846594, 36.391361, 37.557240>,  <31.843372, 36.484249, 37.335968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846594, 36.391361, 37.557240>,  <31.851963, 36.236549, 37.926029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846594, 36.391361, 37.557240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467559, -0.817469, -0.336353,
		-0.883860, 0.426561, 0.191932,
		-0.013423, 0.387028, -0.921970,
		31.842567, 36.507469, 37.280647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188717, 35.939251, 37.627228>,  <31.851963, 36.236549, 37.926029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188717, 35.939251, 37.627228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416492, 36.071491, 37.326180>,  <31.553158, 36.150833, 37.145550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416492, 36.071491, 37.326180>,  <31.188717, 35.939251, 37.627228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416492, 36.071491, 37.326180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304025, -0.765947, -0.566476,
		-0.763746, 0.551391, -0.335650,
		0.569440, 0.330597, -0.752625,
		31.587324, 36.170670, 37.100391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696226, 35.988487, 37.136280>,  <31.188717, 35.939251, 37.627228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696226, 35.988487, 37.136280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040623, 35.977528, 36.933128>,  <31.247261, 35.970951, 36.811237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040623, 35.977528, 36.933128>,  <30.696226, 35.988487, 37.136280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040623, 35.977528, 36.933128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377029, -0.704608, -0.601146,
		-0.341383, 0.709067, -0.616994,
		0.860992, -0.027403, -0.507880,
		31.298920, 35.969307, 36.780766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486958, 35.695465, 36.530834>,  <30.696226, 35.988487, 37.136280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486958, 35.695465, 36.530834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883791, 35.650131, 36.509205>,  <31.121891, 35.622932, 36.496227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883791, 35.650131, 36.509205>,  <30.486958, 35.695465, 36.530834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883791, 35.650131, 36.509205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114193, -0.635170, -0.763884,
		0.052229, 0.764012, -0.643084,
		0.992085, -0.113333, -0.054071,
		31.181416, 35.616131, 36.492985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745222, 35.793831, 35.777924>,  <30.486958, 35.695465, 36.530834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745222, 35.793831, 35.777924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999247, 35.577396, 35.998440>,  <31.151661, 35.447536, 36.130749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999247, 35.577396, 35.998440>,  <30.745222, 35.793831, 35.777924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999247, 35.577396, 35.998440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055239, -0.743662, -0.666270,
		0.770486, 0.392668, -0.502159,
		0.635059, -0.541090, 0.551291,
		31.189764, 35.415070, 36.163826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881838, 35.410835, 35.228268>,  <30.745222, 35.793831, 35.777924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881838, 35.410835, 35.228268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059698, 35.235291, 35.540596>,  <31.166414, 35.129963, 35.727993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059698, 35.235291, 35.540596>,  <30.881838, 35.410835, 35.228268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059698, 35.235291, 35.540596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097801, -0.890320, -0.444709,
		0.890350, 0.121373, -0.438801,
		0.444648, -0.438862, 0.780825,
		31.193092, 35.103634, 35.774845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325737, 34.811897, 35.012970>,  <30.881838, 35.410835, 35.228268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325737, 34.811897, 35.012970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221207, 34.737839, 35.391899>,  <31.158489, 34.693401, 35.619259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221207, 34.737839, 35.391899>,  <31.325737, 34.811897, 35.012970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221207, 34.737839, 35.391899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187918, -0.952894, -0.238077,
		0.946782, -0.240235, 0.214221,
		-0.261324, -0.185151, 0.947327,
		31.142809, 34.682293, 35.676098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671850, 34.235336, 35.108532>,  <31.325737, 34.811897, 35.012970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671850, 34.235336, 35.108532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365040, 34.268578, 35.363014>,  <31.180954, 34.288521, 35.515705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365040, 34.268578, 35.363014>,  <31.671850, 34.235336, 35.108532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365040, 34.268578, 35.363014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237113, -0.958095, -0.160721,
		0.596192, -0.274131, 0.754590,
		-0.767028, 0.083102, 0.636209,
		31.134932, 34.293507, 35.553879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590528, 33.551891, 35.429417>,  <31.671850, 34.235336, 35.108532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590528, 33.551891, 35.429417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237177, 33.692719, 35.553154>,  <31.025166, 33.777214, 35.627396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237177, 33.692719, 35.553154>,  <31.590528, 33.551891, 35.429417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237177, 33.692719, 35.553154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393137, -0.915976, -0.080193,
		0.255118, -0.192454, 0.947563,
		-0.883379, 0.352063, 0.309343,
		30.972162, 33.798336, 35.645958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303467, 33.055828, 35.953426>,  <31.590528, 33.551891, 35.429417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303467, 33.055828, 35.953426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001348, 33.269306, 35.801270>,  <30.820078, 33.397392, 35.709976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001348, 33.269306, 35.801270>,  <31.303467, 33.055828, 35.953426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001348, 33.269306, 35.801270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448543, -0.844123, -0.293711,
		-0.477847, -0.051219, 0.876949,
		-0.755296, 0.533698, -0.380387,
		30.774759, 33.429417, 35.687153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602039, 32.933460, 36.157940>,  <31.303467, 33.055828, 35.953426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602039, 32.933460, 36.157940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608671, 33.058060, 35.777901>,  <30.612650, 33.132820, 35.549877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608671, 33.058060, 35.777901>,  <30.602039, 32.933460, 36.157940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608671, 33.058060, 35.777901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611919, -0.748335, -0.256027,
		-0.790747, 0.585631, 0.178204,
		0.016581, 0.311499, -0.950102,
		30.613646, 33.151508, 35.492870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808136, 32.170067, 36.230961>,  <30.602039, 32.933460, 36.157940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808136, 32.170067, 36.230961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747458, 31.825386, 36.424644>,  <30.711050, 31.618578, 36.540855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747458, 31.825386, 36.424644>,  <30.808136, 32.170067, 36.230961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747458, 31.825386, 36.424644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189703, 0.455394, 0.869844,
		-0.970052, 0.223807, 0.094386,
		-0.151695, -0.861700, 0.484213,
		30.701948, 31.566875, 36.569908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487326, 32.344482, 36.908421>,  <30.808136, 32.170067, 36.230961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487326, 32.344482, 36.908421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654249, 31.986023, 36.968773>,  <30.754404, 31.770947, 37.004986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654249, 31.986023, 36.968773>,  <30.487326, 32.344482, 36.908421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654249, 31.986023, 36.968773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314327, 0.298120, 0.901290,
		-0.852673, -0.328690, 0.406093,
		0.417309, -0.896151, 0.150883,
		30.779442, 31.717178, 37.014038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257841, 32.177788, 37.574318>,  <30.487326, 32.344482, 36.908421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257841, 32.177788, 37.574318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586468, 31.969513, 37.481438>,  <30.783644, 31.844549, 37.425709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586468, 31.969513, 37.481438>,  <30.257841, 32.177788, 37.574318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586468, 31.969513, 37.481438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469253, 0.386281, 0.794096,
		-0.323778, -0.761364, 0.561687,
		0.821565, -0.520685, -0.232203,
		30.832937, 31.813307, 37.411777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551161, 31.763800, 38.174675>,  <30.257841, 32.177788, 37.574318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551161, 31.763800, 38.174675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847107, 31.818979, 37.911289>,  <31.024673, 31.852087, 37.753258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847107, 31.818979, 37.911289>,  <30.551161, 31.763800, 38.174675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847107, 31.818979, 37.911289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649450, 0.108934, 0.752561,
		0.175546, -0.984430, -0.008996,
		0.739864, 0.137952, -0.658461,
		31.069067, 31.860365, 37.713753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104248, 31.363619, 38.316624>,  <30.551161, 31.763800, 38.174675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104248, 31.363619, 38.316624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295616, 31.632292, 38.090366>,  <31.410437, 31.793495, 37.954613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295616, 31.632292, 38.090366>,  <31.104248, 31.363619, 38.316624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295616, 31.632292, 38.090366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615549, 0.202879, 0.761538,
		0.626270, -0.712518, -0.316392,
		0.478420, 0.671682, -0.565647,
		31.439142, 31.833797, 37.920673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811874, 31.257818, 38.408161>,  <31.104248, 31.363619, 38.316624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811874, 31.257818, 38.408161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817507, 31.627560, 38.255650>,  <31.820887, 31.849405, 38.164143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817507, 31.627560, 38.255650>,  <31.811874, 31.257818, 38.408161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817507, 31.627560, 38.255650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520397, 0.318827, 0.792172,
		0.853808, -0.209571, -0.476541,
		0.014083, 0.924353, -0.381277,
		31.821732, 31.904865, 38.141266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477295, 31.509687, 38.397320>,  <31.811874, 31.257818, 38.408161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477295, 31.509687, 38.397320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256630, 31.843267, 38.391666>,  <32.124233, 32.043415, 38.388275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256630, 31.843267, 38.391666>,  <32.477295, 31.509687, 38.397320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256630, 31.843267, 38.391666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492261, 0.339219, 0.801629,
		0.673314, 0.435268, -0.597654,
		-0.551659, 0.833950, -0.014136,
		32.091133, 32.093452, 38.387424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842171, 32.003906, 38.574558>,  <32.477295, 31.509687, 38.397320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842171, 32.003906, 38.574558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485558, 32.155437, 38.673889>,  <32.271591, 32.246357, 38.733486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485558, 32.155437, 38.673889>,  <32.842171, 32.003906, 38.574558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485558, 32.155437, 38.673889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392857, 0.373793, 0.840204,
		0.225468, 0.846623, -0.482071,
		-0.891531, 0.378824, 0.248323,
		32.218098, 32.269085, 38.748386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971672, 32.641270, 38.770405>,  <32.842171, 32.003906, 38.574558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971672, 32.641270, 38.770405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619286, 32.576477, 38.948238>,  <32.407852, 32.537601, 39.054939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619286, 32.576477, 38.948238>,  <32.971672, 32.641270, 38.770405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619286, 32.576477, 38.948238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333478, 0.454018, 0.826232,
		-0.335683, 0.876145, -0.345959,
		-0.880971, -0.161982, 0.444581,
		32.354996, 32.527882, 39.081612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729855, 33.227356, 39.025166>,  <32.971672, 32.641270, 38.770405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729855, 33.227356, 39.025166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517071, 32.954754, 39.226192>,  <32.389400, 32.791195, 39.346809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517071, 32.954754, 39.226192>,  <32.729855, 33.227356, 39.025166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517071, 32.954754, 39.226192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100278, 0.538633, 0.836552,
		-0.840812, 0.495408, -0.218191,
		-0.531959, -0.681502, 0.502568,
		32.357483, 32.750301, 39.376965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167419, 33.535946, 39.357185>,  <32.729855, 33.227356, 39.025166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167419, 33.535946, 39.357185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252171, 33.213455, 39.578133>,  <32.303020, 33.019962, 39.710701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252171, 33.213455, 39.578133>,  <32.167419, 33.535946, 39.357185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252171, 33.213455, 39.578133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126471, 0.537831, 0.833513,
		-0.969079, -0.246458, 0.011988,
		0.211873, -0.806224, 0.552370,
		32.315731, 32.971588, 39.743843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735003, 33.615734, 39.907196>,  <32.167419, 33.535946, 39.357185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735003, 33.615734, 39.907196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992241, 33.338169, 40.036758>,  <32.146584, 33.171631, 40.114494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992241, 33.338169, 40.036758>,  <31.735003, 33.615734, 39.907196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992241, 33.338169, 40.036758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138804, 0.310336, 0.940439,
		-0.753102, -0.649750, 0.103257,
		0.643094, -0.693914, 0.323902,
		32.185169, 33.129993, 40.133930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439764, 33.482464, 40.676960>,  <31.735003, 33.615734, 39.907196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439764, 33.482464, 40.676960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805128, 33.340946, 40.596451>,  <32.024345, 33.256035, 40.548145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805128, 33.340946, 40.596451>,  <31.439764, 33.482464, 40.676960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805128, 33.340946, 40.596451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335382, 0.373943, 0.864688,
		-0.230658, -0.857318, 0.460220,
		0.913409, -0.353797, -0.201276,
		32.079151, 33.234806, 40.536068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582001, 33.351334, 41.324978>,  <31.439764, 33.482464, 40.676960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582001, 33.351334, 41.324978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926731, 33.350254, 41.122101>,  <32.133568, 33.349606, 41.000374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926731, 33.350254, 41.122101>,  <31.582001, 33.351334, 41.324978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926731, 33.350254, 41.122101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454906, 0.446354, 0.770603,
		0.224309, -0.894852, 0.385908,
		0.861827, -0.002699, -0.507195,
		32.185280, 33.349445, 40.969944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023411, 33.193512, 41.841671>,  <31.582001, 33.351334, 41.324978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023411, 33.193512, 41.841671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237030, 33.367802, 41.551861>,  <32.365204, 33.472374, 41.377975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237030, 33.367802, 41.551861>,  <32.023411, 33.193512, 41.841671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237030, 33.367802, 41.551861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454551, 0.574595, 0.680606,
		0.712863, -0.692812, 0.108806,
		0.534051, 0.435721, -0.724525,
		32.397247, 33.498516, 41.334503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714954, 33.310585, 42.130306>,  <32.023411, 33.193512, 41.841671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714954, 33.310585, 42.130306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683083, 33.555908, 41.815979>,  <32.663960, 33.703102, 41.627384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683083, 33.555908, 41.815979>,  <32.714954, 33.310585, 42.130306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683083, 33.555908, 41.815979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535875, 0.691075, 0.485029,
		0.840529, -0.382454, -0.383718,
		-0.079677, 0.613306, -0.785817,
		32.659180, 33.739899, 41.580235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410454, 33.577705, 42.048435>,  <32.714954, 33.310585, 42.130306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410454, 33.577705, 42.048435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160770, 33.841766, 41.881317>,  <33.010960, 34.000202, 41.781044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160770, 33.841766, 41.881317>,  <33.410454, 33.577705, 42.048435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160770, 33.841766, 41.881317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477858, 0.745695, 0.464317,
		0.618071, 0.090184, -0.780932,
		-0.624211, 0.660156, -0.417798,
		32.973507, 34.039814, 41.755978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828644, 34.107273, 41.880890>,  <33.410454, 33.577705, 42.048435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828644, 34.107273, 41.880890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456409, 34.247181, 41.924091>,  <33.233067, 34.331123, 41.950012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456409, 34.247181, 41.924091>,  <33.828644, 34.107273, 41.880890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456409, 34.247181, 41.924091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352511, 0.776704, 0.521984,
		0.098682, 0.523827, -0.846089,
		-0.930590, 0.349766, 0.108008,
		33.177231, 34.352112, 41.956493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981159, 34.861862, 41.770607>,  <33.828644, 34.107273, 41.880890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981159, 34.861862, 41.770607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618729, 34.845490, 41.939060>,  <33.401272, 34.835667, 42.040131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618729, 34.845490, 41.939060>,  <33.981159, 34.861862, 41.770607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618729, 34.845490, 41.939060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248241, 0.754586, 0.607435,
		-0.342645, 0.654924, -0.673550,
		-0.906074, -0.040932, 0.421134,
		33.346905, 34.833210, 42.065399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657078, 35.488998, 41.688900>,  <33.981159, 34.861862, 41.770607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657078, 35.488998, 41.688900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479862, 35.319065, 42.004681>,  <33.373531, 35.217106, 42.194149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479862, 35.319065, 42.004681>,  <33.657078, 35.488998, 41.688900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479862, 35.319065, 42.004681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180235, 0.820400, 0.542641,
		-0.878199, 0.382697, -0.286898,
		-0.443038, -0.424837, 0.789450,
		33.346951, 35.191612, 42.241516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343773, 36.087666, 42.002903>,  <33.657078, 35.488998, 41.688900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343773, 36.087666, 42.002903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355053, 35.795818, 42.276211>,  <33.361820, 35.620708, 42.440197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355053, 35.795818, 42.276211>,  <33.343773, 36.087666, 42.002903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355053, 35.795818, 42.276211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313754, 0.655460, 0.686972,
		-0.949085, 0.195004, 0.247407,
		0.028203, -0.729620, 0.683271,
		33.363514, 35.576931, 42.481194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201721, 36.446350, 42.528347>,  <33.343773, 36.087666, 42.002903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201721, 36.446350, 42.528347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298576, 36.109337, 42.720810>,  <33.356689, 35.907131, 42.836288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298576, 36.109337, 42.720810>,  <33.201721, 36.446350, 42.528347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298576, 36.109337, 42.720810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358361, 0.538511, 0.762616,
		-0.901636, -0.012229, 0.432323,
		0.242137, -0.842530, 0.481159,
		33.371216, 35.856579, 42.865158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797779, 36.433826, 43.085060>,  <33.201721, 36.446350, 42.528347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797779, 36.433826, 43.085060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134373, 36.230110, 43.157200>,  <33.336330, 36.107880, 43.200485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134373, 36.230110, 43.157200>,  <32.797779, 36.433826, 43.085060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134373, 36.230110, 43.157200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259943, 0.674270, 0.691224,
		-0.473640, -0.534772, 0.699774,
		0.841484, -0.509292, 0.180351,
		33.386818, 36.077324, 43.211304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961811, 36.620396, 43.785435>,  <32.797779, 36.433826, 43.085060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961811, 36.620396, 43.785435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307510, 36.451756, 43.675655>,  <33.514931, 36.350571, 43.609787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307510, 36.451756, 43.675655>,  <32.961811, 36.620396, 43.785435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307510, 36.451756, 43.675655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453039, 0.415134, 0.788936,
		-0.218684, -0.806174, 0.549782,
		0.864253, -0.421600, -0.274445,
		33.566788, 36.325275, 43.593323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182999, 36.239021, 44.426525>,  <32.961811, 36.620396, 43.785435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182999, 36.239021, 44.426525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506084, 36.282650, 44.194763>,  <33.699936, 36.308826, 44.055706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506084, 36.282650, 44.194763>,  <33.182999, 36.239021, 44.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506084, 36.282650, 44.194763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268197, 0.807201, 0.525829,
		0.525047, -0.580112, 0.622733,
		0.807711, 0.109069, -0.579403,
		33.748398, 36.315372, 44.020943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637177, 36.374733, 44.930912>,  <33.182999, 36.239021, 44.426525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637177, 36.374733, 44.930912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823898, 36.484566, 44.594650>,  <33.935932, 36.550465, 44.392895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823898, 36.484566, 44.594650>,  <33.637177, 36.374733, 44.930912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823898, 36.484566, 44.594650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459697, 0.736725, 0.495898,
		0.755496, -0.617933, 0.217680,
		0.466803, 0.274582, -0.840654,
		33.963940, 36.566940, 44.342453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433960, 36.419521, 45.089344>,  <33.637177, 36.374733, 44.930912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433960, 36.419521, 45.089344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282970, 36.634624, 44.787796>,  <34.192375, 36.763687, 44.606869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282970, 36.634624, 44.787796>,  <34.433960, 36.419521, 45.089344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282970, 36.634624, 44.787796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497501, 0.804402, 0.324700,
		0.781027, -0.252484, -0.571182,
		-0.377478, 0.537763, -0.753871,
		34.169727, 36.795952, 44.561634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008492, 36.851265, 44.916100>,  <34.433960, 36.419521, 45.089344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008492, 36.851265, 44.916100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672348, 37.014881, 44.773846>,  <34.470661, 37.113052, 44.688496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672348, 37.014881, 44.773846>,  <35.008492, 36.851265, 44.916100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672348, 37.014881, 44.773846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382116, 0.912425, 0.146520,
		0.384419, -0.012762, -0.923071,
		-0.840363, 0.409045, -0.355630,
		34.420238, 37.137596, 44.667156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341053, 37.186192, 44.318295>,  <35.008492, 36.851265, 44.916100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341053, 37.186192, 44.318295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739017, 37.146626, 44.325966>,  <35.977795, 37.122887, 44.330570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739017, 37.146626, 44.325966>,  <35.341053, 37.186192, 44.318295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739017, 37.146626, 44.325966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050857, -0.657358, -0.751861,
		0.086977, 0.747059, -0.659043,
		0.994911, -0.098911, 0.019182,
		36.037491, 37.116951, 44.331722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449970, 37.075089, 43.639515>,  <35.341053, 37.186192, 44.318295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449970, 37.075089, 43.639515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774284, 36.945179, 43.834309>,  <35.968872, 36.867233, 43.951187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774284, 36.945179, 43.834309>,  <35.449970, 37.075089, 43.639515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774284, 36.945179, 43.834309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094261, -0.748663, -0.656215,
		0.577707, 0.577952, -0.576390,
		0.810783, -0.324769, 0.486987,
		36.017521, 36.847748, 43.980404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841679, 36.833538, 43.220852>,  <35.449970, 37.075089, 43.639515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841679, 36.833538, 43.220852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023575, 36.636395, 43.517582>,  <36.132713, 36.518108, 43.695621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023575, 36.636395, 43.517582>,  <35.841679, 36.833538, 43.220852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023575, 36.636395, 43.517582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003104, -0.833799, -0.552059,
		0.890619, 0.248740, -0.380691,
		0.454739, -0.492856, 0.741826,
		36.159996, 36.488537, 43.740131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437088, 36.745739, 42.880375>,  <35.841679, 36.833538, 43.220852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437088, 36.745739, 42.880375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392933, 36.480213, 43.176254>,  <36.366440, 36.320896, 43.353783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392933, 36.480213, 43.176254>,  <36.437088, 36.745739, 42.880375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392933, 36.480213, 43.176254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121091, -0.747689, -0.652915,
		0.986484, 0.017495, 0.162920,
		-0.110391, -0.663818, 0.739702,
		36.359818, 36.281067, 43.398167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081413, 36.419682, 42.918339>,  <36.437088, 36.745739, 42.880375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081413, 36.419682, 42.918339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783756, 36.190876, 43.056355>,  <36.605160, 36.053593, 43.139164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783756, 36.190876, 43.056355>,  <37.081413, 36.419682, 42.918339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783756, 36.190876, 43.056355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206250, -0.688010, -0.695775,
		0.635379, -0.446595, 0.629958,
		-0.744147, -0.572010, 0.345036,
		36.560513, 36.019272, 43.159866>
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
