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
	<4.484335, 15.340123, 15.274068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.315989, 15.267038, 14.918654>,  <4.214983, 15.223187, 14.705406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.315989, 15.267038, 14.918654>,  <4.484335, 15.340123, 15.274068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.315989, 15.267038, 14.918654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309555, 0.891781, -0.330003,
		0.852672, -0.413936, -0.318759,
		-0.420864, -0.182711, -0.888533,
		4.189731, 15.212225, 14.652095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.898726, 15.443900, 14.703281>,  <4.484335, 15.340123, 15.274068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.898726, 15.443900, 14.703281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.540090, 15.490401, 14.532351>,  <4.324908, 15.518302, 14.429792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.540090, 15.490401, 14.532351>,  <4.898726, 15.443900, 14.703281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.540090, 15.490401, 14.532351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339069, 0.800915, -0.493525,
		0.284879, -0.587384, -0.757512,
		-0.896591, 0.116254, -0.427327,
		4.271112, 15.525277, 14.404152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.999124, 15.793174, 14.144236>,  <4.898726, 15.443900, 14.703281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.999124, 15.793174, 14.144236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.600900, 15.829806, 14.152949>,  <4.361966, 15.851786, 14.158177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.600900, 15.829806, 14.152949>,  <4.999124, 15.793174, 14.144236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.600900, 15.829806, 14.152949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070534, 0.878955, -0.471660,
		-0.062343, -0.468029, -0.881511,
		-0.995559, 0.091581, 0.021785,
		4.302232, 15.857281, 14.159485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.415146, 15.669890, 13.642562>,  <4.999124, 15.793174, 14.144236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.415146, 15.669890, 13.642562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.703957, 15.456226, 13.466674>,  <4.877243, 15.328028, 13.361141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.703957, 15.456226, 13.466674>,  <4.415146, 15.669890, 13.642562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.703957, 15.456226, 13.466674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003737, 0.632535, -0.774523,
		0.691857, 0.560869, 0.454710,
		0.722025, -0.534159, -0.439719,
		4.920564, 15.295979, 13.334758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.168234, 15.990923, 13.415745>,  <4.415146, 15.669890, 13.642562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.168234, 15.990923, 13.415745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.092241, 15.692743, 13.160178>,  <5.046646, 15.513836, 13.006838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.092241, 15.692743, 13.160178>,  <5.168234, 15.990923, 13.415745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.092241, 15.692743, 13.160178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016252, 0.653067, -0.757126,
		0.981653, -0.133456, -0.136186,
		-0.189982, -0.745448, -0.638916,
		5.035247, 15.469109, 12.968503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.555185, 16.080982, 12.837627>,  <5.168234, 15.990923, 13.415745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.555185, 16.080982, 12.837627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.275483, 15.829517, 12.701495>,  <5.107662, 15.678638, 12.619816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.275483, 15.829517, 12.701495>,  <5.555185, 16.080982, 12.837627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.275483, 15.829517, 12.701495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004870, 0.471871, -0.881654,
		0.714856, -0.618158, -0.326897,
		-0.699255, -0.628664, -0.340330,
		5.065707, 15.640918, 12.599396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.807670, 15.778957, 12.181022>,  <5.555185, 16.080982, 12.837627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.807670, 15.778957, 12.181022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.411606, 15.739192, 12.141623>,  <5.173967, 15.715333, 12.117985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.411606, 15.739192, 12.141623>,  <5.807670, 15.778957, 12.181022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.411606, 15.739192, 12.141623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041575, 0.463076, -0.885343,
		0.133626, -0.880725, -0.454386,
		-0.990160, -0.099413, -0.098495,
		5.114558, 15.709368, 12.112075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.602917, 15.615767, 11.472378>,  <5.807670, 15.778957, 12.181022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.602917, 15.615767, 11.472378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.249202, 15.738750, 11.612952>,  <5.036973, 15.812539, 11.697297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.249202, 15.738750, 11.612952>,  <5.602917, 15.615767, 11.472378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.249202, 15.738750, 11.612952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157245, 0.512593, -0.844110,
		-0.439672, -0.801697, -0.404933,
		-0.884286, 0.307458, 0.351436,
		4.983916, 15.830987, 11.718383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.132796, 15.600796, 10.928323>,  <5.602917, 15.615767, 11.472378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.132796, 15.600796, 10.928323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955644, 15.847961, 11.188181>,  <4.849352, 15.996261, 11.344096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955644, 15.847961, 11.188181>,  <5.132796, 15.600796, 10.928323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.955644, 15.847961, 11.188181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084987, 0.692386, -0.716505,
		-0.892544, -0.372537, -0.254129,
		-0.442880, 0.617914, 0.649646,
		4.822780, 16.033335, 11.383075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.507353, 15.891321, 10.610657>,  <5.132796, 15.600796, 10.928323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.507353, 15.891321, 10.610657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.626215, 16.145168, 10.896023>,  <4.697531, 16.297476, 11.067243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.626215, 16.145168, 10.896023>,  <4.507353, 15.891321, 10.610657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.626215, 16.145168, 10.896023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035458, 0.739314, -0.672427,
		-0.954171, 0.225111, 0.197187,
		0.297154, 0.634618, 0.713414,
		4.715361, 16.335554, 11.110047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.039255, 16.472738, 10.537786>,  <4.507353, 15.891321, 10.610657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.039255, 16.472738, 10.537786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.367134, 16.584356, 10.737879>,  <4.563860, 16.651327, 10.857934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.367134, 16.584356, 10.737879>,  <4.039255, 16.472738, 10.537786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.367134, 16.584356, 10.737879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057042, 0.829202, -0.556030,
		-0.569952, 0.484310, 0.663776,
		0.819696, 0.279047, 0.500231,
		4.613042, 16.668070, 10.887948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.890389, 17.226835, 10.749510>,  <4.039255, 16.472738, 10.537786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.890389, 17.226835, 10.749510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.287046, 17.185190, 10.779980>,  <4.525041, 17.160202, 10.798262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.287046, 17.185190, 10.779980>,  <3.890389, 17.226835, 10.749510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.287046, 17.185190, 10.779980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128500, 0.849374, -0.511910,
		-0.011403, 0.517421, 0.855655,
		0.991644, -0.104114, 0.076174,
		4.584539, 17.153955, 10.802832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.201307, 17.941614, 10.809897>,  <3.890389, 17.226835, 10.749510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.201307, 17.941614, 10.809897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.521068, 17.723377, 10.709268>,  <4.712924, 17.592436, 10.648890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.521068, 17.723377, 10.709268>,  <4.201307, 17.941614, 10.809897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.521068, 17.723377, 10.709268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330048, 0.748687, -0.574923,
		0.502023, 0.376562, 0.778572,
		0.799401, -0.545590, -0.251575,
		4.760888, 17.559700, 10.633795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.734314, 18.435663, 10.787807>,  <4.201307, 17.941614, 10.809897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.734314, 18.435663, 10.787807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.890649, 18.134651, 10.575790>,  <4.984450, 17.954044, 10.448581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.890649, 18.134651, 10.575790>,  <4.734314, 18.435663, 10.787807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.890649, 18.134651, 10.575790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412147, 0.657966, -0.630251,
		0.823032, 0.027872, 0.567311,
		0.390838, -0.752532, -0.530039,
		5.007900, 17.908892, 10.416779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.391539, 18.600975, 10.739103>,  <4.734314, 18.435663, 10.787807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.391539, 18.600975, 10.739103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.313046, 18.338602, 10.447556>,  <5.265951, 18.181179, 10.272629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.313046, 18.338602, 10.447556>,  <5.391539, 18.600975, 10.739103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.313046, 18.338602, 10.447556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387250, 0.631055, -0.672165,
		0.900850, -0.414152, 0.130177,
		-0.196230, -0.655932, -0.728867,
		5.254178, 18.141823, 10.228896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.035286, 18.658386, 10.332750>,  <5.391539, 18.600975, 10.739103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.035286, 18.658386, 10.332750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.782588, 18.464560, 10.090728>,  <5.630969, 18.348263, 9.945515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.782588, 18.464560, 10.090728>,  <6.035286, 18.658386, 10.332750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.782588, 18.464560, 10.090728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328064, 0.540063, -0.775052,
		0.702333, -0.688133, -0.182213,
		-0.631745, -0.484567, -0.605056,
		5.593064, 18.319189, 9.909211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.342134, 18.493862, 9.722739>,  <6.035286, 18.658386, 10.332750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.342134, 18.493862, 9.722739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.958815, 18.462664, 9.612768>,  <5.728824, 18.443945, 9.546785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.958815, 18.462664, 9.612768>,  <6.342134, 18.493862, 9.722739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.958815, 18.462664, 9.612768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207902, 0.469789, -0.857948,
		0.196076, -0.879326, -0.433981,
		-0.958296, -0.077998, -0.274928,
		5.671327, 18.439264, 9.530290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.164360, 18.111681, 9.036800>,  <6.342134, 18.493862, 9.722739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.164360, 18.111681, 9.036800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.887018, 18.389730, 9.112762>,  <5.720613, 18.556561, 9.158340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.887018, 18.389730, 9.112762>,  <6.164360, 18.111681, 9.036800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.887018, 18.389730, 9.112762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224856, 0.459087, -0.859464,
		-0.684616, -0.553212, -0.474613,
		-0.693354, 0.695123, 0.189906,
		5.679011, 18.598267, 9.169734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.953877, 18.408674, 8.388510>,  <6.164360, 18.111681, 9.036800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.953877, 18.408674, 8.388510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.733772, 18.682116, 8.580298>,  <5.601708, 18.846180, 8.695372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.733772, 18.682116, 8.580298>,  <5.953877, 18.408674, 8.388510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.733772, 18.682116, 8.580298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073374, 0.611592, -0.787764,
		-0.831760, -0.398297, -0.386696,
		-0.550264, 0.683604, 0.479473,
		5.568692, 18.887197, 8.724140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.558249, 18.663786, 7.827837>,  <5.953877, 18.408674, 8.388510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.558249, 18.663786, 7.827837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.611682, 18.916836, 8.132977>,  <5.643742, 19.068666, 8.316061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.611682, 18.916836, 8.132977>,  <5.558249, 18.663786, 7.827837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.611682, 18.916836, 8.132977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193907, 0.738186, -0.646128,
		-0.971883, 0.234234, -0.024062,
		0.133583, 0.632626, 0.762850,
		5.651757, 19.106625, 8.361833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.161507, 19.226120, 7.701448>,  <5.558249, 18.663786, 7.827837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.161507, 19.226120, 7.701448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.454456, 19.341131, 7.948335>,  <5.630226, 19.410137, 8.096467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.454456, 19.341131, 7.948335>,  <5.161507, 19.226120, 7.701448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.454456, 19.341131, 7.948335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185083, 0.788275, -0.586827,
		-0.655266, 0.544013, 0.524096,
		0.732373, 0.287527, 0.617218,
		5.674169, 19.427389, 8.133500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.044317, 19.925978, 7.563825>,  <5.161507, 19.226120, 7.701448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.044317, 19.925978, 7.563825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.376368, 19.907452, 7.786085>,  <5.575598, 19.896336, 7.919440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.376368, 19.907452, 7.786085>,  <5.044317, 19.925978, 7.563825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.376368, 19.907452, 7.786085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267592, 0.907373, -0.324143,
		-0.489168, 0.417767, 0.765627,
		0.830126, -0.046315, 0.555649,
		5.625405, 19.893557, 7.952779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.013948, 20.543463, 7.885949>,  <5.044317, 19.925978, 7.563825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.013948, 20.543463, 7.885949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.388278, 20.407295, 7.849410>,  <5.612876, 20.325594, 7.827486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.388278, 20.407295, 7.849410>,  <5.013948, 20.543463, 7.885949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.388278, 20.407295, 7.849410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315349, 0.924437, -0.214411,
		0.157435, 0.171845, 0.972463,
		0.935826, -0.340421, -0.091348,
		5.669026, 20.305168, 7.822005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.429903, 21.028286, 8.243218>,  <5.013948, 20.543463, 7.885949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.429903, 21.028286, 8.243218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.644210, 20.831049, 7.969047>,  <5.772794, 20.712708, 7.804543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.644210, 20.831049, 7.969047>,  <5.429903, 21.028286, 8.243218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.644210, 20.831049, 7.969047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398825, 0.863291, -0.309301,
		0.744239, -0.107653, 0.659181,
		0.535767, -0.493092, -0.685430,
		5.804940, 20.683121, 7.763418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.151937, 21.290434, 8.271405>,  <5.429903, 21.028286, 8.243218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.151937, 21.290434, 8.271405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.114043, 21.116980, 7.912967>,  <6.091306, 21.012907, 7.697904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.114043, 21.116980, 7.912967>,  <6.151937, 21.290434, 8.271405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.114043, 21.116980, 7.912967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506346, 0.754019, -0.418412,
		0.857111, -0.493373, 0.148135,
		-0.094737, -0.433633, -0.896095,
		6.085622, 20.986889, 7.644138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.815477, 21.175474, 8.080993>,  <6.151937, 21.290434, 8.271405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.815477, 21.175474, 8.080993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.546654, 21.224064, 7.788805>,  <6.385361, 21.253218, 7.613492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.546654, 21.224064, 7.788805>,  <6.815477, 21.175474, 8.080993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.546654, 21.224064, 7.788805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571203, 0.712802, -0.406990,
		0.471240, -0.690766, -0.548429,
		-0.672056, 0.121474, -0.730469,
		6.345037, 21.260506, 7.569664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.265433, 21.339081, 7.536218>,  <6.815477, 21.175474, 8.080993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.265433, 21.339081, 7.536218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.889532, 21.437403, 7.441185>,  <6.663991, 21.496395, 7.384165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.889532, 21.437403, 7.441185>,  <7.265433, 21.339081, 7.536218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.889532, 21.437403, 7.441185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341170, 0.718314, -0.606323,
		0.021623, -0.650850, -0.758898,
		-0.939753, 0.245803, -0.237583,
		6.607606, 21.511143, 7.369910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.112753, 21.238503, 6.813076>,  <7.265433, 21.339081, 7.536218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.112753, 21.238503, 6.813076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.918236, 21.555738, 6.959789>,  <6.801526, 21.746080, 7.047817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.918236, 21.555738, 6.959789>,  <7.112753, 21.238503, 6.813076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.918236, 21.555738, 6.959789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425885, 0.581648, -0.693042,
		-0.762983, -0.180813, -0.620615,
		-0.486291, 0.793090, 0.366782,
		6.772349, 21.793665, 7.069824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.749847, 20.723051, 7.045782>,  <7.112753, 21.238503, 6.813076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.749847, 20.723051, 7.045782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.627529, 20.799694, 7.418829>,  <7.554138, 20.845680, 7.642657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.627529, 20.799694, 7.418829>,  <7.749847, 20.723051, 7.045782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.627529, 20.799694, 7.418829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926115, 0.167413, -0.338060,
		-0.220908, -0.967088, 0.126258,
		-0.305796, 0.191610, 0.932617,
		7.535790, 20.857178, 7.698614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.207348, 20.130327, 7.334511>,  <7.749847, 20.723051, 7.045782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.207348, 20.130327, 7.334511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.366907, 20.240776, 7.684285>,  <8.462643, 20.307045, 7.894150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.366907, 20.240776, 7.684285>,  <8.207348, 20.130327, 7.334511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.366907, 20.240776, 7.684285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910166, -0.235385, -0.340869,
		0.111707, 0.931853, -0.345213,
		0.398897, 0.276123, 0.874435,
		8.486576, 20.323612, 7.946616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.735050, 20.761803, 7.569717>,  <8.207348, 20.130327, 7.334511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.735050, 20.761803, 7.569717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.803322, 20.404703, 7.736508>,  <8.844285, 20.190443, 7.836583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.803322, 20.404703, 7.736508>,  <8.735050, 20.761803, 7.569717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.803322, 20.404703, 7.736508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938597, 0.018531, -0.344518,
		0.299841, 0.450176, 0.841093,
		0.170680, -0.892747, 0.416977,
		8.854526, 20.136879, 7.861601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.346552, 20.811115, 7.905313>,  <8.735050, 20.761803, 7.569717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.346552, 20.811115, 7.905313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.282950, 20.424864, 7.823062>,  <9.244790, 20.193113, 7.773712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.282950, 20.424864, 7.823062>,  <9.346552, 20.811115, 7.905313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.282950, 20.424864, 7.823062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931529, -0.077736, -0.355263,
		0.327067, -0.248034, 0.911870,
		-0.159003, -0.965627, -0.205626,
		9.235250, 20.135176, 7.761374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.918774, 20.378916, 8.214017>,  <9.346552, 20.811115, 7.905313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.918774, 20.378916, 8.214017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.763149, 20.190540, 7.897322>,  <9.669774, 20.077515, 7.707304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.763149, 20.190540, 7.897322>,  <9.918774, 20.378916, 8.214017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.763149, 20.190540, 7.897322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920544, -0.166040, -0.353594,
		0.035060, -0.866400, 0.498119,
		-0.389062, -0.470938, -0.791738,
		9.646431, 20.049259, 7.659801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.258955, 19.714329, 8.010260>,  <9.918774, 20.378916, 8.214017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.258955, 19.714329, 8.010260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.104802, 19.886646, 7.683849>,  <10.012310, 19.990036, 7.488003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.104802, 19.886646, 7.683849>,  <10.258955, 19.714329, 8.010260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.104802, 19.886646, 7.683849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850855, -0.176341, -0.494924,
		-0.357108, -0.885055, -0.298583,
		-0.385382, 0.430792, -0.816026,
		9.989187, 20.015884, 7.439041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.994769, 19.171936, 7.660390>,  <10.258955, 19.714329, 8.010260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.994769, 19.171936, 7.660390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.266768, 19.230978, 7.373108>,  <10.429966, 19.266403, 7.200739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.266768, 19.230978, 7.373108>,  <9.994769, 19.171936, 7.660390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.266768, 19.230978, 7.373108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089632, -0.988915, -0.118381,
		-0.727718, 0.016124, -0.685688,
		0.679995, 0.147607, -0.718205,
		10.470766, 19.275261, 7.157647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.572937, 18.943953, 8.228830>,  <9.994769, 19.171936, 7.660390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.572937, 18.943953, 8.228830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.459833, 19.167906, 8.540363>,  <10.391971, 19.302277, 8.727283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.459833, 19.167906, 8.540363>,  <10.572937, 18.943953, 8.228830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.459833, 19.167906, 8.540363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164611, -0.828247, 0.535640,
		0.944960, 0.023254, 0.326358,
		-0.282761, 0.559881, 0.778832,
		10.375005, 19.335871, 8.774013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.737103, 18.446665, 8.785832>,  <10.572937, 18.943953, 8.228830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.737103, 18.446665, 8.785832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.468729, 18.715221, 8.911739>,  <10.307704, 18.876356, 8.987284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.468729, 18.715221, 8.911739>,  <10.737103, 18.446665, 8.785832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.468729, 18.715221, 8.911739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436261, -0.700658, 0.564583,
		0.599600, 0.241479, 0.762999,
		-0.670937, 0.671391, 0.314767,
		10.267448, 18.916639, 9.006169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.698671, 18.457125, 9.587508>,  <10.737103, 18.446665, 8.785832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.698671, 18.457125, 9.587508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.368551, 18.562702, 9.387824>,  <10.170479, 18.626049, 9.268013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.368551, 18.562702, 9.387824>,  <10.698671, 18.457125, 9.587508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.368551, 18.562702, 9.387824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551528, -0.566537, 0.612252,
		-0.121221, 0.780621, 0.613136,
		-0.825301, 0.263944, -0.499211,
		10.120961, 18.641886, 9.238061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.143661, 18.758539, 10.041945>,  <10.698671, 18.457125, 9.587508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.143661, 18.758539, 10.041945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.946445, 18.594883, 9.734825>,  <9.828116, 18.496689, 9.550553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.946445, 18.594883, 9.734825>,  <10.143661, 18.758539, 10.041945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.946445, 18.594883, 9.734825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642970, -0.423165, 0.638374,
		-0.586091, 0.808415, -0.054430,
		-0.493038, -0.409142, -0.767799,
		9.798534, 18.472139, 9.504485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.642434, 18.616594, 10.378138>,  <10.143661, 18.758539, 10.041945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.642434, 18.616594, 10.378138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.582692, 18.432989, 10.027823>,  <9.546847, 18.322826, 9.817636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.582692, 18.432989, 10.027823>,  <9.642434, 18.616594, 10.378138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.582692, 18.432989, 10.027823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647453, -0.624031, 0.437482,
		-0.747327, 0.632369, -0.203988,
		-0.149355, -0.459015, -0.875784,
		9.537886, 18.295284, 9.765088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.885162, 18.511213, 10.163866>,  <9.642434, 18.616594, 10.378138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.885162, 18.511213, 10.163866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.105471, 18.236326, 9.974390>,  <9.237656, 18.071394, 9.860704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.105471, 18.236326, 9.974390>,  <8.885162, 18.511213, 10.163866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.105471, 18.236326, 9.974390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591799, -0.721738, 0.358983,
		-0.588580, 0.082612, -0.804207,
		0.550770, -0.687219, -0.473690,
		9.270701, 18.030161, 9.832283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.357315, 18.018629, 10.010311>,  <8.885162, 18.511213, 10.163866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.357315, 18.018629, 10.010311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.701688, 17.821205, 9.961001>,  <8.908311, 17.702751, 9.931416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.701688, 17.821205, 9.961001>,  <8.357315, 18.018629, 10.010311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.701688, 17.821205, 9.961001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442523, -0.846113, 0.297096,
		-0.250938, -0.201227, -0.946857,
		0.860932, -0.493559, -0.123275,
		8.959968, 17.673138, 9.924019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.239167, 17.437073, 9.524639>,  <8.357315, 18.018629, 10.010311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.239167, 17.437073, 9.524639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.583682, 17.370485, 9.716669>,  <8.790391, 17.330532, 9.831887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.583682, 17.370485, 9.716669>,  <8.239167, 17.437073, 9.524639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.583682, 17.370485, 9.716669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276965, -0.945921, 0.168889,
		0.425998, -0.278425, -0.860816,
		0.861287, -0.166469, 0.480075,
		8.842069, 17.320545, 9.860691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.398855, 16.717785, 9.289668>,  <8.239167, 17.437073, 9.524639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.398855, 16.717785, 9.289668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.614670, 16.804682, 9.615049>,  <8.744159, 16.856819, 9.810278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.614670, 16.804682, 9.615049>,  <8.398855, 16.717785, 9.289668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.614670, 16.804682, 9.615049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337702, -0.829186, 0.445429,
		0.771270, -0.515030, -0.374014,
		0.539537, 0.217241, 0.813453,
		8.776531, 16.869854, 9.859085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.653955, 16.083435, 9.482889>,  <8.398855, 16.717785, 9.289668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.653955, 16.083435, 9.482889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680571, 16.318193, 9.805659>,  <8.696540, 16.459047, 9.999321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680571, 16.318193, 9.805659>,  <8.653955, 16.083435, 9.482889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.680571, 16.318193, 9.805659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540421, -0.658628, 0.523598,
		0.838760, -0.470919, 0.273345,
		0.066540, 0.586894, 0.806925,
		8.700533, 16.494261, 10.047737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.786773, 15.567023, 10.025547>,  <8.653955, 16.083435, 9.482889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.786773, 15.567023, 10.025547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.663598, 15.904920, 10.200631>,  <8.589693, 16.107656, 10.305681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.663598, 15.904920, 10.200631>,  <8.786773, 15.567023, 10.025547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.663598, 15.904920, 10.200631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739912, -0.501845, 0.447976,
		0.598086, -0.185919, 0.779569,
		-0.307936, 0.844740, 0.437710,
		8.571218, 16.158342, 10.331944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.671103, 15.379859, 10.767179>,  <8.786773, 15.567023, 10.025547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.671103, 15.379859, 10.767179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.444557, 15.690715, 10.657424>,  <8.308630, 15.877228, 10.591571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.444557, 15.690715, 10.657424>,  <8.671103, 15.379859, 10.767179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.444557, 15.690715, 10.657424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804749, -0.449654, 0.387543,
		0.177795, 0.440303, 0.880070,
		-0.566363, 0.777139, -0.274387,
		8.274649, 15.923857, 10.575108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.247602, 15.370384, 11.196210>,  <8.671103, 15.379859, 10.767179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.247602, 15.370384, 11.196210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.075122, 15.637776, 10.953822>,  <7.971633, 15.798212, 10.808390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.075122, 15.637776, 10.953822>,  <8.247602, 15.370384, 11.196210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.075122, 15.637776, 10.953822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902112, -0.331390, 0.276359,
		-0.016072, 0.665819, 0.745940,
		-0.431202, 0.668480, -0.605969,
		7.945761, 15.838321, 10.772032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.654008, 15.566208, 11.540298>,  <8.247602, 15.370384, 11.196210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.654008, 15.566208, 11.540298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.589972, 15.684460, 11.163580>,  <7.551551, 15.755410, 10.937550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.589972, 15.684460, 11.163580>,  <7.654008, 15.566208, 11.540298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.589972, 15.684460, 11.163580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949387, -0.307329, 0.064909,
		-0.270252, 0.904518, 0.329866,
		-0.160088, 0.295629, -0.941794,
		7.541946, 15.773149, 10.881042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.034711, 15.983887, 11.447875>,  <7.654008, 15.566208, 11.540298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.034711, 15.983887, 11.447875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.101122, 15.834909, 11.082642>,  <7.140968, 15.745523, 10.863502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.101122, 15.834909, 11.082642>,  <7.034711, 15.983887, 11.447875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.101122, 15.834909, 11.082642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787736, -0.607102, 0.104401,
		-0.593218, 0.701935, -0.394182,
		0.166026, -0.372444, -0.913083,
		7.150930, 15.723176, 10.808717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.389102, 16.021526, 11.026605>,  <7.034711, 15.983887, 11.447875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.389102, 16.021526, 11.026605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.616715, 15.737692, 10.860382>,  <6.753284, 15.567391, 10.760649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.616715, 15.737692, 10.860382>,  <6.389102, 16.021526, 11.026605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.616715, 15.737692, 10.860382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766096, -0.641101, 0.045678,
		-0.298826, 0.292363, -0.908420,
		0.569034, -0.709586, -0.415556,
		6.787426, 15.524816, 10.735715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.961017, 15.672699, 10.606436>,  <6.389102, 16.021526, 11.026605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.961017, 15.672699, 10.606436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.267212, 15.420462, 10.657630>,  <6.450930, 15.269119, 10.688347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.267212, 15.420462, 10.657630>,  <5.961017, 15.672699, 10.606436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.267212, 15.420462, 10.657630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637911, -0.769777, 0.022644,
		0.084241, -0.098977, -0.991518,
		0.765488, -0.630593, 0.127986,
		6.496859, 15.231284, 10.696026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.702436, 15.021411, 10.229939>,  <5.961017, 15.672699, 10.606436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.702436, 15.021411, 10.229939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.016313, 14.886637, 10.438068>,  <6.204639, 14.805772, 10.562945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.016313, 14.886637, 10.438068>,  <5.702436, 15.021411, 10.229939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.016313, 14.886637, 10.438068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471682, -0.869174, 0.148504,
		0.402213, -0.361956, -0.840959,
		0.784692, -0.336935, 0.520321,
		6.251720, 14.785556, 10.594165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.895145, 14.385780, 10.032436>,  <5.702436, 15.021411, 10.229939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.895145, 14.385780, 10.032436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.035697, 14.401083, 10.406616>,  <6.120029, 14.410265, 10.631124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.035697, 14.401083, 10.406616>,  <5.895145, 14.385780, 10.032436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.035697, 14.401083, 10.406616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436500, -0.877230, 0.199837,
		0.828250, -0.478544, -0.291543,
		0.351382, 0.038256, 0.935450,
		6.141112, 14.412560, 10.687251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.115215, 13.780638, 10.115759>,  <5.895145, 14.385780, 10.032436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.115215, 13.780638, 10.115759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.080040, 13.896255, 10.497066>,  <6.058934, 13.965625, 10.725851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.080040, 13.896255, 10.497066>,  <6.115215, 13.780638, 10.115759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.080040, 13.896255, 10.497066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436464, -0.871403, 0.223955,
		0.895414, -0.396374, 0.202787,
		-0.087939, 0.289041, 0.953269,
		6.053658, 13.982967, 10.783047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.187812, 13.133396, 10.467713>,  <6.115215, 13.780638, 10.115759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.187812, 13.133396, 10.467713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.046721, 13.370485, 10.757338>,  <5.962066, 13.512739, 10.931112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.046721, 13.370485, 10.757338>,  <6.187812, 13.133396, 10.467713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.046721, 13.370485, 10.757338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252889, -0.805384, 0.536101,
		0.900905, 0.005991, 0.433975,
		-0.352728, 0.592723, 0.724059,
		5.940903, 13.548303, 10.974555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.489383, 13.059313, 11.124289>,  <6.187812, 13.133396, 10.467713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.489383, 13.059313, 11.124289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.110707, 13.165936, 11.196651>,  <5.883502, 13.229909, 11.240069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.110707, 13.165936, 11.196651>,  <6.489383, 13.059313, 11.124289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.110707, 13.165936, 11.196651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051989, -0.680616, 0.730793,
		0.317926, 0.682429, 0.658190,
		-0.946689, 0.266557, 0.180907,
		5.826701, 13.245903, 11.250923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.611495, 12.265047, 11.112223>,  <6.489383, 13.059313, 11.124289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.611495, 12.265047, 11.112223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.982442, 12.361551, 10.997831>,  <7.205010, 12.419454, 10.929196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.982442, 12.361551, 10.997831>,  <6.611495, 12.265047, 11.112223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.982442, 12.361551, 10.997831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110885, 0.552780, 0.825917,
		0.357343, -0.797639, 0.485878,
		0.927368, 0.241259, -0.285978,
		7.260652, 12.433929, 10.912038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.008466, 12.155970, 11.758844>,  <6.611495, 12.265047, 11.112223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.008466, 12.155970, 11.758844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.198394, 12.406225, 11.511257>,  <7.312351, 12.556378, 11.362705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.198394, 12.406225, 11.511257>,  <7.008466, 12.155970, 11.758844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.198394, 12.406225, 11.511257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457302, 0.425515, 0.780904,
		0.751945, -0.653844, -0.084064,
		0.474820, 0.625639, -0.618968,
		7.340840, 12.593917, 11.325566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.799620, 12.259967, 11.947288>,  <7.008466, 12.155970, 11.758844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.799620, 12.259967, 11.947288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.601418, 12.573065, 11.796670>,  <7.482497, 12.760923, 11.706299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.601418, 12.573065, 11.796670>,  <7.799620, 12.259967, 11.947288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.601418, 12.573065, 11.796670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432674, 0.598321, 0.674393,
		0.753171, 0.171244, -0.635144,
		-0.495506, 0.782744, -0.376545,
		7.452766, 12.807888, 11.683706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.299303, 12.835514, 11.938804>,  <7.799620, 12.259967, 11.947288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.299303, 12.835514, 11.938804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.925036, 12.976415, 11.947243>,  <7.700476, 13.060955, 11.952307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.925036, 12.976415, 11.947243>,  <8.299303, 12.835514, 11.938804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.925036, 12.976415, 11.947243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235760, 0.579509, 0.780119,
		0.262572, 0.734907, -0.625275,
		-0.935667, 0.352252, 0.021099,
		7.644336, 13.082090, 11.953572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.113413, 13.646569, 11.757420>,  <8.299303, 12.835514, 11.938804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.113413, 13.646569, 11.757420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.891568, 13.469172, 12.039048>,  <7.758461, 13.362733, 12.208025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.891568, 13.469172, 12.039048>,  <8.113413, 13.646569, 11.757420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.891568, 13.469172, 12.039048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444735, 0.557153, 0.701278,
		-0.703288, 0.702064, -0.111767,
		-0.554613, -0.443494, 0.704072,
		7.725183, 13.336123, 12.250270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.840759, 14.202611, 12.107202>,  <8.113413, 13.646569, 11.757420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.840759, 14.202611, 12.107202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.873118, 13.879882, 12.341293>,  <7.892534, 13.686244, 12.481749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.873118, 13.879882, 12.341293>,  <7.840759, 14.202611, 12.107202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.873118, 13.879882, 12.341293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527541, 0.532830, 0.661659,
		-0.845669, 0.255206, 0.468737,
		0.080897, -0.806823, 0.585229,
		7.897388, 13.637836, 12.516862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.530762, 14.387815, 12.732438>,  <7.840759, 14.202611, 12.107202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.530762, 14.387815, 12.732438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.766225, 14.076872, 12.821161>,  <7.907503, 13.890306, 12.874395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.766225, 14.076872, 12.821161>,  <7.530762, 14.387815, 12.732438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.766225, 14.076872, 12.821161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411695, 0.524423, 0.745311,
		-0.695694, -0.347416, 0.628739,
		0.588658, -0.777357, 0.221809,
		7.942822, 13.843665, 12.887704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.475102, 14.345057, 13.406929>,  <7.530762, 14.387815, 12.732438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.475102, 14.345057, 13.406929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.799448, 14.120829, 13.339689>,  <7.994056, 13.986291, 13.299346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.799448, 14.120829, 13.339689>,  <7.475102, 14.345057, 13.406929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.799448, 14.120829, 13.339689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435689, 0.386455, 0.812913,
		-0.390734, -0.732401, 0.557598,
		0.810865, -0.560572, -0.168098,
		8.042707, 13.952657, 13.289260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.636625, 13.917776, 14.081748>,  <7.475102, 14.345057, 13.406929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.636625, 13.917776, 14.081748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.947700, 13.990654, 13.841079>,  <8.134344, 14.034381, 13.696677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.947700, 13.990654, 13.841079>,  <7.636625, 13.917776, 14.081748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.947700, 13.990654, 13.841079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529309, 0.326596, 0.783050,
		0.339163, -0.927439, 0.157559,
		0.777689, 0.182184, -0.601671,
		8.181005, 14.045312, 13.660577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.128798, 13.739095, 14.554555>,  <7.636625, 13.917776, 14.081748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.128798, 13.739095, 14.554555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.284511, 13.975532, 14.271976>,  <8.377938, 14.117393, 14.102427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.284511, 13.975532, 14.271976>,  <8.128798, 13.739095, 14.554555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.284511, 13.975532, 14.271976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611053, 0.408174, 0.678238,
		0.689256, -0.695703, -0.202295,
		0.389281, 0.591093, -0.706448,
		8.401295, 14.152860, 14.060041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.871431, 13.623977, 14.559122>,  <8.128798, 13.739095, 14.554555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.871431, 13.623977, 14.559122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.852608, 13.965709, 14.352084>,  <8.841313, 14.170748, 14.227861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.852608, 13.965709, 14.352084>,  <8.871431, 13.623977, 14.559122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.852608, 13.965709, 14.352084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683165, 0.405560, 0.607295,
		0.728746, -0.325024, -0.602734,
		-0.047059, 0.854331, -0.517595,
		8.838490, 14.222008, 14.196806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.509820, 13.711970, 14.338458>,  <8.871431, 13.623977, 14.559122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.509820, 13.711970, 14.338458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.339851, 14.074059, 14.340093>,  <9.237870, 14.291311, 14.341073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.339851, 14.074059, 14.340093>,  <9.509820, 13.711970, 14.338458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.339851, 14.074059, 14.340093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658798, 0.306147, 0.687211,
		0.620826, 0.294704, -0.726446,
		-0.424923, 0.905220, 0.004086,
		9.212375, 14.345625, 14.341318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.024518, 14.215425, 14.342807>,  <9.509820, 13.711970, 14.338458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.024518, 14.215425, 14.342807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.715092, 14.430354, 14.477198>,  <9.529436, 14.559311, 14.557832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.715092, 14.430354, 14.477198>,  <10.024518, 14.215425, 14.342807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.715092, 14.430354, 14.477198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620742, 0.535747, 0.572411,
		0.127570, 0.651352, -0.747974,
		-0.773567, 0.537322, 0.335976,
		9.483022, 14.591551, 14.577991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.302625, 14.918858, 14.398629>,  <10.024518, 14.215425, 14.342807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.302625, 14.918858, 14.398629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970140, 14.912457, 14.620919>,  <9.770650, 14.908616, 14.754293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970140, 14.912457, 14.620919>,  <10.302625, 14.918858, 14.398629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.970140, 14.912457, 14.620919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493752, 0.438185, 0.751134,
		-0.255531, 0.898742, -0.356324,
		-0.831211, -0.016002, 0.555726,
		9.720777, 14.907656, 14.787637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.170429, 15.648874, 14.682816>,  <10.302625, 14.918858, 14.398629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.170429, 15.648874, 14.682816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959185, 15.423156, 14.936641>,  <9.832438, 15.287724, 15.088936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959185, 15.423156, 14.936641>,  <10.170429, 15.648874, 14.682816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.959185, 15.423156, 14.936641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421619, 0.474410, 0.772769,
		-0.737113, 0.675652, -0.012623,
		-0.528111, -0.564296, 0.634562,
		9.800752, 15.253867, 15.127009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.057435, 16.097851, 15.205992>,  <10.170429, 15.648874, 14.682816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.057435, 16.097851, 15.205992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959384, 15.751033, 15.379495>,  <9.900554, 15.542942, 15.483596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959384, 15.751033, 15.379495>,  <10.057435, 16.097851, 15.205992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.959384, 15.751033, 15.379495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360539, 0.333791, 0.870973,
		-0.899958, 0.369886, 0.230783,
		-0.245127, -0.867046, 0.433756,
		9.885846, 15.490919, 15.509622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.025893, 16.291765, 15.963782>,  <10.057435, 16.097851, 15.205992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.025893, 16.291765, 15.963782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030604, 15.891861, 15.971186>,  <10.033431, 15.651918, 15.975628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030604, 15.891861, 15.971186>,  <10.025893, 16.291765, 15.963782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030604, 15.891861, 15.971186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375341, 0.021576, 0.926636,
		-0.926812, -0.003967, 0.375505,
		0.011777, -0.999759, 0.018508,
		10.034138, 15.591933, 15.976738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.647815, 16.059587, 16.597441>,  <10.025893, 16.291765, 15.963782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.647815, 16.059587, 16.597441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.900952, 15.773107, 16.479755>,  <10.052835, 15.601218, 16.409143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.900952, 15.773107, 16.479755>,  <9.647815, 16.059587, 16.597441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.900952, 15.773107, 16.479755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300286, -0.123219, 0.945857,
		-0.713678, -0.686928, 0.137087,
		0.632844, -0.716203, -0.294214,
		10.090806, 15.558246, 16.391491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.511355, 15.564038, 16.997173>,  <9.647815, 16.059587, 16.597441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.511355, 15.564038, 16.997173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.886286, 15.498220, 16.874310>,  <10.111244, 15.458730, 16.800592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.886286, 15.498220, 16.874310>,  <9.511355, 15.564038, 16.997173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.886286, 15.498220, 16.874310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269496, -0.216458, 0.938359,
		-0.220924, -0.962319, -0.158535,
		0.937318, -0.164582, -0.307162,
		10.167483, 15.448857, 16.782162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.660736, 14.981354, 17.317263>,  <9.511355, 15.564038, 16.997173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.660736, 14.981354, 17.317263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.018257, 15.123013, 17.207211>,  <10.232770, 15.208008, 17.141180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.018257, 15.123013, 17.207211>,  <9.660736, 14.981354, 17.317263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.018257, 15.123013, 17.207211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328724, -0.100067, 0.939110,
		0.305052, -0.929821, -0.205857,
		0.893803, 0.354147, -0.275129,
		10.286398, 15.229257, 17.124672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.089954, 14.488819, 17.565567>,  <9.660736, 14.981354, 17.317263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.089954, 14.488819, 17.565567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.292889, 14.829360, 17.512186>,  <10.414649, 15.033685, 17.480158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.292889, 14.829360, 17.512186>,  <10.089954, 14.488819, 17.565567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.292889, 14.829360, 17.512186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281075, -0.017087, 0.959534,
		0.814621, -0.524315, -0.247963,
		0.507335, 0.851353, -0.133453,
		10.445089, 15.084765, 17.472151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.688788, 14.340118, 17.897432>,  <10.089954, 14.488819, 17.565567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.688788, 14.340118, 17.897432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.646370, 14.737335, 17.876951>,  <10.620919, 14.975665, 17.864662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.646370, 14.737335, 17.876951>,  <10.688788, 14.340118, 17.897432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.646370, 14.737335, 17.876951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340393, 0.084637, 0.936466,
		0.934284, 0.081878, -0.347000,
		-0.106045, 0.993042, -0.051204,
		10.614556, 15.035248, 17.861589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.234783, 14.637952, 18.328001>,  <10.688788, 14.340118, 17.897432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.234783, 14.637952, 18.328001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.972303, 14.933987, 18.269112>,  <10.814816, 15.111608, 18.233778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.972303, 14.933987, 18.269112>,  <11.234783, 14.637952, 18.328001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.972303, 14.933987, 18.269112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185582, 0.347393, 0.919172,
		0.731410, 0.575839, -0.365306,
		-0.656200, 0.740086, -0.147222,
		10.775443, 15.156013, 18.224945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558159, 15.141553, 18.657396>,  <11.234783, 14.637952, 18.328001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558159, 15.141553, 18.657396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.176856, 15.257255, 18.622452>,  <10.948074, 15.326675, 18.601484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.176856, 15.257255, 18.622452>,  <11.558159, 15.141553, 18.657396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.176856, 15.257255, 18.622452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090417, 0.548946, 0.830953,
		0.288314, 0.784213, -0.549441,
		-0.953257, 0.289254, -0.087363,
		10.890879, 15.344031, 18.596243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.515672, 15.853046, 18.666012>,  <11.558159, 15.141553, 18.657396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.515672, 15.853046, 18.666012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.137503, 15.766132, 18.763142>,  <10.910602, 15.713984, 18.821421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.137503, 15.766132, 18.763142>,  <11.515672, 15.853046, 18.666012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.137503, 15.766132, 18.763142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003254, 0.738875, 0.673835,
		-0.325833, 0.637848, -0.697842,
		-0.945422, -0.217286, 0.242826,
		10.853876, 15.700947, 18.835989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193996, 16.588846, 18.828573>,  <11.515672, 15.853046, 18.666012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193996, 16.588846, 18.828573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.955482, 16.308201, 18.984613>,  <10.812372, 16.139812, 19.078238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.955482, 16.308201, 18.984613>,  <11.193996, 16.588846, 18.828573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.955482, 16.308201, 18.984613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219890, 0.610107, 0.761195,
		-0.772068, 0.368112, -0.518078,
		-0.596288, -0.701614, 0.390100,
		10.776595, 16.097717, 19.101643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.703123, 16.887768, 19.269142>,  <11.193996, 16.588846, 18.828573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.703123, 16.887768, 19.269142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.621249, 16.518635, 19.399672>,  <10.572125, 16.297155, 19.477989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.621249, 16.518635, 19.399672>,  <10.703123, 16.887768, 19.269142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.621249, 16.518635, 19.399672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353059, 0.380547, 0.854712,
		-0.912937, 0.059734, -0.403706,
		-0.204684, -0.922830, 0.326326,
		10.559844, 16.241785, 19.497570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.964428, 16.842981, 19.568584>,  <10.703123, 16.887768, 19.269142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.964428, 16.842981, 19.568584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.166980, 16.542645, 19.738203>,  <10.288511, 16.362442, 19.839973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.166980, 16.542645, 19.738203>,  <9.964428, 16.842981, 19.568584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.166980, 16.542645, 19.738203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343451, 0.275452, 0.897868,
		-0.790963, -0.600301, -0.118394,
		0.506379, -0.750843, 0.424046,
		10.318893, 16.317392, 19.865417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.514045, 16.541260, 20.061726>,  <9.964428, 16.842981, 19.568584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.514045, 16.541260, 20.061726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.880196, 16.439165, 20.186266>,  <10.099886, 16.377909, 20.260990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.880196, 16.439165, 20.186266>,  <9.514045, 16.541260, 20.061726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.880196, 16.439165, 20.186266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300676, 0.080872, 0.950291,
		-0.267727, -0.963491, -0.002714,
		0.915377, -0.255235, 0.311350,
		10.154809, 16.362595, 20.279671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.345446, 16.287497, 20.731686>,  <9.514045, 16.541260, 20.061726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.345446, 16.287497, 20.731686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.744818, 16.303654, 20.716171>,  <9.984441, 16.313349, 20.706863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.744818, 16.303654, 20.716171>,  <9.345446, 16.287497, 20.731686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.744818, 16.303654, 20.716171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042011, -0.082376, 0.995715,
		0.037026, -0.995782, -0.083943,
		0.998431, 0.040394, -0.038784,
		10.044347, 16.315771, 20.704536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.545229, 15.770012, 21.317366>,  <9.345446, 16.287497, 20.731686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.545229, 15.770012, 21.317366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.867574, 15.989354, 21.228018>,  <10.060981, 16.120960, 21.174410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.867574, 15.989354, 21.228018>,  <9.545229, 15.770012, 21.317366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.867574, 15.989354, 21.228018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135740, 0.196104, 0.971143,
		0.576336, -0.812926, 0.083598,
		0.805861, 0.548357, -0.223368,
		10.109332, 16.153862, 21.161007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.161714, 15.477510, 21.650444>,  <9.545229, 15.770012, 21.317366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.161714, 15.477510, 21.650444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.199697, 15.868729, 21.576244>,  <10.222487, 16.103460, 21.531725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.199697, 15.868729, 21.576244>,  <10.161714, 15.477510, 21.650444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.199697, 15.868729, 21.576244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237495, 0.158703, 0.958337,
		0.966736, -0.135058, -0.217210,
		0.094959, 0.978045, -0.185500,
		10.228186, 16.162142, 21.520594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.573879, 15.665651, 22.232347>,  <10.161714, 15.477510, 21.650444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.573879, 15.665651, 22.232347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.448429, 16.023731, 22.105696>,  <10.373158, 16.238579, 22.029705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.448429, 16.023731, 22.105696>,  <10.573879, 15.665651, 22.232347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.448429, 16.023731, 22.105696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169609, 0.380906, 0.908924,
		0.934276, 0.231359, -0.271296,
		-0.313626, 0.895200, -0.316631,
		10.354342, 16.292292, 22.010706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.051397, 16.060917, 22.503027>,  <10.573879, 15.665651, 22.232347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.051397, 16.060917, 22.503027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.718429, 16.276571, 22.451794>,  <10.518647, 16.405964, 22.421053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.718429, 16.276571, 22.451794>,  <11.051397, 16.060917, 22.503027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.718429, 16.276571, 22.451794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059212, 0.316354, 0.946791,
		0.550971, 0.780545, -0.295263,
		-0.832421, 0.539138, -0.128084,
		10.468702, 16.438313, 22.413368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.241571, 16.617952, 22.709057>,  <11.051397, 16.060917, 22.503027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.241571, 16.617952, 22.709057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.843980, 16.631397, 22.750774>,  <10.605425, 16.639465, 22.775805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.843980, 16.631397, 22.750774>,  <11.241571, 16.617952, 22.709057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.843980, 16.631397, 22.750774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109549, 0.326209, 0.938928,
		-0.002460, 0.944700, -0.327928,
		-0.993978, 0.033614, 0.104293,
		10.545786, 16.641481, 22.782063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.045316, 17.221008, 23.133053>,  <11.241571, 16.617952, 22.709057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.045316, 17.221008, 23.133053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.707535, 17.014397, 23.189760>,  <10.504866, 16.890430, 23.223785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.707535, 17.014397, 23.189760>,  <11.045316, 17.221008, 23.133053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.707535, 17.014397, 23.189760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063137, 0.358823, 0.931268,
		-0.531895, 0.777461, -0.335621,
		-0.844453, -0.516527, 0.141770,
		10.454199, 16.859438, 23.232290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.656426, 17.664478, 23.496807>,  <11.045316, 17.221008, 23.133053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.656426, 17.664478, 23.496807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.489050, 17.304972, 23.549158>,  <10.388624, 17.089268, 23.580568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.489050, 17.304972, 23.549158>,  <10.656426, 17.664478, 23.496807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489050, 17.304972, 23.549158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180355, 0.223453, 0.957884,
		-0.890156, 0.377215, -0.255599,
		-0.418442, -0.898765, 0.130875,
		10.363517, 17.035343, 23.588421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.106780, 17.790621, 23.826540>,  <10.656426, 17.664478, 23.496807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.106780, 17.790621, 23.826540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.169639, 17.406324, 23.918001>,  <10.207354, 17.175747, 23.972878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.169639, 17.406324, 23.918001>,  <10.106780, 17.790621, 23.826540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.169639, 17.406324, 23.918001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149104, 0.205792, 0.967170,
		-0.976254, -0.186081, -0.110910,
		0.157147, -0.960741, 0.228651,
		10.216783, 17.118101, 23.986597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.623796, 17.510912, 24.323786>,  <10.106780, 17.790621, 23.826540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.623796, 17.510912, 24.323786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.940087, 17.272791, 24.380867>,  <10.129862, 17.129919, 24.415115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.940087, 17.272791, 24.380867>,  <9.623796, 17.510912, 24.323786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.940087, 17.272791, 24.380867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125912, 0.069966, 0.989571,
		-0.599079, -0.800450, -0.019631,
		0.790728, -0.595303, 0.142701,
		10.177306, 17.094200, 24.423677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.530571, 16.910194, 24.736094>,  <9.623796, 17.510912, 24.323786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.530571, 16.910194, 24.736094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.925540, 16.956699, 24.778948>,  <10.162521, 16.984602, 24.804661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.925540, 16.956699, 24.778948>,  <9.530571, 16.910194, 24.736094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.925540, 16.956699, 24.778948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096588, -0.092862, 0.990983,
		0.125163, -0.988868, -0.080464,
		0.987423, 0.116263, 0.107135,
		10.221767, 16.991579, 24.811089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.803985, 16.459528, 25.311764>,  <9.530571, 16.910194, 24.736094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.803985, 16.459528, 25.311764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.083947, 16.743780, 25.283098>,  <10.251925, 16.914331, 25.265898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.083947, 16.743780, 25.283098>,  <9.803985, 16.459528, 25.311764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.083947, 16.743780, 25.283098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091181, 0.010617, 0.995778,
		0.708390, -0.703486, -0.057365,
		0.699907, 0.710630, -0.071665,
		10.293920, 16.956968, 25.261599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.229054, 16.355247, 25.969673>,  <9.803985, 16.459528, 25.311764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.229054, 16.355247, 25.969673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.444958, 16.657335, 25.820917>,  <10.574500, 16.838589, 25.731663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.444958, 16.657335, 25.820917>,  <10.229054, 16.355247, 25.969673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.444958, 16.657335, 25.820917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125951, 0.364349, 0.922706,
		0.832345, -0.544878, 0.101539,
		0.539758, 0.755220, -0.371892,
		10.606885, 16.883902, 25.709349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.949257, 16.433138, 26.340296>,  <10.229054, 16.355247, 25.969673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.949257, 16.433138, 26.340296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.912798, 16.802073, 26.190102>,  <10.890923, 17.023434, 26.099985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.912798, 16.802073, 26.190102>,  <10.949257, 16.433138, 26.340296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.912798, 16.802073, 26.190102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475432, 0.371614, 0.797413,
		0.875018, -0.105836, -0.472379,
		-0.091147, 0.922335, -0.375487,
		10.885454, 17.078773, 26.077456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.599812, 16.809137, 26.331741>,  <10.949257, 16.433138, 26.340296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.599812, 16.809137, 26.331741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.293939, 17.066082, 26.352262>,  <11.110415, 17.220249, 26.364576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.293939, 17.066082, 26.352262>,  <11.599812, 16.809137, 26.331741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.293939, 17.066082, 26.352262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156720, 0.108157, 0.981703,
		0.625059, 0.758733, -0.183376,
		-0.764683, 0.642361, 0.051304,
		11.064533, 17.258791, 26.367653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906465, 17.389046, 26.530220>,  <11.599812, 16.809137, 26.331741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906465, 17.389046, 26.530220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.516391, 17.438942, 26.603384>,  <11.282347, 17.468880, 26.647284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.516391, 17.438942, 26.603384>,  <11.906465, 17.389046, 26.530220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.516391, 17.438942, 26.603384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219015, 0.422624, 0.879444,
		0.032401, 0.897680, -0.439456,
		-0.975183, 0.124742, 0.182912,
		11.223836, 17.476364, 26.658258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.805602, 18.066624, 26.863132>,  <11.906465, 17.389046, 26.530220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.805602, 18.066624, 26.863132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457908, 17.881548, 26.932816>,  <11.249291, 17.770502, 26.974625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457908, 17.881548, 26.932816>,  <11.805602, 18.066624, 26.863132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.457908, 17.881548, 26.932816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075232, 0.472043, 0.878360,
		-0.488642, 0.750395, -0.445125,
		-0.869235, -0.462691, 0.174206,
		11.197137, 17.742741, 26.985077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.453163, 18.521908, 27.418308>,  <11.805602, 18.066624, 26.863132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.453163, 18.521908, 27.418308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251811, 18.176355, 27.425488>,  <11.131000, 17.969025, 27.429796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251811, 18.176355, 27.425488>,  <11.453163, 18.521908, 27.418308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251811, 18.176355, 27.425488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249693, 0.165320, 0.954108,
		-0.827202, 0.475796, -0.298924,
		-0.503379, -0.863879, 0.017950,
		11.100798, 17.917192, 27.430872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.775415, 18.563192, 27.737980>,  <11.453163, 18.521908, 27.418308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.775415, 18.563192, 27.737980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894200, 18.185017, 27.791584>,  <10.965471, 17.958111, 27.823748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894200, 18.185017, 27.791584>,  <10.775415, 18.563192, 27.737980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.894200, 18.185017, 27.791584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286029, 0.045826, 0.957125,
		-0.911044, -0.322562, -0.256814,
		0.296963, -0.945439, 0.134012,
		10.983290, 17.901384, 27.831787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.223965, 18.157328, 27.911486>,  <10.775415, 18.563192, 27.737980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.223965, 18.157328, 27.911486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564829, 18.016609, 28.066437>,  <10.769347, 17.932178, 28.159409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564829, 18.016609, 28.066437>,  <10.223965, 18.157328, 27.911486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564829, 18.016609, 28.066437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315339, 0.245535, 0.916664,
		-0.417594, -0.903301, 0.098300,
		0.852160, -0.351796, 0.387380,
		10.820477, 17.911070, 28.182652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.160467, 17.850883, 28.556982>,  <10.223965, 18.157328, 27.911486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.160467, 17.850883, 28.556982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.542677, 17.954781, 28.612846>,  <10.772003, 18.017118, 28.646364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.542677, 17.954781, 28.612846>,  <10.160467, 17.850883, 28.556982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.542677, 17.954781, 28.612846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223113, 0.327013, 0.918304,
		0.192850, -0.908624, 0.370421,
		0.955526, 0.259741, 0.139661,
		10.829334, 18.032703, 28.654745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.491468, 17.716181, 29.255470>,  <10.160467, 17.850883, 28.556982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.491468, 17.716181, 29.255470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.718538, 18.017628, 29.122923>,  <10.854780, 18.198496, 29.043394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.718538, 18.017628, 29.122923>,  <10.491468, 17.716181, 29.255470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.718538, 18.017628, 29.122923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002304, 0.401055, 0.916051,
		0.823250, -0.520782, 0.225932,
		0.567674, 0.753619, -0.331368,
		10.888841, 18.243713, 29.023512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.192720, 17.855228, 29.682854>,  <10.491468, 17.716181, 29.255470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.192720, 17.855228, 29.682854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.081455, 18.188574, 29.491800>,  <11.014696, 18.388580, 29.377169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.081455, 18.188574, 29.491800>,  <11.192720, 17.855228, 29.682854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.081455, 18.188574, 29.491800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009459, 0.499611, 0.866199,
		0.960487, 0.236427, -0.146856,
		-0.278164, 0.833362, -0.477633,
		10.998006, 18.438581, 29.348511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.784751, 18.390982, 29.928389>,  <11.192720, 17.855228, 29.682854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.784751, 18.390982, 29.928389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.433169, 18.533976, 29.802124>,  <11.222220, 18.619772, 29.726364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.433169, 18.533976, 29.802124>,  <11.784751, 18.390982, 29.928389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.433169, 18.533976, 29.802124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107527, 0.496301, 0.861466,
		0.464626, 0.791131, -0.397787,
		-0.878954, 0.357487, -0.315662,
		11.169483, 18.641222, 29.707426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.128163, 18.347387, 29.352545>,  <11.784751, 18.390982, 29.928389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.128163, 18.347387, 29.352545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.477723, 18.240511, 29.514980>,  <12.687459, 18.176384, 29.612442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.477723, 18.240511, 29.514980>,  <12.128163, 18.347387, 29.352545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.477723, 18.240511, 29.514980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054931, -0.884319, -0.463641,
		0.482993, 0.382869, -0.787483,
		0.873899, -0.267193, 0.406089,
		12.739893, 18.160353, 29.636806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.630163, 18.014456, 28.811213>,  <12.128163, 18.347387, 29.352545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.630163, 18.014456, 28.811213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.625974, 17.842573, 29.172375>,  <12.623460, 17.739443, 29.389072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.625974, 17.842573, 29.172375>,  <12.630163, 18.014456, 28.811213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.625974, 17.842573, 29.172375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068089, -0.900554, -0.429379,
		0.997624, -0.065975, -0.019826,
		-0.010474, -0.429709, 0.902907,
		12.622831, 17.713661, 29.443247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181833, 17.569508, 28.917004>,  <12.630163, 18.014456, 28.811213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181833, 17.569508, 28.917004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.873619, 17.430462, 29.130711>,  <12.688690, 17.347034, 29.258934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.873619, 17.430462, 29.130711>,  <13.181833, 17.569508, 28.917004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.873619, 17.430462, 29.130711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112927, -0.899390, -0.422310,
		0.627315, -0.265071, 0.732266,
		-0.770535, -0.347614, 0.534267,
		12.642459, 17.326178, 29.290991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300982, 16.846701, 29.018415>,  <13.181833, 17.569508, 28.917004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300982, 16.846701, 29.018415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.908679, 16.856493, 29.095888>,  <12.673297, 16.862370, 29.142372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.908679, 16.856493, 29.095888>,  <13.300982, 16.846701, 29.018415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.908679, 16.856493, 29.095888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136233, -0.796438, -0.589176,
		0.139832, -0.604225, 0.784448,
		-0.980759, 0.024482, 0.193683,
		12.614451, 16.863838, 29.153994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.063733, 16.121899, 29.196634>,  <13.300982, 16.846701, 29.018415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.063733, 16.121899, 29.196634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745125, 16.308949, 29.043333>,  <12.553960, 16.421179, 28.951353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745125, 16.308949, 29.043333>,  <13.063733, 16.121899, 29.196634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745125, 16.308949, 29.043333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115055, -0.739533, -0.663214,
		-0.593563, -0.484168, 0.642856,
		-0.796521, 0.467624, -0.383254,
		12.506168, 16.449236, 28.928356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.461277, 15.579049, 29.099560>,  <13.063733, 16.121899, 29.196634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.461277, 15.579049, 29.099560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.398359, 15.892686, 28.859407>,  <12.360608, 16.080868, 28.715317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.398359, 15.892686, 28.859407>,  <12.461277, 15.579049, 29.099560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.398359, 15.892686, 28.859407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262876, -0.619258, -0.739875,
		-0.951922, 0.041447, 0.303525,
		-0.157295, 0.784093, -0.600381,
		12.351171, 16.127914, 28.679293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.787762, 15.381007, 28.760244>,  <12.461277, 15.579049, 29.099560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.787762, 15.381007, 28.760244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.988092, 15.636055, 28.526112>,  <12.108291, 15.789083, 28.385632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.988092, 15.636055, 28.526112>,  <11.787762, 15.381007, 28.760244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.988092, 15.636055, 28.526112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184367, -0.582151, -0.791902,
		-0.845684, 0.504522, -0.174001,
		0.500827, 0.637619, -0.585333,
		12.138341, 15.827340, 28.350512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.382476, 15.404137, 28.079659>,  <11.787762, 15.381007, 28.760244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.382476, 15.404137, 28.079659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.738871, 15.543508, 27.963217>,  <11.952707, 15.627131, 27.893353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.738871, 15.543508, 27.963217>,  <11.382476, 15.404137, 28.079659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.738871, 15.543508, 27.963217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037746, -0.582090, -0.812248,
		-0.452458, 0.734690, -0.505483,
		0.890987, 0.348428, -0.291103,
		12.006166, 15.648036, 27.875885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302642, 15.361395, 27.454248>,  <11.382476, 15.404137, 28.079659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302642, 15.361395, 27.454248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.700245, 15.401908, 27.470705>,  <11.938807, 15.426216, 27.480579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.700245, 15.401908, 27.470705>,  <11.302642, 15.361395, 27.454248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.700245, 15.401908, 27.470705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092485, -0.578429, -0.810473,
		-0.058288, 0.809420, -0.584330,
		0.994007, 0.101282, 0.041144,
		11.998446, 15.432293, 27.483047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532209, 15.605805, 26.757572>,  <11.302642, 15.361395, 27.454248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.532209, 15.605805, 26.757572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.886310, 15.472300, 26.887146>,  <12.098770, 15.392196, 26.964890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.886310, 15.472300, 26.887146>,  <11.532209, 15.605805, 26.757572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.886310, 15.472300, 26.887146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165770, -0.424315, -0.890212,
		0.434572, 0.841759, -0.320297,
		0.885250, -0.333765, 0.323934,
		12.151885, 15.372170, 26.984325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998020, 15.678342, 26.226301>,  <11.532209, 15.605805, 26.757572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998020, 15.678342, 26.226301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.200612, 15.418722, 26.453356>,  <12.322167, 15.262950, 26.589588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.200612, 15.418722, 26.453356>,  <11.998020, 15.678342, 26.226301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.200612, 15.418722, 26.453356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215512, -0.542136, -0.812184,
		0.834884, 0.533688, -0.134704,
		0.506481, -0.649049, 0.567637,
		12.352556, 15.224008, 26.623648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.619874, 15.614546, 25.931547>,  <11.998020, 15.678342, 26.226301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.619874, 15.614546, 25.931547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.570287, 15.278197, 26.142284>,  <12.540534, 15.076388, 26.268726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.570287, 15.278197, 26.142284>,  <12.619874, 15.614546, 25.931547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.570287, 15.278197, 26.142284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146361, -0.540628, -0.828432,
		0.981433, -0.025589, 0.190092,
		-0.123968, -0.840872, 0.526845,
		12.533096, 15.025935, 26.300339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182319, 15.217699, 25.757023>,  <12.619874, 15.614546, 25.931547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182319, 15.217699, 25.757023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.906298, 14.970828, 25.908241>,  <12.740685, 14.822705, 25.998972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.906298, 14.970828, 25.908241>,  <13.182319, 15.217699, 25.757023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.906298, 14.970828, 25.908241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101238, -0.599510, -0.793939,
		0.716644, -0.509587, 0.476175,
		-0.690052, -0.617178, 0.378045,
		12.699282, 14.785674, 26.021654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.439355, 14.607689, 25.517603>,  <13.182319, 15.217699, 25.757023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.439355, 14.607689, 25.517603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.057210, 14.531199, 25.607683>,  <12.827923, 14.485306, 25.661732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.057210, 14.531199, 25.607683>,  <13.439355, 14.607689, 25.517603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.057210, 14.531199, 25.607683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085199, -0.551550, -0.829779,
		0.282884, -0.811927, 0.510638,
		-0.955363, -0.191225, 0.225200,
		12.770601, 14.473832, 25.675243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.375698, 13.921354, 25.294872>,  <13.439355, 14.607689, 25.517603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.375698, 13.921354, 25.294872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.996431, 14.043811, 25.328951>,  <12.768871, 14.117285, 25.349398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.996431, 14.043811, 25.328951>,  <13.375698, 13.921354, 25.294872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.996431, 14.043811, 25.328951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219475, -0.437004, -0.872272,
		-0.229806, -0.845758, 0.481543,
		-0.948167, 0.306140, 0.085197,
		12.711982, 14.135653, 25.354509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.003632, 13.294256, 25.207293>,  <13.375698, 13.921354, 25.294872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.003632, 13.294256, 25.207293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.758529, 13.596053, 25.113255>,  <12.611466, 13.777131, 25.056831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.758529, 13.596053, 25.113255>,  <13.003632, 13.294256, 25.207293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.758529, 13.596053, 25.113255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206486, -0.440009, -0.873931,
		-0.762818, -0.486965, 0.425411,
		-0.612758, 0.754492, -0.235095,
		12.574701, 13.822401, 25.042727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410824, 13.030506, 24.997513>,  <13.003632, 13.294256, 25.207293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410824, 13.030506, 24.997513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.370615, 13.396202, 24.840509>,  <12.346489, 13.615620, 24.746307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.370615, 13.396202, 24.840509>,  <12.410824, 13.030506, 24.997513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.370615, 13.396202, 24.840509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403508, -0.398066, -0.823848,
		-0.909437, 0.075564, 0.408918,
		-0.100523, 0.914239, -0.392506,
		12.340458, 13.670474, 24.722757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.672093, 13.165961, 24.829296>,  <12.410824, 13.030506, 24.997513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.672093, 13.165961, 24.829296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.887379, 13.407243, 24.593849>,  <12.016550, 13.552011, 24.452581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.887379, 13.407243, 24.593849>,  <11.672093, 13.165961, 24.829296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.887379, 13.407243, 24.593849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401126, -0.430893, -0.808350,
		-0.741231, 0.671175, 0.010048,
		0.538214, 0.603204, -0.588617,
		12.048843, 13.588204, 24.417265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.247674, 13.517852, 24.402094>,  <11.672093, 13.165961, 24.829296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.247674, 13.517852, 24.402094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.592007, 13.543859, 24.200207>,  <11.798606, 13.559464, 24.079075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.592007, 13.543859, 24.200207>,  <11.247674, 13.517852, 24.402094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.592007, 13.543859, 24.200207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484854, -0.196422, -0.852253,
		-0.154551, 0.978361, -0.137561,
		0.860831, 0.065020, -0.504719,
		11.850256, 13.563365, 24.048790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.098965, 14.046325, 23.834644>,  <11.247674, 13.517852, 24.402094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.098965, 14.046325, 23.834644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.413025, 13.819970, 23.733995>,  <11.601461, 13.684157, 23.673607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.413025, 13.819970, 23.733995>,  <11.098965, 14.046325, 23.834644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.413025, 13.819970, 23.733995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330183, -0.038762, -0.943121,
		0.523945, 0.823572, -0.217280,
		0.785150, -0.565885, -0.251620,
		11.648570, 13.650205, 23.658510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.386973, 14.292511, 23.228857>,  <11.098965, 14.046325, 23.834644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.386973, 14.292511, 23.228857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.506896, 13.910944, 23.223820>,  <11.578850, 13.682004, 23.220798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.506896, 13.910944, 23.223820>,  <11.386973, 14.292511, 23.228857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.506896, 13.910944, 23.223820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258290, -0.068458, -0.963639,
		0.918369, 0.292158, -0.266911,
		0.299807, -0.953917, -0.012592,
		11.596838, 13.624769, 23.220041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.845944, 14.285486, 22.736614>,  <11.386973, 14.292511, 23.228857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.845944, 14.285486, 22.736614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.715592, 13.910629, 22.786524>,  <11.637382, 13.685716, 22.816469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.715592, 13.910629, 22.786524>,  <11.845944, 14.285486, 22.736614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.715592, 13.910629, 22.786524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291336, -0.026013, -0.956267,
		0.899403, -0.347979, -0.264546,
		-0.325879, -0.937141, 0.124775,
		11.617828, 13.629487, 22.823956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.113315, 13.792163, 22.207273>,  <11.845944, 14.285486, 22.736614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.113315, 13.792163, 22.207273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.783980, 13.614196, 22.348223>,  <11.586380, 13.507416, 22.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.783980, 13.614196, 22.348223>,  <12.113315, 13.792163, 22.207273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.783980, 13.614196, 22.348223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299742, -0.186344, -0.935645,
		0.481948, -0.875970, 0.020062,
		-0.823335, -0.444919, 0.352373,
		11.536980, 13.480721, 22.453934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.184981, 12.986979, 22.073753>,  <12.113315, 13.792163, 22.207273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.184981, 12.986979, 22.073753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.794322, 13.040615, 22.140900>,  <11.559926, 13.072797, 22.181187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.794322, 13.040615, 22.140900>,  <12.184981, 12.986979, 22.073753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.794322, 13.040615, 22.140900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208418, -0.401634, -0.891769,
		-0.052157, -0.905931, 0.420202,
		-0.976648, 0.134090, 0.167864,
		11.501328, 13.080842, 22.191259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.771462, 12.361197, 21.933552>,  <12.184981, 12.986979, 22.073753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.771462, 12.361197, 21.933552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.509409, 12.658505, 21.879374>,  <11.352177, 12.836891, 21.846867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.509409, 12.658505, 21.879374>,  <11.771462, 12.361197, 21.933552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.509409, 12.658505, 21.879374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298434, -0.419286, -0.857401,
		-0.694073, -0.521291, 0.496507,
		-0.655134, 0.743273, -0.135444,
		11.312869, 12.881487, 21.838741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186478, 12.031725, 21.633387>,  <11.771462, 12.361197, 21.933552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186478, 12.031725, 21.633387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.110565, 12.416408, 21.554287>,  <11.065018, 12.647217, 21.506826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.110565, 12.416408, 21.554287>,  <11.186478, 12.031725, 21.633387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.110565, 12.416408, 21.554287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353652, -0.254847, -0.899991,
		-0.915922, -0.100867, 0.388474,
		-0.189781, 0.961706, -0.197749,
		11.053631, 12.704920, 21.494963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.673709, 12.050040, 21.121120>,  <11.186478, 12.031725, 21.633387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.673709, 12.050040, 21.121120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815192, 12.422012, 21.080879>,  <10.900083, 12.645195, 21.056734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815192, 12.422012, 21.080879>,  <10.673709, 12.050040, 21.121120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.815192, 12.422012, 21.080879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301776, 0.011651, -0.953308,
		-0.885337, 0.367554, 0.284751,
		0.353709, 0.929929, -0.100604,
		10.921305, 12.700991, 21.050697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.141192, 12.357959, 20.799170>,  <10.673709, 12.050040, 21.121120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.141192, 12.357959, 20.799170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.470373, 12.574789, 20.731165>,  <10.667882, 12.704887, 20.690361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.470373, 12.574789, 20.731165>,  <10.141192, 12.357959, 20.799170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.470373, 12.574789, 20.731165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304163, 0.167655, -0.937751,
		-0.479828, 0.823436, 0.302851,
		0.822952, 0.542075, -0.170013,
		10.717258, 12.737411, 20.680161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.764479, 12.957085, 20.458790>,  <10.141192, 12.357959, 20.799170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.764479, 12.957085, 20.458790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.147327, 13.028729, 20.367720>,  <10.377037, 13.071716, 20.313078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.147327, 13.028729, 20.367720>,  <9.764479, 12.957085, 20.458790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.147327, 13.028729, 20.367720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244267, 0.076504, -0.966685,
		-0.155726, 0.980850, 0.116975,
		0.957122, 0.179111, -0.227675,
		10.434464, 13.082462, 20.299417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.853436, 13.525010, 20.093988>,  <9.764479, 12.957085, 20.458790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.853436, 13.525010, 20.093988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.183064, 13.318434, 20.000872>,  <10.380842, 13.194488, 19.945002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.183064, 13.318434, 20.000872>,  <9.853436, 13.525010, 20.093988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.183064, 13.318434, 20.000872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237699, 0.057775, -0.969619,
		0.514201, 0.854371, -0.075147,
		0.824073, -0.516442, -0.232791,
		10.430286, 13.163501, 19.931034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.031688, 13.791024, 19.451263>,  <9.853436, 13.525010, 20.093988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.031688, 13.791024, 19.451263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.241472, 13.451353, 19.476049>,  <10.367343, 13.247551, 19.490921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.241472, 13.451353, 19.476049>,  <10.031688, 13.791024, 19.451263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.241472, 13.451353, 19.476049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292428, -0.248000, -0.923570,
		0.799642, 0.466255, -0.378389,
		0.524460, -0.849177, 0.061965,
		10.398810, 13.196600, 19.494638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.423220, 13.809895, 18.898901>,  <10.031688, 13.791024, 19.451263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.423220, 13.809895, 18.898901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.426379, 13.419172, 18.984493>,  <10.428275, 13.184739, 19.035849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.426379, 13.419172, 18.984493>,  <10.423220, 13.809895, 18.898901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.426379, 13.419172, 18.984493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163144, -0.212381, -0.963472,
		0.986571, -0.027299, -0.161038,
		0.007900, -0.976806, 0.213983,
		10.428749, 13.126131, 19.048689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.957424, 13.485458, 18.510696>,  <10.423220, 13.809895, 18.898901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.957424, 13.485458, 18.510696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.667927, 13.226895, 18.607323>,  <10.494228, 13.071757, 18.665298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.667927, 13.226895, 18.607323>,  <10.957424, 13.485458, 18.510696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.667927, 13.226895, 18.607323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072150, -0.277259, -0.958082,
		0.686288, -0.710834, 0.154026,
		-0.723742, -0.646408, 0.241566,
		10.450804, 13.032973, 18.679792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.180782, 12.934048, 18.184254>,  <10.957424, 13.485458, 18.510696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.180782, 12.934048, 18.184254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.798000, 12.855450, 18.269693>,  <10.568331, 12.808290, 18.320957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.798000, 12.855450, 18.269693>,  <11.180782, 12.934048, 18.184254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.798000, 12.855450, 18.269693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118072, -0.408738, -0.904982,
		0.265132, -0.891248, 0.367943,
		-0.956956, -0.196496, 0.213601,
		10.510914, 12.796501, 18.333775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.028432, 12.181522, 18.076443>,  <11.180782, 12.934048, 18.184254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.028432, 12.181522, 18.076443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.702369, 12.410907, 18.043793>,  <10.506731, 12.548537, 18.024202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.702369, 12.410907, 18.043793>,  <11.028432, 12.181522, 18.076443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.702369, 12.410907, 18.043793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241971, -0.465161, -0.851514,
		-0.526283, -0.674363, 0.517939,
		-0.815154, 0.573463, -0.081629,
		10.457822, 12.582945, 18.019304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.650866, 11.747925, 17.739935>,  <11.028432, 12.181522, 18.076443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.650866, 11.747925, 17.739935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.462997, 12.096574, 17.683819>,  <10.350276, 12.305763, 17.650148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.462997, 12.096574, 17.683819>,  <10.650866, 11.747925, 17.739935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.462997, 12.096574, 17.683819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247348, -0.282462, -0.926841,
		-0.847483, -0.400609, 0.348259,
		-0.469671, 0.871623, -0.140292,
		10.322096, 12.358061, 17.641731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.120889, 11.591828, 17.390331>,  <10.650866, 11.747925, 17.739935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.120889, 11.591828, 17.390331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.097774, 11.987905, 17.339445>,  <10.083904, 12.225551, 17.308914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.097774, 11.987905, 17.339445>,  <10.120889, 11.591828, 17.390331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.097774, 11.987905, 17.339445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298478, -0.138737, -0.944279,
		-0.952666, -0.016596, 0.303567,
		-0.057787, 0.990190, -0.127216,
		10.080438, 12.284962, 17.301281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.471328, 11.672752, 17.076826>,  <10.120889, 11.591828, 17.390331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.471328, 11.672752, 17.076826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.685228, 11.992934, 16.968519>,  <9.813569, 12.185043, 16.903536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.685228, 11.992934, 16.968519>,  <9.471328, 11.672752, 17.076826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.685228, 11.992934, 16.968519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400395, -0.042150, -0.915372,
		-0.744127, 0.597910, 0.297958,
		0.534752, 0.800454, -0.270765,
		9.845654, 12.233070, 16.887289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.060716, 12.004113, 16.726969>,  <9.471328, 11.672752, 17.076826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.060716, 12.004113, 16.726969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.405658, 12.172699, 16.614746>,  <9.612623, 12.273850, 16.547413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.405658, 12.172699, 16.614746>,  <9.060716, 12.004113, 16.726969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.405658, 12.172699, 16.614746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267146, -0.091941, -0.959260,
		-0.430089, 0.902172, 0.033307,
		0.862355, 0.421465, -0.280554,
		9.664364, 12.299138, 16.530581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.985067, 12.485073, 16.200134>,  <9.060716, 12.004113, 16.726969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.985067, 12.485073, 16.200134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.368291, 12.380462, 16.153273>,  <9.598225, 12.317695, 16.125156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.368291, 12.380462, 16.153273>,  <8.985067, 12.485073, 16.200134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.368291, 12.380462, 16.153273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099706, 0.079063, -0.991871,
		0.268666, 0.961952, 0.049671,
		0.958059, -0.261530, -0.117154,
		9.655708, 12.302003, 16.118126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.183777, 12.920168, 15.608267>,  <8.985067, 12.485073, 16.200134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.183777, 12.920168, 15.608267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.453156, 12.625377, 15.631358>,  <9.614782, 12.448502, 15.645213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.453156, 12.625377, 15.631358>,  <9.183777, 12.920168, 15.608267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.453156, 12.625377, 15.631358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091881, 0.005961, -0.995752,
		0.733504, 0.675889, 0.071728,
		0.673446, -0.736979, 0.057729,
		9.655190, 12.404283, 15.648677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.609572, 13.047386, 15.066854>,  <9.183777, 12.920168, 15.608267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.609572, 13.047386, 15.066854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.742252, 12.675886, 15.133064>,  <9.821860, 12.452987, 15.172791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.742252, 12.675886, 15.133064>,  <9.609572, 13.047386, 15.066854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.742252, 12.675886, 15.133064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016223, -0.181050, -0.983340,
		0.943245, 0.323489, -0.075121,
		0.331701, -0.928749, 0.165527,
		9.841763, 12.397262, 15.182722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.258159, 12.926843, 14.664930>,  <9.609572, 13.047386, 15.066854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.258159, 12.926843, 14.664930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.098330, 12.564693, 14.722395>,  <10.002432, 12.347404, 14.756874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.098330, 12.564693, 14.722395>,  <10.258159, 12.926843, 14.664930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.098330, 12.564693, 14.722395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051660, -0.134228, -0.989603,
		0.915245, -0.402840, 0.006862,
		-0.399573, -0.905374, 0.143662,
		9.978457, 12.293081, 14.765493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.548930, 12.535182, 14.170602>,  <10.258159, 12.926843, 14.664930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.548930, 12.535182, 14.170602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.244149, 12.302255, 14.283974>,  <10.061280, 12.162498, 14.351996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.244149, 12.302255, 14.283974>,  <10.548930, 12.535182, 14.170602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.244149, 12.302255, 14.283974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069455, -0.361641, -0.929727,
		0.643898, -0.728093, 0.235108,
		-0.761953, -0.582319, 0.283430,
		10.015563, 12.127559, 14.369002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.636525, 11.802854, 13.892489>,  <10.548930, 12.535182, 14.170602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.636525, 11.802854, 13.892489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.241416, 11.839233, 13.943138>,  <10.004351, 11.861061, 13.973528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.241416, 11.839233, 13.943138>,  <10.636525, 11.802854, 13.892489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.241416, 11.839233, 13.943138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152076, -0.383323, -0.911009,
		-0.034317, -0.919126, 0.392467,
		-0.987773, 0.090948, 0.126623,
		9.945085, 11.866518, 13.981125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.291311, 11.513117, 14.094243>,  <10.636525, 11.802854, 13.892489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.291311, 11.513117, 14.094243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.612419, 11.550570, 13.858686>,  <11.805084, 11.573043, 13.717352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.612419, 11.550570, 13.858686>,  <11.291311, 11.513117, 14.094243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.612419, 11.550570, 13.858686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595148, -0.064741, 0.801004,
		0.036874, -0.993500, -0.107697,
		0.802770, 0.093631, -0.588892,
		11.853250, 11.578661, 13.682019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.753575, 10.946966, 14.188646>,  <11.291311, 11.513117, 14.094243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.753575, 10.946966, 14.188646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.968370, 11.260808, 14.064685>,  <12.097247, 11.449113, 13.990308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.968370, 11.260808, 14.064685>,  <11.753575, 10.946966, 14.188646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.968370, 11.260808, 14.064685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554300, -0.051240, 0.830738,
		0.635922, -0.617875, -0.462421,
		0.536987, 0.784605, -0.309904,
		12.129466, 11.496189, 13.971714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.536269, 10.745918, 14.331384>,  <11.753575, 10.946966, 14.188646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.536269, 10.745918, 14.331384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.485712, 11.141437, 14.299619>,  <12.455378, 11.378748, 14.280560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.485712, 11.141437, 14.299619>,  <12.536269, 10.745918, 14.331384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.485712, 11.141437, 14.299619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563702, 0.137467, 0.814459,
		0.816251, 0.058177, -0.574761,
		-0.126394, 0.988796, -0.079413,
		12.447794, 11.438075, 14.275795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.153556, 10.949393, 14.577209>,  <12.536269, 10.745918, 14.331384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.153556, 10.949393, 14.577209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963782, 11.301101, 14.594171>,  <12.849918, 11.512125, 14.604347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963782, 11.301101, 14.594171>,  <13.153556, 10.949393, 14.577209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963782, 11.301101, 14.594171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488108, 0.222674, 0.843900,
		0.732572, 0.421073, -0.534822,
		-0.474435, 0.879269, 0.042404,
		12.821452, 11.564881, 14.606892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.657071, 11.560049, 14.615633>,  <13.153556, 10.949393, 14.577209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.657071, 11.560049, 14.615633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310155, 11.684279, 14.771248>,  <13.102005, 11.758818, 14.864617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310155, 11.684279, 14.771248>,  <13.657071, 11.560049, 14.615633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.310155, 11.684279, 14.771248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461255, 0.207448, 0.862676,
		0.187220, 0.927636, -0.323172,
		-0.867290, 0.310575, 0.389038,
		13.049968, 11.777452, 14.887959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.754752, 12.275592, 14.956805>,  <13.657071, 11.560049, 14.615633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.754752, 12.275592, 14.956805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.407155, 12.137898, 15.098992>,  <13.198597, 12.055283, 15.184304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.407155, 12.137898, 15.098992>,  <13.754752, 12.275592, 14.956805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.407155, 12.137898, 15.098992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163423, 0.478406, 0.862798,
		-0.467061, 0.807856, -0.359476,
		-0.868992, -0.344233, 0.355467,
		13.146458, 12.034629, 15.205632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.477361, 12.912286, 15.341859>,  <13.754752, 12.275592, 14.956805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.477361, 12.912286, 15.341859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305720, 12.577337, 15.477319>,  <13.202736, 12.376369, 15.558595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305720, 12.577337, 15.477319>,  <13.477361, 12.912286, 15.341859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.305720, 12.577337, 15.477319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190483, 0.282598, 0.940135,
		-0.882944, 0.467919, 0.038242,
		-0.429100, -0.837371, 0.338649,
		13.176991, 12.326126, 15.578914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.037127, 13.061293, 15.864220>,  <13.477361, 12.912286, 15.341859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.037127, 13.061293, 15.864220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063742, 12.673071, 15.956824>,  <13.079710, 12.440138, 16.012386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063742, 12.673071, 15.956824>,  <13.037127, 13.061293, 15.864220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063742, 12.673071, 15.956824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085400, 0.236714, 0.967819,
		-0.994123, -0.044623, 0.098635,
		0.066536, -0.970554, 0.231512,
		13.083702, 12.381905, 16.026278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.507740, 12.898570, 16.466040>,  <13.037127, 13.061293, 15.864220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.507740, 12.898570, 16.466040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792948, 12.618120, 16.468092>,  <12.964072, 12.449850, 16.469324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792948, 12.618120, 16.468092>,  <12.507740, 12.898570, 16.466040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792948, 12.618120, 16.468092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016077, 0.023667, 0.999591,
		-0.700960, -0.712645, 0.028147,
		0.713019, -0.701126, 0.005133,
		13.006853, 12.407783, 16.469631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.377041, 12.381200, 17.082220>,  <12.507740, 12.898570, 16.466040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.377041, 12.381200, 17.082220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.765672, 12.355193, 16.991175>,  <12.998851, 12.339589, 16.936546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.765672, 12.355193, 16.991175>,  <12.377041, 12.381200, 17.082220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.765672, 12.355193, 16.991175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216589, -0.143865, 0.965604,
		-0.095522, -0.987459, -0.125695,
		0.971579, -0.065012, -0.227615,
		13.057145, 12.335689, 16.922890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.610115, 11.971723, 17.727489>,  <12.377041, 12.381200, 17.082220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.610115, 11.971723, 17.727489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.929338, 12.137073, 17.552116>,  <13.120872, 12.236282, 17.446892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.929338, 12.137073, 17.552116>,  <12.610115, 11.971723, 17.727489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.929338, 12.137073, 17.552116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502901, -0.056086, 0.862522,
		0.331956, -0.908831, -0.252648,
		0.798057, 0.413377, -0.438434,
		13.168756, 12.261086, 17.420586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.261304, 11.523757, 17.986723>,  <12.610115, 11.971723, 17.727489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.261304, 11.523757, 17.986723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.371784, 11.883822, 17.852013>,  <13.438072, 12.099862, 17.771187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.371784, 11.883822, 17.852013>,  <13.261304, 11.523757, 17.986723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.371784, 11.883822, 17.852013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557255, 0.135506, 0.819210,
		0.783058, -0.413937, -0.464194,
		0.276200, 0.900164, -0.336777,
		13.454644, 12.153872, 17.750980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.949271, 11.600419, 18.125719>,  <13.261304, 11.523757, 17.986723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.949271, 11.600419, 18.125719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.836246, 11.983349, 18.101431>,  <13.768432, 12.213107, 18.086859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.836246, 11.983349, 18.101431>,  <13.949271, 11.600419, 18.125719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.836246, 11.983349, 18.101431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569424, 0.218338, 0.792518,
		0.771955, 0.189360, -0.606818,
		-0.282563, 0.957325, -0.060721,
		13.751477, 12.270546, 18.083214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513018, 11.948385, 18.423006>,  <13.949271, 11.600419, 18.125719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.513018, 11.948385, 18.423006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235738, 12.236623, 18.417103>,  <14.069369, 12.409565, 18.413561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235738, 12.236623, 18.417103>,  <14.513018, 11.948385, 18.423006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235738, 12.236623, 18.417103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375034, 0.378110, 0.846394,
		0.615486, 0.581186, -0.532353,
		-0.693200, 0.720594, -0.014757,
		14.027778, 12.452801, 18.412676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889119, 12.545339, 18.399300>,  <14.513018, 11.948385, 18.423006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.889119, 12.545339, 18.399300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.545517, 12.618871, 18.590429>,  <14.339355, 12.662991, 18.705107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.545517, 12.618871, 18.590429>,  <14.889119, 12.545339, 18.399300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.545517, 12.618871, 18.590429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511965, 0.306153, 0.802597,
		0.001255, 0.934064, -0.357103,
		-0.859005, 0.183831, 0.477824,
		14.287815, 12.674020, 18.733776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068913, 13.143306, 18.710306>,  <14.889119, 12.545339, 18.399300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.068913, 13.143306, 18.710306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744630, 12.995957, 18.892321>,  <14.550060, 12.907548, 19.001530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744630, 12.995957, 18.892321>,  <15.068913, 13.143306, 18.710306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744630, 12.995957, 18.892321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330042, 0.354397, 0.874914,
		-0.483557, 0.859480, -0.165734,
		-0.810707, -0.368372, 0.455035,
		14.501418, 12.885446, 19.028831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859993, 13.687916, 19.218533>,  <15.068913, 13.143306, 18.710306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.859993, 13.687916, 19.218533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666230, 13.359896, 19.340427>,  <14.549973, 13.163084, 19.413565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666230, 13.359896, 19.340427>,  <14.859993, 13.687916, 19.218533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666230, 13.359896, 19.340427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241259, 0.209607, 0.947554,
		-0.840918, 0.532524, 0.096309,
		-0.484408, -0.820050, 0.304739,
		14.520907, 13.113880, 19.431849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572065, 13.937807, 19.812538>,  <14.859993, 13.687916, 19.218533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572065, 13.937807, 19.812538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.524070, 13.542942, 19.854702>,  <14.495273, 13.306023, 19.879999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.524070, 13.542942, 19.854702>,  <14.572065, 13.937807, 19.812538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.524070, 13.542942, 19.854702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000494, 0.106234, 0.994341,
		-0.992775, 0.119257, -0.013235,
		-0.119988, -0.987164, 0.105408,
		14.488073, 13.246793, 19.886324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895958, 13.732739, 20.182995>,  <14.572065, 13.937807, 19.812538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895958, 13.732739, 20.182995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.176542, 13.453789, 20.241812>,  <14.344893, 13.286419, 20.277102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.176542, 13.453789, 20.241812>,  <13.895958, 13.732739, 20.182995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.176542, 13.453789, 20.241812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104643, 0.103300, 0.989130,
		-0.704985, -0.709222, -0.000514,
		0.701460, -0.697376, 0.147040,
		14.386980, 13.244576, 20.285923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.584234, 13.310209, 20.626513>,  <13.895958, 13.732739, 20.182995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.584234, 13.310209, 20.626513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.974869, 13.232390, 20.663244>,  <14.209249, 13.185699, 20.685284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.974869, 13.232390, 20.663244>,  <13.584234, 13.310209, 20.626513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974869, 13.232390, 20.663244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092082, 0.007767, 0.995721,
		-0.194429, -0.980862, -0.010329,
		0.976585, -0.194549, 0.091830,
		14.267844, 13.174026, 20.690794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604512, 12.879499, 21.094755>,  <13.584234, 13.310209, 20.626513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604512, 12.879499, 21.094755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.985773, 13.000092, 21.104652>,  <14.214529, 13.072447, 21.110592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.985773, 13.000092, 21.104652>,  <13.604512, 12.879499, 21.094755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985773, 13.000092, 21.104652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016288, -0.030531, 0.999401,
		0.302055, -0.952983, -0.024190,
		0.953151, 0.301480, 0.024745,
		14.271719, 13.090535, 21.112076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.857547, 12.433299, 21.712990>,  <13.604512, 12.879499, 21.094755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.857547, 12.433299, 21.712990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.096021, 12.742398, 21.625881>,  <14.239105, 12.927857, 21.573616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.096021, 12.742398, 21.625881>,  <13.857547, 12.433299, 21.712990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.096021, 12.742398, 21.625881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110301, 0.189842, 0.975599,
		0.795234, -0.605658, 0.027946,
		0.596185, 0.772747, -0.217773,
		14.274877, 12.974222, 21.560549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.419722, 12.359002, 22.122896>,  <13.857547, 12.433299, 21.712990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.419722, 12.359002, 22.122896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.420293, 12.749066, 22.034300>,  <14.420636, 12.983105, 21.981142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.420293, 12.749066, 22.034300>,  <14.419722, 12.359002, 22.122896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.420293, 12.749066, 22.034300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089455, 0.220481, 0.971281,
		0.995990, -0.021202, -0.086918,
		0.001429, 0.975161, -0.221493,
		14.420722, 13.041615, 21.967852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.852649, 12.766499, 22.604065>,  <14.419722, 12.359002, 22.122896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.852649, 12.766499, 22.604065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.657502, 13.070871, 22.432964>,  <14.540414, 13.253495, 22.330305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.657502, 13.070871, 22.432964>,  <14.852649, 12.766499, 22.604065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.657502, 13.070871, 22.432964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043194, 0.510467, 0.858812,
		0.871849, 0.400509, -0.281907,
		-0.487867, 0.760931, -0.427750,
		14.511142, 13.299150, 22.304640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320375, 13.386238, 22.762251>,  <14.852649, 12.766499, 22.604065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320375, 13.386238, 22.762251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.962179, 13.535151, 22.664679>,  <14.747261, 13.624498, 22.606134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.962179, 13.535151, 22.664679>,  <15.320375, 13.386238, 22.762251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.962179, 13.535151, 22.664679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063785, 0.649748, 0.757469,
		0.440485, 0.662747, -0.605590,
		-0.895491, 0.372282, -0.243931,
		14.693532, 13.646835, 22.591499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355202, 14.071765, 22.582539>,  <15.320375, 13.386238, 22.762251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.355202, 14.071765, 22.582539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.958513, 14.067519, 22.633730>,  <14.720500, 14.064972, 22.664446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.958513, 14.067519, 22.633730>,  <15.355202, 14.071765, 22.582539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958513, 14.067519, 22.633730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088812, 0.663142, 0.743206,
		-0.092757, 0.748418, -0.656709,
		-0.991720, -0.010614, 0.127979,
		14.660997, 14.064335, 22.672123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259979, 14.794271, 22.736250>,  <15.355202, 14.071765, 22.582539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259979, 14.794271, 22.736250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926777, 14.635053, 22.889956>,  <14.726855, 14.539521, 22.982180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926777, 14.635053, 22.889956>,  <15.259979, 14.794271, 22.736250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926777, 14.635053, 22.889956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196314, 0.861999, 0.467352,
		-0.517263, 0.313871, -0.796193,
		-0.833006, -0.398048, 0.384263,
		14.676875, 14.515638, 23.005234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664490, 15.301621, 22.742485>,  <15.259979, 14.794271, 22.736250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664490, 15.301621, 22.742485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.566987, 15.042069, 23.030802>,  <14.508486, 14.886338, 23.203791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.566987, 15.042069, 23.030802>,  <14.664490, 15.301621, 22.742485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.566987, 15.042069, 23.030802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233057, 0.760621, 0.605922,
		-0.941418, -0.020288, -0.336632,
		-0.243756, -0.648880, 0.720790,
		14.493860, 14.847405, 23.247038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.058611, 15.608167, 23.103064>,  <14.664490, 15.301621, 22.742485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.058611, 15.608167, 23.103064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233068, 15.359148, 23.362976>,  <14.337743, 15.209737, 23.518923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233068, 15.359148, 23.362976>,  <14.058611, 15.608167, 23.103064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233068, 15.359148, 23.362976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173389, 0.650409, 0.739530,
		-0.883015, -0.435206, 0.175729,
		0.436143, -0.622546, 0.649781,
		14.363912, 15.172384, 23.557911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667108, 15.730438, 23.832932>,  <14.058611, 15.608167, 23.103064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667108, 15.730438, 23.832932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001989, 15.532213, 23.925459>,  <14.202918, 15.413279, 23.980974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001989, 15.532213, 23.925459>,  <13.667108, 15.730438, 23.832932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001989, 15.532213, 23.925459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021675, 0.452702, 0.891398,
		-0.546462, -0.741268, 0.389745,
		0.837204, -0.495563, 0.231317,
		14.253151, 15.383544, 23.994854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.470448, 15.373996, 24.461363>,  <13.667108, 15.730438, 23.832932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.470448, 15.373996, 24.461363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.870329, 15.364571, 24.458908>,  <14.110258, 15.358915, 24.457436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.870329, 15.364571, 24.458908>,  <13.470448, 15.373996, 24.461363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870329, 15.364571, 24.458908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014727, 0.384479, 0.923016,
		-0.019392, -0.922833, 0.384712,
		0.999704, -0.023564, -0.006135,
		14.170240, 15.357501, 24.457067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.836542, 14.919234, 24.902098>,  <13.470448, 15.373996, 24.461363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.836542, 14.919234, 24.902098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.020600, 15.266478, 24.827637>,  <14.131035, 15.474824, 24.782961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.020600, 15.266478, 24.827637>,  <13.836542, 14.919234, 24.902098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.020600, 15.266478, 24.827637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047717, 0.233547, 0.971174,
		0.886561, -0.437998, 0.148889,
		0.460145, 0.868109, -0.186153,
		14.158644, 15.526911, 24.771791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467310, 15.018719, 25.256237>,  <13.836542, 14.919234, 24.902098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.467310, 15.018719, 25.256237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.313189, 15.381039, 25.185734>,  <14.220716, 15.598431, 25.143433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.313189, 15.381039, 25.185734>,  <14.467310, 15.018719, 25.256237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.313189, 15.381039, 25.185734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057253, 0.167171, 0.984264,
		0.921012, 0.389331, -0.012552,
		-0.385303, 0.905801, -0.176257,
		14.197598, 15.652779, 25.132856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.901336, 15.580974, 25.514347>,  <14.467310, 15.018719, 25.256237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.901336, 15.580974, 25.514347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.514042, 15.680303, 25.502640>,  <14.281666, 15.739900, 25.495615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.514042, 15.680303, 25.502640>,  <14.901336, 15.580974, 25.514347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.514042, 15.680303, 25.502640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001847, 0.109941, 0.993936,
		0.250035, 0.962418, -0.105990,
		-0.968235, 0.248323, -0.029266,
		14.223572, 15.754800, 25.493860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868505, 16.182058, 25.956810>,  <14.901336, 15.580974, 25.514347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868505, 16.182058, 25.956810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.513316, 15.998947, 25.939177>,  <14.300203, 15.889080, 25.928596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.513316, 15.998947, 25.939177>,  <14.868505, 16.182058, 25.956810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.513316, 15.998947, 25.939177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017356, -0.062434, 0.997898,
		-0.459570, 0.886871, 0.047495,
		-0.887972, -0.457779, -0.044086,
		14.246924, 15.861613, 25.925951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.002467, 16.220903, 26.722466>,  <14.868505, 16.182058, 25.956810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.002467, 16.220903, 26.722466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.747849, 16.391701, 26.979366>,  <14.595078, 16.494179, 27.133507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.747849, 16.391701, 26.979366>,  <15.002467, 16.220903, 26.722466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.747849, 16.391701, 26.979366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658393, 0.734550, 0.164183,
		-0.401660, 0.527363, -0.748704,
		-0.636544, 0.426996, 0.642251,
		14.556887, 16.519800, 27.172041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065666, 17.060789, 26.590132>,  <15.002467, 16.220903, 26.722466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065666, 17.060789, 26.590132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.964714, 16.929070, 26.954081>,  <14.904143, 16.850039, 27.172449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.964714, 16.929070, 26.954081>,  <15.065666, 17.060789, 26.590132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964714, 16.929070, 26.954081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729433, 0.553098, 0.402505,
		-0.635793, 0.765274, 0.100610,
		-0.252380, -0.329298, 0.909872,
		14.889000, 16.830280, 27.227043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.856294, 17.632523, 27.021774>,  <15.065666, 17.060789, 26.590132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.856294, 17.632523, 27.021774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.030966, 17.335768, 27.225307>,  <15.135769, 17.157715, 27.347427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.030966, 17.335768, 27.225307>,  <14.856294, 17.632523, 27.021774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.030966, 17.335768, 27.225307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625297, 0.656948, 0.421216,
		-0.646773, 0.134235, 0.750777,
		0.436679, -0.741890, 0.508833,
		15.161969, 17.113201, 27.377958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.360209, 18.250744, 27.010929>,  <14.856294, 17.632523, 27.021774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.360209, 18.250744, 27.010929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.617690, 18.509457, 26.847309>,  <14.772179, 18.664684, 26.749136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.617690, 18.509457, 26.847309>,  <14.360209, 18.250744, 27.010929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.617690, 18.509457, 26.847309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264775, -0.313275, -0.912005,
		-0.718012, 0.695366, -0.030405,
		0.643702, 0.646780, -0.409051,
		14.810801, 18.703491, 26.724594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.028531, 18.706009, 26.588282>,  <14.360209, 18.250744, 27.010929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.028531, 18.706009, 26.588282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400948, 18.736147, 26.445461>,  <14.624397, 18.754229, 26.359768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400948, 18.736147, 26.445461>,  <14.028531, 18.706009, 26.588282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.400948, 18.736147, 26.445461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319251, -0.305758, -0.896990,
		-0.176754, 0.949124, -0.260619,
		0.931041, 0.075344, -0.357053,
		14.680260, 18.758751, 26.338345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045371, 19.120943, 25.903263>,  <14.028531, 18.706009, 26.588282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.045371, 19.120943, 25.903263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.375717, 18.895479, 25.897156>,  <14.573925, 18.760201, 25.893492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.375717, 18.895479, 25.897156>,  <14.045371, 19.120943, 25.903263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.375717, 18.895479, 25.897156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234262, -0.318358, -0.918569,
		0.512900, 0.762192, -0.394965,
		0.825866, -0.563660, -0.015267,
		14.623477, 18.726381, 25.892576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252013, 19.178833, 25.254047>,  <14.045371, 19.120943, 25.903263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252013, 19.178833, 25.254047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437034, 18.846313, 25.377327>,  <14.548046, 18.646801, 25.451296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437034, 18.846313, 25.377327>,  <14.252013, 19.178833, 25.254047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437034, 18.846313, 25.377327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110107, -0.398795, -0.910406,
		0.879729, 0.387174, -0.275994,
		0.462550, -0.831300, 0.308201,
		14.575799, 18.596924, 25.469788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.781697, 19.145937, 24.824865>,  <14.252013, 19.178833, 25.254047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.781697, 19.145937, 24.824865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720810, 18.774096, 24.959127>,  <14.684278, 18.550991, 25.039684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720810, 18.774096, 24.959127>,  <14.781697, 19.145937, 24.824865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720810, 18.774096, 24.959127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123194, -0.319117, -0.939674,
		0.980639, -0.184387, -0.065946,
		-0.152219, -0.929605, 0.335654,
		14.675144, 18.495214, 25.059824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.251842, 18.676880, 24.412098>,  <14.781697, 19.145937, 24.824865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.251842, 18.676880, 24.412098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.948671, 18.479191, 24.582413>,  <14.766769, 18.360577, 24.684603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.948671, 18.479191, 24.582413>,  <15.251842, 18.676880, 24.412098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948671, 18.479191, 24.582413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194689, -0.451589, -0.870726,
		0.622613, -0.742840, 0.246051,
		-0.757924, -0.494222, 0.425788,
		14.721294, 18.330925, 24.710150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.375816, 18.069475, 24.199457>,  <15.251842, 18.676880, 24.412098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.375816, 18.069475, 24.199457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.995996, 18.036280, 24.320431>,  <14.768104, 18.016363, 24.393015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.995996, 18.036280, 24.320431>,  <15.375816, 18.069475, 24.199457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995996, 18.036280, 24.320431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179318, -0.647487, -0.740679,
		0.257289, -0.757545, 0.599940,
		-0.949551, -0.082989, 0.302433,
		14.711130, 18.011383, 24.411161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206489, 17.341640, 24.074923>,  <15.375816, 18.069475, 24.199457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206489, 17.341640, 24.074923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.844141, 17.508324, 24.105272>,  <14.626733, 17.608334, 24.123482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.844141, 17.508324, 24.105272>,  <15.206489, 17.341640, 24.074923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.844141, 17.508324, 24.105272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315704, -0.544857, -0.776828,
		-0.282368, -0.727658, 0.625125,
		-0.905870, 0.416706, 0.075874,
		14.572380, 17.633335, 24.128035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815273, 16.758018, 24.048365>,  <15.206489, 17.341640, 24.074923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815273, 16.758018, 24.048365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.610367, 17.075741, 23.917730>,  <14.487423, 17.266375, 23.839350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.610367, 17.075741, 23.917730>,  <14.815273, 16.758018, 24.048365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610367, 17.075741, 23.917730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432985, -0.567268, -0.700522,
		-0.741693, -0.217445, 0.634515,
		-0.512265, 0.794307, -0.326588,
		14.456687, 17.314034, 23.819754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.951730, 16.627449, 23.859821>,  <14.815273, 16.758018, 24.048365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.951730, 16.627449, 23.859821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.964718, 16.976341, 23.664616>,  <13.972510, 17.185677, 23.547493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.964718, 16.976341, 23.664616>,  <13.951730, 16.627449, 23.859821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.964718, 16.976341, 23.664616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539076, -0.395878, -0.743423,
		-0.841631, 0.287215, 0.457345,
		0.032469, 0.872232, -0.488014,
		13.974459, 17.238010, 23.518211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315040, 16.733921, 23.574932>,  <13.951730, 16.627449, 23.859821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315040, 16.733921, 23.574932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.575417, 16.940683, 23.352552>,  <13.731643, 17.064741, 23.219124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.575417, 16.940683, 23.352552>,  <13.315040, 16.733921, 23.574932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.575417, 16.940683, 23.352552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318944, -0.478353, -0.818201,
		-0.688874, 0.709919, -0.146516,
		0.650943, 0.516907, -0.555950,
		13.770700, 17.095755, 23.185768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941054, 16.740639, 23.050287>,  <13.315040, 16.733921, 23.574932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941054, 16.740639, 23.050287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.293884, 16.867584, 22.911018>,  <13.505583, 16.943752, 22.827457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.293884, 16.867584, 22.911018>,  <12.941054, 16.740639, 23.050287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.293884, 16.867584, 22.911018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272403, -0.259388, -0.926561,
		-0.384369, 0.912139, -0.142349,
		0.882076, 0.317364, -0.348170,
		13.558507, 16.962793, 22.806568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774164, 17.132860, 22.370970>,  <12.941054, 16.740639, 23.050287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774164, 17.132860, 22.370970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.165688, 17.052017, 22.357782>,  <13.400601, 17.003511, 22.349871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.165688, 17.052017, 22.357782>,  <12.774164, 17.132860, 22.370970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.165688, 17.052017, 22.357782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073366, -0.195801, -0.977895,
		0.191183, 0.959591, -0.206479,
		0.978809, -0.202105, -0.032967,
		13.459331, 16.991386, 22.347893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060820, 17.423525, 21.780985>,  <12.774164, 17.132860, 22.370970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060820, 17.423525, 21.780985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.322234, 17.133732, 21.868635>,  <13.479083, 16.959856, 21.921225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.322234, 17.133732, 21.868635>,  <13.060820, 17.423525, 21.780985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.322234, 17.133732, 21.868635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127929, -0.179610, -0.975384,
		0.746006, 0.665481, -0.024699,
		0.653536, -0.724482, 0.219125,
		13.518295, 16.916388, 21.934372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.666935, 17.585674, 21.467705>,  <13.060820, 17.423525, 21.780985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.666935, 17.585674, 21.467705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683977, 17.193800, 21.546091>,  <13.694202, 16.958675, 21.593122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683977, 17.193800, 21.546091>,  <13.666935, 17.585674, 21.467705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683977, 17.193800, 21.546091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163794, -0.186642, -0.968678,
		0.985574, 0.073369, 0.152514,
		0.042605, -0.979685, 0.195967,
		13.696758, 16.899895, 21.604881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.193998, 17.300140, 21.079725>,  <13.666935, 17.585674, 21.467705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.193998, 17.300140, 21.079725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938051, 17.001509, 21.152597>,  <13.784483, 16.822330, 21.196320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938051, 17.001509, 21.152597>,  <14.193998, 17.300140, 21.079725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.938051, 17.001509, 21.152597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121796, -0.332587, -0.935175,
		0.758772, -0.576199, 0.303742,
		-0.639868, -0.746580, 0.182179,
		13.746091, 16.777534, 21.207251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.557192, 16.544350, 20.890844>,  <14.193998, 17.300140, 21.079725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.557192, 16.544350, 20.890844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.158300, 16.515945, 20.881947>,  <13.918965, 16.498903, 20.876608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.158300, 16.515945, 20.881947>,  <14.557192, 16.544350, 20.890844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158300, 16.515945, 20.881947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055545, -0.511395, -0.857549,
		0.049519, -0.856407, 0.513922,
		-0.997227, -0.071011, -0.022246,
		13.859132, 16.494642, 20.875273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575930, 15.902007, 20.640734>,  <14.557192, 16.544350, 20.890844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575930, 15.902007, 20.640734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.188295, 15.993716, 20.604279>,  <13.955714, 16.048742, 20.582405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.188295, 15.993716, 20.604279>,  <14.575930, 15.902007, 20.640734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.188295, 15.993716, 20.604279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009098, -0.335927, -0.941844,
		-0.246552, -0.913558, 0.323456,
		-0.969087, 0.229271, -0.091135,
		13.897570, 16.062498, 20.576939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151225, 15.316662, 20.524569>,  <14.575930, 15.902007, 20.640734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151225, 15.316662, 20.524569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.945193, 15.618530, 20.362007>,  <13.821574, 15.799651, 20.264471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.945193, 15.618530, 20.362007>,  <14.151225, 15.316662, 20.524569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.945193, 15.618530, 20.362007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011028, -0.479934, -0.877235,
		-0.857071, -0.447365, 0.255527,
		-0.515080, 0.754671, -0.406404,
		13.790669, 15.844932, 20.240086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.687707, 14.926233, 20.182425>,  <14.151225, 15.316662, 20.524569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.687707, 14.926233, 20.182425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641595, 15.285212, 20.012106>,  <13.613928, 15.500598, 19.909914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641595, 15.285212, 20.012106>,  <13.687707, 14.926233, 20.182425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641595, 15.285212, 20.012106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120431, -0.438120, -0.890813,
		-0.986005, -0.051414, 0.158587,
		-0.115281, 0.897445, -0.425796,
		13.607011, 15.554445, 19.884367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111543, 14.872359, 19.759020>,  <13.687707, 14.926233, 20.182425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.111543, 14.872359, 19.759020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.313457, 15.193777, 19.632839>,  <13.434605, 15.386627, 19.557131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.313457, 15.193777, 19.632839>,  <13.111543, 14.872359, 19.759020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.313457, 15.193777, 19.632839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018540, -0.355248, -0.934588,
		-0.863046, 0.477615, -0.164426,
		0.504785, 0.803544, -0.315450,
		13.464892, 15.434840, 19.538204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.838871, 15.067826, 19.028885>,  <13.111543, 14.872359, 19.759020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.838871, 15.067826, 19.028885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.196385, 15.246103, 19.048901>,  <13.410894, 15.353069, 19.060911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.196385, 15.246103, 19.048901>,  <12.838871, 15.067826, 19.028885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.196385, 15.246103, 19.048901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169633, -0.232659, -0.957650,
		-0.415176, 0.864423, -0.283552,
		0.893786, 0.445693, 0.050040,
		13.464521, 15.379811, 19.063913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931360, 15.477221, 18.453485>,  <12.838871, 15.067826, 19.028885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931360, 15.477221, 18.453485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.307468, 15.398565, 18.564644>,  <13.533134, 15.351373, 18.631338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.307468, 15.398565, 18.564644>,  <12.931360, 15.477221, 18.453485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.307468, 15.398565, 18.564644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264465, -0.092079, -0.959989,
		0.214358, 0.976143, -0.034576,
		0.940271, -0.196638, 0.277894,
		13.589550, 15.339574, 18.648012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.302063, 15.438534, 17.789862>,  <12.931360, 15.477221, 18.453485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.302063, 15.438534, 17.789862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.596148, 15.363931, 18.050531>,  <13.772598, 15.319169, 18.206934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.596148, 15.363931, 18.050531>,  <13.302063, 15.438534, 17.789862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.596148, 15.363931, 18.050531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642164, -0.116132, -0.757719,
		0.217001, 0.975566, 0.034387,
		0.735211, -0.186508, 0.651674,
		13.816710, 15.307979, 18.246033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803424, 15.773217, 17.523123>,  <13.302063, 15.438534, 17.789862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.803424, 15.773217, 17.523123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.952412, 15.482666, 17.754169>,  <14.041804, 15.308335, 17.892797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.952412, 15.482666, 17.754169>,  <13.803424, 15.773217, 17.523123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.952412, 15.482666, 17.754169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594242, -0.291405, -0.749640,
		0.712842, 0.622463, 0.323105,
		0.372468, -0.726377, 0.577619,
		14.064152, 15.264753, 17.927456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.541643, 15.836268, 17.475016>,  <13.803424, 15.773217, 17.523123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.541643, 15.836268, 17.475016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.466063, 15.457558, 17.579254>,  <14.420714, 15.230331, 17.641798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.466063, 15.457558, 17.579254>,  <14.541643, 15.836268, 17.475016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.466063, 15.457558, 17.579254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704985, -0.315524, -0.635170,
		0.683589, 0.063700, 0.727082,
		-0.188951, -0.946777, 0.260596,
		14.409377, 15.173525, 17.657433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203237, 15.563470, 17.515661>,  <14.541643, 15.836268, 17.475016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203237, 15.563470, 17.515661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951035, 15.255082, 17.479727>,  <14.799715, 15.070049, 17.458166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951035, 15.255082, 17.479727>,  <15.203237, 15.563470, 17.515661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951035, 15.255082, 17.479727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590727, -0.401548, -0.699858,
		0.503495, -0.494332, 0.708610,
		-0.630503, -0.770970, -0.089838,
		14.761885, 15.023791, 17.452776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645921, 14.942735, 17.574741>,  <15.203237, 15.563470, 17.515661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.645921, 14.942735, 17.574741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.297725, 14.835629, 17.409550>,  <15.088807, 14.771366, 17.310434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.297725, 14.835629, 17.409550>,  <15.645921, 14.942735, 17.574741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.297725, 14.835629, 17.409550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489119, -0.564154, -0.665201,
		-0.054865, -0.781046, 0.622059,
		-0.870490, -0.267764, -0.412977,
		15.036578, 14.755301, 17.285656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613266, 14.170607, 17.450397>,  <15.645921, 14.942735, 17.574741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613266, 14.170607, 17.450397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.327663, 14.293481, 17.198736>,  <15.156301, 14.367206, 17.047739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.327663, 14.293481, 17.198736>,  <15.613266, 14.170607, 17.450397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.327663, 14.293481, 17.198736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506515, -0.393743, -0.767078,
		-0.483359, -0.866374, 0.125541,
		-0.714007, 0.307186, -0.629151,
		15.113461, 14.385636, 17.009991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.606097, 13.662959, 17.045200>,  <15.613266, 14.170607, 17.450397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.606097, 13.662959, 17.045200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.449724, 13.970809, 16.843269>,  <15.355901, 14.155519, 16.722111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.449724, 13.970809, 16.843269>,  <15.606097, 13.662959, 17.045200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.449724, 13.970809, 16.843269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617348, -0.187557, -0.764005,
		-0.682682, -0.610326, -0.401805,
		-0.390931, 0.769626, -0.504825,
		15.332445, 14.201696, 16.691822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586207, 13.436419, 16.454475>,  <15.606097, 13.662959, 17.045200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.586207, 13.436419, 16.454475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542514, 13.821490, 16.355427>,  <15.516297, 14.052533, 16.295998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542514, 13.821490, 16.355427>,  <15.586207, 13.436419, 16.454475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542514, 13.821490, 16.355427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594982, -0.136236, -0.792109,
		-0.796281, -0.233857, -0.557895,
		-0.109235, 0.962679, -0.247623,
		15.509744, 14.110294, 16.281139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465382, 13.466475, 15.666477>,  <15.586207, 13.436419, 16.454475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465382, 13.466475, 15.666477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.548999, 13.847452, 15.755163>,  <15.599169, 14.076038, 15.808374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.548999, 13.847452, 15.755163>,  <15.465382, 13.466475, 15.666477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.548999, 13.847452, 15.755163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638396, 0.038833, -0.768728,
		-0.740778, 0.302238, -0.599916,
		0.209042, 0.952441, 0.221714,
		15.611712, 14.133184, 15.821677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.212183, 13.847041, 15.101040>,  <15.465382, 13.466475, 15.666477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.212183, 13.847041, 15.101040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.483562, 14.063148, 15.300166>,  <15.646389, 14.192813, 15.419641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.483562, 14.063148, 15.300166>,  <15.212183, 13.847041, 15.101040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.483562, 14.063148, 15.300166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548563, 0.078172, -0.832447,
		-0.488661, 0.837853, -0.243337,
		0.678446, 0.540269, 0.497815,
		15.687096, 14.225229, 15.449511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.404373, 14.464032, 14.764739>,  <15.212183, 13.847041, 15.101040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.404373, 14.464032, 14.764739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728208, 14.447078, 14.998927>,  <15.922508, 14.436905, 15.139440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728208, 14.447078, 14.998927>,  <15.404373, 14.464032, 14.764739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728208, 14.447078, 14.998927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585958, 0.117821, -0.801730,
		-0.034998, 0.992130, 0.120222,
		0.809585, -0.042386, 0.585470,
		15.971084, 14.434362, 15.174568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.819497, 15.188747, 14.775951>,  <15.404373, 14.464032, 14.764739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.819497, 15.188747, 14.775951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046707, 14.872446, 14.867214>,  <16.183033, 14.682665, 14.921971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046707, 14.872446, 14.867214>,  <15.819497, 15.188747, 14.775951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046707, 14.872446, 14.867214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526275, 0.135852, -0.839392,
		0.632757, 0.596869, 0.493321,
		0.568025, -0.790754, 0.228156,
		16.217115, 14.635220, 14.935661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512423, 15.510145, 14.874269>,  <15.819497, 15.188747, 14.775951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512423, 15.510145, 14.874269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553730, 15.115809, 14.821421>,  <16.578514, 14.879208, 14.789711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553730, 15.115809, 14.821421>,  <16.512423, 15.510145, 14.874269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553730, 15.115809, 14.821421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651847, 0.167407, -0.739642,
		0.751286, -0.009743, 0.659904,
		0.103267, -0.985840, -0.132122,
		16.584709, 14.820058, 14.781784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175106, 15.505218, 14.689861>,  <16.512423, 15.510145, 14.874269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175106, 15.505218, 14.689861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.047705, 15.141582, 14.582444>,  <16.971264, 14.923401, 14.517994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.047705, 15.141582, 14.582444>,  <17.175106, 15.505218, 14.689861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047705, 15.141582, 14.582444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568011, 0.043770, -0.821856,
		0.758894, -0.414298, 0.502432,
		-0.318502, -0.909088, -0.268543,
		16.952154, 14.868856, 14.501882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835033, 15.126552, 14.530157>,  <17.175106, 15.505218, 14.689861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.835033, 15.126552, 14.530157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.529299, 14.958749, 14.334280>,  <17.345858, 14.858067, 14.216754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.529299, 14.958749, 14.334280>,  <17.835033, 15.126552, 14.530157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.529299, 14.958749, 14.334280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539366, 0.000234, -0.842071,
		0.353370, -0.907752, 0.226090,
		-0.764339, -0.419508, -0.489693,
		17.299997, 14.832896, 14.187372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195105, 14.577742, 14.209233>,  <17.835033, 15.126552, 14.530157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.195105, 14.577742, 14.209233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850521, 14.632957, 14.013750>,  <17.643772, 14.666087, 13.896460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850521, 14.632957, 14.013750>,  <18.195105, 14.577742, 14.209233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850521, 14.632957, 14.013750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489866, -0.027815, -0.871354,
		-0.133876, -0.990036, -0.043660,
		-0.861457, 0.138041, -0.488709,
		17.592083, 14.674370, 13.867137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229084, 14.051579, 13.682442>,  <18.195105, 14.577742, 14.209233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229084, 14.051579, 13.682442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975927, 14.335702, 13.559215>,  <17.824034, 14.506176, 13.485278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975927, 14.335702, 13.559215>,  <18.229084, 14.051579, 13.682442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975927, 14.335702, 13.559215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561683, 0.147373, -0.814121,
		-0.532877, -0.688289, -0.492240,
		-0.632894, 0.710309, -0.308068,
		17.786058, 14.548795, 13.466794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813107, 13.841320, 13.035327>,  <18.229084, 14.051579, 13.682442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813107, 13.841320, 13.035327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901529, 14.224548, 13.108249>,  <17.954584, 14.454485, 13.152002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901529, 14.224548, 13.108249>,  <17.813107, 13.841320, 13.035327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901529, 14.224548, 13.108249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592563, 0.016522, -0.805355,
		-0.774598, 0.286058, -0.564064,
		0.221059, 0.958070, 0.182306,
		17.967848, 14.511970, 13.162940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.602522, 14.219898, 12.560599>,  <17.813107, 13.841320, 13.035327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.602522, 14.219898, 12.560599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.919823, 14.409757, 12.713159>,  <18.110203, 14.523672, 12.804694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.919823, 14.409757, 12.713159>,  <17.602522, 14.219898, 12.560599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.919823, 14.409757, 12.713159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493913, -0.135271, -0.858924,
		-0.356093, 0.869720, -0.341738,
		0.793251, 0.474646, 0.381397,
		18.157799, 14.552151, 12.827578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844484, 14.751492, 12.156392>,  <17.602522, 14.219898, 12.560599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844484, 14.751492, 12.156392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148512, 14.601676, 12.368813>,  <18.330929, 14.511786, 12.496264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148512, 14.601676, 12.368813>,  <17.844484, 14.751492, 12.156392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148512, 14.601676, 12.368813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549822, -0.064962, -0.832752,
		0.346397, 0.924932, 0.156555,
		0.760069, -0.374540, 0.531051,
		18.376534, 14.489314, 12.528128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.497129, 14.951280, 11.813826>,  <17.844484, 14.751492, 12.156392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.497129, 14.951280, 11.813826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.631840, 14.648346, 12.037621>,  <18.712666, 14.466585, 12.171897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.631840, 14.648346, 12.037621>,  <18.497129, 14.951280, 11.813826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631840, 14.648346, 12.037621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558837, -0.317460, -0.766107,
		0.757814, 0.570669, 0.316314,
		0.336777, -0.757335, 0.559486,
		18.732872, 14.421145, 12.205466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.278351, 15.029954, 12.074257>,  <18.497129, 14.951280, 11.813826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.278351, 15.029954, 12.074257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.100313, 14.684539, 11.979437>,  <18.993490, 14.477290, 11.922545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.100313, 14.684539, 11.979437>,  <19.278351, 15.029954, 12.074257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.100313, 14.684539, 11.979437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644201, -0.124901, -0.754589,
		0.622009, -0.488572, 0.611885,
		-0.445096, -0.863538, -0.237049,
		18.966784, 14.425478, 11.908322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788778, 14.603872, 12.038904>,  <19.278351, 15.029954, 12.074257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788778, 14.603872, 12.038904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.510323, 14.453027, 11.794551>,  <19.343250, 14.362519, 11.647939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.510323, 14.453027, 11.794551>,  <19.788778, 14.603872, 12.038904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.510323, 14.453027, 11.794551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657635, 0.006313, -0.753310,
		0.287940, -0.926146, 0.243608,
		-0.696137, -0.377113, -0.610883,
		19.301481, 14.339892, 11.611286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.132526, 14.082935, 11.707226>,  <19.788778, 14.603872, 12.038904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.132526, 14.082935, 11.707226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.828014, 14.232718, 11.495476>,  <19.645308, 14.322587, 11.368426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.828014, 14.232718, 11.495476>,  <20.132526, 14.082935, 11.707226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.828014, 14.232718, 11.495476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625528, 0.209071, -0.751667,
		-0.170789, -0.903367, -0.393394,
		-0.761279, 0.374456, -0.529375,
		19.599630, 14.345055, 11.336663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.111538, 13.726858, 10.992535>,  <20.132526, 14.082935, 11.707226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.111538, 13.726858, 10.992535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006025, 14.112315, 11.009576>,  <19.942719, 14.343589, 11.019801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006025, 14.112315, 11.009576>,  <20.111538, 13.726858, 10.992535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006025, 14.112315, 11.009576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549983, 0.186540, -0.814077,
		-0.792426, -0.191306, -0.579192,
		-0.263780, 0.963642, 0.042604,
		19.926891, 14.401407, 11.022357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.838778, 13.715040, 11.040295>,  <20.111538, 13.726858, 10.992535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.838778, 13.715040, 11.040295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.158623, 13.475136, 11.052317>,  <21.350531, 13.331193, 11.059529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.158623, 13.475136, 11.052317>,  <20.838778, 13.715040, 11.040295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158623, 13.475136, 11.052317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532690, 0.685311, -0.496579,
		0.277232, 0.413081, 0.867471,
		0.799615, -0.599760, 0.030054,
		21.398508, 13.295208, 11.061333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.488630, 14.015325, 11.328484>,  <20.838778, 13.715040, 11.040295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.488630, 14.015325, 11.328484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560955, 13.727380, 11.060423>,  <21.604351, 13.554613, 10.899587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560955, 13.727380, 11.060423>,  <21.488630, 14.015325, 11.328484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.560955, 13.727380, 11.060423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552432, 0.638077, -0.536356,
		0.813711, -0.273233, 0.513048,
		0.180814, -0.719863, -0.670152,
		21.615200, 13.511421, 10.859377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.171862, 14.117047, 11.136511>,  <21.488630, 14.015325, 11.328484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.171862, 14.117047, 11.136511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.063288, 13.867216, 10.843601>,  <21.998144, 13.717318, 10.667855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.063288, 13.867216, 10.843601>,  <22.171862, 14.117047, 11.136511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.063288, 13.867216, 10.843601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551190, 0.522838, -0.650255,
		0.788996, -0.580123, 0.202345,
		-0.271434, -0.624579, -0.732274,
		21.981857, 13.679843, 10.623919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789188, 13.791524, 10.814090>,  <22.171862, 14.117047, 11.136511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789188, 13.791524, 10.814090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.484730, 13.788379, 10.554677>,  <22.302055, 13.786491, 10.399029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.484730, 13.788379, 10.554677>,  <22.789188, 13.791524, 10.814090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.484730, 13.788379, 10.554677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562012, 0.491098, -0.665556,
		0.323726, -0.871069, -0.369378,
		-0.761146, -0.007863, -0.648533,
		22.256386, 13.786020, 10.360117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.095438, 13.594910, 10.102196>,  <22.789188, 13.791524, 10.814090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.095438, 13.594910, 10.102196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.744999, 13.766771, 10.014697>,  <22.534735, 13.869888, 9.962197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.744999, 13.766771, 10.014697>,  <23.095438, 13.594910, 10.102196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.744999, 13.766771, 10.014697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476685, 0.703885, -0.526609,
		-0.072287, -0.565634, -0.821482,
		-0.876097, 0.429655, -0.218747,
		22.482170, 13.895668, 9.949073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037846, 13.714389, 9.366503>,  <23.095438, 13.594910, 10.102196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037846, 13.714389, 9.366503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.751301, 13.967415, 9.484276>,  <22.579374, 14.119230, 9.554940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.751301, 13.967415, 9.484276>,  <23.037846, 13.714389, 9.366503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.751301, 13.967415, 9.484276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362627, 0.698054, -0.617432,
		-0.596096, -0.335534, -0.729443,
		-0.716360, 0.632564, 0.294433,
		22.536392, 14.157184, 9.572606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.738974, 13.967822, 8.756402>,  <23.037846, 13.714389, 9.366503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.738974, 13.967822, 8.756402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.660467, 14.230513, 9.047658>,  <22.613363, 14.388127, 9.222412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.660467, 14.230513, 9.047658>,  <22.738974, 13.967822, 8.756402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.660467, 14.230513, 9.047658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413161, 0.728833, -0.545986,
		-0.889257, 0.193680, -0.414380,
		-0.196268, 0.656727, 0.728140,
		22.601587, 14.427531, 9.266100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.493061, 14.548295, 8.435938>,  <22.738974, 13.967822, 8.756402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.493061, 14.548295, 8.435938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.612324, 14.686434, 8.791879>,  <22.683882, 14.769317, 9.005444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.612324, 14.686434, 8.791879>,  <22.493061, 14.548295, 8.435938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.612324, 14.686434, 8.791879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340100, 0.832634, -0.437096,
		-0.891871, 0.432963, 0.130804,
		0.298158, 0.345346, 0.889853,
		22.701771, 14.790038, 9.058834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269772, 15.227770, 8.412089>,  <22.493061, 14.548295, 8.435938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269772, 15.227770, 8.412089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534254, 15.220604, 8.712086>,  <22.692944, 15.216305, 8.892083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534254, 15.220604, 8.712086>,  <22.269772, 15.227770, 8.412089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534254, 15.220604, 8.712086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488337, 0.769191, -0.412155,
		-0.569503, 0.638768, 0.517342,
		0.661206, -0.017914, 0.749991,
		22.732616, 15.215230, 8.937083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.321577, 16.001041, 8.700755>,  <22.269772, 15.227770, 8.412089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.321577, 16.001041, 8.700755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.661009, 15.812739, 8.797338>,  <22.864668, 15.699759, 8.855287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.661009, 15.812739, 8.797338>,  <22.321577, 16.001041, 8.700755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.661009, 15.812739, 8.797338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521769, 0.820174, -0.234672,
		-0.087563, 0.325122, 0.941609,
		0.848581, -0.470754, 0.241456,
		22.915583, 15.671514, 8.869774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.686996, 16.483013, 9.207595>,  <22.321577, 16.001041, 8.700755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.686996, 16.483013, 9.207595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.940723, 16.229988, 9.029830>,  <23.092960, 16.078173, 8.923171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.940723, 16.229988, 9.029830>,  <22.686996, 16.483013, 9.207595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.940723, 16.229988, 9.029830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593251, 0.766890, -0.244812,
		0.495675, -0.108359, 0.861722,
		0.634318, -0.632564, -0.444413,
		23.131020, 16.040218, 8.896506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.261919, 16.802387, 9.217859>,  <22.686996, 16.483013, 9.207595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.261919, 16.802387, 9.217859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.376722, 16.519579, 8.959326>,  <23.445604, 16.349894, 8.804206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.376722, 16.519579, 8.959326>,  <23.261919, 16.802387, 9.217859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.376722, 16.519579, 8.959326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577037, 0.666173, -0.472486,
		0.764627, -0.237350, 0.599175,
		0.287010, -0.707022, -0.646333,
		23.462826, 16.307472, 8.765426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.953100, 16.938105, 9.034889>,  <23.261919, 16.802387, 9.217859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.953100, 16.938105, 9.034889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870100, 16.671125, 8.748825>,  <23.820299, 16.510937, 8.577187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870100, 16.671125, 8.748825>,  <23.953100, 16.938105, 9.034889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.870100, 16.671125, 8.748825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581799, 0.503519, -0.638733,
		0.786418, -0.548617, 0.283841,
		-0.207501, -0.667449, -0.715161,
		23.807850, 16.470890, 8.534277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617188, 16.655130, 8.685779>,  <23.953100, 16.938105, 9.034889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617188, 16.655130, 8.685779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304144, 16.632927, 8.437765>,  <24.116318, 16.619606, 8.288957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304144, 16.632927, 8.437765>,  <24.617188, 16.655130, 8.685779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304144, 16.632927, 8.437765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520772, 0.487313, -0.700944,
		0.341058, -0.871462, -0.352469,
		-0.782609, -0.055506, -0.620035,
		24.069361, 16.616276, 8.251755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905132, 16.408768, 8.109658>,  <24.617188, 16.655130, 8.685779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905132, 16.408768, 8.109658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572107, 16.612425, 8.022377>,  <24.372292, 16.734619, 7.970008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572107, 16.612425, 8.022377>,  <24.905132, 16.408768, 8.109658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572107, 16.612425, 8.022377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497538, 0.514172, -0.698630,
		-0.243509, -0.690217, -0.681399,
		-0.832562, 0.509144, -0.218203,
		24.322338, 16.765167, 7.956916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.972155, 16.401196, 7.406430>,  <24.905132, 16.408768, 8.109658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.972155, 16.401196, 7.406430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716562, 16.681351, 7.533652>,  <24.563206, 16.849443, 7.609986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716562, 16.681351, 7.533652>,  <24.972155, 16.401196, 7.406430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716562, 16.681351, 7.533652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375915, 0.645065, -0.665266,
		-0.671111, -0.305530, -0.675471,
		-0.638981, 0.700387, 0.318057,
		24.524868, 16.891466, 7.629069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614229, 16.701807, 6.792330>,  <24.972155, 16.401196, 7.406430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614229, 16.701807, 6.792330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547632, 16.987322, 7.064445>,  <24.507673, 17.158630, 7.227714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547632, 16.987322, 7.064445>,  <24.614229, 16.701807, 6.792330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547632, 16.987322, 7.064445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373675, 0.684130, -0.626365,
		-0.912495, 0.149920, -0.380628,
		-0.166495, 0.713786, 0.680287,
		24.497684, 17.201458, 7.268531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.243164, 17.128738, 6.500626>,  <24.614229, 16.701807, 6.792330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.243164, 17.128738, 6.500626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419058, 17.332758, 6.796324>,  <24.524593, 17.455170, 6.973743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419058, 17.332758, 6.796324>,  <24.243164, 17.128738, 6.500626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419058, 17.332758, 6.796324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258928, 0.716154, -0.648136,
		-0.859995, 0.476418, 0.182851,
		0.439733, 0.510049, 0.739247,
		24.550978, 17.485773, 7.018098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.024525, 17.761463, 6.329059>,  <24.243164, 17.128738, 6.500626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.024525, 17.761463, 6.329059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.328939, 17.816000, 6.582747>,  <24.511587, 17.848722, 6.734960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.328939, 17.816000, 6.582747>,  <24.024525, 17.761463, 6.329059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.328939, 17.816000, 6.582747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299855, 0.793019, -0.530290,
		-0.575249, 0.593744, 0.562634,
		0.761036, 0.136341, 0.634221,
		24.557251, 17.856903, 6.773013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.954140, 18.406847, 6.528948>,  <24.024525, 17.761463, 6.329059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.954140, 18.406847, 6.528948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339010, 18.312286, 6.583104>,  <24.569933, 18.255550, 6.615597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339010, 18.312286, 6.583104>,  <23.954140, 18.406847, 6.528948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.339010, 18.312286, 6.583104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268146, 0.734075, -0.623884,
		0.048101, 0.636591, 0.769700,
		0.962177, -0.236401, 0.135390,
		24.627663, 18.241365, 6.623721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276295, 19.043694, 6.585181>,  <23.954140, 18.406847, 6.528948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.276295, 19.043694, 6.585181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543907, 18.771326, 6.466020>,  <24.704475, 18.607904, 6.394523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543907, 18.771326, 6.466020>,  <24.276295, 19.043694, 6.585181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543907, 18.771326, 6.466020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220749, 0.564781, -0.795168,
		0.709695, 0.466230, 0.528168,
		0.669031, -0.680920, -0.297903,
		24.744616, 18.567051, 6.376649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885000, 19.579330, 6.510482>,  <24.276295, 19.043694, 6.585181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885000, 19.579330, 6.510482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906191, 19.233515, 6.310575>,  <24.918905, 19.026026, 6.190631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906191, 19.233515, 6.310575>,  <24.885000, 19.579330, 6.510482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906191, 19.233515, 6.310575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444223, 0.468627, -0.763581,
		0.894349, -0.181557, 0.408873,
		0.052975, -0.864538, -0.499768,
		24.922083, 18.974154, 6.160645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405159, 19.524509, 6.903111>,  <24.885000, 19.579330, 6.510482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405159, 19.524509, 6.903111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172800, 19.674726, 7.191978>,  <25.033384, 19.764856, 7.365298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172800, 19.674726, 7.191978>,  <25.405159, 19.524509, 6.903111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172800, 19.674726, 7.191978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813714, 0.245318, 0.526962,
		0.020736, 0.893748, -0.448090,
		-0.580896, 0.375544, 0.722168,
		24.998531, 19.787390, 7.408628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444437, 20.278690, 7.003222>,  <25.405159, 19.524509, 6.903111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444437, 20.278690, 7.003222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374262, 20.036093, 7.313418>,  <25.332157, 19.890533, 7.499536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374262, 20.036093, 7.313418>,  <25.444437, 20.278690, 7.003222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374262, 20.036093, 7.313418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898556, 0.223214, 0.377851,
		-0.402265, 0.763113, 0.505808,
		-0.175440, -0.606493, 0.775491,
		25.321630, 19.854145, 7.546065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873434, 20.615456, 7.465620>,  <25.444437, 20.278690, 7.003222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873434, 20.615456, 7.465620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803017, 20.233767, 7.562342>,  <25.760767, 20.004753, 7.620375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803017, 20.233767, 7.562342>,  <25.873434, 20.615456, 7.465620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803017, 20.233767, 7.562342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917308, -0.069899, 0.391994,
		-0.357147, 0.290818, 0.887621,
		-0.176043, -0.954221, 0.241806,
		25.750204, 19.947500, 7.634883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947933, 20.474758, 8.215136>,  <25.873434, 20.615456, 7.465620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947933, 20.474758, 8.215136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034304, 20.171711, 7.968758>,  <26.086126, 19.989882, 7.820931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034304, 20.171711, 7.968758>,  <25.947933, 20.474758, 8.215136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034304, 20.171711, 7.968758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960714, 0.052197, 0.272589,
		-0.174369, -0.650606, 0.739127,
		0.215928, -0.757620, -0.615944,
		26.099083, 19.944426, 7.783974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429625, 20.118370, 8.726370>,  <25.947933, 20.474758, 8.215136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429625, 20.118370, 8.726370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487595, 20.000458, 8.348566>,  <26.522377, 19.929710, 8.121883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487595, 20.000458, 8.348566>,  <26.429625, 20.118370, 8.726370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487595, 20.000458, 8.348566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989420, 0.036744, 0.140349,
		-0.006667, -0.954858, 0.296988,
		0.144926, -0.294782, -0.944510,
		26.531073, 19.912024, 8.065213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687952, 20.166746, 9.407368>,  <26.429625, 20.118370, 8.726370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687952, 20.166746, 9.407368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030958, 20.069000, 9.588456>,  <27.236761, 20.010353, 9.697109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030958, 20.069000, 9.588456>,  <26.687952, 20.166746, 9.407368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030958, 20.069000, 9.588456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350510, -0.921652, 0.166434,
		0.376581, -0.301403, -0.875981,
		0.857513, -0.244365, 0.452722,
		27.288212, 19.995691, 9.724273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942514, 19.414806, 9.169494>,  <26.687952, 20.166746, 9.407368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942514, 19.414806, 9.169494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091789, 19.472200, 9.536131>,  <27.181355, 19.506638, 9.756113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091789, 19.472200, 9.536131>,  <26.942514, 19.414806, 9.169494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091789, 19.472200, 9.536131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325280, -0.905018, 0.274110,
		0.868864, -0.400443, -0.291069,
		0.373188, 0.143486, 0.916593,
		27.203745, 19.515245, 9.811109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922016, 18.854380, 8.635652>,  <26.942514, 19.414806, 9.169494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922016, 18.854380, 8.635652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235527, 18.656904, 8.484939>,  <27.423634, 18.538420, 8.394510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235527, 18.656904, 8.484939>,  <26.922016, 18.854380, 8.635652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235527, 18.656904, 8.484939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037130, -0.568360, 0.821942,
		-0.619932, -0.658208, -0.427137,
		0.783776, -0.493689, -0.376784,
		27.470659, 18.508799, 8.371903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697420, 18.156706, 8.605898>,  <26.922016, 18.854380, 8.635652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697420, 18.156706, 8.605898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089264, 18.214603, 8.661636>,  <27.324369, 18.249342, 8.695079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089264, 18.214603, 8.661636>,  <26.697420, 18.156706, 8.605898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089264, 18.214603, 8.661636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001062, -0.689806, 0.723993,
		0.200914, -0.709378, -0.675586,
		0.979608, 0.144743, 0.139345,
		27.383146, 18.258026, 8.703440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984594, 17.477821, 8.412507>,  <26.697420, 18.156706, 8.605898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984594, 17.477821, 8.412507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221071, 17.680973, 8.663122>,  <27.362957, 17.802864, 8.813491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221071, 17.680973, 8.663122>,  <26.984594, 17.477821, 8.412507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221071, 17.680973, 8.663122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194429, -0.664175, 0.721851,
		0.782744, -0.548570, -0.293908,
		0.591192, 0.507881, 0.626537,
		27.398430, 17.833338, 8.851084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377462, 17.013905, 8.683783>,  <26.984594, 17.477821, 8.412507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377462, 17.013905, 8.683783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418507, 17.317051, 8.941500>,  <27.443134, 17.498938, 9.096130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418507, 17.317051, 8.941500>,  <27.377462, 17.013905, 8.683783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418507, 17.317051, 8.941500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141843, -0.629945, 0.763577,
		0.984556, -0.169741, 0.042858,
		0.102613, 0.757864, 0.644293,
		27.449291, 17.544411, 9.134788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945580, 16.920521, 9.126503>,  <27.377462, 17.013905, 8.683783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945580, 16.920521, 9.126503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698189, 17.154669, 9.336200>,  <27.549755, 17.295156, 9.462018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698189, 17.154669, 9.336200>,  <27.945580, 16.920521, 9.126503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698189, 17.154669, 9.336200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052570, -0.696469, 0.715658,
		0.784043, 0.415058, 0.461522,
		-0.618476, 0.585369, 0.524242,
		27.512646, 17.330280, 9.493472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977253, 16.688641, 9.776933>,  <27.945580, 16.920521, 9.126503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977253, 16.688641, 9.776933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645386, 16.910845, 9.799045>,  <27.446266, 17.044168, 9.812312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645386, 16.910845, 9.799045>,  <27.977253, 16.688641, 9.776933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645386, 16.910845, 9.799045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315050, -0.547666, 0.775116,
		0.460862, 0.625674, 0.629396,
		-0.829669, 0.555512, 0.055280,
		27.396484, 17.077499, 9.815629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871967, 16.834991, 10.527953>,  <27.977253, 16.688641, 9.776933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871967, 16.834991, 10.527953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518389, 16.878565, 10.346064>,  <27.306242, 16.904709, 10.236930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518389, 16.878565, 10.346064>,  <27.871967, 16.834991, 10.527953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518389, 16.878565, 10.346064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423909, -0.597108, 0.681001,
		-0.197336, 0.794730, 0.573989,
		-0.883946, 0.108933, -0.454724,
		27.253204, 16.911245, 10.209646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322721, 17.068209, 11.024853>,  <27.871967, 16.834991, 10.527953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322721, 17.068209, 11.024853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097754, 16.908154, 10.735420>,  <26.962772, 16.812120, 10.561761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097754, 16.908154, 10.735420>,  <27.322721, 17.068209, 11.024853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097754, 16.908154, 10.735420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626471, -0.364922, 0.688743,
		-0.539644, 0.840666, -0.045436,
		-0.562422, -0.400140, -0.723581,
		26.929028, 16.788111, 10.518346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668806, 17.238216, 11.189013>,  <27.322721, 17.068209, 11.024853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668806, 17.238216, 11.189013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642059, 16.910725, 10.960903>,  <26.626011, 16.714230, 10.824038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642059, 16.910725, 10.960903>,  <26.668806, 17.238216, 11.189013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642059, 16.910725, 10.960903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711467, -0.361590, 0.602550,
		-0.699531, 0.446023, -0.558319,
		-0.066868, -0.818728, -0.570274,
		26.622000, 16.665106, 10.789821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997641, 17.039801, 11.294314>,  <26.668806, 17.238216, 11.189013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997641, 17.039801, 11.294314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164425, 16.703188, 11.156927>,  <26.264496, 16.501221, 11.074495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164425, 16.703188, 11.156927>,  <25.997641, 17.039801, 11.294314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164425, 16.703188, 11.156927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702048, -0.538190, 0.466347,
		-0.577298, 0.046685, -0.815198,
		0.416960, -0.841530, -0.343471,
		26.289515, 16.450729, 11.053887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432320, 16.594418, 10.974731>,  <25.997641, 17.039801, 11.294314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432320, 16.594418, 10.974731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726004, 16.322855, 10.976405>,  <25.902214, 16.159918, 10.977409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726004, 16.322855, 10.976405>,  <25.432320, 16.594418, 10.974731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726004, 16.322855, 10.976405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649694, -0.700801, 0.294577,
		-0.197058, -0.219001, -0.955619,
		0.734211, -0.678908, 0.004185,
		25.946266, 16.119183, 10.977660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165937, 15.987285, 10.599382>,  <25.432320, 16.594418, 10.974731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165937, 15.987285, 10.599382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466293, 15.864936, 10.833514>,  <25.646507, 15.791527, 10.973993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466293, 15.864936, 10.833514>,  <25.165937, 15.987285, 10.599382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466293, 15.864936, 10.833514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583358, -0.722678, 0.370716,
		0.309612, -0.619822, -0.721083,
		0.750889, -0.305871, 0.585328,
		25.691561, 15.773174, 11.009112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211430, 15.265438, 10.569647>,  <25.165937, 15.987285, 10.599382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211430, 15.265438, 10.569647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389481, 15.372873, 10.911343>,  <25.496311, 15.437334, 11.116360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389481, 15.372873, 10.911343>,  <25.211430, 15.265438, 10.569647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389481, 15.372873, 10.911343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553734, -0.667140, 0.498300,
		0.703734, -0.694827, -0.148236,
		0.445127, 0.268587, 0.854238,
		25.523018, 15.453449, 11.167614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177364, 14.632919, 11.015107>,  <25.211430, 15.265438, 10.569647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177364, 14.632919, 11.015107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245047, 14.924860, 11.280041>,  <25.285656, 15.100024, 11.439001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245047, 14.924860, 11.280041>,  <25.177364, 14.632919, 11.015107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245047, 14.924860, 11.280041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520385, -0.504553, 0.688930,
		0.836999, -0.461241, 0.294430,
		0.169207, 0.729851, 0.662334,
		25.295809, 15.143815, 11.478741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637001, 14.364603, 11.636597>,  <25.177364, 14.632919, 11.015107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637001, 14.364603, 11.636597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506523, 14.695970, 11.818727>,  <25.428236, 14.894790, 11.928006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506523, 14.695970, 11.818727>,  <25.637001, 14.364603, 11.636597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506523, 14.695970, 11.818727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347641, -0.553047, 0.757156,
		0.879057, 0.088691, 0.468394,
		-0.326196, 0.828416, 0.455327,
		25.408665, 14.944494, 11.955326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826162, 14.362085, 12.375079>,  <25.637001, 14.364603, 11.636597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826162, 14.362085, 12.375079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521940, 14.621588, 12.385456>,  <25.339407, 14.777289, 12.391682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521940, 14.621588, 12.385456>,  <25.826162, 14.362085, 12.375079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521940, 14.621588, 12.385456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308546, -0.396294, 0.864725,
		0.571277, 0.649666, 0.501574,
		-0.760554, 0.648756, 0.025942,
		25.293774, 14.816215, 12.393239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793945, 14.524605, 13.098587>,  <25.826162, 14.362085, 12.375079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793945, 14.524605, 13.098587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450350, 14.654096, 12.939922>,  <25.244192, 14.731791, 12.844724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450350, 14.654096, 12.939922>,  <25.793945, 14.524605, 13.098587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450350, 14.654096, 12.939922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476346, -0.221274, 0.850959,
		0.187708, 0.919912, 0.344278,
		-0.858988, 0.323727, -0.396662,
		25.192654, 14.751214, 12.820924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592752, 15.003694, 13.656242>,  <25.793945, 14.524605, 13.098587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592752, 15.003694, 13.656242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309080, 14.869028, 13.408461>,  <25.138878, 14.788229, 13.259791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309080, 14.869028, 13.408461>,  <25.592752, 15.003694, 13.656242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309080, 14.869028, 13.408461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421331, -0.502091, 0.755239,
		-0.565284, 0.796594, 0.214225,
		-0.709179, -0.336664, -0.619453,
		25.096327, 14.768028, 13.222625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167400, 15.556380, 13.699200>,  <25.592752, 15.003694, 13.656242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167400, 15.556380, 13.699200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557198, 15.509346, 13.775662>,  <26.791075, 15.481126, 13.821540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557198, 15.509346, 13.775662>,  <26.167400, 15.556380, 13.699200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557198, 15.509346, 13.775662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191803, 0.878608, -0.437333,
		-0.116528, 0.462842, 0.878748,
		0.974491, -0.117585, 0.191157,
		26.849545, 15.474071, 13.833010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458740, 16.274811, 13.496729>,  <26.167400, 15.556380, 13.699200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458740, 16.274811, 13.496729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067146, 16.209549, 13.447790>,  <25.832190, 16.170393, 13.418427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067146, 16.209549, 13.447790>,  <26.458740, 16.274811, 13.496729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067146, 16.209549, 13.447790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180552, 0.414523, 0.891948,
		-0.094808, 0.895294, -0.435269,
		-0.978986, -0.163152, -0.122347,
		25.773451, 16.160603, 13.411086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149181, 16.904474, 13.581817>,  <26.458740, 16.274811, 13.496729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149181, 16.904474, 13.581817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952917, 16.577635, 13.702881>,  <25.835157, 16.381531, 13.775519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952917, 16.577635, 13.702881>,  <26.149181, 16.904474, 13.581817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952917, 16.577635, 13.702881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155429, 0.259703, 0.953098,
		-0.857376, 0.514691, -0.000426,
		-0.490662, -0.817097, 0.302661,
		25.805719, 16.332506, 13.793679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894501, 17.154381, 14.121057>,  <26.149181, 16.904474, 13.581817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894501, 17.154381, 14.121057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926376, 16.755875, 14.134345>,  <25.945501, 16.516771, 14.142318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926376, 16.755875, 14.134345>,  <25.894501, 17.154381, 14.121057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926376, 16.755875, 14.134345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374868, 0.060831, 0.925080,
		-0.923647, -0.061264, 0.378316,
		0.079688, -0.996266, 0.033221,
		25.950283, 16.456995, 14.144311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591078, 16.864090, 14.748319>,  <25.894501, 17.154381, 14.121057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591078, 16.864090, 14.748319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855455, 16.588272, 14.629873>,  <26.014082, 16.422781, 14.558806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855455, 16.588272, 14.629873>,  <25.591078, 16.864090, 14.748319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855455, 16.588272, 14.629873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426884, 0.020941, 0.904064,
		-0.617191, -0.723941, 0.308196,
		0.660942, -0.689544, -0.296114,
		26.053738, 16.381409, 14.541039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655972, 16.279921, 15.193618>,  <25.591078, 16.864090, 14.748319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655972, 16.279921, 15.193618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014133, 16.272795, 15.015657>,  <26.229031, 16.268518, 14.908881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014133, 16.272795, 15.015657>,  <25.655972, 16.279921, 15.193618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014133, 16.272795, 15.015657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444003, -0.039214, 0.895167,
		-0.033397, -0.999072, -0.027200,
		0.895403, -0.017819, -0.444901,
		26.282755, 16.267450, 14.882187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937143, 15.694748, 15.542856>,  <25.655972, 16.279921, 15.193618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937143, 15.694748, 15.542856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185083, 15.986245, 15.426429>,  <26.333847, 16.161144, 15.356572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185083, 15.986245, 15.426429>,  <25.937143, 15.694748, 15.542856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185083, 15.986245, 15.426429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526618, -0.111309, 0.842783,
		0.581773, -0.675681, -0.452764,
		0.619849, 0.728742, -0.291070,
		26.371038, 16.204868, 15.339108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393200, 15.104058, 15.293351>,  <25.937143, 15.694748, 15.542856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393200, 15.104058, 15.293351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454632, 14.919305, 14.943934>,  <26.491491, 14.808453, 14.734284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454632, 14.919305, 14.943934>,  <26.393200, 15.104058, 15.293351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454632, 14.919305, 14.943934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750799, -0.629290, 0.200737,
		-0.642429, 0.625026, -0.443427,
		0.153579, -0.461884, -0.873543,
		26.500706, 14.780740, 14.681871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.223197, 19.569857, 19.822144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.931398, 19.305532, 19.892756>,  <11.756319, 19.146938, 19.935123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.931398, 19.305532, 19.892756>,  <12.223197, 19.569857, 19.822144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.931398, 19.305532, 19.892756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078796, -0.337568, -0.937997,
		0.679430, -0.670356, 0.298324,
		-0.729497, -0.660811, 0.176532,
		11.712549, 19.107288, 19.945715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.510682, 18.943760, 19.579954>,  <12.223197, 19.569857, 19.822144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.510682, 18.943760, 19.579954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.120747, 18.854681, 19.583876>,  <11.886786, 18.801233, 19.586229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.120747, 18.854681, 19.583876>,  <12.510682, 18.943760, 19.579954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.120747, 18.854681, 19.583876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088056, -0.425126, -0.900841,
		0.204781, -0.877311, 0.434039,
		-0.974839, -0.222695, 0.009805,
		11.828295, 18.787872, 19.586817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.566251, 18.245888, 19.375053>,  <12.510682, 18.943760, 19.579954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.566251, 18.245888, 19.375053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.177879, 18.326582, 19.323515>,  <11.944857, 18.374998, 19.292591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.177879, 18.326582, 19.323515>,  <12.566251, 18.245888, 19.375053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177879, 18.326582, 19.323515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006749, -0.561122, -0.827706,
		-0.239276, -0.802773, 0.546170,
		-0.970928, 0.201736, -0.128846,
		11.886600, 18.387102, 19.284861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089502, 17.636717, 19.324064>,  <12.566251, 18.245888, 19.375053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089502, 17.636717, 19.324064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.918504, 17.941742, 19.129850>,  <11.815905, 18.124758, 19.013323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.918504, 17.941742, 19.129850>,  <12.089502, 17.636717, 19.324064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.918504, 17.941742, 19.129850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049883, -0.516369, -0.854912,
		-0.902640, -0.389691, 0.182706,
		-0.427495, 0.762564, -0.485535,
		11.790255, 18.170511, 18.984190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.492290, 17.266462, 18.897894>,  <12.089502, 17.636717, 19.324064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.492290, 17.266462, 18.897894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.550205, 17.624557, 18.729332>,  <11.584954, 17.839415, 18.628195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.550205, 17.624557, 18.729332>,  <11.492290, 17.266462, 18.897894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.550205, 17.624557, 18.729332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136942, -0.439926, -0.887531,
		-0.979940, 0.070796, -0.186292,
		0.144788, 0.895239, -0.421407,
		11.593641, 17.893129, 18.602909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.010862, 17.409172, 18.233931>,  <11.492290, 17.266462, 18.897894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.010862, 17.409172, 18.233931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.307484, 17.666840, 18.158945>,  <11.485456, 17.821440, 18.113953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.307484, 17.666840, 18.158945>,  <11.010862, 17.409172, 18.233931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307484, 17.666840, 18.158945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068723, -0.350892, -0.933891,
		-0.667365, 0.679646, -0.304474,
		0.741553, 0.644171, -0.187465,
		11.529949, 17.860090, 18.102705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.810298, 17.655548, 17.612728>,  <11.010862, 17.409172, 18.233931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.810298, 17.655548, 17.612728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.197495, 17.748529, 17.650591>,  <11.429812, 17.804317, 17.673307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.197495, 17.748529, 17.650591>,  <10.810298, 17.655548, 17.612728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.197495, 17.748529, 17.650591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131424, -0.148144, -0.980194,
		-0.213826, 0.961259, -0.173952,
		0.967991, 0.232452, 0.094655,
		11.487892, 17.818266, 17.678988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.930821, 18.101419, 17.066509>,  <10.810298, 17.655548, 17.612728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.930821, 18.101419, 17.066509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.278196, 17.926245, 17.159485>,  <11.486621, 17.821140, 17.215271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.278196, 17.926245, 17.159485>,  <10.930821, 18.101419, 17.066509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.278196, 17.926245, 17.159485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148767, -0.217051, -0.964758,
		0.472954, 0.872411, -0.123345,
		0.868437, -0.437936, 0.232441,
		11.538728, 17.794865, 17.229218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.437179, 18.290487, 16.490768>,  <10.930821, 18.101419, 17.066509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.437179, 18.290487, 16.490768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.626067, 17.982225, 16.661928>,  <11.739400, 17.797268, 16.764624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.626067, 17.982225, 16.661928>,  <11.437179, 18.290487, 16.490768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.626067, 17.982225, 16.661928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394723, -0.249171, -0.884369,
		0.788163, 0.586519, 0.186532,
		0.472221, -0.770655, 0.427899,
		11.767734, 17.751028, 16.790298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.090416, 18.254692, 16.204659>,  <11.437179, 18.290487, 16.490768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.090416, 18.254692, 16.204659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.019607, 17.884186, 16.337744>,  <11.977121, 17.661882, 16.417595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.019607, 17.884186, 16.337744>,  <12.090416, 18.254692, 16.204659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.019607, 17.884186, 16.337744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199269, -0.364782, -0.909520,
		0.963823, -0.094707, 0.249150,
		-0.177023, -0.926264, 0.332713,
		11.966499, 17.606306, 16.437557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.592527, 17.828878, 15.851404>,  <12.090416, 18.254692, 16.204659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.592527, 17.828878, 15.851404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.363834, 17.539577, 16.006338>,  <12.226619, 17.365997, 16.099298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.363834, 17.539577, 16.006338>,  <12.592527, 17.828878, 15.851404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.363834, 17.539577, 16.006338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351465, -0.642503, -0.680927,
		0.741346, -0.253174, 0.621538,
		-0.571733, -0.723251, 0.387335,
		12.192314, 17.322601, 16.122540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.988401, 17.275757, 16.071768>,  <12.592527, 17.828878, 15.851404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.988401, 17.275757, 16.071768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.626399, 17.143829, 15.964299>,  <12.409198, 17.064672, 15.899818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.626399, 17.143829, 15.964299>,  <12.988401, 17.275757, 16.071768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.626399, 17.143829, 15.964299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425114, -0.678166, -0.599474,
		0.015513, -0.656744, 0.753954,
		-0.905007, -0.329817, -0.268670,
		12.354897, 17.044884, 15.883698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.076810, 16.543503, 16.170790>,  <12.988401, 17.275757, 16.071768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.076810, 16.543503, 16.170790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.756575, 16.630795, 15.947564>,  <12.564434, 16.683170, 15.813628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.756575, 16.630795, 15.947564>,  <13.076810, 16.543503, 16.170790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.756575, 16.630795, 15.947564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386388, -0.523834, -0.759146,
		-0.457999, -0.823392, 0.335055,
		-0.800588, 0.218227, -0.558064,
		12.516398, 16.696262, 15.780145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763842, 15.883937, 15.983998>,  <13.076810, 16.543503, 16.170790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.763842, 15.883937, 15.983998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.631048, 16.163010, 15.730061>,  <12.551373, 16.330454, 15.577698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.631048, 16.163010, 15.730061>,  <12.763842, 15.883937, 15.983998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.631048, 16.163010, 15.730061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234771, -0.590723, -0.771964,
		-0.913603, -0.405321, 0.032314,
		-0.331982, 0.697682, -0.634844,
		12.531453, 16.372314, 15.539607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394318, 15.596093, 15.537029>,  <12.763842, 15.883937, 15.983998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394318, 15.596093, 15.537029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.492208, 15.939911, 15.357567>,  <12.550941, 16.146202, 15.249889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.492208, 15.939911, 15.357567>,  <12.394318, 15.596093, 15.537029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492208, 15.939911, 15.357567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260649, -0.504015, -0.823426,
		-0.933901, 0.084572, -0.347385,
		0.244726, 0.859544, -0.448657,
		12.565625, 16.197775, 15.222970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261103, 15.460891, 14.909976>,  <12.394318, 15.596093, 15.537029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261103, 15.460891, 14.909976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.470422, 15.796144, 14.848406>,  <12.596013, 15.997295, 14.811463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.470422, 15.796144, 14.848406>,  <12.261103, 15.460891, 14.909976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.470422, 15.796144, 14.848406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329509, -0.365601, -0.870494,
		-0.785865, 0.404808, -0.467490,
		0.523297, 0.838133, -0.153925,
		12.627411, 16.047583, 14.802228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.051653, 15.689322, 14.219032>,  <12.261103, 15.460891, 14.909976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.051653, 15.689322, 14.219032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.410012, 15.858864, 14.272270>,  <12.625028, 15.960589, 14.304214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.410012, 15.858864, 14.272270>,  <12.051653, 15.689322, 14.219032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410012, 15.858864, 14.272270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275566, -0.295191, -0.914836,
		-0.348470, 0.856276, -0.381261,
		0.895897, 0.423856, 0.133096,
		12.678782, 15.986021, 14.312199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.254704, 15.973288, 13.522035>,  <12.051653, 15.689322, 14.219032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.254704, 15.973288, 13.522035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.580652, 15.940917, 13.751619>,  <12.776222, 15.921494, 13.889370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.580652, 15.940917, 13.751619>,  <12.254704, 15.973288, 13.522035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.580652, 15.940917, 13.751619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531107, -0.292391, -0.795256,
		0.232179, 0.952869, -0.195281,
		0.814873, -0.080926, 0.573963,
		12.825114, 15.916639, 13.923808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769166, 16.012245, 12.978309>,  <12.254704, 15.973288, 13.522035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.769166, 16.012245, 12.978309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.954815, 15.870133, 13.302868>,  <13.066204, 15.784866, 13.497603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.954815, 15.870133, 13.302868>,  <12.769166, 16.012245, 12.978309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.954815, 15.870133, 13.302868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651890, -0.483178, -0.584448,
		0.599692, 0.800197, 0.007351,
		0.464121, -0.355281, 0.811398,
		13.094051, 15.763549, 13.546288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399067, 15.966970, 12.708466>,  <12.769166, 16.012245, 12.978309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399067, 15.966970, 12.708466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.394225, 15.729448, 13.030272>,  <13.391320, 15.586935, 13.223357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.394225, 15.729448, 13.030272>,  <13.399067, 15.966970, 12.708466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.394225, 15.729448, 13.030272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622501, -0.634123, -0.458672,
		0.782525, 0.495261, 0.377320,
		-0.012105, -0.593805, 0.804518,
		13.390594, 15.551307, 13.271628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.048349, 16.010752, 12.898102>,  <13.399067, 15.966970, 12.708466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.048349, 16.010752, 12.898102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.887512, 15.676343, 13.047439>,  <13.791010, 15.475698, 13.137041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.887512, 15.676343, 13.047439>,  <14.048349, 16.010752, 12.898102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.887512, 15.676343, 13.047439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844785, -0.495990, -0.200829,
		0.353073, 0.234643, 0.905694,
		-0.402093, -0.836024, 0.373343,
		13.766885, 15.425536, 13.159442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600411, 15.676437, 13.236241>,  <14.048349, 16.010752, 12.898102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600411, 15.676437, 13.236241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.326580, 15.386411, 13.206230>,  <14.162281, 15.212395, 13.188223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.326580, 15.386411, 13.206230>,  <14.600411, 15.676437, 13.236241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326580, 15.386411, 13.206230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722093, -0.660476, -0.205796,
		0.099662, -0.195061, 0.975715,
		-0.684579, -0.725067, -0.075028,
		14.121206, 15.168891, 13.183722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.066688, 15.900111, 13.790378>,  <14.600411, 15.676437, 13.236241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.066688, 15.900111, 13.790378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.372207, 16.003832, 13.553945>,  <15.555518, 16.066065, 13.412085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.372207, 16.003832, 13.553945>,  <15.066688, 15.900111, 13.790378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.372207, 16.003832, 13.553945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509528, 0.319933, 0.798764,
		0.396227, -0.911266, 0.112242,
		0.763796, 0.259302, -0.591082,
		15.601346, 16.081623, 13.376620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786495, 15.642465, 13.981745>,  <15.066688, 15.900111, 13.790378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786495, 15.642465, 13.981745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.853380, 15.976446, 13.772023>,  <15.893511, 16.176834, 13.646191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.853380, 15.976446, 13.772023>,  <15.786495, 15.642465, 13.981745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853380, 15.976446, 13.772023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599415, 0.336124, 0.726445,
		0.782778, -0.435746, -0.444280,
		0.167213, 0.834953, -0.524303,
		15.903544, 16.226933, 13.614732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.541542, 15.681012, 14.059112>,  <15.786495, 15.642465, 13.981745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.541542, 15.681012, 14.059112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.365931, 16.022600, 13.947404>,  <16.260565, 16.227552, 13.880380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.365931, 16.022600, 13.947404>,  <16.541542, 15.681012, 14.059112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365931, 16.022600, 13.947404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351438, 0.449281, 0.821363,
		0.826890, 0.262455, -0.497364,
		-0.439027, 0.853970, -0.279269,
		16.234222, 16.278791, 13.863623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959860, 16.298738, 14.265451>,  <16.541542, 15.681012, 14.059112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.959860, 16.298738, 14.265451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.606581, 16.479076, 14.213750>,  <16.394613, 16.587278, 14.182729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.606581, 16.479076, 14.213750>,  <16.959860, 16.298738, 14.265451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606581, 16.479076, 14.213750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140977, 0.518042, 0.843658,
		0.447316, 0.726893, -0.521091,
		-0.883195, 0.450843, -0.129253,
		16.341621, 16.614328, 14.174974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090387, 17.061155, 14.455235>,  <16.959860, 16.298738, 14.265451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090387, 17.061155, 14.455235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.696774, 16.998949, 14.489862>,  <16.460606, 16.961626, 14.510639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.696774, 16.998949, 14.489862>,  <17.090387, 17.061155, 14.455235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.696774, 16.998949, 14.489862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023112, 0.593915, 0.804196,
		-0.176481, 0.789354, -0.588026,
		-0.984033, -0.155516, 0.086571,
		16.401564, 16.952295, 14.515834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837671, 17.689587, 14.583527>,  <17.090387, 17.061155, 14.455235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837671, 17.689587, 14.583527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.526846, 17.450712, 14.663071>,  <16.340351, 17.307388, 14.710797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.526846, 17.450712, 14.663071>,  <16.837671, 17.689587, 14.583527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526846, 17.450712, 14.663071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305848, 0.634380, 0.709943,
		-0.550119, 0.490849, -0.675601,
		-0.777062, -0.597184, 0.198860,
		16.293728, 17.271557, 14.722729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260616, 18.254900, 14.766577>,  <16.837671, 17.689587, 14.583527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260616, 18.254900, 14.766577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.180861, 17.896633, 14.925586>,  <16.133007, 17.681673, 15.020991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.180861, 17.896633, 14.925586>,  <16.260616, 18.254900, 14.766577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180861, 17.896633, 14.925586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301638, 0.442070, 0.844742,
		-0.932340, 0.048525, -0.358312,
		-0.199390, -0.895667, 0.397522,
		16.121044, 17.627934, 15.044843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634646, 18.379505, 15.083488>,  <16.260616, 18.254900, 14.766577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634646, 18.379505, 15.083488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.771309, 18.036476, 15.237288>,  <15.853306, 17.830658, 15.329569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.771309, 18.036476, 15.237288>,  <15.634646, 18.379505, 15.083488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771309, 18.036476, 15.237288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317155, 0.279917, 0.906123,
		-0.884694, -0.431529, -0.176348,
		0.341655, -0.857572, 0.384502,
		15.873806, 17.779205, 15.352639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082684, 18.177324, 15.443849>,  <15.634646, 18.379505, 15.083488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082684, 18.177324, 15.443849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.417267, 18.010546, 15.586112>,  <15.618017, 17.910479, 15.671470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.417267, 18.010546, 15.586112>,  <15.082684, 18.177324, 15.443849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417267, 18.010546, 15.586112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335749, 0.123041, 0.933881,
		-0.433141, -0.900564, -0.037071,
		0.836458, -0.416948, 0.355658,
		15.668204, 17.885462, 15.692809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887321, 17.624979, 15.986480>,  <15.082684, 18.177324, 15.443849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887321, 17.624979, 15.986480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.266837, 17.724327, 16.064566>,  <15.494547, 17.783936, 16.111418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.266837, 17.724327, 16.064566>,  <14.887321, 17.624979, 15.986480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.266837, 17.724327, 16.064566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219012, 0.071818, 0.973076,
		0.227664, -0.965999, 0.122536,
		0.948790, 0.248371, 0.195215,
		15.551475, 17.798838, 16.123131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.107597, 17.289312, 16.612055>,  <14.887321, 17.624979, 15.986480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.107597, 17.289312, 16.612055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.352635, 17.598772, 16.547319>,  <15.499659, 17.784449, 16.508478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.352635, 17.598772, 16.547319>,  <15.107597, 17.289312, 16.612055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352635, 17.598772, 16.547319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176636, 0.333577, 0.926027,
		0.770407, -0.538694, 0.341002,
		0.612596, 0.773651, -0.161837,
		15.536414, 17.830868, 16.498768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.553196, 17.320822, 17.233498>,  <15.107597, 17.289312, 16.612055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.553196, 17.320822, 17.233498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.586367, 17.677166, 17.054840>,  <15.606269, 17.890972, 16.947645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.586367, 17.677166, 17.054840>,  <15.553196, 17.320822, 17.233498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586367, 17.677166, 17.054840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315411, 0.448612, 0.836219,
		0.945325, 0.071533, 0.318188,
		0.082926, 0.890860, -0.446646,
		15.611244, 17.944424, 16.920847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068989, 17.719198, 17.641640>,  <15.553196, 17.320822, 17.233498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068989, 17.719198, 17.641640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.826978, 17.962532, 17.436167>,  <15.681771, 18.108532, 17.312883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.826978, 17.962532, 17.436167>,  <16.068989, 17.719198, 17.641640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826978, 17.962532, 17.436167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325856, 0.399469, 0.856879,
		0.726471, 0.685821, -0.043459,
		-0.605026, 0.608337, -0.513682,
		15.645470, 18.145033, 17.282063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085209, 18.365456, 18.107767>,  <16.068989, 17.719198, 17.641640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.085209, 18.365456, 18.107767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.773977, 18.406700, 17.859909>,  <15.587238, 18.431448, 17.711195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.773977, 18.406700, 17.859909>,  <16.085209, 18.365456, 18.107767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773977, 18.406700, 17.859909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475668, 0.547570, 0.688409,
		0.410282, 0.830382, -0.377006,
		-0.778080, 0.103112, -0.619645,
		15.540553, 18.437634, 17.674015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867505, 19.027714, 18.197453>,  <16.085209, 18.365456, 18.107767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867505, 19.027714, 18.197453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.543584, 18.836796, 18.060980>,  <15.349231, 18.722244, 17.979095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.543584, 18.836796, 18.060980>,  <15.867505, 19.027714, 18.197453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543584, 18.836796, 18.060980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579469, 0.559655, 0.592454,
		-0.091831, 0.677477, -0.729789,
		-0.809804, -0.477296, -0.341183,
		15.300643, 18.693607, 17.958626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.513749, 19.501261, 18.027906>,  <15.867505, 19.027714, 18.197453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.513749, 19.501261, 18.027906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.252805, 19.199446, 18.056463>,  <15.096238, 19.018356, 18.073597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.252805, 19.199446, 18.056463>,  <15.513749, 19.501261, 18.027906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252805, 19.199446, 18.056463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608849, 0.577827, 0.543525,
		-0.451363, 0.311107, -0.836351,
		-0.652361, -0.754539, 0.071393,
		15.057096, 18.973083, 18.077881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.890215, 19.857712, 18.040480>,  <15.513749, 19.501261, 18.027906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.890215, 19.857712, 18.040480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.819898, 19.493738, 18.190741>,  <14.777707, 19.275354, 18.280897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.819898, 19.493738, 18.190741>,  <14.890215, 19.857712, 18.040480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.819898, 19.493738, 18.190741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566575, 0.405580, 0.717285,
		-0.805040, -0.086742, -0.586844,
		-0.175794, -0.909935, 0.375654,
		14.767159, 19.220758, 18.303436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078704, 19.780880, 18.097841>,  <14.890215, 19.857712, 18.040480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078704, 19.780880, 18.097841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.203915, 19.498074, 18.351500>,  <14.279041, 19.328390, 18.503695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.203915, 19.498074, 18.351500>,  <14.078704, 19.780880, 18.097841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203915, 19.498074, 18.351500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525496, 0.427248, 0.735739,
		-0.791118, -0.563547, -0.237795,
		0.313027, -0.707017, 0.634146,
		14.297823, 19.285969, 18.541744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.560421, 19.734608, 18.597401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.861681, 19.536037, 18.770063>,  <14.042437, 19.416895, 18.873661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.861681, 19.536037, 18.770063>,  <13.560421, 19.734608, 18.597401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861681, 19.536037, 18.770063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415499, 0.149752, 0.897182,
		-0.510027, -0.855063, -0.093480,
		0.753149, -0.496428, 0.431655,
		14.087626, 19.387110, 18.899561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304118, 19.257391, 19.223276>,  <13.560421, 19.734608, 18.597401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304118, 19.257391, 19.223276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.688495, 19.334036, 19.303152>,  <13.919121, 19.380022, 19.351078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.688495, 19.334036, 19.303152>,  <13.304118, 19.257391, 19.223276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.688495, 19.334036, 19.303152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252069, 0.308129, 0.917343,
		0.114242, -0.931849, 0.344393,
		0.960942, 0.191610, 0.199689,
		13.976777, 19.391520, 19.363058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.417361, 19.126616, 19.942490>,  <13.304118, 19.257391, 19.223276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.417361, 19.126616, 19.942490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.726968, 19.366465, 19.861147>,  <13.912731, 19.510374, 19.812342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.726968, 19.366465, 19.861147>,  <13.417361, 19.126616, 19.942490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.726968, 19.366465, 19.861147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186664, 0.522995, 0.831644,
		0.605028, -0.605745, 0.516734,
		0.774014, 0.599624, -0.203356,
		13.959172, 19.546350, 19.800140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.807552, 19.111097, 20.545084>,  <13.417361, 19.126616, 19.942490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.807552, 19.111097, 20.545084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.977573, 19.426409, 20.367119>,  <14.079586, 19.615595, 20.260340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.977573, 19.426409, 20.367119>,  <13.807552, 19.111097, 20.545084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.977573, 19.426409, 20.367119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072719, 0.519673, 0.851264,
		0.902244, -0.329477, 0.278211,
		0.425051, 0.788279, -0.444913,
		14.105089, 19.662893, 20.233644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.457128, 19.247135, 20.876389>,  <13.807552, 19.111097, 20.545084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.457128, 19.247135, 20.876389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.294081, 19.578695, 20.723145>,  <14.196253, 19.777632, 20.631199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.294081, 19.578695, 20.723145>,  <14.457128, 19.247135, 20.876389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.294081, 19.578695, 20.723145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108784, 0.460637, 0.880897,
		0.906650, 0.317393, -0.277935,
		-0.407617, 0.828900, -0.383109,
		14.171796, 19.827366, 20.608212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593585, 19.753277, 21.356552>,  <14.457128, 19.247135, 20.876389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.593585, 19.753277, 21.356552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.323472, 19.968296, 21.154547>,  <14.161404, 20.097307, 21.033344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.323472, 19.968296, 21.154547>,  <14.593585, 19.753277, 21.356552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.323472, 19.968296, 21.154547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108544, 0.604823, 0.788928,
		0.729528, 0.587565, -0.350079,
		-0.675283, 0.537546, -0.505012,
		14.120887, 20.129560, 21.003044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.642657, 20.526829, 21.599741>,  <14.593585, 19.753277, 21.356552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.642657, 20.526829, 21.599741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.279550, 20.446463, 21.452452>,  <14.061686, 20.398243, 21.364079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.279550, 20.446463, 21.452452>,  <14.642657, 20.526829, 21.599741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.279550, 20.446463, 21.452452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419173, 0.467632, 0.778213,
		0.015840, 0.860787, -0.508719,
		-0.907768, -0.200915, -0.368225,
		14.007219, 20.386189, 21.341984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352460, 21.175869, 21.737291>,  <14.642657, 20.526829, 21.599741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352460, 21.175869, 21.737291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.050849, 20.919950, 21.677824>,  <13.869883, 20.766399, 21.642143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.050849, 20.919950, 21.677824>,  <14.352460, 21.175869, 21.737291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050849, 20.919950, 21.677824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483126, 0.386874, 0.785441,
		-0.445008, 0.664069, -0.600817,
		-0.754028, -0.639797, -0.148667,
		13.824640, 20.728012, 21.633224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.802495, 21.605381, 21.746733>,  <14.352460, 21.175869, 21.737291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.802495, 21.605381, 21.746733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.686193, 21.230892, 21.825672>,  <13.616411, 21.006199, 21.873035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.686193, 21.230892, 21.825672>,  <13.802495, 21.605381, 21.746733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686193, 21.230892, 21.825672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402188, 0.306745, 0.862643,
		-0.868162, 0.171448, -0.465725,
		-0.290757, -0.936223, 0.197350,
		13.598966, 20.950026, 21.884876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199050, 21.637325, 22.139715>,  <13.802495, 21.605381, 21.746733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199050, 21.637325, 22.139715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.286583, 21.256598, 22.225647>,  <13.339103, 21.028160, 22.277206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.286583, 21.256598, 22.225647>,  <13.199050, 21.637325, 22.139715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.286583, 21.256598, 22.225647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248108, 0.158653, 0.955653,
		-0.943692, -0.262430, -0.201435,
		0.218833, -0.951819, 0.214830,
		13.352233, 20.971052, 22.290096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.679760, 21.426489, 22.499857>,  <13.199050, 21.637325, 22.139715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.679760, 21.426489, 22.499857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.962842, 21.163397, 22.603041>,  <13.132691, 21.005541, 22.664951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.962842, 21.163397, 22.603041>,  <12.679760, 21.426489, 22.499857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962842, 21.163397, 22.603041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325207, 0.020872, 0.945412,
		-0.627212, -0.752963, -0.199128,
		0.707704, -0.657732, 0.257960,
		13.175154, 20.966078, 22.680429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.366531, 21.005981, 23.000563>,  <12.679760, 21.426489, 22.499857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.366531, 21.005981, 23.000563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.753070, 20.928410, 23.068167>,  <12.984993, 20.881866, 23.108728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.753070, 20.928410, 23.068167>,  <12.366531, 21.005981, 23.000563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753070, 20.928410, 23.068167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170841, 0.007363, 0.985271,
		-0.192321, -0.980987, -0.026017,
		0.966346, -0.193934, 0.169009,
		13.042974, 20.870230, 23.118870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.407701, 20.550385, 23.686422>,  <12.366531, 21.005981, 23.000563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.407701, 20.550385, 23.686422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.780579, 20.685171, 23.633562>,  <13.004306, 20.766043, 23.601845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.780579, 20.685171, 23.633562>,  <12.407701, 20.550385, 23.686422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780579, 20.685171, 23.633562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209767, -0.205407, 0.955932,
		0.294974, -0.918836, -0.262165,
		0.932195, 0.336968, -0.132152,
		13.060237, 20.786261, 23.593916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.859974, 20.162281, 24.131237>,  <12.407701, 20.550385, 23.686422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.859974, 20.162281, 24.131237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.074974, 20.489132, 24.047909>,  <13.203974, 20.685242, 23.997911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.074974, 20.489132, 24.047909>,  <12.859974, 20.162281, 24.131237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.074974, 20.489132, 24.047909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422650, -0.047279, 0.905059,
		0.729699, -0.574515, -0.370771,
		0.537500, 0.817127, -0.208319,
		13.236224, 20.734270, 23.985413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.507437, 19.924686, 24.119322>,  <12.859974, 20.162281, 24.131237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.507437, 19.924686, 24.119322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.498020, 20.314123, 24.210155>,  <13.492371, 20.547785, 24.264656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.498020, 20.314123, 24.210155>,  <13.507437, 19.924686, 24.119322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498020, 20.314123, 24.210155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476984, -0.188689, 0.858419,
		0.878596, 0.128524, -0.459945,
		-0.023541, 0.973590, 0.227086,
		13.490958, 20.606201, 24.278282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062425, 19.868755, 24.500834>,  <13.507437, 19.924686, 24.119322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.062425, 19.868755, 24.500834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.907994, 20.225790, 24.593985>,  <13.815336, 20.440012, 24.649876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.907994, 20.225790, 24.593985>,  <14.062425, 19.868755, 24.500834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907994, 20.225790, 24.593985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421250, -0.053999, 0.905336,
		0.820667, 0.447628, -0.355155,
		-0.386075, 0.892588, 0.232878,
		13.792171, 20.493567, 24.663849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495478, 20.223722, 25.001738>,  <14.062425, 19.868755, 24.500834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495478, 20.223722, 25.001738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.162534, 20.433146, 25.074472>,  <13.962768, 20.558800, 25.118113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.162534, 20.433146, 25.074472>,  <14.495478, 20.223722, 25.001738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.162534, 20.433146, 25.074472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116380, -0.155663, 0.980931,
		0.541880, 0.837649, 0.068636,
		-0.832359, 0.523558, 0.181836,
		13.912826, 20.590214, 25.129023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679241, 20.745481, 25.482803>,  <14.495478, 20.223722, 25.001738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679241, 20.745481, 25.482803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.283042, 20.765591, 25.534004>,  <14.045322, 20.777657, 25.564724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.283042, 20.765591, 25.534004>,  <14.679241, 20.745481, 25.482803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.283042, 20.765591, 25.534004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122591, -0.098973, 0.987510,
		0.062315, 0.993819, 0.091870,
		-0.990499, 0.050274, 0.128001,
		13.985892, 20.780672, 25.572405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592162, 21.075169, 26.025362>,  <14.679241, 20.745481, 25.482803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592162, 21.075169, 26.025362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.218854, 20.931879, 26.014921>,  <13.994869, 20.845905, 26.008657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.218854, 20.931879, 26.014921>,  <14.592162, 21.075169, 26.025362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.218854, 20.931879, 26.014921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024593, -0.136231, 0.990372,
		-0.358332, 0.923642, 0.135950,
		-0.933270, -0.358226, -0.026101,
		13.938873, 20.824411, 26.007092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204691, 21.586670, 26.409233>,  <14.592162, 21.075169, 26.025362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204691, 21.586670, 26.409233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.007577, 21.239193, 26.429382>,  <13.889308, 21.030706, 26.441473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.007577, 21.239193, 26.429382>,  <14.204691, 21.586670, 26.409233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007577, 21.239193, 26.429382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061738, 0.022840, 0.997831,
		-0.867958, 0.494827, 0.042376,
		-0.492786, -0.868691, 0.050374,
		13.859741, 20.978586, 26.444494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503572, 21.741173, 26.799696>,  <14.204691, 21.586670, 26.409233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503572, 21.741173, 26.799696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.614202, 21.358194, 26.832676>,  <13.680581, 21.128407, 26.852465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.614202, 21.358194, 26.832676>,  <13.503572, 21.741173, 26.799696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.614202, 21.358194, 26.832676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036747, 0.075198, 0.996491,
		-0.960289, -0.278636, -0.014385,
		0.276577, -0.957448, 0.082451,
		13.697176, 21.070959, 26.857410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.087537, 21.491491, 27.336563>,  <13.503572, 21.741173, 26.799696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.087537, 21.491491, 27.336563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.389987, 21.232468, 27.298731>,  <13.571457, 21.077053, 27.276031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.389987, 21.232468, 27.298731>,  <13.087537, 21.491491, 27.336563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.389987, 21.232468, 27.298731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029141, -0.111064, 0.993386,
		-0.653779, -0.753880, -0.065108,
		0.756125, -0.647557, -0.094580,
		13.616824, 21.038200, 27.270357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.870987, 20.919542, 27.707182>,  <13.087537, 21.491491, 27.336563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.870987, 20.919542, 27.707182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.269149, 20.939913, 27.739614>,  <13.508046, 20.952135, 27.759075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.269149, 20.939913, 27.739614>,  <12.870987, 20.919542, 27.707182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269149, 20.939913, 27.739614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085242, 0.085649, 0.992672,
		0.043606, -0.995023, 0.089596,
		0.995405, 0.050924, 0.081083,
		13.567771, 20.955191, 27.763939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410826, 21.395000, 27.653418>,  <12.870987, 20.919542, 27.707182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410826, 21.395000, 27.653418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.301991, 21.028572, 27.771254>,  <12.236691, 20.808714, 27.841955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.301991, 21.028572, 27.771254>,  <12.410826, 21.395000, 27.653418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301991, 21.028572, 27.771254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338369, -0.195506, -0.920480,
		0.900820, -0.350128, -0.256776,
		-0.272085, -0.916072, 0.294588,
		12.220366, 20.753750, 27.859631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.448527, 21.136734, 26.957565>,  <12.410826, 21.395000, 27.653418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.448527, 21.136734, 26.957565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.224617, 20.929878, 27.216555>,  <12.090271, 20.805765, 27.371948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.224617, 20.929878, 27.216555>,  <12.448527, 21.136734, 26.957565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.224617, 20.929878, 27.216555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522829, -0.385786, -0.760144,
		0.642884, -0.764028, -0.054421,
		-0.559776, -0.517137, 0.647471,
		12.056684, 20.774736, 27.410795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.576678, 20.384136, 26.788538>,  <12.448527, 21.136734, 26.957565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.576678, 20.384136, 26.788538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.220532, 20.396658, 26.970207>,  <12.006845, 20.404171, 27.079208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.220532, 20.396658, 26.970207>,  <12.576678, 20.384136, 26.788538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.220532, 20.396658, 26.970207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386148, -0.580337, -0.717007,
		0.241126, -0.813774, 0.528800,
		-0.890365, 0.031306, 0.454171,
		11.953424, 20.406050, 27.106459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361791, 19.598307, 26.760620>,  <12.576678, 20.384136, 26.788538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361791, 19.598307, 26.760620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.031489, 19.817417, 26.814396>,  <11.833309, 19.948883, 26.846661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.031489, 19.817417, 26.814396>,  <12.361791, 19.598307, 26.760620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.031489, 19.817417, 26.814396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436958, -0.470559, -0.766578,
		-0.356650, -0.691749, 0.627921,
		-0.825753, 0.547775, 0.134441,
		11.783764, 19.981750, 26.854727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.763234, 19.146187, 26.841845>,  <12.361791, 19.598307, 26.760620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.763234, 19.146187, 26.841845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.651066, 19.507767, 26.712698>,  <11.583765, 19.724714, 26.635210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.651066, 19.507767, 26.712698>,  <11.763234, 19.146187, 26.841845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651066, 19.507767, 26.712698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546979, -0.426892, -0.720124,
		-0.788783, -0.025337, 0.614150,
		-0.280421, 0.903948, -0.322866,
		11.566939, 19.778952, 26.615839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.127564, 19.062531, 26.671642>,  <11.763234, 19.146187, 26.841845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.127564, 19.062531, 26.671642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.254549, 19.377188, 26.459829>,  <11.330740, 19.565983, 26.332741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.254549, 19.377188, 26.459829>,  <11.127564, 19.062531, 26.671642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.254549, 19.377188, 26.459829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430712, -0.377878, -0.819570,
		-0.844810, 0.488260, 0.218855,
		0.317463, 0.786645, -0.529534,
		11.349788, 19.613182, 26.300968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.529704, 19.259342, 26.109818>,  <11.127564, 19.062531, 26.671642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.529704, 19.259342, 26.109818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.864333, 19.441378, 25.987808>,  <11.065111, 19.550600, 25.914602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.864333, 19.441378, 25.987808>,  <10.529704, 19.259342, 26.109818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.864333, 19.441378, 25.987808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237552, -0.200372, -0.950484,
		-0.493674, 0.867608, -0.059518,
		0.836573, 0.455091, -0.305021,
		11.115305, 19.577906, 25.896301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.331653, 19.718100, 25.493214>,  <10.529704, 19.259342, 26.109818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.331653, 19.718100, 25.493214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.723321, 19.636900, 25.494839>,  <10.958322, 19.588181, 25.495813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.723321, 19.636900, 25.494839>,  <10.331653, 19.718100, 25.493214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.723321, 19.636900, 25.494839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037299, -0.199505, -0.979187,
		0.199582, 0.958640, -0.202921,
		0.979171, -0.202997, 0.004061,
		11.017073, 19.576000, 25.496058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.536951, 19.893528, 24.768913>,  <10.331653, 19.718100, 25.493214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.536951, 19.893528, 24.768913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.872440, 19.720781, 24.901596>,  <11.073734, 19.617132, 24.981207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.872440, 19.720781, 24.901596>,  <10.536951, 19.893528, 24.768913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.872440, 19.720781, 24.901596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166172, -0.377108, -0.911140,
		0.518583, 0.819316, -0.244525,
		0.838724, -0.431869, 0.331709,
		11.124058, 19.591221, 25.001108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.128142, 20.170792, 24.428543>,  <10.536951, 19.893528, 24.768913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.128142, 20.170792, 24.428543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.231505, 19.798857, 24.533329>,  <11.293523, 19.575695, 24.596201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.231505, 19.798857, 24.533329>,  <11.128142, 20.170792, 24.428543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.231505, 19.798857, 24.533329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169077, -0.223457, -0.959938,
		0.951125, 0.292347, 0.099471,
		0.258407, -0.929839, 0.261964,
		11.309028, 19.519905, 24.611917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757996, 20.104553, 24.119518>,  <11.128142, 20.170792, 24.428543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757996, 20.104553, 24.119518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.625397, 19.734831, 24.195166>,  <11.545837, 19.512997, 24.240555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.625397, 19.734831, 24.195166>,  <11.757996, 20.104553, 24.119518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.625397, 19.734831, 24.195166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085872, -0.229182, -0.969588,
		0.939540, -0.305176, 0.155345,
		-0.331498, -0.924307, 0.189119,
		11.525948, 19.457539, 24.251902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274744, 19.639860, 23.858761>,  <11.757996, 20.104553, 24.119518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.274744, 19.639860, 23.858761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.945759, 19.413551, 23.882284>,  <11.748368, 19.277765, 23.896399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.945759, 19.413551, 23.882284>,  <12.274744, 19.639860, 23.858761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.945759, 19.413551, 23.882284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160107, -0.329463, -0.930494,
		0.545822, -0.755881, 0.361555,
		-0.822462, -0.565772, 0.058806,
		11.699020, 19.243820, 23.899925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.444836, 18.991304, 23.688202>,  <12.274744, 19.639860, 23.858761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.444836, 18.991304, 23.688202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.053216, 19.015724, 23.610500>,  <11.818244, 19.030376, 23.563879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.053216, 19.015724, 23.610500>,  <12.444836, 18.991304, 23.688202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.053216, 19.015724, 23.610500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175978, -0.226230, -0.958046,
		-0.102433, -0.972159, 0.210747,
		-0.979050, 0.061049, -0.194252,
		11.759501, 19.034039, 23.552225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213284, 18.448069, 23.254419>,  <12.444836, 18.991304, 23.688202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213284, 18.448069, 23.254419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.882051, 18.661165, 23.184603>,  <11.683311, 18.789024, 23.142714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.882051, 18.661165, 23.184603>,  <12.213284, 18.448069, 23.254419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882051, 18.661165, 23.184603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018676, -0.284956, -0.958359,
		-0.560296, -0.796859, 0.226017,
		-0.828082, 0.532744, -0.174541,
		11.633626, 18.820988, 23.132240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.776340, 18.049921, 22.856480>,  <12.213284, 18.448069, 23.254419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.776340, 18.049921, 22.856480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.638947, 18.421537, 22.801483>,  <11.556511, 18.644506, 22.768484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.638947, 18.421537, 22.801483>,  <11.776340, 18.049921, 22.856480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.638947, 18.421537, 22.801483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041234, -0.131341, -0.990479,
		-0.938253, -0.345881, 0.006806,
		-0.343482, 0.929040, -0.137494,
		11.535902, 18.700249, 22.760235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.126324, 17.964426, 22.440989>,  <11.776340, 18.049921, 22.856480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.126324, 17.964426, 22.440989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.272214, 18.333317, 22.389648>,  <11.359748, 18.554651, 22.358845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.272214, 18.333317, 22.389648>,  <11.126324, 17.964426, 22.440989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.272214, 18.333317, 22.389648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013591, -0.132557, -0.991082,
		-0.931016, 0.363217, -0.035813,
		0.364725, 0.922227, -0.128349,
		11.381632, 18.609985, 22.351143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.877110, 18.146955, 21.835741>,  <11.126324, 17.964426, 22.440989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.877110, 18.146955, 21.835741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.128521, 18.456757, 21.864292>,  <11.279368, 18.642637, 21.881422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.128521, 18.456757, 21.864292>,  <10.877110, 18.146955, 21.835741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.128521, 18.456757, 21.864292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103565, 0.174291, -0.979233,
		-0.770860, 0.608085, 0.189759,
		0.628530, 0.774504, 0.071377,
		11.317080, 18.689108, 21.885706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.547262, 18.717726, 21.546295>,  <10.877110, 18.146955, 21.835741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.547262, 18.717726, 21.546295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.932937, 18.823795, 21.544168>,  <11.164341, 18.887438, 21.542892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.932937, 18.823795, 21.544168>,  <10.547262, 18.717726, 21.546295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.932937, 18.823795, 21.544168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085195, 0.290665, -0.953024,
		-0.251172, 0.919346, 0.302847,
		0.964186, 0.265174, -0.005317,
		11.222193, 18.903347, 21.542574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.604356, 19.366253, 21.184225>,  <10.547262, 18.717726, 21.546295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.604356, 19.366253, 21.184225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.970260, 19.204962, 21.174246>,  <11.189802, 19.108187, 21.168259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.970260, 19.204962, 21.174246>,  <10.604356, 19.366253, 21.184225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.970260, 19.204962, 21.174246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046688, 0.166849, -0.984877,
		0.401294, 0.899760, 0.171452,
		0.914759, -0.403230, -0.024948,
		11.244687, 19.083992, 21.166761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.021678, 19.862280, 20.785242>,  <10.604356, 19.366253, 21.184225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.021678, 19.862280, 20.785242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.205770, 19.507200, 20.779869>,  <11.316226, 19.294153, 20.776646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.205770, 19.507200, 20.779869>,  <11.021678, 19.862280, 20.785242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.205770, 19.507200, 20.779869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227989, 0.132799, -0.964565,
		0.858025, 0.440861, 0.263503,
		0.460232, -0.887697, -0.013433,
		11.343840, 19.240891, 20.775839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.664231, 19.941383, 20.451147>,  <11.021678, 19.862280, 20.785242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.664231, 19.941383, 20.451147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.579129, 19.552629, 20.410801>,  <11.528068, 19.319378, 20.386593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.579129, 19.552629, 20.410801>,  <11.664231, 19.941383, 20.451147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.579129, 19.552629, 20.410801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148012, 0.069983, -0.986506,
		0.965830, -0.224813, 0.128961,
		-0.212755, -0.971885, -0.100867,
		11.515303, 19.261065, 20.380541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.795755, 19.725573, 6.974246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.500910, 19.456545, 7.000527>,  <22.324003, 19.295128, 7.016296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.500910, 19.456545, 7.000527>,  <22.795755, 19.725573, 6.974246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.500910, 19.456545, 7.000527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334840, -0.279051, 0.900007,
		-0.586981, 0.685406, 0.430895,
		-0.737112, -0.672569, 0.065704,
		22.279776, 19.254774, 7.020238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.462948, 19.474482, 6.681490>,  <22.795755, 19.725573, 6.974246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.462948, 19.474482, 6.681490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.600348, 19.261511, 6.372031>,  <23.682787, 19.133728, 6.186355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.600348, 19.261511, 6.372031>,  <23.462948, 19.474482, 6.681490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.600348, 19.261511, 6.372031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743557, 0.349040, -0.570346,
		0.573701, 0.771164, -0.275995,
		0.343497, -0.532425, -0.773649,
		23.703396, 19.101784, 6.139936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.262499, 19.791691, 6.054225>,  <23.462948, 19.474482, 6.681490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.262499, 19.791691, 6.054225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.317602, 19.416115, 5.928108>,  <23.350664, 19.190769, 5.852438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.317602, 19.416115, 5.928108>,  <23.262499, 19.791691, 6.054225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.317602, 19.416115, 5.928108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680716, 0.141484, -0.718755,
		0.719478, 0.313639, -0.619663,
		0.137758, -0.938942, -0.315294,
		23.358929, 19.134432, 5.833520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.666996, 19.577181, 5.372962>,  <23.262499, 19.791691, 6.054225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.666996, 19.577181, 5.372962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.742353, 19.685226, 5.750649>,  <23.787567, 19.750053, 5.977261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.742353, 19.685226, 5.750649>,  <23.666996, 19.577181, 5.372962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.742353, 19.685226, 5.750649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557110, 0.821166, -0.123754,
		-0.808787, -0.502719, 0.305184,
		0.188393, 0.270112, 0.944218,
		23.798872, 19.766260, 6.033915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408895, 19.824402, 5.380958>,  <23.666996, 19.577181, 5.372962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408895, 19.824402, 5.380958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.385328, 19.521650, 5.120601>,  <24.371187, 19.339998, 4.964386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.385328, 19.521650, 5.120601>,  <24.408895, 19.824402, 5.380958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.385328, 19.521650, 5.120601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395744, -0.616310, 0.680844,
		-0.916469, -0.217473, 0.335842,
		-0.058918, -0.756880, -0.650893,
		24.367653, 19.294586, 4.925333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879271, 19.347385, 5.167752>,  <24.408895, 19.824402, 5.380958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879271, 19.347385, 5.167752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.129028, 19.163162, 4.915396>,  <25.278883, 19.052629, 4.763983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.129028, 19.163162, 4.915396>,  <24.879271, 19.347385, 5.167752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129028, 19.163162, 4.915396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723956, -0.037944, -0.688802,
		0.293293, 0.886819, -0.357115,
		0.624393, -0.460557, -0.630889,
		25.316347, 19.024996, 4.726130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.442722, 18.817078, 5.215187>,  <24.879271, 19.347385, 5.167752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.442722, 18.817078, 5.215187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.839354, 18.825712, 5.266270>,  <25.077332, 18.830893, 5.296920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.839354, 18.825712, 5.266270>,  <24.442722, 18.817078, 5.215187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839354, 18.825712, 5.266270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112083, -0.351090, 0.929609,
		0.064906, -0.936093, -0.345713,
		0.991577, 0.021588, 0.127708,
		25.136827, 18.832190, 5.304583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.841097, 18.147840, 5.435764>,  <24.442722, 18.817078, 5.215187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.841097, 18.147840, 5.435764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.069769, 18.443968, 5.577246>,  <25.206972, 18.621645, 5.662135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.069769, 18.443968, 5.577246>,  <24.841097, 18.147840, 5.435764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069769, 18.443968, 5.577246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065207, -0.388736, 0.919039,
		0.817880, -0.548462, -0.173959,
		0.571682, 0.740320, 0.353703,
		25.241274, 18.666063, 5.683357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418566, 17.818491, 5.693677>,  <24.841097, 18.147840, 5.435764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418566, 17.818491, 5.693677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.379463, 18.169283, 5.881867>,  <25.356001, 18.379759, 5.994781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.379463, 18.169283, 5.881867>,  <25.418566, 17.818491, 5.693677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379463, 18.169283, 5.881867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078635, -0.478068, 0.874796,
		0.992099, 0.048522, 0.115696,
		-0.097757, 0.876981, 0.470475,
		25.350136, 18.432377, 6.023010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763037, 17.781206, 6.285409>,  <25.418566, 17.818491, 5.693677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763037, 17.781206, 6.285409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.476566, 18.057104, 6.328009>,  <25.304684, 18.222643, 6.353569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.476566, 18.057104, 6.328009>,  <25.763037, 17.781206, 6.285409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476566, 18.057104, 6.328009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274762, -0.418920, 0.865455,
		0.641558, 0.590557, 0.489536,
		-0.716177, 0.689746, 0.106499,
		25.261713, 18.264029, 6.359959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884983, 18.060053, 6.916540>,  <25.763037, 17.781206, 6.285409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884983, 18.060053, 6.916540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.500345, 18.106779, 6.817193>,  <25.269562, 18.134815, 6.757585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.500345, 18.106779, 6.817193>,  <25.884983, 18.060053, 6.916540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500345, 18.106779, 6.817193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271776, -0.531653, 0.802174,
		-0.038339, 0.838867, 0.542984,
		-0.961597, 0.116815, -0.248367,
		25.211866, 18.141823, 6.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556250, 18.056252, 7.562994>,  <25.884983, 18.060053, 6.916540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556250, 18.056252, 7.562994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.228617, 18.008280, 7.338594>,  <25.032038, 17.979496, 7.203954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.228617, 18.008280, 7.338594>,  <25.556250, 18.056252, 7.562994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228617, 18.008280, 7.338594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409585, -0.562455, 0.718251,
		-0.401678, 0.818084, 0.411574,
		-0.819081, -0.119931, -0.561001,
		24.982893, 17.972300, 7.170294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907270, 18.226784, 7.993136>,  <25.556250, 18.056252, 7.562994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907270, 18.226784, 7.993136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.788950, 18.000786, 7.685037>,  <24.717957, 17.865187, 7.500177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.788950, 18.000786, 7.685037>,  <24.907270, 18.226784, 7.993136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788950, 18.000786, 7.685037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422454, -0.645822, 0.635961,
		-0.856757, 0.513514, -0.047647,
		-0.295803, -0.564993, -0.770249,
		24.700209, 17.831287, 7.453962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213329, 18.139347, 8.135111>,  <24.907270, 18.226784, 7.993136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.213329, 18.139347, 8.135111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.311687, 17.851433, 7.875436>,  <24.370703, 17.678684, 7.719631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.311687, 17.851433, 7.875436>,  <24.213329, 18.139347, 8.135111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311687, 17.851433, 7.875436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621609, -0.630993, 0.464165,
		-0.743733, 0.289405, -0.602583,
		0.245894, -0.719786, -0.649187,
		24.385456, 17.635496, 7.680680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.657270, 17.826656, 7.936217>,  <24.213329, 18.139347, 8.135111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.657270, 17.826656, 7.936217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.906734, 17.536039, 7.820851>,  <24.056412, 17.361670, 7.751631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.906734, 17.536039, 7.820851>,  <23.657270, 17.826656, 7.936217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.906734, 17.536039, 7.820851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617793, -0.684174, 0.387603,
		-0.478938, -0.063551, -0.875545,
		0.623659, -0.726544, -0.288416,
		24.093832, 17.318075, 7.734326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.213921, 17.345556, 7.577550>,  <23.657270, 17.826656, 7.936217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.213921, 17.345556, 7.577550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.544073, 17.155462, 7.699467>,  <23.742165, 17.041405, 7.772618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.544073, 17.155462, 7.699467>,  <23.213921, 17.345556, 7.577550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.544073, 17.155462, 7.699467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564566, -0.698413, 0.439870,
		0.003829, -0.535135, -0.844758,
		0.825379, -0.475237, 0.304794,
		23.791687, 17.012892, 7.790905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.101698, 16.581318, 7.452861>,  <23.213921, 17.345556, 7.577550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.101698, 16.581318, 7.452861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.418798, 16.586477, 7.696625>,  <23.609058, 16.589573, 7.842883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.418798, 16.586477, 7.696625>,  <23.101698, 16.581318, 7.452861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.418798, 16.586477, 7.696625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373031, -0.780427, 0.501778,
		0.482073, -0.625114, -0.613872,
		0.792750, 0.012901, 0.609410,
		23.656624, 16.590347, 7.879447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.239834, 15.907872, 7.609573>,  <23.101698, 16.581318, 7.452861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.239834, 15.907872, 7.609573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.472105, 16.080206, 7.885891>,  <23.611467, 16.183605, 8.051682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.472105, 16.080206, 7.885891>,  <23.239834, 15.907872, 7.609573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.472105, 16.080206, 7.885891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262990, -0.703749, 0.659980,
		0.770488, -0.564907, -0.295345,
		0.580676, 0.430834, 0.690795,
		23.646307, 16.209455, 8.093129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.689304, 15.414150, 7.846647>,  <23.239834, 15.907872, 7.609573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.689304, 15.414150, 7.846647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.626217, 15.681015, 8.137856>,  <23.588364, 15.841134, 8.312582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.626217, 15.681015, 8.137856>,  <23.689304, 15.414150, 7.846647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.626217, 15.681015, 8.137856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445429, -0.706052, 0.550531,
		0.881316, -0.237454, 0.408531,
		-0.157719, 0.667163, 0.728024,
		23.578901, 15.881164, 8.356263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.913033, 15.097439, 8.471744>,  <23.689304, 15.414150, 7.846647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.913033, 15.097439, 8.471744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.682648, 15.400614, 8.594253>,  <23.544416, 15.582519, 8.667758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.682648, 15.400614, 8.594253>,  <23.913033, 15.097439, 8.471744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.682648, 15.400614, 8.594253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506869, -0.625050, 0.593630,
		0.641369, 0.186667, 0.744178,
		-0.575960, 0.757936, 0.306272,
		23.509859, 15.627995, 8.686134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.070614, 15.156739, 9.196885>,  <23.913033, 15.097439, 8.471744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.070614, 15.156739, 9.196885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.711658, 15.278955, 9.069549>,  <23.496286, 15.352285, 8.993147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.711658, 15.278955, 9.069549>,  <24.070614, 15.156739, 9.196885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.711658, 15.278955, 9.069549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440403, -0.664720, 0.603483,
		-0.027220, 0.681757, 0.731072,
		-0.897387, 0.305540, -0.318342,
		23.442442, 15.370618, 8.974046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.710218, 15.087131, 9.782504>,  <24.070614, 15.156739, 9.196885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.710218, 15.087131, 9.782504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415960, 15.142666, 9.517310>,  <23.239405, 15.175987, 9.358193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415960, 15.142666, 9.517310>,  <23.710218, 15.087131, 9.782504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.415960, 15.142666, 9.517310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617091, -0.540986, 0.571430,
		-0.279329, 0.829492, 0.483650,
		-0.735645, 0.138839, -0.662985,
		23.195267, 15.184318, 9.318415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.129118, 15.230190, 10.201757>,  <23.710218, 15.087131, 9.782504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.129118, 15.230190, 10.201757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.002119, 15.110555, 9.841815>,  <22.925920, 15.038774, 9.625850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.002119, 15.110555, 9.841815>,  <23.129118, 15.230190, 10.201757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.002119, 15.110555, 9.841815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781691, -0.454645, 0.426916,
		-0.536801, 0.838954, -0.089447,
		-0.317497, -0.299089, -0.899857,
		22.906870, 15.020828, 9.571858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.377325, 15.272557, 10.236045>,  <23.129118, 15.230190, 10.201757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.377325, 15.272557, 10.236045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.436073, 15.014538, 9.936088>,  <22.471323, 14.859726, 9.756113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.436073, 15.014538, 9.936088>,  <22.377325, 15.272557, 10.236045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.436073, 15.014538, 9.936088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632552, -0.644089, 0.430148,
		-0.760465, 0.411170, -0.502626,
		0.146872, -0.645049, -0.749893,
		22.480135, 14.821023, 9.711120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723612, 14.970566, 10.065067>,  <22.377325, 15.272557, 10.236045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723612, 14.970566, 10.065067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.973692, 14.713255, 9.888288>,  <22.123739, 14.558868, 9.782220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.973692, 14.713255, 9.888288>,  <21.723612, 14.970566, 10.065067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.973692, 14.713255, 9.888288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540256, -0.765370, 0.349760,
		-0.563247, 0.020096, -0.826044,
		0.625200, -0.643277, -0.441950,
		22.161251, 14.520272, 9.755703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.338345, 14.475693, 9.731594>,  <21.723612, 14.970566, 10.065067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.338345, 14.475693, 9.731594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.696501, 14.312132, 9.802110>,  <21.911394, 14.213995, 9.844419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.696501, 14.312132, 9.802110>,  <21.338345, 14.475693, 9.731594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.696501, 14.312132, 9.802110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442713, -0.859972, 0.253874,
		0.047793, -0.305361, -0.951036,
		0.895388, -0.408903, 0.176289,
		21.965117, 14.189461, 9.854997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.358187, 13.819474, 9.386207>,  <21.338345, 14.475693, 9.731594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.358187, 13.819474, 9.386207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.612291, 13.826430, 9.695046>,  <21.764755, 13.830604, 9.880350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.612291, 13.826430, 9.695046>,  <21.358187, 13.819474, 9.386207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.612291, 13.826430, 9.695046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458519, -0.795983, 0.395186,
		0.621450, -0.605069, -0.497685,
		0.635264, 0.017391, 0.772100,
		21.802870, 13.831648, 9.926677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.571749, 13.129964, 9.520015>,  <21.358187, 13.819474, 9.386207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.571749, 13.129964, 9.520015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.649561, 13.307005, 9.870160>,  <21.696247, 13.413229, 10.080248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.649561, 13.307005, 9.870160>,  <21.571749, 13.129964, 9.520015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649561, 13.307005, 9.870160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477292, -0.736929, 0.478673,
		0.856943, -0.510920, 0.067897,
		0.194528, 0.442602, 0.875364,
		21.707920, 13.439786, 10.132770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.757107, 12.559324, 9.975690>,  <21.571749, 13.129964, 9.520015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.757107, 12.559324, 9.975690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.693840, 12.864450, 10.226480>,  <21.655880, 13.047524, 10.376955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.693840, 12.864450, 10.226480>,  <21.757107, 12.559324, 9.975690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693840, 12.864450, 10.226480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491183, -0.611617, 0.620213,
		0.856576, -0.209863, 0.471419,
		-0.158168, 0.762812, 0.626977,
		21.646389, 13.093293, 10.414574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.037209, 12.402702, 10.624141>,  <21.757107, 12.559324, 9.975690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.037209, 12.402702, 10.624141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.751844, 12.675339, 10.689231>,  <21.580626, 12.838921, 10.728285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.751844, 12.675339, 10.689231>,  <22.037209, 12.402702, 10.624141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.751844, 12.675339, 10.689231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455008, -0.627173, 0.632156,
		0.532928, 0.376945, 0.757562,
		-0.713411, 0.681590, 0.162725,
		21.537821, 12.879816, 10.738049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161690, 12.684361, 11.444093>,  <22.037209, 12.402702, 10.624141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161690, 12.684361, 11.444093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.087114, 13.075110, 11.485962>,  <22.042370, 13.309561, 11.511084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.087114, 13.075110, 11.485962>,  <22.161690, 12.684361, 11.444093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.087114, 13.075110, 11.485962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977129, -0.173276, -0.123269,
		-0.102281, -0.125262, 0.986837,
		-0.186436, 0.976875, 0.104674,
		22.031183, 13.368173, 11.517364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.910622, 12.542604, 11.795014>,  <22.161690, 12.684361, 11.444093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.910622, 12.542604, 11.795014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.302433, 12.621488, 11.778839>,  <23.537519, 12.668818, 11.769135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.302433, 12.621488, 11.778839>,  <22.910622, 12.542604, 11.795014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.302433, 12.621488, 11.778839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200664, 0.940396, -0.274571,
		-0.016120, 0.277064, 0.960716,
		0.979528, 0.197207, -0.040437,
		23.596291, 12.680650, 11.766708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.982704, 13.240305, 12.072273>,  <22.910622, 12.542604, 11.795014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.982704, 13.240305, 12.072273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.300972, 13.131310, 11.855882>,  <23.491934, 13.065914, 11.726047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.300972, 13.131310, 11.855882>,  <22.982704, 13.240305, 12.072273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.300972, 13.131310, 11.855882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044145, 0.916816, -0.396861,
		0.604118, 0.291889, 0.741513,
		0.795671, -0.272486, -0.540980,
		23.539673, 13.049564, 11.693587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.506392, 13.716336, 12.261159>,  <22.982704, 13.240305, 12.072273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.506392, 13.716336, 12.261159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.536276, 13.586363, 11.884047>,  <23.554207, 13.508379, 11.657779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.536276, 13.586363, 11.884047>,  <23.506392, 13.716336, 12.261159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.536276, 13.586363, 11.884047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193926, 0.932108, -0.305887,
		0.978167, -0.159977, 0.132651,
		0.074710, -0.324933, -0.942781,
		23.558689, 13.488883, 11.601213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274092, 13.552765, 12.369350>,  <23.506392, 13.716336, 12.261159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274092, 13.552765, 12.369350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.542940, 13.372758, 12.134153>,  <24.704250, 13.264754, 11.993035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.542940, 13.372758, 12.134153>,  <24.274092, 13.552765, 12.369350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542940, 13.372758, 12.134153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316932, -0.892540, 0.320821,
		-0.669182, -0.029277, -0.742521,
		0.672123, -0.450016, -0.587993,
		24.744577, 13.237753, 11.957755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.164778, 14.338661, 12.407414>,  <24.274092, 13.552765, 12.369350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.164778, 14.338661, 12.407414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.446001, 14.467103, 12.661218>,  <24.614735, 14.544168, 12.813499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.446001, 14.467103, 12.661218>,  <24.164778, 14.338661, 12.407414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.446001, 14.467103, 12.661218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276547, 0.698566, -0.659946,
		-0.655157, 0.639452, 0.402332,
		0.703058, 0.321104, 0.634508,
		24.656919, 14.563435, 12.851570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.047012, 15.004806, 12.293409>,  <24.164778, 14.338661, 12.407414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.047012, 15.004806, 12.293409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.400063, 14.911081, 12.456417>,  <24.611893, 14.854847, 12.554222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.400063, 14.911081, 12.456417>,  <24.047012, 15.004806, 12.293409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400063, 14.911081, 12.456417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459845, 0.610262, -0.645075,
		-0.097546, 0.756755, 0.646379,
		0.882625, -0.234310, 0.407519,
		24.664850, 14.840788, 12.578672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.288700, 15.679622, 12.330178>,  <24.047012, 15.004806, 12.293409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.288700, 15.679622, 12.330178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.590219, 15.417502, 12.349653>,  <24.771132, 15.260231, 12.361339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.590219, 15.417502, 12.349653>,  <24.288700, 15.679622, 12.330178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590219, 15.417502, 12.349653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516495, 0.545065, -0.660406,
		0.406225, 0.522961, 0.749328,
		0.753800, -0.655298, 0.048688,
		24.816359, 15.220913, 12.364260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823580, 16.084774, 12.251084>,  <24.288700, 15.679622, 12.330178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823580, 16.084774, 12.251084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.963270, 15.716385, 12.181972>,  <25.047085, 15.495352, 12.140504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.963270, 15.716385, 12.181972>,  <24.823580, 16.084774, 12.251084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963270, 15.716385, 12.181972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703012, 0.379426, -0.601506,
		0.619527, 0.088594, 0.779959,
		0.349227, -0.920970, -0.172782,
		25.068039, 15.440094, 12.130136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512909, 16.016312, 12.384000>,  <24.823580, 16.084774, 12.251084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512909, 16.016312, 12.384000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.441605, 15.746693, 12.097258>,  <25.398823, 15.584921, 11.925213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.441605, 15.746693, 12.097258>,  <25.512909, 16.016312, 12.384000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441605, 15.746693, 12.097258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835387, 0.281292, -0.472232,
		0.519953, -0.683031, 0.512949,
		-0.178261, -0.674050, -0.716854,
		25.388126, 15.544477, 11.882201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161438, 15.728815, 12.246750>,  <25.512909, 16.016312, 12.384000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161438, 15.728815, 12.246750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.961229, 15.636297, 11.913049>,  <25.841105, 15.580787, 11.712828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.961229, 15.636297, 11.913049>,  <26.161438, 15.728815, 12.246750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961229, 15.636297, 11.913049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766630, 0.329264, -0.551238,
		0.402189, -0.915471, 0.012513,
		-0.500523, -0.231294, -0.834254,
		25.811071, 15.566909, 11.662772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610172, 15.434010, 11.867265>,  <26.161438, 15.728815, 12.246750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610172, 15.434010, 11.867265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.330343, 15.548264, 11.605268>,  <26.162447, 15.616816, 11.448071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.330343, 15.548264, 11.605268>,  <26.610172, 15.434010, 11.867265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330343, 15.548264, 11.605268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705656, 0.420427, -0.570342,
		0.112466, -0.861193, -0.495680,
		-0.699572, 0.285635, -0.654990,
		26.120472, 15.633954, 11.408772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984022, 15.352613, 11.317298>,  <26.610172, 15.434010, 11.867265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984022, 15.352613, 11.317298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.668669, 15.581922, 11.228024>,  <26.479456, 15.719506, 11.174459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.668669, 15.581922, 11.228024>,  <26.984022, 15.352613, 11.317298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668669, 15.581922, 11.228024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547082, 0.487422, -0.680530,
		-0.281342, -0.658619, -0.697902,
		-0.788383, 0.573271, -0.223187,
		26.432154, 15.753903, 11.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740946, 15.276263, 10.623034>,  <26.984022, 15.352613, 11.317298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740946, 15.276263, 10.623034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.616829, 15.640074, 10.733656>,  <26.542358, 15.858360, 10.800029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.616829, 15.640074, 10.733656>,  <26.740946, 15.276263, 10.623034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616829, 15.640074, 10.733656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448816, 0.396609, -0.800790,
		-0.838023, -0.124356, -0.531274,
		-0.310292, 0.909525, 0.276555,
		26.523741, 15.912931, 10.816623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573608, 15.672943, 9.977762>,  <26.740946, 15.276263, 10.623034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573608, 15.672943, 9.977762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.586678, 15.985873, 10.226567>,  <26.594519, 16.173632, 10.375850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.586678, 15.985873, 10.226567>,  <26.573608, 15.672943, 9.977762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586678, 15.985873, 10.226567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312918, 0.583049, -0.749758,
		-0.949218, 0.219135, -0.225754,
		0.032673, 0.782326, 0.622012,
		26.596479, 16.220572, 10.413171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236773, 16.253386, 9.599797>,  <26.573608, 15.672943, 9.977762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236773, 16.253386, 9.599797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.467863, 16.405956, 9.888449>,  <26.606518, 16.497499, 10.061640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.467863, 16.405956, 9.888449>,  <26.236773, 16.253386, 9.599797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467863, 16.405956, 9.888449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301756, 0.721654, -0.623023,
		-0.758404, 0.577692, 0.301820,
		0.577725, 0.381428, 0.721628,
		26.641180, 16.520384, 10.104937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135172, 16.990776, 9.585835>,  <26.236773, 16.253386, 9.599797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135172, 16.990776, 9.585835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.491354, 16.951042, 9.763475>,  <26.705063, 16.927202, 9.870060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.491354, 16.951042, 9.763475>,  <26.135172, 16.990776, 9.585835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491354, 16.951042, 9.763475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320728, 0.829307, -0.457584,
		-0.322841, 0.549893, 0.770319,
		0.890453, -0.099336, 0.444101,
		26.758490, 16.921242, 9.896706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241226, 17.648037, 9.890994>,  <26.135172, 16.990776, 9.585835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241226, 17.648037, 9.890994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.597580, 17.471621, 9.847532>,  <26.811392, 17.365770, 9.821455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.597580, 17.471621, 9.847532>,  <26.241226, 17.648037, 9.890994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597580, 17.471621, 9.847532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382536, 0.857475, -0.344097,
		0.244929, 0.264987, 0.932626,
		0.890885, -0.441042, -0.108653,
		26.864845, 17.339308, 9.814937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745846, 18.239298, 10.082387>,  <26.241226, 17.648037, 9.890994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745846, 18.239298, 10.082387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.956091, 17.954365, 9.896349>,  <27.082237, 17.783405, 9.784726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.956091, 17.954365, 9.896349>,  <26.745846, 18.239298, 10.082387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956091, 17.954365, 9.896349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423068, 0.693176, -0.583541,
		0.738068, 0.109949, 0.665707,
		0.525612, -0.712333, -0.465095,
		27.113775, 17.740665, 9.756821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408789, 18.601694, 9.863917>,  <26.745846, 18.239298, 10.082387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408789, 18.601694, 9.863917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.439919, 18.270382, 9.641965>,  <27.458595, 18.071594, 9.508794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.439919, 18.270382, 9.641965>,  <27.408789, 18.601694, 9.863917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439919, 18.270382, 9.641965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512780, 0.510561, -0.690206,
		0.854986, -0.230817, 0.464460,
		0.077824, -0.828282, -0.554880,
		27.463266, 18.021896, 9.475501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160746, 18.552900, 9.631580>,  <27.408789, 18.601694, 9.863917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160746, 18.552900, 9.631580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.927900, 18.320929, 9.403605>,  <27.788193, 18.181746, 9.266820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.927900, 18.320929, 9.403605>,  <28.160746, 18.552900, 9.631580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927900, 18.320929, 9.403605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337693, 0.465202, -0.818261,
		0.739669, -0.668783, -0.074962,
		-0.582111, -0.579928, -0.569939,
		27.753267, 18.146950, 9.232624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607452, 18.275930, 9.083233>,  <28.160746, 18.552900, 9.631580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607452, 18.275930, 9.083233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.226435, 18.301012, 8.964087>,  <27.997824, 18.316061, 8.892599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.226435, 18.301012, 8.964087>,  <28.607452, 18.275930, 9.083233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226435, 18.301012, 8.964087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285081, 0.526776, -0.800772,
		0.106696, -0.847688, -0.519655,
		-0.952546, 0.062704, -0.297865,
		27.940670, 18.319822, 8.874727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.708066, 19.057589, 16.293425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.681130, 18.707741, 16.485468>,  <15.664968, 18.497831, 16.600695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.681130, 18.707741, 16.485468>,  <15.708066, 19.057589, 16.293425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.681130, 18.707741, 16.485468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432861, -0.459167, -0.775755,
		0.898942, 0.155582, 0.409509,
		-0.067340, -0.874620, 0.480110,
		15.660929, 18.445354, 16.629501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447330, 18.721420, 16.290674>,  <15.708066, 19.057589, 16.293425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447330, 18.721420, 16.290674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166122, 18.443407, 16.350927>,  <15.997397, 18.276598, 16.387079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166122, 18.443407, 16.350927>,  <16.447330, 18.721420, 16.290674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166122, 18.443407, 16.350927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488649, -0.625979, -0.607760,
		0.516706, -0.353661, 0.779704,
		-0.703019, -0.695036, 0.150631,
		15.955216, 18.234896, 16.396116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845161, 18.010553, 16.296085>,  <16.447330, 18.721420, 16.290674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.845161, 18.010553, 16.296085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456032, 17.923513, 16.264433>,  <16.222553, 17.871288, 16.245441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456032, 17.923513, 16.264433>,  <16.845161, 18.010553, 16.296085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456032, 17.923513, 16.264433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185915, -0.530391, -0.827116,
		0.138012, -0.819350, 0.556433,
		-0.972825, -0.217601, -0.079130,
		16.164185, 17.858232, 16.240694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.732172, 17.257177, 16.191299>,  <16.845161, 18.010553, 16.296085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.732172, 17.257177, 16.191299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421597, 17.458473, 16.039564>,  <16.235252, 17.579250, 15.948524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421597, 17.458473, 16.039564>,  <16.732172, 17.257177, 16.191299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421597, 17.458473, 16.039564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177958, -0.402353, -0.898022,
		-0.604546, -0.764764, 0.222847,
		-0.776437, 0.503238, -0.379337,
		16.188665, 17.609444, 15.925763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435434, 16.729717, 15.970305>,  <16.732172, 17.257177, 16.191299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.435434, 16.729717, 15.970305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241364, 17.019236, 15.774051>,  <16.124922, 17.192947, 15.656298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241364, 17.019236, 15.774051>,  <16.435434, 16.729717, 15.970305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241364, 17.019236, 15.774051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186258, -0.633769, -0.750763,
		-0.854349, -0.272867, 0.442303,
		-0.485176, 0.723795, -0.490636,
		16.095810, 17.236374, 15.626860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882131, 16.371639, 15.560374>,  <16.435434, 16.729717, 15.970305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882131, 16.371639, 15.560374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934540, 16.728899, 15.388272>,  <15.965985, 16.943254, 15.285011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934540, 16.728899, 15.388272>,  <15.882131, 16.371639, 15.560374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.934540, 16.728899, 15.388272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200300, -0.401197, -0.893824,
		-0.970934, 0.203292, 0.126331,
		0.131024, 0.893148, -0.430255,
		15.973846, 16.996843, 15.259196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247850, 16.587238, 15.149431>,  <15.882131, 16.371639, 15.560374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.247850, 16.587238, 15.149431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566183, 16.785086, 15.009714>,  <15.757183, 16.903793, 14.925884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566183, 16.785086, 15.009714>,  <15.247850, 16.587238, 15.149431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.566183, 16.785086, 15.009714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183046, -0.353345, -0.917410,
		-0.577187, 0.794041, -0.190666,
		0.795832, 0.494617, -0.349292,
		15.804933, 16.933472, 14.904926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078746, 16.994446, 14.540862>,  <15.247850, 16.587238, 15.149431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.078746, 16.994446, 14.540862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.473825, 16.933874, 14.525272>,  <15.710874, 16.897532, 14.515919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.473825, 16.933874, 14.525272>,  <15.078746, 16.994446, 14.540862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473825, 16.933874, 14.525272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056215, -0.111291, -0.992197,
		0.145908, 0.982184, -0.118434,
		0.987700, -0.151427, -0.038975,
		15.770135, 16.888447, 14.513580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196600, 17.143511, 13.881065>,  <15.078746, 16.994446, 14.540862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196600, 17.143511, 13.881065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551174, 16.988754, 13.982689>,  <15.763919, 16.895901, 14.043663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551174, 16.988754, 13.982689>,  <15.196600, 17.143511, 13.881065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551174, 16.988754, 13.982689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137225, -0.304541, -0.942563,
		0.442043, 0.870384, -0.216865,
		0.886436, -0.386894, 0.254058,
		15.817104, 16.872686, 14.058907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704016, 17.461992, 13.521342>,  <15.196600, 17.143511, 13.881065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704016, 17.461992, 13.521342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849707, 17.101898, 13.616769>,  <15.937121, 16.885841, 13.674025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849707, 17.101898, 13.616769>,  <15.704016, 17.461992, 13.521342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.849707, 17.101898, 13.616769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082611, -0.223923, -0.971099,
		0.927639, 0.373410, -0.007190,
		0.364228, -0.900235, 0.238567,
		15.958975, 16.831827, 13.688339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.082485, 17.311972, 12.898532>,  <15.704016, 17.461992, 13.521342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.082485, 17.311972, 12.898532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020363, 16.980536, 13.113684>,  <15.983088, 16.781673, 13.242775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020363, 16.980536, 13.113684>,  <16.082485, 17.311972, 12.898532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.020363, 16.980536, 13.113684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006569, -0.543607, -0.839314,
		0.987844, -0.133886, 0.078983,
		-0.155308, -0.828593, 0.537879,
		15.973770, 16.731958, 13.275047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523849, 16.796074, 12.624747>,  <16.082485, 17.311972, 12.898532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523849, 16.796074, 12.624747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289557, 16.567972, 12.855131>,  <16.148981, 16.431110, 12.993361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289557, 16.567972, 12.855131>,  <16.523849, 16.796074, 12.624747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.289557, 16.567972, 12.855131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160404, -0.615004, -0.772036,
		0.794475, -0.544591, 0.268756,
		-0.585730, -0.570254, 0.575960,
		16.113838, 16.396896, 13.027919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791346, 16.039726, 12.645290>,  <16.523849, 16.796074, 12.624747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791346, 16.039726, 12.645290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397154, 16.046631, 12.712861>,  <16.160639, 16.050774, 12.753404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397154, 16.046631, 12.712861>,  <16.791346, 16.039726, 12.645290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397154, 16.046631, 12.712861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123842, -0.753699, -0.645446,
		0.116177, -0.656993, 0.744892,
		-0.985478, 0.017263, 0.168926,
		16.101511, 16.051809, 12.763538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229944, 15.653234, 13.099754>,  <16.791346, 16.039726, 12.645290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229944, 15.653234, 13.099754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057053, 15.750697, 12.752466>,  <15.953318, 15.809175, 12.544093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057053, 15.750697, 12.752466>,  <16.229944, 15.653234, 13.099754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057053, 15.750697, 12.752466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146573, -0.931017, -0.334252,
		-0.889772, -0.271732, 0.366700,
		-0.432230, 0.243659, -0.868221,
		15.927384, 15.823795, 12.492000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909672, 15.387996, 13.061679>,  <16.229944, 15.653234, 13.099754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909672, 15.387996, 13.061679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140772, 15.079005, 13.167119>,  <17.279432, 14.893611, 13.230383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140772, 15.079005, 13.167119>,  <16.909672, 15.387996, 13.061679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.140772, 15.079005, 13.167119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457534, -0.039063, 0.888334,
		-0.675919, -0.633842, -0.376003,
		0.577751, -0.772475, 0.263601,
		17.314096, 14.847262, 13.246200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512596, 14.770120, 13.149822>,  <16.909672, 15.387996, 13.061679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512596, 14.770120, 13.149822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843191, 14.730066, 13.371413>,  <17.041548, 14.706035, 13.504368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843191, 14.730066, 13.371413>,  <16.512596, 14.770120, 13.149822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843191, 14.730066, 13.371413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562218, -0.197090, 0.803160,
		0.028763, -0.975259, -0.219188,
		0.826489, -0.100130, 0.553977,
		17.091137, 14.700027, 13.537606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352882, 14.185262, 13.615741>,  <16.512596, 14.770120, 13.149822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.352882, 14.185262, 13.615741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649841, 14.391354, 13.787035>,  <16.828016, 14.515009, 13.889812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649841, 14.391354, 13.787035>,  <16.352882, 14.185262, 13.615741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.649841, 14.391354, 13.787035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384916, -0.195147, 0.902085,
		0.548350, -0.834539, 0.053444,
		0.742396, 0.515230, 0.428237,
		16.872561, 14.545922, 13.915506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511940, 13.768242, 14.084787>,  <16.352882, 14.185262, 13.615741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511940, 13.768242, 14.084787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669968, 14.110996, 14.217252>,  <16.764784, 14.316648, 14.296730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669968, 14.110996, 14.217252>,  <16.511940, 13.768242, 14.084787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669968, 14.110996, 14.217252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360259, -0.187096, 0.913897,
		0.845065, -0.480356, 0.234785,
		0.395069, 0.856886, 0.331161,
		16.788488, 14.368062, 14.316600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843287, 13.529107, 14.658694>,  <16.511940, 13.768242, 14.084787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843287, 13.529107, 14.658694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757681, 13.917204, 14.703998>,  <16.706318, 14.150063, 14.731180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757681, 13.917204, 14.703998>,  <16.843287, 13.529107, 14.658694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757681, 13.917204, 14.703998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265191, -0.169300, 0.949216,
		0.940145, 0.173109, 0.293532,
		-0.214013, 0.970243, 0.113259,
		16.693478, 14.208277, 14.737975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112959, 13.720006, 15.308006>,  <16.843287, 13.529107, 14.658694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112959, 13.720006, 15.308006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.836573, 13.990104, 15.204771>,  <16.670740, 14.152163, 15.142830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.836573, 13.990104, 15.204771>,  <17.112959, 13.720006, 15.308006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836573, 13.990104, 15.204771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397520, -0.056729, 0.915838,
		0.603773, 0.735410, 0.307621,
		-0.690967, 0.675244, -0.258089,
		16.629282, 14.192677, 15.127344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020195, 14.166293, 15.847205>,  <17.112959, 13.720006, 15.308006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.020195, 14.166293, 15.847205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677116, 14.244041, 15.656803>,  <16.471270, 14.290690, 15.542562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677116, 14.244041, 15.656803>,  <17.020195, 14.166293, 15.847205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.677116, 14.244041, 15.656803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456393, 0.138537, 0.878927,
		0.236781, 0.971096, -0.030114,
		-0.857694, 0.194370, -0.476005,
		16.419807, 14.302353, 15.514002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705795, 14.764091, 16.178562>,  <17.020195, 14.166293, 15.847205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705795, 14.764091, 16.178562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407961, 14.614730, 15.957232>,  <16.229261, 14.525113, 15.824435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407961, 14.614730, 15.957232>,  <16.705795, 14.764091, 16.178562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407961, 14.614730, 15.957232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644443, 0.185992, 0.741687,
		-0.174033, 0.908834, -0.379123,
		-0.744584, -0.373402, -0.553323,
		16.184586, 14.502709, 15.791236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094017, 15.265368, 16.223196>,  <16.705795, 14.764091, 16.178562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094017, 15.265368, 16.223196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976881, 14.894556, 16.129511>,  <15.906599, 14.672069, 16.073299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976881, 14.894556, 16.129511>,  <16.094017, 15.265368, 16.223196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976881, 14.894556, 16.129511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696286, 0.038873, 0.716711,
		-0.655310, 0.372961, -0.656863,
		-0.292840, -0.927032, -0.234214,
		15.889030, 14.616446, 16.059246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446863, 15.360372, 16.050941>,  <16.094017, 15.265368, 16.223196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446863, 15.360372, 16.050941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456903, 14.963361, 16.098705>,  <15.462926, 14.725154, 16.127363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456903, 14.963361, 16.098705>,  <15.446863, 15.360372, 16.050941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.456903, 14.963361, 16.098705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819715, 0.047940, 0.570762,
		-0.572221, -0.112207, -0.812387,
		0.025098, -0.992528, 0.119410,
		15.464432, 14.665603, 16.134529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792866, 15.127728, 15.922845>,  <15.446863, 15.360372, 16.050941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.792866, 15.127728, 15.922845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976579, 14.871902, 16.169428>,  <15.086806, 14.718408, 16.317377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976579, 14.871902, 16.169428>,  <14.792866, 15.127728, 15.922845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976579, 14.871902, 16.169428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784752, 0.033024, 0.618929,
		-0.416202, -0.768028, -0.486732,
		0.459281, -0.639564, 0.616457,
		15.114363, 14.680034, 16.354364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.266208, 14.847525, 16.181042>,  <14.792866, 15.127728, 15.922845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.266208, 14.847525, 16.181042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.534293, 14.729915, 16.453617>,  <14.695145, 14.659348, 16.617163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.534293, 14.729915, 16.453617>,  <14.266208, 14.847525, 16.181042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534293, 14.729915, 16.453617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702048, 0.046625, 0.710601,
		-0.240707, -0.954660, -0.175171,
		0.670215, -0.294026, 0.681440,
		14.735357, 14.641706, 16.658049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.922895, 14.398418, 16.686962>,  <14.266208, 14.847525, 16.181042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.922895, 14.398418, 16.686962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.258652, 14.527165, 16.862154>,  <14.460105, 14.604414, 16.967268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.258652, 14.527165, 16.862154>,  <13.922895, 14.398418, 16.686962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.258652, 14.527165, 16.862154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469588, 0.023677, 0.882568,
		0.273701, -0.946488, 0.171020,
		0.839390, 0.321869, 0.437979,
		14.510468, 14.623726, 16.993547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.988465, 14.020101, 17.303352>,  <13.922895, 14.398418, 16.686962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.988465, 14.020101, 17.303352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221771, 14.341658, 17.349928>,  <14.361754, 14.534592, 17.377874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221771, 14.341658, 17.349928>,  <13.988465, 14.020101, 17.303352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.221771, 14.341658, 17.349928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429432, 0.183493, 0.884262,
		0.689486, -0.565762, 0.452242,
		0.583265, 0.803893, 0.116441,
		14.396750, 14.582826, 17.384861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.969075, 13.247076, 17.283987>,  <13.988465, 14.020101, 17.303352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.969075, 13.247076, 17.283987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.822460, 12.902890, 17.425550>,  <13.734491, 12.696379, 17.510489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.822460, 12.902890, 17.425550>,  <13.969075, 13.247076, 17.283987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.822460, 12.902890, 17.425550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196493, -0.300210, -0.933416,
		0.909418, -0.411672, -0.059037,
		-0.366537, -0.860465, 0.353907,
		13.712499, 12.644751, 17.531723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294870, 12.774333, 16.837664>,  <13.969075, 13.247076, 17.283987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294870, 12.774333, 16.837664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967360, 12.611621, 16.999716>,  <13.770853, 12.513993, 17.096947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967360, 12.611621, 16.999716>,  <14.294870, 12.774333, 16.837664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.967360, 12.611621, 16.999716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263635, -0.360464, -0.894741,
		0.510000, -0.839401, 0.187898,
		-0.818778, -0.406781, 0.405133,
		13.721726, 12.489587, 17.121256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.283900, 12.110554, 16.635614>,  <14.294870, 12.774333, 16.837664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.283900, 12.110554, 16.635614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.900058, 12.175233, 16.727711>,  <13.669752, 12.214041, 16.782969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.900058, 12.175233, 16.727711>,  <14.283900, 12.110554, 16.635614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.900058, 12.175233, 16.727711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277068, -0.400901, -0.873219,
		-0.048894, -0.901738, 0.429509,
		-0.959606, 0.161698, 0.230241,
		13.612176, 12.223742, 16.796783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.907292, 11.464434, 16.512974>,  <14.283900, 12.110554, 16.635614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.907292, 11.464434, 16.512974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644269, 11.765214, 16.494261>,  <13.486455, 11.945682, 16.483032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644269, 11.765214, 16.494261>,  <13.907292, 11.464434, 16.512974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.644269, 11.765214, 16.494261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358011, -0.366500, -0.858781,
		-0.662908, -0.547949, 0.510202,
		-0.657557, 0.751951, -0.046784,
		13.447001, 11.990799, 16.480227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.279158, 11.146975, 16.337318>,  <13.907292, 11.464434, 16.512974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.279158, 11.146975, 16.337318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225724, 11.535168, 16.257002>,  <13.193664, 11.768084, 16.208813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225724, 11.535168, 16.257002>,  <13.279158, 11.146975, 16.337318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225724, 11.535168, 16.257002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533733, -0.241165, -0.810536,
		-0.835036, -0.001106, 0.550195,
		-0.133585, 0.970483, -0.200791,
		13.185649, 11.826313, 16.196764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.569736, 11.385278, 16.187502>,  <13.279158, 11.146975, 16.337318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.569736, 11.385278, 16.187502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.759748, 11.673087, 15.984866>,  <12.873755, 11.845773, 15.863285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.759748, 11.673087, 15.984866>,  <12.569736, 11.385278, 16.187502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.759748, 11.673087, 15.984866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560096, -0.196794, -0.804714,
		-0.678704, 0.666002, 0.309519,
		0.475029, 0.719523, -0.506590,
		12.902256, 11.888945, 15.832890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040767, 11.561223, 15.707632>,  <12.569736, 11.385278, 16.187502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040767, 11.561223, 15.707632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.386223, 11.701750, 15.563022>,  <12.593496, 11.786066, 15.476255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.386223, 11.701750, 15.563022>,  <12.040767, 11.561223, 15.707632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.386223, 11.701750, 15.563022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391738, 0.016346, -0.919932,
		-0.317279, 0.936114, 0.151742,
		0.863641, 0.351318, -0.361525,
		12.645315, 11.807145, 15.454564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.900047, 12.181421, 15.339295>,  <12.040767, 11.561223, 15.707632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.900047, 12.181421, 15.339295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.256736, 12.055449, 15.209278>,  <12.470749, 11.979867, 15.131268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.256736, 12.055449, 15.209278>,  <11.900047, 12.181421, 15.339295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.256736, 12.055449, 15.209278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335996, 0.020509, -0.941640,
		0.303215, 0.948894, -0.087527,
		0.891721, -0.314928, -0.325043,
		12.524252, 11.960971, 15.111765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150824, 12.652345, 14.795842>,  <11.900047, 12.181421, 15.339295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150824, 12.652345, 14.795842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317778, 12.291630, 14.750999>,  <12.417950, 12.075201, 14.724093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317778, 12.291630, 14.750999>,  <12.150824, 12.652345, 14.795842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317778, 12.291630, 14.750999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275878, -0.008200, -0.961157,
		0.865841, 0.432100, -0.252206,
		0.417385, -0.901788, -0.112107,
		12.442993, 12.021093, 14.717367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.390215, 12.742452, 14.180082>,  <12.150824, 12.652345, 14.795842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.390215, 12.742452, 14.180082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421403, 12.346991, 14.231443>,  <12.440116, 12.109714, 14.262259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421403, 12.346991, 14.231443>,  <12.390215, 12.742452, 14.180082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.421403, 12.346991, 14.231443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033370, -0.131310, -0.990780,
		0.996397, 0.072965, -0.043229,
		0.077969, -0.988653, 0.128402,
		12.444794, 12.050395, 14.269964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910385, 12.449604, 13.681443>,  <12.390215, 12.742452, 14.180082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910385, 12.449604, 13.681443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631494, 12.179281, 13.777073>,  <12.464159, 12.017087, 13.834451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631494, 12.179281, 13.777073>,  <12.910385, 12.449604, 13.681443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.631494, 12.179281, 13.777073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126572, -0.212207, -0.968993,
		0.705587, -0.705869, 0.062418,
		-0.697228, -0.675808, 0.239074,
		12.422325, 11.976539, 13.848795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.890535, 11.976011, 13.073343>,  <12.910385, 12.449604, 13.681443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.890535, 11.976011, 13.073343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560476, 11.841982, 13.255270>,  <12.362441, 11.761564, 13.364427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560476, 11.841982, 13.255270>,  <12.890535, 11.976011, 13.073343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.560476, 11.841982, 13.255270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392136, -0.239810, -0.888099,
		0.406648, -0.911163, 0.066484,
		-0.825146, -0.335073, 0.454818,
		12.312932, 11.741460, 13.391715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.411995, 14.018569, 22.911699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.804957, 14.041466, 22.840590>,  <14.040734, 14.055204, 22.797924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.804957, 14.041466, 22.840590>,  <13.411995, 14.018569, 22.911699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804957, 14.041466, 22.840590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139628, -0.407042, -0.902674,
		-0.124033, 0.911614, -0.391887,
		0.982405, 0.057242, -0.177774,
		14.099679, 14.058639, 22.787258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513747, 14.156447, 22.248518>,  <13.411995, 14.018569, 22.911699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513747, 14.156447, 22.248518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.870220, 14.007174, 22.351688>,  <14.084105, 13.917609, 22.413591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.870220, 14.007174, 22.351688>,  <13.513747, 14.156447, 22.248518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870220, 14.007174, 22.351688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063005, -0.461235, -0.885038,
		0.449246, 0.804982, -0.387532,
		0.891183, -0.373184, 0.257926,
		14.137575, 13.895219, 22.429066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912962, 14.245282, 21.721327>,  <13.513747, 14.156447, 22.248518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912962, 14.245282, 21.721327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.116151, 13.958432, 21.912197>,  <14.238064, 13.786323, 22.026720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.116151, 13.958432, 21.912197>,  <13.912962, 14.245282, 21.721327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.116151, 13.958432, 21.912197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175427, -0.456232, -0.872398,
		0.843320, 0.526863, -0.105950,
		0.507972, -0.717124, 0.477176,
		14.268542, 13.743295, 22.055349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661983, 14.281046, 21.624168>,  <13.912962, 14.245282, 21.721327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.661983, 14.281046, 21.624168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.579212, 13.901919, 21.721184>,  <14.529550, 13.674443, 21.779392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.579212, 13.901919, 21.721184>,  <14.661983, 14.281046, 21.624168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579212, 13.901919, 21.721184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182114, -0.280884, -0.942305,
		0.961258, -0.150818, 0.230733,
		-0.206926, -0.947817, 0.242536,
		14.517135, 13.617574, 21.793945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211256, 13.922209, 21.353144>,  <14.661983, 14.281046, 21.624168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211256, 13.922209, 21.353144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.921722, 13.654768, 21.421303>,  <14.748002, 13.494304, 21.462198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.921722, 13.654768, 21.421303>,  <15.211256, 13.922209, 21.353144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.921722, 13.654768, 21.421303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140330, -0.384461, -0.912413,
		0.675552, -0.636524, 0.372111,
		-0.723835, -0.668601, 0.170400,
		14.704572, 13.454187, 21.472424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469520, 13.227371, 21.350534>,  <15.211256, 13.922209, 21.353144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469520, 13.227371, 21.350534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.082847, 13.222369, 21.248264>,  <14.850842, 13.219368, 21.186903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.082847, 13.222369, 21.248264>,  <15.469520, 13.227371, 21.350534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082847, 13.222369, 21.248264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240826, -0.382976, -0.891814,
		-0.086765, -0.923674, 0.373228,
		-0.966682, -0.012505, -0.255673,
		14.792842, 13.218617, 21.171562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528520, 12.880155, 20.691744>,  <15.469520, 13.227371, 21.350534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528520, 12.880155, 20.691744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.136966, 12.957225, 20.719057>,  <14.902034, 13.003467, 20.735445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.136966, 12.957225, 20.719057>,  <15.528520, 12.880155, 20.691744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136966, 12.957225, 20.719057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140201, -0.389724, -0.910197,
		-0.148760, -0.900551, 0.408507,
		-0.978884, 0.192674, 0.068283,
		14.843301, 13.015027, 20.739542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181444, 12.252132, 20.415001>,  <15.528520, 12.880155, 20.691744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181444, 12.252132, 20.415001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.924981, 12.557707, 20.385822>,  <14.771104, 12.741052, 20.368315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.924981, 12.557707, 20.385822>,  <15.181444, 12.252132, 20.415001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924981, 12.557707, 20.385822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095781, -0.173971, -0.980082,
		-0.761409, -0.621399, 0.184713,
		-0.641157, 0.763935, -0.072945,
		14.732634, 12.786887, 20.363939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.640447, 11.938004, 20.159340>,  <15.181444, 12.252132, 20.415001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.640447, 11.938004, 20.159340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.601749, 12.325127, 20.066393>,  <14.578531, 12.557400, 20.010624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.601749, 12.325127, 20.066393>,  <14.640447, 11.938004, 20.159340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.601749, 12.325127, 20.066393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290929, -0.250765, -0.923297,
		-0.951841, -0.021719, 0.305822,
		-0.096743, 0.967804, -0.232370,
		14.572726, 12.615468, 19.996681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.961947, 12.047087, 19.880789>,  <14.640447, 11.938004, 20.159340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.961947, 12.047087, 19.880789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.139040, 12.374299, 19.733919>,  <14.245296, 12.570626, 19.645798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.139040, 12.374299, 19.733919>,  <13.961947, 12.047087, 19.880789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139040, 12.374299, 19.733919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655710, 0.016069, -0.754842,
		-0.611583, 0.574950, 0.543505,
		0.442730, 0.818030, -0.367173,
		14.271859, 12.619708, 19.623768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.437298, 12.476025, 19.628628>,  <13.961947, 12.047087, 19.880789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.437298, 12.476025, 19.628628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.776122, 12.587160, 19.447392>,  <13.979417, 12.653841, 19.338650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.776122, 12.587160, 19.447392>,  <13.437298, 12.476025, 19.628628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.776122, 12.587160, 19.447392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480538, 0.036108, -0.876230,
		-0.227089, 0.959949, 0.164097,
		0.847062, 0.277838, -0.453093,
		14.030241, 12.670511, 19.311464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212173, 13.055132, 19.249348>,  <13.437298, 12.476025, 19.628628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212173, 13.055132, 19.249348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.541394, 12.915161, 19.070402>,  <13.738927, 12.831179, 18.963036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.541394, 12.915161, 19.070402>,  <13.212173, 13.055132, 19.249348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.541394, 12.915161, 19.070402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509644, -0.107364, -0.853660,
		0.250688, 0.930604, -0.266705,
		0.823054, -0.349927, -0.447362,
		13.788310, 12.810184, 18.936193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093925, 13.304420, 18.537487>,  <13.212173, 13.055132, 19.249348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093925, 13.304420, 18.537487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.377388, 13.027130, 18.484962>,  <13.547465, 12.860756, 18.453447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.377388, 13.027130, 18.484962>,  <13.093925, 13.304420, 18.537487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377388, 13.027130, 18.484962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411609, -0.255036, -0.874948,
		0.573048, 0.674087, -0.466071,
		0.708656, -0.693227, -0.131313,
		13.589985, 12.819162, 18.445568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.545812, 13.528282, 17.934645>,  <13.093925, 13.304420, 18.537487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.545812, 13.528282, 17.934645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.546620, 13.132634, 17.993484>,  <13.547106, 12.895246, 18.028788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.546620, 13.132634, 17.993484>,  <13.545812, 13.528282, 17.934645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.546620, 13.132634, 17.993484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337870, -0.139123, -0.930854,
		0.941191, -0.047818, -0.334475,
		0.002022, -0.989120, 0.147097,
		13.547227, 12.835898, 18.037613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.262756, 13.922018, 17.986851>,  <13.545812, 13.528282, 17.934645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.262756, 13.922018, 17.986851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.286915, 14.311566, 17.899282>,  <14.301410, 14.545296, 17.846741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.286915, 14.311566, 17.899282>,  <14.262756, 13.922018, 17.986851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286915, 14.311566, 17.899282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416351, 0.223912, 0.881201,
		0.907196, 0.037927, 0.418995,
		0.060396, 0.973871, -0.218923,
		14.305034, 14.603727, 17.833605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538698, 14.249636, 18.527098>,  <14.262756, 13.922018, 17.986851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.538698, 14.249636, 18.527098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.369514, 14.564175, 18.346981>,  <14.268003, 14.752898, 18.238911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.369514, 14.564175, 18.346981>,  <14.538698, 14.249636, 18.527098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.369514, 14.564175, 18.346981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364043, 0.307604, 0.879120,
		0.829805, 0.535760, 0.156159,
		-0.422962, 0.786347, -0.450291,
		14.242625, 14.800078, 18.211893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.788342, 14.791128, 18.803238>,  <14.538698, 14.249636, 18.527098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.788342, 14.791128, 18.803238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.438215, 14.924137, 18.662811>,  <14.228139, 15.003942, 18.578556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.438215, 14.924137, 18.662811>,  <14.788342, 14.791128, 18.803238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.438215, 14.924137, 18.662811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150356, 0.502865, 0.851187,
		0.459579, 0.797844, -0.390170,
		-0.875317, 0.332523, -0.351067,
		14.175620, 15.023894, 18.557491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728975, 15.280807, 19.220579>,  <14.788342, 14.791128, 18.803238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.728975, 15.280807, 19.220579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.386321, 15.327044, 19.019457>,  <14.180729, 15.354785, 18.898783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.386321, 15.327044, 19.019457>,  <14.728975, 15.280807, 19.220579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.386321, 15.327044, 19.019457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417771, 0.416439, 0.807494,
		0.302727, 0.901786, -0.308446,
		-0.856635, 0.115591, -0.502808,
		14.129331, 15.361721, 18.868614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627968, 15.952621, 19.234877>,  <14.728975, 15.280807, 19.220579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627968, 15.952621, 19.234877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.274945, 15.773028, 19.179005>,  <14.063131, 15.665274, 19.145481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.274945, 15.773028, 19.179005>,  <14.627968, 15.952621, 19.234877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274945, 15.773028, 19.179005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373934, 0.490076, 0.787400,
		-0.285072, 0.747156, -0.600409,
		-0.882557, -0.448980, -0.139680,
		14.010179, 15.638334, 19.137100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.118134, 16.459654, 19.058451>,  <14.627968, 15.952621, 19.234877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.118134, 16.459654, 19.058451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.923619, 16.147999, 19.216675>,  <13.806911, 15.961005, 19.311609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.923619, 16.147999, 19.216675>,  <14.118134, 16.459654, 19.058451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923619, 16.147999, 19.216675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208381, 0.543033, 0.813445,
		-0.848588, 0.313142, -0.426428,
		-0.486288, -0.779139, 0.395558,
		13.777733, 15.914257, 19.335342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.546622, 16.771534, 19.394781>,  <14.118134, 16.459654, 19.058451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.546622, 16.771534, 19.394781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.578969, 16.401863, 19.544104>,  <13.598377, 16.180061, 19.633698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.578969, 16.401863, 19.544104>,  <13.546622, 16.771534, 19.394781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.578969, 16.401863, 19.544104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144941, 0.359647, 0.921763,
		-0.986130, -0.128648, -0.104868,
		0.080868, -0.924178, 0.373305,
		13.603230, 16.124609, 19.656096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.981237, 16.715961, 19.791433>,  <13.546622, 16.771534, 19.394781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.981237, 16.715961, 19.791433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.249044, 16.456745, 19.936644>,  <13.409728, 16.301214, 20.023769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.249044, 16.456745, 19.936644>,  <12.981237, 16.715961, 19.791433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.249044, 16.456745, 19.936644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192365, 0.320786, 0.927411,
		-0.717456, -0.690751, 0.090111,
		0.669516, -0.648043, 0.363026,
		13.449900, 16.262333, 20.045551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700050, 16.595743, 20.376530>,  <12.981237, 16.715961, 19.791433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700050, 16.595743, 20.376530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.066725, 16.445578, 20.431299>,  <13.286730, 16.355478, 20.464161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.066725, 16.445578, 20.431299>,  <12.700050, 16.595743, 20.376530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.066725, 16.445578, 20.431299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037105, 0.261207, 0.964569,
		-0.397880, -0.889288, 0.225516,
		0.916687, -0.375415, 0.136926,
		13.341731, 16.332952, 20.472378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.622185, 16.214941, 21.037106>,  <12.700050, 16.595743, 20.376530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.622185, 16.214941, 21.037106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.015880, 16.257843, 20.980860>,  <13.252096, 16.283585, 20.947111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.015880, 16.257843, 20.980860>,  <12.622185, 16.214941, 21.037106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.015880, 16.257843, 20.980860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094347, 0.354066, 0.930449,
		0.149584, -0.929050, 0.338366,
		0.984237, 0.107256, -0.140616,
		13.311151, 16.290020, 20.938675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.961530, 15.877884, 21.673485>,  <12.622185, 16.214941, 21.037106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.961530, 15.877884, 21.673485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.196451, 16.157120, 21.509659>,  <13.337404, 16.324661, 21.411364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.196451, 16.157120, 21.509659>,  <12.961530, 15.877884, 21.673485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.196451, 16.157120, 21.509659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191198, 0.372043, 0.908310,
		0.786458, -0.611763, 0.085029,
		0.587304, 0.698091, -0.409564,
		13.372643, 16.366547, 21.386789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.714007, 15.667987, 22.021086>,  <12.961530, 15.877884, 21.673485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.714007, 15.667987, 22.021086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.742065, 16.038416, 21.872778>,  <13.758900, 16.260674, 21.783794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.742065, 16.038416, 21.872778>,  <13.714007, 15.667987, 22.021086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742065, 16.038416, 21.872778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232194, 0.346316, 0.908929,
		0.970137, -0.149846, -0.190736,
		0.070144, 0.926073, -0.370768,
		13.763108, 16.316238, 21.761547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349587, 15.948000, 22.277498>,  <13.714007, 15.667987, 22.021086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349587, 15.948000, 22.277498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.124779, 16.257401, 22.160315>,  <13.989893, 16.443041, 22.090004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.124779, 16.257401, 22.160315>,  <14.349587, 15.948000, 22.277498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124779, 16.257401, 22.160315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278291, 0.510382, 0.813674,
		0.778900, 0.375775, -0.502105,
		-0.562023, 0.773501, -0.292961,
		13.956172, 16.489450, 22.072426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688502, 16.527273, 22.340689>,  <14.349587, 15.948000, 22.277498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688502, 16.527273, 22.340689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.315732, 16.672197, 22.346928>,  <14.092070, 16.759151, 22.350672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.315732, 16.672197, 22.346928>,  <14.688502, 16.527273, 22.340689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315732, 16.672197, 22.346928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242411, 0.590382, 0.769861,
		0.269721, 0.721235, -0.638021,
		-0.931927, 0.362311, 0.015597,
		14.036154, 16.780891, 22.351606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.445067, 17.202442, 22.241213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.763477, 16.963915, 22.282677>,  <9.954523, 16.820799, 22.307556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.763477, 16.963915, 22.282677>,  <9.445067, 17.202442, 22.241213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.763477, 16.963915, 22.282677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115879, -0.017950, -0.993101,
		0.594067, 0.802546, 0.054812,
		0.796026, -0.596320, 0.103662,
		10.002285, 16.785019, 22.313776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.747044, 17.383938, 21.654121>,  <9.445067, 17.202442, 22.241213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.747044, 17.383938, 21.654121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.953359, 17.064264, 21.777586>,  <10.077147, 16.872461, 21.851664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.953359, 17.064264, 21.777586>,  <9.747044, 17.383938, 21.654121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.953359, 17.064264, 21.777586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127419, -0.284713, -0.950107,
		0.847188, 0.529383, -0.045021,
		0.515788, -0.799182, 0.308659,
		10.108095, 16.824509, 21.870184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.411295, 17.440401, 21.360050>,  <9.747044, 17.383938, 21.654121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.411295, 17.440401, 21.360050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.354239, 17.047613, 21.409670>,  <10.320004, 16.811941, 21.439442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.354239, 17.047613, 21.409670>,  <10.411295, 17.440401, 21.360050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.354239, 17.047613, 21.409670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136671, -0.143673, -0.980142,
		0.980293, -0.122855, 0.154701,
		-0.142642, -0.981970, 0.124051,
		10.311446, 16.753021, 21.446886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.007228, 17.116280, 21.022350>,  <10.411295, 17.440401, 21.360050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.007228, 17.116280, 21.022350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.718449, 16.840340, 21.043879>,  <10.545181, 16.674776, 21.056795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.718449, 16.840340, 21.043879>,  <11.007228, 17.116280, 21.022350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.718449, 16.840340, 21.043879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262866, -0.345383, -0.900895,
		0.640071, -0.636252, 0.430687,
		-0.721949, -0.689851, 0.053820,
		10.501864, 16.633385, 21.060024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.344545, 16.587847, 20.879076>,  <11.007228, 17.116280, 21.022350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.344545, 16.587847, 20.879076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.963700, 16.480078, 20.821255>,  <10.735193, 16.415417, 20.786562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.963700, 16.480078, 20.821255>,  <11.344545, 16.587847, 20.879076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.963700, 16.480078, 20.821255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235880, -0.346439, -0.907932,
		0.194536, -0.898550, 0.393400,
		-0.952112, -0.269421, -0.144555,
		10.678067, 16.399252, 20.777887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.412956, 16.018112, 20.525110>,  <11.344545, 16.587847, 20.879076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.412956, 16.018112, 20.525110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.028190, 16.107521, 20.462177>,  <10.797330, 16.161167, 20.424417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.028190, 16.107521, 20.462177>,  <11.412956, 16.018112, 20.525110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028190, 16.107521, 20.462177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058341, -0.394434, -0.917071,
		-0.267043, -0.891325, 0.366372,
		-0.961917, 0.223523, -0.157331,
		10.739614, 16.174578, 20.414978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112922, 15.398009, 20.325626>,  <11.412956, 16.018112, 20.525110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112922, 15.398009, 20.325626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.860162, 15.680099, 20.197027>,  <10.708506, 15.849354, 20.119867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.860162, 15.680099, 20.197027>,  <11.112922, 15.398009, 20.325626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.860162, 15.680099, 20.197027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028402, -0.435602, -0.899691,
		-0.774530, -0.559383, 0.295286,
		-0.631899, 0.705225, -0.321499,
		10.670592, 15.891666, 20.100578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.495988, 15.059092, 20.012939>,  <11.112922, 15.398009, 20.325626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.495988, 15.059092, 20.012939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.522817, 15.426515, 19.857119>,  <10.538914, 15.646969, 19.763626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.522817, 15.426515, 19.857119>,  <10.495988, 15.059092, 20.012939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.522817, 15.426515, 19.857119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189165, -0.371644, -0.908899,
		-0.979652, 0.134652, 0.148833,
		0.067072, 0.918558, -0.389553,
		10.542938, 15.702083, 19.740253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.876629, 15.130832, 19.603142>,  <10.495988, 15.059092, 20.012939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.876629, 15.130832, 19.603142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.139460, 15.399451, 19.466160>,  <10.297158, 15.560623, 19.383970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.139460, 15.399451, 19.466160>,  <9.876629, 15.130832, 19.603142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.139460, 15.399451, 19.466160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176113, -0.304960, -0.935940,
		-0.732964, 0.675294, -0.082113,
		0.657076, 0.671549, -0.342453,
		10.336582, 15.600916, 19.363424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.662006, 15.293581, 18.992979>,  <9.876629, 15.130832, 19.603142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.662006, 15.293581, 18.992979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.024075, 15.455663, 18.941635>,  <10.241316, 15.552912, 18.910828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.024075, 15.455663, 18.941635>,  <9.662006, 15.293581, 18.992979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.024075, 15.455663, 18.941635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041799, -0.215672, -0.975571,
		-0.422989, 0.888423, -0.178283,
		0.905170, 0.405204, -0.128362,
		10.295626, 15.577224, 18.903126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.671711, 15.525661, 18.320694>,  <9.662006, 15.293581, 18.992979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.671711, 15.525661, 18.320694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.053826, 15.480035, 18.429808>,  <10.283095, 15.452659, 18.495275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.053826, 15.480035, 18.429808>,  <9.671711, 15.525661, 18.320694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.053826, 15.480035, 18.429808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282511, 0.079935, -0.955928,
		0.087235, 0.990252, 0.108586,
		0.955289, -0.114068, 0.272784,
		10.340413, 15.445814, 18.511642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.991288, 16.147886, 18.077242>,  <9.671711, 15.525661, 18.320694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.991288, 16.147886, 18.077242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.236245, 15.832946, 18.105673>,  <10.383220, 15.643981, 18.122730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.236245, 15.832946, 18.105673>,  <9.991288, 16.147886, 18.077242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.236245, 15.832946, 18.105673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189104, 0.058597, -0.980207,
		0.767603, 0.613713, 0.184776,
		0.612393, -0.787352, 0.071077,
		10.419963, 15.596740, 18.126995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.559046, 16.309820, 17.698133>,  <9.991288, 16.147886, 18.077242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.559046, 16.309820, 17.698133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.576110, 15.912235, 17.738575>,  <10.586349, 15.673685, 17.762840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.576110, 15.912235, 17.738575>,  <10.559046, 16.309820, 17.698133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.576110, 15.912235, 17.738575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167196, -0.092666, -0.981559,
		0.985000, 0.058777, 0.162233,
		0.042659, -0.993961, 0.101103,
		10.588907, 15.614047, 17.768906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.165433, 16.144548, 17.279722>,  <10.559046, 16.309820, 17.698133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.165433, 16.144548, 17.279722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.940503, 15.818307, 17.334253>,  <10.805545, 15.622562, 17.366972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.940503, 15.818307, 17.334253>,  <11.165433, 16.144548, 17.279722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.940503, 15.818307, 17.334253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008532, -0.159129, -0.987221,
		0.826872, -0.556302, 0.082523,
		-0.562325, -0.815601, 0.136326,
		10.771806, 15.573627, 17.375151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.779125, 16.469011, 17.041607>,  <11.165433, 16.144548, 17.279722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.779125, 16.469011, 17.041607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.844806, 16.815153, 16.852209>,  <11.884214, 17.022839, 16.738571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.844806, 16.815153, 16.852209>,  <11.779125, 16.469011, 17.041607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.844806, 16.815153, 16.852209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024909, 0.483494, 0.874993,
		0.986112, -0.131880, 0.100945,
		0.164201, 0.865356, -0.473495,
		11.894066, 17.074760, 16.710161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.431942, 16.758766, 17.312521>,  <11.779125, 16.469011, 17.041607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.431942, 16.758766, 17.312521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.191521, 17.040438, 17.161331>,  <12.047268, 17.209440, 17.070618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.191521, 17.040438, 17.161331>,  <12.431942, 16.758766, 17.312521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191521, 17.040438, 17.161331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093286, 0.407891, 0.908252,
		0.793745, 0.581169, -0.179474,
		-0.601054, 0.704179, -0.377977,
		12.011205, 17.251692, 17.047937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.707204, 17.383312, 17.638533>,  <12.431942, 16.758766, 17.312521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.707204, 17.383312, 17.638533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.351742, 17.510733, 17.506580>,  <12.138465, 17.587185, 17.427410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.351742, 17.510733, 17.506580>,  <12.707204, 17.383312, 17.638533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.351742, 17.510733, 17.506580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135119, 0.505532, 0.852162,
		0.438220, 0.801850, -0.406201,
		-0.888654, 0.318549, -0.329880,
		12.085146, 17.606297, 17.407616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.783054, 18.092363, 17.805994>,  <12.707204, 17.383312, 17.638533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.783054, 18.092363, 17.805994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.395631, 18.000782, 17.767065>,  <12.163177, 17.945833, 17.743708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.395631, 18.000782, 17.767065>,  <12.783054, 18.092363, 17.805994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.395631, 18.000782, 17.767065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215769, 0.578365, 0.786726,
		-0.123837, 0.782990, -0.609582,
		-0.968560, -0.228954, -0.097322,
		12.105062, 17.932096, 17.737867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.470133, 18.714647, 17.892336>,  <12.783054, 18.092363, 17.805994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.470133, 18.714647, 17.892336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.192181, 18.438467, 17.972752>,  <12.025409, 18.272758, 18.021000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.192181, 18.438467, 17.972752>,  <12.470133, 18.714647, 17.892336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.192181, 18.438467, 17.972752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376728, 0.587641, 0.716069,
		-0.612549, 0.421846, -0.668453,
		-0.694881, -0.690452, 0.201037,
		11.983716, 18.231331, 18.033062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.870492, 19.112837, 18.164579>,  <12.470133, 18.714647, 17.892336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.870492, 19.112837, 18.164579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.790277, 18.745255, 18.300404>,  <11.742149, 18.524704, 18.381899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.790277, 18.745255, 18.300404>,  <11.870492, 19.112837, 18.164579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.790277, 18.745255, 18.300404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413519, 0.393610, 0.821019,
		-0.888137, 0.024229, -0.458940,
		-0.200536, -0.918958, 0.339561,
		11.730117, 18.469566, 18.402271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.173589, 19.116051, 18.438433>,  <11.870492, 19.112837, 18.164579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.173589, 19.116051, 18.438433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.351616, 18.803759, 18.613874>,  <11.458432, 18.616383, 18.719139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.351616, 18.803759, 18.613874>,  <11.173589, 19.116051, 18.438433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.351616, 18.803759, 18.613874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284920, 0.340875, 0.895893,
		-0.848961, -0.523701, -0.070733,
		0.445069, -0.780731, 0.438603,
		11.485137, 18.569540, 18.745455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.670992, 18.864651, 18.830170>,  <11.173589, 19.116051, 18.438433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.670992, 18.864651, 18.830170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.012210, 18.716711, 18.977425>,  <11.216941, 18.627947, 19.065777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.012210, 18.716711, 18.977425>,  <10.670992, 18.864651, 18.830170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.012210, 18.716711, 18.977425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281791, 0.267285, 0.921495,
		-0.439211, -0.889815, 0.123786,
		0.853046, -0.369849, 0.368136,
		11.268124, 18.605757, 19.087866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.582543, 18.572224, 19.477629>,  <10.670992, 18.864651, 18.830170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.582543, 18.572224, 19.477629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.976661, 18.633692, 19.507511>,  <11.213131, 18.670572, 19.525440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.976661, 18.633692, 19.507511>,  <10.582543, 18.572224, 19.477629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.976661, 18.633692, 19.507511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093228, 0.117084, 0.988737,
		0.143199, -0.981160, 0.129689,
		0.985293, 0.153677, 0.074706,
		11.272249, 18.679792, 19.529922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.813391, 18.198391, 20.064636>,  <10.582543, 18.572224, 19.477629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.813391, 18.198391, 20.064636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.073039, 18.500700, 20.030115>,  <11.228827, 18.682085, 20.009403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.073039, 18.500700, 20.030115>,  <10.813391, 18.198391, 20.064636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.073039, 18.500700, 20.030115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010400, 0.104624, 0.994458,
		0.760615, -0.646419, 0.060053,
		0.649120, 0.755775, -0.086301,
		11.267775, 18.727432, 20.004225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.313523, 17.999746, 20.391869>,  <10.813391, 18.198391, 20.064636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.313523, 17.999746, 20.391869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.396041, 18.390957, 20.379793>,  <11.445551, 18.625683, 20.372549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.396041, 18.390957, 20.379793>,  <11.313523, 17.999746, 20.391869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.396041, 18.390957, 20.379793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377180, -0.051016, 0.924734,
		0.902872, -0.202152, -0.379415,
		0.206293, 0.978024, -0.030187,
		11.457929, 18.684364, 20.370737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.010233, 18.084703, 20.725824>,  <11.313523, 17.999746, 20.391869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.010233, 18.084703, 20.725824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.832526, 18.442970, 20.717756>,  <11.725903, 18.657930, 20.712915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.832526, 18.442970, 20.717756>,  <12.010233, 18.084703, 20.725824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832526, 18.442970, 20.717756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259590, 0.150242, 0.953960,
		0.857461, 0.418577, -0.299254,
		-0.444267, 0.895667, -0.020168,
		11.699246, 18.711670, 20.711706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.468035, 18.659744, 21.081295>,  <12.010233, 18.084703, 20.725824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.468035, 18.659744, 21.081295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.088039, 18.780817, 21.112026>,  <11.860042, 18.853460, 21.130465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.088039, 18.780817, 21.112026>,  <12.468035, 18.659744, 21.081295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.088039, 18.780817, 21.112026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134895, 0.175860, 0.975129,
		0.281643, 0.936727, -0.207896,
		-0.949990, 0.302683, 0.076830,
		11.803042, 18.871622, 21.135075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.475319, 19.271227, 21.499702>,  <12.468035, 18.659744, 21.081295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.475319, 19.271227, 21.499702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.096104, 19.144659, 21.512978>,  <11.868574, 19.068718, 21.520943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.096104, 19.144659, 21.512978>,  <12.475319, 19.271227, 21.499702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096104, 19.144659, 21.512978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021989, 0.169226, 0.985332,
		-0.317396, 0.933403, -0.167390,
		-0.948038, -0.316421, 0.033187,
		11.811692, 19.049732, 21.522934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.945990, 19.798759, 21.327400>,  <12.475319, 19.271227, 21.499702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.945990, 19.798759, 21.327400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.187468, 20.106674, 21.410330>,  <13.332355, 20.291422, 21.460089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.187468, 20.106674, 21.410330>,  <12.945990, 19.798759, 21.327400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187468, 20.106674, 21.410330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367268, -0.037724, -0.929350,
		-0.707578, 0.637188, -0.305491,
		0.603695, 0.769785, 0.207326,
		13.368576, 20.337610, 21.472528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.836058, 20.308626, 20.721430>,  <12.945990, 19.798759, 21.327400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.836058, 20.308626, 20.721430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.181120, 20.329096, 20.922709>,  <13.388158, 20.341377, 21.043476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.181120, 20.329096, 20.922709>,  <12.836058, 20.308626, 20.721430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.181120, 20.329096, 20.922709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505567, -0.057659, -0.860859,
		-0.015039, 0.997024, -0.075611,
		0.862656, 0.051173, 0.503195,
		13.439917, 20.344448, 21.073668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314166, 20.756670, 20.295460>,  <12.836058, 20.308626, 20.721430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314166, 20.756670, 20.295460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.578074, 20.559309, 20.522177>,  <13.736420, 20.440891, 20.658207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.578074, 20.559309, 20.522177>,  <13.314166, 20.756670, 20.295460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.578074, 20.559309, 20.522177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504555, -0.268089, -0.820702,
		0.556889, 0.827454, 0.072072,
		0.659772, -0.493404, 0.566792,
		13.776006, 20.411287, 20.692215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.996573, 21.006514, 20.092253>,  <13.314166, 20.756670, 20.295460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.996573, 21.006514, 20.092253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.045414, 20.636173, 20.235302>,  <14.074718, 20.413969, 20.321133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.045414, 20.636173, 20.235302>,  <13.996573, 21.006514, 20.092253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045414, 20.636173, 20.235302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475494, -0.261713, -0.839888,
		0.871204, 0.272600, 0.408280,
		0.122101, -0.925848, 0.357625,
		14.082045, 20.358419, 20.342590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413494, 20.715868, 19.536112>,  <13.996573, 21.006514, 20.092253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413494, 20.715868, 19.536112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.338979, 20.391785, 19.758413>,  <14.294270, 20.197334, 19.891794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.338979, 20.391785, 19.758413>,  <14.413494, 20.715868, 19.536112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338979, 20.391785, 19.758413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237687, -0.586015, -0.774656,
		0.953311, -0.012213, 0.301743,
		-0.186287, -0.810208, 0.555752,
		14.283092, 20.148722, 19.925138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964972, 20.258459, 19.458595>,  <14.413494, 20.715868, 19.536112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.964972, 20.258459, 19.458595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.659965, 20.029213, 19.578665>,  <14.476960, 19.891665, 19.650707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.659965, 20.029213, 19.578665>,  <14.964972, 20.258459, 19.458595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659965, 20.029213, 19.578665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303645, -0.726721, -0.616179,
		0.571286, -0.378700, 0.728161,
		-0.762517, -0.573117, 0.300175,
		14.431210, 19.857277, 19.668716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243852, 19.511866, 19.533224>,  <14.964972, 20.258459, 19.458595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243852, 19.511866, 19.533224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.847859, 19.475788, 19.489769>,  <14.610264, 19.454142, 19.463696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.847859, 19.475788, 19.489769>,  <15.243852, 19.511866, 19.533224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847859, 19.475788, 19.489769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141171, -0.616802, -0.774355,
		0.002833, -0.781933, 0.623356,
		-0.989981, -0.090194, -0.108639,
		14.550865, 19.448730, 19.457178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105239, 18.780107, 19.435455>,  <15.243852, 19.511866, 19.533224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.105239, 18.780107, 19.435455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.788257, 18.967289, 19.278978>,  <14.598067, 19.079597, 19.185093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.788257, 18.967289, 19.278978>,  <15.105239, 18.780107, 19.435455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.788257, 18.967289, 19.278978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089785, -0.544887, -0.833689,
		-0.603287, -0.695784, 0.389782,
		-0.792454, 0.467957, -0.391194,
		14.550520, 19.107676, 19.161621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638139, 18.280289, 19.311527>,  <15.105239, 18.780107, 19.435455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638139, 18.280289, 19.311527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.559600, 18.602306, 19.087616>,  <14.512477, 18.795517, 18.953270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.559600, 18.602306, 19.087616>,  <14.638139, 18.280289, 19.311527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.559600, 18.602306, 19.087616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076851, -0.556500, -0.827285,
		-0.977518, -0.205454, 0.047399,
		-0.196346, 0.805044, -0.559779,
		14.500696, 18.843819, 18.919682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489861, 18.011017, 18.700771>,  <14.638139, 18.280289, 19.311527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489861, 18.011017, 18.700771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.558596, 18.385521, 18.578207>,  <14.599836, 18.610224, 18.504669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.558596, 18.385521, 18.578207>,  <14.489861, 18.011017, 18.700771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.558596, 18.385521, 18.578207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239676, -0.341425, -0.908837,
		-0.955525, 0.082732, -0.283069,
		0.171837, 0.936261, -0.306411,
		14.610147, 18.666399, 18.486284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172736, 18.001963, 18.026941>,  <14.489861, 18.011017, 18.700771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172736, 18.001963, 18.026941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.429381, 18.306942, 18.060419>,  <14.583368, 18.489929, 18.080505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.429381, 18.306942, 18.060419>,  <14.172736, 18.001963, 18.026941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429381, 18.306942, 18.060419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424555, -0.262141, -0.866623,
		-0.638816, 0.591569, -0.491894,
		0.641613, 0.762449, 0.083694,
		14.621865, 18.535677, 18.085527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221026, 18.226198, 17.417973>,  <14.172736, 18.001963, 18.026941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221026, 18.226198, 17.417973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.554359, 18.379210, 17.577585>,  <14.754359, 18.471016, 17.673353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.554359, 18.379210, 17.577585>,  <14.221026, 18.226198, 17.417973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.554359, 18.379210, 17.577585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486664, -0.165395, -0.857790,
		-0.262133, 0.909019, -0.323992,
		0.833334, 0.382530, 0.399031,
		14.804359, 18.493969, 17.697294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.511070, 18.642967, 16.932119>,  <14.221026, 18.226198, 17.417973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.511070, 18.642967, 16.932119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.826730, 18.563236, 17.164503>,  <15.016126, 18.515398, 17.303934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.826730, 18.563236, 17.164503>,  <14.511070, 18.642967, 16.932119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826730, 18.563236, 17.164503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531760, -0.251624, -0.808651,
		0.307368, 0.947077, -0.092576,
		0.789149, -0.199325, 0.580959,
		15.063475, 18.503439, 17.338791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.056493, 19.054237, 16.620874>,  <14.511070, 18.642967, 16.932119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.056493, 19.054237, 16.620874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.227228, 18.759712, 16.830885>,  <15.329669, 18.582998, 16.956892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.227228, 18.759712, 16.830885>,  <15.056493, 19.054237, 16.620874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.227228, 18.759712, 16.830885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502938, -0.289225, -0.814495,
		0.751574, 0.611714, 0.246867,
		0.426838, -0.736312, 0.525028,
		15.355280, 18.538818, 16.988394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.160843, 21.036505, 3.101075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.454891, 20.871553, 3.316312>,  <4.631320, 20.772583, 3.445454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.454891, 20.871553, 3.316312>,  <4.160843, 21.036505, 3.101075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.454891, 20.871553, 3.316312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286362, 0.908315, 0.304893,
		-0.614489, -0.070044, 0.785810,
		0.735119, -0.412380, 0.538092,
		4.675426, 20.747839, 3.477740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.101117, 21.132114, 3.876724>,  <4.160843, 21.036505, 3.101075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.101117, 21.132114, 3.876724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.475551, 21.117821, 3.736744>,  <4.700212, 21.109245, 3.652756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.475551, 21.117821, 3.736744>,  <4.101117, 21.132114, 3.876724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.475551, 21.117821, 3.736744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135265, 0.954903, 0.264316,
		0.324723, -0.294759, 0.898706,
		0.936087, -0.035734, -0.349950,
		4.756377, 21.107101, 3.631759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.472348, 21.366352, 4.473691>,  <4.101117, 21.132114, 3.876724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.472348, 21.366352, 4.473691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.669203, 21.417082, 4.129200>,  <4.787317, 21.447519, 3.922505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.669203, 21.417082, 4.129200>,  <4.472348, 21.366352, 4.473691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.669203, 21.417082, 4.129200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014758, 0.987972, 0.153924,
		0.870391, -0.088463, 0.484348,
		0.492139, 0.126826, -0.861228,
		4.816845, 21.455130, 3.870831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.987951, 21.821848, 4.517850>,  <4.472348, 21.366352, 4.473691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.987951, 21.821848, 4.517850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.849628, 21.868055, 4.145383>,  <4.766634, 21.895779, 3.921903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.849628, 21.868055, 4.145383>,  <4.987951, 21.821848, 4.517850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.849628, 21.868055, 4.145383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042450, 0.989451, 0.138511,
		0.937345, 0.087426, -0.337255,
		-0.345807, 0.115517, -0.931168,
		4.745886, 21.902710, 3.866033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.507695, 21.348358, 4.489846>,  <4.987951, 21.821848, 4.517850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.507695, 21.348358, 4.489846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.691040, 21.453615, 4.150279>,  <5.801046, 21.516769, 3.946539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.691040, 21.453615, 4.150279>,  <5.507695, 21.348358, 4.489846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.691040, 21.453615, 4.150279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619877, 0.589842, 0.517531,
		0.636911, -0.763441, 0.107246,
		0.458363, 0.263142, -0.848917,
		5.828548, 21.532558, 3.895604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.744311, 21.770350, 4.964951>,  <5.507695, 21.348358, 4.489846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.744311, 21.770350, 4.964951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.805719, 22.102913, 4.751337>,  <5.842564, 22.302450, 4.623168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.805719, 22.102913, 4.751337>,  <5.744311, 21.770350, 4.964951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.805719, 22.102913, 4.751337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962408, -0.003262, 0.271587,
		0.224058, -0.555654, -0.800654,
		0.153520, 0.831407, -0.534035,
		5.851775, 22.352335, 4.591126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.437821, 22.068409, 5.120667>,  <5.744311, 21.770350, 4.964951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.437821, 22.068409, 5.120667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405249, 21.671865, 5.079523>,  <6.385705, 21.433939, 5.054836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405249, 21.671865, 5.079523>,  <6.437821, 22.068409, 5.120667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.405249, 21.671865, 5.079523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481235, -0.129485, 0.866976,
		-0.872801, 0.021099, 0.487620,
		-0.081432, -0.991357, -0.102861,
		6.380819, 21.374458, 5.048664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.059813, 21.867468, 5.747228>,  <6.437821, 22.068409, 5.120667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.059813, 21.867468, 5.747228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.302911, 21.602066, 5.572686>,  <6.448771, 21.442825, 5.467961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.302911, 21.602066, 5.572686>,  <6.059813, 21.867468, 5.747228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.302911, 21.602066, 5.572686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520920, -0.081654, 0.849691,
		-0.599405, -0.743703, 0.296008,
		0.607747, -0.663505, -0.436353,
		6.485236, 21.403015, 5.441780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.164495, 21.189857, 6.101619>,  <6.059813, 21.867468, 5.747228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.164495, 21.189857, 6.101619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.506835, 21.250980, 5.903963>,  <6.712238, 21.287653, 5.785369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.506835, 21.250980, 5.903963>,  <6.164495, 21.189857, 6.101619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.506835, 21.250980, 5.903963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504225, -0.033621, 0.862917,
		0.115247, -0.987684, -0.105824,
		0.855847, 0.152808, -0.494140,
		6.763589, 21.296822, 5.755721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.654147, 21.113062, 6.495660>,  <6.164495, 21.189857, 6.101619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.654147, 21.113062, 6.495660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.942598, 21.149090, 6.770428>,  <6.115669, 21.170706, 6.935289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.942598, 21.149090, 6.770428>,  <5.654147, 21.113062, 6.495660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.942598, 21.149090, 6.770428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082947, -0.973157, 0.214677,
		0.687818, -0.211788, -0.694300,
		0.721129, 0.090069, 0.686922,
		6.158937, 21.176111, 6.976505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.159157, 20.475807, 6.474809>,  <5.654147, 21.113062, 6.495660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.159157, 20.475807, 6.474809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.143263, 20.635147, 6.841357>,  <6.133726, 20.730751, 7.061286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.143263, 20.635147, 6.841357>,  <6.159157, 20.475807, 6.474809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.143263, 20.635147, 6.841357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158070, -0.908054, 0.387882,
		0.986628, -0.129438, 0.099049,
		-0.039736, 0.398352, 0.916371,
		6.131342, 20.754652, 7.116269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.536540, 19.942232, 6.894535>,  <6.159157, 20.475807, 6.474809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.536540, 19.942232, 6.894535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.333288, 20.174442, 7.149028>,  <6.211337, 20.313768, 7.301724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.333288, 20.174442, 7.149028>,  <6.536540, 19.942232, 6.894535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.333288, 20.174442, 7.149028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245936, -0.805748, 0.538782,
		0.825420, 0.117299, 0.552198,
		-0.508130, 0.580527, 0.636233,
		6.180849, 20.348600, 7.339898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.833438, 19.835711, 7.591807>,  <6.536540, 19.942232, 6.894535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.833438, 19.835711, 7.591807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.473835, 19.997749, 7.658355>,  <6.258072, 20.094973, 7.698284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.473835, 19.997749, 7.658355>,  <6.833438, 19.835711, 7.591807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.473835, 19.997749, 7.658355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166875, -0.668128, 0.725092,
		0.404889, 0.624101, 0.668254,
		-0.899010, 0.405096, 0.166371,
		6.204132, 20.119278, 7.708266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.802031, 19.916420, 8.424261>,  <6.833438, 19.835711, 7.591807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.802031, 19.916420, 8.424261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.435813, 19.887774, 8.265944>,  <6.216083, 19.870586, 8.170955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.435813, 19.887774, 8.265944>,  <6.802031, 19.916420, 8.424261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.435813, 19.887774, 8.265944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281643, -0.588371, 0.757956,
		-0.287153, 0.805413, 0.518509,
		-0.915544, -0.071615, -0.395791,
		6.161150, 19.866289, 8.147207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.498134, 19.925417, 9.026034>,  <6.802031, 19.916420, 8.424261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.498134, 19.925417, 9.026034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.241413, 19.784706, 8.753463>,  <6.087381, 19.700279, 8.589920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.241413, 19.784706, 8.753463>,  <6.498134, 19.925417, 9.026034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.241413, 19.784706, 8.753463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438226, -0.560970, 0.702332,
		-0.629324, 0.749378, 0.205875,
		-0.641801, -0.351775, -0.681429,
		6.048872, 19.679174, 8.549034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.948793, 19.885784, 9.429735>,  <6.498134, 19.925417, 9.026034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.948793, 19.885784, 9.429735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.854877, 19.656137, 9.115980>,  <5.798527, 19.518351, 8.927727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.854877, 19.656137, 9.115980>,  <5.948793, 19.885784, 9.429735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.854877, 19.656137, 9.115980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420616, -0.667482, 0.614451,
		-0.876330, 0.474194, -0.084763,
		-0.234792, -0.574115, -0.784388,
		5.784439, 19.483904, 8.880664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.260373, 19.697651, 9.609140>,  <5.948793, 19.885784, 9.429735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.260373, 19.697651, 9.609140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.352525, 19.433949, 9.322838>,  <5.407815, 19.275728, 9.151056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.352525, 19.433949, 9.322838>,  <5.260373, 19.697651, 9.609140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.352525, 19.433949, 9.322838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342347, -0.743430, 0.574552,
		-0.910892, 0.112673, -0.396964,
		0.230378, -0.659255, -0.715758,
		5.421638, 19.236172, 9.108110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.609516, 19.300394, 9.322694>,  <5.260373, 19.697651, 9.609140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.609516, 19.300394, 9.322694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.960730, 19.109015, 9.327402>,  <5.171459, 18.994186, 9.330227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.960730, 19.109015, 9.327402>,  <4.609516, 19.300394, 9.322694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.960730, 19.109015, 9.327402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357116, -0.638597, 0.681661,
		-0.318625, -0.602726, -0.731573,
		0.878036, -0.478451, 0.011771,
		5.224141, 18.965479, 9.330934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.436786, 18.567688, 9.237378>,  <4.609516, 19.300394, 9.322694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.436786, 18.567688, 9.237378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.820133, 18.542048, 9.348677>,  <5.050142, 18.526663, 9.415456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.820133, 18.542048, 9.348677>,  <4.436786, 18.567688, 9.237378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.820133, 18.542048, 9.348677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219004, -0.790288, 0.572260,
		0.183212, -0.609373, -0.771426,
		0.958369, -0.064101, 0.278246,
		5.107644, 18.522818, 9.432150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.609555, 17.893023, 9.169775>,  <4.436786, 18.567688, 9.237378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.609555, 17.893023, 9.169775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.920177, 18.002459, 9.396794>,  <5.106549, 18.068121, 9.533006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.920177, 18.002459, 9.396794>,  <4.609555, 17.893023, 9.169775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.920177, 18.002459, 9.396794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164656, -0.781368, 0.601957,
		0.608155, -0.560902, -0.561726,
		0.776554, 0.273592, 0.567549,
		5.153142, 18.084536, 9.567059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.961612, 17.377317, 9.186274>,  <4.609555, 17.893023, 9.169775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.961612, 17.377317, 9.186274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.075402, 17.575819, 9.514373>,  <5.143677, 17.694920, 9.711232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.075402, 17.575819, 9.514373>,  <4.961612, 17.377317, 9.186274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.075402, 17.575819, 9.514373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145146, -0.823440, 0.548524,
		0.947632, -0.275098, -0.162220,
		0.284476, 0.496253, 0.820247,
		5.160745, 17.724695, 9.760448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.395721, 16.963026, 9.674320>,  <4.961612, 17.377317, 9.186274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.395721, 16.963026, 9.674320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.276798, 17.267393, 9.905010>,  <5.205444, 17.450014, 10.043424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.276798, 17.267393, 9.905010>,  <5.395721, 16.963026, 9.674320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.276798, 17.267393, 9.905010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074742, -0.620732, 0.780451,
		0.951851, 0.188929, 0.241422,
		-0.297309, 0.760918, 0.576724,
		5.187605, 17.495668, 10.078028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.789409, 16.902170, 10.283045>,  <5.395721, 16.963026, 9.674320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.789409, 16.902170, 10.283045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.451387, 17.088066, 10.388801>,  <5.248574, 17.199604, 10.452254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.451387, 17.088066, 10.388801>,  <5.789409, 16.902170, 10.283045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.451387, 17.088066, 10.388801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062895, -0.577449, 0.814000,
		0.530968, 0.671246, 0.517206,
		-0.845054, 0.464738, 0.264389,
		5.197871, 17.227488, 10.468118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.852265, 17.146372, 10.995546>,  <5.789409, 16.902170, 10.283045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.852265, 17.146372, 10.995546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.466205, 17.091007, 10.906709>,  <5.234569, 17.057789, 10.853406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.466205, 17.091007, 10.906709>,  <5.852265, 17.146372, 10.995546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.466205, 17.091007, 10.906709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076752, -0.661643, 0.745881,
		-0.250186, 0.736933, 0.627961,
		-0.965151, -0.138412, -0.222095,
		5.176660, 17.049484, 10.840080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.590640, 17.172541, 11.674079>,  <5.852265, 17.146372, 10.995546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.590640, 17.172541, 11.674079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.299980, 17.009697, 11.452722>,  <5.125584, 16.911991, 11.319907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.299980, 17.009697, 11.452722>,  <5.590640, 17.172541, 11.674079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.299980, 17.009697, 11.452722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305278, -0.530276, 0.790957,
		-0.615456, 0.743687, 0.261044,
		-0.726650, -0.407108, -0.553392,
		5.081985, 16.887564, 11.286704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.055777, 17.108297, 12.137341>,  <5.590640, 17.172541, 11.674079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.055777, 17.108297, 12.137341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.922323, 16.879213, 11.837824>,  <4.842251, 16.741764, 11.658113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.922323, 16.879213, 11.837824>,  <5.055777, 17.108297, 12.137341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.922323, 16.879213, 11.837824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315664, -0.680582, 0.661184,
		-0.888282, 0.456960, 0.046281,
		-0.333633, -0.572709, -0.748795,
		4.822233, 16.707401, 11.613185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.450381, 16.809601, 12.383661>,  <5.055777, 17.108297, 12.137341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.450381, 16.809601, 12.383661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.547113, 16.563837, 12.083256>,  <4.605153, 16.416380, 11.903012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.547113, 16.563837, 12.083256>,  <4.450381, 16.809601, 12.383661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.547113, 16.563837, 12.083256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097104, -0.785425, 0.611292,
		-0.965448, -0.074902, -0.249601,
		0.241830, -0.614408, -0.751014,
		4.619662, 16.379515, 11.857952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.935407, 16.296125, 12.285385>,  <4.450381, 16.809601, 12.383661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.935407, 16.296125, 12.285385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.254553, 16.134504, 12.106431>,  <4.446040, 16.037531, 11.999059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.254553, 16.134504, 12.106431>,  <3.935407, 16.296125, 12.285385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.254553, 16.134504, 12.106431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086762, -0.811372, 0.578055,
		-0.596560, -0.422394, -0.682422,
		0.797865, -0.404053, -0.447384,
		4.493912, 16.013288, 11.972216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.871217, 15.578522, 12.224484>,  <3.935407, 16.296125, 12.285385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.871217, 15.578522, 12.224484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.268042, 15.623970, 12.202932>,  <4.506136, 15.651238, 12.190001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.268042, 15.623970, 12.202932>,  <3.871217, 15.578522, 12.224484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.268042, 15.623970, 12.202932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123014, -0.788035, 0.603216,
		0.026079, -0.605055, -0.795756,
		0.992062, 0.113620, -0.053879,
		4.565660, 15.658056, 12.186769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.132614, 14.884248, 12.220489>,  <3.871217, 15.578522, 12.224484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.132614, 14.884248, 12.220489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.441768, 15.116035, 12.323919>,  <4.627261, 15.255108, 12.385978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.441768, 15.116035, 12.323919>,  <4.132614, 14.884248, 12.220489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.441768, 15.116035, 12.323919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312330, -0.702122, 0.639902,
		0.552356, -0.413810, -0.723647,
		0.772886, 0.579470, 0.258576,
		4.673634, 15.289876, 12.401492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.739816, 14.464324, 12.218291>,  <4.132614, 14.884248, 12.220489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.739816, 14.464324, 12.218291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.809891, 14.779335, 12.454634>,  <4.851935, 14.968342, 12.596439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.809891, 14.779335, 12.454634>,  <4.739816, 14.464324, 12.218291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.809891, 14.779335, 12.454634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522579, -0.582998, 0.622113,
		0.834399, 0.199783, -0.513678,
		0.175186, 0.787528, 0.590856,
		4.862446, 15.015594, 12.631890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.231091, 14.385847, 11.771222>,  <4.739816, 14.464324, 12.218291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.231091, 14.385847, 11.771222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.462379, 14.130963, 11.567408>,  <5.601151, 13.978033, 11.445119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.462379, 14.130963, 11.567408>,  <5.231091, 14.385847, 11.771222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.462379, 14.130963, 11.567408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557494, 0.764560, -0.323494,
		0.595704, -0.097013, 0.797324,
		0.578219, -0.637210, -0.509536,
		5.635844, 13.939800, 11.414547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.963838, 14.335910, 12.003613>,  <5.231091, 14.385847, 11.771222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.963838, 14.335910, 12.003613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.993657, 14.212068, 11.624437>,  <6.011549, 14.137762, 11.396933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.993657, 14.212068, 11.624437>,  <5.963838, 14.335910, 12.003613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.993657, 14.212068, 11.624437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550122, 0.805622, -0.219862,
		0.831750, -0.505091, 0.230379,
		0.074548, -0.309607, -0.947938,
		6.016022, 14.119185, 11.340055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.669810, 14.531100, 11.863174>,  <5.963838, 14.335910, 12.003613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.669810, 14.531100, 11.863174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.503783, 14.472246, 11.504048>,  <6.404167, 14.436934, 11.288573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.503783, 14.472246, 11.504048>,  <6.669810, 14.531100, 11.863174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.503783, 14.472246, 11.504048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592244, 0.705416, -0.389404,
		0.690626, -0.693354, -0.205658,
		-0.415069, -0.147133, -0.897814,
		6.379263, 14.428106, 11.234704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.227180, 14.405940, 11.402652>,  <6.669810, 14.531100, 11.863174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.227180, 14.405940, 11.402652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.936083, 14.528141, 11.157032>,  <6.761424, 14.601461, 11.009660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.936083, 14.528141, 11.157032>,  <7.227180, 14.405940, 11.402652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.936083, 14.528141, 11.157032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631195, 0.648566, -0.425388,
		0.268293, -0.697159, -0.664822,
		-0.727744, 0.305504, -0.614049,
		6.717760, 14.619792, 10.972817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.494174, 14.431019, 10.799245>,  <7.227180, 14.405940, 11.402652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.494174, 14.431019, 10.799245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.174520, 14.669122, 10.765656>,  <6.982727, 14.811983, 10.745503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.174520, 14.669122, 10.765656>,  <7.494174, 14.431019, 10.799245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.174520, 14.669122, 10.765656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548021, 0.663949, -0.508768,
		-0.247095, -0.452593, -0.856798,
		-0.799135, 0.595258, -0.083972,
		6.934779, 14.847699, 10.740465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.464413, 14.653996, 10.035516>,  <7.494174, 14.431019, 10.799245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.464413, 14.653996, 10.035516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.264373, 14.925939, 10.250064>,  <7.144349, 15.089105, 10.378793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.264373, 14.925939, 10.250064>,  <7.464413, 14.653996, 10.035516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.264373, 14.925939, 10.250064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592654, 0.720313, -0.360432,
		-0.631397, 0.137630, -0.763149,
		-0.500099, 0.679859, 0.536370,
		7.114343, 15.129896, 10.410975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.429052, 15.225759, 9.605336>,  <7.464413, 14.653996, 10.035516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.429052, 15.225759, 9.605336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.355623, 15.365824, 9.972746>,  <7.311565, 15.449863, 10.193192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.355623, 15.365824, 9.972746>,  <7.429052, 15.225759, 9.605336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.355623, 15.365824, 9.972746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478749, 0.847944, -0.227575,
		-0.858545, 0.397966, -0.323301,
		-0.183574, 0.350163, 0.918524,
		7.300550, 15.470873, 10.248303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.268661, 16.059927, 9.654421>,  <7.429052, 15.225759, 9.605336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.268661, 16.059927, 9.654421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.382899, 15.963635, 10.025470>,  <7.451442, 15.905861, 10.248099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.382899, 15.963635, 10.025470>,  <7.268661, 16.059927, 9.654421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.382899, 15.963635, 10.025470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528638, 0.846930, 0.057029,
		-0.799360, 0.474090, 0.369137,
		0.285596, -0.240727, 0.927624,
		7.468578, 15.891418, 10.303757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.282124, 16.671989, 10.066432>,  <7.268661, 16.059927, 9.654421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.282124, 16.671989, 10.066432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.496800, 16.429756, 10.301458>,  <7.625606, 16.284416, 10.442474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.496800, 16.429756, 10.301458>,  <7.282124, 16.671989, 10.066432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.496800, 16.429756, 10.301458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745785, 0.666165, 0.005381,
		-0.394675, 0.435310, 0.809158,
		0.536690, -0.605582, 0.587566,
		7.657807, 16.248081, 10.477728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.603885, 16.974571, 10.543952>,  <7.282124, 16.671989, 10.066432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.603885, 16.974571, 10.543952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.848310, 16.658627, 10.523083>,  <7.994964, 16.469059, 10.510561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.848310, 16.658627, 10.523083>,  <7.603885, 16.974571, 10.543952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.848310, 16.658627, 10.523083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790438, 0.612395, -0.013454,
		0.042578, -0.033018, 0.998547,
		0.611061, -0.789862, -0.052173,
		8.031628, 16.421667, 10.507431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.057981, 17.082333, 11.046502>,  <7.603885, 16.974571, 10.543952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.057981, 17.082333, 11.046502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.289671, 16.812284, 10.863764>,  <8.428685, 16.650255, 10.754121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.289671, 16.812284, 10.863764>,  <8.057981, 17.082333, 11.046502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.289671, 16.812284, 10.863764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704142, 0.696742, -0.136872,
		0.410708, -0.242404, 0.878953,
		0.579226, -0.675123, -0.456844,
		8.463439, 16.609747, 10.726710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.772931, 17.274372, 11.106634>,  <8.057981, 17.082333, 11.046502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.772931, 17.274372, 11.106634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.756724, 17.030062, 10.790328>,  <8.747001, 16.883474, 10.600544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.756724, 17.030062, 10.790328>,  <8.772931, 17.274372, 11.106634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.756724, 17.030062, 10.790328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648102, 0.586282, -0.486043,
		0.760475, -0.532189, 0.372092,
		-0.040516, -0.610777, -0.790765,
		8.744570, 16.846828, 10.553099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.476543, 16.881092, 10.919311>,  <8.772931, 17.274372, 11.106634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.476543, 16.881092, 10.919311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.248877, 16.912163, 10.591892>,  <9.112276, 16.930805, 10.395441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.248877, 16.912163, 10.591892>,  <9.476543, 16.881092, 10.919311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.248877, 16.912163, 10.591892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756410, 0.439728, -0.484234,
		0.322323, -0.894766, -0.309034,
		-0.569167, 0.077676, -0.818545,
		9.078127, 16.935465, 10.346329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.972968, 17.081158, 10.484159>,  <9.476543, 16.881092, 10.919311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.972968, 17.081158, 10.484159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.625156, 17.146357, 10.297674>,  <9.416470, 17.185476, 10.185783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.625156, 17.146357, 10.297674>,  <9.972968, 17.081158, 10.484159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.625156, 17.146357, 10.297674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432312, 0.707624, -0.558905,
		0.238803, -0.687532, -0.685764,
		-0.869528, 0.162996, -0.466211,
		9.364298, 17.195255, 10.157811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.160066, 17.160280, 9.857285>,  <9.972968, 17.081158, 10.484159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.160066, 17.160280, 9.857285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.791849, 17.316299, 9.865926>,  <9.570919, 17.409912, 9.871111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.791849, 17.316299, 9.865926>,  <10.160066, 17.160280, 9.857285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.791849, 17.316299, 9.865926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325903, 0.797290, -0.508050,
		-0.215390, -0.460640, -0.861056,
		-0.920540, 0.390050, 0.021604,
		9.515687, 17.433315, 9.872407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.993852, 17.163742, 9.212615>,  <10.160066, 17.160280, 9.857285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.993852, 17.163742, 9.212615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.750242, 17.417698, 9.402775>,  <9.604076, 17.570072, 9.516870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.750242, 17.417698, 9.402775>,  <9.993852, 17.163742, 9.212615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.750242, 17.417698, 9.402775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296577, 0.738187, -0.605906,
		-0.735618, -0.228018, -0.637866,
		-0.609022, 0.634892, 0.475399,
		9.567535, 17.608166, 9.545395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.506839, 17.480921, 8.661303>,  <9.993852, 17.163742, 9.212615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.506839, 17.480921, 8.661303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.525321, 17.715935, 8.984454>,  <9.536410, 17.856943, 9.178346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.525321, 17.715935, 8.984454>,  <9.506839, 17.480921, 8.661303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.525321, 17.715935, 8.984454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305574, 0.761661, -0.571398,
		-0.951046, 0.273269, -0.144342,
		0.046206, 0.587534, 0.807879,
		9.539183, 17.892195, 9.226818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.288560, 18.104942, 8.394238>,  <9.506839, 17.480921, 8.661303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.288560, 18.104942, 8.394238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.435277, 18.213619, 8.750135>,  <9.523308, 18.278826, 8.963675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.435277, 18.213619, 8.750135>,  <9.288560, 18.104942, 8.394238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.435277, 18.213619, 8.750135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426278, 0.801008, -0.420326,
		-0.826892, 0.533451, 0.177988,
		0.366793, 0.271692, 0.889745,
		9.545315, 18.295126, 9.017059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.111803, 18.821682, 8.424538>,  <9.288560, 18.104942, 8.394238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.111803, 18.821682, 8.424538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.426271, 18.750202, 8.661181>,  <9.614952, 18.707315, 8.803168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.426271, 18.750202, 8.661181>,  <9.111803, 18.821682, 8.424538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.426271, 18.750202, 8.661181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482127, 0.776235, -0.406218,
		-0.386639, 0.604588, 0.696408,
		0.786171, -0.178697, 0.591611,
		9.662123, 18.696592, 8.838665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.237123, 19.362347, 9.033442>,  <9.111803, 18.821682, 8.424538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.237123, 19.362347, 9.033442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.519469, 19.238533, 8.778587>,  <9.688877, 19.164246, 8.625675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.519469, 19.238533, 8.778587>,  <9.237123, 19.362347, 9.033442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.519469, 19.238533, 8.778587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293583, 0.946419, -0.134537,
		0.644640, -0.092086, 0.758920,
		0.705867, -0.309534, -0.637134,
		9.731230, 19.145674, 8.587447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.920252, 19.549437, 9.203468>,  <9.237123, 19.362347, 9.033442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.920252, 19.549437, 9.203468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.913535, 19.527174, 8.804145>,  <9.909505, 19.513817, 8.564550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.913535, 19.527174, 8.804145>,  <9.920252, 19.549437, 9.203468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.913535, 19.527174, 8.804145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277337, 0.959013, -0.058129,
		0.960626, -0.277844, -0.000669,
		-0.016792, -0.055654, -0.998309,
		9.908498, 19.510477, 8.504652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.703484, 17.289402, 22.328205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.349694, 17.198229, 22.491056>,  <14.137421, 17.143526, 22.588768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.349694, 17.198229, 22.491056>,  <14.703484, 17.289402, 22.328205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349694, 17.198229, 22.491056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200699, 0.601868, 0.772965,
		-0.421221, 0.765377, -0.486591,
		-0.884473, -0.227931, 0.407130,
		14.084352, 17.129850, 22.613195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493209, 17.882828, 22.458902>,  <14.703484, 17.289402, 22.328205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493209, 17.882828, 22.458902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.262743, 17.643036, 22.681129>,  <14.124463, 17.499161, 22.814466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.262743, 17.643036, 22.681129>,  <14.493209, 17.882828, 22.458902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262743, 17.643036, 22.681129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129988, 0.603873, 0.786410,
		-0.806931, 0.525319, -0.270005,
		-0.576164, -0.599481, 0.555569,
		14.089893, 17.463192, 22.847799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020584, 18.271841, 22.831041>,  <14.493209, 17.882828, 22.458902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020584, 18.271841, 22.831041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.048543, 17.938988, 23.051104>,  <14.065318, 17.739277, 23.183142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.048543, 17.938988, 23.051104>,  <14.020584, 18.271841, 22.831041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.048543, 17.938988, 23.051104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221726, 0.550668, 0.804737,
		-0.972601, 0.065735, 0.222995,
		0.069897, -0.832132, 0.550155,
		14.069512, 17.689348, 23.216150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752468, 18.428988, 23.478052>,  <14.020584, 18.271841, 22.831041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752468, 18.428988, 23.478052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.969194, 18.102261, 23.557295>,  <14.099231, 17.906225, 23.604841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.969194, 18.102261, 23.557295>,  <13.752468, 18.428988, 23.478052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969194, 18.102261, 23.557295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245042, 0.378975, 0.892375,
		-0.803984, -0.434959, 0.405489,
		0.541816, -0.816816, 0.198106,
		14.131740, 17.857216, 23.616726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466778, 18.323223, 24.204012>,  <13.752468, 18.428988, 23.478052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.466778, 18.323223, 24.204012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.804341, 18.110662, 24.174538>,  <14.006880, 17.983126, 24.156853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.804341, 18.110662, 24.174538>,  <13.466778, 18.323223, 24.204012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804341, 18.110662, 24.174538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210060, 0.200921, 0.956820,
		-0.493652, -0.822947, 0.281186,
		0.843908, -0.531403, -0.073683,
		14.057514, 17.951242, 24.152433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457719, 17.829149, 24.745300>,  <13.466778, 18.323223, 24.204012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457719, 17.829149, 24.745300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.839076, 17.890541, 24.641390>,  <14.067890, 17.927376, 24.579042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.839076, 17.890541, 24.641390>,  <13.457719, 17.829149, 24.745300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839076, 17.890541, 24.641390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199645, 0.324663, 0.924519,
		0.226236, -0.933294, 0.278889,
		0.953393, 0.153481, -0.259778,
		14.125094, 17.936584, 24.563456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.875753, 17.411911, 25.284340>,  <13.457719, 17.829149, 24.745300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.875753, 17.411911, 25.284340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.105169, 17.701271, 25.130590>,  <14.242819, 17.874887, 25.038340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.105169, 17.701271, 25.130590>,  <13.875753, 17.411911, 25.284340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105169, 17.701271, 25.130590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414472, 0.148469, 0.897870,
		0.706587, -0.674277, -0.214677,
		0.573539, 0.723400, -0.384375,
		14.277231, 17.918291, 25.015278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.486047, 17.257099, 25.573465>,  <13.875753, 17.411911, 25.284340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.486047, 17.257099, 25.573465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.534453, 17.624249, 25.422276>,  <14.563498, 17.844538, 25.331562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.534453, 17.624249, 25.422276>,  <14.486047, 17.257099, 25.573465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534453, 17.624249, 25.422276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388173, 0.306696, 0.869057,
		0.913607, -0.251890, -0.319177,
		0.121016, 0.917872, -0.377976,
		14.570758, 17.899611, 25.308882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.107568, 17.470385, 25.774282>,  <14.486047, 17.257099, 25.573465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.107568, 17.470385, 25.774282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.933780, 17.816357, 25.673779>,  <14.829507, 18.023939, 25.613476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.933780, 17.816357, 25.673779>,  <15.107568, 17.470385, 25.774282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933780, 17.816357, 25.673779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420064, 0.441355, 0.792939,
		0.796732, 0.238962, -0.555081,
		-0.434470, 0.864929, -0.251262,
		14.803438, 18.075836, 25.598400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723486, 18.057398, 25.764042>,  <15.107568, 17.470385, 25.774282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723486, 18.057398, 25.764042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.385961, 18.270237, 25.791901>,  <15.183445, 18.397940, 25.808617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.385961, 18.270237, 25.791901>,  <15.723486, 18.057398, 25.764042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.385961, 18.270237, 25.791901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389962, 0.518835, 0.760750,
		0.368657, 0.669091, -0.645298,
		-0.843814, 0.532097, 0.069648,
		15.132816, 18.429867, 25.812796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.918309, 18.686916, 26.009449>,  <15.723486, 18.057398, 25.764042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.918309, 18.686916, 26.009449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.527620, 18.695236, 26.094847>,  <15.293207, 18.700228, 26.146086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.527620, 18.695236, 26.094847>,  <15.918309, 18.686916, 26.009449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527620, 18.695236, 26.094847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190507, 0.541565, 0.818789,
		-0.098589, 0.840402, -0.532921,
		-0.976723, 0.020802, 0.213495,
		15.234604, 18.701477, 26.158895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805523, 19.367947, 26.166491>,  <15.918309, 18.686916, 26.009449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805523, 19.367947, 26.166491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.503365, 19.177586, 26.346666>,  <15.322069, 19.063370, 26.454771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.503365, 19.177586, 26.346666>,  <15.805523, 19.367947, 26.166491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503365, 19.177586, 26.346666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107288, 0.588307, 0.801489,
		-0.646426, 0.653768, -0.393347,
		-0.755396, -0.475902, 0.450438,
		15.276746, 19.034815, 26.481798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167552, 19.788185, 26.266161>,  <15.805523, 19.367947, 26.166491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167552, 19.788185, 26.266161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.207329, 19.518967, 26.559315>,  <15.231195, 19.357435, 26.735207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.207329, 19.518967, 26.559315>,  <15.167552, 19.788185, 26.266161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207329, 19.518967, 26.559315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090737, 0.727335, 0.680258,
		-0.990898, -0.134147, 0.011258,
		0.099443, -0.673044, 0.732886,
		15.237162, 19.317053, 26.779181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599384, 19.905134, 26.727957>,  <15.167552, 19.788185, 26.266161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599384, 19.905134, 26.727957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.933810, 19.765985, 26.897652>,  <15.134466, 19.682495, 26.999470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.933810, 19.765985, 26.897652>,  <14.599384, 19.905134, 26.727957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933810, 19.765985, 26.897652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023779, 0.795521, 0.605458,
		-0.548114, -0.496115, 0.673380,
		0.836065, -0.347873, 0.424239,
		15.184630, 19.661623, 27.024923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.251919, 19.943329, 27.384977>,  <14.599384, 19.905134, 26.727957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.251919, 19.943329, 27.384977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.013474, 20.260860, 27.336832>,  <13.870406, 20.451380, 27.307945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.013474, 20.260860, 27.336832>,  <14.251919, 19.943329, 27.384977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013474, 20.260860, 27.336832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087480, -0.213233, -0.973077,
		-0.798120, -0.569536, 0.196555,
		-0.596114, 0.793827, -0.120362,
		13.834640, 20.499008, 27.300724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.797206, 19.780659, 27.034956>,  <14.251919, 19.943329, 27.384977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.797206, 19.780659, 27.034956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.764452, 20.172743, 26.962864>,  <13.744800, 20.407993, 26.919609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.764452, 20.172743, 26.962864>,  <13.797206, 19.780659, 27.034956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.764452, 20.172743, 26.962864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133668, -0.190003, -0.972642,
		-0.987638, -0.055554, 0.146581,
		-0.081885, 0.980210, -0.180229,
		13.739886, 20.466806, 26.908794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.345993, 19.785711, 26.489319>,  <13.797206, 19.780659, 27.034956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.345993, 19.785711, 26.489319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.481706, 20.160572, 26.456734>,  <13.563133, 20.385489, 26.437183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.481706, 20.160572, 26.456734>,  <13.345993, 19.785711, 26.489319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.481706, 20.160572, 26.456734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119477, -0.042967, -0.991907,
		-0.933066, 0.346269, 0.097390,
		0.339282, 0.937151, -0.081462,
		13.583490, 20.441717, 26.432295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910780, 20.081768, 25.987188>,  <13.345993, 19.785711, 26.489319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910780, 20.081768, 25.987188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.224172, 20.330332, 25.988508>,  <13.412207, 20.479469, 25.989300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.224172, 20.330332, 25.988508>,  <12.910780, 20.081768, 25.987188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.224172, 20.330332, 25.988508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155707, 0.201451, -0.967043,
		-0.601594, 0.757145, 0.254590,
		0.783480, 0.621409, 0.003299,
		13.459215, 20.516754, 25.989498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.673360, 20.643801, 25.569210>,  <12.910780, 20.081768, 25.987188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.673360, 20.643801, 25.569210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.070910, 20.687311, 25.576986>,  <13.309441, 20.713417, 25.581652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.070910, 20.687311, 25.576986>,  <12.673360, 20.643801, 25.569210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.070910, 20.687311, 25.576986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007363, 0.240728, -0.970565,
		-0.110252, 0.964478, 0.240055,
		0.993876, 0.108774, 0.019439,
		13.369074, 20.719944, 25.582819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.778064, 21.269068, 25.290569>,  <12.673360, 20.643801, 25.569210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.778064, 21.269068, 25.290569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.127457, 21.077463, 25.255754>,  <13.337092, 20.962500, 25.234865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.127457, 21.077463, 25.255754>,  <12.778064, 21.269068, 25.290569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127457, 21.077463, 25.255754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130198, 0.402095, -0.906294,
		0.469124, 0.780299, 0.413589,
		0.873482, -0.479013, -0.087039,
		13.389502, 20.933760, 25.229643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.232078, 21.732656, 24.948532>,  <12.778064, 21.269068, 25.290569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.232078, 21.732656, 24.948532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.387940, 21.371761, 24.874628>,  <13.481458, 21.155224, 24.830286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.387940, 21.371761, 24.874628>,  <13.232078, 21.732656, 24.948532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387940, 21.371761, 24.874628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091748, 0.237647, -0.967009,
		0.916379, 0.359850, 0.175379,
		0.389657, -0.902237, -0.184759,
		13.504837, 21.101089, 24.819201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.715293, 21.905630, 24.491745>,  <13.232078, 21.732656, 24.948532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.715293, 21.905630, 24.491745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.631793, 21.518461, 24.435818>,  <13.581694, 21.286160, 24.402262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.631793, 21.518461, 24.435818>,  <13.715293, 21.905630, 24.491745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631793, 21.518461, 24.435818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133460, 0.169826, -0.976395,
		0.968820, -0.185161, -0.164630,
		-0.208748, -0.967923, -0.139820,
		13.569168, 21.228085, 24.393871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880070, 21.811539, 23.799259>,  <13.715293, 21.905630, 24.491745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.880070, 21.811539, 23.799259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.688140, 21.466980, 23.865913>,  <13.572982, 21.260244, 23.905905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.688140, 21.466980, 23.865913>,  <13.880070, 21.811539, 23.799259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.688140, 21.466980, 23.865913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232136, -0.058514, -0.970922,
		0.846098, -0.504553, -0.171885,
		-0.479824, -0.861395, 0.166634,
		13.544192, 21.208561, 23.915903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237638, 21.284575, 23.453020>,  <13.880070, 21.811539, 23.799259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237638, 21.284575, 23.453020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.882792, 21.103704, 23.490030>,  <13.669884, 20.995182, 23.512236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.882792, 21.103704, 23.490030>,  <14.237638, 21.284575, 23.453020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.882792, 21.103704, 23.490030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030640, -0.142325, -0.989346,
		0.460527, -0.880500, 0.112404,
		-0.887116, -0.452176, 0.092523,
		13.616656, 20.968052, 23.517788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.256824, 20.638472, 23.076332>,  <14.237638, 21.284575, 23.453020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.256824, 20.638472, 23.076332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.865646, 20.695326, 23.137550>,  <13.630939, 20.729439, 23.174282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.865646, 20.695326, 23.137550>,  <14.256824, 20.638472, 23.076332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.865646, 20.695326, 23.137550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193566, -0.341437, -0.919757,
		-0.078474, -0.929096, 0.361418,
		-0.977944, 0.142135, 0.153047,
		13.572263, 20.737967, 23.183464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974183, 19.967791, 22.936329>,  <14.256824, 20.638472, 23.076332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974183, 19.967791, 22.936329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.737626, 20.284658, 22.876034>,  <13.595692, 20.474779, 22.839857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.737626, 20.284658, 22.876034>,  <13.974183, 19.967791, 22.936329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737626, 20.284658, 22.876034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224205, -0.341091, -0.912901,
		-0.774587, -0.506088, 0.379328,
		-0.591393, 0.792169, -0.150737,
		13.560208, 20.522308, 22.830812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.362580, 19.729328, 22.675905>,  <13.974183, 19.967791, 22.936329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.362580, 19.729328, 22.675905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.385352, 20.110405, 22.556482>,  <13.399015, 20.339050, 22.484829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.385352, 20.110405, 22.556482>,  <13.362580, 19.729328, 22.675905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.385352, 20.110405, 22.556482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149685, -0.287518, -0.946006,
		-0.987093, 0.098546, 0.126235,
		0.056930, 0.952692, -0.298558,
		13.402431, 20.396214, 22.466915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.988292, 19.673439, 22.072050>,  <13.362580, 19.729328, 22.675905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.988292, 19.673439, 22.072050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.186394, 20.018339, 22.029636>,  <13.305255, 20.225279, 22.004189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.186394, 20.018339, 22.029636>,  <12.988292, 19.673439, 22.072050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.186394, 20.018339, 22.029636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019782, -0.110831, -0.993643,
		-0.868523, 0.494204, -0.037833,
		0.495255, 0.862253, -0.106036,
		13.334970, 20.277016, 21.997826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.209747, 19.616165, 22.058035>,  <12.988292, 19.673439, 22.072050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.209747, 19.616165, 22.058035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.909859, 19.357517, 22.001747>,  <11.729926, 19.202328, 21.967976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.909859, 19.357517, 22.001747>,  <12.209747, 19.616165, 22.058035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.909859, 19.357517, 22.001747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209298, 0.029970, 0.977393,
		-0.627784, 0.762223, -0.157806,
		-0.749721, -0.646620, -0.140717,
		11.684942, 19.163530, 21.959532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.746210, 19.857368, 22.473888>,  <12.209747, 19.616165, 22.058035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.746210, 19.857368, 22.473888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.619485, 19.482676, 22.414337>,  <11.543450, 19.257860, 22.378607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.619485, 19.482676, 22.414337>,  <11.746210, 19.857368, 22.473888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.619485, 19.482676, 22.414337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385976, -0.016055, 0.922369,
		-0.866402, 0.349681, -0.356469,
		-0.316812, -0.936731, -0.148879,
		11.524442, 19.201656, 22.369673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.972452, 19.831694, 22.704443>,  <11.746210, 19.857368, 22.473888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.972452, 19.831694, 22.704443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.131615, 19.464848, 22.694893>,  <11.227112, 19.244740, 22.689163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.131615, 19.464848, 22.694893>,  <10.972452, 19.831694, 22.704443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.131615, 19.464848, 22.694893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277501, -0.145120, 0.949702,
		-0.874451, -0.371267, -0.312244,
		0.397906, -0.917116, -0.023874,
		11.250986, 19.189713, 22.687731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.543487, 19.513712, 23.085083>,  <10.972452, 19.831694, 22.704443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.543487, 19.513712, 23.085083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.885750, 19.307756, 23.106007>,  <11.091108, 19.184183, 23.118561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.885750, 19.307756, 23.106007>,  <10.543487, 19.513712, 23.085083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885750, 19.307756, 23.106007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162630, -0.171554, 0.971659,
		-0.491323, -0.839915, -0.230528,
		0.855659, -0.514890, 0.052307,
		11.142447, 19.153290, 23.121698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468780, 18.929764, 23.427948>,  <10.543487, 19.513712, 23.085083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468780, 18.929764, 23.427948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.865724, 18.966742, 23.460627>,  <11.103890, 18.988928, 23.480234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.865724, 18.966742, 23.460627>,  <10.468780, 18.929764, 23.427948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.865724, 18.966742, 23.460627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060499, -0.212448, 0.975298,
		0.107517, -0.972790, -0.205232,
		0.992361, 0.092445, 0.081694,
		11.163432, 18.994474, 23.485134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.692706, 18.470423, 24.018749>,  <10.468780, 18.929764, 23.427948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.692706, 18.470423, 24.018749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.017513, 18.699854, 23.975597>,  <11.212398, 18.837513, 23.949707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.017513, 18.699854, 23.975597>,  <10.692706, 18.470423, 24.018749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.017513, 18.699854, 23.975597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091587, 0.057318, 0.994146,
		0.576402, -0.817144, -0.005989,
		0.812018, 0.573576, -0.107878,
		11.261119, 18.871927, 23.943233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.127734, 18.263939, 24.580023>,  <10.692706, 18.470423, 24.018749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.127734, 18.263939, 24.580023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.236317, 18.634674, 24.476267>,  <11.301466, 18.857115, 24.414013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.236317, 18.634674, 24.476267>,  <11.127734, 18.263939, 24.580023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.236317, 18.634674, 24.476267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003646, 0.270500, 0.962713,
		0.962444, -0.260388, 0.076809,
		0.271456, 0.926837, -0.259392,
		11.317754, 18.912725, 24.398449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.430666, 17.582544, 24.952368>,  <11.127734, 18.263939, 24.580023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.430666, 17.582544, 24.952368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.109962, 17.374846, 25.070732>,  <10.917541, 17.250225, 25.141750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.109962, 17.374846, 25.070732>,  <11.430666, 17.582544, 24.952368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.109962, 17.374846, 25.070732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014231, -0.511572, -0.859123,
		0.597478, -0.684598, 0.417547,
		-0.801759, -0.519249, 0.295910,
		10.869434, 17.219070, 25.159506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.511666, 16.943352, 24.622952>,  <11.430666, 17.582544, 24.952368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.511666, 16.943352, 24.622952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.119164, 16.968269, 24.695900>,  <10.883663, 16.983221, 24.739670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.119164, 16.968269, 24.695900>,  <11.511666, 16.943352, 24.622952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119164, 16.968269, 24.695900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186469, -0.545919, -0.816824,
		0.048676, -0.835519, 0.547302,
		-0.981254, 0.062295, 0.182371,
		10.824788, 16.986958, 24.750612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.203081, 16.310789, 24.471291>,  <11.511666, 16.943352, 24.622952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.203081, 16.310789, 24.471291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.884760, 16.552954, 24.465998>,  <10.693768, 16.698252, 24.462822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.884760, 16.552954, 24.465998>,  <11.203081, 16.310789, 24.471291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.884760, 16.552954, 24.465998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261497, -0.363280, -0.894230,
		-0.546185, -0.708170, 0.447412,
		-0.795802, 0.605412, -0.013234,
		10.646019, 16.734577, 24.462029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.691568, 15.934290, 24.091768>,  <11.203081, 16.310789, 24.471291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.691568, 15.934290, 24.091768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.512850, 16.290922, 24.062220>,  <10.405619, 16.504902, 24.044491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.512850, 16.290922, 24.062220>,  <10.691568, 15.934290, 24.091768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512850, 16.290922, 24.062220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398772, -0.272388, -0.875663,
		-0.800846, -0.361786, 0.477239,
		-0.446797, 0.891580, -0.073870,
		10.378811, 16.558395, 24.040058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.012120, 15.821987, 23.806873>,  <10.691568, 15.934290, 24.091768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.012120, 15.821987, 23.806873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.076303, 16.209261, 23.730064>,  <10.114814, 16.441626, 23.683979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.076303, 16.209261, 23.730064>,  <10.012120, 15.821987, 23.806873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.076303, 16.209261, 23.730064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331529, -0.130376, -0.934393,
		-0.929700, 0.213592, 0.300061,
		0.160458, 0.968184, -0.192022,
		10.124441, 16.499716, 23.672459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.420403, 16.146677, 23.334354>,  <10.012120, 15.821987, 23.806873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.420403, 16.146677, 23.334354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.742721, 16.380545, 23.296703>,  <9.936111, 16.520864, 23.274113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.742721, 16.380545, 23.296703>,  <9.420403, 16.146677, 23.334354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.742721, 16.380545, 23.296703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171236, 0.077879, -0.982147,
		-0.566900, 0.807526, 0.162870,
		0.805793, 0.584669, -0.094128,
		9.984459, 16.555944, 23.268465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.236169, 16.773905, 22.824385>,  <9.420403, 16.146677, 23.334354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.236169, 16.773905, 22.824385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.632751, 16.721865, 22.820505>,  <9.870699, 16.690641, 22.818176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.632751, 16.721865, 22.820505>,  <9.236169, 16.773905, 22.824385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.632751, 16.721865, 22.820505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002746, 0.095144, -0.995460,
		0.130431, 0.986925, 0.094688,
		0.991454, -0.130099, -0.009700,
		9.930186, 16.682835, 22.817595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<18.053036, 14.764664, 25.247019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.804314, 14.741247, 24.934626>,  <17.655081, 14.727198, 24.747190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.804314, 14.741247, 24.934626>,  <18.053036, 14.764664, 25.247019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804314, 14.741247, 24.934626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746590, -0.256909, 0.613678,
		-0.236567, 0.964661, 0.116041,
		-0.621803, -0.058541, -0.780983,
		17.617773, 14.723685, 24.700331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619120, 15.283010, 24.764709>,  <18.053036, 14.764664, 25.247019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619120, 15.283010, 24.764709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.733105, 15.461591, 25.103996>,  <17.801497, 15.568740, 25.307570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.733105, 15.461591, 25.103996>,  <17.619120, 15.283010, 24.764709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.733105, 15.461591, 25.103996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766861, 0.424723, -0.481180,
		-0.575082, 0.787585, -0.221338,
		0.284962, 0.446454, 0.848219,
		17.818594, 15.595527, 25.358461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974459, 15.224496, 24.335873>,  <17.619120, 15.283010, 24.764709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974459, 15.224496, 24.335873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.629436, 15.055136, 24.446672>,  <16.422422, 14.953520, 24.513151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.629436, 15.055136, 24.446672>,  <16.974459, 15.224496, 24.335873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.629436, 15.055136, 24.446672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069034, 0.640835, 0.764569,
		-0.501229, 0.640361, -0.581985,
		-0.862557, -0.423400, 0.276998,
		16.370670, 14.928116, 24.529772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645395, 15.785625, 24.750307>,  <16.974459, 15.224496, 24.335873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.645395, 15.785625, 24.750307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.384544, 15.485548, 24.794020>,  <16.228035, 15.305502, 24.820248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.384544, 15.485548, 24.794020>,  <16.645395, 15.785625, 24.750307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.384544, 15.485548, 24.794020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386419, 0.452942, 0.803445,
		-0.652236, 0.481720, -0.585264,
		-0.652126, -0.750193, 0.109279,
		16.188906, 15.260490, 24.826803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.300589, 15.991327, 25.218943>,  <16.645395, 15.785625, 24.750307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.300589, 15.991327, 25.218943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.115953, 15.637429, 25.193134>,  <16.005173, 15.425090, 25.177650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.115953, 15.637429, 25.193134>,  <16.300589, 15.991327, 25.218943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115953, 15.637429, 25.193134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524314, 0.213428, 0.824344,
		-0.715564, 0.414335, -0.562401,
		-0.461587, -0.884746, -0.064520,
		15.977477, 15.372005, 25.173779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551429, 16.002033, 25.115152>,  <16.300589, 15.991327, 25.218943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551429, 16.002033, 25.115152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.679427, 15.691457, 25.332314>,  <15.756227, 15.505111, 25.462610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.679427, 15.691457, 25.332314>,  <15.551429, 16.002033, 25.115152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679427, 15.691457, 25.332314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287757, 0.466310, 0.836511,
		-0.902662, -0.423903, -0.074209,
		0.319995, -0.776441, 0.542901,
		15.775426, 15.458525, 25.495184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.208658, 16.047327, 24.411467>,  <15.551429, 16.002033, 25.115152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.208658, 16.047327, 24.411467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.941424, 15.818992, 24.602383>,  <14.781084, 15.681991, 24.716932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.941424, 15.818992, 24.602383>,  <15.208658, 16.047327, 24.411467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941424, 15.818992, 24.602383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102733, -0.706066, -0.700654,
		0.736958, -0.419064, 0.530357,
		-0.668085, -0.570839, 0.477289,
		14.740998, 15.647740, 24.745569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493035, 15.282172, 24.513237>,  <15.208658, 16.047327, 24.411467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.493035, 15.282172, 24.513237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.093232, 15.293062, 24.506985>,  <14.853351, 15.299596, 24.503233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.093232, 15.293062, 24.506985>,  <15.493035, 15.282172, 24.513237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.093232, 15.293062, 24.506985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003562, -0.593061, -0.805149,
		-0.031189, -0.804697, 0.592866,
		-0.999507, 0.027224, -0.015630,
		14.793380, 15.301229, 24.502296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365485, 14.698156, 24.377552>,  <15.493035, 15.282172, 24.513237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.365485, 14.698156, 24.377552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.028302, 14.891747, 24.283585>,  <14.825993, 15.007902, 24.227203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.028302, 14.891747, 24.283585>,  <15.365485, 14.698156, 24.377552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.028302, 14.891747, 24.283585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115768, -0.589630, -0.799334,
		-0.525375, -0.646609, 0.553063,
		-0.842959, 0.483977, -0.234920,
		14.775414, 15.036941, 24.213108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.846238, 14.273533, 24.397886>,  <15.365485, 14.698156, 24.377552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.846238, 14.273533, 24.397886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.727752, 14.557710, 24.142534>,  <14.656660, 14.728216, 23.989323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.727752, 14.557710, 24.142534>,  <14.846238, 14.273533, 24.397886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727752, 14.557710, 24.142534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006508, -0.669861, -0.742458,
		-0.955099, -0.215773, 0.203046,
		-0.296215, 0.710442, -0.638379,
		14.638887, 14.770843, 23.951021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.205241, 13.954220, 24.130722>,  <14.846238, 14.273533, 24.397886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.205241, 13.954220, 24.130722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.322573, 14.217040, 23.852947>,  <14.392972, 14.374732, 23.686283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.322573, 14.217040, 23.852947>,  <14.205241, 13.954220, 24.130722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.322573, 14.217040, 23.852947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019376, -0.722155, -0.691460,
		-0.955815, 0.216280, -0.199098,
		0.293329, 0.657050, -0.694438,
		14.410571, 14.414155, 23.644615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788929, 13.808084, 23.508175>,  <14.205241, 13.954220, 24.130722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.788929, 13.808084, 23.508175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.075735, 14.033946, 23.344687>,  <14.247819, 14.169463, 23.246593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.075735, 14.033946, 23.344687>,  <13.788929, 13.808084, 23.508175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075735, 14.033946, 23.344687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089123, -0.507282, -0.857159,
		-0.691336, 0.651023, -0.313406,
		0.717016, 0.564654, -0.408723,
		14.290840, 14.203342, 23.222069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.019127, 13.806355, 23.518181>,  <13.788929, 13.808084, 23.508175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.019127, 13.806355, 23.518181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.654781, 13.728500, 23.663752>,  <12.436174, 13.681787, 23.751095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.654781, 13.728500, 23.663752>,  <13.019127, 13.806355, 23.518181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.654781, 13.728500, 23.663752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208280, 0.544485, 0.812500,
		-0.356298, 0.815875, -0.455412,
		-0.910863, -0.194639, 0.363929,
		12.381522, 13.670109, 23.772930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.710601, 14.493618, 23.726746>,  <13.019127, 13.806355, 23.518181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.710601, 14.493618, 23.726746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.496955, 14.223228, 23.929832>,  <12.368767, 14.060993, 24.051683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.496955, 14.223228, 23.929832>,  <12.710601, 14.493618, 23.726746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.496955, 14.223228, 23.929832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070273, 0.562977, 0.823480,
		-0.842486, 0.475512, -0.253192,
		-0.534116, -0.675977, 0.507716,
		12.336720, 14.020434, 24.082148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.157005, 14.782204, 24.092260>,  <12.710601, 14.493618, 23.726746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.157005, 14.782204, 24.092260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.202288, 14.446170, 24.304464>,  <12.229457, 14.244550, 24.431787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.202288, 14.446170, 24.304464>,  <12.157005, 14.782204, 24.092260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.202288, 14.446170, 24.304464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005231, 0.533433, 0.845826,
		-0.993558, -0.098527, 0.055992,
		0.113205, -0.840084, 0.530512,
		12.236249, 14.194144, 24.463617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.796903, 14.829872, 24.771738>,  <12.157005, 14.782204, 24.092260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.796903, 14.829872, 24.771738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.034959, 14.520323, 24.858389>,  <12.177793, 14.334593, 24.910379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.034959, 14.520323, 24.858389>,  <11.796903, 14.829872, 24.771738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034959, 14.520323, 24.858389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053257, 0.306951, 0.950234,
		-0.801855, -0.553986, 0.223893,
		0.595140, -0.773874, 0.216626,
		12.213501, 14.288160, 24.923376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.528401, 14.655937, 25.351336>,  <11.796903, 14.829872, 24.771738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.528401, 14.655937, 25.351336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.892720, 14.490952, 25.344149>,  <12.111312, 14.391960, 25.339836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.892720, 14.490952, 25.344149>,  <11.528401, 14.655937, 25.351336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.892720, 14.490952, 25.344149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089418, 0.154589, 0.983924,
		-0.403055, -0.897761, 0.177680,
		0.910797, -0.412464, -0.017968,
		12.165959, 14.367212, 25.338758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.496998, 14.225632, 25.923620>,  <11.528401, 14.655937, 25.351336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.496998, 14.225632, 25.923620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.877365, 14.314749, 25.837721>,  <12.105586, 14.368219, 25.786182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.877365, 14.314749, 25.837721>,  <11.496998, 14.225632, 25.923620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877365, 14.314749, 25.837721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140725, 0.306705, 0.941344,
		0.275583, -0.925364, 0.260301,
		0.950921, 0.222787, -0.214744,
		12.162641, 14.381587, 25.773296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.799492, 14.043367, 26.483316>,  <11.496998, 14.225632, 25.923620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.799492, 14.043367, 26.483316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.097849, 14.266530, 26.337776>,  <12.276863, 14.400428, 26.250452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.097849, 14.266530, 26.337776>,  <11.799492, 14.043367, 26.483316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.097849, 14.266530, 26.337776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055414, 0.492392, 0.868608,
		0.663759, -0.668049, 0.336354,
		0.745891, 0.557908, -0.363849,
		12.321616, 14.433902, 26.228622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.378640, 13.988326, 26.963654>,  <11.799492, 14.043367, 26.483316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.378640, 13.988326, 26.963654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.462475, 14.313830, 26.746815>,  <12.512775, 14.509133, 26.616713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.462475, 14.313830, 26.746815>,  <12.378640, 13.988326, 26.963654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.462475, 14.313830, 26.746815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007087, 0.553129, 0.833065,
		0.977765, -0.178440, 0.110161,
		0.209585, 0.813761, -0.542095,
		12.525351, 14.557959, 26.584187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.871861, 14.298763, 27.343977>,  <12.378640, 13.988326, 26.963654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.871861, 14.298763, 27.343977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.737516, 14.598126, 27.115213>,  <12.656910, 14.777744, 26.977955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.737516, 14.598126, 27.115213>,  <12.871861, 14.298763, 27.343977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737516, 14.598126, 27.115213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076915, 0.583362, 0.808562,
		0.938766, 0.315552, -0.138364,
		-0.335860, 0.748409, -0.571911,
		12.636759, 14.822649, 26.943640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.171840, 14.893978, 27.580267>,  <12.871861, 14.298763, 27.343977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.171840, 14.893978, 27.580267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.845484, 15.017680, 27.384846>,  <12.649671, 15.091901, 27.267593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.845484, 15.017680, 27.384846>,  <13.171840, 14.893978, 27.580267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845484, 15.017680, 27.384846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201515, 0.639885, 0.741579,
		0.541955, 0.703498, -0.459756,
		-0.815890, 0.309254, -0.488554,
		12.600717, 15.110456, 27.238279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257449, 15.619022, 27.665451>,  <13.171840, 14.893978, 27.580267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257449, 15.619022, 27.665451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.872644, 15.583966, 27.562027>,  <12.641762, 15.562933, 27.499973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.872644, 15.583966, 27.562027>,  <13.257449, 15.619022, 27.665451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.872644, 15.583966, 27.562027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238522, 0.730559, 0.639837,
		0.132817, 0.677202, -0.723711,
		-0.962012, -0.087640, -0.258558,
		12.584041, 15.557674, 27.484459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.094197, 16.264090, 27.592152>,  <13.257449, 15.619022, 27.665451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.094197, 16.264090, 27.592152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.754101, 16.068640, 27.670469>,  <12.550043, 15.951370, 27.717461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.754101, 16.068640, 27.670469>,  <13.094197, 16.264090, 27.592152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.754101, 16.068640, 27.670469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277638, 0.732285, 0.621832,
		-0.447221, 0.474347, -0.758280,
		-0.850241, -0.488624, 0.195797,
		12.499028, 15.922052, 27.729208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.481558, 16.723564, 27.466049>,  <13.094197, 16.264090, 27.592152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.481558, 16.723564, 27.466049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.391463, 16.435722, 27.728785>,  <12.337406, 16.263018, 27.886425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.391463, 16.435722, 27.728785>,  <12.481558, 16.723564, 27.466049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.391463, 16.435722, 27.728785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283270, 0.693406, 0.662530,
		-0.932216, -0.036837, -0.360023,
		-0.225237, -0.719605, 0.656839,
		12.323893, 16.219841, 27.925837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.976864, 17.044083, 27.832458>,  <12.481558, 16.723564, 27.466049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.976864, 17.044083, 27.832458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.131407, 16.765415, 28.074245>,  <12.224133, 16.598215, 28.219318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.131407, 16.765415, 28.074245>,  <11.976864, 17.044083, 27.832458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.131407, 16.765415, 28.074245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198651, 0.577127, 0.792125,
		-0.900703, -0.426122, 0.084584,
		0.386357, -0.696667, 0.604470,
		12.247314, 16.556416, 28.255587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.295218, 16.674519, 27.707199>,  <11.976864, 17.044083, 27.832458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.295218, 16.674519, 27.707199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.158423, 17.046593, 27.760576>,  <11.076347, 17.269836, 27.792603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.158423, 17.046593, 27.760576>,  <11.295218, 16.674519, 27.707199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.158423, 17.046593, 27.760576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090273, 0.108827, -0.989953,
		-0.935360, -0.350594, 0.046754,
		-0.341984, 0.930183, 0.133441,
		11.055828, 17.325647, 27.800610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.672297, 16.700819, 27.396814>,  <11.295218, 16.674519, 27.707199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.672297, 16.700819, 27.396814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.800907, 17.079542, 27.402092>,  <10.878073, 17.306776, 27.405258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.800907, 17.079542, 27.402092>,  <10.672297, 16.700819, 27.396814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.800907, 17.079542, 27.402092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247419, 0.097455, -0.963995,
		-0.914006, 0.306682, 0.265593,
		0.321523, 0.946810, 0.013196,
		10.897364, 17.363585, 27.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.114772, 17.046658, 27.287514>,  <10.672297, 16.700819, 27.396814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.114772, 17.046658, 27.287514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.433583, 17.269009, 27.193073>,  <10.624870, 17.402420, 27.136410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.433583, 17.269009, 27.193073>,  <10.114772, 17.046658, 27.287514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.433583, 17.269009, 27.193073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237831, -0.070450, -0.968748,
		-0.555141, 0.828272, 0.076055,
		0.797029, 0.555880, -0.236099,
		10.672692, 17.435772, 27.122244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.887853, 17.544409, 26.812546>,  <10.114772, 17.046658, 27.287514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.887853, 17.544409, 26.812546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.286284, 17.540747, 26.777346>,  <10.525343, 17.538549, 26.756226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.286284, 17.540747, 26.777346>,  <9.887853, 17.544409, 26.812546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.286284, 17.540747, 26.777346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087598, 0.037676, -0.995443,
		0.012431, 0.999248, 0.036726,
		0.996078, -0.009157, -0.088001,
		10.585108, 17.538000, 26.750946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.099121, 18.040876, 26.270527>,  <9.887853, 17.544409, 26.812546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.099121, 18.040876, 26.270527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.400450, 17.780354, 26.306980>,  <10.581247, 17.624041, 26.328852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.400450, 17.780354, 26.306980>,  <10.099121, 18.040876, 26.270527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.400450, 17.780354, 26.306980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126634, 0.007680, -0.991920,
		0.645344, 0.758776, 0.088263,
		0.753323, -0.651306, 0.091131,
		10.626447, 17.584961, 26.334320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.562386, 18.235296, 25.729681>,  <10.099121, 18.040876, 26.270527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.562386, 18.235296, 25.729681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.655723, 17.857204, 25.820978>,  <10.711724, 17.630350, 25.875757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.655723, 17.857204, 25.820978>,  <10.562386, 18.235296, 25.729681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.655723, 17.857204, 25.820978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144292, -0.198467, -0.969428,
		0.961630, 0.259142, 0.090078,
		0.233342, -0.945228, 0.228244,
		10.725725, 17.573635, 25.889452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955700, 18.053883, 25.285553>,  <10.562386, 18.235296, 25.729681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.955700, 18.053883, 25.285553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.872620, 17.685535, 25.417528>,  <10.822771, 17.464527, 25.496714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.872620, 17.685535, 25.417528>,  <10.955700, 18.053883, 25.285553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.872620, 17.685535, 25.417528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094840, -0.354661, -0.930173,
		0.973584, -0.161906, 0.160998,
		-0.207700, -0.920871, 0.329937,
		10.810309, 17.409275, 25.516510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.672830, 18.340111, 25.041101>,  <10.955700, 18.053883, 25.285553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.672830, 18.340111, 25.041101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.584156, 18.699169, 24.888739>,  <11.530951, 18.914604, 24.797321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.584156, 18.699169, 24.888739>,  <11.672830, 18.340111, 25.041101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.584156, 18.699169, 24.888739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081516, 0.406316, 0.910089,
		0.971705, 0.170703, -0.163247,
		-0.221685, 0.897645, -0.380905,
		11.517651, 18.968462, 24.774467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.022221, 18.744265, 25.410454>,  <11.672830, 18.340111, 25.041101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.022221, 18.744265, 25.410454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.761561, 19.012875, 25.269367>,  <11.605165, 19.174040, 25.184715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.761561, 19.012875, 25.269367>,  <12.022221, 18.744265, 25.410454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761561, 19.012875, 25.269367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084099, 0.526102, 0.846253,
		0.753844, 0.521797, -0.399308,
		-0.651649, 0.671524, -0.352716,
		11.566067, 19.214333, 25.163553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.264890, 19.369244, 25.453981>,  <12.022221, 18.744265, 25.410454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.264890, 19.369244, 25.453981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.868377, 19.421360, 25.461796>,  <11.630468, 19.452629, 25.466484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.868377, 19.421360, 25.461796>,  <12.264890, 19.369244, 25.453981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.868377, 19.421360, 25.461796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089493, 0.557085, 0.825620,
		0.096688, 0.820171, -0.563889,
		-0.991283, 0.130292, 0.019537,
		11.570992, 19.460447, 25.467657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.186037, 20.092953, 25.465940>,  <12.264890, 19.369244, 25.453981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.186037, 20.092953, 25.465940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.844786, 19.941967, 25.609991>,  <11.640035, 19.851376, 25.696421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.844786, 19.941967, 25.609991>,  <12.186037, 20.092953, 25.465940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.844786, 19.941967, 25.609991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044600, 0.634996, 0.771227,
		-0.519791, 0.674017, -0.524898,
		-0.853128, -0.377467, 0.360127,
		11.588847, 19.828728, 25.718029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.740091, 20.738720, 25.740788>,  <12.186037, 20.092953, 25.465940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.740091, 20.738720, 25.740788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.605458, 20.404606, 25.914690>,  <11.524678, 20.204138, 26.019032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.605458, 20.404606, 25.914690>,  <11.740091, 20.738720, 25.740788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.605458, 20.404606, 25.914690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016042, 0.466713, 0.884264,
		-0.941517, 0.290654, -0.170487,
		-0.336584, -0.835284, 0.434755,
		11.504483, 20.154020, 26.045116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.162227, 20.947590, 26.335707>,  <11.740091, 20.738720, 25.740788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.162227, 20.947590, 26.335707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.299753, 20.585155, 26.434334>,  <11.382269, 20.367695, 26.493511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.299753, 20.585155, 26.434334>,  <11.162227, 20.947590, 26.335707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.299753, 20.585155, 26.434334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050088, 0.244508, 0.968353,
		-0.937700, -0.345286, 0.038682,
		0.343817, -0.906087, 0.246570,
		11.402899, 20.313330, 26.508305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.745828, 20.740061, 26.938482>,  <11.162227, 20.947590, 26.335707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.745828, 20.740061, 26.938482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.081553, 20.523418, 26.919657>,  <11.282988, 20.393433, 26.908361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.081553, 20.523418, 26.919657>,  <10.745828, 20.740061, 26.938482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.081553, 20.523418, 26.919657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290787, 0.374100, 0.880620,
		-0.459344, -0.752802, 0.471479,
		0.839313, -0.541607, -0.047064,
		11.333346, 20.360937, 26.905537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.765370, 20.558464, 27.630106>,  <10.745828, 20.740061, 26.938482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.765370, 20.558464, 27.630106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.132696, 20.503752, 27.481518>,  <11.353091, 20.470924, 27.392365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.132696, 20.503752, 27.481518>,  <10.765370, 20.558464, 27.630106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.132696, 20.503752, 27.481518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393922, 0.408344, 0.823457,
		0.039053, -0.902522, 0.428869,
		0.918314, -0.136783, -0.371470,
		11.408191, 20.462717, 27.370077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.096155, 20.083593, 28.046829>,  <10.765370, 20.558464, 27.630106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.096155, 20.083593, 28.046829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.373938, 20.315659, 27.876587>,  <11.540607, 20.454899, 27.774441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.373938, 20.315659, 27.876587>,  <11.096155, 20.083593, 28.046829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.373938, 20.315659, 27.876587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463828, 0.091251, 0.881213,
		0.550087, -0.809371, -0.205727,
		0.694455, 0.580165, -0.425605,
		11.582274, 20.489708, 27.748905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.224706, 14.241590, 13.040048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.501033, 14.528195, 13.078784>,  <13.666829, 14.700159, 13.102026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.501033, 14.528195, 13.078784>,  <13.224706, 14.241590, 13.040048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.501033, 14.528195, 13.078784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609030, 0.504466, 0.612044,
		0.389685, -0.481790, 0.784872,
		0.690817, 0.716514, 0.096842,
		13.708278, 14.743150, 13.107836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109159, 14.407257, 13.639242>,  <13.224706, 14.241590, 13.040048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.109159, 14.407257, 13.639242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.330914, 14.714888, 13.512011>,  <13.463968, 14.899466, 13.435672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.330914, 14.714888, 13.512011>,  <13.109159, 14.407257, 13.639242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.330914, 14.714888, 13.512011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412331, 0.585799, 0.697727,
		0.722936, -0.255659, 0.641875,
		0.554390, 0.769076, -0.318079,
		13.497231, 14.945610, 13.416587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371966, 14.652006, 14.221352>,  <13.109159, 14.407257, 13.639242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371966, 14.652006, 14.221352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.367734, 14.938418, 13.942156>,  <13.365194, 15.110266, 13.774638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.367734, 14.938418, 13.942156>,  <13.371966, 14.652006, 14.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.367734, 14.938418, 13.942156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516408, 0.593826, 0.617004,
		0.856278, 0.366975, 0.363480,
		-0.010581, 0.716031, -0.697989,
		13.364559, 15.153228, 13.732759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633373, 15.169114, 14.586222>,  <13.371966, 14.652006, 14.221352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633373, 15.169114, 14.586222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.448525, 15.346011, 14.278750>,  <13.337617, 15.452149, 14.094268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.448525, 15.346011, 14.278750>,  <13.633373, 15.169114, 14.586222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.448525, 15.346011, 14.278750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272749, 0.753892, 0.597708,
		0.843833, 0.485869, -0.227766,
		-0.462119, 0.442243, -0.768679,
		13.309890, 15.478684, 14.048146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.945179, 15.801371, 14.583469>,  <13.633373, 15.169114, 14.586222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.945179, 15.801371, 14.583469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598466, 15.837529, 14.387300>,  <13.390438, 15.859224, 14.269598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598466, 15.837529, 14.387300>,  <13.945179, 15.801371, 14.583469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.598466, 15.837529, 14.387300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320282, 0.652884, 0.686413,
		0.382238, 0.752045, -0.536956,
		-0.866783, 0.090396, -0.490423,
		13.338430, 15.864648, 14.240172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816773, 16.500162, 14.539951>,  <13.945179, 15.801371, 14.583469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.816773, 16.500162, 14.539951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.456940, 16.336075, 14.479994>,  <13.241039, 16.237623, 14.444019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.456940, 16.336075, 14.479994>,  <13.816773, 16.500162, 14.539951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.456940, 16.336075, 14.479994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421142, 0.723834, 0.546538,
		-0.115702, 0.554783, -0.823911,
		-0.899585, -0.410218, -0.149893,
		13.187064, 16.213009, 14.435026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.392819, 17.117456, 14.607288>,  <13.816773, 16.500162, 14.539951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.392819, 17.117456, 14.607288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.160306, 16.794104, 14.644438>,  <13.020798, 16.600092, 14.666727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.160306, 16.794104, 14.644438>,  <13.392819, 17.117456, 14.607288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.160306, 16.794104, 14.644438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682747, 0.546641, 0.484809,
		-0.442680, 0.218403, -0.869675,
		-0.581284, -0.808383, 0.092873,
		12.985921, 16.551588, 14.672299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716680, 17.310028, 14.478106>,  <13.392819, 17.117456, 14.607288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716680, 17.310028, 14.478106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.679420, 16.978817, 14.699264>,  <12.657063, 16.780090, 14.831958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.679420, 16.978817, 14.699264>,  <12.716680, 17.310028, 14.478106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.679420, 16.978817, 14.699264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672638, 0.461757, 0.578219,
		-0.734085, -0.318036, -0.599977,
		-0.093149, -0.828030, 0.552892,
		12.651475, 16.730408, 14.865131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.020303, 17.223284, 14.650843>,  <12.716680, 17.310028, 14.478106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.020303, 17.223284, 14.650843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181771, 16.984076, 14.927804>,  <12.278652, 16.840551, 15.093981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181771, 16.984076, 14.927804>,  <12.020303, 17.223284, 14.650843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181771, 16.984076, 14.927804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713275, 0.268247, 0.647520,
		-0.572965, -0.755259, -0.318269,
		0.403670, -0.598020, 0.692403,
		12.302873, 16.804670, 15.135525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.465825, 16.816898, 15.042187>,  <12.020303, 17.223284, 14.650843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.465825, 16.816898, 15.042187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.788211, 16.790476, 15.277493>,  <11.981643, 16.774622, 15.418676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.788211, 16.790476, 15.277493>,  <11.465825, 16.816898, 15.042187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.788211, 16.790476, 15.277493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571970, 0.169185, 0.802637,
		-0.152546, -0.983368, 0.098574,
		0.805965, -0.066058, 0.588266,
		12.030001, 16.770658, 15.453972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.191569, 16.629717, 15.687089>,  <11.465825, 16.816898, 15.042187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.191569, 16.629717, 15.687089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.560431, 16.766100, 15.760175>,  <11.781747, 16.847929, 15.804027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.560431, 16.766100, 15.760175>,  <11.191569, 16.629717, 15.687089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.560431, 16.766100, 15.760175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313378, 0.381552, 0.869605,
		0.226780, -0.859167, 0.458697,
		0.922152, 0.340955, 0.182716,
		11.837076, 16.868387, 15.814989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.284285, 16.526453, 16.445372>,  <11.191569, 16.629717, 15.687089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.284285, 16.526453, 16.445372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.608993, 16.749016, 16.374447>,  <11.803817, 16.882553, 16.331892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.608993, 16.749016, 16.374447>,  <11.284285, 16.526453, 16.445372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.608993, 16.749016, 16.374447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103783, 0.436251, 0.893820,
		0.574683, -0.707173, 0.411881,
		0.811769, 0.556409, -0.177314,
		11.852524, 16.915937, 16.321253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.317824, 15.833333, 16.633804>,  <11.284285, 16.526453, 16.445372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.317824, 15.833333, 16.633804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.015553, 15.638046, 16.808432>,  <10.834189, 15.520874, 16.913208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.015553, 15.638046, 16.808432>,  <11.317824, 15.833333, 16.633804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.015553, 15.638046, 16.808432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367953, -0.234962, -0.899669,
		0.541811, -0.840498, -0.002085,
		-0.755680, -0.488217, 0.436568,
		10.788849, 15.491581, 16.939402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.314264, 15.166791, 16.341112>,  <11.317824, 15.833333, 16.633804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.314264, 15.166791, 16.341112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.950678, 15.280726, 16.462864>,  <10.732526, 15.349088, 16.535915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.950678, 15.280726, 16.462864>,  <11.314264, 15.166791, 16.341112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.950678, 15.280726, 16.462864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341937, -0.091788, -0.935229,
		-0.238454, -0.954170, 0.180830,
		-0.908965, 0.284842, 0.304379,
		10.677988, 15.366178, 16.554178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.938799, 14.627491, 16.094057>,  <11.314264, 15.166791, 16.341112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.938799, 14.627491, 16.094057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.684495, 14.928009, 16.164896>,  <10.531913, 15.108320, 16.207399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.684495, 14.928009, 16.164896>,  <10.938799, 14.627491, 16.094057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.684495, 14.928009, 16.164896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466690, -0.191385, -0.863465,
		-0.614824, -0.631606, 0.472297,
		-0.635761, 0.751296, 0.177096,
		10.493767, 15.153398, 16.218025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.294501, 14.320286, 15.885293>,  <10.938799, 14.627491, 16.094057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.294501, 14.320286, 15.885293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.213910, 14.710848, 15.916378>,  <10.165556, 14.945185, 15.935029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.213910, 14.710848, 15.916378>,  <10.294501, 14.320286, 15.885293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.213910, 14.710848, 15.916378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745072, -0.101272, -0.659251,
		-0.635826, -0.190725, 0.747896,
		-0.201477, 0.976406, 0.077713,
		10.153467, 15.003770, 15.939692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.618007, 14.379911, 16.116352>,  <10.294501, 14.320286, 15.885293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.618007, 14.379911, 16.116352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.734169, 14.702561, 15.910432>,  <9.803866, 14.896152, 15.786880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.734169, 14.702561, 15.910432>,  <9.618007, 14.379911, 16.116352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.734169, 14.702561, 15.910432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699450, -0.188203, -0.689456,
		-0.653019, 0.560301, 0.509539,
		0.290406, 0.806624, -0.514802,
		9.821291, 14.944549, 15.755991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.077825, 14.611226, 15.956926>,  <9.618007, 14.379911, 16.116352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.077825, 14.611226, 15.956926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.317032, 14.785140, 15.687606>,  <9.460556, 14.889488, 15.526013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.317032, 14.785140, 15.687606>,  <9.077825, 14.611226, 15.956926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.317032, 14.785140, 15.687606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627775, -0.268160, -0.730746,
		-0.498270, 0.859681, 0.112583,
		0.598018, 0.434786, -0.673302,
		9.496437, 14.915576, 15.485615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.625683, 14.839364, 15.462031>,  <9.077825, 14.611226, 15.956926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.625683, 14.839364, 15.462031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.963433, 14.879694, 15.251560>,  <9.166083, 14.903893, 15.125278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.963433, 14.879694, 15.251560>,  <8.625683, 14.839364, 15.462031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.963433, 14.879694, 15.251560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490284, -0.250518, -0.834783,
		-0.215984, 0.962847, -0.162099,
		0.844377, 0.100826, -0.526177,
		9.216746, 14.909942, 15.093707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.502975, 15.365711, 14.818826>,  <8.625683, 14.839364, 15.462031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.502975, 15.365711, 14.818826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.813777, 15.132580, 14.723685>,  <9.000258, 14.992701, 14.666601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.813777, 15.132580, 14.723685>,  <8.502975, 15.365711, 14.818826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.813777, 15.132580, 14.723685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445285, -0.241805, -0.862120,
		0.444955, 0.775783, -0.447409,
		0.777005, -0.582829, -0.237852,
		9.046879, 14.957731, 14.652329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.558269, 15.492252, 14.130105>,  <8.502975, 15.365711, 14.818826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.558269, 15.492252, 14.130105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.756280, 15.151940, 14.200671>,  <8.875087, 14.947753, 14.243011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.756280, 15.151940, 14.200671>,  <8.558269, 15.492252, 14.130105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.756280, 15.151940, 14.200671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473614, -0.434436, -0.766130,
		0.728449, 0.295703, -0.617998,
		0.495028, -0.850779, 0.176415,
		8.904788, 14.896707, 14.253595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.865870, 15.307860, 13.535708>,  <8.558269, 15.492252, 14.130105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.865870, 15.307860, 13.535708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.854966, 14.963187, 13.738394>,  <8.848423, 14.756383, 13.860004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.854966, 14.963187, 13.738394>,  <8.865870, 15.307860, 13.535708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.854966, 14.963187, 13.738394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358996, -0.464645, -0.809461,
		0.932941, -0.203975, -0.296674,
		-0.027262, -0.861684, 0.506712,
		8.846787, 14.704682, 13.890408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.982784, 14.777509, 13.045455>,  <8.865870, 15.307860, 13.535708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.982784, 14.777509, 13.045455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.823027, 14.576717, 13.352311>,  <8.727172, 14.456243, 13.536425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.823027, 14.576717, 13.352311>,  <8.982784, 14.777509, 13.045455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.823027, 14.576717, 13.352311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328814, -0.702670, -0.630981,
		0.855784, -0.504256, 0.115585,
		-0.399394, -0.501977, 0.767140,
		8.703209, 14.426125, 13.582453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.303849, 14.155136, 13.012482>,  <8.982784, 14.777509, 13.045455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.303849, 14.155136, 13.012482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.952932, 14.125160, 13.202110>,  <8.742382, 14.107175, 13.315887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.952932, 14.125160, 13.202110>,  <9.303849, 14.155136, 13.012482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.952932, 14.125160, 13.202110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280668, -0.721144, -0.633385,
		0.389340, -0.688720, 0.611620,
		-0.877291, -0.074940, 0.474072,
		8.689745, 14.102678, 13.344332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.152413, 13.460194, 12.906092>,  <9.303849, 14.155136, 13.012482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.152413, 13.460194, 12.906092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.810761, 13.589783, 13.068821>,  <8.605770, 13.667537, 13.166458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.810761, 13.589783, 13.068821>,  <9.152413, 13.460194, 12.906092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.810761, 13.589783, 13.068821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504828, -0.704443, -0.498907,
		0.124951, -0.631507, 0.765236,
		-0.854128, 0.323973, 0.406824,
		8.554523, 13.686975, 13.190868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.755778, 12.922535, 13.203105>,  <9.152413, 13.460194, 12.906092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.755778, 12.922535, 13.203105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.486537, 13.199997, 13.100519>,  <8.324992, 13.366474, 13.038968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.486537, 13.199997, 13.100519>,  <8.755778, 12.922535, 13.203105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.486537, 13.199997, 13.100519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485093, -0.675872, -0.554871,
		-0.558225, -0.249078, 0.791420,
		-0.673104, 0.693655, -0.256463,
		8.284606, 13.408093, 13.023581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.438359, 12.578918, 13.383609>,  <8.755778, 12.922535, 13.203105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.438359, 12.578918, 13.383609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.346812, 12.194468, 13.321821>,  <9.291884, 11.963799, 13.284748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.346812, 12.194468, 13.321821>,  <9.438359, 12.578918, 13.383609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.346812, 12.194468, 13.321821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014356, -0.161997, 0.986687,
		-0.973351, 0.223603, 0.050874,
		-0.228868, -0.961123, -0.154470,
		9.278152, 11.906132, 13.275480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.842547, 12.491419, 13.776502>,  <9.438359, 12.578918, 13.383609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.842547, 12.491419, 13.776502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077564, 12.178880, 13.692321>,  <9.218575, 11.991356, 13.641812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077564, 12.178880, 13.692321>,  <8.842547, 12.491419, 13.776502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.077564, 12.178880, 13.692321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259801, -0.064163, 0.963528,
		-0.766354, -0.620789, 0.165296,
		0.587542, -0.781347, -0.210453,
		9.253827, 11.944475, 13.629185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.696638, 11.997606, 14.294896>,  <8.842547, 12.491419, 13.776502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.696638, 11.997606, 14.294896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.081762, 11.947978, 14.198893>,  <9.312837, 11.918201, 14.141291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.081762, 11.947978, 14.198893>,  <8.696638, 11.997606, 14.294896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.081762, 11.947978, 14.198893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237252, -0.036763, 0.970752,
		-0.129266, -0.991592, -0.005960,
		0.962809, -0.124072, -0.240009,
		9.370605, 11.910757, 14.126890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.963951, 11.469045, 14.758465>,  <8.696638, 11.997606, 14.294896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.963951, 11.469045, 14.758465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286180, 11.672565, 14.637026>,  <9.479518, 11.794678, 14.564162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286180, 11.672565, 14.637026>,  <8.963951, 11.469045, 14.758465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.286180, 11.672565, 14.637026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339086, 0.024287, 0.940442,
		0.485872, -0.860541, -0.152962,
		0.805574, 0.508801, -0.303598,
		9.527853, 11.825206, 14.545946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.530244, 11.088840, 14.965254>,  <8.963951, 11.469045, 14.758465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.530244, 11.088840, 14.965254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.654672, 11.466010, 14.917714>,  <9.729328, 11.692312, 14.889191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.654672, 11.466010, 14.917714>,  <9.530244, 11.088840, 14.965254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.654672, 11.466010, 14.917714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317131, 0.014900, 0.948264,
		0.895915, -0.332668, -0.294396,
		0.311071, 0.942926, -0.118848,
		9.747993, 11.748888, 14.882060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.103208, 11.142191, 15.465440>,  <9.530244, 11.088840, 14.965254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.103208, 11.142191, 15.465440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026821, 11.522316, 15.367103>,  <9.980989, 11.750391, 15.308101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026821, 11.522316, 15.367103>,  <10.103208, 11.142191, 15.465440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026821, 11.522316, 15.367103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007765, 0.251906, 0.967721,
		0.981566, 0.182893, -0.055485,
		-0.190967, 0.950312, -0.245842,
		9.969531, 11.807409, 15.293350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.618747, 11.568119, 15.826977>,  <10.103208, 11.142191, 15.465440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.618747, 11.568119, 15.826977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.316586, 11.817491, 15.746274>,  <10.135290, 11.967113, 15.697852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.316586, 11.817491, 15.746274>,  <10.618747, 11.568119, 15.826977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.316586, 11.817491, 15.746274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102920, 0.191198, 0.976141,
		0.647129, 0.758143, -0.080268,
		-0.755402, 0.623428, -0.201758,
		10.089966, 12.004519, 15.685746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.892444, 12.188679, 15.922666>,  <10.618747, 11.568119, 15.826977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.892444, 12.188679, 15.922666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.498899, 12.234677, 15.977496>,  <10.262772, 12.262277, 16.010395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.498899, 12.234677, 15.977496>,  <10.892444, 12.188679, 15.922666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.498899, 12.234677, 15.977496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170157, 0.364463, 0.915540,
		0.055324, 0.924090, -0.378149,
		-0.983863, 0.114996, 0.137077,
		10.203740, 12.269176, 16.018620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.825944, 12.766870, 16.152031>,  <10.892444, 12.188679, 15.922666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.825944, 12.766870, 16.152031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.470937, 12.650571, 16.295015>,  <10.257933, 12.580791, 16.380806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.470937, 12.650571, 16.295015>,  <10.825944, 12.766870, 16.152031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.470937, 12.650571, 16.295015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219617, 0.415070, 0.882885,
		-0.405069, 0.862080, -0.304529,
		-0.887518, -0.290749, 0.357459,
		10.204681, 12.563346, 16.402252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.612293, 13.240878, 16.613676>,  <10.825944, 12.766870, 16.152031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.612293, 13.240878, 16.613676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.355656, 12.943338, 16.688557>,  <10.201673, 12.764814, 16.733484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.355656, 12.943338, 16.688557>,  <10.612293, 13.240878, 16.613676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.355656, 12.943338, 16.688557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066460, 0.189227, 0.979682,
		-0.764159, 0.641000, -0.071971,
		-0.641594, -0.743850, 0.187200,
		10.163177, 12.720183, 16.744717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.106002, 13.524624, 17.078051>,  <10.612293, 13.240878, 16.613676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.106002, 13.524624, 17.078051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.089966, 13.128718, 17.132835>,  <10.080344, 12.891175, 17.165707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.089966, 13.128718, 17.132835>,  <10.106002, 13.524624, 17.078051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.089966, 13.128718, 17.132835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067649, 0.134069, 0.988660,
		-0.996903, 0.048901, 0.061582,
		-0.040090, -0.989765, 0.136962,
		10.077939, 12.831789, 17.173923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.665436, 13.505619, 17.639339>,  <10.106002, 13.524624, 17.078051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.665436, 13.505619, 17.639339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.897294, 13.179714, 17.634108>,  <10.036409, 12.984171, 17.630968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.897294, 13.179714, 17.634108>,  <9.665436, 13.505619, 17.639339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.897294, 13.179714, 17.634108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178894, 0.111577, 0.977521,
		-0.794989, -0.568956, 0.210432,
		0.579646, -0.814763, -0.013080,
		10.071188, 12.935286, 17.630184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.279738, 13.019360, 18.140141>,  <9.665436, 13.505619, 17.639339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.279738, 13.019360, 18.140141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.651636, 12.880685, 18.090527>,  <9.874775, 12.797480, 18.060759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.651636, 12.880685, 18.090527>,  <9.279738, 13.019360, 18.140141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.651636, 12.880685, 18.090527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107865, -0.065631, 0.991997,
		-0.352053, -0.935682, -0.023625,
		0.929744, -0.346687, -0.124033,
		9.930559, 12.776679, 18.053316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.291210, 12.698033, 18.806530>,  <9.279738, 13.019360, 18.140141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.291210, 12.698033, 18.806530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.648676, 12.700766, 18.627056>,  <9.863155, 12.702405, 18.519373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.648676, 12.700766, 18.627056>,  <9.291210, 12.698033, 18.806530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.648676, 12.700766, 18.627056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448705, -0.002137, 0.893677,
		0.005148, -0.999974, -0.004976,
		0.893665, 0.006834, -0.448683,
		9.916776, 12.702815, 18.492451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.737024, 12.008660, 19.003380>,  <9.291210, 12.698033, 18.806530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.737024, 12.008660, 19.003380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.952384, 12.333918, 18.914907>,  <10.081600, 12.529072, 18.861824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.952384, 12.333918, 18.914907>,  <9.737024, 12.008660, 19.003380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.952384, 12.333918, 18.914907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413118, -0.025921, 0.910309,
		0.734479, -0.581484, -0.349881,
		0.538400, 0.813144, -0.221183,
		10.113904, 12.577861, 18.848553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.314673, 11.884958, 19.391859>,  <9.737024, 12.008660, 19.003380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.314673, 11.884958, 19.391859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.358352, 12.266000, 19.278280>,  <10.384559, 12.494624, 19.210133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.358352, 12.266000, 19.278280>,  <10.314673, 11.884958, 19.391859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.358352, 12.266000, 19.278280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553315, 0.179057, 0.813499,
		0.825784, -0.245941, -0.507538,
		0.109194, 0.952603, -0.283945,
		10.391110, 12.551781, 19.193096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.961092, 12.022654, 19.585707>,  <10.314673, 11.884958, 19.391859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.961092, 12.022654, 19.585707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.817509, 12.395799, 19.573605>,  <10.731359, 12.619686, 19.566343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.817509, 12.395799, 19.573605>,  <10.961092, 12.022654, 19.585707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.817509, 12.395799, 19.573605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402934, 0.184123, 0.896517,
		0.841899, 0.309621, -0.441974,
		-0.358958, 0.932863, -0.030256,
		10.709822, 12.675657, 19.564528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.530065, 12.413236, 19.859512>,  <10.961092, 12.022654, 19.585707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.530065, 12.413236, 19.859512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.213555, 12.657646, 19.850264>,  <11.023650, 12.804293, 19.844715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.213555, 12.657646, 19.850264>,  <11.530065, 12.413236, 19.859512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.213555, 12.657646, 19.850264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163525, 0.247896, 0.954886,
		0.589192, 0.751794, -0.296072,
		-0.791272, 0.611027, -0.023122,
		10.976173, 12.840954, 19.843327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.722615, 13.149194, 20.017630>,  <11.530065, 12.413236, 19.859512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.722615, 13.149194, 20.017630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334724, 13.106394, 20.105431>,  <11.101990, 13.080713, 20.158112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334724, 13.106394, 20.105431>,  <11.722615, 13.149194, 20.017630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.334724, 13.106394, 20.105431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198986, 0.174774, 0.964292,
		-0.141543, 0.978777, -0.148191,
		-0.969727, -0.107000, 0.219501,
		11.043806, 13.074294, 20.171282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.623011, 13.645873, 20.496218>,  <11.722615, 13.149194, 20.017630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.623011, 13.645873, 20.496218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.345250, 13.363950, 20.554256>,  <11.178594, 13.194796, 20.589081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.345250, 13.363950, 20.554256>,  <11.623011, 13.645873, 20.496218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.345250, 13.363950, 20.554256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068781, 0.135707, 0.988359,
		-0.716294, 0.696297, -0.045757,
		-0.694400, -0.704808, 0.145099,
		11.136930, 13.152507, 20.597786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.254852, 13.964677, 20.973543>,  <11.623011, 13.645873, 20.496218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.254852, 13.964677, 20.973543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.159605, 13.576792, 20.995296>,  <11.102457, 13.344061, 21.008348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.159605, 13.576792, 20.995296>,  <11.254852, 13.964677, 20.973543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.159605, 13.576792, 20.995296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221202, 0.108671, 0.969154,
		-0.945711, 0.218742, -0.240379,
		-0.238117, -0.969713, 0.054386,
		11.088170, 13.285878, 21.011612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.788987, 13.954562, 21.371037>,  <11.254852, 13.964677, 20.973543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.788987, 13.954562, 21.371037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.875922, 13.564731, 21.392801>,  <10.928083, 13.330832, 21.405859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.875922, 13.564731, 21.392801>,  <10.788987, 13.954562, 21.371037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.875922, 13.564731, 21.392801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106877, 0.079168, 0.991115,
		-0.970227, -0.209591, 0.121366,
		0.217337, -0.974579, 0.054410,
		10.941123, 13.272357, 21.409124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.313835, 13.651945, 21.938660>,  <10.788987, 13.954562, 21.371037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.313835, 13.651945, 21.938660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.624662, 13.403389, 21.898579>,  <10.811158, 13.254255, 21.874529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.624662, 13.403389, 21.898579>,  <10.313835, 13.651945, 21.938660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.624662, 13.403389, 21.898579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168162, 0.051546, 0.984411,
		-0.606538, -0.781804, 0.144549,
		0.777067, -0.621391, -0.100205,
		10.857782, 13.216972, 21.868517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.191345, 13.256457, 22.540964>,  <10.313835, 13.651945, 21.938660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.191345, 13.256457, 22.540964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574208, 13.228700, 22.428513>,  <10.803926, 13.212045, 22.361042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574208, 13.228700, 22.428513>,  <10.191345, 13.256457, 22.540964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574208, 13.228700, 22.428513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281744, -0.000938, 0.959489,
		-0.066847, -0.997589, 0.018653,
		0.957158, -0.069395, -0.281127,
		10.861356, 13.207881, 22.344173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.561839, 12.787665, 22.929977>,  <10.191345, 13.256457, 22.540964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.561839, 12.787665, 22.929977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.866687, 12.998952, 22.780226>,  <11.049596, 13.125724, 22.690374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.866687, 12.998952, 22.780226>,  <10.561839, 12.787665, 22.929977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.866687, 12.998952, 22.780226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452859, -0.021659, 0.891319,
		0.462701, -0.848833, -0.255715,
		0.762120, 0.528217, -0.374380,
		11.095323, 13.157417, 22.667912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.196867, 12.397901, 23.075335>,  <10.561839, 12.787665, 22.929977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.196867, 12.397901, 23.075335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325262, 12.768985, 22.999102>,  <11.402299, 12.991635, 22.953362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325262, 12.768985, 22.999102>,  <11.196867, 12.397901, 23.075335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.325262, 12.768985, 22.999102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590914, -0.038920, 0.805795,
		0.740127, -0.371267, -0.560690,
		0.320987, 0.927710, -0.190581,
		11.421558, 13.047297, 22.941927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.873968, 12.414256, 23.113785>,  <11.196867, 12.397901, 23.075335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.873968, 12.414256, 23.113785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.757294, 12.791087, 23.180006>,  <11.687289, 13.017186, 23.219738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.757294, 12.791087, 23.180006>,  <11.873968, 12.414256, 23.113785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.757294, 12.791087, 23.180006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538763, 0.018804, 0.842248,
		0.790350, 0.334866, -0.513041,
		-0.291687, 0.942078, 0.165552,
		11.669787, 13.073710, 23.229671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441547, 12.647326, 23.244871>,  <11.873968, 12.414256, 23.113785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441547, 12.647326, 23.244871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183101, 12.900033, 23.416172>,  <12.028032, 13.051658, 23.518953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183101, 12.900033, 23.416172>,  <12.441547, 12.647326, 23.244871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.183101, 12.900033, 23.416172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610359, 0.090807, 0.786903,
		0.458252, 0.769820, -0.444277,
		-0.646117, 0.631769, 0.428254,
		11.989265, 13.089563, 23.544647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
