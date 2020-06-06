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
	<40.660904, 34.204441, 48.359818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713696, 34.600864, 48.367599>,  <40.745369, 34.838718, 48.372269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713696, 34.600864, 48.367599>,  <40.660904, 34.204441, 48.359818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713696, 34.600864, 48.367599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876775, -0.125870, 0.464137,
		0.462437, -0.044201, -0.885550,
		0.131979, 0.991062, 0.019452,
		40.753288, 34.898182, 48.373436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324677, 34.334225, 48.250217>,  <40.660904, 34.204441, 48.359818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324677, 34.334225, 48.250217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147217, 34.598743, 48.492161>,  <41.040741, 34.757454, 48.637325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147217, 34.598743, 48.492161>,  <41.324677, 34.334225, 48.250217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147217, 34.598743, 48.492161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747347, -0.099493, 0.656942,
		0.494615, 0.743495, -0.450079,
		-0.443653, 0.661299, 0.604860,
		41.014122, 34.797134, 48.673618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820801, 34.791004, 48.345844>,  <41.324677, 34.334225, 48.250217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820801, 34.791004, 48.345844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554329, 34.827900, 48.641872>,  <41.394447, 34.850037, 48.819489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554329, 34.827900, 48.641872>,  <41.820801, 34.791004, 48.345844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554329, 34.827900, 48.641872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745697, 0.098405, 0.658978,
		-0.012043, 0.990862, -0.134337,
		-0.666176, 0.092239, 0.740069,
		41.354477, 34.855572, 48.863892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901569, 35.515984, 48.617352>,  <41.820801, 34.791004, 48.345844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901569, 35.515984, 48.617352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762272, 35.264565, 48.895531>,  <41.678692, 35.113712, 49.062439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762272, 35.264565, 48.895531>,  <41.901569, 35.515984, 48.617352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762272, 35.264565, 48.895531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840583, 0.118981, 0.528453,
		-0.414904, 0.768617, 0.486911,
		-0.348245, -0.628547, 0.695453,
		41.657799, 35.076000, 49.104168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095692, 35.796501, 49.273495>,  <41.901569, 35.515984, 48.617352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095692, 35.796501, 49.273495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013535, 35.411953, 49.346802>,  <41.964241, 35.181225, 49.390785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013535, 35.411953, 49.346802>,  <42.095692, 35.796501, 49.273495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013535, 35.411953, 49.346802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773259, -0.044620, 0.632519,
		-0.599905, 0.271628, 0.752550,
		-0.205389, -0.961368, 0.183270,
		41.951920, 35.123543, 49.401783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960068, 35.867382, 50.037109>,  <42.095692, 35.796501, 49.273495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960068, 35.867382, 50.037109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044453, 35.480484, 49.980629>,  <42.095085, 35.248344, 49.946739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044453, 35.480484, 49.980629>,  <41.960068, 35.867382, 50.037109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044453, 35.480484, 49.980629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705235, 0.050579, 0.707167,
		-0.676859, -0.248768, 0.692803,
		0.210962, -0.967242, -0.141204,
		42.107742, 35.190311, 49.938267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940224, 35.538746, 50.654846>,  <41.960068, 35.867382, 50.037109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940224, 35.538746, 50.654846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173595, 35.315674, 50.418678>,  <42.313618, 35.181831, 50.276978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173595, 35.315674, 50.418678>,  <41.940224, 35.538746, 50.654846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173595, 35.315674, 50.418678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730742, 0.043197, 0.681286,
		-0.354436, -0.828931, 0.432723,
		0.583431, -0.557681, -0.590424,
		42.348625, 35.148369, 50.241550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345013, 35.312595, 51.143070>,  <41.940224, 35.538746, 50.654846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345013, 35.312595, 51.143070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535667, 35.181999, 50.816582>,  <42.650059, 35.103642, 50.620689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535667, 35.181999, 50.816582>,  <42.345013, 35.312595, 51.143070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535667, 35.181999, 50.816582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862115, -0.008044, 0.506648,
		-0.171981, -0.945166, 0.277638,
		0.476633, -0.326490, -0.816226,
		42.678658, 35.084053, 50.571712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860363, 34.744743, 51.349529>,  <42.345013, 35.312595, 51.143070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860363, 34.744743, 51.349529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017200, 34.843849, 50.995155>,  <43.111301, 34.903313, 50.782532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017200, 34.843849, 50.995155>,  <42.860363, 34.744743, 51.349529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017200, 34.843849, 50.995155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919191, -0.144014, 0.366535,
		-0.036773, -0.958057, -0.284208,
		0.392092, 0.247762, -0.885933,
		43.134827, 34.918179, 50.729374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319923, 34.179337, 50.834122>,  <42.860363, 34.744743, 51.349529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319923, 34.179337, 50.834122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428135, 34.561180, 50.784256>,  <43.493061, 34.790287, 50.754337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428135, 34.561180, 50.784256>,  <43.319923, 34.179337, 50.834122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428135, 34.561180, 50.784256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919541, -0.217881, 0.327066,
		0.285057, -0.203117, -0.936742,
		0.270531, 0.954605, -0.124666,
		43.509293, 34.847561, 50.746857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092442, 34.118938, 50.740387>,  <43.319923, 34.179337, 50.834122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092442, 34.118938, 50.740387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036663, 34.511398, 50.793911>,  <44.003197, 34.746872, 50.826027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036663, 34.511398, 50.793911>,  <44.092442, 34.118938, 50.740387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036663, 34.511398, 50.793911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976861, 0.114171, 0.180850,
		0.162163, 0.155936, -0.974365,
		-0.139445, 0.981147, 0.133814,
		43.994831, 34.805744, 50.834057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574524, 34.494270, 50.298164>,  <44.092442, 34.118938, 50.740387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574524, 34.494270, 50.298164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484516, 34.768955, 50.574654>,  <44.430511, 34.933765, 50.740547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484516, 34.768955, 50.574654>,  <44.574524, 34.494270, 50.298164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484516, 34.768955, 50.574654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970333, 0.222321, 0.095011,
		-0.088429, 0.692098, -0.716366,
		-0.225021, 0.686712, 0.691225,
		44.417011, 34.974968, 50.782021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844139, 35.171173, 50.031879>,  <44.574524, 34.494270, 50.298164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844139, 35.171173, 50.031879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807007, 35.165001, 50.430103>,  <44.784725, 35.161297, 50.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807007, 35.165001, 50.430103>,  <44.844139, 35.171173, 50.031879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807007, 35.165001, 50.430103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953193, 0.287594, 0.093342,
		-0.287758, 0.957628, -0.011990,
		-0.092835, -0.015431, 0.995562,
		44.779156, 35.160370, 50.728771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212372, 35.786373, 50.204742>,  <44.844139, 35.171173, 50.031879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212372, 35.786373, 50.204742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173252, 35.619427, 50.566128>,  <45.149780, 35.519260, 50.782959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173252, 35.619427, 50.566128>,  <45.212372, 35.786373, 50.204742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173252, 35.619427, 50.566128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975898, 0.137734, 0.169273,
		-0.195086, 0.898242, 0.393831,
		-0.097804, -0.417361, 0.903462,
		45.143909, 35.494217, 50.837166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507492, 36.281830, 50.656094>,  <45.212372, 35.786373, 50.204742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507492, 36.281830, 50.656094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469730, 35.960758, 50.891651>,  <45.447071, 35.768116, 51.032986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469730, 35.960758, 50.891651>,  <45.507492, 36.281830, 50.656094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469730, 35.960758, 50.891651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934189, 0.133010, 0.331057,
		-0.344061, 0.581395, 0.737294,
		-0.094407, -0.802676, 0.588896,
		45.441410, 35.719955, 51.068321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712139, 36.480339, 51.295040>,  <45.507492, 36.281830, 50.656094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712139, 36.480339, 51.295040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748032, 36.081963, 51.292210>,  <45.769569, 35.842937, 51.290512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748032, 36.081963, 51.292210>,  <45.712139, 36.480339, 51.295040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748032, 36.081963, 51.292210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920131, 0.080180, 0.383314,
		-0.381191, -0.040906, 0.923591,
		0.089733, -0.995941, -0.007075,
		45.774952, 35.783180, 51.290089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987244, 36.294064, 51.917591>,  <45.712139, 36.480339, 51.295040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987244, 36.294064, 51.917591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065365, 35.991119, 51.668350>,  <46.112240, 35.809353, 51.518806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065365, 35.991119, 51.668350>,  <45.987244, 36.294064, 51.917591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065365, 35.991119, 51.668350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962390, 0.025666, 0.270456,
		-0.188840, -0.652492, 0.733890,
		0.195306, -0.757361, -0.623105,
		46.123955, 35.763912, 51.481419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219761, 35.654858, 52.351124>,  <45.987244, 36.294064, 51.917591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219761, 35.654858, 52.351124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358265, 35.621220, 51.977379>,  <46.441368, 35.601036, 51.753132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358265, 35.621220, 51.977379>,  <46.219761, 35.654858, 52.351124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358265, 35.621220, 51.977379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936632, -0.025447, 0.349389,
		-0.053159, -0.996133, 0.069954,
		0.346258, -0.084095, -0.934363,
		46.462143, 35.595993, 51.697071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706650, 35.073654, 52.419594>,  <46.219761, 35.654858, 52.351124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.706650, 35.073654, 52.419594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791847, 35.271809, 52.082729>,  <46.842968, 35.390701, 51.880611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791847, 35.271809, 52.082729>,  <46.706650, 35.073654, 52.419594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.791847, 35.271809, 52.082729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977017, -0.100564, 0.187949,
		0.008417, -0.862834, -0.505418,
		0.212996, 0.495384, -0.842157,
		46.855747, 35.420425, 51.830082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.237896, 34.793251, 52.251583>,  <46.706650, 35.073654, 52.419594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.237896, 34.793251, 52.251583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276608, 35.116535, 52.019230>,  <47.299835, 35.310505, 51.879818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276608, 35.116535, 52.019230>,  <47.237896, 34.793251, 52.251583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276608, 35.116535, 52.019230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962927, 0.071620, 0.260080,
		0.251803, -0.584522, -0.771317,
		0.096781, 0.808211, -0.580886,
		47.305641, 35.358997, 51.844963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.805435, 34.733982, 51.579140>,  <47.237896, 34.793251, 52.251583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.805435, 34.733982, 51.579140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730583, 35.087013, 51.751671>,  <47.685673, 35.298832, 51.855190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730583, 35.087013, 51.751671>,  <47.805435, 34.733982, 51.579140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730583, 35.087013, 51.751671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954360, 0.059291, 0.292714,
		0.232768, 0.466421, -0.853388,
		-0.187126, 0.882574, 0.431332,
		47.674446, 35.351784, 51.881069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.244205, 34.808044, 51.591194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.437738, 34.892628, 51.930885>,  <24.553858, 34.943378, 52.134701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.437738, 34.892628, 51.930885>,  <24.244205, 34.808044, 51.591194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437738, 34.892628, 51.930885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819391, -0.450315, -0.354704,
		0.307417, 0.867470, -0.391141,
		0.483831, 0.211455, 0.849231,
		24.582888, 34.956062, 52.185654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879410, 35.126534, 51.358517>,  <24.244205, 34.808044, 51.591194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879410, 35.126534, 51.358517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.937635, 34.982594, 51.727150>,  <24.972570, 34.896229, 51.948330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.937635, 34.982594, 51.727150>,  <24.879410, 35.126534, 51.358517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937635, 34.982594, 51.727150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832996, -0.458001, -0.310407,
		0.533788, 0.812859, 0.233089,
		0.145563, -0.359854, 0.921584,
		24.981304, 34.874638, 52.003624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502041, 35.404613, 51.549770>,  <24.879410, 35.126534, 51.358517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502041, 35.404613, 51.549770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.439827, 35.077610, 51.771576>,  <25.402498, 34.881409, 51.904659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.439827, 35.077610, 51.771576>,  <25.502041, 35.404613, 51.549770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439827, 35.077610, 51.771576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935491, -0.302193, -0.183128,
		0.317279, 0.490257, 0.811777,
		-0.155534, -0.817513, 0.554511,
		25.393167, 34.832355, 51.937931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981785, 35.458015, 52.137878>,  <25.502041, 35.404613, 51.549770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981785, 35.458015, 52.137878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.895239, 35.069511, 52.098202>,  <25.843311, 34.836411, 52.074394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.895239, 35.069511, 52.098202>,  <25.981785, 35.458015, 52.137878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895239, 35.069511, 52.098202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970571, -0.224982, 0.085883,
		-0.105731, -0.077689, 0.991355,
		-0.216365, -0.971261, -0.099190,
		25.830330, 34.778133, 52.068443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211388, 35.020596, 52.688404>,  <25.981785, 35.458015, 52.137878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211388, 35.020596, 52.688404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.194431, 34.797852, 52.356594>,  <26.184258, 34.664207, 52.157509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.194431, 34.797852, 52.356594>,  <26.211388, 35.020596, 52.688404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194431, 34.797852, 52.356594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989459, -0.138470, 0.042391,
		-0.138470, -0.818984, 0.556858,
		-0.042391, -0.556858, -0.829525,
		26.181715, 34.630795, 52.107735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747923, 34.413429, 52.807449>,  <26.211388, 35.020596, 52.688404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747923, 34.413429, 52.807449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.653503, 34.409767, 52.418770>,  <26.596851, 34.407570, 52.185562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.653503, 34.409767, 52.418770>,  <26.747923, 34.413429, 52.807449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653503, 34.409767, 52.418770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971199, 0.031152, -0.236224,
		0.032430, -0.999473, 0.001525,
		-0.236052, -0.009142, -0.971698,
		26.582687, 34.407021, 52.127262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200077, 33.885551, 52.563393>,  <26.747923, 34.413429, 52.807449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200077, 33.885551, 52.563393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.102583, 34.121014, 52.255089>,  <27.044086, 34.262291, 52.070107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.102583, 34.121014, 52.255089>,  <27.200077, 33.885551, 52.563393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102583, 34.121014, 52.255089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943374, -0.040499, -0.329250,
		-0.225030, -0.807368, -0.545452,
		-0.243736, 0.588656, -0.770764,
		27.029463, 34.297611, 52.023861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590601, 33.606197, 52.095062>,  <27.200077, 33.885551, 52.563393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590601, 33.606197, 52.095062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.485195, 33.953644, 51.927219>,  <27.421951, 34.162113, 51.826515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.485195, 33.953644, 51.927219>,  <27.590601, 33.606197, 52.095062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485195, 33.953644, 51.927219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950340, 0.159101, -0.267470,
		-0.165570, -0.469248, -0.867406,
		-0.263515, 0.868616, -0.419603,
		27.406141, 34.214230, 51.801338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908566, 33.513046, 51.478443>,  <27.590601, 33.606197, 52.095062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908566, 33.513046, 51.478443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.829477, 33.902195, 51.526505>,  <27.782024, 34.135685, 51.555340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.829477, 33.902195, 51.526505>,  <27.908566, 33.513046, 51.478443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829477, 33.902195, 51.526505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888075, 0.229667, -0.398215,
		-0.415005, 0.027968, -0.909389,
		-0.197720, 0.972867, 0.120151,
		27.770161, 34.194054, 51.562550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326279, 33.726498, 50.996201>,  <27.908566, 33.513046, 51.478443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326279, 33.726498, 50.996201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.266159, 34.043278, 51.232918>,  <28.230087, 34.233345, 51.374947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.266159, 34.043278, 51.232918>,  <28.326279, 33.726498, 50.996201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266159, 34.043278, 51.232918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829757, 0.426492, -0.360011,
		-0.537507, 0.436935, -0.721231,
		-0.150298, 0.791955, 0.591792,
		28.221069, 34.280865, 51.410454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360519, 34.365734, 50.552528>,  <28.326279, 33.726498, 50.996201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360519, 34.365734, 50.552528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.431742, 34.447441, 50.937561>,  <28.474474, 34.496464, 51.168583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.431742, 34.447441, 50.937561>,  <28.360519, 34.365734, 50.552528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431742, 34.447441, 50.937561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850471, 0.460106, -0.254955,
		-0.494970, 0.864047, -0.091801,
		0.178055, 0.204269, 0.962585,
		28.485159, 34.508720, 51.226337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459589, 35.055862, 50.537651>,  <28.360519, 34.365734, 50.552528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459589, 35.055862, 50.537651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.623590, 34.915749, 50.874508>,  <28.721991, 34.831680, 51.076622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.623590, 34.915749, 50.874508>,  <28.459589, 35.055862, 50.537651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623590, 34.915749, 50.874508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829544, 0.527027, -0.184660,
		-0.379148, 0.774304, 0.506656,
		0.410004, -0.350280, 0.842140,
		28.746592, 34.810665, 51.127151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744392, 35.666725, 50.838066>,  <28.459589, 35.055862, 50.537651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744392, 35.666725, 50.838066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.913483, 35.380836, 51.060951>,  <29.014936, 35.209305, 51.194683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.913483, 35.380836, 51.060951>,  <28.744392, 35.666725, 50.838066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913483, 35.380836, 51.060951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888965, 0.446558, -0.101622,
		-0.176196, 0.538299, 0.824129,
		0.422724, -0.714717, 0.557211,
		29.040300, 35.166420, 51.228115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175604, 35.993793, 51.304272>,  <28.744392, 35.666725, 50.838066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175604, 35.993793, 51.304272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.315359, 35.619736, 51.280811>,  <29.399212, 35.395302, 51.266735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.315359, 35.619736, 51.280811>,  <29.175604, 35.993793, 51.304272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315359, 35.619736, 51.280811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929041, 0.353879, -0.107945,
		0.121699, -0.016775, 0.992425,
		0.349388, -0.935140, -0.058651,
		29.420176, 35.339195, 51.263214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729391, 35.954510, 51.770172>,  <29.175604, 35.993793, 51.304272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729391, 35.954510, 51.770172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.806198, 35.642879, 51.531452>,  <29.852283, 35.455902, 51.388218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.806198, 35.642879, 51.531452>,  <29.729391, 35.954510, 51.770172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806198, 35.642879, 51.531452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974679, 0.222393, 0.023284,
		0.114585, -0.586162, 0.802051,
		0.192018, -0.779074, -0.596802,
		29.863804, 35.409157, 51.352413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434093, 35.740387, 51.989967>,  <29.729391, 35.954510, 51.770172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434093, 35.740387, 51.989967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.389574, 35.573574, 51.629147>,  <30.362862, 35.473488, 51.412655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.389574, 35.573574, 51.629147>,  <30.434093, 35.740387, 51.989967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389574, 35.573574, 51.629147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986242, 0.065287, -0.151868,
		0.122225, -0.906545, 0.404025,
		-0.111298, -0.417029, -0.902053,
		30.356184, 35.448467, 51.358532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040239, 35.382713, 51.919277>,  <30.434093, 35.740387, 51.989967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040239, 35.382713, 51.919277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.923571, 35.369427, 51.536900>,  <30.853569, 35.361454, 51.307472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.923571, 35.369427, 51.536900>,  <31.040239, 35.382713, 51.919277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923571, 35.369427, 51.536900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956202, 0.015610, -0.292291,
		0.024631, -0.999326, 0.027208,
		-0.291670, -0.033216, -0.955943,
		30.836069, 35.359463, 51.250118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465290, 34.828453, 51.643772>,  <31.040239, 35.382713, 51.919277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465290, 34.828453, 51.643772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.321676, 35.066887, 51.356503>,  <31.235508, 35.209949, 51.184139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.321676, 35.066887, 51.356503>,  <31.465290, 34.828453, 51.643772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321676, 35.066887, 51.356503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900896, 0.020265, -0.433562,
		-0.243888, -0.802662, -0.544290,
		-0.359034, 0.596089, -0.718173,
		31.213966, 35.245712, 51.141052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894352, 34.631660, 51.119503>,  <31.465290, 34.828453, 51.643772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894352, 34.631660, 51.119503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.740887, 34.968220, 50.967266>,  <31.648808, 35.170155, 50.875923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.740887, 34.968220, 50.967266>,  <31.894352, 34.631660, 51.119503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740887, 34.968220, 50.967266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784664, 0.079711, -0.614776,
		-0.486933, -0.534505, -0.690797,
		-0.383665, 0.841398, -0.380592,
		31.625788, 35.220638, 50.853088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813822, 34.595615, 50.387527>,  <31.894352, 34.631660, 51.119503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813822, 34.595615, 50.387527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.844681, 34.983917, 50.478466>,  <31.863195, 35.216900, 50.533028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.844681, 34.983917, 50.478466>,  <31.813822, 34.595615, 50.387527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844681, 34.983917, 50.478466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785525, 0.081247, -0.613473,
		-0.614002, 0.225913, -0.756283,
		0.077146, 0.970753, 0.227346,
		31.867825, 35.275143, 50.546669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867542, 34.943333, 49.703281>,  <31.813822, 34.595615, 50.387527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867542, 34.943333, 49.703281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.023624, 35.164188, 49.998001>,  <32.117275, 35.296703, 50.174835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.023624, 35.164188, 49.998001>,  <31.867542, 34.943333, 49.703281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023624, 35.164188, 49.998001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885932, -0.007237, -0.463759,
		-0.250728, 0.833719, -0.491983,
		0.390205, 0.552141, 0.736804,
		32.140686, 35.329830, 50.219044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.936914, 34.913277, 35.181725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.259241, 35.135895, 35.100811>,  <24.452637, 35.269466, 35.052265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.259241, 35.135895, 35.100811>,  <23.936914, 34.913277, 35.181725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259241, 35.135895, 35.100811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245758, -0.003520, 0.969325,
		0.538760, -0.830810, -0.139612,
		0.805817, 0.556544, -0.202282,
		24.500986, 35.302856, 35.040127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.519749, 34.653320, 35.610622>,  <23.936914, 34.913277, 35.181725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.519749, 34.653320, 35.610622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.610209, 35.037014, 35.542816>,  <24.664484, 35.267231, 35.502132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.610209, 35.037014, 35.542816>,  <24.519749, 34.653320, 35.610622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610209, 35.037014, 35.542816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332640, 0.087513, 0.938985,
		0.915536, -0.268738, -0.299287,
		0.226149, 0.959229, -0.169514,
		24.678053, 35.324783, 35.491962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283026, 34.812973, 35.756367>,  <24.519749, 34.653320, 35.610622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283026, 34.812973, 35.756367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.023111, 35.113766, 35.800732>,  <24.867163, 35.294243, 35.827351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.023111, 35.113766, 35.800732>,  <25.283026, 34.812973, 35.756367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.023111, 35.113766, 35.800732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439524, 0.252656, 0.861965,
		0.620160, 0.608841, -0.494687,
		-0.649785, 0.751983, 0.110913,
		24.828176, 35.339359, 35.834007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475252, 35.560146, 35.825573>,  <25.283026, 34.812973, 35.756367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475252, 35.560146, 35.825573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.153795, 35.592262, 36.061443>,  <24.960922, 35.611530, 36.202965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.153795, 35.592262, 36.061443>,  <25.475252, 35.560146, 35.825573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153795, 35.592262, 36.061443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496937, 0.635714, 0.590695,
		-0.327437, 0.767738, -0.550785,
		-0.803641, 0.080290, 0.589673,
		24.912703, 35.616348, 36.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359137, 36.245243, 36.010773>,  <25.475252, 35.560146, 35.825573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.359137, 36.245243, 36.010773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.236029, 35.984550, 36.288052>,  <25.162165, 35.828136, 36.454418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.236029, 35.984550, 36.288052>,  <25.359137, 36.245243, 36.010773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236029, 35.984550, 36.288052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520182, 0.494778, 0.696136,
		-0.796673, 0.574839, 0.186741,
		-0.307770, -0.651732, 0.693197,
		25.143698, 35.789032, 36.496010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167458, 36.628490, 36.579830>,  <25.359137, 36.245243, 36.010773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167458, 36.628490, 36.579830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.256163, 36.260994, 36.710518>,  <25.309385, 36.040497, 36.788929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.256163, 36.260994, 36.710518>,  <25.167458, 36.628490, 36.579830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256163, 36.260994, 36.710518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367253, 0.389081, 0.844832,
		-0.903297, -0.067367, 0.423693,
		0.221765, -0.918737, 0.326715,
		25.322693, 35.985374, 36.808533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857639, 36.501179, 37.256393>,  <25.167458, 36.628490, 36.579830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857639, 36.501179, 37.256393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.190174, 36.286667, 37.198040>,  <25.389696, 36.157959, 37.163029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.190174, 36.286667, 37.198040>,  <24.857639, 36.501179, 37.256393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190174, 36.286667, 37.198040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307334, 0.224904, 0.924642,
		-0.463058, -0.813524, 0.351789,
		0.831338, -0.536280, -0.145880,
		25.439575, 36.125782, 37.154278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886869, 35.946526, 37.722275>,  <24.857639, 36.501179, 37.256393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886869, 35.946526, 37.722275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.261497, 36.073391, 37.662617>,  <25.486275, 36.149509, 37.626823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.261497, 36.073391, 37.662617>,  <24.886869, 35.946526, 37.722275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261497, 36.073391, 37.662617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210867, -0.170019, 0.962615,
		0.279951, -0.933006, -0.226114,
		0.936570, 0.317165, -0.149143,
		25.542469, 36.168541, 37.617874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289101, 35.375290, 37.896141>,  <24.886869, 35.946526, 37.722275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289101, 35.375290, 37.896141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.484131, 35.719494, 37.955185>,  <25.601149, 35.926018, 37.990612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.484131, 35.719494, 37.955185>,  <25.289101, 35.375290, 37.896141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484131, 35.719494, 37.955185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222771, -0.286089, 0.931948,
		0.844181, -0.421513, -0.331188,
		0.487577, 0.860512, 0.147610,
		25.630404, 35.977646, 37.999466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928198, 35.215416, 38.107658>,  <25.289101, 35.375290, 37.896141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928198, 35.215416, 38.107658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.811745, 35.569725, 38.252243>,  <25.741873, 35.782310, 38.338993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.811745, 35.569725, 38.252243>,  <25.928198, 35.215416, 38.107658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811745, 35.569725, 38.252243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159659, -0.327541, 0.931250,
		0.943265, 0.328829, -0.046062,
		-0.291135, 0.885770, 0.361458,
		25.724403, 35.835457, 38.360680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542000, 35.657516, 38.485931>,  <25.928198, 35.215416, 38.107658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542000, 35.657516, 38.485931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.163973, 35.694138, 38.611446>,  <25.937157, 35.716110, 38.686756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.163973, 35.694138, 38.611446>,  <26.542000, 35.657516, 38.485931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163973, 35.694138, 38.611446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279030, -0.274078, 0.920339,
		0.170263, 0.957340, 0.233476,
		-0.945068, 0.091553, 0.313792,
		25.880453, 35.721603, 38.705585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016062, 35.219078, 38.988491>,  <26.542000, 35.657516, 38.485931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016062, 35.219078, 38.988491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.988085, 34.866886, 38.800938>,  <26.971298, 34.655571, 38.688404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.988085, 34.866886, 38.800938>,  <27.016062, 35.219078, 38.988491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988085, 34.866886, 38.800938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363364, 0.415258, -0.833983,
		0.929018, -0.228709, 0.290891,
		-0.069944, -0.880484, -0.468887,
		26.967102, 34.602741, 38.660271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645319, 35.471466, 39.439449>,  <27.016062, 35.219078, 38.988491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645319, 35.471466, 39.439449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.730459, 35.856533, 39.506348>,  <27.781544, 36.087574, 39.546486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.730459, 35.856533, 39.506348>,  <27.645319, 35.471466, 39.439449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730459, 35.856533, 39.506348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483055, -0.252460, 0.838404,
		0.849325, -0.097668, -0.518756,
		0.212851, 0.962665, 0.167241,
		27.794315, 36.145332, 39.556519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358997, 35.543262, 39.354389>,  <27.645319, 35.471466, 39.439449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358997, 35.543262, 39.354389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.147072, 35.765083, 39.611069>,  <28.019917, 35.898174, 39.765076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.147072, 35.765083, 39.611069>,  <28.358997, 35.543262, 39.354389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147072, 35.765083, 39.611069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472171, -0.435650, 0.766331,
		0.704522, 0.709003, -0.031029,
		-0.529813, 0.554548, 0.641696,
		27.988129, 35.931446, 39.803577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787395, 35.869781, 39.870365>,  <28.358997, 35.543262, 39.354389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787395, 35.869781, 39.870365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.425058, 35.845074, 40.038002>,  <28.207657, 35.830250, 40.138584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.425058, 35.845074, 40.038002>,  <28.787395, 35.869781, 39.870365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425058, 35.845074, 40.038002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410941, -0.368313, 0.833950,
		0.102846, 0.927648, 0.359016,
		-0.905842, -0.061766, 0.419088,
		28.153305, 35.826546, 40.163727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686533, 36.329838, 40.524632>,  <28.787395, 35.869781, 39.870365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686533, 36.329838, 40.524632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.473408, 35.992203, 40.500526>,  <28.345533, 35.789623, 40.486065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.473408, 35.992203, 40.500526>,  <28.686533, 36.329838, 40.524632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473408, 35.992203, 40.500526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424803, -0.328378, 0.843629,
		-0.731883, 0.423897, 0.533534,
		-0.532813, -0.844085, -0.060262,
		28.313564, 35.738976, 40.482449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956345, 36.179588, 41.216187>,  <28.686533, 36.329838, 40.524632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956345, 36.179588, 41.216187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199039, 36.034996, 41.499371>,  <29.344656, 35.948242, 41.669281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199039, 36.034996, 41.499371>,  <28.956345, 36.179588, 41.216187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199039, 36.034996, 41.499371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203596, -0.790243, -0.577984,
		0.768389, 0.494820, -0.405872,
		0.606735, -0.361482, 0.707957,
		29.381060, 35.926552, 41.711758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746176, 36.004173, 40.987469>,  <28.956345, 36.179588, 41.216187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746176, 36.004173, 40.987469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.566589, 35.783928, 41.268967>,  <29.458838, 35.651783, 41.437866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.566589, 35.783928, 41.268967>,  <29.746176, 36.004173, 40.987469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566589, 35.783928, 41.268967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036219, -0.798151, -0.601368,
		0.892814, -0.244505, 0.378285,
		-0.448966, -0.550611, 0.703745,
		29.431900, 35.618744, 41.480091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009798, 35.417454, 41.293728>,  <29.746176, 36.004173, 40.987469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009798, 35.417454, 41.293728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621517, 35.351776, 41.223557>,  <29.388548, 35.312370, 41.181454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621517, 35.351776, 41.223557>,  <30.009798, 35.417454, 41.293728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621517, 35.351776, 41.223557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240201, -0.644394, -0.725989,
		0.006155, -0.746859, 0.664954,
		-0.970704, -0.164191, -0.175430,
		29.330305, 35.302521, 41.170929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931477, 36.066906, 41.678436>,  <30.009798, 35.417454, 41.293728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931477, 36.066906, 41.678436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733160, 36.414009, 41.664684>,  <29.614170, 36.622272, 41.656433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733160, 36.414009, 41.664684>,  <29.931477, 36.066906, 41.678436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733160, 36.414009, 41.664684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272593, 0.193092, 0.942554,
		0.824549, 0.457940, -0.332279,
		-0.495794, 0.867760, -0.034383,
		29.584421, 36.674335, 41.654369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944410, 35.780449, 42.433910>,  <29.931477, 36.066906, 41.678436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944410, 35.780449, 42.433910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.921349, 36.149738, 42.585876>,  <29.907511, 36.371311, 42.677055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.921349, 36.149738, 42.585876>,  <29.944410, 35.780449, 42.433910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921349, 36.149738, 42.585876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480670, -0.359203, 0.799956,
		0.875004, -0.136491, 0.464476,
		-0.057655, 0.923224, 0.379911,
		29.904053, 36.426704, 42.699848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299829, 35.916134, 43.129482>,  <29.944410, 35.780449, 42.433910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299829, 35.916134, 43.129482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985813, 36.163185, 43.110554>,  <29.797403, 36.311417, 43.099197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985813, 36.163185, 43.110554>,  <30.299829, 35.916134, 43.129482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985813, 36.163185, 43.110554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453523, -0.521051, 0.723065,
		0.421930, 0.589098, 0.689157,
		-0.785043, 0.617632, -0.047322,
		29.750299, 36.348476, 43.096355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954845, 35.673492, 42.915375>,  <30.299829, 35.916134, 43.129482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954845, 35.673492, 42.915375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840761, 35.788185, 43.281204>,  <30.772310, 35.857002, 43.500702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840761, 35.788185, 43.281204>,  <30.954845, 35.673492, 42.915375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840761, 35.788185, 43.281204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645709, 0.762650, -0.037739,
		-0.708317, 0.579782, -0.402665,
		-0.285212, 0.286736, 0.914569,
		30.755198, 35.874207, 43.555576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801090, 36.443462, 42.884544>,  <30.954845, 35.673492, 42.915375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801090, 36.443462, 42.884544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880243, 36.304855, 43.251316>,  <30.927736, 36.221691, 43.471378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880243, 36.304855, 43.251316>,  <30.801090, 36.443462, 42.884544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880243, 36.304855, 43.251316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514861, 0.832748, 0.203591,
		-0.834122, 0.431806, 0.343196,
		0.197884, -0.346518, 0.916933,
		30.939608, 36.200901, 43.526398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501314, 36.904129, 43.419102>,  <30.801090, 36.443462, 42.884544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501314, 36.904129, 43.419102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.818920, 36.698936, 43.549572>,  <31.009483, 36.575821, 43.627853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.818920, 36.698936, 43.549572>,  <30.501314, 36.904129, 43.419102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818920, 36.698936, 43.549572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542354, 0.840149, 0.001038,
		-0.274571, 0.176080, 0.945307,
		0.794016, -0.512977, 0.326179,
		31.057125, 36.545044, 43.647427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847828, 37.284966, 43.929836>,  <30.501314, 36.904129, 43.419102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847828, 37.284966, 43.929836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.116072, 37.048107, 43.751110>,  <31.277018, 36.905991, 43.643875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.116072, 37.048107, 43.751110>,  <30.847828, 37.284966, 43.929836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116072, 37.048107, 43.751110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647716, 0.761012, -0.036412,
		0.361591, -0.264989, 0.893886,
		0.670609, -0.592150, -0.446813,
		31.317255, 36.870461, 43.617065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455540, 37.279732, 44.291687>,  <30.847828, 37.284966, 43.929836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455540, 37.279732, 44.291687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569126, 37.181591, 43.920921>,  <31.637278, 37.122707, 43.698463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569126, 37.181591, 43.920921>,  <31.455540, 37.279732, 44.291687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569126, 37.181591, 43.920921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810673, 0.577666, 0.095450,
		0.512027, -0.778528, 0.362936,
		0.283966, -0.245349, -0.926913,
		31.654316, 37.107986, 43.642849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264345, 37.122536, 45.055656>,  <31.455540, 37.279732, 44.291687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264345, 37.122536, 45.055656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640173, 37.102352, 44.920208>,  <31.865669, 37.090244, 44.838940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640173, 37.102352, 44.920208>,  <31.264345, 37.122536, 45.055656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640173, 37.102352, 44.920208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321074, 0.473166, 0.820381,
		0.118830, -0.879527, 0.460772,
		0.939570, -0.050456, -0.338620,
		31.922043, 37.087215, 44.818623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051943, 37.815701, 45.148998>,  <31.264345, 37.122536, 45.055656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051943, 37.815701, 45.148998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.372456, 37.830574, 44.910145>,  <31.564762, 37.839500, 44.766834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.372456, 37.830574, 44.910145>,  <31.051943, 37.815701, 45.148998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372456, 37.830574, 44.910145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569619, 0.352683, -0.742394,
		0.182990, 0.935004, 0.303781,
		0.801280, 0.037188, -0.597133,
		31.612839, 37.841732, 44.731007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427464, 37.607780, 45.618393>,  <31.051943, 37.815701, 45.148998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427464, 37.607780, 45.618393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.319008, 37.930141, 45.407867>,  <30.253935, 38.123558, 45.281551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.319008, 37.930141, 45.407867>,  <30.427464, 37.607780, 45.618393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319008, 37.930141, 45.407867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641319, -0.256495, -0.723132,
		-0.717770, -0.533606, -0.447294,
		-0.271138, 0.805900, -0.526316,
		30.237667, 38.171913, 45.249973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560869, 37.028973, 45.869217>,  <30.427464, 37.607780, 45.618393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560869, 37.028973, 45.869217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681364, 36.684555, 45.705334>,  <30.753662, 36.477905, 45.607006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681364, 36.684555, 45.705334>,  <30.560869, 37.028973, 45.869217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681364, 36.684555, 45.705334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306386, -0.319477, 0.896695,
		-0.902986, -0.395646, 0.167574,
		0.301238, -0.861045, -0.409704,
		30.771736, 36.426243, 45.582424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336468, 36.527668, 46.326260>,  <30.560869, 37.028973, 45.869217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336468, 36.527668, 46.326260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.624304, 36.354897, 46.108772>,  <30.797005, 36.251232, 45.978279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.624304, 36.354897, 46.108772>,  <30.336468, 36.527668, 46.326260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624304, 36.354897, 46.108772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500246, -0.220611, 0.837308,
		-0.481609, -0.874510, 0.057323,
		0.719588, -0.431930, -0.543718,
		30.840179, 36.225319, 45.945656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476143, 35.798119, 46.614189>,  <30.336468, 36.527668, 46.326260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476143, 35.798119, 46.614189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.786875, 35.992340, 46.453804>,  <30.973314, 36.108871, 46.357571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.786875, 35.992340, 46.453804>,  <30.476143, 35.798119, 46.614189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786875, 35.992340, 46.453804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488698, -0.063290, 0.870155,
		0.397130, -0.871912, -0.286455,
		0.776828, 0.485554, -0.400967,
		31.019924, 36.138008, 46.333515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144026, 35.441944, 46.844540>,  <30.476143, 35.798119, 46.614189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144026, 35.441944, 46.844540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224361, 35.822285, 46.750267>,  <31.272562, 36.050488, 46.693703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224361, 35.822285, 46.750267>,  <31.144026, 35.441944, 46.844540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224361, 35.822285, 46.750267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547344, 0.090610, 0.831988,
		0.812452, -0.296095, -0.502245,
		0.200839, 0.950851, -0.235683,
		31.284613, 36.107540, 46.679562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815578, 35.543350, 46.663395>,  <31.144026, 35.441944, 46.844540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815578, 35.543350, 46.663395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639011, 35.863430, 46.825790>,  <31.533072, 36.055477, 46.923229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639011, 35.863430, 46.825790>,  <31.815578, 35.543350, 46.663395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639011, 35.863430, 46.825790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608650, -0.065434, 0.790736,
		0.659313, 0.596151, -0.458159,
		-0.441419, 0.800201, 0.405989,
		31.506586, 36.103489, 46.947586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254795, 36.004631, 46.870682>,  <31.815578, 35.543350, 46.663395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254795, 36.004631, 46.870682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951120, 36.068798, 47.122997>,  <31.768915, 36.107296, 47.274387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951120, 36.068798, 47.122997>,  <32.254795, 36.004631, 46.870682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951120, 36.068798, 47.122997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650403, 0.150378, 0.744555,
		0.024581, 0.975527, -0.218501,
		-0.759191, 0.160415, 0.630790,
		31.723364, 36.116924, 47.312233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367970, 36.644382, 47.284004>,  <32.254795, 36.004631, 46.870682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367970, 36.644382, 47.284004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145111, 36.404369, 47.513630>,  <32.011395, 36.260361, 47.651405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145111, 36.404369, 47.513630>,  <32.367970, 36.644382, 47.284004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145111, 36.404369, 47.513630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592260, 0.197438, 0.781183,
		-0.582078, 0.775227, 0.245375,
		-0.557147, -0.600035, 0.574060,
		31.977966, 36.224358, 47.685848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175438, 36.959656, 47.961124>,  <32.367970, 36.644382, 47.284004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175438, 36.959656, 47.961124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175064, 36.563332, 48.015236>,  <32.174839, 36.325539, 48.047703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175064, 36.563332, 48.015236>,  <32.175438, 36.959656, 47.961124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175064, 36.563332, 48.015236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749380, 0.088874, 0.656149,
		-0.662140, 0.101987, 0.742408,
		-0.000938, -0.990808, 0.135274,
		32.174782, 36.266090, 48.055817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041729, 36.615822, 48.790691>,  <32.175438, 36.959656, 47.961124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041729, 36.615822, 48.790691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280552, 36.421028, 48.535706>,  <32.423847, 36.304150, 48.382713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280552, 36.421028, 48.535706>,  <32.041729, 36.615822, 48.790691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280552, 36.421028, 48.535706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801121, 0.320861, 0.505226,
		-0.041502, -0.812337, 0.581710,
		0.597061, -0.486988, -0.637464,
		32.459671, 36.274933, 48.344467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025940, 36.137630, 49.372673>,  <32.041729, 36.615822, 48.790691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025940, 36.137630, 49.372673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248474, 36.010406, 49.679745>,  <32.381996, 35.934071, 49.863987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248474, 36.010406, 49.679745>,  <32.025940, 36.137630, 49.372673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248474, 36.010406, 49.679745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800301, 0.453711, -0.392001,
		-0.223623, 0.832456, 0.506961,
		0.556338, -0.318061, 0.767676,
		32.415375, 35.914989, 49.910046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405170, 36.684704, 49.487946>,  <32.025940, 36.137630, 49.372673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405170, 36.684704, 49.487946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586193, 36.365635, 49.647400>,  <32.694809, 36.174194, 49.743073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586193, 36.365635, 49.647400>,  <32.405170, 36.684704, 49.487946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586193, 36.365635, 49.647400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866325, 0.287335, -0.408559,
		0.211356, 0.530242, 0.821080,
		0.452560, -0.797673, 0.398631,
		32.721962, 36.126331, 49.766991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046196, 36.959164, 49.608841>,  <32.405170, 36.684704, 49.487946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046196, 36.959164, 49.608841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103142, 36.564548, 49.641022>,  <33.137310, 36.327778, 49.660332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103142, 36.564548, 49.641022>,  <33.046196, 36.959164, 49.608841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103142, 36.564548, 49.641022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930473, 0.105664, -0.350792,
		0.337569, 0.124801, 0.932991,
		0.142363, -0.986539, 0.080455,
		33.145851, 36.268585, 49.665157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780468, 36.915806, 49.784962>,  <33.046196, 36.959164, 49.608841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780468, 36.915806, 49.784962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678986, 36.546234, 49.670433>,  <33.618095, 36.324490, 49.601715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678986, 36.546234, 49.670433>,  <33.780468, 36.915806, 49.784962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678986, 36.546234, 49.670433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896085, -0.113043, -0.429247,
		0.364229, -0.365470, 0.856603,
		-0.253710, -0.923933, -0.286318,
		33.602871, 36.269054, 49.584538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351543, 36.543152, 49.892563>,  <33.780468, 36.915806, 49.784962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351543, 36.543152, 49.892563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167141, 36.326591, 49.611320>,  <34.056499, 36.196655, 49.442574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167141, 36.326591, 49.611320>,  <34.351543, 36.543152, 49.892563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167141, 36.326591, 49.611320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887066, -0.259480, -0.381817,
		0.024272, -0.799724, 0.599878,
		-0.461005, -0.541399, -0.703109,
		34.028839, 36.164173, 49.400387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690479, 35.913467, 49.778877>,  <34.351543, 36.543152, 49.892563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690479, 35.913467, 49.778877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493195, 35.956898, 49.433632>,  <34.374825, 35.982956, 49.226486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493195, 35.956898, 49.433632>,  <34.690479, 35.913467, 49.778877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493195, 35.956898, 49.433632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847869, -0.161936, -0.504871,
		-0.194585, -0.980810, -0.012190,
		-0.493208, 0.108576, -0.863109,
		34.345230, 35.989471, 49.174698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046535, 35.394489, 49.419800>,  <34.690479, 35.913467, 49.778877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046535, 35.394489, 49.419800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829525, 35.603588, 49.156769>,  <34.699318, 35.729046, 48.998951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829525, 35.603588, 49.156769>,  <35.046535, 35.394489, 49.419800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829525, 35.603588, 49.156769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766718, -0.011708, -0.641876,
		-0.343238, -0.852407, -0.394448,
		-0.542522, 0.522747, -0.657575,
		34.666767, 35.760410, 48.959496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266872, 35.037212, 48.945286>,  <35.046535, 35.394489, 49.419800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266872, 35.037212, 48.945286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105846, 35.374104, 48.801846>,  <35.009232, 35.576237, 48.715782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105846, 35.374104, 48.801846>,  <35.266872, 35.037212, 48.945286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105846, 35.374104, 48.801846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715767, 0.045418, -0.696860,
		-0.570629, -0.537204, -0.621124,
		-0.402566, 0.842229, -0.358596,
		34.985077, 35.626774, 48.694267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081451, 34.990852, 48.210518>,  <35.266872, 35.037212, 48.945286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081451, 34.990852, 48.210518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156002, 35.375511, 48.291019>,  <35.200733, 35.606304, 48.339321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156002, 35.375511, 48.291019>,  <35.081451, 34.990852, 48.210518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156002, 35.375511, 48.291019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691323, 0.017189, -0.722341,
		-0.698095, 0.273758, -0.661604,
		0.186374, 0.961645, 0.201254,
		35.211914, 35.664005, 48.351395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279453, 35.324726, 47.603512>,  <35.081451, 34.990852, 48.210518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279453, 35.324726, 47.603512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420258, 35.574158, 47.882721>,  <35.504742, 35.723816, 48.050247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420258, 35.574158, 47.882721>,  <35.279453, 35.324726, 47.603512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420258, 35.574158, 47.882721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788104, 0.204865, -0.580450,
		-0.504956, 0.754443, -0.419328,
		0.352011, 0.623575, 0.698027,
		35.525860, 35.761230, 48.092129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805595, 35.735928, 47.218399>,  <35.279453, 35.324726, 47.603512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805595, 35.735928, 47.218399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886364, 35.822952, 47.600372>,  <35.934826, 35.875168, 47.829556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886364, 35.822952, 47.600372>,  <35.805595, 35.735928, 47.218399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886364, 35.822952, 47.600372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962876, 0.134262, -0.234188,
		-0.179162, 0.966768, -0.182376,
		0.201920, 0.217563, 0.954932,
		35.946941, 35.888222, 47.886852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159763, 36.392429, 47.231384>,  <35.805595, 35.735928, 47.218399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159763, 36.392429, 47.231384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.268913, 36.199238, 47.564194>,  <36.334404, 36.083321, 47.763882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.268913, 36.199238, 47.564194>,  <36.159763, 36.392429, 47.231384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268913, 36.199238, 47.564194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962028, 0.131081, -0.239414,
		0.006570, 0.865763, 0.500411,
		0.272870, -0.482983, 0.832027,
		36.350773, 36.054344, 47.813801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540661, 36.894863, 47.616394>,  <36.159763, 36.392429, 47.231384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540661, 36.894863, 47.616394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621273, 36.522385, 47.737888>,  <36.669640, 36.298897, 47.810783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621273, 36.522385, 47.737888>,  <36.540661, 36.894863, 47.616394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621273, 36.522385, 47.737888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955909, 0.119364, -0.268311,
		0.213596, 0.344417, 0.914196,
		0.201533, -0.931198, 0.303736,
		36.681732, 36.243027, 47.829010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195099, 36.923000, 47.920219>,  <36.540661, 36.894863, 47.616394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195099, 36.923000, 47.920219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184032, 36.526375, 47.869579>,  <37.177395, 36.288399, 47.839195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184032, 36.526375, 47.869579>,  <37.195099, 36.923000, 47.920219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184032, 36.526375, 47.869579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988690, -0.008464, -0.149733,
		0.147399, -0.129311, 0.980588,
		-0.027662, -0.991568, -0.126601,
		37.175735, 36.228905, 47.831600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774895, 36.627476, 48.285896>,  <37.195099, 36.923000, 47.920219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774895, 36.627476, 48.285896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680222, 36.365849, 47.998512>,  <37.623417, 36.208874, 47.826080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680222, 36.365849, 47.998512>,  <37.774895, 36.627476, 48.285896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680222, 36.365849, 47.998512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954448, -0.018232, -0.297821,
		0.181695, -0.756220, 0.628585,
		-0.236678, -0.654064, -0.718460,
		37.609219, 36.169628, 47.782974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067215, 35.986561, 48.441223>,  <37.774895, 36.627476, 48.285896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067215, 35.986561, 48.441223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027058, 36.055573, 48.049274>,  <38.002964, 36.096977, 47.814106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027058, 36.055573, 48.049274>,  <38.067215, 35.986561, 48.441223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027058, 36.055573, 48.049274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972584, -0.190616, -0.133211,
		-0.209763, -0.966385, -0.148658,
		-0.100397, 0.172525, -0.979875,
		37.996937, 36.107330, 47.755310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223549, 35.364124, 48.052731>,  <38.067215, 35.986561, 48.441223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223549, 35.364124, 48.052731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305954, 35.687752, 47.832561>,  <38.355396, 35.881927, 47.700462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305954, 35.687752, 47.832561>,  <38.223549, 35.364124, 48.052731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305954, 35.687752, 47.832561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864038, -0.414439, -0.285796,
		-0.459345, -0.416706, -0.784447,
		0.206013, 0.809071, -0.550421,
		38.367760, 35.930473, 47.667435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725704, 35.264938, 47.599041>,  <38.223549, 35.364124, 48.052731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725704, 35.264938, 47.599041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822132, 35.652473, 47.621784>,  <38.879990, 35.884995, 47.635429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822132, 35.652473, 47.621784>,  <38.725704, 35.264938, 47.599041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822132, 35.652473, 47.621784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963320, -0.245989, 0.107253,
		0.117897, 0.028915, -0.992605,
		0.241069, 0.968841, 0.056855,
		38.894451, 35.943127, 47.638840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046265, 34.755886, 47.943962>,  <38.725704, 35.264938, 47.599041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046265, 34.755886, 47.943962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237373, 34.749245, 48.295296>,  <39.352039, 34.745262, 48.506096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237373, 34.749245, 48.295296>,  <39.046265, 34.755886, 47.943962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237373, 34.749245, 48.295296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877144, 0.046239, 0.477997,
		-0.048549, -0.998792, 0.007528,
		0.477767, -0.016603, 0.878329,
		39.380703, 34.744267, 48.558796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934544, 34.267376, 48.410080>,  <39.046265, 34.755886, 47.943962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934544, 34.267376, 48.410080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016563, 34.543964, 48.687157>,  <39.065777, 34.709915, 48.853405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016563, 34.543964, 48.687157>,  <38.934544, 34.267376, 48.410080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016563, 34.543964, 48.687157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799098, -0.290386, 0.526421,
		0.565152, -0.661474, 0.493006,
		0.205052, 0.691468, 0.692695,
		39.078079, 34.751404, 48.894966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017521, 33.954739, 49.168102>,  <38.934544, 34.267376, 48.410080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017521, 33.954739, 49.168102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916389, 34.337440, 49.225647>,  <38.855713, 34.567062, 49.260174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916389, 34.337440, 49.225647>,  <39.017521, 33.954739, 49.168102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916389, 34.337440, 49.225647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610749, -0.273145, 0.743221,
		0.750377, 0.100041, 0.653396,
		-0.252825, 0.956757, 0.143861,
		38.840542, 34.624466, 49.268806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760452, 33.857822, 49.819073>,  <39.017521, 33.954739, 49.168102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760452, 33.857822, 49.819073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620373, 34.210903, 49.693729>,  <38.536327, 34.422752, 49.618523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620373, 34.210903, 49.693729>,  <38.760452, 33.857822, 49.819073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620373, 34.210903, 49.693729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618445, 0.033364, 0.785120,
		0.703484, 0.468742, 0.534220,
		-0.350195, 0.882705, -0.313362,
		38.515316, 34.475716, 49.599720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762127, 34.411808, 50.390705>,  <38.760452, 33.857822, 49.819073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762127, 34.411808, 50.390705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492306, 34.506317, 50.110947>,  <38.330414, 34.563023, 49.943092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492306, 34.506317, 50.110947>,  <38.762127, 34.411808, 50.390705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492306, 34.506317, 50.110947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681950, 0.163366, 0.712921,
		0.282703, 0.957854, 0.050930,
		-0.674554, 0.236277, -0.699393,
		38.289940, 34.577202, 49.901131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314911, 34.840504, 50.839550>,  <38.762127, 34.411808, 50.390705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314911, 34.840504, 50.839550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096313, 34.729961, 50.523331>,  <37.965153, 34.663635, 50.333599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096313, 34.729961, 50.523331>,  <38.314911, 34.840504, 50.839550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096313, 34.729961, 50.523331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834916, 0.106257, 0.540022,
		-0.065239, 0.955162, -0.288806,
		-0.546497, -0.276359, -0.790548,
		37.932365, 34.647053, 50.286167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866570, 35.350693, 50.690334>,  <38.314911, 34.840504, 50.839550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866570, 35.350693, 50.690334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684956, 35.028790, 50.537384>,  <37.575989, 34.835648, 50.445614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684956, 35.028790, 50.537384>,  <37.866570, 35.350693, 50.690334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684956, 35.028790, 50.537384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705993, 0.063140, 0.705399,
		-0.543535, 0.590229, -0.596825,
		-0.454030, -0.804763, -0.382379,
		37.548748, 34.787361, 50.422672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184685, 35.544262, 50.702175>,  <37.866570, 35.350693, 50.690334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184685, 35.544262, 50.702175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196724, 35.145031, 50.680515>,  <37.203949, 34.905491, 50.667519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196724, 35.145031, 50.680515>,  <37.184685, 35.544262, 50.702175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196724, 35.145031, 50.680515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731220, -0.058922, 0.679593,
		-0.681478, 0.019140, -0.731589,
		0.030100, -0.998079, -0.054150,
		37.205753, 34.845608, 50.664268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497868, 35.424789, 50.507549>,  <37.184685, 35.544262, 50.702175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497868, 35.424789, 50.507549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647594, 35.102234, 50.690689>,  <36.737431, 34.908699, 50.800571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647594, 35.102234, 50.690689>,  <36.497868, 35.424789, 50.507549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647594, 35.102234, 50.690689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671675, 0.104635, 0.733420,
		-0.639327, -0.582057, -0.502463,
		0.374317, -0.806387, 0.457849,
		36.759892, 34.860317, 50.828045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872265, 35.026169, 50.573608>,  <36.497868, 35.424789, 50.507549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872265, 35.026169, 50.573608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154476, 34.897934, 50.826416>,  <36.323803, 34.820992, 50.978100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154476, 34.897934, 50.826416>,  <35.872265, 35.026169, 50.573608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154476, 34.897934, 50.826416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520715, 0.370430, 0.769180,
		-0.480710, -0.871782, 0.094414,
		0.705531, -0.320590, 0.632019,
		36.366135, 34.801758, 51.016022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514084, 34.584171, 50.973270>,  <35.872265, 35.026169, 50.573608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514084, 34.584171, 50.973270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845203, 34.662064, 51.183727>,  <36.043877, 34.708797, 51.310001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845203, 34.662064, 51.183727>,  <35.514084, 34.584171, 50.973270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845203, 34.662064, 51.183727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556417, 0.165032, 0.814349,
		0.071745, -0.966874, 0.244963,
		0.827800, 0.194727, 0.526145,
		36.093544, 34.720482, 51.341572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399303, 34.269478, 51.564999>,  <35.514084, 34.584171, 50.973270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399303, 34.269478, 51.564999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679562, 34.540836, 51.653439>,  <35.847717, 34.703651, 51.706501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679562, 34.540836, 51.653439>,  <35.399303, 34.269478, 51.564999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679562, 34.540836, 51.653439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481493, 0.220858, 0.848166,
		0.526560, -0.700717, 0.481385,
		0.700642, 0.678394, 0.221095,
		35.889755, 34.744354, 51.719769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535854, 34.247253, 52.384518>,  <35.399303, 34.269478, 51.564999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535854, 34.247253, 52.384518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739887, 34.578480, 52.291466>,  <35.862309, 34.777218, 52.235634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739887, 34.578480, 52.291466>,  <35.535854, 34.247253, 52.384518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739887, 34.578480, 52.291466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326179, 0.436484, 0.838504,
		0.795879, -0.351827, 0.492742,
		0.510082, 0.828070, -0.232630,
		35.892914, 34.826900, 52.221676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923946, 34.505558, 52.876934>,  <35.535854, 34.247253, 52.384518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923946, 34.505558, 52.876934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814766, 34.836903, 52.681259>,  <35.749256, 35.035709, 52.563854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814766, 34.836903, 52.681259>,  <35.923946, 34.505558, 52.876934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814766, 34.836903, 52.681259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311050, 0.405196, 0.859688,
		0.910354, 0.386816, 0.147064,
		-0.272952, 0.828365, -0.489191,
		35.732880, 35.085411, 52.534500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016216, 35.044765, 53.355034>,  <35.923946, 34.505558, 52.876934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016216, 35.044765, 53.355034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816509, 35.225548, 53.059341>,  <35.696686, 35.334015, 52.881924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816509, 35.225548, 53.059341>,  <36.016216, 35.044765, 53.355034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816509, 35.225548, 53.059341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375386, 0.656119, 0.654670,
		0.780905, 0.604356, -0.157925,
		-0.499272, 0.451953, -0.739234,
		35.666729, 35.361134, 52.837570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114151, 35.768967, 53.563686>,  <36.016216, 35.044765, 53.355034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114151, 35.768967, 53.563686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795181, 35.741364, 53.323902>,  <35.603798, 35.724800, 53.180031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795181, 35.741364, 53.323902>,  <36.114151, 35.768967, 53.563686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795181, 35.741364, 53.323902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485860, 0.662566, 0.570040,
		0.357842, 0.745817, -0.561877,
		-0.797427, -0.069009, -0.599457,
		35.555954, 35.720661, 53.144066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012856, 36.433048, 53.206280>,  <36.114151, 35.768967, 53.563686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012856, 36.433048, 53.206280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670650, 36.227028, 53.227516>,  <35.465328, 36.103416, 53.240257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670650, 36.227028, 53.227516>,  <36.012856, 36.433048, 53.206280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670650, 36.227028, 53.227516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460487, 0.803729, 0.376790,
		-0.236740, 0.297900, -0.924776,
		-0.855515, -0.515049, 0.053095,
		35.413998, 36.072514, 53.243446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425167, 36.893970, 53.033245>,  <36.012856, 36.433048, 53.206280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425167, 36.893970, 53.033245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.259960, 36.589333, 53.233002>,  <35.160835, 36.406551, 53.352856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.259960, 36.589333, 53.233002>,  <35.425167, 36.893970, 53.033245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259960, 36.589333, 53.233002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454025, 0.647531, 0.612017,
		-0.789480, 0.026037, -0.613223,
		-0.413016, -0.761594, 0.499392,
		35.136055, 36.360855, 53.382820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722904, 37.003502, 53.061466>,  <35.425167, 36.893970, 53.033245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722904, 37.003502, 53.061466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749294, 36.761101, 53.378555>,  <34.765129, 36.615662, 53.568810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749294, 36.761101, 53.378555>,  <34.722904, 37.003502, 53.061466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749294, 36.761101, 53.378555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628483, 0.591825, 0.504731,
		-0.775020, -0.531513, -0.341815,
		0.065976, -0.606001, 0.792723,
		34.769089, 36.579300, 53.616371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035027, 36.785896, 53.316311>,  <34.722904, 37.003502, 53.061466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035027, 36.785896, 53.316311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310871, 36.751747, 53.603962>,  <34.476376, 36.731258, 53.776554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310871, 36.751747, 53.603962>,  <34.035027, 36.785896, 53.316311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310871, 36.751747, 53.603962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641112, 0.389821, 0.661071,
		-0.336771, -0.916925, 0.214090,
		0.689610, -0.085374, 0.719131,
		34.517754, 36.726135, 53.819702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721638, 36.610229, 53.904545>,  <34.035027, 36.785896, 53.316311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721638, 36.610229, 53.904545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063484, 36.743160, 54.064140>,  <34.268593, 36.822918, 54.159897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063484, 36.743160, 54.064140>,  <33.721638, 36.610229, 53.904545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063484, 36.743160, 54.064140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516124, 0.459327, 0.722935,
		0.056986, -0.823758, 0.564070,
		0.854616, 0.332328, 0.398986,
		34.319870, 36.842857, 54.183834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593376, 36.624283, 54.666622>,  <33.721638, 36.610229, 53.904545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593376, 36.624283, 54.666622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907921, 36.868462, 54.628685>,  <34.096645, 37.014969, 54.605923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907921, 36.868462, 54.628685>,  <33.593376, 36.624283, 54.666622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907921, 36.868462, 54.628685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378453, 0.597358, 0.707062,
		0.488278, -0.520111, 0.700763,
		0.786357, 0.610449, -0.094839,
		34.143829, 37.051598, 54.600235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861221, 36.680172, 55.390602>,  <33.593376, 36.624283, 54.666622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861221, 36.680172, 55.390602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015797, 36.983086, 55.180008>,  <34.108540, 37.164833, 55.053654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015797, 36.983086, 55.180008>,  <33.861221, 36.680172, 55.390602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015797, 36.983086, 55.180008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281560, 0.640437, 0.714538,
		0.878290, -0.127886, 0.460709,
		0.386434, 0.757289, -0.526481,
		34.131725, 37.210274, 55.022064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236340, 37.093597, 55.890129>,  <33.861221, 36.680172, 55.390602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236340, 37.093597, 55.890129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.189102, 37.334602, 55.574398>,  <34.160759, 37.479206, 55.384960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.189102, 37.334602, 55.574398>,  <34.236340, 37.093597, 55.890129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189102, 37.334602, 55.574398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206414, 0.762628, 0.613019,
		0.971312, 0.235320, 0.034308,
		-0.118091, 0.602514, -0.789323,
		34.153675, 37.515358, 55.337601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541668, 37.725243, 56.077957>,  <34.236340, 37.093597, 55.890129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541668, 37.725243, 56.077957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311398, 37.861839, 55.780773>,  <34.173237, 37.943798, 55.602463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311398, 37.861839, 55.780773>,  <34.541668, 37.725243, 56.077957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311398, 37.861839, 55.780773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333586, 0.731480, 0.594691,
		0.746540, 0.590187, -0.307176,
		-0.575671, 0.341491, -0.742958,
		34.138695, 37.964287, 55.557884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690380, 38.448757, 55.916245>,  <34.541668, 37.725243, 56.077957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690380, 38.448757, 55.916245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316338, 38.365540, 55.801502>,  <34.091911, 38.315609, 55.732655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316338, 38.365540, 55.801502>,  <34.690380, 38.448757, 55.916245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316338, 38.365540, 55.801502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350464, 0.662642, 0.661877,
		0.052386, 0.719461, -0.692554,
		-0.935110, -0.208042, -0.286859,
		34.035805, 38.303127, 55.715446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356236, 39.129856, 55.863411>,  <34.690380, 38.448757, 55.916245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356236, 39.129856, 55.863411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064354, 38.856487, 55.854740>,  <33.889225, 38.692467, 55.849537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064354, 38.856487, 55.854740>,  <34.356236, 39.129856, 55.863411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064354, 38.856487, 55.854740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556990, 0.575723, 0.598586,
		-0.396606, 0.448864, -0.800765,
		-0.729702, -0.683421, -0.021678,
		33.845444, 38.651463, 55.848236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720627, 39.526562, 55.784920>,  <34.356236, 39.129856, 55.863411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720627, 39.526562, 55.784920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597748, 39.172981, 55.925922>,  <33.524021, 38.960835, 56.010525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597748, 39.172981, 55.925922>,  <33.720627, 39.526562, 55.784920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597748, 39.172981, 55.925922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518189, 0.466066, 0.717121,
		-0.798191, 0.037632, -0.601227,
		-0.307199, -0.883949, 0.352509,
		33.505589, 38.907795, 56.031673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093590, 39.678780, 56.017677>,  <33.720627, 39.526562, 55.784920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093590, 39.678780, 56.017677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183563, 39.326717, 56.184879>,  <33.237549, 39.115479, 56.285198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183563, 39.326717, 56.184879>,  <33.093590, 39.678780, 56.017677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183563, 39.326717, 56.184879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592374, 0.217084, 0.775866,
		-0.773626, -0.422133, -0.472553,
		0.224935, -0.880158, 0.418002,
		33.251045, 39.062672, 56.310280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451893, 39.350788, 56.294571>,  <33.093590, 39.678780, 56.017677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451893, 39.350788, 56.294571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760708, 39.207443, 56.504539>,  <32.945995, 39.121437, 56.630520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760708, 39.207443, 56.504539>,  <32.451893, 39.350788, 56.294571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760708, 39.207443, 56.504539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485470, 0.200556, 0.850938,
		-0.410218, -0.911787, -0.019137,
		0.772036, -0.358360, 0.524917,
		32.992317, 39.099934, 56.662014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193840, 38.917061, 56.858715>,  <32.451893, 39.350788, 56.294571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193840, 38.917061, 56.858715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556488, 39.032360, 56.981976>,  <32.774075, 39.101540, 57.055931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556488, 39.032360, 56.981976>,  <32.193840, 38.917061, 56.858715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556488, 39.032360, 56.981976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377823, 0.229402, 0.897009,
		0.187873, -0.929670, 0.316887,
		0.906616, 0.288251, 0.308152,
		32.828472, 39.118835, 57.074421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294312, 38.640057, 57.462734>,  <32.193840, 38.917061, 56.858715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294312, 38.640057, 57.462734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554485, 38.943752, 57.471607>,  <32.710590, 39.125969, 57.476933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554485, 38.943752, 57.471607>,  <32.294312, 38.640057, 57.462734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554485, 38.943752, 57.471607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443758, 0.356134, 0.822343,
		0.616455, -0.544723, 0.568559,
		0.650432, 0.759240, 0.022185,
		32.749615, 39.171524, 57.478264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532207, 38.648693, 58.083282>,  <32.294312, 38.640057, 57.462734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532207, 38.648693, 58.083282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628162, 39.011684, 57.945339>,  <32.685734, 39.229481, 57.862572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628162, 39.011684, 57.945339>,  <32.532207, 38.648693, 58.083282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628162, 39.011684, 57.945339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309753, 0.408216, 0.858727,
		0.920058, -0.099176, 0.379022,
		0.239888, 0.907482, -0.344862,
		32.700130, 39.283928, 57.841881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716087, 38.976017, 58.650974>,  <32.532207, 38.648693, 58.083282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716087, 38.976017, 58.650974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680878, 39.286716, 58.401524>,  <32.659752, 39.473137, 58.251854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680878, 39.286716, 58.401524>,  <32.716087, 38.976017, 58.650974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680878, 39.286716, 58.401524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221456, 0.595131, 0.772513,
		0.971189, 0.206108, 0.119628,
		-0.088027, 0.776748, -0.623629,
		32.654469, 39.519741, 58.214436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181030, 39.501644, 58.949974>,  <32.716087, 38.976017, 58.650974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181030, 39.501644, 58.949974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916786, 39.670208, 58.701454>,  <32.758240, 39.771347, 58.552341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916786, 39.670208, 58.701454>,  <33.181030, 39.501644, 58.949974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916786, 39.670208, 58.701454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429276, 0.466907, 0.773124,
		0.615889, 0.777441, -0.127543,
		-0.660609, 0.421407, -0.621299,
		32.718605, 39.796631, 58.515064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204777, 40.259308, 58.924427>,  <33.181030, 39.501644, 58.949974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204777, 40.259308, 58.924427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832817, 40.150959, 58.824898>,  <32.609642, 40.085949, 58.765182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832817, 40.150959, 58.824898>,  <33.204777, 40.259308, 58.924427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832817, 40.150959, 58.824898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352392, 0.462301, 0.813694,
		-0.105380, 0.844337, -0.525348,
		-0.929901, -0.270875, -0.248820,
		32.553848, 40.069695, 58.750252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857498, 40.774158, 59.311256>,  <33.204777, 40.259308, 58.924427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857498, 40.774158, 59.311256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.548294, 40.541485, 59.209984>,  <32.362770, 40.401882, 59.149220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.548294, 40.541485, 59.209984>,  <32.857498, 40.774158, 59.311256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548294, 40.541485, 59.209984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523076, 0.358600, 0.773174,
		-0.358955, 0.730101, -0.581467,
		-0.773009, -0.581685, -0.253177,
		32.316391, 40.366978, 59.134029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302937, 41.143009, 59.278851>,  <32.857498, 40.774158, 59.311256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302937, 41.143009, 59.278851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136887, 40.781677, 59.322044>,  <32.037254, 40.564877, 59.347961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136887, 40.781677, 59.322044>,  <32.302937, 41.143009, 59.278851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136887, 40.781677, 59.322044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677014, 0.386027, 0.626606,
		-0.607716, 0.187017, -0.771819,
		-0.415130, -0.903331, 0.107982,
		32.012348, 40.510677, 59.354439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700783, 41.347996, 59.154266>,  <32.302937, 41.143009, 59.278851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700783, 41.347996, 59.154266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660479, 40.990898, 59.329926>,  <31.636295, 40.776638, 59.435322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660479, 40.990898, 59.329926>,  <31.700783, 41.347996, 59.154266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660479, 40.990898, 59.329926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760448, 0.353727, 0.544607,
		-0.641534, -0.279075, -0.714529,
		-0.100762, -0.892745, 0.439149,
		31.630251, 40.723076, 59.461670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965559, 41.187450, 59.106339>,  <31.700783, 41.347996, 59.154266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965559, 41.187450, 59.106339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152399, 41.008339, 59.411312>,  <31.264503, 40.900871, 59.594296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152399, 41.008339, 59.411312>,  <30.965559, 41.187450, 59.106339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152399, 41.008339, 59.411312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650485, 0.410035, 0.639329,
		-0.598904, -0.794585, -0.099746,
		0.467101, -0.447780, 0.762437,
		31.292530, 40.874004, 59.640041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414301, 41.046982, 59.582981>,  <30.965559, 41.187450, 59.106339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414301, 41.046982, 59.582981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.745327, 41.005066, 59.803581>,  <30.943943, 40.979916, 59.935944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.745327, 41.005066, 59.803581>,  <30.414301, 41.046982, 59.582981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745327, 41.005066, 59.803581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453857, 0.453290, 0.767165,
		-0.330382, -0.885182, 0.327567,
		0.827564, -0.104789, 0.551505,
		30.993597, 40.973629, 59.969032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199944, 40.860046, 60.240635>,  <30.414301, 41.046982, 59.582981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199944, 40.860046, 60.240635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571371, 40.994045, 60.304558>,  <30.794228, 41.074444, 60.342911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571371, 40.994045, 60.304558>,  <30.199944, 40.860046, 60.240635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571371, 40.994045, 60.304558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286889, 0.374638, 0.881670,
		0.235482, -0.864539, 0.443983,
		0.928570, 0.334991, 0.159806,
		30.849941, 41.094543, 60.352501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155287, 40.845062, 60.900440>,  <30.199944, 40.860046, 60.240635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155287, 40.845062, 60.900440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.483667, 41.059521, 60.821869>,  <30.680696, 41.188198, 60.774727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.483667, 41.059521, 60.821869>,  <30.155287, 40.845062, 60.900440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483667, 41.059521, 60.821869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076571, 0.444278, 0.892611,
		0.565843, -0.717747, 0.405783,
		0.820949, 0.536149, -0.196433,
		30.729952, 41.220364, 60.762939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543823, 40.872429, 61.525200>,  <30.155287, 40.845062, 60.900440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543823, 40.872429, 61.525200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676802, 41.178032, 61.304016>,  <30.756590, 41.361393, 61.171307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676802, 41.178032, 61.304016>,  <30.543823, 40.872429, 61.525200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676802, 41.178032, 61.304016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027912, 0.578082, 0.815501,
		0.942708, -0.286546, 0.170857,
		0.332448, 0.764011, -0.552961,
		30.776537, 41.407234, 61.138126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194674, 41.229713, 61.752617>,  <30.543823, 40.872429, 61.525200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194674, 41.229713, 61.752617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.960398, 41.492142, 61.562233>,  <30.819832, 41.649597, 61.448002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.960398, 41.492142, 61.562233>,  <31.194674, 41.229713, 61.752617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960398, 41.492142, 61.562233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032468, 0.605735, 0.795004,
		0.809884, 0.450173, -0.376075,
		-0.585691, 0.656071, -0.475959,
		30.784691, 41.688965, 61.419445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597254, 41.638279, 61.910435>,  <31.194674, 41.229713, 61.752617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597254, 41.638279, 61.910435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.242994, 41.806889, 61.832520>,  <31.030437, 41.908054, 61.785770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.242994, 41.806889, 61.832520>,  <31.597254, 41.638279, 61.910435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242994, 41.806889, 61.832520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179963, 0.698287, 0.692827,
		0.428060, 0.578547, -0.694296,
		-0.885651, 0.421519, -0.194792,
		30.977299, 41.933346, 61.774082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597136, 42.427906, 61.773270>,  <31.597254, 41.638279, 61.910435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597136, 42.427906, 61.773270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224550, 42.371559, 61.907452>,  <31.000999, 42.337753, 61.987961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224550, 42.371559, 61.907452>,  <31.597136, 42.427906, 61.773270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224550, 42.371559, 61.907452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135705, 0.720965, 0.679554,
		-0.337578, 0.678504, -0.652437,
		-0.931464, -0.140863, 0.335458,
		30.945110, 42.329300, 62.008087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124039, 43.098709, 61.666847>,  <31.597136, 42.427906, 61.773270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124039, 43.098709, 61.666847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.050014, 42.860512, 61.979549>,  <31.005600, 42.717594, 62.167171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.050014, 42.860512, 61.979549>,  <31.124039, 43.098709, 61.666847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050014, 42.860512, 61.979549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186005, 0.759892, 0.622869,
		-0.964964, 0.260679, -0.029861,
		-0.185060, -0.595492, 0.781756,
		30.994497, 42.681866, 62.214077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566988, 43.435112, 62.007362>,  <31.124039, 43.098709, 61.666847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566988, 43.435112, 62.007362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.814354, 43.209339, 62.226078>,  <30.962774, 43.073875, 62.357307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.814354, 43.209339, 62.226078>,  <30.566988, 43.435112, 62.007362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814354, 43.209339, 62.226078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443220, 0.825082, 0.350422,
		-0.648935, 0.025641, 0.760411,
		0.618417, -0.564430, 0.546790,
		30.999880, 43.040009, 62.390114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424849, 43.432781, 62.705273>,  <30.566988, 43.435112, 62.007362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424849, 43.432781, 62.705273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807592, 43.402889, 62.592964>,  <31.037239, 43.384956, 62.525578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807592, 43.402889, 62.592964>,  <30.424849, 43.432781, 62.705273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807592, 43.402889, 62.592964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163838, 0.936838, 0.309018,
		0.239950, -0.341689, 0.908666,
		0.956860, -0.074725, -0.280776,
		31.094650, 43.380470, 62.508732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723907, 43.746273, 63.223602>,  <30.424849, 43.432781, 62.705273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723907, 43.746273, 63.223602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.975109, 43.779999, 62.914150>,  <31.125830, 43.800236, 62.728477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.975109, 43.779999, 62.914150>,  <30.723907, 43.746273, 63.223602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975109, 43.779999, 62.914150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090991, 0.979339, 0.180597,
		0.772874, -0.183808, 0.607355,
		0.628002, 0.084315, -0.773631,
		31.163509, 43.805294, 62.682060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551054, 43.949333, 63.257980>,  <30.723907, 43.746273, 63.223602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551054, 43.949333, 63.257980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344563, 44.106136, 62.953392>,  <31.220667, 44.200218, 62.770638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344563, 44.106136, 62.953392>,  <31.551054, 43.949333, 63.257980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344563, 44.106136, 62.953392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423674, 0.889579, 0.170731,
		0.744316, -0.234479, -0.625311,
		-0.516231, 0.392006, -0.761470,
		31.189693, 44.223740, 62.724953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946644, 44.164394, 62.755081>,  <31.551054, 43.949333, 63.257980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946644, 44.164394, 62.755081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656553, 44.439781, 62.758301>,  <31.482498, 44.605011, 62.760231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656553, 44.439781, 62.758301>,  <31.946644, 44.164394, 62.755081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656553, 44.439781, 62.758301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688148, 0.724416, 0.040916,
		0.022338, 0.035212, -0.999130,
		-0.725227, 0.688463, 0.008049,
		31.438986, 44.646320, 62.760715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159927, 44.636707, 62.242046>,  <31.946644, 44.164394, 62.755081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159927, 44.636707, 62.242046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915506, 44.775322, 62.526730>,  <31.768852, 44.858490, 62.697540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915506, 44.775322, 62.526730>,  <32.159927, 44.636707, 62.242046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915506, 44.775322, 62.526730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473334, 0.880599, -0.022374,
		-0.634480, 0.323202, -0.702122,
		-0.611057, 0.346534, 0.711705,
		31.732189, 44.879284, 62.740242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803612, 44.518204, 61.540543>,  <32.159927, 44.636707, 62.242046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803612, 44.518204, 61.540543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636513, 44.493347, 61.903118>,  <31.536253, 44.478432, 62.120663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636513, 44.493347, 61.903118>,  <31.803612, 44.518204, 61.540543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636513, 44.493347, 61.903118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598329, -0.769596, 0.222989,
		0.683732, 0.635500, 0.358679,
		-0.417747, -0.062143, 0.906436,
		31.511189, 44.474705, 62.175049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520323, 44.775913, 60.975151>,  <31.803612, 44.518204, 61.540543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520323, 44.775913, 60.975151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.286282, 44.453098, 61.007008>,  <31.145857, 44.259411, 61.026123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.286282, 44.453098, 61.007008>,  <31.520323, 44.775913, 60.975151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286282, 44.453098, 61.007008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083303, -0.157500, -0.983999,
		0.806668, -0.569108, 0.159383,
		-0.585105, -0.807038, 0.079642,
		31.110750, 44.210987, 61.030899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892031, 44.147491, 60.780682>,  <31.520323, 44.775913, 60.975151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892031, 44.147491, 60.780682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.512625, 44.025467, 60.746593>,  <31.284981, 43.952251, 60.726139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.512625, 44.025467, 60.746593>,  <31.892031, 44.147491, 60.780682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512625, 44.025467, 60.746593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181839, -0.304153, -0.935107,
		0.259341, -0.902458, 0.343964,
		-0.948513, -0.305058, -0.085223,
		31.228071, 43.933949, 60.721027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935568, 43.572746, 60.328613>,  <31.892031, 44.147491, 60.780682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935568, 43.572746, 60.328613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539656, 43.629459, 60.322468>,  <31.302109, 43.663486, 60.318783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539656, 43.629459, 60.322468>,  <31.935568, 43.572746, 60.328613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539656, 43.629459, 60.322468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042887, -0.398653, -0.916099,
		-0.136007, -0.906077, 0.400659,
		-0.989779, 0.141779, -0.015361,
		31.242722, 43.671993, 60.317860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697596, 43.016323, 59.991089>,  <31.935568, 43.572746, 60.328613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697596, 43.016323, 59.991089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414944, 43.297337, 59.957340>,  <31.245352, 43.465946, 59.937092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414944, 43.297337, 59.957340>,  <31.697596, 43.016323, 59.991089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414944, 43.297337, 59.957340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323207, -0.426540, -0.844749,
		-0.629455, -0.569654, 0.528470,
		-0.706628, 0.702537, -0.084372,
		31.202955, 43.508099, 59.932030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127686, 42.611195, 59.649662>,  <31.697596, 43.016323, 59.991089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127686, 42.611195, 59.649662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041777, 42.999996, 59.611530>,  <30.990232, 43.233276, 59.588650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041777, 42.999996, 59.611530>,  <31.127686, 42.611195, 59.649662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041777, 42.999996, 59.611530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279334, -0.154667, -0.947655,
		-0.935866, -0.176899, 0.304731,
		-0.214771, 0.972000, -0.095333,
		30.977345, 43.291595, 59.582932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526157, 42.622276, 59.330952>,  <31.127686, 42.611195, 59.649662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526157, 42.622276, 59.330952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.705853, 42.974594, 59.271111>,  <30.813669, 43.185986, 59.235207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.705853, 42.974594, 59.271111>,  <30.526157, 42.622276, 59.330952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705853, 42.974594, 59.271111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228159, -0.048794, -0.972401,
		-0.863788, 0.470973, 0.179042,
		0.449238, 0.880797, -0.149605,
		30.840624, 43.238834, 59.226231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064047, 43.032185, 58.982895>,  <30.526157, 42.622276, 59.330952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064047, 43.032185, 58.982895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.404524, 43.221191, 58.891506>,  <30.608810, 43.334595, 58.836674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.404524, 43.221191, 58.891506>,  <30.064047, 43.032185, 58.982895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404524, 43.221191, 58.891506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249187, -0.019285, -0.968264,
		-0.461926, 0.881111, 0.101330,
		0.851194, 0.472516, -0.228469,
		30.659882, 43.362946, 58.822964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843204, 43.377552, 58.445614>,  <30.064047, 43.032185, 58.982895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843204, 43.377552, 58.445614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.242937, 43.372482, 58.431881>,  <30.482777, 43.369442, 58.423641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.242937, 43.372482, 58.431881>,  <29.843204, 43.377552, 58.445614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242937, 43.372482, 58.431881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034659, -0.026712, -0.999042,
		0.011746, 0.999563, -0.027133,
		0.999330, -0.012676, -0.034330,
		30.542736, 43.368679, 58.421581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987215, 43.850548, 57.827785>,  <29.843204, 43.377552, 58.445614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987215, 43.850548, 57.827785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288433, 43.603004, 57.917168>,  <30.469164, 43.454479, 57.970795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288433, 43.603004, 57.917168>,  <29.987215, 43.850548, 57.827785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288433, 43.603004, 57.917168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032530, -0.374215, -0.926771,
		0.657162, 0.690633, -0.301933,
		0.753047, -0.618861, 0.223454,
		30.514347, 43.417347, 57.984203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331354, 43.906471, 57.208286>,  <29.987215, 43.850548, 57.827785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331354, 43.906471, 57.208286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.474642, 43.571083, 57.372551>,  <30.560616, 43.369850, 57.471111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.474642, 43.571083, 57.372551>,  <30.331354, 43.906471, 57.208286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474642, 43.571083, 57.372551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064153, -0.416705, -0.906775,
		0.931430, 0.351170, -0.095482,
		0.358220, -0.838473, 0.410660,
		30.582108, 43.319542, 57.495750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016861, 43.856476, 56.901356>,  <30.331354, 43.906471, 57.208286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016861, 43.856476, 56.901356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.917219, 43.493317, 57.036221>,  <30.857435, 43.275421, 57.117138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.917219, 43.493317, 57.036221>,  <31.016861, 43.856476, 56.901356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917219, 43.493317, 57.036221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160495, -0.382018, -0.910112,
		0.955086, -0.172599, 0.240875,
		-0.249103, -0.907894, 0.337159,
		30.842487, 43.220947, 57.137367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581188, 43.356068, 56.686386>,  <31.016861, 43.856476, 56.901356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581188, 43.356068, 56.686386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.259033, 43.132549, 56.765476>,  <31.065741, 42.998436, 56.812931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.259033, 43.132549, 56.765476>,  <31.581188, 43.356068, 56.686386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259033, 43.132549, 56.765476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161919, -0.528294, -0.833479,
		0.570208, -0.639255, 0.515961,
		-0.805385, -0.558800, 0.197730,
		31.017418, 42.964909, 56.824795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792591, 42.823372, 56.480083>,  <31.581188, 43.356068, 56.686386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792591, 42.823372, 56.480083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.412241, 42.706219, 56.520206>,  <31.184031, 42.635929, 56.544281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.412241, 42.706219, 56.520206>,  <31.792591, 42.823372, 56.480083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412241, 42.706219, 56.520206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098898, -0.594413, -0.798055,
		0.293359, -0.748929, 0.594177,
		-0.950873, -0.292880, 0.100309,
		31.126980, 42.618355, 56.550301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789482, 42.062359, 56.554039>,  <31.792591, 42.823372, 56.480083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789482, 42.062359, 56.554039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439320, 42.191547, 56.410175>,  <31.229223, 42.269062, 56.323856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439320, 42.191547, 56.410175>,  <31.789482, 42.062359, 56.554039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439320, 42.191547, 56.410175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044088, -0.687587, -0.724762,
		-0.481375, -0.650317, 0.587678,
		-0.875405, 0.322973, -0.359658,
		31.176699, 42.288441, 56.302277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343454, 41.472725, 56.483288>,  <31.789482, 42.062359, 56.554039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343454, 41.472725, 56.483288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.208666, 41.752491, 56.231171>,  <31.127792, 41.920349, 56.079899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.208666, 41.752491, 56.231171>,  <31.343454, 41.472725, 56.483288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208666, 41.752491, 56.231171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081825, -0.645162, -0.759652,
		-0.937953, -0.307553, 0.160170,
		-0.336969, 0.699412, -0.630297,
		31.107574, 41.962315, 56.042080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783739, 41.172306, 56.174374>,  <31.343454, 41.472725, 56.483288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783739, 41.172306, 56.174374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971087, 41.458630, 55.967201>,  <31.083494, 41.630424, 55.842899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971087, 41.458630, 55.967201>,  <30.783739, 41.172306, 56.174374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971087, 41.458630, 55.967201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210353, -0.659685, -0.721503,
		-0.858128, 0.228980, -0.459548,
		0.468367, 0.715809, -0.517928,
		31.111597, 41.673374, 55.811821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595470, 41.094452, 55.474262>,  <30.783739, 41.172306, 56.174374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595470, 41.094452, 55.474262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.950838, 41.277229, 55.456783>,  <31.164059, 41.386898, 55.446297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.950838, 41.277229, 55.456783>,  <30.595470, 41.094452, 55.474262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950838, 41.277229, 55.456783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281865, -0.618181, -0.733761,
		-0.362299, 0.639573, -0.678001,
		0.888421, 0.456945, -0.043693,
		31.217365, 41.414314, 55.443676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733253, 41.127163, 54.738354>,  <30.595470, 41.094452, 55.474262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733253, 41.127163, 54.738354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090570, 41.251953, 54.867783>,  <31.304960, 41.326828, 54.945438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090570, 41.251953, 54.867783>,  <30.733253, 41.127163, 54.738354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090570, 41.251953, 54.867783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446894, -0.539442, -0.713644,
		-0.048091, 0.782096, -0.621300,
		0.893293, 0.311975, 0.323572,
		31.358559, 41.345547, 54.964855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134438, 41.412457, 54.170780>,  <30.733253, 41.127163, 54.738354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134438, 41.412457, 54.170780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408588, 41.311516, 54.444008>,  <31.573078, 41.250950, 54.607944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408588, 41.311516, 54.444008>,  <31.134438, 41.412457, 54.170780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408588, 41.311516, 54.444008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616146, -0.298971, -0.728684,
		0.388102, 0.920290, -0.049421,
		0.685376, -0.252353, 0.683065,
		31.614201, 41.235809, 54.648926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786627, 41.621250, 53.952553>,  <31.134438, 41.412457, 54.170780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786627, 41.621250, 53.952553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904404, 41.341637, 54.213215>,  <31.975071, 41.173870, 54.369614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904404, 41.341637, 54.213215>,  <31.786627, 41.621250, 53.952553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904404, 41.341637, 54.213215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712686, -0.293682, -0.637048,
		0.636696, 0.652003, 0.411716,
		0.294444, -0.699030, 0.651659,
		31.992737, 41.131927, 54.408714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517204, 41.562344, 53.897449>,  <31.786627, 41.621250, 53.952553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517204, 41.562344, 53.897449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434681, 41.225082, 54.096058>,  <32.385166, 41.022724, 54.215221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434681, 41.225082, 54.096058>,  <32.517204, 41.562344, 53.897449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434681, 41.225082, 54.096058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609527, -0.507695, -0.608870,
		0.765451, 0.177026, 0.618666,
		-0.206308, -0.843153, 0.496518,
		32.372787, 40.972137, 54.245014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144173, 41.207649, 54.073639>,  <32.517204, 41.562344, 53.897449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144173, 41.207649, 54.073639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.859661, 40.926773, 54.086311>,  <32.688953, 40.758247, 54.093914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.859661, 40.926773, 54.086311>,  <33.144173, 41.207649, 54.073639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859661, 40.926773, 54.086311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605214, -0.634724, -0.480460,
		0.357487, -0.322566, 0.876444,
		-0.711280, -0.702195, 0.031684,
		32.646278, 40.716114, 54.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598011, 40.672356, 54.239307>,  <33.144173, 41.207649, 54.073639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598011, 40.672356, 54.239307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.246002, 40.536629, 54.106388>,  <33.034798, 40.455193, 54.026638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.246002, 40.536629, 54.106388>,  <33.598011, 40.672356, 54.239307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246002, 40.536629, 54.106388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455401, -0.801459, -0.387650,
		-0.134784, -0.492469, 0.859830,
		-0.880024, -0.339318, -0.332295,
		32.981995, 40.434834, 54.006699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514866, 39.890034, 54.348400>,  <33.598011, 40.672356, 54.239307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514866, 39.890034, 54.348400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257214, 39.964939, 54.051746>,  <33.102623, 40.009884, 53.873753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257214, 39.964939, 54.051746>,  <33.514866, 39.890034, 54.348400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257214, 39.964939, 54.051746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399371, -0.744590, -0.534872,
		-0.652378, -0.640717, 0.404827,
		-0.644132, 0.187263, -0.741638,
		33.063972, 40.021118, 53.829254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232189, 39.199337, 54.122227>,  <33.514866, 39.890034, 54.348400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232189, 39.199337, 54.122227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162590, 39.448669, 53.817284>,  <33.120831, 39.598267, 53.634319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162590, 39.448669, 53.817284>,  <33.232189, 39.199337, 54.122227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162590, 39.448669, 53.817284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409022, -0.658481, -0.631747,
		-0.895783, -0.421741, -0.140383,
		-0.173994, 0.623328, -0.762357,
		33.110394, 39.635666, 53.588577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987862, 38.772209, 53.577366>,  <33.232189, 39.199337, 54.122227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987862, 38.772209, 53.577366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113541, 39.106712, 53.397606>,  <33.188950, 39.307415, 53.289749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113541, 39.106712, 53.397606>,  <32.987862, 38.772209, 53.577366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113541, 39.106712, 53.397606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445615, -0.547893, -0.707984,
		-0.838277, 0.022188, -0.544793,
		0.314197, 0.836254, -0.449398,
		33.207798, 39.357590, 53.262787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729385, 38.705284, 52.831604>,  <32.987862, 38.772209, 53.577366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729385, 38.705284, 52.831604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024940, 38.974716, 52.838932>,  <33.202274, 39.136375, 52.843330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024940, 38.974716, 52.838932>,  <32.729385, 38.705284, 52.831604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024940, 38.974716, 52.838932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414565, -0.432990, -0.800410,
		-0.531203, 0.599012, -0.599173,
		0.738891, 0.673576, 0.018323,
		33.246609, 39.176788, 52.844429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923309, 38.852058, 52.120472>,  <32.729385, 38.705284, 52.831604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923309, 38.852058, 52.120472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236343, 39.027126, 52.297558>,  <33.424164, 39.132168, 52.403809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236343, 39.027126, 52.297558>,  <32.923309, 38.852058, 52.120472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236343, 39.027126, 52.297558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548910, -0.149628, -0.822380,
		-0.293691, 0.886597, -0.357340,
		0.782588, 0.437674, 0.442717,
		33.471119, 39.158428, 52.430374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286808, 39.212204, 51.606621>,  <32.923309, 38.852058, 52.120472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286808, 39.212204, 51.606621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544022, 39.121048, 51.899078>,  <33.698349, 39.066353, 52.074554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544022, 39.121048, 51.899078>,  <33.286808, 39.212204, 51.606621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544022, 39.121048, 51.899078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661037, -0.316907, -0.680147,
		0.386706, 0.920671, -0.053136,
		0.643031, -0.227892, 0.731148,
		33.736931, 39.052681, 52.118423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901081, 39.484329, 51.424202>,  <33.286808, 39.212204, 51.606621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901081, 39.484329, 51.424202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005302, 39.218361, 51.704201>,  <34.067837, 39.058781, 51.872200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005302, 39.218361, 51.704201>,  <33.901081, 39.484329, 51.424202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005302, 39.218361, 51.704201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714795, -0.354514, -0.602816,
		0.648982, 0.657421, 0.382910,
		0.260557, -0.664919, 0.699995,
		34.083469, 39.018887, 51.914200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593346, 39.574337, 51.447231>,  <33.901081, 39.484329, 51.424202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593346, 39.574337, 51.447231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.542835, 39.211777, 51.608475>,  <34.512527, 38.994240, 51.705219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.542835, 39.211777, 51.608475>,  <34.593346, 39.574337, 51.447231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542835, 39.211777, 51.608475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625899, -0.388060, -0.676506,
		0.769614, 0.166877, 0.616317,
		-0.126274, -0.906400, 0.403105,
		34.504951, 38.939857, 51.729404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288475, 39.338684, 51.679241>,  <34.593346, 39.574337, 51.447231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288475, 39.338684, 51.679241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.062065, 39.012341, 51.631912>,  <34.926220, 38.816536, 51.603516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.062065, 39.012341, 51.631912>,  <35.288475, 39.338684, 51.679241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062065, 39.012341, 51.631912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694956, -0.395006, -0.600837,
		0.443458, -0.422316, 0.790566,
		-0.566022, -0.815855, -0.118322,
		34.892258, 38.767586, 51.596416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765366, 38.720863, 51.821552>,  <35.288475, 39.338684, 51.679241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765366, 38.720863, 51.821552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460320, 38.612858, 51.586433>,  <35.277290, 38.548054, 51.445362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460320, 38.612858, 51.586433>,  <35.765366, 38.720863, 51.821552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460320, 38.612858, 51.586433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634487, -0.489063, -0.598535,
		-0.125861, -0.829404, 0.544286,
		-0.762618, -0.270010, -0.587800,
		35.231533, 38.531857, 51.410095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067627, 38.121578, 51.544933>,  <35.765366, 38.720863, 51.821552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067627, 38.121578, 51.544933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761200, 38.211628, 51.304115>,  <35.577343, 38.265656, 51.159622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761200, 38.211628, 51.304115>,  <36.067627, 38.121578, 51.544933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761200, 38.211628, 51.304115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451855, -0.477535, -0.753517,
		-0.457129, -0.849284, 0.264104,
		-0.766068, 0.225117, -0.602048,
		35.531380, 38.279163, 51.123501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128502, 37.589973, 50.971169>,  <36.067627, 38.121578, 51.544933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128502, 37.589973, 50.971169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887966, 37.866501, 50.810936>,  <35.743645, 38.032417, 50.714794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887966, 37.866501, 50.810936>,  <36.128502, 37.589973, 50.971169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887966, 37.866501, 50.810936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321721, -0.249418, -0.913392,
		-0.731363, -0.678132, -0.072429,
		-0.601335, 0.691323, -0.400584,
		35.707565, 38.073898, 50.690762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892735, 37.230598, 50.385071>,  <36.128502, 37.589973, 50.971169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892735, 37.230598, 50.385071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799011, 37.607807, 50.290573>,  <35.742779, 37.834133, 50.233875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799011, 37.607807, 50.290573>,  <35.892735, 37.230598, 50.385071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799011, 37.607807, 50.290573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455989, -0.108015, -0.883406,
		-0.858589, -0.314713, -0.404699,
		-0.234306, 0.943021, -0.236247,
		35.728718, 37.890713, 50.219700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524487, 37.124969, 49.734692>,  <35.892735, 37.230598, 50.385071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524487, 37.124969, 49.734692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634495, 37.509281, 49.748947>,  <35.700500, 37.739868, 49.757500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634495, 37.509281, 49.748947>,  <35.524487, 37.124969, 49.734692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634495, 37.509281, 49.748947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252031, -0.036271, -0.967039,
		-0.927816, 0.274940, -0.252121,
		0.275022, 0.960777, 0.035641,
		35.717003, 37.797516, 49.759640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208035, 37.436073, 49.204208>,  <35.524487, 37.124969, 49.734692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208035, 37.436073, 49.204208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493523, 37.699196, 49.300453>,  <35.664818, 37.857067, 49.358200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493523, 37.699196, 49.300453>,  <35.208035, 37.436073, 49.204208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493523, 37.699196, 49.300453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200327, 0.137471, -0.970037,
		-0.671169, 0.740540, -0.033659,
		0.713723, 0.657802, 0.240616,
		35.707638, 37.896538, 49.372639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104076, 38.025478, 48.699421>,  <35.208035, 37.436073, 49.204208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104076, 38.025478, 48.699421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481915, 37.991684, 48.826298>,  <35.708618, 37.971409, 48.902424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481915, 37.991684, 48.826298>,  <35.104076, 38.025478, 48.699421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481915, 37.991684, 48.826298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321987, 0.050679, -0.945386,
		0.063796, 0.995135, 0.075074,
		0.944592, -0.084485, 0.317188,
		35.765293, 37.966339, 48.921455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714066, 38.580284, 48.446693>,  <35.104076, 38.025478, 48.699421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714066, 38.580284, 48.446693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.520969, 38.680069, 48.110901>,  <34.405113, 38.739941, 47.909424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.520969, 38.680069, 48.110901>,  <34.714066, 38.580284, 48.446693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520969, 38.680069, 48.110901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802792, 0.257027, 0.538017,
		0.349986, 0.933651, 0.076192,
		-0.482736, 0.249465, -0.839484,
		34.376148, 38.754910, 47.859055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403969, 39.315304, 48.476517>,  <34.714066, 38.580284, 48.446693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403969, 39.315304, 48.476517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202782, 39.068756, 48.234158>,  <34.082069, 38.920830, 48.088741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202782, 39.068756, 48.234158>,  <34.403969, 39.315304, 48.476517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202782, 39.068756, 48.234158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820877, 0.121239, 0.558088,
		-0.270528, 0.778070, -0.566940,
		-0.502967, -0.616366, -0.605901,
		34.051891, 38.883846, 48.052387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819038, 39.718193, 48.276737>,  <34.403969, 39.315304, 48.476517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819038, 39.718193, 48.276737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715191, 39.336521, 48.217220>,  <33.652882, 39.107517, 48.181511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715191, 39.336521, 48.217220>,  <33.819038, 39.718193, 48.276737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715191, 39.336521, 48.217220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861960, 0.159487, 0.481236,
		-0.435456, 0.253189, -0.863871,
		-0.259620, -0.954180, -0.148789,
		33.637306, 39.050266, 48.172585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070457, 39.715103, 48.125507>,  <33.819038, 39.718193, 48.276737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070457, 39.715103, 48.125507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.140118, 39.328991, 48.203377>,  <33.181911, 39.097324, 48.250099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.140118, 39.328991, 48.203377>,  <33.070457, 39.715103, 48.125507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140118, 39.328991, 48.203377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843436, -0.044185, 0.535409,
		-0.508220, -0.257437, -0.821851,
		0.174147, -0.965284, 0.194676,
		33.192364, 39.039406, 48.261780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425217, 39.232693, 48.026630>,  <33.070457, 39.715103, 48.125507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425217, 39.232693, 48.026630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662315, 39.058247, 48.297466>,  <32.804577, 38.953579, 48.459969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662315, 39.058247, 48.297466>,  <32.425217, 39.232693, 48.026630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662315, 39.058247, 48.297466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799822, -0.220114, 0.558421,
		-0.094500, -0.872555, -0.479289,
		0.592751, -0.436117, 0.677088,
		32.840141, 38.927410, 48.500591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107761, 38.619415, 48.213177>,  <32.425217, 39.232693, 48.026630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107761, 38.619415, 48.213177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359650, 38.687092, 48.516445>,  <32.510784, 38.727699, 48.698406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359650, 38.687092, 48.516445>,  <32.107761, 38.619415, 48.213177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359650, 38.687092, 48.516445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731506, -0.199313, 0.652053,
		0.261436, -0.965219, -0.001746,
		0.629722, 0.169193, 0.758172,
		32.548565, 38.737850, 48.743896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973099, 38.112774, 48.605110>,  <32.107761, 38.619415, 48.213177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973099, 38.112774, 48.605110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147083, 38.362385, 48.864769>,  <32.251476, 38.512154, 49.020565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147083, 38.362385, 48.864769>,  <31.973099, 38.112774, 48.605110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147083, 38.362385, 48.864769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780489, -0.098236, 0.617403,
		0.449048, -0.775200, 0.444320,
		0.434963, 0.624031, 0.649148,
		32.277573, 38.549595, 49.059513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833723, 37.857738, 49.286018>,  <31.973099, 38.112774, 48.605110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833723, 37.857738, 49.286018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915354, 38.248539, 49.310734>,  <31.964333, 38.483021, 49.325565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915354, 38.248539, 49.310734>,  <31.833723, 37.857738, 49.286018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915354, 38.248539, 49.310734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792958, 0.127959, 0.595688,
		0.574082, -0.170565, 0.800836,
		0.204077, 0.977002, 0.061792,
		31.976578, 38.541641, 49.329273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745771, 37.984856, 49.947662>,  <31.833723, 37.857738, 49.286018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745771, 37.984856, 49.947662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738653, 38.343117, 49.769905>,  <31.734383, 38.558075, 49.663250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738653, 38.343117, 49.769905>,  <31.745771, 37.984856, 49.947662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738653, 38.343117, 49.769905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659155, 0.323693, 0.678777,
		0.751797, 0.305007, 0.584613,
		-0.017797, 0.895653, -0.444398,
		31.733315, 38.611813, 49.636585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797491, 38.462143, 50.558647>,  <31.745771, 37.984856, 49.947662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797491, 38.462143, 50.558647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662720, 38.685478, 50.255402>,  <31.581856, 38.819477, 50.073452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662720, 38.685478, 50.255402>,  <31.797491, 38.462143, 50.558647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662720, 38.685478, 50.255402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563694, 0.525318, 0.637409,
		0.754140, 0.642108, 0.137734,
		-0.336931, 0.558336, -0.758116,
		31.561640, 38.852978, 50.027966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003815, 39.114792, 50.680603>,  <31.797491, 38.462143, 50.558647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003815, 39.114792, 50.680603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.679382, 39.142029, 50.448219>,  <31.484724, 39.158371, 50.308788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.679382, 39.142029, 50.448219>,  <32.003815, 39.114792, 50.680603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679382, 39.142029, 50.448219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480060, 0.489977, 0.727644,
		0.334206, 0.869072, -0.364720,
		-0.811079, 0.068096, -0.580960,
		31.436058, 39.162457, 50.273930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608656, 39.758575, 50.804474>,  <32.003815, 39.114792, 50.680603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608656, 39.758575, 50.804474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.303349, 39.584549, 50.613419>,  <31.120165, 39.480133, 50.498787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.303349, 39.584549, 50.613419>,  <31.608656, 39.758575, 50.804474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303349, 39.584549, 50.613419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643911, 0.451714, 0.617522,
		-0.052910, 0.778890, -0.624924,
		-0.763269, -0.435068, -0.477636,
		31.074368, 39.454029, 50.470127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160923, 40.357918, 50.554028>,  <31.608656, 39.758575, 50.804474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160923, 40.357918, 50.554028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928600, 40.032730, 50.537354>,  <30.789207, 39.837616, 50.527351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928600, 40.032730, 50.537354>,  <31.160923, 40.357918, 50.554028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928600, 40.032730, 50.537354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718984, 0.488299, 0.494597,
		-0.381741, 0.317235, -0.868122,
		-0.580806, -0.812974, -0.041683,
		30.754358, 39.788837, 50.524849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545012, 40.666061, 50.447170>,  <31.160923, 40.357918, 50.554028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545012, 40.666061, 50.447170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445902, 40.306614, 50.591995>,  <30.386436, 40.090946, 50.678890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445902, 40.306614, 50.591995>,  <30.545012, 40.666061, 50.447170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445902, 40.306614, 50.591995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630895, 0.433275, 0.643618,
		-0.735240, -0.068948, -0.674291,
		-0.247777, -0.898621, 0.362060,
		30.371569, 40.037029, 50.700615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862692, 40.740917, 50.652252>,  <30.545012, 40.666061, 50.447170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862692, 40.740917, 50.652252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.992727, 40.419682, 50.852001>,  <30.070749, 40.226940, 50.971851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.992727, 40.419682, 50.852001>,  <29.862692, 40.740917, 50.652252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992727, 40.419682, 50.852001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702028, 0.148861, 0.696417,
		-0.633620, -0.576968, -0.515396,
		0.325088, -0.803087, 0.499369,
		30.090254, 40.178757, 51.001812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231701, 40.377445, 50.973606>,  <29.862692, 40.740917, 50.652252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231701, 40.377445, 50.973606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.549925, 40.272770, 51.192184>,  <29.740860, 40.209965, 51.323330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.549925, 40.272770, 51.192184>,  <29.231701, 40.377445, 50.973606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549925, 40.272770, 51.192184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489846, 0.252959, 0.834304,
		-0.356558, -0.931413, 0.073056,
		0.795561, -0.261691, 0.546443,
		29.788593, 40.194263, 51.356117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970032, 40.130108, 51.500343>,  <29.231701, 40.377445, 50.973606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970032, 40.130108, 51.500343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.340313, 40.162987, 51.648026>,  <29.562483, 40.182713, 51.736637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.340313, 40.162987, 51.648026>,  <28.970032, 40.130108, 51.500343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340313, 40.162987, 51.648026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378217, 0.188951, 0.906228,
		0.004725, -0.978541, 0.206000,
		0.925705, 0.082194, 0.369208,
		29.618025, 40.187645, 51.758789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922970, 39.658810, 52.083336>,  <28.970032, 40.130108, 51.500343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922970, 39.658810, 52.083336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.205126, 39.940426, 52.116211>,  <29.374420, 40.109394, 52.135937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.205126, 39.940426, 52.116211>,  <28.922970, 39.658810, 52.083336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205126, 39.940426, 52.116211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327164, 0.220522, 0.918876,
		0.628799, -0.675056, 0.385890,
		0.705390, 0.704038, 0.082190,
		29.416742, 40.151638, 52.140869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117258, 39.578476, 52.727234>,  <28.922970, 39.658810, 52.083336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117258, 39.578476, 52.727234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228857, 39.956799, 52.660778>,  <29.295816, 40.183792, 52.620903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228857, 39.956799, 52.660778>,  <29.117258, 39.578476, 52.727234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228857, 39.956799, 52.660778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356621, 0.262684, 0.896559,
		0.891617, -0.190891, 0.410584,
		0.278999, 0.945811, -0.166138,
		29.312557, 40.240543, 52.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561382, 39.854584, 53.341461>,  <29.117258, 39.578476, 52.727234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561382, 39.854584, 53.341461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416985, 40.169922, 53.142185>,  <29.330345, 40.359123, 53.022621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416985, 40.169922, 53.142185>,  <29.561382, 39.854584, 53.341461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416985, 40.169922, 53.142185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282090, 0.416876, 0.864083,
		0.888880, 0.452464, 0.071895,
		-0.360996, 0.788347, -0.498188,
		29.308685, 40.406425, 52.992729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766748, 40.368809, 53.824299>,  <29.561382, 39.854584, 53.341461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766748, 40.368809, 53.824299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.517210, 40.572144, 53.586842>,  <29.367487, 40.694145, 53.444366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.517210, 40.572144, 53.586842>,  <29.766748, 40.368809, 53.824299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517210, 40.572144, 53.586842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299028, 0.546531, 0.782232,
		0.722079, 0.665509, -0.188946,
		-0.623847, 0.508333, -0.593644,
		29.330055, 40.724644, 53.408749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884228, 41.062443, 53.905487>,  <29.766748, 40.368809, 53.824299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884228, 41.062443, 53.905487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.505890, 41.070545, 53.775890>,  <29.278887, 41.075405, 53.698132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.505890, 41.070545, 53.775890>,  <29.884228, 41.062443, 53.905487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505890, 41.070545, 53.775890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316860, 0.159379, 0.934986,
		0.070577, 0.987009, -0.144329,
		-0.945843, 0.020256, -0.323992,
		29.222137, 41.076622, 53.678692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558588, 41.765991, 54.173504>,  <29.884228, 41.062443, 53.905487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558588, 41.765991, 54.173504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.282860, 41.493107, 54.075993>,  <29.117424, 41.329376, 54.017487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.282860, 41.493107, 54.075993>,  <29.558588, 41.765991, 54.173504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282860, 41.493107, 54.075993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497561, 0.201244, 0.843762,
		-0.526567, 0.702913, -0.478164,
		-0.689318, -0.682213, -0.243774,
		29.076065, 41.288445, 54.002861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941824, 42.116055, 54.256786>,  <29.558588, 41.765991, 54.173504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941824, 42.116055, 54.256786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869520, 41.723576, 54.283833>,  <28.826138, 41.488087, 54.300060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869520, 41.723576, 54.283833>,  <28.941824, 42.116055, 54.256786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869520, 41.723576, 54.283833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399086, 0.136004, 0.906771,
		-0.898919, 0.136926, -0.416168,
		-0.180761, -0.981200, 0.067612,
		28.815292, 41.429214, 54.304115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268076, 42.120697, 54.540562>,  <28.941824, 42.116055, 54.256786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268076, 42.120697, 54.540562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.411572, 41.759621, 54.635605>,  <28.497669, 41.542976, 54.692631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.411572, 41.759621, 54.635605>,  <28.268076, 42.120697, 54.540562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411572, 41.759621, 54.635605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403967, 0.079342, 0.911326,
		-0.841497, -0.422914, -0.336194,
		0.358738, -0.902690, 0.237609,
		28.519194, 41.488815, 54.706886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776831, 41.872429, 54.944393>,  <28.268076, 42.120697, 54.540562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776831, 41.872429, 54.944393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.107485, 41.659573, 55.017605>,  <28.305878, 41.531860, 55.061531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.107485, 41.659573, 55.017605>,  <27.776831, 41.872429, 54.944393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107485, 41.659573, 55.017605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258595, -0.070343, 0.963421,
		-0.499800, -0.843730, -0.195756,
		0.826637, -0.532139, 0.183027,
		28.355476, 41.499931, 55.072514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545546, 41.320576, 55.391087>,  <27.776831, 41.872429, 54.944393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545546, 41.320576, 55.391087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.942230, 41.334358, 55.440594>,  <28.180241, 41.342628, 55.470299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.942230, 41.334358, 55.440594>,  <27.545546, 41.320576, 55.391087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942230, 41.334358, 55.440594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121781, -0.054676, 0.991050,
		0.040915, -0.997909, -0.050026,
		0.991713, 0.034457, 0.123763,
		28.239744, 41.344696, 55.477722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757710, 40.835323, 55.927784>,  <27.545546, 41.320576, 55.391087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757710, 40.835323, 55.927784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.041780, 41.116901, 55.932026>,  <28.212223, 41.285847, 55.934570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.041780, 41.116901, 55.932026>,  <27.757710, 40.835323, 55.927784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041780, 41.116901, 55.932026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072842, 0.058491, 0.995627,
		0.700246, -0.707843, 0.092816,
		0.710176, 0.703944, 0.010602,
		28.254833, 41.328083, 55.935207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993650, 40.683327, 56.548283>,  <27.757710, 40.835323, 55.927784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993650, 40.683327, 56.548283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.154362, 41.040813, 56.468437>,  <28.250790, 41.255306, 56.420528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.154362, 41.040813, 56.468437>,  <27.993650, 40.683327, 56.548283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154362, 41.040813, 56.468437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191585, 0.131120, 0.972678,
		0.895471, -0.429045, -0.118542,
		0.401780, 0.893716, -0.199612,
		28.274897, 41.308929, 56.408554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642159, 40.777287, 56.990093>,  <27.993650, 40.683327, 56.548283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642159, 40.777287, 56.990093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524506, 41.148777, 56.899807>,  <28.453913, 41.371674, 56.845634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524506, 41.148777, 56.899807>,  <28.642159, 40.777287, 56.990093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524506, 41.148777, 56.899807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090927, 0.262281, 0.960698,
		0.951429, 0.262051, -0.161592,
		-0.294134, 0.928729, -0.225714,
		28.436266, 41.427395, 56.832092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085047, 41.164192, 57.366245>,  <28.642159, 40.777287, 56.990093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085047, 41.164192, 57.366245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.773087, 41.403492, 57.292645>,  <28.585911, 41.547073, 57.248486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.773087, 41.403492, 57.292645>,  <29.085047, 41.164192, 57.366245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773087, 41.403492, 57.292645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081532, 0.194365, 0.977535,
		0.620572, 0.777380, -0.102809,
		-0.779899, 0.598249, -0.183999,
		28.539116, 41.582966, 57.237446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286404, 41.738995, 57.781353>,  <29.085047, 41.164192, 57.366245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286404, 41.738995, 57.781353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.894957, 41.782539, 57.711548>,  <28.660088, 41.808666, 57.669666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.894957, 41.782539, 57.711548>,  <29.286404, 41.738995, 57.781353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894957, 41.782539, 57.711548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145716, 0.231873, 0.961770,
		0.145161, 0.966636, -0.211053,
		-0.978619, 0.108857, -0.174514,
		28.601372, 41.815197, 57.659195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305693, 42.400490, 58.122223>,  <29.286404, 41.738995, 57.781353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305693, 42.400490, 58.122223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.941143, 42.237949, 58.096073>,  <28.722412, 42.140427, 58.080383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.941143, 42.237949, 58.096073>,  <29.305693, 42.400490, 58.122223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941143, 42.237949, 58.096073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096091, 0.055627, 0.993817,
		-0.400201, 0.912022, -0.089744,
		-0.911376, -0.406350, -0.065375,
		28.667730, 42.116043, 58.076462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909843, 42.774792, 58.736462>,  <29.305693, 42.400490, 58.122223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909843, 42.774792, 58.736462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707422, 42.451481, 58.616070>,  <28.585970, 42.257492, 58.543835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707422, 42.451481, 58.616070>,  <28.909843, 42.774792, 58.736462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707422, 42.451481, 58.616070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193676, -0.233561, 0.952858,
		-0.840475, 0.540492, -0.038349,
		-0.506055, -0.808281, -0.300982,
		28.555605, 42.208996, 58.525776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332893, 42.712994, 59.179886>,  <28.909843, 42.774792, 58.736462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332893, 42.712994, 59.179886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.392115, 42.347874, 59.027634>,  <28.427647, 42.128803, 58.936283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.392115, 42.347874, 59.027634>,  <28.332893, 42.712994, 59.179886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392115, 42.347874, 59.027634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170961, -0.402704, 0.899223,
		-0.974091, -0.068058, -0.215674,
		0.148052, -0.912796, -0.380635,
		28.436531, 42.074036, 58.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772223, 42.414337, 59.356972>,  <28.332893, 42.712994, 59.179886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772223, 42.414337, 59.356972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.050005, 42.137096, 59.279682>,  <28.216675, 41.970753, 59.233307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.050005, 42.137096, 59.279682>,  <27.772223, 42.414337, 59.356972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050005, 42.137096, 59.279682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343336, -0.555201, 0.757543,
		-0.632336, -0.459739, -0.623531,
		0.694458, -0.693103, -0.193228,
		28.258343, 41.929165, 59.221714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418230, 41.785690, 59.443295>,  <27.772223, 42.414337, 59.356972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418230, 41.785690, 59.443295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.810249, 41.713879, 59.477409>,  <28.045462, 41.670792, 59.497879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.810249, 41.713879, 59.477409>,  <27.418230, 41.785690, 59.443295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810249, 41.713879, 59.477409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174639, -0.572973, 0.800752,
		-0.094889, -0.799670, -0.592894,
		0.980050, -0.179525, 0.085285,
		28.104263, 41.660023, 59.502995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548866, 41.085571, 59.534691>,  <27.418230, 41.785690, 59.443295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548866, 41.085571, 59.534691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.847300, 41.296837, 59.696880>,  <28.026360, 41.423595, 59.794193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.847300, 41.296837, 59.696880>,  <27.548866, 41.085571, 59.534691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847300, 41.296837, 59.696880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092214, -0.521120, 0.848487,
		0.659439, -0.670430, -0.340094,
		0.746081, 0.528164, 0.405470,
		28.071123, 41.455288, 59.818520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775143, 40.675461, 60.036922>,  <27.548866, 41.085571, 59.534691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775143, 40.675461, 60.036922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963087, 41.019306, 60.117218>,  <28.075853, 41.225613, 60.165394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963087, 41.019306, 60.117218>,  <27.775143, 40.675461, 60.036922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963087, 41.019306, 60.117218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280679, -0.361087, 0.889289,
		0.836928, -0.361500, -0.410937,
		0.469862, 0.859613, 0.200739,
		28.104046, 41.277191, 60.177441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210186, 40.205421, 60.350544>,  <27.775143, 40.675461, 60.036922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210186, 40.205421, 60.350544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.927849, 39.946751, 60.466194>,  <27.758446, 39.791550, 60.535583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.927849, 39.946751, 60.466194>,  <28.210186, 40.205421, 60.350544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927849, 39.946751, 60.466194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349222, -0.672786, -0.652229,
		0.616303, -0.359401, 0.700715,
		-0.705843, -0.646676, 0.289129,
		27.716095, 39.752747, 60.552933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498617, 39.569683, 60.353191>,  <28.210186, 40.205421, 60.350544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498617, 39.569683, 60.353191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.115627, 39.454330, 60.349628>,  <27.885834, 39.385120, 60.347492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.115627, 39.454330, 60.349628>,  <28.498617, 39.569683, 60.353191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115627, 39.454330, 60.349628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162834, -0.514649, -0.841797,
		0.238172, -0.807450, 0.539721,
		-0.957475, -0.288377, -0.008905,
		27.828384, 39.367817, 60.346958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471560, 38.807026, 60.247585>,  <28.498617, 39.569683, 60.353191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471560, 38.807026, 60.247585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.109940, 38.934151, 60.133259>,  <27.892967, 39.010426, 60.064663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.109940, 38.934151, 60.133259>,  <28.471560, 38.807026, 60.247585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109940, 38.934151, 60.133259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084030, -0.523481, -0.847884,
		-0.419084, -0.790547, 0.446548,
		-0.904051, 0.317812, -0.285812,
		27.838724, 39.029495, 60.047516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148140, 38.208466, 60.030563>,  <28.471560, 38.807026, 60.247585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148140, 38.208466, 60.030563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.969345, 38.513710, 59.843861>,  <27.862068, 38.696857, 59.731838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.969345, 38.513710, 59.843861>,  <28.148140, 38.208466, 60.030563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969345, 38.513710, 59.843861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018929, -0.529739, -0.847950,
		-0.894341, -0.370186, 0.251231,
		-0.446986, 0.763111, -0.466760,
		27.835249, 38.742645, 59.703835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762640, 37.928001, 59.556648>,  <28.148140, 38.208466, 60.030563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762640, 37.928001, 59.556648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.786980, 38.295036, 59.399509>,  <27.801584, 38.515259, 59.305225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.786980, 38.295036, 59.399509>,  <27.762640, 37.928001, 59.556648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786980, 38.295036, 59.399509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221344, -0.371369, -0.901716,
		-0.973296, 0.141823, 0.180505,
		0.060850, 0.917590, -0.392843,
		27.805235, 38.570312, 59.281658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419268, 37.867455, 58.922421>,  <27.762640, 37.928001, 59.556648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419268, 37.867455, 58.922421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.632627, 38.203136, 58.880039>,  <27.760643, 38.404545, 58.854610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.632627, 38.203136, 58.880039>,  <27.419268, 37.867455, 58.922421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632627, 38.203136, 58.880039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030728, -0.105950, -0.993897,
		-0.845304, 0.533401, -0.030727,
		0.533401, 0.839201, -0.105951,
		27.792648, 38.454895, 58.848255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067549, 38.279613, 58.393826>,  <27.419268, 37.867455, 58.922421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067549, 38.279613, 58.393826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.444990, 38.411087, 58.377907>,  <27.671455, 38.489971, 58.368355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.444990, 38.411087, 58.377907>,  <27.067549, 38.279613, 58.393826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444990, 38.411087, 58.377907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017943, -0.069271, -0.997436,
		-0.330594, 0.941898, -0.059466,
		0.943602, 0.328680, -0.039801,
		27.728071, 38.509689, 58.365967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083036, 38.883606, 57.939323>,  <27.067549, 38.279613, 58.393826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083036, 38.883606, 57.939323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.470354, 38.783798, 57.944267>,  <27.702744, 38.723915, 57.947231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.470354, 38.783798, 57.944267>,  <27.083036, 38.883606, 57.939323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470354, 38.783798, 57.944267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058453, 0.178198, -0.982257,
		0.242886, 0.951834, 0.187132,
		0.968292, -0.249515, 0.012356,
		27.760841, 38.708942, 57.947975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400503, 39.389118, 57.444263>,  <27.083036, 38.883606, 57.939323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400503, 39.389118, 57.444263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.617571, 39.055305, 57.482353>,  <27.747810, 38.855019, 57.505207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.617571, 39.055305, 57.482353>,  <27.400503, 39.389118, 57.444263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617571, 39.055305, 57.482353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117092, -0.037098, -0.992428,
		0.831746, 0.549709, 0.077585,
		0.542668, -0.834532, 0.095222,
		27.780371, 38.804947, 57.510921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006395, 39.502926, 57.073700>,  <27.400503, 39.389118, 57.444263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006395, 39.502926, 57.073700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.973803, 39.105034, 57.098610>,  <27.954247, 38.866299, 57.113556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.973803, 39.105034, 57.098610>,  <28.006395, 39.502926, 57.073700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973803, 39.105034, 57.098610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213178, -0.078435, -0.973860,
		0.973610, -0.066075, 0.218445,
		-0.081482, -0.994727, 0.062279,
		27.949358, 38.806614, 57.117294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408421, 39.276516, 56.561672>,  <28.006395, 39.502926, 57.073700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408421, 39.276516, 56.561672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.263506, 38.914803, 56.652020>,  <28.176558, 38.697773, 56.706230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.263506, 38.914803, 56.652020>,  <28.408421, 39.276516, 56.561672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263506, 38.914803, 56.652020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081512, -0.272145, -0.958798,
		0.928495, -0.328949, 0.172305,
		-0.362288, -0.904284, 0.225872,
		28.154819, 38.643517, 56.719780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898247, 38.747856, 56.220493>,  <28.408421, 39.276516, 56.561672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898247, 38.747856, 56.220493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.522516, 38.618191, 56.265373>,  <28.297079, 38.540394, 56.292301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.522516, 38.618191, 56.265373>,  <28.898247, 38.747856, 56.220493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522516, 38.618191, 56.265373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026298, -0.394181, -0.918657,
		0.342021, -0.859966, 0.378788,
		-0.939324, -0.324162, 0.112203,
		28.240719, 38.520943, 56.299034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869726, 38.118729, 55.874432>,  <28.898247, 38.747856, 56.220493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869726, 38.118729, 55.874432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.487249, 38.235783, 55.877735>,  <28.257763, 38.306015, 55.879719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.487249, 38.235783, 55.877735>,  <28.869726, 38.118729, 55.874432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487249, 38.235783, 55.877735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060936, -0.171350, -0.983324,
		-0.286334, -0.940748, 0.181675,
		-0.956190, 0.292630, 0.008262,
		28.200392, 38.323570, 55.880215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568441, 37.627613, 55.461334>,  <28.869726, 38.118729, 55.874432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568441, 37.627613, 55.461334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.258980, 37.880985, 55.467281>,  <28.073303, 38.033009, 55.470848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.258980, 37.880985, 55.467281>,  <28.568441, 37.627613, 55.461334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258980, 37.880985, 55.467281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050312, -0.038023, -0.998009,
		-0.631606, -0.772863, 0.061286,
		-0.773655, 0.633432, 0.014869,
		28.026882, 38.071014, 55.471741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060575, 37.310383, 55.088707>,  <28.568441, 37.627613, 55.461334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060575, 37.310383, 55.088707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.942434, 37.690674, 55.051014>,  <27.871550, 37.918850, 55.028397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.942434, 37.690674, 55.051014>,  <28.060575, 37.310383, 55.088707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942434, 37.690674, 55.051014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095644, -0.068715, -0.993041,
		-0.950588, -0.302312, -0.070636,
		-0.295355, 0.950729, -0.094234,
		27.853828, 37.975891, 55.022743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384211, 37.327202, 54.678272>,  <28.060575, 37.310383, 55.088707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384211, 37.327202, 54.678272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.556725, 37.687603, 54.659569>,  <27.660233, 37.903843, 54.648346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.556725, 37.687603, 54.659569>,  <27.384211, 37.327202, 54.678272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556725, 37.687603, 54.659569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086557, -0.092905, -0.991906,
		-0.898053, 0.423749, -0.118057,
		0.431287, 0.901003, -0.046755,
		27.686111, 37.957905, 54.645542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084259, 37.609924, 54.071476>,  <27.384211, 37.327202, 54.678272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084259, 37.609924, 54.071476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.405748, 37.844799, 54.109932>,  <27.598642, 37.985725, 54.133003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.405748, 37.844799, 54.109932>,  <27.084259, 37.609924, 54.071476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405748, 37.844799, 54.109932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096069, 0.031391, -0.994880,
		-0.587198, 0.808843, -0.031181,
		0.803722, 0.587186, 0.096138,
		27.646866, 38.020954, 54.138775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963028, 38.059162, 53.568623>,  <27.084259, 37.609924, 54.071476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963028, 38.059162, 53.568623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.346491, 38.135696, 53.652878>,  <27.576569, 38.181618, 53.703430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.346491, 38.135696, 53.652878>,  <26.963028, 38.059162, 53.568623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346491, 38.135696, 53.652878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177338, 0.177214, -0.968063,
		-0.222553, 0.965394, 0.135956,
		0.958656, 0.191336, 0.210641,
		27.634089, 38.193096, 53.716068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172430, 38.621170, 53.117985>,  <26.963028, 38.059162, 53.568623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172430, 38.621170, 53.117985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.470459, 38.396065, 53.261189>,  <27.649277, 38.261002, 53.347111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.470459, 38.396065, 53.261189>,  <27.172430, 38.621170, 53.117985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470459, 38.396065, 53.261189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422291, -0.017452, -0.906292,
		0.516272, 0.826437, 0.224645,
		0.745073, -0.562759, 0.358007,
		27.693981, 38.227238, 53.368591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769268, 38.826103, 52.745590>,  <27.172430, 38.621170, 53.117985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769268, 38.826103, 52.745590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.860207, 38.474182, 52.912567>,  <27.914770, 38.263027, 53.012753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.860207, 38.474182, 52.912567>,  <27.769268, 38.826103, 52.745590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860207, 38.474182, 52.912567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447025, -0.286545, -0.847384,
		0.865149, 0.379255, 0.328151,
		0.227345, -0.879805, 0.417441,
		27.928410, 38.210239, 53.037800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503761, 38.832737, 52.706619>,  <27.769268, 38.826103, 52.745590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503761, 38.832737, 52.706619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.382410, 38.452335, 52.730461>,  <28.309599, 38.224094, 52.744766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.382410, 38.452335, 52.730461>,  <28.503761, 38.832737, 52.706619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382410, 38.452335, 52.730461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335442, -0.165139, -0.927474,
		0.891875, -0.261379, 0.369106,
		-0.303376, -0.951005, 0.059606,
		28.291397, 38.167034, 52.748344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144983, 38.398716, 52.653000>,  <28.503761, 38.832737, 52.706619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144983, 38.398716, 52.653000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.826756, 38.174232, 52.561691>,  <28.635818, 38.039543, 52.506905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.826756, 38.174232, 52.561691>,  <29.144983, 38.398716, 52.653000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826756, 38.174232, 52.561691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425644, -0.249604, -0.869784,
		0.431156, -0.789138, 0.437454,
		-0.795570, -0.561213, -0.228274,
		28.588085, 38.005867, 52.493210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427845, 37.755505, 52.435062>,  <29.144983, 38.398716, 52.653000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427845, 37.755505, 52.435062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.066120, 37.779549, 52.266018>,  <28.849085, 37.793976, 52.164589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.066120, 37.779549, 52.266018>,  <29.427845, 37.755505, 52.435062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066120, 37.779549, 52.266018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409357, -0.158543, -0.898494,
		-0.121008, -0.985521, 0.118767,
		-0.904314, 0.060106, -0.422615,
		28.794827, 37.797581, 52.139233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490433, 37.266655, 51.929398>,  <29.427845, 37.755505, 52.435062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490433, 37.266655, 51.929398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.159651, 37.468216, 51.829617>,  <28.961182, 37.589153, 51.769749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.159651, 37.468216, 51.829617>,  <29.490433, 37.266655, 51.929398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159651, 37.468216, 51.829617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212547, -0.130575, -0.968387,
		-0.520545, -0.853834, 0.000877,
		-0.826956, 0.503903, -0.249450,
		28.911564, 37.619389, 51.754780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210999, 36.848351, 51.499950>,  <29.490433, 37.266655, 51.929398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210999, 36.848351, 51.499950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.051191, 37.205421, 51.416519>,  <28.955307, 37.419666, 51.366459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.051191, 37.205421, 51.416519>,  <29.210999, 36.848351, 51.499950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051191, 37.205421, 51.416519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333334, -0.070492, -0.940170,
		-0.853975, -0.445142, -0.269398,
		-0.399518, 0.892681, -0.208579,
		28.931335, 37.473225, 51.353947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709400, 36.688488, 50.935703>,  <29.210999, 36.848351, 51.499950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709400, 36.688488, 50.935703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862820, 37.057480, 50.953236>,  <28.954872, 37.278873, 50.963757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862820, 37.057480, 50.953236>,  <28.709400, 36.688488, 50.935703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862820, 37.057480, 50.953236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255482, -0.060378, -0.964927,
		-0.887478, 0.381296, -0.258835,
		0.383551, 0.922479, 0.043830,
		28.977884, 37.334225, 50.966385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577436, 36.999454, 50.349091>,  <28.709400, 36.688488, 50.935703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577436, 36.999454, 50.349091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.888439, 37.229332, 50.451237>,  <29.075041, 37.367260, 50.512524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.888439, 37.229332, 50.451237>,  <28.577436, 36.999454, 50.349091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888439, 37.229332, 50.451237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382146, -0.109269, -0.917619,
		-0.499448, 0.811040, -0.304575,
		0.777507, 0.574695, 0.255362,
		29.121691, 37.401741, 50.527843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691938, 37.469692, 49.801571>,  <28.577436, 36.999454, 50.349091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691938, 37.469692, 49.801571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038879, 37.474144, 50.000599>,  <29.247044, 37.476814, 50.120014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038879, 37.474144, 50.000599>,  <28.691938, 37.469692, 49.801571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038879, 37.474144, 50.000599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496309, -0.093794, -0.863064,
		0.037065, 0.995529, -0.086875,
		0.867354, 0.011127, 0.497567,
		29.299086, 37.477482, 50.149868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150402, 37.807873, 49.384373>,  <28.691938, 37.469692, 49.801571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150402, 37.807873, 49.384373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370924, 37.563663, 49.611820>,  <29.503237, 37.417137, 49.748287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370924, 37.563663, 49.611820>,  <29.150402, 37.807873, 49.384373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370924, 37.563663, 49.611820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442504, -0.363814, -0.819652,
		0.707285, 0.703496, 0.069584,
		0.551306, -0.610519, 0.568620,
		29.536316, 37.380508, 49.782406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731617, 37.665749, 48.921352>,  <29.150402, 37.807873, 49.384373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731617, 37.665749, 48.921352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.775280, 37.392399, 49.210098>,  <29.801477, 37.228390, 49.383347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.775280, 37.392399, 49.210098>,  <29.731617, 37.665749, 48.921352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775280, 37.392399, 49.210098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457265, -0.610284, -0.646886,
		0.882606, 0.400697, 0.245863,
		0.109159, -0.683370, 0.721865,
		29.808027, 37.187389, 49.426659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328552, 37.429562, 48.775833>,  <29.731617, 37.665749, 48.921352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328552, 37.429562, 48.775833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.163385, 37.144608, 49.002819>,  <30.064285, 36.973637, 49.139011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.163385, 37.144608, 49.002819>,  <30.328552, 37.429562, 48.775833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163385, 37.144608, 49.002819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522666, -0.695596, -0.492917,
		0.745868, 0.093058, 0.659561,
		-0.412918, -0.712381, 0.567461,
		30.039511, 36.930893, 49.173058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809355, 37.031487, 49.249496>,  <30.328552, 37.429562, 48.775833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809355, 37.031487, 49.249496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504040, 36.795513, 49.144142>,  <30.320850, 36.653931, 49.080929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504040, 36.795513, 49.144142>,  <30.809355, 37.031487, 49.249496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504040, 36.795513, 49.144142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646048, -0.699441, -0.305619,
		-0.003927, -0.403434, 0.915000,
		-0.763286, -0.589934, -0.263385,
		30.275053, 36.618534, 49.065128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114222, 36.444458, 49.272488>,  <30.809355, 37.031487, 49.249496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114222, 36.444458, 49.272488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772873, 36.338150, 49.093102>,  <30.568064, 36.274364, 48.985470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772873, 36.338150, 49.093102>,  <31.114222, 36.444458, 49.272488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772873, 36.338150, 49.093102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427799, -0.848639, -0.311128,
		-0.297898, -0.457362, 0.837900,
		-0.853373, -0.265769, -0.448466,
		30.516861, 36.258419, 48.958561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029102, 35.707577, 49.452133>,  <31.114222, 36.444458, 49.272488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029102, 35.707577, 49.452133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.773176, 35.759731, 49.149178>,  <30.619621, 35.791023, 48.967403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.773176, 35.759731, 49.149178>,  <31.029102, 35.707577, 49.452133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773176, 35.759731, 49.149178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177589, -0.933748, -0.310768,
		-0.747728, -0.333338, 0.574272,
		-0.639816, 0.130386, -0.757387,
		30.581232, 35.798847, 48.921963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531580, 35.094078, 49.425152>,  <31.029102, 35.707577, 49.452133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531580, 35.094078, 49.425152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.530121, 35.263935, 49.063011>,  <30.529245, 35.365849, 48.845726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.530121, 35.263935, 49.063011>,  <30.531580, 35.094078, 49.425152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530121, 35.263935, 49.063011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114590, -0.899574, -0.421468,
		-0.993406, 0.102206, 0.051942,
		-0.003649, 0.424641, -0.905354,
		30.529026, 35.391327, 48.791405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053740, 34.657715, 48.968105>,  <30.531580, 35.094078, 49.425152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053740, 34.657715, 48.968105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288357, 34.826756, 48.691738>,  <30.429127, 34.928181, 48.525917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288357, 34.826756, 48.691738>,  <30.053740, 34.657715, 48.968105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288357, 34.826756, 48.691738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039284, -0.866916, -0.496903,
		-0.808965, 0.264312, -0.525085,
		0.586542, 0.422605, -0.690922,
		30.464319, 34.953537, 48.484463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879856, 34.324833, 48.419556>,  <30.053740, 34.657715, 48.968105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879856, 34.324833, 48.419556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.233103, 34.493885, 48.338081>,  <30.445051, 34.595318, 48.289196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.233103, 34.493885, 48.338081>,  <29.879856, 34.324833, 48.419556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233103, 34.493885, 48.338081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249250, -0.790467, -0.559496,
		-0.397467, 0.443332, -0.803415,
		0.883116, 0.422633, -0.203684,
		30.498037, 34.620674, 48.276978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043461, 34.481358, 47.574375>,  <29.879856, 34.324833, 48.419556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043461, 34.481358, 47.574375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.400160, 34.427868, 47.747307>,  <30.614180, 34.395775, 47.851067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.400160, 34.427868, 47.747307>,  <30.043461, 34.481358, 47.574375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400160, 34.427868, 47.747307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142315, -0.824007, -0.548415,
		0.429578, 0.550573, -0.715774,
		0.891745, -0.133722, 0.432330,
		30.667683, 34.387753, 47.877007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400921, 34.243271, 47.052509>,  <30.043461, 34.481358, 47.574375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400921, 34.243271, 47.052509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.631853, 34.132683, 47.359821>,  <30.770412, 34.066330, 47.544209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.631853, 34.132683, 47.359821>,  <30.400921, 34.243271, 47.052509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631853, 34.132683, 47.359821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198434, -0.865212, -0.460469,
		0.792031, 0.418296, -0.444652,
		0.577331, -0.276471, 0.768279,
		30.805052, 34.049740, 47.590305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076323, 33.947262, 46.774326>,  <30.400921, 34.243271, 47.052509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076323, 33.947262, 46.774326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.050116, 33.788422, 47.140499>,  <31.034391, 33.693119, 47.360203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.050116, 33.788422, 47.140499>,  <31.076323, 33.947262, 46.774326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050116, 33.788422, 47.140499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341549, -0.870915, -0.353343,
		0.937578, 0.289515, 0.192689,
		-0.065518, -0.397099, 0.915434,
		31.030460, 33.669292, 47.415131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532555, 33.491699, 46.784771>,  <31.076323, 33.947262, 46.774326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532555, 33.491699, 46.784771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326420, 33.343426, 47.093842>,  <31.202738, 33.254463, 47.279282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326420, 33.343426, 47.093842>,  <31.532555, 33.491699, 46.784771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326420, 33.343426, 47.093842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317952, -0.919965, -0.229282,
		0.795822, 0.127516, 0.591952,
		-0.515338, -0.370680, 0.772672,
		31.171818, 33.232224, 47.325642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858816, 33.070423, 47.280319>,  <31.532555, 33.491699, 46.784771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858816, 33.070423, 47.280319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476524, 32.953224, 47.269455>,  <31.247150, 32.882904, 47.262936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476524, 32.953224, 47.269455>,  <31.858816, 33.070423, 47.280319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476524, 32.953224, 47.269455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268522, -0.830692, -0.487695,
		0.120329, -0.473397, 0.872591,
		-0.955728, -0.292994, -0.027161,
		31.189806, 32.865326, 47.261307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812212, 32.457512, 47.633816>,  <31.858816, 33.070423, 47.280319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812212, 32.457512, 47.633816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523617, 32.496529, 47.359608>,  <31.350460, 32.519939, 47.195084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523617, 32.496529, 47.359608>,  <31.812212, 32.457512, 47.633816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523617, 32.496529, 47.359608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375297, -0.776909, -0.505534,
		-0.581897, -0.622011, 0.523926,
		-0.721490, 0.097541, -0.685520,
		31.307169, 32.525791, 47.153950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891451, 32.007713, 48.160347>,  <31.812212, 32.457512, 47.633816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891451, 32.007713, 48.160347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225113, 31.908756, 47.963173>,  <32.425308, 31.849382, 47.844868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225113, 31.908756, 47.963173>,  <31.891451, 32.007713, 48.160347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225113, 31.908756, 47.963173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183289, 0.967302, -0.175305,
		0.520185, 0.055882, 0.852223,
		0.834154, -0.247394, -0.492934,
		32.475361, 31.834538, 47.815292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482216, 32.400429, 48.440437>,  <31.891451, 32.007713, 48.160347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482216, 32.400429, 48.440437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509174, 32.293701, 48.055882>,  <32.525349, 32.229664, 47.825150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509174, 32.293701, 48.055882>,  <32.482216, 32.400429, 48.440437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509174, 32.293701, 48.055882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207534, 0.946251, -0.248070,
		0.975904, -0.182802, 0.119146,
		0.067394, -0.266819, -0.961387,
		32.529392, 32.213654, 47.767464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981251, 32.742023, 48.291733>,  <32.482216, 32.400429, 48.440437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981251, 32.742023, 48.291733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.849228, 32.663422, 47.922421>,  <32.770016, 32.616261, 47.700832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.849228, 32.663422, 47.922421>,  <32.981251, 32.742023, 48.291733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849228, 32.663422, 47.922421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095065, 0.966201, -0.239624,
		0.939162, -0.166862, -0.300220,
		-0.330057, -0.196505, -0.923281,
		32.750210, 32.604469, 47.645435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382305, 33.164837, 47.950630>,  <32.981251, 32.742023, 48.291733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382305, 33.164837, 47.950630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425095, 33.517365, 47.766533>,  <33.450768, 33.728882, 47.656075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425095, 33.517365, 47.766533>,  <33.382305, 33.164837, 47.950630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425095, 33.517365, 47.766533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988399, -0.144459, -0.046896,
		-0.107817, -0.449890, -0.886552,
		0.106972, 0.881323, -0.460246,
		33.457188, 33.781761, 47.628460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796822, 33.047119, 47.386242>,  <33.382305, 33.164837, 47.950630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796822, 33.047119, 47.386242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858265, 33.436703, 47.452946>,  <33.895130, 33.670452, 47.492966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858265, 33.436703, 47.452946>,  <33.796822, 33.047119, 47.386242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858265, 33.436703, 47.452946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947838, -0.097527, -0.303466,
		-0.279301, 0.204671, -0.938137,
		0.153605, 0.973960, 0.166755,
		33.904346, 33.728889, 47.502972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251633, 33.244499, 46.791306>,  <33.796822, 33.047119, 47.386242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251633, 33.244499, 46.791306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297993, 33.524742, 47.072933>,  <34.325809, 33.692890, 47.241909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297993, 33.524742, 47.072933>,  <34.251633, 33.244499, 46.791306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297993, 33.524742, 47.072933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992916, -0.100395, -0.063548,
		0.026162, 0.706445, -0.707284,
		0.115901, 0.700611, 0.704068,
		34.332764, 33.734924, 47.284153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742176, 33.615601, 46.525055>,  <34.251633, 33.244499, 46.791306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742176, 33.615601, 46.525055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.727837, 33.702690, 46.915195>,  <34.719234, 33.754944, 47.149281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.727837, 33.702690, 46.915195>,  <34.742176, 33.615601, 46.525055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727837, 33.702690, 46.915195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999301, 0.018151, 0.032673,
		-0.010590, 0.975841, -0.218224,
		-0.035845, 0.217725, 0.975352,
		34.717083, 33.768009, 47.207802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231842, 34.082508, 46.528343>,  <34.742176, 33.615601, 46.525055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231842, 34.082508, 46.528343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185570, 33.973339, 46.910366>,  <35.157806, 33.907837, 47.139580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185570, 33.973339, 46.910366>,  <35.231842, 34.082508, 46.528343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185570, 33.973339, 46.910366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986145, 0.083527, 0.143319,
		-0.118888, 0.958404, 0.259477,
		-0.115684, -0.272921, 0.955056,
		35.150864, 33.891464, 47.196884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631229, 34.509041, 46.921783>,  <35.231842, 34.082508, 46.528343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631229, 34.509041, 46.921783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.577400, 34.218220, 47.191090>,  <35.545101, 34.043728, 47.352673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.577400, 34.218220, 47.191090>,  <35.631229, 34.509041, 46.921783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577400, 34.218220, 47.191090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913598, 0.172062, 0.368419,
		-0.383703, 0.664672, 0.641080,
		-0.134572, -0.727053, 0.673264,
		35.537029, 34.000103, 47.393070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987247, 34.714611, 47.541927>,  <35.631229, 34.509041, 46.921783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987247, 34.714611, 47.541927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960979, 34.316967, 47.576416>,  <35.945217, 34.078381, 47.597111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960979, 34.316967, 47.576416>,  <35.987247, 34.714611, 47.541927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960979, 34.316967, 47.576416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899827, -0.021653, 0.435709,
		-0.431276, 0.106201, 0.895948,
		-0.065673, -0.994109, 0.086224,
		35.941277, 34.018734, 47.602283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256870, 34.615147, 48.194927>,  <35.987247, 34.714611, 47.541927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256870, 34.615147, 48.194927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295612, 34.250755, 48.034561>,  <36.318859, 34.032120, 47.938339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295612, 34.250755, 48.034561>,  <36.256870, 34.615147, 48.194927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295612, 34.250755, 48.034561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962876, -0.016209, 0.269456,
		-0.251968, -0.412134, 0.875590,
		0.096859, -0.910979, -0.400919,
		36.324669, 33.977463, 47.914284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423656, 34.091003, 48.747822>,  <36.256870, 34.615147, 48.194927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423656, 34.091003, 48.747822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540539, 33.915081, 48.408131>,  <36.610668, 33.809528, 48.204315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540539, 33.915081, 48.408131>,  <36.423656, 34.091003, 48.747822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540539, 33.915081, 48.408131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951356, 0.042988, 0.305081,
		-0.097671, -0.897061, 0.430978,
		0.292203, -0.439811, -0.849226,
		36.628201, 33.783138, 48.153362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792686, 33.567173, 48.986130>,  <36.423656, 34.091003, 48.747822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792686, 33.567173, 48.986130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906555, 33.619659, 48.606289>,  <36.974876, 33.651154, 48.378384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906555, 33.619659, 48.606289>,  <36.792686, 33.567173, 48.986130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906555, 33.619659, 48.606289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954015, 0.058248, 0.294044,
		0.093896, -0.989641, -0.108604,
		0.284672, 0.131220, -0.949602,
		36.991959, 33.659027, 48.321407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315769, 33.150326, 48.952999>,  <36.792686, 33.567173, 48.986130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315769, 33.150326, 48.952999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357571, 33.395302, 48.639568>,  <37.382652, 33.542286, 48.451508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357571, 33.395302, 48.639568>,  <37.315769, 33.150326, 48.952999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357571, 33.395302, 48.639568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969998, 0.111128, 0.216226,
		0.219503, -0.782670, -0.582449,
		0.104507, 0.612436, -0.783581,
		37.388924, 33.579033, 48.404495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976101, 32.840931, 48.617817>,  <37.315769, 33.150326, 48.952999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976101, 32.840931, 48.617817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926178, 33.223022, 48.510521>,  <37.896225, 33.452278, 48.446144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926178, 33.223022, 48.510521>,  <37.976101, 32.840931, 48.617817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926178, 33.223022, 48.510521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986698, 0.147881, 0.067518,
		0.104163, -0.256247, -0.960983,
		-0.124810, 0.955232, -0.268242,
		37.888737, 33.509594, 48.430050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598682, 32.921284, 48.575134>,  <37.976101, 32.840931, 48.617817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598682, 32.921284, 48.575134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414608, 33.275368, 48.547905>,  <38.304165, 33.487820, 48.531567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414608, 33.275368, 48.547905>,  <38.598682, 32.921284, 48.575134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414608, 33.275368, 48.547905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887207, 0.455657, -0.072391,
		-0.033061, -0.093712, -0.995050,
		-0.460185, 0.885209, -0.068078,
		38.276554, 33.540932, 48.527481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841545, 32.246731, 48.270214>,  <38.598682, 32.921284, 48.575134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841545, 32.246731, 48.270214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728638, 32.344334, 47.899101>,  <38.660892, 32.402897, 47.676434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728638, 32.344334, 47.899101>,  <38.841545, 32.246731, 48.270214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728638, 32.344334, 47.899101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912468, 0.230296, 0.338179,
		0.296185, 0.942031, 0.157646,
		-0.282270, 0.244011, -0.927783,
		38.643955, 32.417538, 47.620766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514305, 31.811586, 47.997314>,  <38.841545, 32.246731, 48.270214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514305, 31.811586, 47.997314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436989, 31.959326, 47.633728>,  <39.390598, 32.047970, 47.415577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436989, 31.959326, 47.633728>,  <39.514305, 31.811586, 47.997314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436989, 31.959326, 47.633728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428145, -0.801824, -0.416857,
		-0.882797, -0.469745, -0.003148,
		-0.193293, 0.369348, -0.908967,
		39.379002, 32.070129, 47.361038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217815, 31.371347, 47.474365>,  <39.514305, 31.811586, 47.997314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217815, 31.371347, 47.474365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441391, 31.646181, 47.288677>,  <39.575535, 31.811081, 47.177265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441391, 31.646181, 47.288677>,  <39.217815, 31.371347, 47.474365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441391, 31.646181, 47.288677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510492, -0.726293, -0.460323,
		-0.653443, 0.020309, -0.756703,
		0.558936, 0.687085, -0.464224,
		39.609074, 31.852306, 47.149410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282703, 31.339828, 46.730045>,  <39.217815, 31.371347, 47.474365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282703, 31.339828, 46.730045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.624771, 31.474869, 46.887383>,  <39.830009, 31.555893, 46.981785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.624771, 31.474869, 46.887383>,  <39.282703, 31.339828, 46.730045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624771, 31.474869, 46.887383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512571, -0.663784, -0.544666,
		0.077212, 0.667394, -0.740691,
		0.855166, 0.337602, 0.393339,
		39.881321, 31.576149, 47.005383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811172, 31.474348, 46.266911>,  <39.282703, 31.339828, 46.730045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811172, 31.474348, 46.266911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989571, 31.390251, 46.614906>,  <40.096607, 31.339792, 46.823704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989571, 31.390251, 46.614906>,  <39.811172, 31.474348, 46.266911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989571, 31.390251, 46.614906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471919, -0.770691, -0.428168,
		0.760516, 0.601526, -0.244505,
		0.445992, -0.210243, 0.869994,
		40.123367, 31.327179, 46.875904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538692, 31.544880, 46.163216>,  <39.811172, 31.474348, 46.266911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538692, 31.544880, 46.163216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417374, 31.289801, 46.446442>,  <40.344582, 31.136753, 46.616379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417374, 31.289801, 46.446442>,  <40.538692, 31.544880, 46.163216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417374, 31.289801, 46.446442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491094, -0.741388, -0.457352,
		0.816603, 0.209015, 0.538026,
		-0.303292, -0.637696, 0.708066,
		40.326385, 31.098492, 46.658863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996273, 32.136597, 46.272690>,  <40.538692, 31.544880, 46.163216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996273, 32.136597, 46.272690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062935, 32.031723, 45.892483>,  <41.102932, 31.968798, 45.664360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062935, 32.031723, 45.892483>,  <40.996273, 32.136597, 46.272690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062935, 32.031723, 45.892483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502125, 0.807070, -0.310659,
		0.848584, 0.529052, 0.002853,
		0.166657, -0.262187, -0.950517,
		41.112930, 31.953066, 45.607327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284386, 32.714912, 45.850273>,  <40.996273, 32.136597, 46.272690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284386, 32.714912, 45.850273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033062, 32.441132, 45.702354>,  <40.882267, 32.276863, 45.613602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033062, 32.441132, 45.702354>,  <41.284386, 32.714912, 45.850273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033062, 32.441132, 45.702354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523585, 0.723609, -0.449721,
		0.575403, -0.088942, -0.813020,
		-0.628307, -0.684456, -0.369798,
		40.844570, 32.235794, 45.591415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154339, 32.660534, 45.123756>,  <41.284386, 32.714912, 45.850273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154339, 32.660534, 45.123756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.825214, 32.570091, 45.332314>,  <40.627739, 32.515823, 45.457447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.825214, 32.570091, 45.332314>,  <41.154339, 32.660534, 45.123756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825214, 32.570091, 45.332314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530612, 0.634236, -0.562313,
		-0.203544, -0.739337, -0.641834,
		-0.822813, -0.226109, 0.521396,
		40.578369, 32.502258, 45.488731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631702, 32.400906, 44.630939>,  <41.154339, 32.660534, 45.123756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631702, 32.400906, 44.630939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.460140, 32.595497, 44.935410>,  <40.357204, 32.712250, 45.118092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.460140, 32.595497, 44.935410>,  <40.631702, 32.400906, 44.630939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460140, 32.595497, 44.935410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626067, 0.447349, -0.638685,
		-0.651214, -0.750480, 0.112696,
		-0.428906, 0.486476, 0.761171,
		40.331467, 32.741440, 45.163761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799080, 32.420799, 43.901363>,  <40.631702, 32.400906, 44.630939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799080, 32.420799, 43.901363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.566841, 32.652409, 43.672405>,  <40.427498, 32.791374, 43.535030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.566841, 32.652409, 43.672405>,  <40.799080, 32.420799, 43.901363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566841, 32.652409, 43.672405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625943, 0.767020, 0.140984,
		0.520672, -0.276431, -0.807766,
		-0.580600, 0.579022, -0.572396,
		40.392662, 32.826115, 43.500687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138741, 32.739983, 43.222343>,  <40.799080, 32.420799, 43.901363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138741, 32.739983, 43.222343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865448, 32.972652, 43.398911>,  <40.701473, 33.112255, 43.504848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865448, 32.972652, 43.398911>,  <41.138741, 32.739983, 43.222343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865448, 32.972652, 43.398911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670856, 0.738744, 0.064880,
		-0.288352, 0.340453, -0.894955,
		-0.683232, 0.581677, 0.441413,
		40.660477, 33.147156, 43.531334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265675, 33.415546, 43.080105>,  <41.138741, 32.739983, 43.222343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265675, 33.415546, 43.080105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053997, 33.478466, 43.413620>,  <40.926991, 33.516220, 43.613731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053997, 33.478466, 43.413620>,  <41.265675, 33.415546, 43.080105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053997, 33.478466, 43.413620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724448, 0.595342, 0.347481,
		-0.441732, 0.787924, -0.429009,
		-0.529196, 0.157301, 0.833791,
		40.895237, 33.525658, 43.663757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849541, 33.784561, 43.163113>,  <41.265675, 33.415546, 43.080105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849541, 33.784561, 43.163113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.035690, 34.058487, 42.938805>,  <42.147381, 34.222843, 42.804222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.035690, 34.058487, 42.938805>,  <41.849541, 33.784561, 43.163113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035690, 34.058487, 42.938805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383036, 0.415340, 0.825091,
		0.797942, -0.598770, -0.069020,
		0.465373, 0.684812, -0.560768,
		42.175301, 34.263931, 42.770573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441669, 33.995838, 42.605358>,  <41.849541, 33.784561, 43.163113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441669, 33.995838, 42.605358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067665, 33.981167, 42.464272>,  <40.843262, 33.972366, 42.379620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067665, 33.981167, 42.464272>,  <41.441669, 33.995838, 42.605358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067665, 33.981167, 42.464272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325533, 0.483263, 0.812702,
		0.140651, 0.874707, -0.463795,
		-0.935011, -0.036674, -0.352717,
		40.787163, 33.970165, 42.358456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114113, 34.192036, 42.147007>,  <41.441669, 33.995838, 42.605358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114113, 34.192036, 42.147007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081249, 34.257210, 41.753723>,  <42.061531, 34.296314, 41.517754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081249, 34.257210, 41.753723>,  <42.114113, 34.192036, 42.147007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081249, 34.257210, 41.753723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385119, -0.904721, -0.182108,
		-0.919203, -0.393614, 0.011581,
		-0.082158, 0.162934, -0.983210,
		42.056602, 34.306091, 41.458759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860069, 33.649261, 41.855862>,  <42.114113, 34.192036, 42.147007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860069, 33.649261, 41.855862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.030170, 33.830013, 41.542183>,  <42.132233, 33.938465, 41.353977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.030170, 33.830013, 41.542183>,  <41.860069, 33.649261, 41.855862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030170, 33.830013, 41.542183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548832, -0.817715, -0.173567,
		-0.719680, -0.356582, -0.595743,
		0.425257, 0.451875, -0.784197,
		42.157749, 33.965576, 41.306923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215580, 33.119308, 41.506618>,  <41.860069, 33.649261, 41.855862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215580, 33.119308, 41.506618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.353481, 33.438377, 41.308681>,  <42.436222, 33.629818, 41.189919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.353481, 33.438377, 41.308681>,  <42.215580, 33.119308, 41.506618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353481, 33.438377, 41.308681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700085, -0.569662, -0.430541,
		-0.625322, -0.198001, -0.754830,
		0.344751, 0.797672, -0.494840,
		42.456905, 33.677677, 41.160229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245331, 32.906662, 40.786419>,  <42.215580, 33.119308, 41.506618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245331, 32.906662, 40.786419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.518547, 33.181686, 40.884983>,  <42.682476, 33.346703, 40.944122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.518547, 33.181686, 40.884983>,  <42.245331, 32.906662, 40.786419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518547, 33.181686, 40.884983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728640, -0.618153, -0.294909,
		-0.050453, 0.380975, -0.923208,
		0.683036, 0.687565, 0.246406,
		42.723457, 33.387955, 40.958904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693340, 33.035374, 40.196026>,  <42.245331, 32.906662, 40.786419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693340, 33.035374, 40.196026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.887249, 33.129520, 40.532974>,  <43.003593, 33.186008, 40.735146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.887249, 33.129520, 40.532974>,  <42.693340, 33.035374, 40.196026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887249, 33.129520, 40.532974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822192, -0.451127, -0.347111,
		0.298318, 0.860864, -0.412213,
		0.484775, 0.235369, 0.842374,
		43.032681, 33.200130, 40.785686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357658, 33.018162, 39.981121>,  <42.693340, 33.035374, 40.196026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357658, 33.018162, 39.981121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.403610, 32.992748, 40.377659>,  <43.431183, 32.977501, 40.615582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.403610, 32.992748, 40.377659>,  <43.357658, 33.018162, 39.981121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403610, 32.992748, 40.377659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926709, -0.352583, -0.129985,
		0.357790, 0.933621, 0.018370,
		0.114880, -0.063531, 0.991346,
		43.438076, 32.973690, 40.675064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652729, 33.033474, 39.303867>,  <43.357658, 33.018162, 39.981121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652729, 33.033474, 39.303867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.048435, 33.073933, 39.346054>,  <44.285858, 33.098209, 39.371365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.048435, 33.073933, 39.346054>,  <43.652729, 33.033474, 39.303867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048435, 33.073933, 39.346054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144187, 0.558330, 0.816993,
		0.023750, -0.823430, 0.566921,
		0.989265, 0.101146, 0.105468,
		44.345215, 33.104275, 39.377693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562965, 33.514565, 38.708706>,  <43.652729, 33.033474, 39.303867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562965, 33.514565, 38.708706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.236622, 33.734238, 38.781120>,  <43.040817, 33.866039, 38.824570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.236622, 33.734238, 38.781120>,  <43.562965, 33.514565, 38.708706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236622, 33.734238, 38.781120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545802, -0.627963, -0.554763,
		-0.190979, -0.551420, 0.812073,
		-0.815860, 0.549179, 0.181038,
		42.991863, 33.898991, 38.835430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939667, 33.056805, 38.784306>,  <43.562965, 33.514565, 38.708706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939667, 33.056805, 38.784306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.827503, 33.414730, 38.645355>,  <42.760204, 33.629486, 38.561985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.827503, 33.414730, 38.645355>,  <42.939667, 33.056805, 38.784306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827503, 33.414730, 38.645355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343179, -0.431436, -0.834321,
		-0.896436, -0.114742, 0.428063,
		-0.280413, 0.894817, -0.347377,
		42.743378, 33.683174, 38.541142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342396, 33.114567, 38.127430>,  <42.939667, 33.056805, 38.784306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342396, 33.114567, 38.127430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.273926, 32.720589, 38.137035>,  <43.232841, 32.484200, 38.142799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.273926, 32.720589, 38.137035>,  <43.342396, 33.114567, 38.127430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273926, 32.720589, 38.137035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204770, 0.059411, 0.977005,
		-0.963726, 0.162324, -0.211858,
		-0.171178, -0.984947, 0.024017,
		43.222572, 32.425106, 38.144241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818539, 33.558067, 37.598633>,  <43.342396, 33.114567, 38.127430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818539, 33.558067, 37.598633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.455021, 33.399479, 37.546638>,  <43.236908, 33.304325, 37.515442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.455021, 33.399479, 37.546638>,  <43.818539, 33.558067, 37.598633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455021, 33.399479, 37.546638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244198, -0.252808, -0.936192,
		0.338311, -0.882552, 0.326570,
		-0.908797, -0.396472, -0.129990,
		43.182381, 33.280537, 37.507641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770283, 33.587433, 36.899326>,  <43.818539, 33.558067, 37.598633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770283, 33.587433, 36.899326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.095650, 33.701046, 37.102371>,  <44.290871, 33.769215, 37.224197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.095650, 33.701046, 37.102371>,  <43.770283, 33.587433, 36.899326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095650, 33.701046, 37.102371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218801, 0.659181, -0.719449,
		-0.538955, 0.696282, 0.474046,
		0.813421, 0.284029, 0.507616,
		44.339676, 33.786255, 37.254658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793507, 34.338879, 37.057587>,  <43.770283, 33.587433, 36.899326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793507, 34.338879, 37.057587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.175785, 34.222496, 37.039780>,  <44.405151, 34.152664, 37.029095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.175785, 34.222496, 37.039780>,  <43.793507, 34.338879, 37.057587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175785, 34.222496, 37.039780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174162, 0.680898, -0.711368,
		0.237290, 0.672101, 0.701408,
		0.955699, -0.290959, -0.044516,
		44.462494, 34.135208, 37.026424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125637, 34.911293, 37.049061>,  <43.793507, 34.338879, 37.057587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125637, 34.911293, 37.049061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.420063, 34.660076, 36.948055>,  <44.596718, 34.509346, 36.887451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.420063, 34.660076, 36.948055>,  <44.125637, 34.911293, 37.049061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420063, 34.660076, 36.948055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371067, 0.686373, -0.625462,
		0.566137, 0.366682, 0.738263,
		0.736069, -0.628042, -0.252518,
		44.640884, 34.471664, 36.872299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699051, 35.308537, 37.136280>,  <44.125637, 34.911293, 37.049061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699051, 35.308537, 37.136280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.757652, 35.009396, 36.877281>,  <44.792812, 34.829910, 36.721882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.757652, 35.009396, 36.877281>,  <44.699051, 35.308537, 37.136280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757652, 35.009396, 36.877281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338994, 0.652881, -0.677370,
		0.929312, -0.120262, 0.349167,
		0.146503, -0.747853, -0.647498,
		44.801601, 34.785038, 36.683033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419697, 35.233883, 36.826855>,  <44.699051, 35.308537, 37.136280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419697, 35.233883, 36.826855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.097630, 35.165329, 36.599758>,  <44.904388, 35.124195, 36.463501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.097630, 35.165329, 36.599758>,  <45.419697, 35.233883, 36.826855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097630, 35.165329, 36.599758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390383, 0.567486, -0.724956,
		0.446431, -0.805349, -0.390017,
		-0.805171, -0.171387, -0.567737,
		44.856079, 35.113914, 36.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739586, 35.837925, 36.632740>,  <45.419697, 35.233883, 36.826855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739586, 35.837925, 36.632740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.614796, 36.196011, 36.760025>,  <45.539921, 36.410862, 36.836395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.614796, 36.196011, 36.760025>,  <45.739586, 35.837925, 36.632740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614796, 36.196011, 36.760025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604095, -0.445413, 0.660815,
		0.733307, 0.013930, 0.679755,
		-0.311976, 0.895217, 0.318209,
		45.521202, 36.464577, 36.855488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972546, 36.357559, 36.957069>,  <45.739586, 35.837925, 36.632740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972546, 36.357559, 36.957069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.223217, 36.669086, 36.946369>,  <46.373619, 36.856003, 36.939949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.223217, 36.669086, 36.946369>,  <45.972546, 36.357559, 36.957069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223217, 36.669086, 36.946369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744550, -0.608536, -0.274462,
		-0.230031, 0.152087, -0.961226,
		0.626683, 0.778815, -0.026746,
		46.411221, 36.902733, 36.938347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207951, 36.711308, 36.240601>,  <45.972546, 36.357559, 36.957069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207951, 36.711308, 36.240601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.439983, 36.688530, 36.565628>,  <46.579205, 36.674866, 36.760643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.439983, 36.688530, 36.565628>,  <46.207951, 36.711308, 36.240601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439983, 36.688530, 36.565628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647704, -0.572672, -0.502521,
		0.493947, 0.817805, -0.295316,
		0.580083, -0.056941, 0.812565,
		46.614010, 36.671448, 36.809399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.940426, 36.730137, 36.028702>,  <46.207951, 36.711308, 36.240601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.940426, 36.730137, 36.028702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.945518, 36.562717, 36.391945>,  <46.948574, 36.462265, 36.609890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.945518, 36.562717, 36.391945>,  <46.940426, 36.730137, 36.028702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.945518, 36.562717, 36.391945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642316, -0.692602, -0.328227,
		0.766334, 0.587469, 0.260022,
		0.012731, -0.418548, 0.908106,
		46.949337, 36.437153, 36.664375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.563679, 36.790951, 36.386425>,  <46.940426, 36.730137, 36.028702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.563679, 36.790951, 36.386425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.347599, 36.459236, 36.443645>,  <47.217953, 36.260208, 36.477978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.347599, 36.459236, 36.443645>,  <47.563679, 36.790951, 36.386425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347599, 36.459236, 36.443645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713041, -0.541334, -0.445568,
		0.446941, -0.138696, 0.883746,
		-0.540200, -0.829290, 0.143048,
		47.185539, 36.210449, 36.486561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.990597, 36.149551, 36.633564>,  <47.563679, 36.790951, 36.386425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.990597, 36.149551, 36.633564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.682903, 36.064190, 36.392654>,  <47.498287, 36.012974, 36.248108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.682903, 36.064190, 36.392654>,  <47.990597, 36.149551, 36.633564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682903, 36.064190, 36.392654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636440, -0.339599, -0.692544,
		-0.056743, -0.916042, 0.397049,
		-0.769236, -0.213401, -0.602275,
		47.452133, 36.000172, 36.211971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.298367, 35.653191, 36.264469>,  <47.990597, 36.149551, 36.633564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.298367, 35.653191, 36.264469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.975395, 35.717625, 36.037449>,  <47.781612, 35.756287, 35.901237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.975395, 35.717625, 36.037449>,  <48.298367, 35.653191, 36.264469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.975395, 35.717625, 36.037449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376585, -0.599806, -0.705986,
		-0.454144, -0.783763, 0.423637,
		-0.807426, 0.161084, -0.567552,
		47.733166, 35.765949, 35.867184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.846653, 35.029037, 36.183735>,  <48.298367, 35.653191, 36.264469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.846653, 35.029037, 36.183735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.889809, 35.304184, 35.896626>,  <47.915703, 35.469273, 35.724358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.889809, 35.304184, 35.896626>,  <47.846653, 35.029037, 36.183735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.889809, 35.304184, 35.896626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290237, -0.712332, -0.639020,
		-0.950854, -0.139383, -0.276495,
		0.107888, 0.687863, -0.717777,
		47.922176, 35.510544, 35.681293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490417, 34.794872, 35.542465>,  <47.846653, 35.029037, 36.183735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490417, 34.794872, 35.542465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.806057, 35.032169, 35.478718>,  <47.995441, 35.174545, 35.440472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.806057, 35.032169, 35.478718>,  <47.490417, 34.794872, 35.542465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.806057, 35.032169, 35.478718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456292, -0.739776, -0.494499,
		-0.411251, 0.317489, -0.854443,
		0.789095, 0.593239, -0.159366,
		48.042786, 35.210140, 35.430908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.664242, 34.829735, 34.734718>,  <47.490417, 34.794872, 35.542465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.664242, 34.829735, 34.734718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.959450, 34.883705, 34.999180>,  <48.136574, 34.916088, 35.157856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.959450, 34.883705, 34.999180>,  <47.664242, 34.829735, 34.734718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.959450, 34.883705, 34.999180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608067, -0.557772, -0.564929,
		0.292549, 0.818954, -0.493690,
		0.738017, 0.134927, 0.661155,
		48.180855, 34.924183, 35.197525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.092667, 34.604954, 57.509407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254009, 34.950581, 57.388950>,  <33.350815, 35.157955, 57.316677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254009, 34.950581, 57.388950>,  <33.092667, 34.604954, 57.509407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254009, 34.950581, 57.388950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331123, -0.444631, -0.832262,
		-0.853029, 0.235986, -0.465460,
		0.403360, 0.864068, -0.301142,
		33.375019, 35.209801, 57.298607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877548, 34.612267, 56.828575>,  <33.092667, 34.604954, 57.509407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877548, 34.612267, 56.828575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.183365, 34.868870, 56.853695>,  <33.366856, 35.022831, 56.868767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.183365, 34.868870, 56.853695>,  <32.877548, 34.612267, 56.828575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183365, 34.868870, 56.853695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295739, -0.262549, -0.918481,
		-0.572721, 0.720792, -0.390448,
		0.764545, 0.641504, 0.062799,
		33.412727, 35.061321, 56.872536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787430, 35.032154, 56.206039>,  <32.877548, 34.612267, 56.828575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787430, 35.032154, 56.206039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.165077, 35.039257, 56.337692>,  <33.391666, 35.043518, 56.416683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.165077, 35.039257, 56.337692>,  <32.787430, 35.032154, 56.206039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165077, 35.039257, 56.337692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327283, -0.169059, -0.929680,
		0.039136, 0.985446, -0.165422,
		0.944115, 0.017756, 0.329136,
		33.448311, 35.044582, 56.436432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186314, 35.422947, 55.729286>,  <32.787430, 35.032154, 56.206039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186314, 35.422947, 55.729286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.461651, 35.219185, 55.935852>,  <33.626854, 35.096928, 56.059792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.461651, 35.219185, 55.935852>,  <33.186314, 35.422947, 55.729286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461651, 35.219185, 55.935852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511240, -0.164362, -0.843575,
		0.514601, 0.844684, 0.147291,
		0.688345, -0.509405, 0.516417,
		33.668156, 35.066364, 56.090778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826725, 35.631851, 55.425793>,  <33.186314, 35.422947, 55.729286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826725, 35.631851, 55.425793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.892704, 35.284004, 55.611931>,  <33.932289, 35.075294, 55.723614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.892704, 35.284004, 55.611931>,  <33.826725, 35.631851, 55.425793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892704, 35.284004, 55.611931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531346, -0.319145, -0.784740,
		0.830942, 0.376701, 0.409429,
		0.164945, -0.869622, 0.465350,
		33.942188, 35.023117, 55.751537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405914, 35.451923, 55.134632>,  <33.826725, 35.631851, 55.425793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405914, 35.451923, 55.134632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311760, 35.097969, 55.295418>,  <34.255268, 34.885597, 55.391891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311760, 35.097969, 55.295418>,  <34.405914, 35.451923, 55.134632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311760, 35.097969, 55.295418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437169, -0.465785, -0.769368,
		0.868030, -0.005372, 0.496483,
		-0.235387, -0.884881, 0.401967,
		34.241142, 34.832504, 55.416008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002617, 35.021427, 54.859371>,  <34.405914, 35.451923, 55.134632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002617, 35.021427, 54.859371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.675945, 34.822365, 54.976246>,  <34.479942, 34.702927, 55.046371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.675945, 34.822365, 54.976246>,  <35.002617, 35.021427, 54.859371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675945, 34.822365, 54.976246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020772, -0.480628, -0.876679,
		0.576716, -0.722036, 0.382182,
		-0.816681, -0.497656, 0.292184,
		34.430943, 34.673069, 55.063900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134602, 34.299622, 54.833187>,  <35.002617, 35.021427, 54.859371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134602, 34.299622, 54.833187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.743801, 34.368038, 54.782257>,  <34.509319, 34.409088, 54.751701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.743801, 34.368038, 54.782257>,  <35.134602, 34.299622, 54.833187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743801, 34.368038, 54.782257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034348, -0.463078, -0.885652,
		-0.210441, -0.869658, 0.446553,
		-0.977003, 0.171040, -0.127321,
		34.450699, 34.419350, 54.744061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868275, 33.652126, 54.617245>,  <35.134602, 34.299622, 54.833187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868275, 33.652126, 54.617245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.563984, 33.895439, 54.526653>,  <34.381409, 34.041428, 54.472298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.563984, 33.895439, 54.526653>,  <34.868275, 33.652126, 54.617245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563984, 33.895439, 54.526653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066304, -0.274277, -0.959362,
		-0.645681, -0.744826, 0.168317,
		-0.760723, 0.608282, -0.226480,
		34.335766, 34.077923, 54.458710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338863, 33.286770, 54.333908>,  <34.868275, 33.652126, 54.617245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338863, 33.286770, 54.333908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.253624, 33.654312, 54.201065>,  <34.202480, 33.874836, 54.121361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.253624, 33.654312, 54.201065>,  <34.338863, 33.286770, 54.333908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253624, 33.654312, 54.201065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118024, -0.313214, -0.942320,
		-0.969876, -0.240005, -0.041701,
		-0.213100, 0.918855, -0.332105,
		34.189693, 33.929970, 54.101433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688522, 33.317650, 54.024765>,  <34.338863, 33.286770, 54.333908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688522, 33.317650, 54.024765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.872032, 33.632355, 53.859581>,  <33.982140, 33.821178, 53.760471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.872032, 33.632355, 53.859581>,  <33.688522, 33.317650, 54.024765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872032, 33.632355, 53.859581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169945, -0.378480, -0.909874,
		-0.872148, 0.487610, -0.039933,
		0.458778, 0.786759, -0.412958,
		34.009666, 33.868382, 53.735695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175114, 33.635616, 53.687954>,  <33.688522, 33.317650, 54.024765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175114, 33.635616, 53.687954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.521938, 33.732979, 53.514076>,  <33.730034, 33.791397, 53.409752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.521938, 33.732979, 53.514076>,  <33.175114, 33.635616, 53.687954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521938, 33.732979, 53.514076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340162, -0.348245, -0.873507,
		-0.363994, 0.905251, -0.219154,
		0.867063, 0.243404, -0.434691,
		33.782059, 33.806000, 53.383667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934326, 33.904587, 53.059673>,  <33.175114, 33.635616, 53.687954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934326, 33.904587, 53.059673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.326435, 33.851578, 53.001007>,  <33.561699, 33.819771, 52.965809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.326435, 33.851578, 53.001007>,  <32.934326, 33.904587, 53.059673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326435, 33.851578, 53.001007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180363, -0.296026, -0.937997,
		0.080892, 0.945941, -0.314088,
		0.980268, -0.132526, -0.146667,
		33.620514, 33.811821, 52.957008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045216, 34.161385, 52.382317>,  <32.934326, 33.904587, 53.059673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045216, 34.161385, 52.382317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.359299, 33.929432, 52.469212>,  <33.547749, 33.790260, 52.521347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.359299, 33.929432, 52.469212>,  <33.045216, 34.161385, 52.382317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359299, 33.929432, 52.469212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049268, -0.408205, -0.911560,
		0.617273, 0.705059, -0.349094,
		0.785205, -0.579881, 0.217237,
		33.594860, 33.755466, 52.534382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471203, 34.286762, 51.901566>,  <33.045216, 34.161385, 52.382317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471203, 34.286762, 51.901566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.554058, 33.920155, 52.038441>,  <33.603771, 33.700191, 52.120564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.554058, 33.920155, 52.038441>,  <33.471203, 34.286762, 51.901566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554058, 33.920155, 52.038441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075963, -0.333648, -0.939632,
		0.975359, 0.220624, 0.000511,
		0.207135, -0.916517, 0.342185,
		33.616199, 33.645199, 52.141098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942162, 34.014446, 51.570293>,  <33.471203, 34.286762, 51.901566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942162, 34.014446, 51.570293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.805119, 33.670193, 51.720989>,  <33.722893, 33.463642, 51.811409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.805119, 33.670193, 51.720989>,  <33.942162, 34.014446, 51.570293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805119, 33.670193, 51.720989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064364, -0.421573, -0.904507,
		0.937273, -0.285638, 0.199825,
		-0.342603, -0.860632, 0.376744,
		33.702339, 33.412003, 51.834011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442345, 33.477402, 51.369980>,  <33.942162, 34.014446, 51.570293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442345, 33.477402, 51.369980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.100616, 33.289383, 51.458691>,  <33.895580, 33.176571, 51.511917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.100616, 33.289383, 51.458691>,  <34.442345, 33.477402, 51.369980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100616, 33.289383, 51.458691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021781, -0.393952, -0.918873,
		0.519283, -0.789846, 0.326325,
		-0.854325, -0.470048, 0.221776,
		33.844318, 33.148369, 51.525223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556286, 32.767597, 51.214161>,  <34.442345, 33.477402, 51.369980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556286, 32.767597, 51.214161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.166115, 32.853600, 51.194950>,  <33.932011, 32.905201, 51.183422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.166115, 32.853600, 51.194950>,  <34.556286, 32.767597, 51.214161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166115, 32.853600, 51.194950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056033, -0.452969, -0.889764,
		-0.213059, -0.865212, 0.453888,
		-0.975431, 0.215005, -0.048029,
		33.873486, 32.918102, 51.180542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342323, 32.198982, 50.811798>,  <34.556286, 32.767597, 51.214161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342323, 32.198982, 50.811798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.036766, 32.455975, 50.787514>,  <33.853432, 32.610172, 50.772942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.036766, 32.455975, 50.787514>,  <34.342323, 32.198982, 50.811798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036766, 32.455975, 50.787514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149891, -0.268138, -0.951648,
		-0.627698, -0.717855, 0.301131,
		-0.763890, 0.642484, -0.060710,
		33.807598, 32.648720, 50.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873436, 31.822184, 50.551781>,  <34.342323, 32.198982, 50.811798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873436, 31.822184, 50.551781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.743866, 32.196800, 50.498177>,  <33.666122, 32.421570, 50.466015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.743866, 32.196800, 50.498177>,  <33.873436, 31.822184, 50.551781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743866, 32.196800, 50.498177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263617, -0.225386, -0.937927,
		-0.908613, -0.268494, 0.319897,
		-0.323928, 0.936543, -0.134009,
		33.646687, 32.477764, 50.457973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303680, 31.744173, 50.315029>,  <33.873436, 31.822184, 50.551781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303680, 31.744173, 50.315029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.419712, 32.107273, 50.193806>,  <33.489330, 32.325134, 50.121071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.419712, 32.107273, 50.193806>,  <33.303680, 31.744173, 50.315029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419712, 32.107273, 50.193806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178059, -0.259954, -0.949062,
		-0.940292, 0.329264, 0.086226,
		0.290077, 0.907749, -0.303061,
		33.506737, 32.379597, 50.102886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809292, 31.915216, 49.819637>,  <33.303680, 31.744173, 50.315029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809292, 31.915216, 49.819637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.122620, 32.154079, 49.750576>,  <33.310616, 32.297398, 49.709137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.122620, 32.154079, 49.750576>,  <32.809292, 31.915216, 49.819637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122620, 32.154079, 49.750576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100057, -0.153010, -0.983146,
		-0.613512, 0.787395, -0.060106,
		0.783321, 0.597158, -0.172657,
		33.357616, 32.333225, 49.698780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287117, 32.433838, 49.707241>,  <32.809292, 31.915216, 49.819637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287117, 32.433838, 49.707241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.916943, 32.322514, 49.604393>,  <31.694838, 32.255718, 49.542683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.916943, 32.322514, 49.604393>,  <32.287117, 32.433838, 49.707241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916943, 32.322514, 49.604393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340386, 0.312544, 0.886822,
		-0.166450, 0.908218, -0.383972,
		-0.925436, -0.278310, -0.257122,
		31.639313, 32.239021, 49.527256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838076, 33.064407, 49.772274>,  <32.287117, 32.433838, 49.707241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838076, 33.064407, 49.772274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.623075, 32.728355, 49.801323>,  <31.494076, 32.526722, 49.818752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.623075, 32.728355, 49.801323>,  <31.838076, 33.064407, 49.772274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623075, 32.728355, 49.801323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483415, 0.377551, 0.789788,
		-0.690945, 0.389402, -0.609066,
		-0.537499, -0.840132, 0.072624,
		31.461826, 32.476315, 49.823109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093544, 33.325703, 49.766201>,  <31.838076, 33.064407, 49.772274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093544, 33.325703, 49.766201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.134829, 32.966137, 49.936520>,  <31.159599, 32.750397, 50.038712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.134829, 32.966137, 49.936520>,  <31.093544, 33.325703, 49.766201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134829, 32.966137, 49.936520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517979, 0.316882, 0.794534,
		-0.849144, -0.302560, -0.432912,
		0.103212, -0.898912, 0.425798,
		31.165792, 32.696465, 50.064259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528950, 33.240147, 50.034988>,  <31.093544, 33.325703, 49.766201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528950, 33.240147, 50.034988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.760235, 32.980904, 50.233234>,  <30.899006, 32.825359, 50.352180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.760235, 32.980904, 50.233234>,  <30.528950, 33.240147, 50.034988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760235, 32.980904, 50.233234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566933, 0.117682, 0.815314,
		-0.586735, -0.752403, -0.299387,
		0.578212, -0.648106, 0.495610,
		30.933699, 32.786472, 50.381916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078459, 32.921753, 50.535061>,  <30.528950, 33.240147, 50.034988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078459, 32.921753, 50.535061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.432774, 32.827534, 50.695011>,  <30.645363, 32.771000, 50.790981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.432774, 32.827534, 50.695011>,  <30.078459, 32.921753, 50.535061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432774, 32.827534, 50.695011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331418, 0.282100, 0.900323,
		-0.324876, -0.930019, 0.171815,
		0.885787, -0.235551, 0.399872,
		30.698509, 32.756870, 50.814972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988686, 32.469467, 51.116161>,  <30.078459, 32.921753, 50.535061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988686, 32.469467, 51.116161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.350574, 32.629578, 51.174480>,  <30.567707, 32.725643, 51.209473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.350574, 32.629578, 51.174480>,  <29.988686, 32.469467, 51.116161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350574, 32.629578, 51.174480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198723, 0.093823, 0.975554,
		0.376812, -0.911579, 0.164428,
		0.904722, 0.400276, 0.145798,
		30.621990, 32.749660, 51.218220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177065, 32.137192, 51.665401>,  <29.988686, 32.469467, 51.116161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177065, 32.137192, 51.665401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.424809, 32.450050, 51.638149>,  <30.573456, 32.637764, 51.621796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.424809, 32.450050, 51.638149>,  <30.177065, 32.137192, 51.665401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424809, 32.450050, 51.638149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015789, 0.099176, 0.994945,
		0.784948, -0.615153, 0.073775,
		0.619360, 0.782145, -0.068135,
		30.610617, 32.684692, 51.617710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693319, 31.941761, 52.087151>,  <30.177065, 32.137192, 51.665401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693319, 31.941761, 52.087151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.697268, 32.339455, 52.044434>,  <30.699636, 32.578072, 52.018803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.697268, 32.339455, 52.044434>,  <30.693319, 31.941761, 52.087151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697268, 32.339455, 52.044434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076791, 0.105726, 0.991426,
		0.996998, -0.017984, -0.075305,
		0.009868, 0.994233, -0.106790,
		30.700228, 32.637726, 52.012398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235203, 32.175190, 52.549683>,  <30.693319, 31.941761, 52.087151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235203, 32.175190, 52.549683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.018345, 32.502056, 52.471390>,  <30.888229, 32.698177, 52.424416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.018345, 32.502056, 52.471390>,  <31.235203, 32.175190, 52.549683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018345, 32.502056, 52.471390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066849, 0.274143, 0.959363,
		0.837621, 0.507030, -0.203253,
		-0.542146, 0.817170, -0.195733,
		30.855701, 32.747208, 52.412670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563658, 32.675911, 52.857475>,  <31.235203, 32.175190, 52.549683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563658, 32.675911, 52.857475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.206263, 32.851082, 52.817673>,  <30.991825, 32.956184, 52.793793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.206263, 32.851082, 52.817673>,  <31.563658, 32.675911, 52.857475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206263, 32.851082, 52.817673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021529, 0.263082, 0.964533,
		0.448575, 0.859655, -0.244488,
		-0.893486, 0.437929, -0.099505,
		30.938217, 32.982460, 52.787823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654526, 33.321892, 53.066761>,  <31.563658, 32.675911, 52.857475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654526, 33.321892, 53.066761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.267668, 33.234035, 53.117962>,  <31.035553, 33.181320, 53.148682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.267668, 33.234035, 53.117962>,  <31.654526, 33.321892, 53.066761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267668, 33.234035, 53.117962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011964, 0.463639, 0.885943,
		-0.253939, 0.858368, -0.445779,
		-0.967146, -0.219642, 0.128006,
		30.977524, 33.168144, 53.156364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313940, 33.943485, 53.222340>,  <31.654526, 33.321892, 53.066761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313940, 33.943485, 53.222340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.058516, 33.668159, 53.360012>,  <30.905260, 33.502964, 53.442616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.058516, 33.668159, 53.360012>,  <31.313940, 33.943485, 53.222340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058516, 33.668159, 53.360012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016699, 0.459522, 0.888010,
		-0.769388, 0.561303, -0.304927,
		-0.638563, -0.688316, 0.344178,
		30.866947, 33.461666, 53.463264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875319, 34.364044, 53.604744>,  <31.313940, 33.943485, 53.222340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875319, 34.364044, 53.604744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.828810, 33.993919, 53.749119>,  <30.800905, 33.771843, 53.835743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.828810, 33.993919, 53.749119>,  <30.875319, 34.364044, 53.604744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828810, 33.993919, 53.749119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018979, 0.361267, 0.932269,
		-0.993036, 0.115245, -0.024443,
		-0.116270, -0.925313, 0.360939,
		30.793928, 33.716324, 53.857399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227598, 34.376179, 53.897064>,  <30.875319, 34.364044, 53.604744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227598, 34.376179, 53.897064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.444521, 34.082745, 54.060898>,  <30.574675, 33.906685, 54.159199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.444521, 34.082745, 54.060898>,  <30.227598, 34.376179, 53.897064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444521, 34.082745, 54.060898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170562, 0.381222, 0.908613,
		-0.822687, -0.562606, 0.081618,
		0.542305, -0.733583, 0.409586,
		30.607212, 33.862671, 54.183773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836533, 34.036587, 54.466827>,  <30.227598, 34.376179, 53.897064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836533, 34.036587, 54.466827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.200848, 33.914593, 54.578148>,  <30.419437, 33.841396, 54.644939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.200848, 33.914593, 54.578148>,  <29.836533, 34.036587, 54.466827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200848, 33.914593, 54.578148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212696, 0.231129, 0.949389,
		-0.353871, -0.923885, 0.145641,
		0.910789, -0.304984, 0.278297,
		30.474085, 33.823097, 54.661636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727005, 33.570332, 55.032261>,  <29.836533, 34.036587, 54.466827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727005, 33.570332, 55.032261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.097897, 33.719120, 55.049622>,  <30.320431, 33.808395, 55.060036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.097897, 33.719120, 55.049622>,  <29.727005, 33.570332, 55.032261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097897, 33.719120, 55.049622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069396, 0.056788, 0.995971,
		0.368010, -0.926505, 0.078469,
		0.927228, 0.371973, 0.043397,
		30.376064, 33.830711, 55.062641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013903, 33.263790, 55.674496>,  <29.727005, 33.570332, 55.032261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013903, 33.263790, 55.674496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.275513, 33.557663, 55.602394>,  <30.432478, 33.733986, 55.559132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.275513, 33.557663, 55.602394>,  <30.013903, 33.263790, 55.674496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275513, 33.557663, 55.602394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067858, 0.180347, 0.981260,
		0.753424, -0.654000, 0.068097,
		0.654025, 0.734683, -0.180257,
		30.471720, 33.778069, 55.548317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519270, 33.224373, 56.162701>,  <30.013903, 33.263790, 55.674496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519270, 33.224373, 56.162701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.571802, 33.596275, 56.025116>,  <30.603321, 33.819416, 55.942566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.571802, 33.596275, 56.025116>,  <30.519270, 33.224373, 56.162701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571802, 33.596275, 56.025116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024917, 0.343760, 0.938727,
		0.991025, -0.131853, 0.021979,
		0.131330, 0.929755, -0.343960,
		30.611200, 33.875202, 55.921928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.977367, 33.562138, 56.659985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826136, 33.877094, 56.465229>,  <30.735395, 34.066071, 56.348373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826136, 33.877094, 56.465229>,  <30.977367, 33.562138, 56.659985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826136, 33.877094, 56.465229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125061, 0.477670, 0.869593,
		0.917287, 0.389668, -0.082126,
		-0.378081, 0.787395, -0.486892,
		30.712711, 34.113312, 56.319160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504984, 34.136532, 56.677906>,  <30.977367, 33.562138, 56.659985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504984, 34.136532, 56.677906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133772, 34.275124, 56.623188>,  <30.911045, 34.358276, 56.590359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133772, 34.275124, 56.623188>,  <31.504984, 34.136532, 56.677906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133772, 34.275124, 56.623188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116837, 0.619440, 0.776301,
		0.353704, 0.704449, -0.615341,
		-0.928031, 0.346475, -0.136793,
		30.855362, 34.379066, 56.582150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589376, 34.839668, 56.840401>,  <31.504984, 34.136532, 56.677906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589376, 34.839668, 56.840401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191580, 34.803272, 56.861202>,  <30.952902, 34.781437, 56.873684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191580, 34.803272, 56.861202>,  <31.589376, 34.839668, 56.840401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191580, 34.803272, 56.861202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020676, 0.656798, 0.753783,
		-0.102739, 0.748557, -0.655062,
		-0.994493, -0.090987, 0.052001,
		30.893232, 34.775974, 56.876804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339357, 35.558578, 56.887669>,  <31.589376, 34.839668, 56.840401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339357, 35.558578, 56.887669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064472, 35.318092, 57.050777>,  <30.899542, 35.173801, 57.148643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064472, 35.318092, 57.050777>,  <31.339357, 35.558578, 56.887669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064472, 35.318092, 57.050777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186151, 0.688312, 0.701123,
		-0.702202, 0.405913, -0.584933,
		-0.687212, -0.601216, 0.407773,
		30.858309, 35.137726, 57.173111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820908, 36.035110, 57.210903>,  <31.339357, 35.558578, 56.887669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820908, 36.035110, 57.210903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741495, 35.688644, 57.394356>,  <30.693848, 35.480766, 57.504429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741495, 35.688644, 57.394356>,  <30.820908, 36.035110, 57.210903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741495, 35.688644, 57.394356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000327, 0.468004, 0.883726,
		-0.980095, 0.175296, -0.093196,
		-0.198529, -0.866166, 0.458631,
		30.681936, 35.428795, 57.531944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348579, 36.274246, 57.672009>,  <30.820908, 36.035110, 57.210903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348579, 36.274246, 57.672009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468447, 35.914589, 57.799595>,  <30.540367, 35.698795, 57.876144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468447, 35.914589, 57.799595>,  <30.348579, 36.274246, 57.672009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468447, 35.914589, 57.799595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002496, 0.333587, 0.942716,
		-0.954040, -0.283300, 0.097721,
		0.299670, -0.899145, 0.318962,
		30.558348, 35.644844, 57.895283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830210, 36.007957, 58.078899>,  <30.348579, 36.274246, 57.672009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830210, 36.007957, 58.078899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148315, 35.795731, 58.196239>,  <30.339178, 35.668396, 58.266644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148315, 35.795731, 58.196239>,  <29.830210, 36.007957, 58.078899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148315, 35.795731, 58.196239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220644, 0.197398, 0.955170,
		-0.564688, -0.824339, 0.039917,
		0.795263, -0.530565, 0.293354,
		30.386894, 35.636562, 58.284245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665712, 35.754070, 58.730392>,  <29.830210, 36.007957, 58.078899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665712, 35.754070, 58.730392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059584, 35.695358, 58.768051>,  <30.295906, 35.660133, 58.790646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059584, 35.695358, 58.768051>,  <29.665712, 35.754070, 58.730392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059584, 35.695358, 58.768051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065429, 0.189439, 0.979710,
		-0.161632, -0.970860, 0.176933,
		0.984680, -0.146776, 0.094142,
		30.354988, 35.651325, 58.796295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701015, 35.393520, 59.404945>,  <29.665712, 35.754070, 58.730392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701015, 35.393520, 59.404945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045345, 35.570145, 59.303753>,  <30.251944, 35.676121, 59.243038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045345, 35.570145, 59.303753>,  <29.701015, 35.393520, 59.404945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045345, 35.570145, 59.303753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066793, 0.394786, 0.916342,
		0.504498, -0.805708, 0.310348,
		0.860825, 0.441564, -0.252985,
		30.303593, 35.702614, 59.227856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236168, 35.252522, 59.854385>,  <29.701015, 35.393520, 59.404945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236168, 35.252522, 59.854385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388403, 35.585541, 59.693382>,  <30.479744, 35.785355, 59.596779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388403, 35.585541, 59.693382>,  <30.236168, 35.252522, 59.854385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388403, 35.585541, 59.693382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025770, 0.444645, 0.895336,
		0.924386, -0.330380, 0.190681,
		0.380586, 0.832550, -0.402510,
		30.502579, 35.835304, 59.572628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800268, 35.411114, 60.258999>,  <30.236168, 35.252522, 59.854385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800268, 35.411114, 60.258999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694494, 35.750774, 60.076130>,  <30.631031, 35.954571, 59.966408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694494, 35.750774, 60.076130>,  <30.800268, 35.411114, 60.258999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694494, 35.750774, 60.076130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015338, 0.477694, 0.878393,
		0.964282, 0.225264, -0.139342,
		-0.264433, 0.849156, -0.457176,
		30.615164, 36.005520, 59.938976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144423, 35.878918, 60.525379>,  <30.800268, 35.411114, 60.258999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144423, 35.878918, 60.525379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860067, 36.110550, 60.365730>,  <30.689453, 36.249531, 60.269943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860067, 36.110550, 60.365730>,  <31.144423, 35.878918, 60.525379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860067, 36.110550, 60.365730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128323, 0.451171, 0.883164,
		0.691497, 0.679049, -0.246423,
		-0.710890, 0.579084, -0.399120,
		30.646801, 36.284275, 60.245995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318970, 36.583820, 60.803768>,  <31.144423, 35.878918, 60.525379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318970, 36.583820, 60.803768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937939, 36.559124, 60.684578>,  <30.709320, 36.544304, 60.613064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937939, 36.559124, 60.684578>,  <31.318970, 36.583820, 60.803768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937939, 36.559124, 60.684578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282851, 0.540795, 0.792172,
		0.112230, 0.838885, -0.532612,
		-0.952575, -0.061744, -0.297973,
		30.652166, 36.540600, 60.595184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039446, 37.252285, 60.979858>,  <31.318970, 36.583820, 60.803768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039446, 37.252285, 60.979858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693493, 37.076550, 60.882729>,  <30.485922, 36.971107, 60.824451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693493, 37.076550, 60.882729>,  <31.039446, 37.252285, 60.979858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693493, 37.076550, 60.882729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498139, 0.691470, 0.523189,
		-0.061950, 0.573456, -0.816890,
		-0.864881, -0.439337, -0.242824,
		30.434029, 36.944748, 60.809883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544611, 37.757637, 60.775581>,  <31.039446, 37.252285, 60.979858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544611, 37.757637, 60.775581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314198, 37.443241, 60.865387>,  <30.175949, 37.254604, 60.919270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314198, 37.443241, 60.865387>,  <30.544611, 37.757637, 60.775581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314198, 37.443241, 60.865387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645885, 0.605992, 0.464335,
		-0.501015, 0.122463, -0.856730,
		-0.576036, -0.785988, 0.224514,
		30.141386, 37.207443, 60.932739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960247, 37.854664, 60.388557>,  <30.544611, 37.757637, 60.775581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960247, 37.854664, 60.388557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883102, 37.622028, 60.704674>,  <29.836817, 37.482449, 60.894344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883102, 37.622028, 60.704674>,  <29.960247, 37.854664, 60.388557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883102, 37.622028, 60.704674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570100, 0.721941, 0.392158,
		-0.798618, -0.374915, -0.470795,
		-0.192860, -0.581585, 0.790294,
		29.825245, 37.447552, 60.941761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218742, 37.877010, 60.492699>,  <29.960247, 37.854664, 60.388557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218742, 37.877010, 60.492699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391886, 37.762741, 60.834698>,  <29.495771, 37.694180, 61.039898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391886, 37.762741, 60.834698>,  <29.218742, 37.877010, 60.492699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391886, 37.762741, 60.834698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575860, 0.642087, 0.506072,
		-0.693554, -0.711419, 0.113429,
		0.432861, -0.285669, 0.855000,
		29.521744, 37.677040, 61.091198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630913, 37.795464, 60.926971>,  <29.218742, 37.877010, 60.492699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630913, 37.795464, 60.926971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958336, 37.826946, 61.154575>,  <29.154789, 37.845837, 61.291138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958336, 37.826946, 61.154575>,  <28.630913, 37.795464, 60.926971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958336, 37.826946, 61.154575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530634, 0.482963, 0.696545,
		-0.219984, -0.872096, 0.437098,
		0.818556, 0.078710, 0.569009,
		29.203903, 37.850559, 61.325279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404985, 37.559959, 61.617504>,  <28.630913, 37.795464, 60.926971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404985, 37.559959, 61.617504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737549, 37.765003, 61.703285>,  <28.937086, 37.888031, 61.754753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737549, 37.765003, 61.703285>,  <28.404985, 37.559959, 61.617504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737549, 37.765003, 61.703285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460047, 0.418559, 0.783049,
		0.311640, -0.749691, 0.583819,
		0.831407, 0.512613, 0.214453,
		28.986971, 37.918789, 61.767620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451393, 37.560505, 62.312489>,  <28.404985, 37.559959, 61.617504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451393, 37.560505, 62.312489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718456, 37.848022, 62.234959>,  <28.878695, 38.020535, 62.188442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718456, 37.848022, 62.234959>,  <28.451393, 37.560505, 62.312489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718456, 37.848022, 62.234959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397796, 0.564520, 0.723240,
		0.629277, -0.405775, 0.662840,
		0.667659, 0.718793, -0.193824,
		28.918755, 38.063660, 62.176811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759800, 37.708393, 62.949600>,  <28.451393, 37.560505, 62.312489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759800, 37.708393, 62.949600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781240, 38.026054, 62.707462>,  <28.794104, 38.216652, 62.562180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781240, 38.026054, 62.707462>,  <28.759800, 37.708393, 62.949600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781240, 38.026054, 62.707462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463903, 0.556629, 0.689172,
		0.884263, 0.243882, 0.398247,
		0.053599, 0.794158, -0.605344,
		28.797319, 38.264301, 62.525860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917593, 38.394146, 63.394531>,  <28.759800, 37.708393, 62.949600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917593, 38.394146, 63.394531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750748, 38.517593, 63.052589>,  <28.650640, 38.591663, 62.847424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750748, 38.517593, 63.052589>,  <28.917593, 38.394146, 63.394531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750748, 38.517593, 63.052589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608030, 0.604335, 0.514858,
		0.675511, 0.734530, -0.064428,
		-0.417115, 0.308618, -0.854851,
		28.625614, 38.610180, 62.796135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660952, 38.828053, 63.359161>,  <28.917593, 38.394146, 63.394531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660952, 38.828053, 63.359161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452284, 38.680458, 63.666851>,  <29.327084, 38.591900, 63.851467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452284, 38.680458, 63.666851>,  <29.660952, 38.828053, 63.359161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452284, 38.680458, 63.666851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851175, -0.286385, 0.439869,
		0.057990, 0.884214, 0.463469,
		-0.521668, -0.368985, 0.769228,
		29.295784, 38.569763, 63.897621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011538, 39.071091, 63.992584>,  <29.660952, 38.828053, 63.359161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011538, 39.071091, 63.992584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814156, 38.734341, 64.079987>,  <29.695726, 38.532291, 64.132431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814156, 38.734341, 64.079987>,  <30.011538, 39.071091, 63.992584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814156, 38.734341, 64.079987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735603, -0.269901, 0.621322,
		-0.464100, 0.467332, 0.752471,
		-0.493457, -0.841876, 0.218509,
		29.666119, 38.481777, 64.145538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699804, 38.833828, 63.927883>,  <30.011538, 39.071091, 63.992584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699804, 38.833828, 63.927883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957388, 39.117981, 63.814266>,  <31.111938, 39.288471, 63.746098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957388, 39.117981, 63.814266>,  <30.699804, 38.833828, 63.927883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957388, 39.117981, 63.814266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147409, -0.249100, -0.957194,
		-0.750723, 0.658265, -0.055695,
		0.643960, 0.710378, -0.284039,
		31.150576, 39.331093, 63.729053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499226, 38.874580, 63.268280>,  <30.699804, 38.833828, 63.927883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499226, 38.874580, 63.268280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853479, 39.059471, 63.250385>,  <31.066031, 39.170406, 63.239651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853479, 39.059471, 63.250385>,  <30.499226, 38.874580, 63.268280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853479, 39.059471, 63.250385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052969, -0.196247, -0.979123,
		-0.461356, 0.864773, -0.198287,
		0.885632, 0.462227, -0.044734,
		31.119169, 39.198139, 63.236965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555048, 39.340347, 62.562794>,  <30.499226, 38.874580, 63.268280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555048, 39.340347, 62.562794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925228, 39.277119, 62.700520>,  <31.147337, 39.239182, 62.783154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925228, 39.277119, 62.700520>,  <30.555048, 39.340347, 62.562794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925228, 39.277119, 62.700520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340751, -0.049987, -0.938824,
		0.165613, 0.986162, 0.007602,
		0.925452, -0.158072, 0.344314,
		31.202864, 39.229698, 62.803814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014742, 39.690670, 62.121952>,  <30.555048, 39.340347, 62.562794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014742, 39.690670, 62.121952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244150, 39.423119, 62.311131>,  <31.381796, 39.262589, 62.424637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244150, 39.423119, 62.311131>,  <31.014742, 39.690670, 62.121952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244150, 39.423119, 62.311131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452566, -0.222520, -0.863521,
		0.682829, 0.709287, 0.175091,
		0.573523, -0.668878, 0.472942,
		31.416206, 39.222454, 62.453014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771595, 39.827568, 61.988029>,  <31.014742, 39.690670, 62.121952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771595, 39.827568, 61.988029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724277, 39.441906, 62.083035>,  <31.695887, 39.210510, 62.140038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724277, 39.441906, 62.083035>,  <31.771595, 39.827568, 61.988029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724277, 39.441906, 62.083035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569760, -0.261804, -0.778994,
		0.813253, 0.043177, 0.580306,
		-0.118292, -0.964155, 0.237513,
		31.688789, 39.152660, 62.154289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227886, 39.527939, 61.587658>,  <31.771595, 39.827568, 61.988029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227886, 39.527939, 61.587658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044590, 39.196640, 61.716671>,  <31.934612, 38.997860, 61.794079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044590, 39.196640, 61.716671>,  <32.227886, 39.527939, 61.587658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044590, 39.196640, 61.716671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099216, -0.408268, -0.907454,
		0.883273, -0.383833, 0.269260,
		-0.458241, -0.828245, 0.322530,
		31.907118, 38.948166, 61.813431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687405, 39.054512, 61.329922>,  <32.227886, 39.527939, 61.587658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687405, 39.054512, 61.329922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339279, 38.871269, 61.402241>,  <32.130402, 38.761322, 61.445633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339279, 38.871269, 61.402241>,  <32.687405, 39.054512, 61.329922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339279, 38.871269, 61.402241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119866, -0.553098, -0.824448,
		0.477682, -0.695861, 0.536282,
		-0.870317, -0.458106, 0.180795,
		32.078182, 38.733837, 61.456478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858284, 38.366695, 61.176891>,  <32.687405, 39.054512, 61.329922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858284, 38.366695, 61.176891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459087, 38.366440, 61.151527>,  <32.219570, 38.366287, 61.136311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459087, 38.366440, 61.151527>,  <32.858284, 38.366695, 61.176891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459087, 38.366440, 61.151527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055121, -0.503161, -0.862433,
		-0.031351, -0.864193, 0.502183,
		-0.997987, -0.000642, -0.063410,
		32.159691, 38.366249, 61.132504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617161, 37.666519, 61.119354>,  <32.858284, 38.366695, 61.176891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617161, 37.666519, 61.119354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347794, 37.920429, 60.967793>,  <32.186172, 38.072777, 60.876854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347794, 37.920429, 60.967793>,  <32.617161, 37.666519, 61.119354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347794, 37.920429, 60.967793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087484, -0.440515, -0.893473,
		-0.734069, -0.634828, 0.241117,
		-0.673417, 0.634776, -0.378905,
		32.145767, 38.110863, 60.854122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043480, 37.319260, 60.953392>,  <32.617161, 37.666519, 61.119354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043480, 37.319260, 60.953392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032108, 37.638428, 60.712559>,  <32.025284, 37.829929, 60.568058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032108, 37.638428, 60.712559>,  <32.043480, 37.319260, 60.953392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032108, 37.638428, 60.712559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046194, -0.600637, -0.798186,
		-0.998528, -0.050507, -0.019783,
		-0.028432, 0.797925, -0.602086,
		32.023579, 37.877804, 60.531933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564514, 37.205528, 60.442375>,  <32.043480, 37.319260, 60.953392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564514, 37.205528, 60.442375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784214, 37.504601, 60.293083>,  <31.916035, 37.684044, 60.203506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784214, 37.504601, 60.293083>,  <31.564514, 37.205528, 60.442375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784214, 37.504601, 60.293083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009979, -0.440728, -0.897585,
		-0.835599, 0.496723, -0.234609,
		0.549250, 0.747680, -0.373229,
		31.948990, 37.728905, 60.181114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210615, 37.362408, 59.844566>,  <31.564514, 37.205528, 60.442375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210615, 37.362408, 59.844566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591391, 37.482422, 59.819946>,  <31.819857, 37.554432, 59.805176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591391, 37.482422, 59.819946>,  <31.210615, 37.362408, 59.844566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591391, 37.482422, 59.819946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063605, -0.390222, -0.918521,
		-0.299605, 0.870463, -0.390553,
		0.951941, 0.300035, -0.061546,
		31.876972, 37.572433, 59.801483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377197, 37.598888, 59.144619>,  <31.210615, 37.362408, 59.844566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377197, 37.598888, 59.144619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747135, 37.545990, 59.287266>,  <31.969097, 37.514252, 59.372852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747135, 37.545990, 59.287266>,  <31.377197, 37.598888, 59.144619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747135, 37.545990, 59.287266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260196, -0.463893, -0.846818,
		0.277416, 0.875965, -0.394620,
		0.924845, -0.132242, 0.356614,
		32.024590, 37.506317, 59.394249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792213, 37.618107, 58.559383>,  <31.377197, 37.598888, 59.144619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792213, 37.618107, 58.559383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018074, 37.432117, 58.832138>,  <32.153591, 37.320522, 58.995792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018074, 37.432117, 58.832138>,  <31.792213, 37.618107, 58.559383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018074, 37.432117, 58.832138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351945, -0.611662, -0.708523,
		0.746529, 0.640054, -0.181729,
		0.564650, -0.464974, 0.681887,
		32.187469, 37.292625, 59.036705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561123, 37.549095, 58.264927>,  <31.792213, 37.618107, 58.559383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561123, 37.549095, 58.264927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532124, 37.289429, 58.567802>,  <32.514725, 37.133629, 58.749527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532124, 37.289429, 58.567802>,  <32.561123, 37.549095, 58.264927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532124, 37.289429, 58.567802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437294, -0.703012, -0.560847,
		0.896391, 0.290450, 0.334845,
		-0.072502, -0.649164, 0.757186,
		32.510372, 37.094681, 58.794956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233528, 37.396954, 58.259026>,  <32.561123, 37.549095, 58.264927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233528, 37.396954, 58.259026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009777, 37.119473, 58.440521>,  <32.875526, 36.952984, 58.549419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009777, 37.119473, 58.440521>,  <33.233528, 37.396954, 58.259026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009777, 37.119473, 58.440521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561400, -0.719783, -0.408342,
		0.609860, 0.026312, 0.792072,
		-0.559376, -0.693701, 0.453739,
		32.841965, 36.911362, 58.576641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626156, 36.964504, 58.597958>,  <33.233528, 37.396954, 58.259026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626156, 36.964504, 58.597958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300514, 36.741669, 58.532364>,  <33.105129, 36.607967, 58.493008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300514, 36.741669, 58.532364>,  <33.626156, 36.964504, 58.597958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300514, 36.741669, 58.532364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568540, -0.707060, -0.420510,
		0.118313, -0.435570, 0.892346,
		-0.814103, -0.557086, -0.163984,
		33.056282, 36.574543, 58.483170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752090, 36.258339, 58.724712>,  <33.626156, 36.964504, 58.597958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752090, 36.258339, 58.724712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417793, 36.202553, 58.512264>,  <33.217216, 36.169079, 58.384796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417793, 36.202553, 58.512264>,  <33.752090, 36.258339, 58.724712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417793, 36.202553, 58.512264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449860, -0.728552, -0.516563,
		-0.314905, -0.670642, 0.671621,
		-0.835740, -0.139467, -0.531120,
		33.167072, 36.160713, 58.352928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692680, 35.508377, 58.605087>,  <33.752090, 36.258339, 58.724712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692680, 35.508377, 58.605087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467667, 35.656174, 58.309242>,  <33.332657, 35.744854, 58.131733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467667, 35.656174, 58.309242>,  <33.692680, 35.508377, 58.605087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467667, 35.656174, 58.309242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383521, -0.675888, -0.629354,
		-0.732439, -0.637691, 0.238501,
		-0.562533, 0.369494, -0.739615,
		33.298908, 35.767021, 58.087357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464321, 34.826008, 58.084145>,  <33.692680, 35.508377, 58.605087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464321, 34.826008, 58.084145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448822, 35.160824, 57.865837>,  <33.439522, 35.361713, 57.734852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448822, 35.160824, 57.865837>,  <33.464321, 34.826008, 58.084145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448822, 35.160824, 57.865837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281412, -0.514928, -0.809726,
		-0.958804, -0.184964, -0.215599,
		-0.038752, 0.837041, -0.545766,
		33.437195, 35.411938, 57.702106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.958626, 36.513378, 51.679588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.877163, 36.126431, 51.739883>,  <47.828285, 35.894260, 51.776058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.877163, 36.126431, 51.739883>,  <47.958626, 36.513378, 51.679588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.877163, 36.126431, 51.739883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918861, 0.135713, -0.370508,
		0.337962, -0.213960, -0.916517,
		-0.203657, -0.967369, 0.150734,
		47.816067, 35.836220, 51.785103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472954, 36.452496, 51.160713>,  <47.958626, 36.513378, 51.679588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472954, 36.452496, 51.160713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.427185, 36.118488, 51.375992>,  <47.399723, 35.918083, 51.505157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.427185, 36.118488, 51.375992>,  <47.472954, 36.452496, 51.160713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427185, 36.118488, 51.375992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920933, -0.114002, -0.372673,
		0.372544, -0.538283, -0.755951,
		-0.114423, -0.835018, 0.538193,
		47.392857, 35.867981, 51.537449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326096, 35.947933, 50.733833>,  <47.472954, 36.452496, 51.160713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326096, 35.947933, 50.733833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.167091, 35.786430, 51.063431>,  <47.071690, 35.689529, 51.261189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.167091, 35.786430, 51.063431>,  <47.326096, 35.947933, 50.733833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.167091, 35.786430, 51.063431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882366, -0.078259, -0.464011,
		0.251834, -0.911512, -0.325155,
		-0.397506, -0.403759, 0.823995,
		47.047840, 35.665302, 51.310631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915310, 35.310020, 50.495811>,  <47.326096, 35.947933, 50.733833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915310, 35.310020, 50.495811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.776134, 35.405750, 50.858395>,  <46.692627, 35.463188, 51.075943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.776134, 35.405750, 50.858395>,  <46.915310, 35.310020, 50.495811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776134, 35.405750, 50.858395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923203, -0.255771, -0.286840,
		0.163197, -0.936645, 0.309939,
		-0.347941, 0.239326, 0.906455,
		46.671753, 35.477547, 51.130333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361557, 34.843285, 50.606525>,  <46.915310, 35.310020, 50.495811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361557, 34.843285, 50.606525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.290466, 35.100029, 50.904900>,  <46.247814, 35.254078, 51.083923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.290466, 35.100029, 50.904900>,  <46.361557, 34.843285, 50.606525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290466, 35.100029, 50.904900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983915, -0.129783, -0.122749,
		0.018021, -0.755755, 0.654606,
		-0.177725, 0.641865, 0.745938,
		46.237148, 35.292587, 51.128681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995121, 34.486408, 51.068848>,  <46.361557, 34.843285, 50.606525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995121, 34.486408, 51.068848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.923843, 34.872723, 51.144211>,  <45.881077, 35.104511, 51.189430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.923843, 34.872723, 51.144211>,  <45.995121, 34.486408, 51.068848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923843, 34.872723, 51.144211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975528, -0.148329, -0.162310,
		-0.128811, -0.212720, 0.968586,
		-0.178196, 0.965789, 0.188408,
		45.870384, 35.162460, 51.200733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428169, 34.522411, 51.587742>,  <45.995121, 34.486408, 51.068848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428169, 34.522411, 51.587742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.445911, 34.883938, 51.417492>,  <45.456558, 35.100853, 51.315342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.445911, 34.883938, 51.417492>,  <45.428169, 34.522411, 51.587742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.445911, 34.883938, 51.417492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998998, 0.037559, -0.024349,
		-0.006021, 0.426275, 0.904574,
		0.044354, 0.903814, -0.425622,
		45.459217, 35.155083, 51.289806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934776, 34.891731, 51.955681>,  <45.428169, 34.522411, 51.587742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934776, 34.891731, 51.955681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.004417, 35.101852, 51.622517>,  <45.046204, 35.227924, 51.422619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.004417, 35.101852, 51.622517>,  <44.934776, 34.891731, 51.955681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004417, 35.101852, 51.622517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981351, 0.162534, -0.102625,
		0.081467, 0.835247, 0.543806,
		0.174104, 0.525304, -0.832912,
		45.056648, 35.259445, 51.372643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476547, 35.460896, 51.982212>,  <44.934776, 34.891731, 51.955681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476547, 35.460896, 51.982212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.579960, 35.394829, 51.601501>,  <44.642010, 35.355190, 51.373074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.579960, 35.394829, 51.601501>,  <44.476547, 35.460896, 51.982212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579960, 35.394829, 51.601501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963938, 0.020259, -0.265354,
		0.063109, 0.986058, -0.153971,
		0.258535, -0.165165, -0.951777,
		44.657520, 35.345280, 51.315968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046406, 35.882439, 51.695026>,  <44.476547, 35.460896, 51.982212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046406, 35.882439, 51.695026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.153637, 35.613998, 51.418545>,  <44.217976, 35.452934, 51.252655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.153637, 35.613998, 51.418545>,  <44.046406, 35.882439, 51.695026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153637, 35.613998, 51.418545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926486, 0.017105, -0.375940,
		0.264117, 0.741169, -0.617180,
		0.268079, -0.671100, -0.691201,
		44.234062, 35.412670, 51.211185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884033, 36.100437, 50.978714>,  <44.046406, 35.882439, 51.695026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884033, 36.100437, 50.978714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.917259, 35.703941, 50.937630>,  <43.937195, 35.466045, 50.912979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.917259, 35.703941, 50.937630>,  <43.884033, 36.100437, 50.978714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917259, 35.703941, 50.937630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789640, -0.002591, -0.613565,
		0.607922, 0.132071, -0.782936,
		0.083062, -0.991237, -0.102713,
		43.942177, 35.406570, 50.906815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748985, 36.030518, 50.294685>,  <43.884033, 36.100437, 50.978714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748985, 36.030518, 50.294685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.660660, 35.693844, 50.491783>,  <43.607662, 35.491840, 50.610043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.660660, 35.693844, 50.491783>,  <43.748985, 36.030518, 50.294685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660660, 35.693844, 50.491783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929615, 0.028795, -0.367406,
		0.295053, -0.539195, -0.788805,
		-0.220817, -0.841688, 0.492748,
		43.594414, 35.441338, 50.639606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596600, 35.548866, 49.703304>,  <43.748985, 36.030518, 50.294685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596600, 35.548866, 49.703304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.447643, 35.342064, 50.011597>,  <43.358269, 35.217983, 50.196571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.447643, 35.342064, 50.011597>,  <43.596600, 35.548866, 49.703304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447643, 35.342064, 50.011597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771336, -0.289410, -0.566818,
		0.516107, -0.805572, -0.291012,
		-0.372391, -0.517006, 0.770733,
		43.335926, 35.186962, 50.242817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399174, 34.844837, 49.519230>,  <43.596600, 35.548866, 49.703304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399174, 34.844837, 49.519230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.162338, 34.907524, 49.835423>,  <43.020237, 34.945137, 50.025139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.162338, 34.907524, 49.835423>,  <43.399174, 34.844837, 49.519230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162338, 34.907524, 49.835423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754155, -0.453489, -0.474973,
		0.284040, -0.877375, 0.386696,
		-0.592092, 0.156717, 0.790486,
		42.984711, 34.954540, 50.072567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013233, 34.236675, 49.626751>,  <43.399174, 34.844837, 49.519230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013233, 34.236675, 49.626751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.802818, 34.517921, 49.818130>,  <42.676567, 34.686668, 49.932957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.802818, 34.517921, 49.818130>,  <43.013233, 34.236675, 49.626751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802818, 34.517921, 49.818130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800109, -0.218455, -0.558661,
		-0.288284, -0.676688, 0.677485,
		-0.526040, 0.703115, 0.478447,
		42.645004, 34.728855, 49.961666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383595, 33.931156, 49.781013>,  <43.013233, 34.236675, 49.626751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383595, 33.931156, 49.781013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.290356, 34.314247, 49.848457>,  <42.234413, 34.544102, 49.888924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.290356, 34.314247, 49.848457>,  <42.383595, 33.931156, 49.781013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290356, 34.314247, 49.848457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879982, -0.133939, -0.455732,
		-0.413883, -0.254600, 0.874002,
		-0.233093, 0.957726, 0.168608,
		42.220428, 34.601566, 49.899040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679558, 33.965450, 49.785416>,  <42.383595, 33.931156, 49.781013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679558, 33.965450, 49.785416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.734230, 34.349464, 49.687721>,  <41.767033, 34.579872, 49.629105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.734230, 34.349464, 49.687721>,  <41.679558, 33.965450, 49.785416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734230, 34.349464, 49.687721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912456, 0.026021, -0.408346,
		-0.385671, 0.278672, 0.879545,
		0.136681, 0.960034, -0.244241,
		41.775234, 34.637474, 49.614449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079079, 34.249851, 49.996281>,  <41.679558, 33.965450, 49.785416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079079, 34.249851, 49.996281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.254494, 34.501720, 49.739784>,  <41.359741, 34.652843, 49.585884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.254494, 34.501720, 49.739784>,  <41.079079, 34.249851, 49.996281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254494, 34.501720, 49.739784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867096, 0.108854, -0.486102,
		-0.236283, 0.769195, 0.593725,
		0.438536, 0.629674, -0.641245,
		41.386055, 34.690624, 49.547409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552597, 34.873646, 49.927254>,  <41.079079, 34.249851, 49.996281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552597, 34.873646, 49.927254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794868, 34.876232, 49.608982>,  <40.940231, 34.877785, 49.418018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794868, 34.876232, 49.608982>,  <40.552597, 34.873646, 49.927254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794868, 34.876232, 49.608982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792392, 0.096099, -0.602395,
		0.072572, 0.995351, 0.063325,
		0.605680, 0.006461, -0.795682,
		40.976574, 34.878170, 49.370277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414516, 35.517921, 49.515465>,  <40.552597, 34.873646, 49.927254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414516, 35.517921, 49.515465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592663, 35.261616, 49.265320>,  <40.699551, 35.107834, 49.115234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592663, 35.261616, 49.265320>,  <40.414516, 35.517921, 49.515465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592663, 35.261616, 49.265320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757578, 0.102575, -0.644634,
		0.477203, 0.760857, -0.439743,
		0.445368, -0.640762, -0.625358,
		40.726273, 35.069386, 49.077713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851162, 35.707348, 48.973770>,  <40.414516, 35.517921, 49.515465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851162, 35.707348, 48.973770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.582470, 35.578716, 49.240711>,  <39.421253, 35.501537, 49.400875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.582470, 35.578716, 49.240711>,  <39.851162, 35.707348, 48.973770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582470, 35.578716, 49.240711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720980, 0.490755, -0.489231,
		-0.170180, -0.809782, -0.561509,
		-0.671734, -0.321580, 0.667354,
		39.380951, 35.482243, 49.440918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220997, 35.258930, 48.550404>,  <39.851162, 35.707348, 48.973770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220997, 35.258930, 48.550404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110504, 35.419281, 48.899803>,  <39.044209, 35.515491, 49.109444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110504, 35.419281, 48.899803>,  <39.220997, 35.258930, 48.550404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110504, 35.419281, 48.899803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734512, 0.498087, -0.460870,
		-0.619829, -0.768899, 0.156864,
		-0.276231, 0.400879, 0.873495,
		39.027634, 35.539543, 49.161850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491375, 35.070797, 48.842152>,  <39.220997, 35.258930, 48.550404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491375, 35.070797, 48.842152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.567120, 35.435345, 48.988327>,  <38.612568, 35.654072, 49.076035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.567120, 35.435345, 48.988327>,  <38.491375, 35.070797, 48.842152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567120, 35.435345, 48.988327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833621, 0.345882, -0.430629,
		-0.518862, -0.223096, 0.825234,
		0.189362, 0.911369, 0.365442,
		38.623928, 35.708755, 49.097961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899891, 34.621014, 48.593475>,  <38.491375, 35.070797, 48.842152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899891, 34.621014, 48.593475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089817, 34.328861, 48.397072>,  <38.203773, 34.153568, 48.279228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089817, 34.328861, 48.397072>,  <37.899891, 34.621014, 48.593475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089817, 34.328861, 48.397072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820002, -0.164536, -0.548202,
		0.319608, 0.662924, -0.677039,
		0.474814, -0.730383, -0.491012,
		38.232262, 34.109745, 48.249767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888462, 34.700710, 47.845177>,  <37.899891, 34.621014, 48.593475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888462, 34.700710, 47.845177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870457, 34.333431, 48.002602>,  <37.859653, 34.113064, 48.097057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870457, 34.333431, 48.002602>,  <37.888462, 34.700710, 47.845177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870457, 34.333431, 48.002602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913078, -0.122020, -0.389100,
		0.405292, -0.376870, -0.832891,
		-0.045011, -0.918194, 0.393566,
		37.856953, 34.057972, 48.120670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622601, 34.299938, 47.319752>,  <37.888462, 34.700710, 47.845177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622601, 34.299938, 47.319752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558762, 34.084663, 47.650784>,  <37.520458, 33.955498, 47.849403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558762, 34.084663, 47.650784>,  <37.622601, 34.299938, 47.319752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558762, 34.084663, 47.650784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909737, -0.245305, -0.334970,
		0.383285, -0.806340, -0.450455,
		-0.159600, -0.538184, 0.827579,
		37.510883, 33.923210, 47.899055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454052, 33.673428, 47.105953>,  <37.622601, 34.299938, 47.319752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454052, 33.673428, 47.105953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307892, 33.680866, 47.478218>,  <37.220196, 33.685329, 47.701576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307892, 33.680866, 47.478218>,  <37.454052, 33.673428, 47.105953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307892, 33.680866, 47.478218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882270, -0.325686, -0.339895,
		0.296784, -0.945295, 0.135412,
		-0.365403, 0.018595, 0.930664,
		37.198273, 33.686443, 47.757416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921627, 33.098976, 47.101624>,  <37.454052, 33.673428, 47.105953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921627, 33.098976, 47.101624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.836437, 33.317287, 47.425789>,  <36.785324, 33.448273, 47.620289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.836437, 33.317287, 47.425789>,  <36.921627, 33.098976, 47.101624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836437, 33.317287, 47.425789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970506, -0.214064, -0.110882,
		0.112964, -0.810127, 0.575268,
		-0.212973, 0.545775, 0.810415,
		36.772545, 33.481022, 47.668915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350456, 32.781063, 47.349411>,  <36.921627, 33.098976, 47.101624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350456, 32.781063, 47.349411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.345741, 33.144455, 47.516514>,  <36.342915, 33.362492, 47.616776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.345741, 33.144455, 47.516514>,  <36.350456, 32.781063, 47.349411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345741, 33.144455, 47.516514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997585, -0.039279, 0.057280,
		0.068447, -0.416076, 0.906750,
		-0.011784, 0.908481, 0.417760,
		36.342205, 33.417000, 47.641842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797691, 32.714222, 47.680695>,  <36.350456, 32.781063, 47.349411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797691, 32.714222, 47.680695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845722, 33.110798, 47.660210>,  <35.874538, 33.348743, 47.647919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845722, 33.110798, 47.660210>,  <35.797691, 32.714222, 47.680695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845722, 33.110798, 47.660210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981447, 0.110779, -0.156489,
		-0.149477, 0.069052, 0.986351,
		0.120073, 0.991443, -0.051212,
		35.881744, 33.408230, 47.644848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324371, 32.961594, 48.156914>,  <35.797691, 32.714222, 47.680695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324371, 32.961594, 48.156914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.385193, 33.278378, 47.920376>,  <35.421684, 33.468449, 47.778454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.385193, 33.278378, 47.920376>,  <35.324371, 32.961594, 48.156914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385193, 33.278378, 47.920376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980463, 0.196402, 0.010927,
		0.124795, 0.578129, 0.806346,
		0.152051, 0.791956, -0.591344,
		35.430809, 33.515965, 47.742973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007000, 33.560822, 48.471920>,  <35.324371, 32.961594, 48.156914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007000, 33.560822, 48.471920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.027214, 33.667099, 48.086826>,  <35.039341, 33.730865, 47.855770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.027214, 33.667099, 48.086826>,  <35.007000, 33.560822, 48.471920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027214, 33.667099, 48.086826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991503, 0.129046, -0.016426,
		0.119872, 0.955381, 0.269959,
		0.050531, 0.265696, -0.962732,
		35.042374, 33.746807, 47.798008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691414, 34.205112, 48.406246>,  <35.007000, 33.560822, 48.471920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691414, 34.205112, 48.406246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.685719, 34.045021, 48.039722>,  <34.682301, 33.948967, 47.819809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.685719, 34.045021, 48.039722>,  <34.691414, 34.205112, 48.406246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685719, 34.045021, 48.039722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948427, 0.295636, -0.114394,
		0.316676, 0.867422, -0.383792,
		-0.014235, -0.400224, -0.916307,
		34.681446, 33.924953, 47.764832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446812, 34.766098, 48.007278>,  <34.691414, 34.205112, 48.406246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446812, 34.766098, 48.007278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.374889, 34.420204, 47.819706>,  <34.331734, 34.212666, 47.707161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.374889, 34.420204, 47.819706>,  <34.446812, 34.766098, 48.007278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374889, 34.420204, 47.819706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939120, 0.292784, -0.179810,
		0.292784, 0.408052, -0.864737,
		0.179810, 0.864737, 0.468932,
		34.320946, 34.160782, 47.679028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198658, 35.022625, 47.358383>,  <34.446812, 34.766098, 48.007278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198658, 35.022625, 47.358383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099804, 34.640308, 47.422112>,  <34.040493, 34.410919, 47.460350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099804, 34.640308, 47.422112>,  <34.198658, 35.022625, 47.358383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099804, 34.640308, 47.422112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968459, 0.238245, -0.072980,
		0.031795, -0.172336, -0.984525,
		-0.247135, -0.955793, 0.159325,
		34.025665, 34.353569, 47.469910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.053137, 32.481628, 53.836048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.307419, 32.776291, 53.743774>,  <30.459988, 32.953087, 53.688408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.307419, 32.776291, 53.743774>,  <30.053137, 32.481628, 53.836048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307419, 32.776291, 53.743774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073507, -0.239719, -0.968056,
		-0.768424, 0.632356, -0.098241,
		0.635706, 0.736655, -0.230688,
		30.498131, 32.997288, 53.674568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734793, 32.900589, 53.362823>,  <30.053137, 32.481628, 53.836048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734793, 32.900589, 53.362823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.122807, 32.965679, 53.290649>,  <30.355614, 33.004734, 53.247345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.122807, 32.965679, 53.290649>,  <29.734793, 32.900589, 53.362823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122807, 32.965679, 53.290649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185071, 0.013678, -0.982630,
		-0.157431, 0.986577, 0.043384,
		0.970033, 0.162725, -0.180434,
		30.413816, 33.014496, 53.236519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700308, 33.388344, 52.819054>,  <29.734793, 32.900589, 53.362823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700308, 33.388344, 52.819054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081322, 33.269096, 52.794388>,  <30.309931, 33.197548, 52.779591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081322, 33.269096, 52.794388>,  <29.700308, 33.388344, 52.819054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081322, 33.269096, 52.794388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067082, -0.007977, -0.997716,
		0.296946, 0.954495, -0.027597,
		0.952535, -0.298119, -0.061661,
		30.367083, 33.179661, 52.775890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156422, 33.851158, 52.304974>,  <29.700308, 33.388344, 52.819054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156422, 33.851158, 52.304974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346018, 33.500423, 52.337215>,  <30.459776, 33.289982, 52.356560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346018, 33.500423, 52.337215>,  <30.156422, 33.851158, 52.304974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346018, 33.500423, 52.337215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106220, -0.033936, -0.993763,
		0.874099, 0.479597, 0.077052,
		0.473992, -0.876832, 0.080606,
		30.488214, 33.237373, 52.361397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518711, 33.920101, 51.773834>,  <30.156422, 33.851158, 52.304974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518711, 33.920101, 51.773834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595758, 33.537991, 51.863583>,  <30.641987, 33.308723, 51.917431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595758, 33.537991, 51.863583>,  <30.518711, 33.920101, 51.773834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595758, 33.537991, 51.863583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394450, -0.133988, -0.909096,
		0.898503, 0.263610, 0.351001,
		0.192617, -0.955278, 0.224370,
		30.653543, 33.251408, 51.930893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257093, 33.801876, 51.579597>,  <30.518711, 33.920101, 51.773834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257093, 33.801876, 51.579597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.072571, 33.447220, 51.592613>,  <30.961857, 33.234425, 51.600422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.072571, 33.447220, 51.592613>,  <31.257093, 33.801876, 51.579597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072571, 33.447220, 51.592613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350833, -0.215975, -0.911192,
		0.814930, -0.408924, 0.410695,
		-0.461308, -0.886643, 0.032540,
		30.934177, 33.181229, 51.602375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771185, 33.289131, 51.454121>,  <31.257093, 33.801876, 51.579597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771185, 33.289131, 51.454121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425894, 33.107094, 51.366734>,  <31.218719, 32.997871, 51.314301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425894, 33.107094, 51.366734>,  <31.771185, 33.289131, 51.454121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425894, 33.107094, 51.366734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398742, -0.349294, -0.847938,
		0.309581, -0.819076, 0.482984,
		-0.863229, -0.455091, -0.218465,
		31.166925, 32.970566, 51.301193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860062, 32.579742, 51.295040>,  <31.771185, 33.289131, 51.454121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860062, 32.579742, 51.295040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507236, 32.663223, 51.126083>,  <31.295542, 32.713310, 51.024712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507236, 32.663223, 51.126083>,  <31.860062, 32.579742, 51.295040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507236, 32.663223, 51.126083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297332, -0.448853, -0.842689,
		-0.365459, -0.868893, 0.333863,
		-0.882062, 0.208700, -0.422387,
		31.242619, 32.725834, 50.999367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535908, 31.912790, 51.141342>,  <31.860062, 32.579742, 51.295040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535908, 31.912790, 51.141342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.383720, 32.208218, 50.918716>,  <31.292408, 32.385475, 50.785141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.383720, 32.208218, 50.918716>,  <31.535908, 31.912790, 51.141342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383720, 32.208218, 50.918716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351108, -0.441401, -0.825765,
		-0.855551, -0.509590, -0.091378,
		-0.380467, 0.738568, -0.556562,
		31.269581, 32.429787, 50.751747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287403, 31.466198, 50.571495>,  <31.535908, 31.912790, 51.141342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287403, 31.466198, 50.571495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262978, 31.848387, 50.456020>,  <31.248322, 32.077702, 50.386734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262978, 31.848387, 50.456020>,  <31.287403, 31.466198, 50.571495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262978, 31.848387, 50.456020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107651, -0.281238, -0.953581,
		-0.992312, -0.089308, -0.085683,
		-0.061065, 0.955473, -0.288690,
		31.244658, 32.135029, 50.369411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729685, 31.410252, 50.031914>,  <31.287403, 31.466198, 50.571495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729685, 31.410252, 50.031914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.955990, 31.729366, 49.948536>,  <31.091772, 31.920835, 49.898510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.955990, 31.729366, 49.948536>,  <30.729685, 31.410252, 50.031914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955990, 31.729366, 49.948536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126513, -0.333782, -0.934122,
		-0.814806, 0.502119, -0.289772,
		0.565761, 0.797788, -0.208443,
		31.125719, 31.968702, 49.886002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540619, 31.647499, 49.315594>,  <30.729685, 31.410252, 50.031914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540619, 31.647499, 49.315594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889128, 31.832355, 49.381699>,  <31.098232, 31.943270, 49.421360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889128, 31.832355, 49.381699>,  <30.540619, 31.647499, 49.315594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889128, 31.832355, 49.381699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320743, -0.281273, -0.904439,
		-0.371497, 0.841017, -0.393294,
		0.871272, 0.462142, 0.165258,
		31.150509, 31.970999, 49.431274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770365, 32.002163, 48.724651>,  <30.540619, 31.647499, 49.315594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770365, 32.002163, 48.724651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.100401, 31.893732, 48.922939>,  <31.298422, 31.828672, 49.041912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.100401, 31.893732, 48.922939>,  <30.770365, 32.002163, 48.724651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100401, 31.893732, 48.922939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464054, -0.175365, -0.868275,
		0.322303, 0.946448, -0.018897,
		0.825091, -0.271078, 0.495724,
		31.347929, 31.812408, 49.071655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570988, 32.687386, 48.466667>,  <30.770365, 32.002163, 48.724651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570988, 32.687386, 48.466667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.760977, 32.805004, 48.134899>,  <30.874969, 32.875576, 47.935837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.760977, 32.805004, 48.134899>,  <30.570988, 32.687386, 48.466667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760977, 32.805004, 48.134899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016475, 0.945327, 0.325708,
		0.879846, -0.141038, 0.453850,
		0.474974, 0.294050, -0.829418,
		30.903469, 32.893219, 47.886074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022045, 33.264042, 48.671024>,  <30.570988, 32.687386, 48.466667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022045, 33.264042, 48.671024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014631, 33.371979, 48.285934>,  <31.010183, 33.436741, 48.054878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014631, 33.371979, 48.285934>,  <31.022045, 33.264042, 48.671024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014631, 33.371979, 48.285934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101961, 0.958383, 0.266659,
		0.994616, -0.093219, -0.045275,
		-0.018533, 0.269839, -0.962727,
		31.009071, 33.452930, 47.997116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616055, 33.698441, 48.564812>,  <31.022045, 33.264042, 48.671024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616055, 33.698441, 48.564812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385536, 33.807781, 48.256744>,  <31.247225, 33.873386, 48.071903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385536, 33.807781, 48.256744>,  <31.616055, 33.698441, 48.564812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385536, 33.807781, 48.256744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051118, 0.952615, 0.299852,
		0.815641, 0.133434, -0.562962,
		-0.576297, 0.273349, -0.770171,
		31.212646, 33.889786, 48.025692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863359, 34.389668, 48.260071>,  <31.616055, 33.698441, 48.564812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863359, 34.389668, 48.260071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.478476, 34.376228, 48.151978>,  <31.247545, 34.368164, 48.087120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.478476, 34.376228, 48.151978>,  <31.863359, 34.389668, 48.260071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478476, 34.376228, 48.151978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108729, 0.957229, 0.268123,
		0.249667, 0.287372, -0.924707,
		-0.962208, -0.033602, -0.270234,
		31.189814, 34.366146, 48.070908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690289, 35.118614, 48.119289>,  <31.863359, 34.389668, 48.260071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690289, 35.118614, 48.119289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.327602, 34.955647, 48.162891>,  <31.109991, 34.857868, 48.189053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.327602, 34.955647, 48.162891>,  <31.690289, 35.118614, 48.119289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327602, 34.955647, 48.162891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365116, 0.887656, 0.280636,
		-0.211091, 0.214659, -0.953605,
		-0.906714, -0.407416, 0.109001,
		31.055588, 34.833420, 48.195591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263590, 35.568287, 47.589367>,  <31.690289, 35.118614, 48.119289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263590, 35.568287, 47.589367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.017899, 35.410568, 47.862793>,  <30.870483, 35.315937, 48.026848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.017899, 35.410568, 47.862793>,  <31.263590, 35.568287, 47.589367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017899, 35.410568, 47.862793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325065, 0.915739, 0.236125,
		-0.719068, -0.077168, -0.690642,
		-0.614226, -0.394294, 0.683563,
		30.833632, 35.292278, 48.067863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560543, 35.921303, 47.542492>,  <31.263590, 35.568287, 47.589367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560543, 35.921303, 47.542492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.573944, 35.760975, 47.908710>,  <30.581984, 35.664776, 48.128441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.573944, 35.760975, 47.908710>,  <30.560543, 35.921303, 47.542492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573944, 35.760975, 47.908710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451374, 0.811245, 0.371677,
		-0.891706, -0.425703, -0.153744,
		0.033500, -0.400822, 0.915543,
		30.583994, 35.640728, 48.183372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914467, 36.081669, 47.863361>,  <30.560543, 35.921303, 47.542492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914467, 36.081669, 47.863361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.122646, 35.961979, 48.183262>,  <30.247555, 35.890163, 48.375202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.122646, 35.961979, 48.183262>,  <29.914467, 36.081669, 47.863361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122646, 35.961979, 48.183262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533593, 0.617237, 0.578184,
		-0.666640, -0.727656, 0.161577,
		0.520451, -0.299224, 0.799748,
		30.278782, 35.872211, 48.423187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409275, 35.873966, 48.388493>,  <29.914467, 36.081669, 47.863361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409275, 35.873966, 48.388493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.745237, 35.994022, 48.569366>,  <29.946815, 36.066055, 48.677891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.745237, 35.994022, 48.569366>,  <29.409275, 35.873966, 48.388493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745237, 35.994022, 48.569366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538119, 0.568922, 0.621897,
		-0.070606, -0.765667, 0.639351,
		0.839906, 0.300137, 0.452189,
		29.997210, 36.084064, 48.705025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272285, 35.871681, 49.102959>,  <29.409275, 35.873966, 48.388493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272285, 35.871681, 49.102959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.589592, 36.114441, 49.083336>,  <29.779976, 36.260098, 49.071560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.589592, 36.114441, 49.083336>,  <29.272285, 35.871681, 49.102959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589592, 36.114441, 49.083336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380683, 0.557238, 0.737947,
		0.475196, -0.566711, 0.673073,
		0.793265, 0.606897, -0.049060,
		29.827572, 36.296509, 49.068619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511715, 35.921490, 49.804848>,  <29.272285, 35.871681, 49.102959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511715, 35.921490, 49.804848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671843, 36.242088, 49.627155>,  <29.767920, 36.434448, 49.520538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671843, 36.242088, 49.627155>,  <29.511715, 35.921490, 49.804848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671843, 36.242088, 49.627155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226187, 0.556195, 0.799679,
		0.888022, -0.219648, 0.403945,
		0.400321, 0.801500, -0.444232,
		29.791939, 36.482536, 49.493885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000544, 36.154427, 50.224014>,  <29.511715, 35.921490, 49.804848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000544, 36.154427, 50.224014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.923737, 36.472095, 49.993389>,  <29.877653, 36.662697, 49.855015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.923737, 36.472095, 49.993389>,  <30.000544, 36.154427, 50.224014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923737, 36.472095, 49.993389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250585, 0.528345, 0.811208,
		0.948860, 0.300245, 0.097555,
		-0.192018, 0.794169, -0.576563,
		29.866131, 36.710346, 49.820419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466703, 36.763519, 50.366180>,  <30.000544, 36.154427, 50.224014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466703, 36.763519, 50.366180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162479, 36.962532, 50.199322>,  <29.979946, 37.081940, 50.099205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162479, 36.962532, 50.199322>,  <30.466703, 36.763519, 50.366180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162479, 36.962532, 50.199322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076220, 0.569625, 0.818363,
		0.644781, 0.654207, -0.395311,
		-0.760558, 0.497534, -0.417147,
		29.934313, 37.111794, 50.074177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412424, 37.388123, 50.849537>,  <30.466703, 36.763519, 50.366180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412424, 37.388123, 50.849537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.087191, 37.401688, 50.617073>,  <29.892052, 37.409824, 50.477596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.087191, 37.401688, 50.617073>,  <30.412424, 37.388123, 50.849537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087191, 37.401688, 50.617073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471502, 0.547169, 0.691586,
		0.341444, 0.836335, -0.428906,
		-0.813082, 0.033908, -0.581161,
		29.843266, 37.411861, 50.442726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063408, 38.138832, 50.895653>,  <30.412424, 37.388123, 50.849537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063408, 38.138832, 50.895653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.758186, 37.901932, 50.792122>,  <29.575052, 37.759792, 50.730003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.758186, 37.901932, 50.792122>,  <30.063408, 38.138832, 50.895653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758186, 37.901932, 50.792122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522669, 0.329852, 0.786139,
		-0.380215, 0.735147, -0.561245,
		-0.763056, -0.592247, -0.258824,
		29.529270, 37.724258, 50.714474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935865, 38.751431, 50.516991>,  <30.063408, 38.138832, 50.895653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935865, 38.751431, 50.516991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.192410, 39.058300, 50.521008>,  <30.346336, 39.242424, 50.523418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.192410, 39.058300, 50.521008>,  <29.935865, 38.751431, 50.516991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192410, 39.058300, 50.521008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470963, -0.383322, -0.794518,
		-0.605684, 0.514302, -0.607158,
		0.641359, 0.767175, 0.010046,
		30.384817, 39.288452, 50.524021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138073, 38.831558, 49.817677>,  <29.935865, 38.751431, 50.516991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138073, 38.831558, 49.817677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.428875, 39.027481, 50.010155>,  <30.603357, 39.145035, 50.125641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.428875, 39.027481, 50.010155>,  <30.138073, 38.831558, 49.817677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428875, 39.027481, 50.010155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651014, -0.268938, -0.709826,
		-0.218270, 0.829311, -0.514394,
		0.727007, 0.489811, 0.481192,
		30.646976, 39.174423, 50.154510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398048, 39.309650, 49.427490>,  <30.138073, 38.831558, 49.817677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398048, 39.309650, 49.427490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.695717, 39.238602, 49.685066>,  <30.874317, 39.195972, 49.839611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.695717, 39.238602, 49.685066>,  <30.398048, 39.309650, 49.427490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695717, 39.238602, 49.685066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605388, -0.228121, -0.762539,
		0.282342, 0.957293, -0.062230,
		0.744170, -0.177624, 0.643942,
		30.918968, 39.185314, 49.878250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055958, 39.551960, 49.081207>,  <30.398048, 39.309650, 49.427490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055958, 39.551960, 49.081207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234985, 39.327332, 49.359581>,  <31.342402, 39.192554, 49.526604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234985, 39.327332, 49.359581>,  <31.055958, 39.551960, 49.081207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234985, 39.327332, 49.359581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760297, -0.170734, -0.626736,
		0.470777, 0.809621, 0.350547,
		0.447568, -0.561573, 0.695930,
		31.369255, 39.158859, 49.568359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716694, 39.818317, 49.180084>,  <31.055958, 39.551960, 49.081207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716694, 39.818317, 49.180084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.722103, 39.449055, 49.333755>,  <31.725349, 39.227497, 49.425961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.722103, 39.449055, 49.333755>,  <31.716694, 39.818317, 49.180084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722103, 39.449055, 49.333755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936615, -0.122832, -0.328124,
		0.350101, 0.364268, 0.862982,
		0.013523, -0.923158, 0.384182,
		31.726160, 39.172108, 49.449009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336037, 39.784313, 49.595966>,  <31.716694, 39.818317, 49.180084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336037, 39.784313, 49.595966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232197, 39.409660, 49.501881>,  <32.169895, 39.184868, 49.445431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232197, 39.409660, 49.501881>,  <32.336037, 39.784313, 49.595966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232197, 39.409660, 49.501881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898639, -0.145099, -0.413998,
		0.353636, -0.318842, 0.879364,
		-0.259595, -0.936636, -0.235211,
		32.154320, 39.128670, 49.431316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860470, 39.350521, 49.860081>,  <32.336037, 39.784313, 49.595966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860470, 39.350521, 49.860081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681091, 39.115902, 49.590309>,  <32.573463, 38.975128, 49.428444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681091, 39.115902, 49.590309>,  <32.860470, 39.350521, 49.860081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681091, 39.115902, 49.590309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874710, -0.132830, -0.466089,
		0.183801, -0.798945, 0.572629,
		-0.448442, -0.586552, -0.674431,
		32.546558, 38.939938, 49.387981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364983, 38.680851, 49.734547>,  <32.860470, 39.350521, 49.860081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364983, 38.680851, 49.734547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124874, 38.718140, 49.416809>,  <32.980808, 38.740513, 49.226166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124874, 38.718140, 49.416809>,  <33.364983, 38.680851, 49.734547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124874, 38.718140, 49.416809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750296, -0.278341, -0.599652,
		-0.276958, -0.955954, 0.097190,
		-0.600292, 0.093157, -0.794337,
		32.944794, 38.746105, 49.178505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686665, 38.249256, 49.204102>,  <33.364983, 38.680851, 49.734547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686665, 38.249256, 49.204102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387005, 38.415447, 48.997738>,  <33.207211, 38.515160, 48.873920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387005, 38.415447, 48.997738>,  <33.686665, 38.249256, 49.204102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387005, 38.415447, 48.997738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496591, -0.163179, -0.852508,
		-0.438381, -0.894848, -0.084077,
		-0.749146, 0.415476, -0.515908,
		33.162262, 38.540089, 48.842964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379196, 37.792118, 48.603943>,  <33.686665, 38.249256, 49.204102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379196, 37.792118, 48.603943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308411, 38.170334, 48.494656>,  <33.265942, 38.397263, 48.429085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308411, 38.170334, 48.494656>,  <33.379196, 37.792118, 48.603943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308411, 38.170334, 48.494656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587563, -0.121211, -0.800049,
		-0.789591, -0.302108, -0.534113,
		-0.176961, 0.945536, -0.273214,
		33.255322, 38.453995, 48.412693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284142, 37.845585, 47.788929>,  <33.379196, 37.792118, 48.603943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284142, 37.845585, 47.788929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394157, 38.209843, 47.912270>,  <33.460167, 38.428398, 47.986275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394157, 38.209843, 47.912270>,  <33.284142, 37.845585, 47.788929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394157, 38.209843, 47.912270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716408, 0.019773, -0.697401,
		-0.641182, 0.412716, -0.646955,
		0.275037, 0.910645, 0.308351,
		33.476669, 38.483036, 48.004776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457642, 38.117935, 47.142326>,  <33.284142, 37.845585, 47.788929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457642, 38.117935, 47.142326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614605, 38.359406, 47.419914>,  <33.708782, 38.504288, 47.586468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614605, 38.359406, 47.419914>,  <33.457642, 38.117935, 47.142326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614605, 38.359406, 47.419914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716769, 0.272130, -0.642018,
		-0.576419, 0.749350, -0.325907,
		0.392407, 0.603672, 0.693972,
		33.732327, 38.540508, 47.628105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.515938, 41.431656, 55.723728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125521, 41.421093, 55.637341>,  <28.891270, 41.414757, 55.585506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125521, 41.421093, 55.637341>,  <29.515938, 41.431656, 55.723728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125521, 41.421093, 55.637341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210965, -0.357782, -0.909663,
		-0.053249, -0.933432, 0.354782,
		-0.976042, -0.026408, -0.215972,
		28.832708, 41.413170, 55.572548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478046, 40.829617, 55.342548>,  <29.515938, 41.431656, 55.723728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478046, 40.829617, 55.342548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142696, 41.026661, 55.249203>,  <28.941486, 41.144890, 55.193195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142696, 41.026661, 55.249203>,  <29.478046, 40.829617, 55.342548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142696, 41.026661, 55.249203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021272, -0.398223, -0.917042,
		-0.544679, -0.773788, 0.323382,
		-0.838374, 0.492615, -0.233364,
		28.891184, 41.174446, 55.179195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991526, 40.362179, 54.965050>,  <29.478046, 40.829617, 55.342548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991526, 40.362179, 54.965050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857809, 40.731922, 54.891491>,  <28.777580, 40.953766, 54.847355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857809, 40.731922, 54.891491>,  <28.991526, 40.362179, 54.965050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857809, 40.731922, 54.891491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045706, -0.210798, -0.976461,
		-0.941362, -0.318015, 0.112716,
		-0.334289, 0.924354, -0.183901,
		28.757523, 41.009228, 54.836319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585995, 40.143387, 54.358955>,  <28.991526, 40.362179, 54.965050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585995, 40.143387, 54.358955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643295, 40.538887, 54.341751>,  <28.677675, 40.776188, 54.331429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643295, 40.538887, 54.341751>,  <28.585995, 40.143387, 54.358955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643295, 40.538887, 54.341751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190037, -0.070128, -0.979269,
		-0.971270, 0.132107, -0.197945,
		0.143250, 0.988752, -0.043008,
		28.686270, 40.835514, 54.328850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162901, 40.363651, 53.771824>,  <28.585995, 40.143387, 54.358955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162901, 40.363651, 53.771824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425316, 40.658932, 53.834660>,  <28.582766, 40.836098, 53.872360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425316, 40.658932, 53.834660>,  <28.162901, 40.363651, 53.771824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425316, 40.658932, 53.834660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303322, -0.067299, -0.950509,
		-0.691093, 0.671218, -0.268062,
		0.656039, 0.738199, 0.157085,
		28.622128, 40.880390, 53.881786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014744, 40.969555, 53.237942>,  <28.162901, 40.363651, 53.771824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014744, 40.969555, 53.237942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.387871, 40.971279, 53.382072>,  <28.611746, 40.972313, 53.468552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.387871, 40.971279, 53.382072>,  <28.014744, 40.969555, 53.237942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387871, 40.971279, 53.382072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354119, -0.196171, -0.914394,
		0.066742, 0.980560, -0.184519,
		0.932816, 0.004313, 0.360328,
		28.667715, 40.972572, 53.490170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302155, 41.323307, 52.756905>,  <28.014744, 40.969555, 53.237942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302155, 41.323307, 52.756905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582159, 41.098888, 52.933636>,  <28.750162, 40.964237, 53.039677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582159, 41.098888, 52.933636>,  <28.302155, 41.323307, 52.756905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582159, 41.098888, 52.933636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411326, -0.189004, -0.891677,
		0.583779, 0.805919, 0.098468,
		0.700009, -0.561045, 0.441832,
		28.792162, 40.930576, 53.066185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970303, 41.576019, 52.467793>,  <28.302155, 41.323307, 52.756905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970303, 41.576019, 52.467793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061781, 41.219097, 52.623482>,  <29.116669, 41.004944, 52.716896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061781, 41.219097, 52.623482>,  <28.970303, 41.576019, 52.467793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061781, 41.219097, 52.623482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707358, -0.122379, -0.696181,
		0.668837, 0.434533, 0.603190,
		0.228696, -0.892303, 0.389222,
		29.130390, 40.951405, 52.740250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720137, 41.407028, 52.362251>,  <28.970303, 41.576019, 52.467793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720137, 41.407028, 52.362251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586740, 41.039452, 52.446468>,  <29.506702, 40.818905, 52.496998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586740, 41.039452, 52.446468>,  <29.720137, 41.407028, 52.362251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586740, 41.039452, 52.446468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600507, -0.379218, -0.703978,
		0.726757, -0.108339, 0.678297,
		-0.333491, -0.918943, 0.210541,
		29.486692, 40.763767, 52.509632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298016, 41.058571, 52.458210>,  <29.720137, 41.407028, 52.362251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298016, 41.058571, 52.458210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007524, 40.805580, 52.350460>,  <29.833231, 40.653786, 52.285809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007524, 40.805580, 52.350460>,  <30.298016, 41.058571, 52.458210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007524, 40.805580, 52.350460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633932, -0.464544, -0.618327,
		0.265944, -0.619811, 0.738314,
		-0.726226, -0.632482, -0.269376,
		29.789658, 40.615837, 52.269646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751823, 40.466454, 52.308907>,  <30.298016, 41.058571, 52.458210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751823, 40.466454, 52.308907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.404753, 40.386414, 52.126873>,  <30.196510, 40.338390, 52.017654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.404753, 40.386414, 52.126873>,  <30.751823, 40.466454, 52.308907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404753, 40.386414, 52.126873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480742, -0.570852, -0.665594,
		-0.126598, -0.796296, 0.591511,
		-0.867675, -0.200102, -0.455082,
		30.144451, 40.326382, 51.990349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838800, 39.850330, 51.961361>,  <30.751823, 40.466454, 52.308907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838800, 39.850330, 51.961361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.486309, 39.941917, 51.795948>,  <30.274815, 39.996868, 51.696701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.486309, 39.941917, 51.795948>,  <30.838800, 39.850330, 51.961361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486309, 39.941917, 51.795948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187213, -0.634251, -0.750118,
		-0.434034, -0.738445, 0.516055,
		-0.881229, 0.228964, -0.413533,
		30.221941, 40.010609, 51.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533575, 39.241550, 51.702503>,  <30.838800, 39.850330, 51.961361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533575, 39.241550, 51.702503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358765, 39.509495, 51.462402>,  <30.253878, 39.670261, 51.318344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358765, 39.509495, 51.462402>,  <30.533575, 39.241550, 51.702503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358765, 39.509495, 51.462402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279501, -0.533174, -0.798501,
		-0.854920, -0.516736, 0.045784,
		-0.437025, 0.669858, -0.600249,
		30.227657, 39.710453, 51.282326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122700, 38.894848, 51.186501>,  <30.533575, 39.241550, 51.702503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122700, 38.894848, 51.186501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218664, 39.250679, 51.031021>,  <30.276243, 39.464180, 50.937733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218664, 39.250679, 51.031021>,  <30.122700, 38.894848, 51.186501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218664, 39.250679, 51.031021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338542, -0.451923, -0.825321,
		-0.909853, 0.066413, -0.409582,
		0.239912, 0.889581, -0.388700,
		30.290638, 39.517555, 50.914410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346054, 38.657150, 51.029709>,  <30.122700, 38.894848, 51.186501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346054, 38.657150, 51.029709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253710, 38.269852, 50.991325>,  <29.198303, 38.037472, 50.968296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253710, 38.269852, 50.991325>,  <29.346054, 38.657150, 51.029709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253710, 38.269852, 50.991325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534479, 0.043783, 0.844047,
		-0.813041, 0.246146, -0.527614,
		-0.230860, -0.968243, -0.095962,
		29.184452, 37.979378, 50.962536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596983, 38.627872, 50.962204>,  <29.346054, 38.657150, 51.029709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596983, 38.627872, 50.962204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735416, 38.283218, 51.110699>,  <28.818476, 38.076427, 51.199795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735416, 38.283218, 51.110699>,  <28.596983, 38.627872, 50.962204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735416, 38.283218, 51.110699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722702, 0.007491, 0.691119,
		-0.598272, -0.507476, -0.620112,
		0.346081, -0.861633, 0.371236,
		28.839241, 38.024727, 51.222069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016693, 38.387241, 51.233082>,  <28.596983, 38.627872, 50.962204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016693, 38.387241, 51.233082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293589, 38.157852, 51.408325>,  <28.459726, 38.020218, 51.513470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293589, 38.157852, 51.408325>,  <28.016693, 38.387241, 51.233082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293589, 38.157852, 51.408325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659336, -0.255761, 0.707009,
		-0.293402, -0.778275, -0.555160,
		0.692236, -0.573475, 0.438104,
		28.501259, 37.985809, 51.539757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610903, 37.832779, 51.677223>,  <28.016693, 38.387241, 51.233082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610903, 37.832779, 51.677223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984892, 37.832603, 51.819111>,  <28.209286, 37.832500, 51.904243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984892, 37.832603, 51.819111>,  <27.610903, 37.832779, 51.677223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984892, 37.832603, 51.819111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343956, -0.245602, 0.906297,
		0.086726, -0.969371, -0.229780,
		0.934972, -0.000435, 0.354721,
		28.265383, 37.832474, 51.925526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469557, 37.356529, 52.180717>,  <27.610903, 37.832779, 51.677223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469557, 37.356529, 52.180717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.813843, 37.542347, 52.264023>,  <28.020414, 37.653839, 52.314007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.813843, 37.542347, 52.264023>,  <27.469557, 37.356529, 52.180717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813843, 37.542347, 52.264023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163436, -0.135287, 0.977234,
		0.482143, -0.875155, -0.040520,
		0.860713, 0.464544, 0.208260,
		28.072056, 37.681709, 52.326500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794954, 36.973255, 52.825302>,  <27.469557, 37.356529, 52.180717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794954, 36.973255, 52.825302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950090, 37.341450, 52.806183>,  <28.043173, 37.562366, 52.794712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950090, 37.341450, 52.806183>,  <27.794954, 36.973255, 52.825302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950090, 37.341450, 52.806183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130450, 0.106147, 0.985756,
		0.912448, -0.376082, 0.161245,
		0.387841, 0.920486, -0.047794,
		28.066442, 37.617596, 52.791843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246204, 36.962730, 53.385517>,  <27.794954, 36.973255, 52.825302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246204, 36.962730, 53.385517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161606, 37.343765, 53.298027>,  <28.110846, 37.572388, 53.245533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161606, 37.343765, 53.298027>,  <28.246204, 36.962730, 53.385517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161606, 37.343765, 53.298027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130287, 0.194309, 0.972249,
		0.968656, 0.234125, 0.083015,
		-0.211497, 0.952591, -0.218722,
		28.098156, 37.629543, 53.232410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650223, 37.399750, 53.852467>,  <28.246204, 36.962730, 53.385517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650223, 37.399750, 53.852467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397221, 37.664494, 53.691528>,  <28.245419, 37.823338, 53.594967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397221, 37.664494, 53.691528>,  <28.650223, 37.399750, 53.852467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397221, 37.664494, 53.691528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098706, 0.446343, 0.889401,
		0.768239, 0.602267, -0.216986,
		-0.632507, 0.661855, -0.402346,
		28.207468, 37.863049, 53.570824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904625, 38.074306, 53.991093>,  <28.650223, 37.399750, 53.852467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904625, 38.074306, 53.991093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510290, 38.089813, 53.925823>,  <28.273689, 38.099117, 53.886662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510290, 38.089813, 53.925823>,  <28.904625, 38.074306, 53.991093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510290, 38.089813, 53.925823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139394, 0.351625, 0.925705,
		0.093259, 0.935338, -0.341241,
		-0.985836, 0.038764, -0.163173,
		28.214539, 38.101440, 53.876873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722334, 38.634735, 54.325218>,  <28.904625, 38.074306, 53.991093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722334, 38.634735, 54.325218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368805, 38.456657, 54.267723>,  <28.156687, 38.349812, 54.233227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368805, 38.456657, 54.267723>,  <28.722334, 38.634735, 54.325218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368805, 38.456657, 54.267723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325919, 0.365541, 0.871870,
		-0.335613, 0.817423, -0.468171,
		-0.883822, -0.445196, -0.143733,
		28.103659, 38.323097, 54.224602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245598, 39.144444, 54.456875>,  <28.722334, 38.634735, 54.325218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245598, 39.144444, 54.456875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096994, 38.778240, 54.518608>,  <28.007832, 38.558517, 54.555649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096994, 38.778240, 54.518608>,  <28.245598, 39.144444, 54.456875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096994, 38.778240, 54.518608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271466, 0.266083, 0.924936,
		-0.887855, 0.301726, -0.347383,
		-0.371509, -0.915512, 0.154335,
		27.985542, 38.503586, 54.564907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523424, 39.198521, 54.767780>,  <28.245598, 39.144444, 54.456875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523424, 39.198521, 54.767780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682398, 38.849144, 54.880306>,  <27.777782, 38.639519, 54.947823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682398, 38.849144, 54.880306>,  <27.523424, 39.198521, 54.767780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682398, 38.849144, 54.880306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373907, 0.125820, 0.918892,
		-0.837997, -0.470386, -0.276582,
		0.397434, -0.873445, 0.281317,
		27.801628, 38.587109, 54.964703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242197, 39.104431, 55.467213>,  <27.523424, 39.198521, 54.767780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242197, 39.104431, 55.467213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488132, 38.789299, 55.481625>,  <27.635695, 38.600220, 55.490273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488132, 38.789299, 55.481625>,  <27.242197, 39.104431, 55.467213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488132, 38.789299, 55.481625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054390, 0.003219, 0.998515,
		-0.786776, -0.615884, -0.040871,
		0.614838, -0.787830, 0.036031,
		27.672585, 38.552952, 55.492435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972706, 38.626442, 55.898663>,  <27.242197, 39.104431, 55.467213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972706, 38.626442, 55.898663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365051, 38.548790, 55.892738>,  <27.600458, 38.502197, 55.889183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365051, 38.548790, 55.892738>,  <26.972706, 38.626442, 55.898663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365051, 38.548790, 55.892738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032685, 0.089193, 0.995478,
		-0.191934, -0.976912, 0.093832,
		0.980864, -0.194133, -0.014811,
		27.659309, 38.490551, 55.888294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.001102, 39.277081, 57.532410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634178, 39.237732, 57.378075>,  <33.414024, 39.214123, 57.285473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634178, 39.237732, 57.378075>,  <34.001102, 39.277081, 57.532410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634178, 39.237732, 57.378075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376426, -0.530157, -0.759762,
		-0.129814, -0.842174, 0.523346,
		-0.917307, -0.098373, -0.385838,
		33.358986, 39.208221, 57.262321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923107, 38.585567, 57.402912>,  <34.001102, 39.277081, 57.532410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923107, 38.585567, 57.402912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648636, 38.755306, 57.166576>,  <33.483952, 38.857151, 57.024776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648636, 38.755306, 57.166576>,  <33.923107, 38.585567, 57.402912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648636, 38.755306, 57.166576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260253, -0.615252, -0.744133,
		-0.679286, -0.664374, 0.311734,
		-0.686177, 0.424350, -0.590837,
		33.442783, 38.882610, 56.989326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384609, 38.146015, 57.149658>,  <33.923107, 38.585567, 57.402912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384609, 38.146015, 57.149658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374260, 38.424046, 56.862270>,  <33.368050, 38.590866, 56.689838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374260, 38.424046, 56.862270>,  <33.384609, 38.146015, 57.149658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374260, 38.424046, 56.862270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185739, -0.702851, -0.686659,
		-0.982258, -0.151217, -0.110915,
		-0.025878, 0.695078, -0.718468,
		33.366497, 38.632568, 56.646729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268993, 37.730663, 56.536572>,  <33.384609, 38.146015, 57.149658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268993, 37.730663, 56.536572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351208, 38.095840, 56.395550>,  <33.400536, 38.314945, 56.310936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351208, 38.095840, 56.395550>,  <33.268993, 37.730663, 56.536572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351208, 38.095840, 56.395550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148154, -0.385118, -0.910898,
		-0.967370, 0.134993, -0.214413,
		0.205539, 0.912941, -0.352552,
		33.412868, 38.369724, 56.289783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765617, 37.878860, 55.941372>,  <33.268993, 37.730663, 56.536572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765617, 37.878860, 55.941372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084660, 38.118774, 55.915806>,  <33.276085, 38.262722, 55.900467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084660, 38.118774, 55.915806>,  <32.765617, 37.878860, 55.941372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084660, 38.118774, 55.915806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217000, -0.384198, -0.897387,
		-0.562792, 0.701892, -0.436591,
		0.797606, 0.599782, -0.063914,
		33.323940, 38.298710, 55.896633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846275, 38.090618, 55.244709>,  <32.765617, 37.878860, 55.941372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846275, 38.090618, 55.244709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216785, 38.137741, 55.387897>,  <33.439091, 38.166016, 55.473808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216785, 38.137741, 55.387897>,  <32.846275, 38.090618, 55.244709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216785, 38.137741, 55.387897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373698, -0.409842, -0.832093,
		0.048684, 0.904517, -0.423650,
		0.926272, 0.117808, 0.357969,
		33.494667, 38.173084, 55.495289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274551, 38.252098, 54.645470>,  <32.846275, 38.090618, 55.244709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274551, 38.252098, 54.645470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524628, 38.129280, 54.932484>,  <33.674675, 38.055588, 55.104691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524628, 38.129280, 54.932484>,  <33.274551, 38.252098, 54.645470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524628, 38.129280, 54.932484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606556, -0.387397, -0.694272,
		0.491142, 0.869280, -0.055959,
		0.625195, -0.307044, 0.717534,
		33.712185, 38.037167, 55.147743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939953, 38.397324, 54.414139>,  <33.274551, 38.252098, 54.645470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939953, 38.397324, 54.414139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029808, 38.123558, 54.691589>,  <34.083721, 37.959297, 54.858059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029808, 38.123558, 54.691589>,  <33.939953, 38.397324, 54.414139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029808, 38.123558, 54.691589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665290, -0.412376, -0.622363,
		0.711989, 0.601265, 0.362701,
		0.224636, -0.684416, 0.693623,
		34.097198, 37.918232, 54.899677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669624, 38.242104, 54.340778>,  <33.939953, 38.397324, 54.414139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669624, 38.242104, 54.340778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506763, 37.938824, 54.544487>,  <34.409046, 37.756855, 54.666714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506763, 37.938824, 54.544487>,  <34.669624, 38.242104, 54.340778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506763, 37.938824, 54.544487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366449, -0.646344, -0.669294,
		0.836623, -0.085885, 0.541004,
		-0.407156, -0.758198, 0.509274,
		34.384617, 37.711365, 54.697269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207455, 37.736973, 54.601147>,  <34.669624, 38.242104, 54.340778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207455, 37.736973, 54.601147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862629, 37.535236, 54.581226>,  <34.655735, 37.414192, 54.569275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862629, 37.535236, 54.581226>,  <35.207455, 37.736973, 54.601147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862629, 37.535236, 54.581226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484354, -0.790980, -0.373834,
		0.149149, -0.346391, 0.926158,
		-0.862065, -0.504345, -0.049802,
		34.604008, 37.383934, 54.566284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465969, 37.072079, 54.748592>,  <35.207455, 37.736973, 54.601147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465969, 37.072079, 54.748592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109970, 37.018505, 54.574257>,  <34.896370, 36.986359, 54.469654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109970, 37.018505, 54.574257>,  <35.465969, 37.072079, 54.748592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109970, 37.018505, 54.574257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358066, -0.797101, -0.486230,
		-0.282286, -0.588805, 0.757379,
		-0.890002, -0.133936, -0.435842,
		34.842968, 36.978325, 54.443504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417221, 36.300411, 54.762440>,  <35.465969, 37.072079, 54.748592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417221, 36.300411, 54.762440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154419, 36.406494, 54.480160>,  <34.996738, 36.470146, 54.310791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154419, 36.406494, 54.480160>,  <35.417221, 36.300411, 54.762440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154419, 36.406494, 54.480160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322635, -0.747112, -0.581146,
		-0.681359, -0.609499, 0.405292,
		-0.657006, 0.265208, -0.705697,
		34.957317, 36.486057, 54.268452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049339, 35.665909, 54.478836>,  <35.417221, 36.300411, 54.762440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049339, 35.665909, 54.478836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966652, 35.961102, 54.221886>,  <34.917038, 36.138218, 54.067715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966652, 35.961102, 54.221886>,  <35.049339, 35.665909, 54.478836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966652, 35.961102, 54.221886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297621, -0.578018, -0.759814,
		-0.932034, -0.348256, -0.100150,
		-0.206722, 0.737979, -0.642381,
		34.904636, 36.182495, 54.029171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506657, 35.382233, 54.000504>,  <35.049339, 35.665909, 54.478836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506657, 35.382233, 54.000504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716213, 35.672634, 53.822308>,  <34.841949, 35.846874, 53.715389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716213, 35.672634, 53.822308>,  <34.506657, 35.382233, 54.000504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716213, 35.672634, 53.822308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101784, -0.572615, -0.813481,
		-0.845681, 0.380833, -0.373885,
		0.523893, 0.726001, -0.445487,
		34.873383, 35.890434, 53.688660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902950, 35.165474, 53.837063>,  <34.506657, 35.382233, 54.000504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902950, 35.165474, 53.837063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006020, 34.784817, 53.903973>,  <34.067860, 34.556423, 53.944118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006020, 34.784817, 53.903973>,  <33.902950, 35.165474, 53.837063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006020, 34.784817, 53.903973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191309, 0.119450, 0.974234,
		-0.947104, -0.283034, -0.151279,
		0.257671, -0.951643, 0.167279,
		34.083321, 34.499325, 53.954155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335697, 34.848839, 54.186741>,  <33.902950, 35.165474, 53.837063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335697, 34.848839, 54.186741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672020, 34.647121, 54.265453>,  <33.873814, 34.526093, 54.312683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672020, 34.647121, 54.265453>,  <33.335697, 34.848839, 54.186741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672020, 34.647121, 54.265453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133495, 0.159129, 0.978191,
		-0.524610, -0.848744, 0.066476,
		0.840811, -0.504294, 0.196784,
		33.924263, 34.495834, 54.324490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147804, 34.351078, 54.724796>,  <33.335697, 34.848839, 54.186741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147804, 34.351078, 54.724796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541046, 34.423599, 54.734821>,  <33.776993, 34.467113, 54.740837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541046, 34.423599, 54.734821>,  <33.147804, 34.351078, 54.724796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541046, 34.423599, 54.734821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037591, 0.066007, 0.997111,
		0.179125, -0.981210, 0.071708,
		0.983108, 0.181303, 0.025062,
		33.835979, 34.477989, 54.742340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317928, 33.898129, 55.246441>,  <33.147804, 34.351078, 54.724796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317928, 33.898129, 55.246441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618629, 34.156902, 55.195305>,  <33.799049, 34.312168, 55.164623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618629, 34.156902, 55.195305>,  <33.317928, 33.898129, 55.246441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618629, 34.156902, 55.195305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043481, 0.144814, 0.988503,
		0.658013, -0.748666, 0.080734,
		0.751750, 0.646938, -0.127842,
		33.844154, 34.350983, 55.156952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677032, 33.751167, 55.768013>,  <33.317928, 33.898129, 55.246441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677032, 33.751167, 55.768013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877399, 34.085350, 55.677597>,  <33.997620, 34.285858, 55.623348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877399, 34.085350, 55.677597>,  <33.677032, 33.751167, 55.768013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877399, 34.085350, 55.677597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015320, 0.269689, 0.962825,
		0.865361, -0.478831, 0.147890,
		0.500915, 0.835457, -0.226043,
		34.027676, 34.335987, 55.609783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146477, 33.860989, 56.325172>,  <33.677032, 33.751167, 55.768013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146477, 33.860989, 56.325172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102997, 34.223625, 56.162064>,  <34.076908, 34.441208, 56.064198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102997, 34.223625, 56.162064>,  <34.146477, 33.860989, 56.325172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102997, 34.223625, 56.162064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088887, 0.399693, 0.912329,
		0.990093, 0.135415, 0.037137,
		-0.108700, 0.906591, -0.407770,
		34.070389, 34.495602, 56.039734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549892, 34.386063, 56.716839>,  <34.146477, 33.860989, 56.325172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549892, 34.386063, 56.716839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260384, 34.588577, 56.529297>,  <34.086678, 34.710087, 56.416771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260384, 34.588577, 56.529297>,  <34.549892, 34.386063, 56.716839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260384, 34.588577, 56.529297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091385, 0.603146, 0.792378,
		0.683958, 0.616349, -0.390275,
		-0.723775, 0.506289, -0.468852,
		34.043251, 34.740463, 56.388641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685253, 34.978951, 56.990810>,  <34.549892, 34.386063, 56.716839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685253, 34.978951, 56.990810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.329220, 34.997070, 56.809399>,  <34.115601, 35.007942, 56.700550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.329220, 34.997070, 56.809399>,  <34.685253, 34.978951, 56.990810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329220, 34.997070, 56.809399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323369, 0.638480, 0.698409,
		0.321212, 0.768304, -0.553653,
		-0.890087, 0.045303, -0.453533,
		34.062195, 35.010662, 56.673340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500984, 35.673809, 56.906414>,  <34.685253, 34.978951, 56.990810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500984, 35.673809, 56.906414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144852, 35.491695, 56.904724>,  <33.931171, 35.382427, 56.903709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144852, 35.491695, 56.904724>,  <34.500984, 35.673809, 56.906414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144852, 35.491695, 56.904724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321848, 0.622769, 0.713143,
		-0.322051, 0.636297, -0.701006,
		-0.890335, -0.455286, -0.004228,
		33.877750, 35.355110, 56.903454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042988, 36.245544, 56.888195>,  <34.500984, 35.673809, 56.906414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042988, 36.245544, 56.888195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840496, 35.924904, 57.015427>,  <33.719002, 35.732521, 57.091766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840496, 35.924904, 57.015427>,  <34.042988, 36.245544, 56.888195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840496, 35.924904, 57.015427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529987, 0.580128, 0.618519,
		-0.680329, 0.144535, -0.718514,
		-0.506228, -0.801599, 0.318076,
		33.688629, 35.684425, 57.110851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234638, 36.355404, 56.901501>,  <34.042988, 36.245544, 56.888195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234638, 36.355404, 56.901501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295444, 36.074856, 57.180061>,  <33.331928, 35.906528, 57.347198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295444, 36.074856, 57.180061>,  <33.234638, 36.355404, 56.901501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295444, 36.074856, 57.180061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635568, 0.470230, 0.612320,
		-0.756931, -0.535690, -0.374287,
		0.152013, -0.701369, 0.696400,
		33.341049, 35.864445, 57.388981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545341, 36.187946, 57.170704>,  <33.234638, 36.355404, 56.901501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545341, 36.187946, 57.170704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797287, 36.071461, 57.458721>,  <32.948452, 36.001568, 57.631531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797287, 36.071461, 57.458721>,  <32.545341, 36.187946, 57.170704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797287, 36.071461, 57.458721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584728, 0.432414, 0.686376,
		-0.511244, -0.853352, 0.102077,
		0.629860, -0.291218, 0.720048,
		32.986244, 35.984097, 57.674736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062923, 35.920891, 57.753853>,  <32.545341, 36.187946, 57.170704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062923, 35.920891, 57.753853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400536, 35.997257, 57.954315>,  <32.603104, 36.043079, 58.074593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400536, 35.997257, 57.954315>,  <32.062923, 35.920891, 57.753853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400536, 35.997257, 57.954315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535663, 0.345336, 0.770589,
		-0.025947, -0.918854, 0.393743,
		0.844033, 0.190919, 0.501157,
		32.653744, 36.054535, 58.104664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992073, 35.796604, 58.403976>,  <32.062923, 35.920891, 57.753853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992073, 35.796604, 58.403976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.312195, 36.032848, 58.445351>,  <32.504269, 36.174595, 58.470177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.312195, 36.032848, 58.445351>,  <31.992073, 35.796604, 58.403976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312195, 36.032848, 58.445351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411827, 0.416061, 0.810735,
		0.435800, -0.691424, 0.576204,
		0.800298, 0.590615, 0.103428,
		32.552284, 36.210030, 58.476379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658726, 35.508980, 58.967827>,  <31.992073, 35.796604, 58.403976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658726, 35.508980, 58.967827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.267372, 35.571114, 58.913219>,  <31.032560, 35.608395, 58.880455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.267372, 35.571114, 58.913219>,  <31.658726, 35.508980, 58.967827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267372, 35.571114, 58.913219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038968, -0.509843, -0.859385,
		-0.203091, -0.846128, 0.492769,
		-0.978384, 0.155331, -0.136516,
		30.973856, 35.617714, 58.872265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374363, 34.916073, 58.719337>,  <31.658726, 35.508980, 58.967827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374363, 34.916073, 58.719337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062889, 35.135708, 58.597908>,  <30.876005, 35.267487, 58.525051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062889, 35.135708, 58.597908>,  <31.374363, 34.916073, 58.719337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062889, 35.135708, 58.597908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155171, -0.637355, -0.754785,
		-0.607921, -0.540637, 0.581502,
		-0.778688, 0.549082, -0.303570,
		30.829283, 35.300434, 58.506836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911201, 34.453125, 58.372311>,  <31.374363, 34.916073, 58.719337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911201, 34.453125, 58.372311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800020, 34.811008, 58.232456>,  <30.733313, 35.025738, 58.148544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800020, 34.811008, 58.232456>,  <30.911201, 34.453125, 58.372311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800020, 34.811008, 58.232456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295581, -0.425977, -0.855088,
		-0.913988, -0.134327, 0.382859,
		-0.277951, 0.894707, -0.349633,
		30.716635, 35.079422, 58.127567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328684, 34.384899, 58.079018>,  <30.911201, 34.453125, 58.372311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328684, 34.384899, 58.079018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.442783, 34.719250, 57.891422>,  <30.511244, 34.919861, 57.778866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.442783, 34.719250, 57.891422>,  <30.328684, 34.384899, 58.079018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442783, 34.719250, 57.891422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116203, -0.455549, -0.882594,
		-0.951383, 0.306258, -0.032814,
		0.285250, 0.835872, -0.468989,
		30.528358, 34.970013, 57.750725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847670, 34.389580, 57.565239>,  <30.328684, 34.384899, 58.079018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847670, 34.389580, 57.565239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.151928, 34.623188, 57.451862>,  <30.334482, 34.763351, 57.383835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.151928, 34.623188, 57.451862>,  <29.847670, 34.389580, 57.565239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151928, 34.623188, 57.451862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044190, -0.482198, -0.874947,
		-0.647661, 0.653000, -0.392590,
		0.760646, 0.584018, -0.283445,
		30.380121, 34.798393, 57.366829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592482, 34.688782, 56.959316>,  <29.847670, 34.389580, 57.565239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592482, 34.688782, 56.959316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.990824, 34.719265, 56.939468>,  <30.229830, 34.737556, 56.927559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.990824, 34.719265, 56.939468>,  <29.592482, 34.688782, 56.959316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990824, 34.719265, 56.939468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008317, -0.467014, -0.884211,
		-0.090558, 0.880960, -0.464445,
		0.995856, 0.076209, -0.049619,
		30.289581, 34.742126, 56.924583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649906, 34.795124, 56.244732>,  <29.592482, 34.688782, 56.959316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649906, 34.795124, 56.244732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.018524, 34.686615, 56.355850>,  <30.239695, 34.621510, 56.422520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.018524, 34.686615, 56.355850>,  <29.649906, 34.795124, 56.244732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018524, 34.686615, 56.355850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159753, -0.387180, -0.908059,
		0.353886, 0.881194, -0.313466,
		0.921544, -0.271272, 0.277791,
		30.294987, 34.605232, 56.439186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166134, 35.105038, 55.715485>,  <29.649906, 34.795124, 56.244732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166134, 35.105038, 55.715485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339170, 34.798874, 55.906067>,  <30.442993, 34.615173, 56.020416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339170, 34.798874, 55.906067>,  <30.166134, 35.105038, 55.715485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339170, 34.798874, 55.906067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367538, -0.332842, -0.868408,
		0.823275, 0.550780, 0.137334,
		0.432591, -0.765414, 0.476453,
		30.468948, 34.569248, 56.049004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840126, 35.128914, 55.483418>,  <30.166134, 35.105038, 55.715485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840126, 35.128914, 55.483418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.768957, 34.758495, 55.616558>,  <30.726255, 34.536243, 55.696442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.768957, 34.758495, 55.616558>,  <30.840126, 35.128914, 55.483418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768957, 34.758495, 55.616558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323210, -0.374474, -0.869082,
		0.929451, -0.047047, 0.365933,
		-0.177920, -0.926043, 0.332849,
		30.715582, 34.480682, 55.716412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318972, 34.807899, 55.299347>,  <30.840126, 35.128914, 55.483418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318972, 34.807899, 55.299347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.067192, 34.506252, 55.374287>,  <30.916124, 34.325264, 55.419250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.067192, 34.506252, 55.374287>,  <31.318972, 34.807899, 55.299347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067192, 34.506252, 55.374287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403015, -0.522974, -0.751051,
		0.664360, -0.397243, 0.633106,
		-0.629448, -0.754119, 0.187348,
		30.878357, 34.280018, 55.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629179, 34.195850, 55.108070>,  <31.318972, 34.807899, 55.299347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629179, 34.195850, 55.108070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.240767, 34.100273, 55.106827>,  <31.007719, 34.042927, 55.106079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.240767, 34.100273, 55.106827>,  <31.629179, 34.195850, 55.108070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240767, 34.100273, 55.106827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159886, -0.639977, -0.751576,
		0.177594, -0.730299, 0.659639,
		-0.971029, -0.238942, -0.003108,
		30.949457, 34.028591, 55.105896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716848, 33.567951, 54.940769>,  <31.629179, 34.195850, 55.108070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716848, 33.567951, 54.940769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.330065, 33.643379, 54.872139>,  <31.097996, 33.688637, 54.830959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.330065, 33.643379, 54.872139>,  <31.716848, 33.567951, 54.940769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330065, 33.643379, 54.872139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035188, -0.567842, -0.822385,
		-0.252500, -0.801248, 0.542443,
		-0.966957, 0.188565, -0.171574,
		31.039978, 33.699947, 54.820667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308825, 32.929741, 54.706532>,  <31.716848, 33.567951, 54.940769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308825, 32.929741, 54.706532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.081512, 33.213181, 54.539227>,  <30.945126, 33.383244, 54.438843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.081512, 33.213181, 54.539227>,  <31.308825, 32.929741, 54.706532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081512, 33.213181, 54.539227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024322, -0.522562, -0.852254,
		-0.822477, -0.474145, 0.314195,
		-0.568279, 0.708601, -0.418263,
		30.911028, 33.425762, 54.413746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633669, 32.581394, 54.362350>,  <31.308825, 32.929741, 54.706532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633669, 32.581394, 54.362350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.664486, 32.945908, 54.200542>,  <30.682976, 33.164616, 54.103458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.664486, 32.945908, 54.200542>,  <30.633669, 32.581394, 54.362350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664486, 32.945908, 54.200542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178059, -0.386625, -0.904884,
		-0.980999, 0.141745, 0.132474,
		0.077045, 0.911279, -0.404518,
		30.687599, 33.219292, 54.079185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.076767, 38.019081, 56.450878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.431679, 38.197090, 56.402397>,  <27.644625, 38.303898, 56.373310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.431679, 38.197090, 56.402397>,  <27.076767, 38.019081, 56.450878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431679, 38.197090, 56.402397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076239, 0.117649, 0.990124,
		0.454891, -0.887756, 0.070459,
		0.887278, 0.445027, -0.121200,
		27.697863, 38.330597, 56.366035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426683, 37.674297, 56.945477>,  <27.076767, 38.019081, 56.450878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426683, 37.674297, 56.945477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.686201, 37.966843, 56.861404>,  <27.841911, 38.142368, 56.810959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.686201, 37.966843, 56.861404>,  <27.426683, 37.674297, 56.945477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686201, 37.966843, 56.861404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146655, 0.150858, 0.977616,
		0.746698, -0.665096, -0.009382,
		0.648794, 0.731360, -0.210185,
		27.880840, 38.186253, 56.798347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047451, 37.499088, 57.255444>,  <27.426683, 37.674297, 56.945477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047451, 37.499088, 57.255444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.024805, 37.895252, 57.205036>,  <28.011217, 38.132950, 57.174793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.024805, 37.895252, 57.205036>,  <28.047451, 37.499088, 57.255444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024805, 37.895252, 57.205036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127758, 0.132368, 0.982933,
		0.990188, 0.039547, -0.134026,
		-0.056613, 0.990411, -0.126017,
		28.007822, 38.192375, 57.167233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690784, 37.765858, 57.540424>,  <28.047451, 37.499088, 57.255444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690784, 37.765858, 57.540424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.409678, 38.050091, 57.554245>,  <28.241014, 38.220631, 57.562538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.409678, 38.050091, 57.554245>,  <28.690784, 37.765858, 57.540424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409678, 38.050091, 57.554245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175101, 0.125697, 0.976494,
		0.689535, 0.692296, -0.212760,
		-0.702766, 0.710581, 0.034549,
		28.198847, 38.263264, 57.564610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940184, 38.211155, 57.989902>,  <28.690784, 37.765858, 57.540424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940184, 38.211155, 57.989902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.569645, 38.361187, 57.976086>,  <28.347321, 38.451206, 57.967796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.569645, 38.361187, 57.976086>,  <28.940184, 38.211155, 57.989902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569645, 38.361187, 57.976086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009286, 0.114411, 0.993390,
		0.376552, 0.919905, -0.109467,
		-0.926349, 0.375080, -0.034539,
		28.291740, 38.473709, 57.965725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975920, 38.868336, 58.409523>,  <28.940184, 38.211155, 57.989902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975920, 38.868336, 58.409523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.587358, 38.775265, 58.390583>,  <28.354221, 38.719421, 58.379219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.587358, 38.775265, 58.390583>,  <28.975920, 38.868336, 58.409523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587358, 38.775265, 58.390583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121639, 0.316371, 0.940805,
		-0.203919, 0.919659, -0.335625,
		-0.971401, -0.232673, -0.047352,
		28.295938, 38.705463, 58.376377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587936, 39.532253, 58.504337>,  <28.975920, 38.868336, 58.409523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587936, 39.532253, 58.504337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.371803, 39.220531, 58.631287>,  <28.242123, 39.033501, 58.707458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.371803, 39.220531, 58.631287>,  <28.587936, 39.532253, 58.504337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371803, 39.220531, 58.631287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084187, 0.425351, 0.901104,
		-0.837229, 0.460178, -0.295439,
		-0.540333, -0.779303, 0.317375,
		28.209703, 38.986740, 58.726498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024172, 39.735054, 58.778881>,  <28.587936, 39.532253, 58.504337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024172, 39.735054, 58.778881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.973827, 39.364033, 58.919624>,  <27.943621, 39.141418, 59.004070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.973827, 39.364033, 58.919624>,  <28.024172, 39.735054, 58.778881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973827, 39.364033, 58.919624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371112, 0.372948, 0.850403,
		-0.920019, -0.023547, -0.391165,
		-0.125860, -0.927553, 0.351858,
		27.936069, 39.085766, 59.025181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302507, 39.659645, 58.964375>,  <28.024172, 39.735054, 58.778881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302507, 39.659645, 58.964375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.490582, 39.400990, 59.204636>,  <27.603426, 39.245796, 59.348793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.490582, 39.400990, 59.204636>,  <27.302507, 39.659645, 58.964375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490582, 39.400990, 59.204636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336993, 0.497467, 0.799351,
		-0.815697, -0.578258, 0.015988,
		0.470185, -0.646641, 0.600652,
		27.631638, 39.206997, 59.384830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794901, 39.550705, 59.551109>,  <27.302507, 39.659645, 58.964375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794901, 39.550705, 59.551109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.111267, 39.372799, 59.719223>,  <27.301086, 39.266056, 59.820091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.111267, 39.372799, 59.719223>,  <26.794901, 39.550705, 59.551109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111267, 39.372799, 59.719223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345717, 0.241927, 0.906615,
		-0.504908, -0.862355, 0.037581,
		0.790916, -0.444765, 0.420281,
		27.348541, 39.239368, 59.845306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572281, 39.122017, 60.142300>,  <26.794901, 39.550705, 59.551109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572281, 39.122017, 60.142300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.960951, 39.174809, 60.220707>,  <27.194153, 39.206486, 60.267754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.960951, 39.174809, 60.220707>,  <26.572281, 39.122017, 60.142300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960951, 39.174809, 60.220707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226827, 0.288244, 0.930303,
		0.066282, -0.948417, 0.310018,
		0.971677, 0.131983, 0.196022,
		27.252455, 39.214405, 60.279514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749748, 38.886486, 60.802589>,  <26.572281, 39.122017, 60.142300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749748, 38.886486, 60.802589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.051123, 39.140228, 60.733387>,  <27.231947, 39.292473, 60.691864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.051123, 39.140228, 60.733387>,  <26.749748, 38.886486, 60.802589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051123, 39.140228, 60.733387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104020, 0.374798, 0.921252,
		0.649240, -0.676109, 0.348372,
		0.753437, 0.634352, -0.173005,
		27.277153, 39.330532, 60.681484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149946, 38.891441, 61.476822>,  <26.749748, 38.886486, 60.802589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149946, 38.891441, 61.476822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.218826, 39.224133, 61.265701>,  <27.260155, 39.423748, 61.139030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.218826, 39.224133, 61.265701>,  <27.149946, 38.891441, 61.476822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218826, 39.224133, 61.265701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008646, 0.537060, 0.843500,
		0.985024, -0.140686, 0.099673,
		0.172199, 0.831730, -0.527800,
		27.270487, 39.473652, 61.107361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666086, 38.810078, 62.038006>,  <27.149946, 38.891441, 61.476822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666086, 38.810078, 62.038006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.933559, 38.938549, 62.306248>,  <28.094044, 39.015633, 62.467194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.933559, 38.938549, 62.306248>,  <27.666086, 38.810078, 62.038006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933559, 38.938549, 62.306248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710621, -0.541467, -0.449256,
		0.218815, 0.776953, -0.590309,
		0.668684, 0.321182, 0.670600,
		28.134165, 39.034904, 62.507427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236595, 39.141041, 61.710686>,  <27.666086, 38.810078, 62.038006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236595, 39.141041, 61.710686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.382366, 38.994919, 62.053322>,  <28.469830, 38.907246, 62.258904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.382366, 38.994919, 62.053322>,  <28.236595, 39.141041, 61.710686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382366, 38.994919, 62.053322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783182, -0.377411, -0.494153,
		0.503803, 0.850947, 0.148563,
		0.364429, -0.365308, 0.856587,
		28.491695, 38.885326, 62.310299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922771, 39.257244, 61.766819>,  <28.236595, 39.141041, 61.710686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922771, 39.257244, 61.766819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.868883, 38.940140, 62.004604>,  <28.836550, 38.749878, 62.147274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.868883, 38.940140, 62.004604>,  <28.922771, 39.257244, 61.766819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868883, 38.940140, 62.004604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777252, -0.456653, -0.432836,
		0.614597, 0.403733, 0.677695,
		-0.134722, -0.792760, 0.594460,
		28.828466, 38.702312, 62.182941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628052, 39.097309, 61.855511>,  <28.922771, 39.257244, 61.766819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628052, 39.097309, 61.855511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.424023, 38.769077, 61.958649>,  <29.301605, 38.572140, 62.020531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.424023, 38.769077, 61.958649>,  <29.628052, 39.097309, 61.855511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424023, 38.769077, 61.958649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626925, -0.559917, -0.541717,
		0.588890, -0.114667, 0.800037,
		-0.510071, -0.820576, 0.257842,
		29.271002, 38.522903, 62.036003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123873, 38.607109, 61.862350>,  <29.628052, 39.097309, 61.855511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123873, 38.607109, 61.862350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.782568, 38.398514, 61.862530>,  <29.577785, 38.273357, 61.862637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.782568, 38.398514, 61.862530>,  <30.123873, 38.607109, 61.862350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782568, 38.398514, 61.862530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479583, -0.785038, -0.392066,
		0.204812, -0.334318, 0.919937,
		-0.853260, -0.521486, 0.000452,
		29.526590, 38.242069, 61.862667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287331, 37.898720, 62.031746>,  <30.123873, 38.607109, 61.862350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287331, 37.898720, 62.031746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.942749, 37.882778, 61.829239>,  <29.736000, 37.873215, 61.707733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.942749, 37.882778, 61.829239>,  <30.287331, 37.898720, 62.031746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942749, 37.882778, 61.829239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342123, -0.782279, -0.520569,
		-0.375299, -0.621653, 0.687531,
		-0.861454, -0.039851, -0.506270,
		29.684313, 37.870823, 61.677357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984282, 37.315598, 62.245789>,  <30.287331, 37.898720, 62.031746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984282, 37.315598, 62.245789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.866013, 37.433800, 61.882416>,  <29.795052, 37.504723, 61.664391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.866013, 37.433800, 61.882416>,  <29.984282, 37.315598, 62.245789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866013, 37.433800, 61.882416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246933, -0.894992, -0.371502,
		-0.922823, -0.334165, 0.191653,
		-0.295671, 0.295505, -0.908436,
		29.777311, 37.522449, 61.609886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688429, 36.743591, 62.059006>,  <29.984282, 37.315598, 62.245789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688429, 36.743591, 62.059006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.736612, 36.953415, 61.721882>,  <29.765522, 37.079308, 61.519608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.736612, 36.953415, 61.721882>,  <29.688429, 36.743591, 62.059006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736612, 36.953415, 61.721882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278039, -0.832840, -0.478615,
		-0.952987, -0.176679, -0.246172,
		0.120460, 0.524560, -0.842809,
		29.772751, 37.110783, 61.469040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385685, 36.299820, 61.404503>,  <29.688429, 36.743591, 62.059006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385685, 36.299820, 61.404503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.647181, 36.567715, 61.263603>,  <29.804079, 36.728451, 61.179066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.647181, 36.567715, 61.263603>,  <29.385685, 36.299820, 61.404503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647181, 36.567715, 61.263603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301786, -0.657619, -0.690263,
		-0.693938, 0.344950, -0.632029,
		0.653740, 0.669736, -0.352246,
		29.843302, 36.768635, 61.157928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380375, 36.202915, 60.673454>,  <29.385685, 36.299820, 61.404503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380375, 36.202915, 60.673454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.690245, 36.452332, 60.715546>,  <29.876167, 36.601982, 60.740799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.690245, 36.452332, 60.715546>,  <29.380375, 36.202915, 60.673454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690245, 36.452332, 60.715546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409463, -0.367817, -0.834896,
		-0.481889, 0.689859, -0.540257,
		0.774676, 0.623542, 0.105224,
		29.922647, 36.639393, 60.747112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368923, 36.794655, 60.201794>,  <29.380375, 36.202915, 60.673454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368923, 36.794655, 60.201794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.750372, 36.723221, 60.298714>,  <29.979242, 36.680363, 60.356865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.750372, 36.723221, 60.298714>,  <29.368923, 36.794655, 60.201794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750372, 36.723221, 60.298714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158500, -0.386416, -0.908604,
		0.255890, 0.904871, -0.340190,
		0.953624, -0.178583, 0.242302,
		30.036459, 36.669647, 60.371403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727062, 36.976837, 59.616589>,  <29.368923, 36.794655, 60.201794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727062, 36.976837, 59.616589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.002934, 36.761642, 59.810463>,  <30.168457, 36.632526, 59.926788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.002934, 36.761642, 59.810463>,  <29.727062, 36.976837, 59.616589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002934, 36.761642, 59.810463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291085, -0.406906, -0.865851,
		0.663033, 0.738243, -0.124035,
		0.689678, -0.537983, 0.484683,
		30.209837, 36.600246, 59.955868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376394, 37.065182, 59.228024>,  <29.727062, 36.976837, 59.616589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376394, 37.065182, 59.228024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.458027, 36.762463, 59.476410>,  <30.507006, 36.580830, 59.625443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.458027, 36.762463, 59.476410>,  <30.376394, 37.065182, 59.228024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458027, 36.762463, 59.476410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443786, -0.493874, -0.747758,
		0.872585, 0.428180, 0.235067,
		0.204082, -0.756802, 0.620967,
		30.519251, 36.535423, 59.662701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076029, 36.858799, 59.087543>,  <30.376394, 37.065182, 59.228024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076029, 36.858799, 59.087543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.898804, 36.533230, 59.237865>,  <30.792469, 36.337891, 59.328060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.898804, 36.533230, 59.237865>,  <31.076029, 36.858799, 59.087543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898804, 36.533230, 59.237865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217761, -0.504351, -0.835590,
		0.869640, -0.288385, 0.400699,
		-0.443064, -0.813919, 0.375805,
		30.765884, 36.289055, 59.350605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526878, 36.295765, 59.041073>,  <31.076029, 36.858799, 59.087543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526878, 36.295765, 59.041073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.176632, 36.106892, 59.081745>,  <30.966484, 35.993568, 59.106148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.176632, 36.106892, 59.081745>,  <31.526878, 36.295765, 59.041073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176632, 36.106892, 59.081745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242683, -0.612108, -0.752614,
		0.417610, -0.634326, 0.650563,
		-0.875618, -0.472180, 0.101682,
		30.913946, 35.965237, 59.112251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202366, 35.968304, 59.108280>,  <31.526878, 36.295765, 59.041073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202366, 35.968304, 59.108280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.408356, 36.262959, 58.932938>,  <32.531952, 36.439751, 58.827732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.408356, 36.262959, 58.932938>,  <32.202366, 35.968304, 59.108280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408356, 36.262959, 58.932938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381330, 0.654863, 0.652488,
		0.767713, -0.168860, 0.618145,
		0.514979, 0.736641, -0.438356,
		32.562851, 36.483952, 58.801430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476707, 36.207764, 59.781742>,  <32.202366, 35.968304, 59.108280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476707, 36.207764, 59.781742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461258, 36.468834, 59.479084>,  <32.451988, 36.625477, 59.297489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461258, 36.468834, 59.479084>,  <32.476707, 36.207764, 59.781742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461258, 36.468834, 59.479084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204729, 0.735981, 0.645305,
		0.978056, 0.179835, 0.105192,
		-0.038629, 0.652680, -0.756648,
		32.449669, 36.664639, 59.252090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978096, 36.737007, 59.885124>,  <32.476707, 36.207764, 59.781742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978096, 36.737007, 59.885124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.769897, 36.922363, 59.598251>,  <32.644978, 37.033577, 59.426128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.769897, 36.922363, 59.598251>,  <32.978096, 36.737007, 59.885124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769897, 36.922363, 59.598251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221488, 0.737907, 0.637523,
		0.824635, 0.490678, -0.281446,
		-0.520500, 0.463387, -0.717183,
		32.613747, 37.061378, 59.383095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263138, 37.395294, 59.720833>,  <32.978096, 36.737007, 59.885124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263138, 37.395294, 59.720833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.878185, 37.428844, 59.617458>,  <32.647213, 37.448975, 59.555435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.878185, 37.428844, 59.617458>,  <33.263138, 37.395294, 59.720833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878185, 37.428844, 59.617458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080663, 0.820074, 0.566544,
		0.259458, 0.566076, -0.782457,
		-0.962380, 0.083879, -0.258437,
		32.589470, 37.454006, 59.539928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178688, 37.995918, 59.778912>,  <33.263138, 37.395294, 59.720833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178688, 37.995918, 59.778912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.793732, 37.887295, 59.781719>,  <32.562756, 37.822121, 59.783405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.793732, 37.887295, 59.781719>,  <33.178688, 37.995918, 59.778912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793732, 37.887295, 59.781719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190412, 0.692789, 0.695548,
		-0.193748, 0.668055, -0.718446,
		-0.962395, -0.271562, 0.007021,
		32.505013, 37.805828, 59.783825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728828, 38.653568, 59.693951>,  <33.178688, 37.995918, 59.778912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728828, 38.653568, 59.693951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.487690, 38.373260, 59.846531>,  <32.343006, 38.205078, 59.938080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.487690, 38.373260, 59.846531>,  <32.728828, 38.653568, 59.693951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487690, 38.373260, 59.846531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253168, 0.621396, 0.741467,
		-0.756628, 0.350417, -0.552016,
		-0.602843, -0.700767, 0.381451,
		32.306835, 38.163029, 59.960968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134384, 39.001488, 59.918098>,  <32.728828, 38.653568, 59.693951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134384, 39.001488, 59.918098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.066315, 38.644161, 60.084484>,  <32.025471, 38.429768, 60.184315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.066315, 38.644161, 60.084484>,  <32.134384, 39.001488, 59.918098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066315, 38.644161, 60.084484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416901, 0.447754, 0.791018,
		-0.892879, -0.038804, -0.448622,
		-0.170178, -0.893314, 0.415967,
		32.015263, 38.376167, 60.209274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576151, 39.345539, 59.497025>,  <32.134384, 39.001488, 59.918098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576151, 39.345539, 59.497025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680618, 39.727402, 59.439857>,  <31.743299, 39.956520, 59.405560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680618, 39.727402, 59.439857>,  <31.576151, 39.345539, 59.497025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680618, 39.727402, 59.439857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504757, -0.261263, -0.822777,
		-0.822806, 0.142748, -0.550103,
		0.261171, 0.954654, -0.142916,
		31.758970, 40.013798, 59.396984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511017, 39.450443, 58.763493>,  <31.576151, 39.345539, 59.497025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511017, 39.450443, 58.763493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.723360, 39.779819, 58.843624>,  <31.850765, 39.977448, 58.891705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.723360, 39.779819, 58.843624>,  <31.511017, 39.450443, 58.763493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723360, 39.779819, 58.843624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496981, -0.111016, -0.860631,
		-0.686440, 0.556433, -0.468169,
		0.530857, 0.823443, 0.200331,
		31.882618, 40.026852, 58.903725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504379, 39.931423, 58.103634>,  <31.511017, 39.450443, 58.763493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504379, 39.931423, 58.103634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.830072, 39.996189, 58.326633>,  <32.025490, 40.035049, 58.460434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.830072, 39.996189, 58.326633>,  <31.504379, 39.931423, 58.103634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830072, 39.996189, 58.326633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579311, -0.289001, -0.762154,
		0.037715, 0.943537, -0.329112,
		0.814234, 0.161913, 0.557501,
		32.074341, 40.044762, 58.493885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888119, 40.393330, 57.723972>,  <31.504379, 39.931423, 58.103634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888119, 40.393330, 57.723972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.137356, 40.189228, 57.961086>,  <32.286900, 40.066769, 58.103355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.137356, 40.189228, 57.961086>,  <31.888119, 40.393330, 57.723972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137356, 40.189228, 57.961086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601768, -0.171392, -0.780064,
		0.499627, 0.842774, 0.200260,
		0.623095, -0.510251, 0.592787,
		32.324284, 40.036152, 58.138924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543171, 40.539886, 57.455944>,  <31.888119, 40.393330, 57.723972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543171, 40.539886, 57.455944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.603462, 40.235718, 57.708622>,  <32.639637, 40.053215, 57.860229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.603462, 40.235718, 57.708622>,  <32.543171, 40.539886, 57.455944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603462, 40.235718, 57.708622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540174, -0.471810, -0.696855,
		0.827945, 0.446259, 0.339646,
		0.150730, -0.760426, 0.631691,
		32.648682, 40.007591, 57.898129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246742, 40.481358, 57.489269>,  <32.543171, 40.539886, 57.455944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246742, 40.481358, 57.489269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.087170, 40.126549, 57.582268>,  <32.991428, 39.913666, 57.638065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.087170, 40.126549, 57.582268>,  <33.246742, 40.481358, 57.489269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087170, 40.126549, 57.582268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535021, -0.431069, -0.726589,
		0.744720, -0.165466, 0.646539,
		-0.398929, -0.887018, 0.232498,
		32.967491, 39.860443, 57.652016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773979, 40.004559, 57.458706>,  <33.246742, 40.481358, 57.489269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773979, 40.004559, 57.458706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.453907, 39.764862, 57.448814>,  <33.261864, 39.621044, 57.442879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.453907, 39.764862, 57.448814>,  <33.773979, 40.004559, 57.458706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453907, 39.764862, 57.448814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397234, -0.498644, -0.770428,
		0.449345, -0.626307, 0.637047,
		-0.800184, -0.599244, -0.024727,
		33.213852, 39.585091, 57.441395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.165926, 42.311337, 60.596039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363150, 41.966370, 60.641869>,  <29.481483, 41.759388, 60.669365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363150, 41.966370, 60.641869>,  <29.165926, 42.311337, 60.596039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363150, 41.966370, 60.641869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670254, 0.460514, 0.581968,
		-0.554663, -0.210150, 0.805100,
		0.493060, -0.862417, 0.114576,
		29.511068, 41.707645, 60.676243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183992, 41.546825, 60.325859>,  <29.165926, 42.311337, 60.596039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183992, 41.546825, 60.325859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860586, 41.449989, 60.111313>,  <28.666542, 41.391888, 59.982586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860586, 41.449989, 60.111313>,  <29.183992, 41.546825, 60.325859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860586, 41.449989, 60.111313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377864, 0.485157, -0.788570,
		0.451125, -0.840248, -0.300783,
		-0.808521, -0.242089, -0.536366,
		28.618031, 41.377361, 59.950401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369682, 41.307285, 59.654758>,  <29.183992, 41.546825, 60.325859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369682, 41.307285, 59.654758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990665, 41.428062, 59.612816>,  <28.763256, 41.500530, 59.587650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990665, 41.428062, 59.612816>,  <29.369682, 41.307285, 59.654758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990665, 41.428062, 59.612816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216436, 0.364697, -0.905622,
		-0.235206, -0.880809, -0.410918,
		-0.947541, 0.301945, -0.104860,
		28.706404, 41.518646, 59.581356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167675, 41.029373, 58.920330>,  <29.369682, 41.307285, 59.654758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167675, 41.029373, 58.920330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900246, 41.306404, 59.028660>,  <28.739788, 41.472622, 59.093658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900246, 41.306404, 59.028660>,  <29.167675, 41.029373, 58.920330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900246, 41.306404, 59.028660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085484, 0.290200, -0.953140,
		-0.738715, -0.660397, -0.134816,
		-0.668575, 0.692574, 0.270829,
		28.699673, 41.514175, 59.109909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586773, 40.877773, 58.480022>,  <29.167675, 41.029373, 58.920330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586773, 40.877773, 58.480022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551378, 41.257496, 58.600681>,  <28.530142, 41.485329, 58.673077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551378, 41.257496, 58.600681>,  <28.586773, 40.877773, 58.480022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551378, 41.257496, 58.600681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128509, 0.289427, -0.948534,
		-0.987753, -0.122698, 0.096384,
		-0.088487, 0.949304, 0.301650,
		28.524832, 41.542286, 58.691177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868446, 41.064392, 58.149841>,  <28.586773, 40.877773, 58.480022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868446, 41.064392, 58.149841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076403, 41.389332, 58.255524>,  <28.201176, 41.584297, 58.318932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076403, 41.389332, 58.255524>,  <27.868446, 41.064392, 58.149841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076403, 41.389332, 58.255524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069869, 0.348691, -0.934630,
		-0.851371, 0.467445, 0.238039,
		0.519890, 0.812349, 0.264205,
		28.232370, 41.633038, 58.334785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485504, 41.618439, 58.038319>,  <27.868446, 41.064392, 58.149841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485504, 41.618439, 58.038319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855268, 41.769836, 58.019512>,  <28.077127, 41.860676, 58.008228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855268, 41.769836, 58.019512>,  <27.485504, 41.618439, 58.038319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855268, 41.769836, 58.019512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081203, 0.074866, -0.993882,
		-0.372656, 0.922572, 0.099942,
		0.924410, 0.378491, -0.047016,
		28.132591, 41.883385, 58.005405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329689, 42.052402, 57.480518>,  <27.485504, 41.618439, 58.038319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329689, 42.052402, 57.480518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715776, 41.955479, 57.519787>,  <27.947430, 41.897324, 57.543346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715776, 41.955479, 57.519787>,  <27.329689, 42.052402, 57.480518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715776, 41.955479, 57.519787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100151, -0.004156, -0.994964,
		0.241495, 0.970191, 0.020256,
		0.965220, -0.242307, 0.098169,
		28.005342, 41.882786, 57.549236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745745, 42.575665, 57.038048>,  <27.329689, 42.052402, 57.480518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745745, 42.575665, 57.038048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992947, 42.266499, 57.095562>,  <28.141268, 42.080997, 57.130070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992947, 42.266499, 57.095562>,  <27.745745, 42.575665, 57.038048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992947, 42.266499, 57.095562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131175, -0.078957, -0.988210,
		0.775155, 0.629578, 0.052591,
		0.618003, -0.772915, 0.143788,
		28.178347, 42.034626, 57.138699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343929, 42.746944, 56.686436>,  <27.745745, 42.575665, 57.038048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343929, 42.746944, 56.686436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348093, 42.348953, 56.726265>,  <28.350592, 42.110161, 56.750160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348093, 42.348953, 56.726265>,  <28.343929, 42.746944, 56.686436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348093, 42.348953, 56.726265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141679, -0.097102, -0.985139,
		0.989858, 0.024359, 0.139957,
		0.010407, -0.994976, 0.099568,
		28.351215, 42.050461, 56.756134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626852, 42.505436, 56.055714>,  <28.343929, 42.746944, 56.686436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626852, 42.505436, 56.055714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544794, 42.132046, 56.173389>,  <28.495560, 41.908012, 56.243996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544794, 42.132046, 56.173389>,  <28.626852, 42.505436, 56.055714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544794, 42.132046, 56.173389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239547, -0.339325, -0.909657,
		0.948964, -0.116141, 0.293221,
		-0.205146, -0.933472, 0.294186,
		28.483250, 41.852005, 56.261646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265980, 42.096775, 55.870453>,  <28.626852, 42.505436, 56.055714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265980, 42.096775, 55.870453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940277, 41.864697, 55.878044>,  <28.744856, 41.725449, 55.882599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940277, 41.864697, 55.878044>,  <29.265980, 42.096775, 55.870453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940277, 41.864697, 55.878044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260530, -0.394460, -0.881207,
		0.518761, -0.712582, 0.472349,
		-0.814255, -0.580197, 0.018982,
		28.696001, 41.690636, 55.883739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915920, 42.437977, 55.919163>,  <29.265980, 42.096775, 55.870453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915920, 42.437977, 55.919163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304434, 42.427837, 56.013790>,  <30.537542, 42.421753, 56.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304434, 42.427837, 56.013790>,  <29.915920, 42.437977, 55.919163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304434, 42.427837, 56.013790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220590, 0.276560, 0.935337,
		-0.089136, -0.960662, 0.263026,
		0.971285, -0.025351, 0.236564,
		30.595819, 42.420231, 56.084759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840437, 42.654243, 56.592770>,  <29.915920, 42.437977, 55.919163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840437, 42.654243, 56.592770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237343, 42.625103, 56.552563>,  <30.475487, 42.607620, 56.528439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237343, 42.625103, 56.552563>,  <29.840437, 42.654243, 56.592770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237343, 42.625103, 56.552563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118795, 0.322172, 0.939198,
		-0.036037, -0.943874, 0.328335,
		0.992265, -0.072851, -0.100517,
		30.535023, 42.603249, 56.522408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990036, 42.204983, 57.149834>,  <29.840437, 42.654243, 56.592770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990036, 42.204983, 57.149834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288010, 42.449413, 57.042755>,  <30.466793, 42.596069, 56.978508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288010, 42.449413, 57.042755>,  <29.990036, 42.204983, 57.149834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288010, 42.449413, 57.042755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140598, 0.248455, 0.958385,
		0.652154, -0.751572, 0.099167,
		0.744934, 0.611072, -0.267701,
		30.511490, 42.632736, 56.962444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627729, 42.032417, 57.580677>,  <29.990036, 42.204983, 57.149834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627729, 42.032417, 57.580677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667585, 42.404160, 57.438480>,  <30.691500, 42.627205, 57.353161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667585, 42.404160, 57.438480>,  <30.627729, 42.032417, 57.580677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667585, 42.404160, 57.438480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237554, 0.324719, 0.915492,
		0.966250, -0.175670, -0.188416,
		0.099642, 0.929354, -0.355491,
		30.697477, 42.682964, 57.331833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114681, 42.237915, 58.033600>,  <30.627729, 42.032417, 57.580677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114681, 42.237915, 58.033600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951696, 42.562103, 57.865265>,  <30.853905, 42.756618, 57.764263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951696, 42.562103, 57.865265>,  <31.114681, 42.237915, 58.033600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951696, 42.562103, 57.865265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188316, 0.525494, 0.829694,
		0.893595, 0.258818, -0.366744,
		-0.407462, 0.810475, -0.420840,
		30.829458, 42.805244, 57.739014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605337, 42.657452, 58.156067>,  <31.114681, 42.237915, 58.033600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605337, 42.657452, 58.156067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276697, 42.880054, 58.106628>,  <31.079514, 43.013615, 58.076965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276697, 42.880054, 58.106628>,  <31.605337, 42.657452, 58.156067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276697, 42.880054, 58.106628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229774, 0.521704, 0.821602,
		0.521704, 0.646630, -0.556502,
		-0.821602, 0.556502, -0.123596,
		31.030216, 43.047005, 58.069550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870852, 43.283646, 58.400299>,  <31.605337, 42.657452, 58.156067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870852, 43.283646, 58.400299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471636, 43.302261, 58.383553>,  <31.232107, 43.313431, 58.373505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471636, 43.302261, 58.383553>,  <31.870852, 43.283646, 58.400299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471636, 43.302261, 58.383553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009885, 0.543284, 0.839491,
		0.061817, 0.838258, -0.541759,
		-0.998038, 0.046539, -0.041870,
		31.172224, 43.316223, 58.370991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693823, 43.940582, 58.431870>,  <31.870852, 43.283646, 58.400299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693823, 43.940582, 58.431870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369963, 43.744751, 58.561344>,  <31.175646, 43.627251, 58.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369963, 43.744751, 58.561344>,  <31.693823, 43.940582, 58.431870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369963, 43.744751, 58.561344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114407, 0.409272, 0.905211,
		-0.575651, 0.769939, -0.275357,
		-0.809653, -0.489583, 0.323684,
		31.127068, 43.597878, 58.658451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371380, 44.404163, 58.977592>,  <31.693823, 43.940582, 58.431870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371380, 44.404163, 58.977592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206642, 44.049809, 59.063000>,  <31.107800, 43.837196, 59.114246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206642, 44.049809, 59.063000>,  <31.371380, 44.404163, 58.977592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206642, 44.049809, 59.063000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179127, 0.308448, 0.934223,
		-0.893475, 0.346507, -0.285718,
		-0.411845, -0.885885, 0.213522,
		31.083088, 43.784042, 59.127056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714191, 44.545780, 59.342113>,  <31.371380, 44.404163, 58.977592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714191, 44.545780, 59.342113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798313, 44.167862, 59.442612>,  <30.848787, 43.941109, 59.502911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798313, 44.167862, 59.442612>,  <30.714191, 44.545780, 59.342113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798313, 44.167862, 59.442612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203759, 0.208993, 0.956454,
		-0.956166, -0.252342, -0.148559,
		0.210305, -0.944799, 0.251249,
		30.861404, 43.884422, 59.517986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279900, 44.405369, 59.876465>,  <30.714191, 44.545780, 59.342113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279900, 44.405369, 59.876465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553516, 44.114750, 59.902451>,  <30.717686, 43.940380, 59.918041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553516, 44.114750, 59.902451>,  <30.279900, 44.405369, 59.876465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553516, 44.114750, 59.902451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206567, -0.107526, 0.972506,
		-0.699583, -0.678655, -0.223632,
		0.684042, -0.726544, 0.064964,
		30.758730, 43.896786, 59.921940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001705, 43.874500, 60.271797>,  <30.279900, 44.405369, 59.876465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001705, 43.874500, 60.271797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395222, 43.807827, 60.298244>,  <30.631332, 43.767822, 60.314114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395222, 43.807827, 60.298244>,  <30.001705, 43.874500, 60.271797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395222, 43.807827, 60.298244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061046, 0.035397, 0.997507,
		-0.168612, -0.985374, 0.024648,
		0.983790, -0.166687, 0.066121,
		30.690359, 43.757820, 60.318081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022778, 43.465645, 60.805943>,  <30.001705, 43.874500, 60.271797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022778, 43.465645, 60.805943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401075, 43.593834, 60.784534>,  <30.628054, 43.670750, 60.771690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401075, 43.593834, 60.784534>,  <30.022778, 43.465645, 60.805943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401075, 43.593834, 60.784534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033020, 0.069055, 0.997066,
		0.323233, -0.944736, 0.054726,
		0.945743, 0.320478, -0.053516,
		30.684799, 43.689976, 60.768478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354097, 43.138210, 61.290462>,  <30.022778, 43.465645, 60.805943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354097, 43.138210, 61.290462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566427, 43.465050, 61.200500>,  <30.693825, 43.661152, 61.146523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566427, 43.465050, 61.200500>,  <30.354097, 43.138210, 61.290462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566427, 43.465050, 61.200500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161211, 0.357886, 0.919744,
		0.832007, -0.451966, 0.321700,
		0.530825, 0.817095, -0.224902,
		30.725676, 43.710178, 61.133030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446344, 42.629280, 60.676373>,  <30.354097, 43.138210, 61.290462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446344, 42.629280, 60.676373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556370, 42.335159, 60.924137>,  <30.622385, 42.158688, 61.072796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556370, 42.335159, 60.924137>,  <30.446344, 42.629280, 60.676373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556370, 42.335159, 60.924137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663755, -0.320845, -0.675639,
		0.695535, 0.596979, 0.399810,
		0.275065, -0.735306, 0.619407,
		30.638889, 42.114567, 61.109959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019697, 42.446758, 60.422859>,  <30.446344, 42.629280, 60.676373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019697, 42.446758, 60.422859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962608, 42.128078, 60.657772>,  <30.928356, 41.936871, 60.798721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962608, 42.128078, 60.657772>,  <31.019697, 42.446758, 60.422859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962608, 42.128078, 60.657772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379208, -0.592094, -0.711074,
		0.914238, 0.121217, 0.386619,
		-0.142720, -0.796700, 0.587281,
		30.919792, 41.889069, 60.833958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695366, 42.052486, 60.413692>,  <31.019697, 42.446758, 60.422859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695366, 42.052486, 60.413692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399811, 41.802811, 60.515228>,  <31.222479, 41.653004, 60.576149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399811, 41.802811, 60.515228>,  <31.695366, 42.052486, 60.413692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399811, 41.802811, 60.515228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352986, -0.679432, -0.643252,
		0.573977, -0.385690, 0.722353,
		-0.738885, -0.624192, 0.253835,
		31.178144, 41.615555, 60.591377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073624, 41.487686, 60.637897>,  <31.695366, 42.052486, 60.413692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073624, 41.487686, 60.637897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703199, 41.369164, 60.544422>,  <31.480944, 41.298050, 60.488335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703199, 41.369164, 60.544422>,  <32.073624, 41.487686, 60.637897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703199, 41.369164, 60.544422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377324, -0.736778, -0.561057,
		-0.005936, -0.607752, 0.794105,
		-0.926062, -0.296304, -0.233693,
		31.425381, 41.280273, 60.474316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015110, 40.737160, 60.753159>,  <32.073624, 41.487686, 60.637897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015110, 40.737160, 60.753159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710751, 40.823742, 60.508476>,  <31.528135, 40.875690, 60.361668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710751, 40.823742, 60.508476>,  <32.015110, 40.737160, 60.753159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710751, 40.823742, 60.508476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289630, -0.730305, -0.618683,
		-0.580648, -0.647923, 0.492996,
		-0.760896, 0.216450, -0.611708,
		31.482483, 40.888676, 60.324963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847847, 40.105591, 60.465023>,  <32.015110, 40.737160, 60.753159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847847, 40.105591, 60.465023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662249, 40.354424, 60.212765>,  <31.550890, 40.503723, 60.061409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662249, 40.354424, 60.212765>,  <31.847847, 40.105591, 60.465023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662249, 40.354424, 60.212765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136843, -0.653042, -0.744856,
		-0.875205, -0.431909, 0.217879,
		-0.463994, 0.622087, -0.630649,
		31.523050, 40.541050, 60.023571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396807, 39.673061, 60.179459>,  <31.847847, 40.105591, 60.465023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396807, 39.673061, 60.179459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494799, 39.982964, 59.946312>,  <31.553593, 40.168907, 59.806423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494799, 39.982964, 59.946312>,  <31.396807, 39.673061, 60.179459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494799, 39.982964, 59.946312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296710, -0.632253, -0.715695,
		-0.923011, 0.002387, -0.384767,
		0.244978, 0.774759, -0.582868,
		31.568293, 40.215389, 59.771450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330505, 38.961185, 60.282845>,  <31.396807, 39.673061, 60.179459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330505, 38.961185, 60.282845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560316, 38.679783, 60.450176>,  <31.698202, 38.510941, 60.550575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560316, 38.679783, 60.450176>,  <31.330505, 38.961185, 60.282845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560316, 38.679783, 60.450176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379027, 0.224313, 0.897788,
		-0.725437, -0.674359, -0.137775,
		0.574526, -0.703508, 0.418325,
		31.732674, 38.468731, 60.575672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904634, 38.446236, 60.790596>,  <31.330505, 38.961185, 60.282845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904634, 38.446236, 60.790596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287964, 38.459129, 60.904140>,  <31.517962, 38.466866, 60.972267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287964, 38.459129, 60.904140>,  <30.904634, 38.446236, 60.790596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287964, 38.459129, 60.904140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267474, 0.450300, 0.851873,
		-0.100367, -0.892295, 0.440154,
		0.958324, 0.032230, 0.283861,
		31.575460, 38.468800, 60.989300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977131, 38.028160, 61.480755>,  <30.904634, 38.446236, 60.790596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977131, 38.028160, 61.480755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294735, 38.270351, 61.459045>,  <31.485298, 38.415665, 61.446018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294735, 38.270351, 61.459045>,  <30.977131, 38.028160, 61.480755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294735, 38.270351, 61.459045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175275, 0.313506, 0.933270,
		0.582089, -0.731513, 0.355052,
		0.794010, 0.605477, -0.054273,
		31.532938, 38.451996, 61.442764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350391, 37.830181, 62.073078>,  <30.977131, 38.028160, 61.480755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350391, 37.830181, 62.073078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536606, 38.176380, 61.999111>,  <31.648335, 38.384098, 61.954731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536606, 38.176380, 61.999111>,  <31.350391, 37.830181, 62.073078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536606, 38.176380, 61.999111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008975, 0.213551, 0.976890,
		0.884983, -0.453118, 0.107184,
		0.465536, 0.865494, -0.184922,
		31.676266, 38.436028, 61.943634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807005, 37.962162, 62.734158>,  <31.350391, 37.830181, 62.073078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807005, 37.962162, 62.734158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802427, 38.315975, 62.547619>,  <31.799681, 38.528263, 62.435696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802427, 38.315975, 62.547619>,  <31.807005, 37.962162, 62.734158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802427, 38.315975, 62.547619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002384, 0.466351, 0.884597,
		0.999932, 0.011235, -0.003228,
		-0.011443, 0.884529, -0.466346,
		31.798994, 38.581333, 62.407715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122822, 38.366959, 63.172100>,  <31.807005, 37.962162, 62.734158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122822, 38.366959, 63.172100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934746, 38.624805, 62.930973>,  <31.821899, 38.779514, 62.786297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934746, 38.624805, 62.930973>,  <32.122822, 38.366959, 63.172100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934746, 38.624805, 62.930973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064914, 0.655923, 0.752032,
		0.880174, 0.392731, -0.266564,
		-0.470191, 0.644615, -0.602820,
		31.793688, 38.818192, 62.750126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482517, 39.062698, 63.195492>,  <32.122822, 38.366959, 63.172100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482517, 39.062698, 63.195492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101543, 39.113838, 63.084839>,  <31.872959, 39.144524, 63.018448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101543, 39.113838, 63.084839>,  <32.482517, 39.062698, 63.195492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101543, 39.113838, 63.084839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168331, 0.535987, 0.827274,
		0.254036, 0.834489, -0.488971,
		-0.952434, 0.127848, -0.276630,
		31.815813, 39.152191, 63.001850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360825, 39.695541, 63.293598>,  <32.482517, 39.062698, 63.195492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360825, 39.695541, 63.293598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981215, 39.569881, 63.283314>,  <31.753448, 39.494484, 63.277145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981215, 39.569881, 63.283314>,  <32.360825, 39.695541, 63.293598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981215, 39.569881, 63.283314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241966, 0.673828, 0.698147,
		-0.202000, 0.668779, -0.715493,
		-0.949025, -0.314151, -0.025708,
		31.696507, 39.475636, 63.275600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916491, 40.276001, 63.239620>,  <32.360825, 39.695541, 63.293598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916491, 40.276001, 63.239620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685593, 39.995422, 63.406834>,  <31.547054, 39.827076, 63.507164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685593, 39.995422, 63.406834>,  <31.916491, 40.276001, 63.239620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685593, 39.995422, 63.406834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191307, 0.613866, 0.765879,
		-0.793844, 0.362128, -0.488545,
		-0.577247, -0.701450, 0.418036,
		31.512419, 39.784988, 63.532246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.066936, 34.957462, 47.728512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117077, 35.352985, 47.760853>,  <37.147163, 35.590302, 47.780258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117077, 35.352985, 47.760853>,  <37.066936, 34.957462, 47.728512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117077, 35.352985, 47.760853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897468, 0.078282, 0.434078,
		0.422892, -0.126977, 0.897240,
		0.125355, 0.988812, 0.080853,
		37.154682, 35.649628, 47.785110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973667, 35.089539, 48.504585>,  <37.066936, 34.957462, 47.728512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973667, 35.089539, 48.504585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899284, 35.419777, 48.291489>,  <36.854656, 35.617920, 48.163631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899284, 35.419777, 48.291489>,  <36.973667, 35.089539, 48.504585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899284, 35.419777, 48.291489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940273, 0.007824, 0.340332,
		0.285145, 0.564209, 0.774830,
		-0.185956, 0.825595, -0.532741,
		36.843498, 35.667454, 48.131668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758591, 35.648972, 48.980755>,  <36.973667, 35.089539, 48.504585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758591, 35.648972, 48.980755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626820, 35.754154, 48.618023>,  <36.547756, 35.817265, 48.400383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626820, 35.754154, 48.618023>,  <36.758591, 35.648972, 48.980755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626820, 35.754154, 48.618023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899842, 0.203426, 0.385878,
		0.285941, 0.943119, 0.169604,
		-0.329427, 0.262955, -0.906826,
		36.527992, 35.833042, 48.345974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233631, 36.061283, 49.141682>,  <36.758591, 35.648972, 48.980755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233631, 36.061283, 49.141682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143826, 36.002605, 48.756336>,  <36.089943, 35.967400, 48.525127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143826, 36.002605, 48.756336>,  <36.233631, 36.061283, 49.141682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143826, 36.002605, 48.756336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939069, 0.296621, 0.173682,
		0.260277, 0.943662, -0.204351,
		-0.224512, -0.146694, -0.963367,
		36.076473, 35.958599, 48.467327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019402, 36.629478, 48.905052>,  <36.233631, 36.061283, 49.141682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019402, 36.629478, 48.905052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856171, 36.342846, 48.678783>,  <35.758232, 36.170868, 48.543022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856171, 36.342846, 48.678783>,  <36.019402, 36.629478, 48.905052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856171, 36.342846, 48.678783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909304, 0.374328, 0.181784,
		0.081485, 0.588552, -0.804343,
		-0.408077, -0.716579, -0.565674,
		35.733749, 36.127872, 48.509083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381435, 36.917877, 48.635117>,  <36.019402, 36.629478, 48.905052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381435, 36.917877, 48.635117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324955, 36.535828, 48.530968>,  <35.291069, 36.306599, 48.468479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324955, 36.535828, 48.530968>,  <35.381435, 36.917877, 48.635117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324955, 36.535828, 48.530968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981987, 0.101769, 0.159202,
		-0.125560, 0.278162, -0.952292,
		-0.141198, -0.955127, -0.260373,
		35.282597, 36.249290, 48.452854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844212, 36.860916, 48.095116>,  <35.381435, 36.917877, 48.635117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844212, 36.860916, 48.095116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894524, 36.543896, 48.333790>,  <34.924709, 36.353683, 48.476994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894524, 36.543896, 48.333790>,  <34.844212, 36.860916, 48.095116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894524, 36.543896, 48.333790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964193, 0.043888, 0.261545,
		-0.233476, -0.608218, -0.758656,
		0.125781, -0.792555, 0.596686,
		34.932259, 36.306129, 48.512794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155277, 36.729301, 48.227295>,  <34.844212, 36.860916, 48.095116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155277, 36.729301, 48.227295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306435, 36.421410, 48.433090>,  <34.397129, 36.236675, 48.556568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306435, 36.421410, 48.433090>,  <34.155277, 36.729301, 48.227295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306435, 36.421410, 48.433090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868562, -0.102304, 0.484906,
		-0.320613, -0.630114, -0.707223,
		0.377898, -0.769734, 0.514493,
		34.419804, 36.190491, 48.587437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736118, 36.167141, 48.042068>,  <34.155277, 36.729301, 48.227295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736118, 36.167141, 48.042068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.906715, 36.103542, 48.398232>,  <34.009071, 36.065384, 48.611931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.906715, 36.103542, 48.398232>,  <33.736118, 36.167141, 48.042068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906715, 36.103542, 48.398232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904138, -0.102518, 0.414759,
		0.025340, -0.981943, -0.187474,
		0.426489, -0.158992, 0.890409,
		34.034660, 36.055843, 48.665356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403606, 35.651539, 48.372669>,  <33.736118, 36.167141, 48.042068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403606, 35.651539, 48.372669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596512, 35.802444, 48.688919>,  <33.712254, 35.892990, 48.878670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596512, 35.802444, 48.688919>,  <33.403606, 35.651539, 48.372669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596512, 35.802444, 48.688919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787990, -0.207507, 0.579666,
		0.382752, -0.902557, 0.197212,
		0.482259, 0.377270, 0.790629,
		33.741188, 35.915627, 48.926109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161224, 35.211742, 48.983490>,  <33.403606, 35.651539, 48.372669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161224, 35.211742, 48.983490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300068, 35.536476, 49.171291>,  <33.383373, 35.731316, 49.283974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300068, 35.536476, 49.171291>,  <33.161224, 35.211742, 48.983490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300068, 35.536476, 49.171291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683750, -0.123577, 0.719176,
		0.641875, -0.570656, 0.512200,
		0.347106, 0.811838, 0.469507,
		33.404202, 35.780029, 49.312145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396442, 35.001389, 49.655296>,  <33.161224, 35.211742, 48.983490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396442, 35.001389, 49.655296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.299923, 35.388546, 49.683464>,  <33.242012, 35.620842, 49.700363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.299923, 35.388546, 49.683464>,  <33.396442, 35.001389, 49.655296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299923, 35.388546, 49.683464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674397, -0.219422, 0.705012,
		0.697828, 0.122627, 0.705690,
		-0.241298, 0.967893, 0.070419,
		33.227535, 35.678913, 49.704590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336159, 35.196663, 50.384796>,  <33.396442, 35.001389, 49.655296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336159, 35.196663, 50.384796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.165337, 35.513321, 50.210018>,  <33.062843, 35.703316, 50.105152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.165337, 35.513321, 50.210018>,  <33.336159, 35.196663, 50.384796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165337, 35.513321, 50.210018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786646, -0.086983, 0.611246,
		0.445881, 0.604761, 0.659890,
		-0.427057, 0.791643, -0.436949,
		33.037220, 35.750813, 50.078934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080662, 35.655006, 50.933483>,  <33.336159, 35.196663, 50.384796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080662, 35.655006, 50.933483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.860809, 35.712566, 50.604317>,  <32.728897, 35.747101, 50.406815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.860809, 35.712566, 50.604317>,  <33.080662, 35.655006, 50.933483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860809, 35.712566, 50.604317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834889, -0.129306, 0.535015,
		-0.029419, 0.981108, 0.191211,
		-0.549632, 0.143901, -0.822920,
		32.695919, 35.755737, 50.357441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608006, 36.213181, 51.071560>,  <33.080662, 35.655006, 50.933483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608006, 36.213181, 51.071560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.453762, 35.965160, 50.798256>,  <32.361214, 35.816349, 50.634274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.453762, 35.965160, 50.798256>,  <32.608006, 36.213181, 51.071560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453762, 35.965160, 50.798256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839328, -0.071814, 0.538862,
		-0.383187, 0.781271, -0.492731,
		-0.385612, -0.620047, -0.683260,
		32.338078, 35.779144, 50.593277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900797, 36.506329, 50.937553>,  <32.608006, 36.213181, 51.071560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900797, 36.506329, 50.937553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.907324, 36.127171, 50.810287>,  <31.911240, 35.899677, 50.733929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.907324, 36.127171, 50.810287>,  <31.900797, 36.506329, 50.937553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907324, 36.127171, 50.810287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937538, -0.125098, 0.324613,
		-0.347501, 0.292998, -0.890727,
		0.016317, -0.947894, -0.318169,
		31.912220, 35.842804, 50.714836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376945, 36.436672, 50.435539>,  <31.900797, 36.506329, 50.937553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376945, 36.436672, 50.435539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.446213, 36.085274, 50.613644>,  <31.487772, 35.874435, 50.720505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.446213, 36.085274, 50.613644>,  <31.376945, 36.436672, 50.435539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446213, 36.085274, 50.613644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983148, -0.127286, 0.131222,
		-0.058602, -0.460480, -0.885733,
		0.173167, -0.878496, 0.445261,
		31.498163, 35.821724, 50.747223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826799, 36.012733, 50.151833>,  <31.376945, 36.436672, 50.435539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826799, 36.012733, 50.151833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.943619, 35.790440, 50.463184>,  <31.013710, 35.657063, 50.649994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.943619, 35.790440, 50.463184>,  <30.826799, 36.012733, 50.151833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943619, 35.790440, 50.463184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944993, -0.293019, 0.145357,
		0.147299, -0.778010, -0.610740,
		0.292048, -0.555734, 0.778375,
		31.031233, 35.623718, 50.696697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385176, 35.516243, 50.073601>,  <30.826799, 36.012733, 50.151833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385176, 35.516243, 50.073601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.525223, 35.466507, 50.444969>,  <30.609251, 35.436665, 50.667789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.525223, 35.466507, 50.444969>,  <30.385176, 35.516243, 50.073601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525223, 35.466507, 50.444969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895898, -0.333811, 0.293150,
		0.273467, -0.934404, -0.228265,
		0.350118, -0.124336, 0.928417,
		30.630259, 35.429207, 50.723495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155029, 34.878929, 50.215115>,  <30.385176, 35.516243, 50.073601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155029, 34.878929, 50.215115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.221470, 35.068142, 50.561214>,  <30.261333, 35.181671, 50.768875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.221470, 35.068142, 50.561214>,  <30.155029, 34.878929, 50.215115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221470, 35.068142, 50.561214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795330, -0.454465, 0.401137,
		0.582975, -0.754785, 0.300731,
		0.166101, 0.473033, 0.865245,
		30.271299, 35.210052, 50.820789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127411, 34.310768, 50.695484>,  <30.155029, 34.878929, 50.215115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127411, 34.310768, 50.695484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.047873, 34.657249, 50.878853>,  <30.000149, 34.865139, 50.988873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.047873, 34.657249, 50.878853>,  <30.127411, 34.310768, 50.695484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047873, 34.657249, 50.878853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793619, -0.416765, 0.443257,
		0.575004, -0.275670, 0.770309,
		-0.198845, 0.866206, 0.458418,
		29.988218, 34.917110, 51.016380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685528, 34.081364, 51.205448>,  <30.127411, 34.310768, 50.695484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685528, 34.081364, 51.205448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.640182, 34.478191, 51.227180>,  <29.612974, 34.716286, 51.240219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.640182, 34.478191, 51.227180>,  <29.685528, 34.081364, 51.205448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640182, 34.478191, 51.227180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900974, -0.125696, 0.415267,
		0.418802, -0.001871, 0.908076,
		-0.113364, 0.992067, 0.054328,
		29.606173, 34.775810, 51.243481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710852, 34.326050, 51.981277>,  <29.685528, 34.081364, 51.205448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710852, 34.326050, 51.981277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.514599, 34.563992, 51.726585>,  <29.396847, 34.706757, 51.573769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.514599, 34.563992, 51.726585>,  <29.710852, 34.326050, 51.981277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514599, 34.563992, 51.726585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856998, -0.197270, 0.476066,
		0.157584, 0.779249, 0.606579,
		-0.490633, 0.594858, -0.636729,
		29.367409, 34.742451, 51.535568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136929, 34.471584, 52.356316>,  <29.710852, 34.326050, 51.981277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136929, 34.471584, 52.356316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.031481, 34.560505, 51.980850>,  <28.968212, 34.613857, 51.755573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.031481, 34.560505, 51.980850>,  <29.136929, 34.471584, 52.356316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031481, 34.560505, 51.980850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947763, -0.240847, 0.209137,
		-0.179581, 0.944761, 0.274185,
		-0.263621, 0.222306, -0.938661,
		28.952394, 34.627197, 51.699253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642916, 34.988083, 52.433006>,  <29.136929, 34.471584, 52.356316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642916, 34.988083, 52.433006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.600924, 34.855774, 52.057865>,  <28.575729, 34.776386, 51.832779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.600924, 34.855774, 52.057865>,  <28.642916, 34.988083, 52.433006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600924, 34.855774, 52.057865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992383, -0.026296, 0.120357,
		-0.064472, 0.943344, -0.325494,
		-0.104978, -0.330774, -0.937853,
		28.569429, 34.756542, 51.776508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059345, 35.242256, 52.263718>,  <28.642916, 34.988083, 52.433006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059345, 35.242256, 52.263718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.119991, 34.934437, 52.015583>,  <28.156380, 34.749744, 51.866703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.119991, 34.934437, 52.015583>,  <28.059345, 35.242256, 52.263718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119991, 34.934437, 52.015583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933993, -0.316954, 0.164916,
		-0.323527, 0.554381, -0.766806,
		0.151616, -0.769546, -0.620331,
		28.165476, 34.703575, 51.829483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570005, 35.472553, 51.810181>,  <28.059345, 35.242256, 52.263718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570005, 35.472553, 51.810181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.640711, 35.088551, 51.723335>,  <27.683134, 34.858150, 51.671227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.640711, 35.088551, 51.723335>,  <27.570005, 35.472553, 51.810181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640711, 35.088551, 51.723335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983736, -0.179470, -0.007343,
		-0.031917, 0.214884, -0.976118,
		0.176761, -0.960008, -0.217118,
		27.693739, 34.800549, 51.658199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102591, 35.358139, 51.224854>,  <27.570005, 35.472553, 51.810181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102591, 35.358139, 51.224854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.195951, 35.023685, 51.423412>,  <27.251968, 34.823013, 51.542549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.195951, 35.023685, 51.423412>,  <27.102591, 35.358139, 51.224854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195951, 35.023685, 51.423412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972311, -0.206752, 0.108923,
		0.011557, -0.508075, -0.861235,
		0.233403, -0.836130, 0.496396,
		27.265972, 34.772846, 51.572330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681526, 34.889473, 50.924500>,  <27.102591, 35.358139, 51.224854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681526, 34.889473, 50.924500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.781582, 34.700596, 51.262604>,  <26.841616, 34.587269, 51.465466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.781582, 34.700596, 51.262604>,  <26.681526, 34.889473, 50.924500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781582, 34.700596, 51.262604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966934, -0.077041, 0.243110,
		-0.049671, -0.878130, -0.475837,
		0.250141, -0.472178, 0.845267,
		26.856625, 34.558937, 51.516182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177782, 34.417984, 50.869675>,  <26.681526, 34.889473, 50.924500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177782, 34.417984, 50.869675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.308987, 34.425072, 51.247478>,  <26.387709, 34.429325, 51.474159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.308987, 34.425072, 51.247478>,  <26.177782, 34.417984, 50.869675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308987, 34.425072, 51.247478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921945, -0.211994, 0.324153,
		0.205974, -0.977110, -0.053199,
		0.328011, 0.017721, 0.944508,
		26.407391, 34.430389, 51.530830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864624, 33.812183, 51.176601>,  <26.177782, 34.417984, 50.869675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864624, 33.812183, 51.176601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.966406, 34.074860, 51.460579>,  <26.027475, 34.232464, 51.630966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.966406, 34.074860, 51.460579>,  <25.864624, 33.812183, 51.176601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966406, 34.074860, 51.460579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904792, -0.097552, 0.414530,
		0.341472, -0.747828, 0.569342,
		0.254456, 0.656687, 0.709940,
		26.042744, 34.271866, 51.673561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520044, 33.565151, 51.848713>,  <25.864624, 33.812183, 51.176601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520044, 33.565151, 51.848713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.621212, 33.943115, 51.931835>,  <25.681913, 34.169891, 51.981709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.621212, 33.943115, 51.931835>,  <25.520044, 33.565151, 51.848713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621212, 33.943115, 51.931835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897267, 0.148753, 0.415673,
		0.361860, -0.291591, 0.885456,
		0.252921, 0.944906, 0.207807,
		25.697088, 34.226585, 51.994179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265308, 33.744293, 52.641426>,  <25.520044, 33.565151, 51.848713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265308, 33.744293, 52.641426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.297010, 34.078148, 52.423401>,  <25.316031, 34.278461, 52.292583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.297010, 34.078148, 52.423401>,  <25.265308, 33.744293, 52.641426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297010, 34.078148, 52.423401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832498, 0.356181, 0.424360,
		0.548330, 0.420133, 0.723065,
		0.079254, 0.834639, -0.545065,
		25.320787, 34.328541, 52.259880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272692, 34.383583, 53.158588>,  <25.265308, 33.744293, 52.641426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272692, 34.383583, 53.158588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.161827, 34.542850, 52.808811>,  <25.095308, 34.638409, 52.598946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.161827, 34.542850, 52.808811>,  <25.272692, 34.383583, 53.158588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161827, 34.542850, 52.808811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673703, 0.568354, 0.472331,
		0.685058, 0.720025, 0.110719,
		-0.277163, 0.398166, -0.874439,
		25.078678, 34.662300, 52.546478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128626, 35.095264, 53.334305>,  <25.272692, 34.383583, 53.158588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128626, 35.095264, 53.334305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.975990, 34.992294, 52.979198>,  <24.884409, 34.930511, 52.766136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.975990, 34.992294, 52.979198>,  <25.128626, 35.095264, 53.334305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975990, 34.992294, 52.979198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881898, 0.389058, 0.266253,
		0.276851, 0.884515, -0.375482,
		-0.381589, -0.257424, -0.887763,
		24.861513, 34.915066, 52.712868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.294403, 33.255886, 49.474644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995865, 32.993912, 49.522030>,  <33.816742, 32.836727, 49.550461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995865, 32.993912, 49.522030>,  <34.294403, 33.255886, 49.474644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995865, 32.993912, 49.522030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242968, 0.433817, 0.867623,
		-0.619630, 0.618759, -0.482904,
		-0.746342, -0.654935, 0.118467,
		33.771961, 32.797432, 49.557571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671307, 33.600742, 49.649734>,  <34.294403, 33.255886, 49.474644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671307, 33.600742, 49.649734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605721, 33.232605, 49.791767>,  <33.566368, 33.011723, 49.876987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605721, 33.232605, 49.791767>,  <33.671307, 33.600742, 49.649734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605721, 33.232605, 49.791767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108044, 0.374537, 0.920895,
		-0.980532, 0.112627, -0.160848,
		-0.163961, -0.920346, 0.355077,
		33.556534, 32.956501, 49.898289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146713, 33.677406, 50.198318>,  <33.671307, 33.600742, 49.649734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146713, 33.677406, 50.198318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298569, 33.314953, 50.272930>,  <33.389683, 33.097481, 50.317699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298569, 33.314953, 50.272930>,  <33.146713, 33.677406, 50.198318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298569, 33.314953, 50.272930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084876, 0.166661, 0.982354,
		-0.921234, -0.388769, -0.013639,
		0.379636, -0.906137, 0.186531,
		33.412460, 33.043114, 50.328888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690769, 33.401608, 50.723549>,  <33.146713, 33.677406, 50.198318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690769, 33.401608, 50.723549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.029560, 33.191128, 50.753860>,  <33.232834, 33.064842, 50.772045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.029560, 33.191128, 50.753860>,  <32.690769, 33.401608, 50.723549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029560, 33.191128, 50.753860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120192, -0.050690, 0.991456,
		-0.517858, -0.848852, -0.106178,
		0.846981, -0.526195, 0.075775,
		33.283653, 33.033268, 50.776592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519077, 32.895924, 51.249310>,  <32.690769, 33.401608, 50.723549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519077, 32.895924, 51.249310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918350, 32.905697, 51.227276>,  <33.157913, 32.911560, 51.214058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918350, 32.905697, 51.227276>,  <32.519077, 32.895924, 51.249310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918350, 32.905697, 51.227276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052559, 0.094007, 0.994183,
		0.029467, -0.995272, 0.092553,
		0.998183, 0.024431, -0.055081,
		33.217804, 32.913029, 51.210751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684998, 32.620869, 51.946659>,  <32.519077, 32.895924, 51.249310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684998, 32.620869, 51.946659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.035908, 32.751053, 51.805546>,  <33.246456, 32.829163, 51.720879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.035908, 32.751053, 51.805546>,  <32.684998, 32.620869, 51.946659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035908, 32.751053, 51.805546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286880, 0.233721, 0.929018,
		0.384817, -0.916213, 0.111669,
		0.877278, 0.325466, -0.352783,
		33.299091, 32.848694, 51.699711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245090, 32.360199, 52.392998>,  <32.684998, 32.620869, 51.946659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245090, 32.360199, 52.392998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423164, 32.681873, 52.235470>,  <33.530006, 32.874878, 52.140953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423164, 32.681873, 52.235470>,  <33.245090, 32.360199, 52.392998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423164, 32.681873, 52.235470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133718, 0.375174, 0.917259,
		0.885400, -0.461007, 0.059486,
		0.445181, 0.804187, -0.393824,
		33.556717, 32.923130, 52.117321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969807, 32.535843, 52.627342>,  <33.245090, 32.360199, 52.392998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969807, 32.535843, 52.627342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833458, 32.887493, 52.494106>,  <33.751648, 33.098484, 52.414165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833458, 32.887493, 52.494106>,  <33.969807, 32.535843, 52.627342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833458, 32.887493, 52.494106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416735, 0.458895, 0.784695,
		0.842696, 0.128673, -0.522787,
		-0.340873, 0.879124, -0.333087,
		33.731197, 33.151230, 52.394180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555542, 32.971527, 52.810364>,  <33.969807, 32.535843, 52.627342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555542, 32.971527, 52.810364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237255, 33.204197, 52.742851>,  <34.046284, 33.343800, 52.702343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237255, 33.204197, 52.742851>,  <34.555542, 32.971527, 52.810364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237255, 33.204197, 52.742851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323571, 0.643834, 0.693383,
		0.511993, 0.497123, -0.700523,
		-0.795717, 0.581676, -0.168784,
		33.998539, 33.378700, 52.692215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860184, 33.588932, 52.763317>,  <34.555542, 32.971527, 52.810364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860184, 33.588932, 52.763317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473316, 33.657726, 52.838146>,  <34.241196, 33.699001, 52.883045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473316, 33.657726, 52.838146>,  <34.860184, 33.588932, 52.763317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473316, 33.657726, 52.838146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246597, 0.457408, 0.854382,
		0.061372, 0.872467, -0.484803,
		-0.967173, 0.171986, 0.187076,
		34.183163, 33.709324, 52.894268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726799, 34.343826, 52.767010>,  <34.860184, 33.588932, 52.763317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726799, 34.343826, 52.767010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453434, 34.159752, 52.993702>,  <34.289417, 34.049309, 53.129719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453434, 34.159752, 52.993702>,  <34.726799, 34.343826, 52.767010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453434, 34.159752, 52.993702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200225, 0.628383, 0.751695,
		-0.702043, 0.627187, -0.337301,
		-0.683408, -0.460186, 0.566730,
		34.248413, 34.021698, 53.163719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653458, 34.843376, 53.287167>,  <34.726799, 34.343826, 52.767010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653458, 34.843376, 53.287167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.451344, 34.529007, 53.429722>,  <34.330074, 34.340385, 53.515255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.451344, 34.529007, 53.429722>,  <34.653458, 34.843376, 53.287167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451344, 34.529007, 53.429722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102011, 0.464492, 0.879682,
		-0.856901, 0.408137, -0.314874,
		-0.505287, -0.785921, 0.356389,
		34.299759, 34.293232, 53.536640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257141, 35.509491, 53.151730>,  <34.653458, 34.843376, 53.287167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257141, 35.509491, 53.151730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.609241, 35.693451, 53.198452>,  <34.820503, 35.803825, 53.226486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.609241, 35.693451, 53.198452>,  <34.257141, 35.509491, 53.151730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609241, 35.693451, 53.198452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320101, -0.393841, -0.861641,
		-0.350265, 0.795854, -0.493894,
		0.880256, 0.459898, 0.116805,
		34.873318, 35.831421, 53.233494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542850, 35.491314, 52.375500>,  <34.257141, 35.509491, 53.151730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542850, 35.491314, 52.375500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856365, 35.593903, 52.601742>,  <35.044472, 35.655457, 52.737488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856365, 35.593903, 52.601742>,  <34.542850, 35.491314, 52.375500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856365, 35.593903, 52.601742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619550, -0.260028, -0.740637,
		-0.042878, 0.930918, -0.362701,
		0.783785, 0.256469, 0.565601,
		35.091499, 35.670845, 52.771423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897785, 36.017517, 52.037308>,  <34.542850, 35.491314, 52.375500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897785, 36.017517, 52.037308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143501, 35.805740, 52.271347>,  <35.290932, 35.678673, 52.411770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143501, 35.805740, 52.271347>,  <34.897785, 36.017517, 52.037308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143501, 35.805740, 52.271347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590806, -0.182915, -0.785805,
		0.523063, 0.828390, 0.200436,
		0.614291, -0.529445, 0.585094,
		35.327789, 35.646908, 52.446877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616314, 36.160549, 51.826012>,  <34.897785, 36.017517, 52.037308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616314, 36.160549, 51.826012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628826, 35.822803, 52.039955>,  <35.636333, 35.620155, 52.168320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628826, 35.822803, 52.039955>,  <35.616314, 36.160549, 51.826012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628826, 35.822803, 52.039955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668466, -0.380156, -0.639246,
		0.743085, 0.377530, 0.552536,
		0.031285, -0.844365, 0.534854,
		35.638210, 35.569492, 52.200413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315247, 36.020248, 51.781391>,  <35.616314, 36.160549, 51.826012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315247, 36.020248, 51.781391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186310, 35.662289, 51.904842>,  <36.108948, 35.447514, 51.978912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186310, 35.662289, 51.904842>,  <36.315247, 36.020248, 51.781391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186310, 35.662289, 51.904842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516340, -0.439476, -0.735020,
		0.793402, -0.077574, 0.603735,
		-0.322346, -0.894898, 0.308626,
		36.089607, 35.393818, 51.997429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903275, 35.575695, 51.947746>,  <36.315247, 36.020248, 51.781391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903275, 35.575695, 51.947746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596451, 35.327595, 51.882133>,  <36.412357, 35.178734, 51.842766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596451, 35.327595, 51.882133>,  <36.903275, 35.575695, 51.947746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596451, 35.327595, 51.882133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526856, -0.463070, -0.712734,
		0.366119, -0.633129, 0.681986,
		-0.767060, -0.620253, -0.164029,
		36.366333, 35.141518, 51.832924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258144, 35.023037, 51.924652>,  <36.903275, 35.575695, 51.947746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258144, 35.023037, 51.924652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909050, 34.915821, 51.761436>,  <36.699593, 34.851494, 51.663506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909050, 34.915821, 51.761436>,  <37.258144, 35.023037, 51.924652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909050, 34.915821, 51.761436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487601, -0.519944, -0.701358,
		-0.024168, -0.811058, 0.584467,
		-0.872732, -0.268036, -0.408039,
		36.647232, 34.835411, 51.639027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250496, 34.248085, 51.759270>,  <37.258144, 35.023037, 51.924652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250496, 34.248085, 51.759270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983288, 34.427662, 51.521885>,  <36.822964, 34.535408, 51.379452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983288, 34.427662, 51.521885>,  <37.250496, 34.248085, 51.759270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983288, 34.427662, 51.521885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383775, -0.475425, -0.791636,
		-0.637551, -0.756583, 0.145296,
		-0.668016, 0.448947, -0.593465,
		36.782883, 34.562347, 51.343845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177189, 33.752609, 51.317417>,  <37.250496, 34.248085, 51.759270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177189, 33.752609, 51.317417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043030, 34.092350, 51.154392>,  <36.962536, 34.296196, 51.056576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043030, 34.092350, 51.154392>,  <37.177189, 33.752609, 51.317417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043030, 34.092350, 51.154392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488723, -0.212985, -0.846042,
		-0.805394, -0.482944, -0.343665,
		-0.335395, 0.849354, -0.407563,
		36.942410, 34.347157, 51.032124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101360, 33.591045, 50.594387>,  <37.177189, 33.752609, 51.317417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101360, 33.591045, 50.594387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.095509, 33.990982, 50.598373>,  <37.091999, 34.230946, 50.600765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.095509, 33.990982, 50.598373>,  <37.101360, 33.591045, 50.594387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095509, 33.990982, 50.598373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497405, 0.015920, -0.867373,
		-0.867395, -0.007735, -0.497560,
		-0.014631, 0.999844, 0.009962,
		37.091118, 34.290936, 50.601360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935448, 33.767681, 49.885990>,  <37.101360, 33.591045, 50.594387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935448, 33.767681, 49.885990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131001, 34.082436, 50.036617>,  <37.248333, 34.271290, 50.126991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131001, 34.082436, 50.036617>,  <36.935448, 33.767681, 49.885990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131001, 34.082436, 50.036617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488241, 0.110912, -0.865632,
		-0.722922, 0.607046, -0.329968,
		0.488881, 0.786888, 0.376566,
		37.277664, 34.318501, 50.149586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268127, 34.229088, 49.289707>,  <36.935448, 33.767681, 49.885990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268127, 34.229088, 49.289707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474201, 34.366970, 49.603588>,  <37.597847, 34.449699, 49.791916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474201, 34.366970, 49.603588>,  <37.268127, 34.229088, 49.289707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474201, 34.366970, 49.603588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766766, 0.223716, -0.601682,
		-0.382952, 0.911665, -0.149050,
		0.515187, 0.344702, 0.784706,
		37.628757, 34.470379, 49.839001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406719, 35.001259, 49.105358>,  <37.268127, 34.229088, 49.289707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406719, 35.001259, 49.105358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.671501, 34.847950, 49.363014>,  <37.830372, 34.755966, 49.517609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.671501, 34.847950, 49.363014>,  <37.406719, 35.001259, 49.105358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671501, 34.847950, 49.363014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748953, 0.372303, -0.548143,
		-0.029728, 0.845278, 0.533500,
		0.661956, -0.383270, 0.644141,
		37.870087, 34.732967, 49.556255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853958, 35.498333, 49.256084>,  <37.406719, 35.001259, 49.105358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853958, 35.498333, 49.256084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044800, 35.155899, 49.335579>,  <38.159306, 34.950439, 49.383274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044800, 35.155899, 49.335579>,  <37.853958, 35.498333, 49.256084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044800, 35.155899, 49.335579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767142, 0.295344, -0.569443,
		0.428795, 0.424141, 0.797646,
		0.477105, -0.856082, 0.198735,
		38.187931, 34.899075, 49.395199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736637, 36.236000, 49.398655>,  <37.853958, 35.498333, 49.256084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736637, 36.236000, 49.398655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480061, 36.155357, 49.102573>,  <37.326115, 36.106972, 48.924923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480061, 36.155357, 49.102573>,  <37.736637, 36.236000, 49.398655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480061, 36.155357, 49.102573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709297, 0.523488, 0.472079,
		0.292314, 0.827838, -0.478787,
		-0.641444, -0.201607, -0.740205,
		37.287628, 36.094875, 48.880512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554779, 36.930256, 49.067703>,  <37.736637, 36.236000, 49.398655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554779, 36.930256, 49.067703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272228, 36.652447, 49.013050>,  <37.102695, 36.485760, 48.980259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272228, 36.652447, 49.013050>,  <37.554779, 36.930256, 49.067703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272228, 36.652447, 49.013050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613292, 0.504143, 0.608041,
		-0.353416, 0.513302, -0.782061,
		-0.706379, -0.694522, -0.136632,
		37.060314, 36.444092, 48.972061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908516, 37.358204, 49.028572>,  <37.554779, 36.930256, 49.067703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908516, 37.358204, 49.028572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678799, 37.657978, 48.896790>,  <36.540970, 37.837841, 48.817719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678799, 37.657978, 48.896790>,  <36.908516, 37.358204, 49.028572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678799, 37.657978, 48.896790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381614, 0.110971, 0.917636,
		0.724267, 0.652714, 0.222265,
		-0.574290, 0.749433, -0.329457,
		36.506512, 37.882809, 48.797951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049267, 38.002151, 49.348515>,  <36.908516, 37.358204, 49.028572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049267, 38.002151, 49.348515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664536, 37.994602, 49.239311>,  <36.433697, 37.990070, 49.173790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664536, 37.994602, 49.239311>,  <37.049267, 38.002151, 49.348515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664536, 37.994602, 49.239311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273623, 0.082245, 0.958314,
		0.004363, 0.996433, -0.084271,
		-0.961827, -0.018877, -0.273006,
		36.375988, 37.988937, 49.157410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819412, 38.499207, 49.723740>,  <37.049267, 38.002151, 49.348515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819412, 38.499207, 49.723740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.472118, 38.328815, 49.621983>,  <36.263744, 38.226582, 49.560928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.472118, 38.328815, 49.621983>,  <36.819412, 38.499207, 49.723740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472118, 38.328815, 49.621983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378777, 0.237895, 0.894390,
		-0.320474, 0.872895, -0.367900,
		-0.868230, -0.425981, -0.254393,
		36.211651, 38.201019, 49.545666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197277, 39.000767, 49.786903>,  <36.819412, 38.499207, 49.723740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197277, 39.000767, 49.786903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058594, 38.625774, 49.799095>,  <35.975384, 38.400780, 49.806412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058594, 38.625774, 49.799095>,  <36.197277, 39.000767, 49.786903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058594, 38.625774, 49.799095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533474, 0.223818, 0.815666,
		-0.771490, 0.266540, -0.577720,
		-0.346712, -0.937476, 0.030481,
		35.954578, 38.344532, 49.808239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488228, 39.136570, 49.923931>,  <36.197277, 39.000767, 49.786903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488228, 39.136570, 49.923931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560478, 38.755066, 50.020023>,  <35.603828, 38.526161, 50.077679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560478, 38.755066, 50.020023>,  <35.488228, 39.136570, 49.923931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560478, 38.755066, 50.020023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794552, 0.002460, 0.607192,
		-0.579708, -0.300546, -0.757370,
		0.180626, -0.953764, 0.240226,
		35.614666, 38.468937, 50.092091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914459, 38.889893, 50.150303>,  <35.488228, 39.136570, 49.923931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914459, 38.889893, 50.150303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164730, 38.615391, 50.298676>,  <35.314892, 38.450691, 50.387699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164730, 38.615391, 50.298676>,  <34.914459, 38.889893, 50.150303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164730, 38.615391, 50.298676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584591, -0.097635, 0.805432,
		-0.516512, -0.720783, -0.462264,
		0.625675, -0.686250, 0.370933,
		35.352432, 38.409515, 50.409954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476387, 38.511272, 50.473488>,  <34.914459, 38.889893, 50.150303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476387, 38.511272, 50.473488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813808, 38.427185, 50.671162>,  <35.016262, 38.376732, 50.789764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813808, 38.427185, 50.671162>,  <34.476387, 38.511272, 50.473488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813808, 38.427185, 50.671162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503712, 0.009412, 0.863821,
		-0.186242, -0.977609, -0.097950,
		0.843557, -0.210219, 0.494186,
		35.066875, 38.364120, 50.819416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278751, 37.885845, 50.782864>,  <34.476387, 38.511272, 50.473488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278751, 37.885845, 50.782864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573666, 38.092297, 50.957230>,  <34.750614, 38.216167, 51.061848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573666, 38.092297, 50.957230>,  <34.278751, 37.885845, 50.782864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573666, 38.092297, 50.957230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555862, 0.096729, 0.825628,
		0.383964, -0.851032, 0.358213,
		0.737285, 0.516128, 0.435916,
		34.794849, 38.247135, 51.088005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175537, 37.663200, 51.438103>,  <34.278751, 37.885845, 50.782864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175537, 37.663200, 51.438103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386173, 38.000519, 51.481110>,  <34.512554, 38.202911, 51.506912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386173, 38.000519, 51.481110>,  <34.175537, 37.663200, 51.438103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386173, 38.000519, 51.481110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601541, 0.280251, 0.748069,
		0.600711, -0.458599, 0.654853,
		0.526587, 0.843295, 0.107516,
		34.544151, 38.253506, 51.513363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390308, 37.727531, 52.194565>,  <34.175537, 37.663200, 51.438103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390308, 37.727531, 52.194565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.395298, 38.104156, 52.059917>,  <34.398293, 38.330132, 51.979130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.395298, 38.104156, 52.059917>,  <34.390308, 37.727531, 52.194565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395298, 38.104156, 52.059917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446889, 0.306405, 0.840480,
		0.894503, 0.139945, 0.424594,
		0.012477, 0.941558, -0.336620,
		34.399040, 38.386623, 51.958931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586155, 38.151543, 52.793240>,  <34.390308, 37.727531, 52.194565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586155, 38.151543, 52.793240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411777, 38.399994, 52.532730>,  <34.307152, 38.549065, 52.376423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411777, 38.399994, 52.532730>,  <34.586155, 38.151543, 52.793240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411777, 38.399994, 52.532730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395023, 0.518166, 0.758591,
		0.808648, 0.587971, 0.019468,
		-0.435942, 0.621123, -0.651276,
		34.280994, 38.586330, 52.337349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526348, 38.814026, 53.146099>,  <34.586155, 38.151543, 52.793240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526348, 38.814026, 53.146099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298683, 38.883011, 52.824524>,  <34.162083, 38.924400, 52.631580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298683, 38.883011, 52.824524>,  <34.526348, 38.814026, 53.146099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298683, 38.883011, 52.824524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506785, 0.696370, 0.508172,
		0.647475, 0.696654, -0.308948,
		-0.569162, 0.172458, -0.803936,
		34.127934, 38.934750, 52.583344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498013, 39.441010, 53.177639>,  <34.526348, 38.814026, 53.146099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498013, 39.441010, 53.177639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.189568, 39.367832, 52.933701>,  <34.004501, 39.323925, 52.787338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.189568, 39.367832, 52.933701>,  <34.498013, 39.441010, 53.177639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189568, 39.367832, 52.933701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603589, 0.514896, 0.608739,
		0.202640, 0.837504, -0.507469,
		-0.771115, -0.182948, -0.609846,
		33.958233, 39.312946, 52.750748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216488, 40.074520, 52.957932>,  <34.498013, 39.441010, 53.177639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216488, 40.074520, 52.957932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927601, 39.803001, 52.904812>,  <33.754269, 39.640091, 52.872940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927601, 39.803001, 52.904812>,  <34.216488, 40.074520, 52.957932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927601, 39.803001, 52.904812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626191, 0.560143, 0.542332,
		-0.293748, 0.474839, -0.829602,
		-0.722217, -0.678798, -0.132799,
		33.710938, 39.599361, 52.864971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554234, 40.448612, 52.635262>,  <34.216488, 40.074520, 52.957932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554234, 40.448612, 52.635262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440464, 40.114101, 52.822769>,  <33.372204, 39.913395, 52.935276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440464, 40.114101, 52.822769>,  <33.554234, 40.448612, 52.635262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440464, 40.114101, 52.822769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765235, 0.492587, 0.414455,
		-0.577510, -0.240840, -0.780051,
		-0.284425, -0.836274, 0.468773,
		33.355137, 39.863220, 52.963402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810402, 40.412930, 52.546036>,  <33.554234, 40.448612, 52.635262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810402, 40.412930, 52.546036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916164, 40.196247, 52.865196>,  <32.979622, 40.066238, 53.056694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916164, 40.196247, 52.865196>,  <32.810402, 40.412930, 52.546036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916164, 40.196247, 52.865196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700083, 0.461222, 0.545121,
		-0.663305, -0.702729, -0.257291,
		0.264404, -0.541707, 0.797900,
		32.995487, 40.033733, 53.104565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235588, 40.231426, 52.864571>,  <32.810402, 40.412930, 52.546036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235588, 40.231426, 52.864571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497364, 40.165646, 53.159779>,  <32.654430, 40.126179, 53.336903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497364, 40.165646, 53.159779>,  <32.235588, 40.231426, 52.864571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497364, 40.165646, 53.159779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610259, 0.461408, 0.643961,
		-0.446428, -0.871813, 0.201603,
		0.654435, -0.164453, 0.738018,
		32.693695, 40.116310, 53.381184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873556, 39.995514, 53.455837>,  <32.235588, 40.231426, 52.864571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873556, 39.995514, 53.455837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203773, 40.142033, 53.627560>,  <32.401905, 40.229942, 53.730595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203773, 40.142033, 53.627560>,  <31.873556, 39.995514, 53.455837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203773, 40.142033, 53.627560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558894, 0.425274, 0.711885,
		0.078184, -0.827631, 0.555801,
		0.825546, 0.366292, 0.429308,
		32.451439, 40.251919, 53.756351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808674, 39.713970, 54.074680>,  <31.873556, 39.995514, 53.455837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808674, 39.713970, 54.074680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037224, 40.041943, 54.060577>,  <32.174355, 40.238728, 54.052116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037224, 40.041943, 54.060577>,  <31.808674, 39.713970, 54.074680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037224, 40.041943, 54.060577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576915, 0.431841, 0.693312,
		0.583692, -0.375803, 0.719774,
		0.571377, 0.819930, -0.035255,
		32.208637, 40.287922, 54.049999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028393, 39.840755, 54.768665>,  <31.808674, 39.713970, 54.074680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028393, 39.840755, 54.768665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.114517, 40.196426, 54.607166>,  <32.166191, 40.409828, 54.510265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.114517, 40.196426, 54.607166>,  <32.028393, 39.840755, 54.768665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114517, 40.196426, 54.607166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490002, 0.456001, 0.742941,
		0.844712, 0.037874, 0.533879,
		0.215311, 0.889173, -0.403748,
		32.179111, 40.463177, 54.486042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353565, 40.325939, 55.313492>,  <32.028393, 39.840755, 54.768665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353565, 40.325939, 55.313492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219868, 40.558765, 55.016983>,  <32.139648, 40.698463, 54.839077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219868, 40.558765, 55.016983>,  <32.353565, 40.325939, 55.313492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219868, 40.558765, 55.016983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418811, 0.612856, 0.670078,
		0.844322, 0.534420, 0.038934,
		-0.334242, 0.582068, -0.741269,
		32.119595, 40.733387, 54.794601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411823, 40.892773, 55.610535>,  <32.353565, 40.325939, 55.313492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411823, 40.892773, 55.610535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194221, 41.019669, 55.299816>,  <32.063660, 41.095806, 55.113384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194221, 41.019669, 55.299816>,  <32.411823, 40.892773, 55.610535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194221, 41.019669, 55.299816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340670, 0.762532, 0.549989,
		0.766814, 0.563829, -0.306746,
		-0.544003, 0.317241, -0.776800,
		32.031021, 41.114841, 55.066776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545258, 41.590446, 55.528309>,  <32.411823, 40.892773, 55.610535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545258, 41.590446, 55.528309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195187, 41.542671, 55.340782>,  <31.985144, 41.514008, 55.228264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195187, 41.542671, 55.340782>,  <32.545258, 41.590446, 55.528309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195187, 41.542671, 55.340782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408303, 0.702150, 0.583329,
		0.259511, 0.701940, -0.663275,
		-0.875181, -0.119437, -0.468820,
		31.932632, 41.506840, 55.200134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256325, 42.210667, 55.295483>,  <32.545258, 41.590446, 55.528309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256325, 42.210667, 55.295483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934902, 41.982719, 55.364250>,  <31.742048, 41.845951, 55.405510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934902, 41.982719, 55.364250>,  <32.256325, 42.210667, 55.295483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934902, 41.982719, 55.364250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443594, 0.765909, 0.465412,
		-0.396893, 0.297723, -0.868238,
		-0.803555, -0.569864, 0.171915,
		31.693836, 41.811760, 55.415825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753941, 42.646561, 55.160622>,  <32.256325, 42.210667, 55.295483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753941, 42.646561, 55.160622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566797, 42.364204, 55.373348>,  <31.454512, 42.194790, 55.500984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566797, 42.364204, 55.373348>,  <31.753941, 42.646561, 55.160622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566797, 42.364204, 55.373348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513644, 0.706850, 0.486345,
		-0.719221, -0.045625, -0.693281,
		-0.467857, -0.705890, 0.531817,
		31.426439, 42.152439, 55.532894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220442, 42.978848, 55.336502>,  <31.753941, 42.646561, 55.160622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220442, 42.978848, 55.336502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.180376, 42.658276, 55.572361>,  <31.156336, 42.465931, 55.713875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.180376, 42.658276, 55.572361>,  <31.220442, 42.978848, 55.336502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180376, 42.658276, 55.572361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521577, 0.546964, 0.654819,
		-0.847304, -0.241955, -0.472794,
		-0.100164, -0.801429, 0.589643,
		31.150328, 42.417847, 55.749252>
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
