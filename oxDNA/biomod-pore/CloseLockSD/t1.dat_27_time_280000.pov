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
	<4.342882, 14.935479, 15.086354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.990194, 15.025065, 14.920266>,  <3.778581, 15.078817, 14.820613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.990194, 15.025065, 14.920266>,  <4.342882, 14.935479, 15.086354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.990194, 15.025065, 14.920266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459827, -0.211184, 0.862531,
		0.105489, 0.951441, 0.289191,
		-0.881720, 0.223965, -0.415221,
		3.725678, 15.092255, 14.795700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.920813, 15.375312, 15.567612>,  <4.342882, 14.935479, 15.086354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.920813, 15.375312, 15.567612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.679944, 15.156061, 15.335423>,  <3.535423, 15.024510, 15.196111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.679944, 15.156061, 15.335423>,  <3.920813, 15.375312, 15.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.679944, 15.156061, 15.335423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473875, -0.339750, 0.812412,
		-0.642520, 0.764282, -0.055156,
		-0.602172, -0.548128, -0.580469,
		3.499293, 14.991623, 15.161283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.334237, 16.092791, 15.447841>,  <3.920813, 15.375312, 15.567612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.334237, 16.092791, 15.447841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.480365, 16.258234, 15.114262>,  <4.568042, 16.357500, 14.914114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.480365, 16.258234, 15.114262>,  <4.334237, 16.092791, 15.447841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.480365, 16.258234, 15.114262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412147, -0.875143, -0.253495,
		-0.834671, -0.251102, -0.490176,
		0.365321, 0.413610, -0.833947,
		4.589961, 16.382317, 14.864078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.327312, 15.625340, 14.821157>,  <4.334237, 16.092791, 15.447841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.327312, 15.625340, 14.821157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.605629, 15.892596, 14.715733>,  <4.772619, 16.052950, 14.652478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.605629, 15.892596, 14.715733>,  <4.327312, 15.625340, 14.821157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.605629, 15.892596, 14.715733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627817, -0.744010, -0.228681,
		-0.348882, -0.006353, -0.937145,
		0.695792, 0.668138, -0.263560,
		4.814367, 16.093039, 14.636664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.817533, 15.289187, 14.288744>,  <4.327312, 15.625340, 14.821157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.817533, 15.289187, 14.288744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.041335, 15.587198, 14.434010>,  <5.175616, 15.766005, 14.521169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.041335, 15.587198, 14.434010>,  <4.817533, 15.289187, 14.288744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.041335, 15.587198, 14.434010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726740, -0.651660, 0.217228,
		0.398500, 0.142386, -0.906048,
		0.559505, 0.745027, 0.363164,
		5.209186, 15.810706, 14.542958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425786, 15.073749, 14.073404>,  <4.817533, 15.289187, 14.288744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425786, 15.073749, 14.073404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.488082, 15.318150, 14.383867>,  <5.525459, 15.464790, 14.570145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.488082, 15.318150, 14.383867>,  <5.425786, 15.073749, 14.073404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.488082, 15.318150, 14.383867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655557, -0.651699, 0.381488,
		0.738912, 0.449403, -0.502042,
		0.155739, 0.611003, 0.776158,
		5.534804, 15.501451, 14.616714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.209662, 15.003004, 14.178083>,  <5.425786, 15.073749, 14.073404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.209662, 15.003004, 14.178083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.089350, 15.185521, 14.513064>,  <6.017162, 15.295032, 14.714053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.089350, 15.185521, 14.513064>,  <6.209662, 15.003004, 14.178083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.089350, 15.185521, 14.513064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816127, -0.331171, 0.473563,
		0.493424, 0.825907, -0.272783,
		-0.300781, 0.456293, 0.837453,
		5.999115, 15.322409, 14.764300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.779211, 15.453176, 14.439696>,  <6.209662, 15.003004, 14.178083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.779211, 15.453176, 14.439696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.531850, 15.349025, 14.736286>,  <6.383434, 15.286534, 14.914240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.531850, 15.349025, 14.736286>,  <6.779211, 15.453176, 14.439696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.531850, 15.349025, 14.736286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762662, -0.426415, 0.486330,
		0.189547, 0.866242, 0.462274,
		-0.618400, -0.260377, 0.741475,
		6.346330, 15.270912, 14.958729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.219602, 15.457503, 15.016573>,  <6.779211, 15.453176, 14.439696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.219602, 15.457503, 15.016573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.908791, 15.261054, 15.174066>,  <6.722304, 15.143185, 15.268561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.908791, 15.261054, 15.174066>,  <7.219602, 15.457503, 15.016573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.908791, 15.261054, 15.174066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611396, -0.440052, 0.657685,
		-0.149742, 0.751766, 0.642204,
		-0.777028, -0.491124, 0.393732,
		6.675683, 15.113717, 15.292186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.351270, 15.465471, 15.713668>,  <7.219602, 15.457503, 15.016573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.351270, 15.465471, 15.713668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.089952, 15.162832, 15.702605>,  <6.933161, 14.981249, 15.695968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.089952, 15.162832, 15.702605>,  <7.351270, 15.465471, 15.713668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.089952, 15.162832, 15.702605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558146, -0.505977, 0.657617,
		-0.511545, 0.414182, 0.752845,
		-0.653296, -0.756598, -0.027656,
		6.893963, 14.935853, 15.694308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.165601, 15.172124, 16.450766>,  <7.351270, 15.465471, 15.713668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.165601, 15.172124, 16.450766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.116132, 14.882520, 16.179321>,  <7.086450, 14.708757, 16.016455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.116132, 14.882520, 16.179321>,  <7.165601, 15.172124, 16.450766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.116132, 14.882520, 16.179321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456363, -0.648749, 0.608980,
		-0.881157, -0.234379, 0.410645,
		-0.123674, -0.724010, -0.678612,
		7.079030, 14.665317, 15.975738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.824163, 14.565221, 16.782839>,  <7.165601, 15.172124, 16.450766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.824163, 14.565221, 16.782839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.981889, 14.414425, 16.447603>,  <7.076525, 14.323948, 16.246462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.981889, 14.414425, 16.447603>,  <6.824163, 14.565221, 16.782839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.981889, 14.414425, 16.447603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404470, -0.747704, 0.526633,
		-0.825178, -0.546642, -0.142351,
		0.394316, -0.376989, -0.838090,
		7.100184, 14.301328, 16.196177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.816694, 13.772647, 16.721785>,  <6.824163, 14.565221, 16.782839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.816694, 13.772647, 16.721785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.103764, 13.848580, 16.453783>,  <7.276005, 13.894140, 16.292982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.103764, 13.848580, 16.453783>,  <6.816694, 13.772647, 16.721785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.103764, 13.848580, 16.453783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442919, -0.866871, 0.228819,
		-0.537370, -0.460975, -0.706212,
		0.717674, 0.189834, -0.670005,
		7.319066, 13.905531, 16.252781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.889951, 13.163910, 16.314514>,  <6.816694, 13.772647, 16.721785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.889951, 13.163910, 16.314514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.234721, 13.364048, 16.281673>,  <7.441583, 13.484131, 16.261969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.234721, 13.364048, 16.281673>,  <6.889951, 13.163910, 16.314514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.234721, 13.364048, 16.281673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506271, -0.840372, 0.193556,
		0.027849, -0.208397, -0.977648,
		0.861925, 0.500345, -0.082102,
		7.493299, 13.514152, 16.257042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.374637, 12.706462, 15.952057>,  <6.889951, 13.163910, 16.314514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.374637, 12.706462, 15.952057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.602909, 12.979399, 16.134806>,  <7.739872, 13.143161, 16.244455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.602909, 12.979399, 16.134806>,  <7.374637, 12.706462, 15.952057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.602909, 12.979399, 16.134806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669464, -0.708787, 0.222350,
		0.475544, 0.178969, -0.861294,
		0.570680, 0.682342, 0.456873,
		7.774113, 13.184101, 16.271868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.036095, 12.441572, 15.741414>,  <7.374637, 12.706462, 15.952057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.036095, 12.441572, 15.741414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.106824, 12.695809, 16.042015>,  <8.149261, 12.848351, 16.222376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.106824, 12.695809, 16.042015>,  <8.036095, 12.441572, 15.741414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.106824, 12.695809, 16.042015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826061, -0.510961, 0.237785,
		0.535123, 0.578741, -0.615388,
		0.176823, 0.635592, 0.751503,
		8.159871, 12.886487, 16.267466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.722896, 12.647862, 15.797572>,  <8.036095, 12.441572, 15.741414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.722896, 12.647862, 15.797572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.623438, 12.710769, 16.179869>,  <8.563764, 12.748512, 16.409246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.623438, 12.710769, 16.179869>,  <8.722896, 12.647862, 15.797572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.623438, 12.710769, 16.179869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740478, -0.605222, 0.292229,
		0.624394, 0.780368, 0.034034,
		-0.248645, 0.157265, 0.955743,
		8.548844, 12.757948, 16.466591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.343324, 12.671241, 16.174706>,  <8.722896, 12.647862, 15.797572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.343324, 12.671241, 16.174706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.070062, 12.605095, 16.459227>,  <8.906104, 12.565407, 16.629940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.070062, 12.605095, 16.459227>,  <9.343324, 12.671241, 16.174706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.070062, 12.605095, 16.459227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599702, -0.682851, 0.417219,
		0.416720, 0.711596, 0.565664,
		-0.683156, -0.165366, 0.711303,
		8.865115, 12.555485, 16.672617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.649950, 12.579182, 16.825270>,  <9.343324, 12.671241, 16.174706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.649950, 12.579182, 16.825270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291634, 12.401392, 16.824543>,  <9.076644, 12.294719, 16.824106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291634, 12.401392, 16.824543>,  <9.649950, 12.579182, 16.825270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291634, 12.401392, 16.824543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420671, -0.849125, 0.319410,
		-0.143512, 0.285360, 0.947615,
		-0.895790, -0.444473, -0.001817,
		9.022897, 12.268050, 16.823997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.697924, 12.311773, 17.486012>,  <9.649950, 12.579182, 16.825270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.697924, 12.311773, 17.486012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.429306, 12.114968, 17.264399>,  <9.268135, 11.996885, 17.131430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.429306, 12.114968, 17.264399>,  <9.697924, 12.311773, 17.486012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.429306, 12.114968, 17.264399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349497, -0.869645, 0.348667,
		-0.653361, 0.040512, 0.755962,
		-0.671544, -0.492012, -0.554034,
		9.227843, 11.967365, 17.098188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.496053, 11.804914, 17.875420>,  <9.697924, 12.311773, 17.486012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.496053, 11.804914, 17.875420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.375058, 11.666687, 17.520098>,  <9.302462, 11.583751, 17.306904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.375058, 11.666687, 17.520098>,  <9.496053, 11.804914, 17.875420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.375058, 11.666687, 17.520098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259221, -0.926662, 0.272218,
		-0.917227, -0.147924, 0.369882,
		-0.302487, -0.345567, -0.888304,
		9.284312, 11.563017, 17.253607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.324175, 11.104464, 18.052896>,  <9.496053, 11.804914, 17.875420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.324175, 11.104464, 18.052896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.388705, 11.125291, 17.658686>,  <9.427423, 11.137787, 17.422159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.388705, 11.125291, 17.658686>,  <9.324175, 11.104464, 18.052896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.388705, 11.125291, 17.658686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282795, -0.959170, -0.004383,
		-0.945517, -0.277995, -0.169462,
		0.161324, 0.052067, -0.985527,
		9.437102, 11.140911, 17.363028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.127329, 10.364412, 17.889109>,  <9.324175, 11.104464, 18.052896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.127329, 10.364412, 17.889109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.323355, 10.497055, 17.566650>,  <9.440970, 10.576641, 17.373175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.323355, 10.497055, 17.566650>,  <9.127329, 10.364412, 17.889109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.323355, 10.497055, 17.566650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528130, -0.848700, -0.028057,
		-0.693481, -0.412000, -0.591050,
		0.490065, 0.331608, -0.806147,
		9.470374, 10.596538, 17.324806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.066754, 9.835762, 17.405537>,  <9.127329, 10.364412, 17.889109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.066754, 9.835762, 17.405537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.362386, 10.077910, 17.287357>,  <9.539764, 10.223200, 17.216450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.362386, 10.077910, 17.287357>,  <9.066754, 9.835762, 17.405537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.362386, 10.077910, 17.287357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558912, -0.795914, -0.232676,
		-0.376005, 0.006838, -0.926592,
		0.739079, 0.605371, -0.295446,
		9.584109, 10.259521, 17.198723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261092, 9.544509, 16.806492>,  <9.066754, 9.835762, 17.405537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261092, 9.544509, 16.806492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.569870, 9.764157, 16.934597>,  <9.755136, 9.895947, 17.011459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.569870, 9.764157, 16.934597>,  <9.261092, 9.544509, 16.806492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.569870, 9.764157, 16.934597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627648, -0.738270, -0.247013,
		0.100800, 0.391692, -0.914558,
		0.771944, 0.549121, 0.320263,
		9.801454, 9.928894, 17.030676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.628655, 9.651961, 16.213167>,  <9.261092, 9.544509, 16.806492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.628655, 9.651961, 16.213167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.844453, 9.664553, 16.549728>,  <9.973931, 9.672108, 16.751665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.844453, 9.664553, 16.549728>,  <9.628655, 9.651961, 16.213167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.844453, 9.664553, 16.549728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684998, -0.597502, -0.416857,
		0.489617, 0.801249, -0.343911,
		0.539494, 0.031478, 0.841401,
		10.006301, 9.673996, 16.802149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.299049, 9.801582, 16.059708>,  <9.628655, 9.651961, 16.213167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.299049, 9.801582, 16.059708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.260368, 9.600838, 16.403519>,  <10.237160, 9.480392, 16.609804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.260368, 9.600838, 16.403519>,  <10.299049, 9.801582, 16.059708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.260368, 9.600838, 16.403519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596485, -0.720537, -0.353599,
		0.796777, 0.478500, 0.369030,
		-0.096702, -0.501861, 0.859526,
		10.231358, 9.450279, 16.661377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.719741, 9.370007, 15.658911>,  <10.299049, 9.801582, 16.059708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.719741, 9.370007, 15.658911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.789671, 8.991434, 15.550318>,  <10.831629, 8.764291, 15.485162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.789671, 8.991434, 15.550318>,  <10.719741, 9.370007, 15.658911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.789671, 8.991434, 15.550318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090012, 0.289936, -0.952803,
		0.980476, 0.142137, 0.135879,
		0.174825, -0.946432, -0.271481,
		10.842118, 8.707504, 15.468873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395669, 9.378257, 15.265710>,  <10.719741, 9.370007, 15.658911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395669, 9.378257, 15.265710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.148712, 9.071440, 15.195883>,  <11.000538, 8.887350, 15.153987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.148712, 9.071440, 15.195883>,  <11.395669, 9.378257, 15.265710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.148712, 9.071440, 15.195883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060746, 0.267734, -0.961576,
		0.784307, -0.583065, -0.211891,
		-0.617392, -0.767042, -0.174567,
		10.963494, 8.841327, 15.143513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.227077, 9.858897, 14.836535>,  <11.395669, 9.378257, 15.265710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.227077, 9.858897, 14.836535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.487150, 10.042459, 15.078748>,  <11.643194, 10.152596, 15.224075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.487150, 10.042459, 15.078748>,  <11.227077, 9.858897, 14.836535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.487150, 10.042459, 15.078748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284538, 0.591915, -0.754105,
		-0.704485, 0.662604, 0.254278,
		0.650184, 0.458904, 0.605531,
		11.682205, 10.180130, 15.260407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.081815, 10.624137, 14.826972>,  <11.227077, 9.858897, 14.836535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.081815, 10.624137, 14.826972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.460805, 10.542328, 14.925325>,  <11.688199, 10.493242, 14.984338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.460805, 10.542328, 14.925325>,  <11.081815, 10.624137, 14.826972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.460805, 10.542328, 14.925325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319827, 0.605778, -0.728522,
		0.000049, 0.768897, 0.639372,
		0.947476, -0.204524, 0.245884,
		11.745048, 10.480970, 14.999091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575064, 10.826612, 14.312756>,  <11.081815, 10.624137, 14.826972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575064, 10.826612, 14.312756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.701934, 10.980492, 13.966021>,  <11.778056, 11.072819, 13.757979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.701934, 10.980492, 13.966021>,  <11.575064, 10.826612, 14.312756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.701934, 10.980492, 13.966021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814260, 0.579054, -0.040956,
		0.486190, 0.718821, 0.496906,
		0.317176, 0.384698, -0.866837,
		11.797087, 11.095901, 13.705970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.650886, 11.641295, 14.258477>,  <11.575064, 10.826612, 14.312756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.650886, 11.641295, 14.258477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.556154, 11.464816, 13.912239>,  <11.499315, 11.358929, 13.704496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.556154, 11.464816, 13.912239>,  <11.650886, 11.641295, 14.258477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.556154, 11.464816, 13.912239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892692, 0.450429, 0.014657,
		0.383422, 0.776181, -0.500530,
		-0.236830, -0.441199, -0.865595,
		11.485106, 11.332457, 13.652560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409997, 12.186383, 13.803073>,  <11.650886, 11.641295, 14.258477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409997, 12.186383, 13.803073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.271033, 11.815087, 13.749892>,  <11.187654, 11.592310, 13.717984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.271033, 11.815087, 13.749892>,  <11.409997, 12.186383, 13.803073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.271033, 11.815087, 13.749892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937407, 0.347413, 0.023929,
		0.023977, 0.132942, -0.990834,
		-0.347410, -0.928241, -0.132951,
		11.166810, 11.536615, 13.710007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.922374, 12.319606, 13.236518>,  <11.409997, 12.186383, 13.803073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.922374, 12.319606, 13.236518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817910, 12.210591, 12.866109>,  <11.755232, 12.145183, 12.643864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817910, 12.210591, 12.866109>,  <11.922374, 12.319606, 13.236518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817910, 12.210591, 12.866109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689573, 0.723977, -0.018597,
		0.675489, 0.633704, -0.377007,
		-0.261160, -0.272536, -0.926023,
		11.739562, 12.128831, 12.588302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.095514, 12.870759, 12.713649>,  <11.922374, 12.319606, 13.236518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.095514, 12.870759, 12.713649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.785391, 12.644639, 12.600985>,  <11.599317, 12.508967, 12.533386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.785391, 12.644639, 12.600985>,  <12.095514, 12.870759, 12.713649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.785391, 12.644639, 12.600985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595209, 0.803134, 0.026481,
		0.211243, 0.188178, -0.959148,
		-0.775308, -0.565300, -0.281662,
		11.552798, 12.475049, 12.516486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.747356, 13.310133, 12.139329>,  <12.095514, 12.870759, 12.713649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.747356, 13.310133, 12.139329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.474191, 13.044237, 12.260489>,  <11.310291, 12.884700, 12.333185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.474191, 13.044237, 12.260489>,  <11.747356, 13.310133, 12.139329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.474191, 13.044237, 12.260489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712900, 0.696936, -0.077809,
		-0.159379, -0.269075, -0.949841,
		-0.682914, -0.664740, 0.302900,
		11.269317, 12.844815, 12.351359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.168701, 13.349823, 11.730777>,  <11.747356, 13.310133, 12.139329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.168701, 13.349823, 11.730777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026107, 13.195940, 12.071345>,  <10.940550, 13.103610, 12.275686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026107, 13.195940, 12.071345>,  <11.168701, 13.349823, 11.730777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026107, 13.195940, 12.071345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791669, 0.608322, -0.056604,
		-0.496162, -0.694223, -0.521419,
		-0.356486, -0.384707, 0.851421,
		10.919161, 13.080528, 12.326772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.401392, 13.277615, 11.512783>,  <11.168701, 13.349823, 11.730777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.401392, 13.277615, 11.512783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441683, 13.286969, 11.910639>,  <10.465858, 13.292582, 12.149352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441683, 13.286969, 11.910639>,  <10.401392, 13.277615, 11.512783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.441683, 13.286969, 11.910639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680523, 0.730898, 0.051731,
		-0.725770, -0.682086, 0.089536,
		0.100727, 0.023387, 0.994639,
		10.471901, 13.293985, 12.209030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691058, 13.435189, 11.830954>,  <10.401392, 13.277615, 11.512783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691058, 13.435189, 11.830954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.928874, 13.518491, 12.141605>,  <10.071564, 13.568472, 12.327996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.928874, 13.518491, 12.141605>,  <9.691058, 13.435189, 11.830954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.928874, 13.518491, 12.141605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668056, 0.665451, 0.332981,
		-0.447465, -0.716802, 0.534761,
		0.594539, 0.208253, 0.776630,
		10.107236, 13.580967, 12.374595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.234520, 13.383299, 12.348136>,  <9.691058, 13.435189, 11.830954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.234520, 13.383299, 12.348136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.541767, 13.613183, 12.461062>,  <9.726115, 13.751114, 12.528818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.541767, 13.613183, 12.461062>,  <9.234520, 13.383299, 12.348136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.541767, 13.613183, 12.461062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627234, 0.586702, 0.512209,
		0.128736, -0.570516, 0.811134,
		0.768118, 0.574711, 0.282317,
		9.772202, 13.785596, 12.545757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.216039, 13.395057, 13.099524>,  <9.234520, 13.383299, 12.348136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.216039, 13.395057, 13.099524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.460125, 13.697075, 13.003570>,  <9.606577, 13.878285, 12.945997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.460125, 13.697075, 13.003570>,  <9.216039, 13.395057, 13.099524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.460125, 13.697075, 13.003570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436866, 0.573295, 0.693167,
		0.660898, -0.318182, 0.679686,
		0.610214, 0.755045, -0.239887,
		9.643189, 13.923588, 12.931603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.456606, 13.773373, 13.693439>,  <9.216039, 13.395057, 13.099524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.456606, 13.773373, 13.693439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.520242, 14.056019, 13.417645>,  <9.558423, 14.225606, 13.252170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.520242, 14.056019, 13.417645>,  <9.456606, 13.773373, 13.693439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.520242, 14.056019, 13.417645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418856, 0.680717, 0.600986,
		0.894008, 0.193184, 0.404265,
		0.159089, 0.706615, -0.689483,
		9.567968, 14.268003, 13.210801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.571345, 14.374338, 14.141175>,  <9.456606, 13.773373, 13.693439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.571345, 14.374338, 14.141175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.497644, 14.552078, 13.790495>,  <9.453424, 14.658722, 13.580087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.497644, 14.552078, 13.790495>,  <9.571345, 14.374338, 14.141175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.497644, 14.552078, 13.790495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465100, 0.746369, 0.476041,
		0.865871, 0.495465, 0.069146,
		-0.184253, 0.444350, -0.876700,
		9.442369, 14.685383, 13.527485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.713262, 15.112131, 14.268200>,  <9.571345, 14.374338, 14.141175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.713262, 15.112131, 14.268200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481592, 15.093834, 13.942632>,  <9.342590, 15.082855, 13.747291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481592, 15.093834, 13.942632>,  <9.713262, 15.112131, 14.268200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.481592, 15.093834, 13.942632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461421, 0.841488, 0.281047,
		0.672048, 0.538335, -0.508475,
		-0.579173, -0.045744, -0.813920,
		9.307840, 15.080111, 13.698456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.807470, 15.816439, 13.963284>,  <9.713262, 15.112131, 14.268200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.807470, 15.816439, 13.963284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469555, 15.653953, 13.823961>,  <9.266806, 15.556461, 13.740367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469555, 15.653953, 13.823961>,  <9.807470, 15.816439, 13.963284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.469555, 15.653953, 13.823961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489267, 0.849963, 0.195400,
		0.216675, 0.335488, -0.916788,
		-0.844790, -0.406216, -0.348309,
		9.216118, 15.532088, 13.719468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.372884, 16.328388, 13.608637>,  <9.807470, 15.816439, 13.963284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.372884, 16.328388, 13.608637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.108516, 16.038439, 13.686343>,  <8.949895, 15.864469, 13.732967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.108516, 16.038439, 13.686343>,  <9.372884, 16.328388, 13.608637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.108516, 16.038439, 13.686343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659107, 0.684462, 0.311591,
		-0.358833, 0.077895, -0.930146,
		-0.660921, -0.724875, 0.194267,
		8.910239, 15.820976, 13.744623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.692260, 16.577520, 13.275234>,  <9.372884, 16.328388, 13.608637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.692260, 16.577520, 13.275234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.673699, 16.304165, 13.566666>,  <8.662563, 16.140152, 13.741525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.673699, 16.304165, 13.566666>,  <8.692260, 16.577520, 13.275234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.673699, 16.304165, 13.566666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653296, 0.572520, 0.495405,
		-0.755680, -0.452989, -0.473021,
		-0.046401, -0.683390, 0.728577,
		8.659780, 16.099148, 13.785239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.009570, 16.585695, 13.327586>,  <8.692260, 16.577520, 13.275234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.009570, 16.585695, 13.327586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.136326, 16.407448, 13.662491>,  <8.212379, 16.300499, 13.863434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.136326, 16.407448, 13.662491>,  <8.009570, 16.585695, 13.327586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.136326, 16.407448, 13.662491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670537, 0.519064, 0.530050,
		-0.670792, -0.729381, -0.134318,
		0.316889, -0.445618, 0.837261,
		8.231393, 16.273762, 13.913670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.401466, 16.598186, 13.703067>,  <8.009570, 16.585695, 13.327586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.401466, 16.598186, 13.703067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.697190, 16.525522, 13.962426>,  <7.874624, 16.481924, 14.118042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.697190, 16.525522, 13.962426>,  <7.401466, 16.598186, 13.703067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.697190, 16.525522, 13.962426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425809, 0.619826, 0.659168,
		-0.521640, -0.763423, 0.380890,
		0.739309, -0.181662, 0.648399,
		7.918983, 16.471024, 14.156946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.081071, 16.519278, 14.256556>,  <7.401466, 16.598186, 13.703067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.081071, 16.519278, 14.256556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.450568, 16.610353, 14.379751>,  <7.672266, 16.664999, 14.453669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.450568, 16.610353, 14.379751>,  <7.081071, 16.519278, 14.256556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.450568, 16.610353, 14.379751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382598, 0.510964, 0.769763,
		0.017896, -0.828898, 0.559113,
		0.923742, 0.227691, 0.307990,
		7.727691, 16.678661, 14.472148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.122067, 16.323278, 14.972544>,  <7.081071, 16.519278, 14.256556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.122067, 16.323278, 14.972544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.406157, 16.598034, 14.910878>,  <7.576610, 16.762888, 14.873879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.406157, 16.598034, 14.910878>,  <7.122067, 16.323278, 14.972544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.406157, 16.598034, 14.910878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382793, 0.560600, 0.734301,
		0.590813, -0.462498, 0.661086,
		0.710218, 0.686894, -0.154169,
		7.619224, 16.804100, 14.864630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.472929, 16.304335, 15.541287>,  <7.122067, 16.323278, 14.972544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.472929, 16.304335, 15.541287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.545380, 16.660841, 15.374992>,  <7.588850, 16.874744, 15.275215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.545380, 16.660841, 15.374992>,  <7.472929, 16.304335, 15.541287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.545380, 16.660841, 15.374992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508687, 0.446692, 0.736006,
		0.841683, 0.078170, 0.534283,
		0.181127, 0.891266, -0.415737,
		7.599718, 16.928221, 15.250272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.504974, 16.782791, 16.175400>,  <7.472929, 16.304335, 15.541287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.504974, 16.782791, 16.175400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.453147, 17.023834, 15.860421>,  <7.422051, 17.168461, 15.671433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.453147, 17.023834, 15.860421>,  <7.504974, 16.782791, 16.175400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.453147, 17.023834, 15.860421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410591, 0.690254, 0.595788,
		0.902567, 0.400515, 0.157991,
		-0.129568, 0.602608, -0.787449,
		7.414277, 17.204617, 15.624187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.705311, 17.429293, 16.439011>,  <7.504974, 16.782791, 16.175400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.705311, 17.429293, 16.439011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507376, 17.501040, 16.098902>,  <7.388616, 17.544088, 15.894836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507376, 17.501040, 16.098902>,  <7.705311, 17.429293, 16.439011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.507376, 17.501040, 16.098902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516719, 0.725958, 0.453858,
		0.698669, 0.663938, -0.266549,
		-0.494837, 0.179366, -0.850273,
		7.358925, 17.554850, 15.843820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.770582, 18.153898, 16.386084>,  <7.705311, 17.429293, 16.439011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.770582, 18.153898, 16.386084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.467536, 18.045494, 16.148571>,  <7.285709, 17.980452, 16.006063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.467536, 18.045494, 16.148571>,  <7.770582, 18.153898, 16.386084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.467536, 18.045494, 16.148571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463922, 0.863510, 0.197807,
		0.459128, 0.425329, -0.779934,
		-0.757613, -0.271010, -0.593781,
		7.240252, 17.964191, 15.970437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.273591, 18.808386, 16.545191>,  <7.770582, 18.153898, 16.386084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.273591, 18.808386, 16.545191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.035884, 19.122328, 16.474934>,  <7.893260, 19.310692, 16.432779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.035884, 19.122328, 16.474934>,  <8.273591, 18.808386, 16.545191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.035884, 19.122328, 16.474934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787824, 0.524132, -0.323449,
		-0.161799, -0.330592, -0.929801,
		-0.594268, 0.784853, -0.175644,
		7.857604, 19.357784, 16.422241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.402752, 19.422586, 17.045376>,  <8.273591, 18.808386, 16.545191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.402752, 19.422586, 17.045376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.667596, 19.356552, 16.752977>,  <8.826503, 19.316933, 16.577538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.667596, 19.356552, 16.752977>,  <8.402752, 19.422586, 17.045376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.667596, 19.356552, 16.752977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721819, 0.402709, 0.562852,
		0.201460, -0.900318, 0.385800,
		0.662110, -0.165085, -0.730997,
		8.866229, 19.307026, 16.533678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.013847, 19.158339, 17.375406>,  <8.402752, 19.422586, 17.045376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.013847, 19.158339, 17.375406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.133075, 19.347845, 17.043936>,  <9.204612, 19.461550, 16.845055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.133075, 19.347845, 17.043936>,  <9.013847, 19.158339, 17.375406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.133075, 19.347845, 17.043936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618346, 0.565527, 0.545736,
		0.727189, -0.675074, -0.124385,
		0.298069, 0.473766, -0.828674,
		9.222496, 19.489975, 16.795334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.705992, 18.930698, 17.271521>,  <9.013847, 19.158339, 17.375406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.705992, 18.930698, 17.271521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.622783, 19.297417, 17.135159>,  <9.572857, 19.517447, 17.053341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.622783, 19.297417, 17.135159>,  <9.705992, 18.930698, 17.271521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.622783, 19.297417, 17.135159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670836, 0.387368, 0.632396,
		0.711832, -0.097138, -0.695600,
		-0.208023, 0.916793, -0.340905,
		9.560376, 19.572454, 17.032887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.310058, 19.271015, 17.185404>,  <9.705992, 18.930698, 17.271521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.310058, 19.271015, 17.185404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.057032, 19.572943, 17.254814>,  <9.905216, 19.754099, 17.296461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.057032, 19.572943, 17.254814>,  <10.310058, 19.271015, 17.185404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.057032, 19.572943, 17.254814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647749, 0.392764, 0.652807,
		0.424595, 0.525345, -0.737381,
		-0.632566, 0.754817, 0.173527,
		9.867262, 19.799387, 17.306871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.470256, 20.148466, 16.969774>,  <10.310058, 19.271015, 17.185404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.470256, 20.148466, 16.969774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.272041, 20.038618, 17.299387>,  <10.153112, 19.972710, 17.497154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.272041, 20.038618, 17.299387>,  <10.470256, 20.148466, 16.969774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.272041, 20.038618, 17.299387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806252, 0.207486, 0.553992,
		-0.323113, 0.938900, 0.118596,
		-0.495536, -0.274620, 0.824031,
		10.123381, 19.956232, 17.546597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.505059, 20.831589, 17.287909>,  <10.470256, 20.148466, 16.969774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.505059, 20.831589, 17.287909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.423297, 20.548510, 17.558428>,  <10.374240, 20.378662, 17.720739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.423297, 20.548510, 17.558428>,  <10.505059, 20.831589, 17.287909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.423297, 20.548510, 17.558428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841772, 0.225561, 0.490452,
		-0.499639, 0.669541, 0.549614,
		-0.204406, -0.707698, 0.676300,
		10.361976, 20.336201, 17.761318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.392894, 21.098045, 17.971655>,  <10.505059, 20.831589, 17.287909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.392894, 21.098045, 17.971655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564587, 20.737087, 17.956470>,  <10.667603, 20.520512, 17.947359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564587, 20.737087, 17.956470>,  <10.392894, 21.098045, 17.971655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564587, 20.737087, 17.956470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789761, 0.354600, 0.500535,
		-0.438220, -0.244826, 0.864883,
		0.429231, -0.902396, -0.037961,
		10.693357, 20.466368, 17.945082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.556506, 20.963554, 18.652288>,  <10.392894, 21.098045, 17.971655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.556506, 20.963554, 18.652288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.788771, 20.732128, 18.423172>,  <10.928129, 20.593271, 18.285702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.788771, 20.732128, 18.423172>,  <10.556506, 20.963554, 18.652288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.788771, 20.732128, 18.423172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794517, 0.249141, 0.553779,
		-0.177692, -0.776652, 0.604348,
		0.580662, -0.578567, -0.572793,
		10.962969, 20.558558, 18.251333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.868137, 20.435936, 19.153610>,  <10.556506, 20.963554, 18.652288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.868137, 20.435936, 19.153610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.090330, 20.406998, 18.822260>,  <11.223646, 20.389635, 18.623449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.090330, 20.406998, 18.822260>,  <10.868137, 20.435936, 19.153610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.090330, 20.406998, 18.822260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803898, 0.301398, 0.512745,
		0.212576, -0.950750, 0.225580,
		0.555482, -0.072346, -0.828375,
		11.256975, 20.385294, 18.573748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.557618, 20.273422, 19.342550>,  <10.868137, 20.435936, 19.153610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.557618, 20.273422, 19.342550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.657403, 20.367189, 18.966717>,  <11.717274, 20.423450, 18.741217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.657403, 20.367189, 18.966717>,  <11.557618, 20.273422, 19.342550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.657403, 20.367189, 18.966717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814499, 0.474016, 0.334514,
		0.523794, -0.848738, -0.072685,
		0.249461, 0.234418, -0.939584,
		11.732242, 20.437515, 18.684841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340849, 20.052248, 19.199667>,  <11.557618, 20.273422, 19.342550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.340849, 20.052248, 19.199667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248732, 20.333673, 18.930754>,  <12.193461, 20.502529, 18.769405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248732, 20.333673, 18.930754>,  <12.340849, 20.052248, 19.199667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248732, 20.333673, 18.930754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838168, 0.494409, 0.230293,
		0.494409, -0.510452, -0.703561,
		-0.230293, 0.703561, -0.672284,
		12.179644, 20.544743, 18.729069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941392, 20.161547, 18.836782>,  <12.340849, 20.052248, 19.199667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941392, 20.161547, 18.836782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.716841, 20.488239, 18.783409>,  <12.582110, 20.684256, 18.751385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.716841, 20.488239, 18.783409>,  <12.941392, 20.161547, 18.836782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.716841, 20.488239, 18.783409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716068, 0.560220, 0.416414,
		0.414851, 0.138217, -0.899330,
		-0.561378, 0.816731, -0.133435,
		12.548428, 20.733259, 18.743378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445902, 20.615551, 18.595322>,  <12.941392, 20.161547, 18.836782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445902, 20.615551, 18.595322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.136329, 20.818449, 18.746967>,  <12.950584, 20.940187, 18.837955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.136329, 20.818449, 18.746967>,  <13.445902, 20.615551, 18.595322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.136329, 20.818449, 18.746967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633196, 0.628752, 0.451369,
		-0.009414, 0.589383, -0.807799,
		-0.773934, 0.507246, 0.379114,
		12.904148, 20.970623, 18.860703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.569065, 21.292988, 18.400518>,  <13.445902, 20.615551, 18.595322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.569065, 21.292988, 18.400518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.312284, 21.273813, 18.706615>,  <13.158215, 21.262308, 18.890274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.312284, 21.273813, 18.706615>,  <13.569065, 21.292988, 18.400518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.312284, 21.273813, 18.706615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611126, 0.570754, 0.548420,
		-0.463056, 0.819721, -0.337101,
		-0.641953, -0.047938, 0.765244,
		13.119698, 21.259432, 18.936188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905209, 21.837820, 18.640844>,  <13.569065, 21.292988, 18.400518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905209, 21.837820, 18.640844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.632076, 21.723875, 18.909945>,  <13.468197, 21.655508, 19.071405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.632076, 21.723875, 18.909945>,  <13.905209, 21.837820, 18.640844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632076, 21.723875, 18.909945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496531, 0.494532, 0.713369,
		-0.535910, 0.821152, -0.196237,
		-0.682830, -0.284864, 0.672752,
		13.427227, 21.638416, 19.111771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.870918, 22.335697, 19.052521>,  <13.905209, 21.837820, 18.640844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.870918, 22.335697, 19.052521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.723220, 22.053133, 19.294064>,  <13.634601, 21.883595, 19.438990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.723220, 22.053133, 19.294064>,  <13.870918, 22.335697, 19.052521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.723220, 22.053133, 19.294064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417133, 0.454661, 0.786946,
		-0.830457, 0.542464, 0.126786,
		-0.369245, -0.706411, 0.603855,
		13.612447, 21.841209, 19.475220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708046, 22.667156, 19.714098>,  <13.870918, 22.335697, 19.052521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708046, 22.667156, 19.714098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.762328, 22.278448, 19.791292>,  <13.794897, 22.045223, 19.837608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.762328, 22.278448, 19.791292>,  <13.708046, 22.667156, 19.714098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762328, 22.278448, 19.791292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504887, 0.235426, 0.830460,
		-0.852451, -0.015262, 0.522584,
		0.135705, -0.971772, 0.192984,
		13.803040, 21.986916, 19.849188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.575833, 22.629337, 20.438208>,  <13.708046, 22.667156, 19.714098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.575833, 22.629337, 20.438208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773695, 22.292509, 20.352201>,  <13.892412, 22.090412, 20.300598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773695, 22.292509, 20.352201>,  <13.575833, 22.629337, 20.438208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773695, 22.292509, 20.352201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480281, 0.058669, 0.875150,
		-0.724325, -0.536164, 0.433452,
		0.494654, -0.842072, -0.215014,
		13.922091, 22.039886, 20.287697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.504628, 22.238682, 21.137142>,  <13.575833, 22.629337, 20.438208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.504628, 22.238682, 21.137142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800854, 22.060062, 20.936281>,  <13.978589, 21.952890, 20.815763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800854, 22.060062, 20.936281>,  <13.504628, 22.238682, 21.137142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800854, 22.060062, 20.936281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527438, -0.076768, 0.846118,
		-0.416382, -0.891460, 0.178675,
		0.740564, -0.446548, -0.502155,
		14.023023, 21.926098, 20.785635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.653256, 21.618017, 21.525652>,  <13.504628, 22.238682, 21.137142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.653256, 21.618017, 21.525652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972947, 21.707108, 21.302357>,  <14.164762, 21.760561, 21.168379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972947, 21.707108, 21.302357>,  <13.653256, 21.618017, 21.525652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.972947, 21.707108, 21.302357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593518, -0.146082, 0.791452,
		0.094729, -0.963874, -0.248945,
		0.799226, 0.222726, -0.558239,
		14.212715, 21.773926, 21.134886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.175780, 21.196651, 21.837273>,  <13.653256, 21.618017, 21.525652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.175780, 21.196651, 21.837273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.358881, 21.479004, 21.621054>,  <14.468741, 21.648417, 21.491322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.358881, 21.479004, 21.621054>,  <14.175780, 21.196651, 21.837273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.358881, 21.479004, 21.621054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652594, 0.146146, 0.743480,
		0.603809, -0.693088, -0.393756,
		0.457751, 0.705883, -0.540550,
		14.496206, 21.690769, 21.458889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872437, 21.015167, 21.824089>,  <14.175780, 21.196651, 21.837273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872437, 21.015167, 21.824089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.859763, 21.408266, 21.751202>,  <14.852159, 21.644125, 21.707470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.859763, 21.408266, 21.751202>,  <14.872437, 21.015167, 21.824089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.859763, 21.408266, 21.751202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604415, 0.164037, 0.779599,
		0.796039, -0.085434, -0.599185,
		-0.031684, 0.982748, -0.182217,
		14.850258, 21.703091, 21.696537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511428, 21.268253, 22.092470>,  <14.872437, 21.015167, 21.824089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511428, 21.268253, 22.092470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.282496, 21.594505, 22.058558>,  <15.145138, 21.790257, 22.038210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.282496, 21.594505, 22.058558>,  <15.511428, 21.268253, 22.092470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.282496, 21.594505, 22.058558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323564, 0.319621, 0.890589,
		0.753490, 0.482276, -0.446836,
		-0.572328, 0.815630, -0.084784,
		15.110798, 21.839195, 22.033123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936401, 21.806873, 22.217121>,  <15.511428, 21.268253, 22.092470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936401, 21.806873, 22.217121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574935, 21.964933, 22.283144>,  <15.358055, 22.059769, 22.322758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574935, 21.964933, 22.283144>,  <15.936401, 21.806873, 22.217121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574935, 21.964933, 22.283144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372195, 0.534096, 0.759087,
		0.211796, 0.747395, -0.629717,
		-0.903667, 0.395149, 0.165057,
		15.303835, 22.083479, 22.332661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939626, 22.532980, 22.351341>,  <15.936401, 21.806873, 22.217121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939626, 22.532980, 22.351341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598178, 22.414671, 22.522852>,  <15.393310, 22.343685, 22.625759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598178, 22.414671, 22.522852>,  <15.939626, 22.532980, 22.351341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598178, 22.414671, 22.522852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280477, 0.432651, 0.856823,
		-0.438937, 0.851664, -0.286362,
		-0.853620, -0.295773, 0.428779,
		15.342092, 22.325939, 22.651485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742194, 23.018385, 22.760414>,  <15.939626, 22.532980, 22.351341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742194, 23.018385, 22.760414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.509700, 22.746702, 22.939676>,  <15.370203, 22.583693, 23.047234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.509700, 22.746702, 22.939676>,  <15.742194, 23.018385, 22.760414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.509700, 22.746702, 22.939676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008586, 0.545591, 0.838007,
		-0.813690, 0.490928, -0.311286,
		-0.581236, -0.679206, 0.448158,
		15.335329, 22.542940, 23.074123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.289876, 23.373825, 23.133003>,  <15.742194, 23.018385, 22.760414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.289876, 23.373825, 23.133003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330089, 23.010839, 23.296173>,  <15.354216, 22.793049, 23.394075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330089, 23.010839, 23.296173>,  <15.289876, 23.373825, 23.133003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330089, 23.010839, 23.296173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217755, 0.420129, 0.880951,
		-0.970812, 0.000265, 0.239841,
		0.100531, -0.907464, 0.407924,
		15.360248, 22.738600, 23.418550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795663, 23.227848, 23.692219>,  <15.289876, 23.373825, 23.133003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795663, 23.227848, 23.692219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109998, 22.990524, 23.762012>,  <15.298599, 22.848131, 23.803888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109998, 22.990524, 23.762012>,  <14.795663, 23.227848, 23.692219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.109998, 22.990524, 23.762012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100345, 0.400728, 0.910685,
		-0.610238, -0.698142, 0.374442,
		0.785838, -0.593308, 0.174484,
		15.345749, 22.812532, 23.814358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.724326, 23.193073, 24.388357>,  <14.795663, 23.227848, 23.692219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.724326, 23.193073, 24.388357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.067599, 22.990330, 24.355825>,  <15.273563, 22.868683, 24.336306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.067599, 22.990330, 24.355825>,  <14.724326, 23.193073, 24.388357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.067599, 22.990330, 24.355825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252739, 0.279282, 0.926350,
		-0.446816, -0.815533, 0.367778,
		0.858183, -0.506860, -0.081329,
		15.325054, 22.838272, 24.331427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.671558, 22.992287, 25.098179>,  <14.724326, 23.193073, 24.388357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.671558, 22.992287, 25.098179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036044, 22.928930, 24.946074>,  <15.254736, 22.890917, 24.854811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036044, 22.928930, 24.946074>,  <14.671558, 22.992287, 25.098179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.036044, 22.928930, 24.946074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411802, 0.327266, 0.850480,
		-0.010260, -0.931563, 0.363435,
		0.911216, -0.158390, -0.380262,
		15.309409, 22.881414, 24.831995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068787, 22.486179, 25.526005>,  <14.671558, 22.992287, 25.098179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.068787, 22.486179, 25.526005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323202, 22.722755, 25.327751>,  <15.475851, 22.864700, 25.208799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323202, 22.722755, 25.327751>,  <15.068787, 22.486179, 25.526005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323202, 22.722755, 25.327751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456699, 0.229209, 0.859587,
		0.621998, -0.773086, -0.124323,
		0.636038, 0.591439, -0.495635,
		15.514013, 22.900187, 25.179060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692502, 22.281687, 25.781208>,  <15.068787, 22.486179, 25.526005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692502, 22.281687, 25.781208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765172, 22.651840, 25.648148>,  <15.808774, 22.873932, 25.568312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765172, 22.651840, 25.648148>,  <15.692502, 22.281687, 25.781208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765172, 22.651840, 25.648148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386335, 0.243914, 0.889523,
		0.904290, -0.290118, -0.313195,
		0.181674, 0.925385, -0.332652,
		15.819674, 22.929455, 25.548351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328213, 22.451153, 26.018265>,  <15.692502, 22.281687, 25.781208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328213, 22.451153, 26.018265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199640, 22.820633, 25.934874>,  <16.122496, 23.042320, 25.884840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199640, 22.820633, 25.934874>,  <16.328213, 22.451153, 26.018265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199640, 22.820633, 25.934874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410347, 0.334288, 0.848450,
		0.853403, 0.187172, -0.486488,
		-0.321433, 0.923698, -0.208477,
		16.103210, 23.097742, 25.872330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839010, 22.968454, 26.181171>,  <16.328213, 22.451153, 26.018265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839010, 22.968454, 26.181171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.484577, 23.153370, 26.194715>,  <16.271917, 23.264318, 26.202843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.484577, 23.153370, 26.194715>,  <16.839010, 22.968454, 26.181171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.484577, 23.153370, 26.194715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259774, 0.434759, 0.862266,
		0.383894, 0.772835, -0.505323,
		-0.886083, 0.462289, 0.033861,
		16.218752, 23.292057, 26.204874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.984486, 23.775923, 26.311903>,  <16.839010, 22.968454, 26.181171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.984486, 23.775923, 26.311903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.639900, 23.619291, 26.441238>,  <16.433149, 23.525312, 26.518839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.639900, 23.619291, 26.441238>,  <16.984486, 23.775923, 26.311903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.639900, 23.619291, 26.441238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005072, 0.643320, 0.765581,
		-0.507796, 0.657879, -0.556182,
		-0.861463, -0.391579, 0.323338,
		16.381462, 23.501818, 26.538240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492764, 24.347902, 26.412807>,  <16.984486, 23.775923, 26.311903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492764, 24.347902, 26.412807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388557, 24.035954, 26.640467>,  <16.326035, 23.848783, 26.777063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388557, 24.035954, 26.640467>,  <16.492764, 24.347902, 26.412807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388557, 24.035954, 26.640467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036927, 0.581026, 0.813047,
		-0.964763, 0.232829, -0.122568,
		-0.260516, -0.779871, 0.569150,
		16.310402, 23.801992, 26.811213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915895, 24.519718, 26.806334>,  <16.492764, 24.347902, 26.412807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915895, 24.519718, 26.806334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.108179, 24.231918, 27.006830>,  <16.223549, 24.059238, 27.127129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.108179, 24.231918, 27.006830>,  <15.915895, 24.519718, 26.806334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.108179, 24.231918, 27.006830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091394, 0.609614, 0.787413,
		-0.872105, -0.332706, 0.358804,
		0.480708, -0.719499, 0.501240,
		16.252392, 24.016069, 27.157202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887187, 24.724674, 27.473314>,  <15.915895, 24.519718, 26.806334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887187, 24.724674, 27.473314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145269, 24.428093, 27.547024>,  <16.300119, 24.250145, 27.591249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145269, 24.428093, 27.547024>,  <15.887187, 24.724674, 27.473314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145269, 24.428093, 27.547024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263384, 0.442267, 0.857338,
		-0.717173, -0.504626, 0.480640,
		0.645207, -0.741453, 0.184272,
		16.338831, 24.205658, 27.602304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915648, 24.737902, 28.161989>,  <15.887187, 24.724674, 27.473314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915648, 24.737902, 28.161989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.223129, 24.493248, 28.087158>,  <16.407618, 24.346457, 28.042259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.223129, 24.493248, 28.087158>,  <15.915648, 24.737902, 28.161989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.223129, 24.493248, 28.087158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401710, 0.234077, 0.885346,
		-0.497718, -0.755719, 0.425636,
		0.768704, -0.611635, -0.187075,
		16.453741, 24.309757, 28.031036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938420, 24.377966, 28.724218>,  <15.915648, 24.737902, 28.161989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938420, 24.377966, 28.724218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300978, 24.361958, 28.556005>,  <16.518513, 24.352352, 28.455078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300978, 24.361958, 28.556005>,  <15.938420, 24.377966, 28.724218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300978, 24.361958, 28.556005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396864, 0.421753, 0.815245,
		0.144734, -0.905827, 0.398157,
		0.906394, -0.040021, -0.420532,
		16.572897, 24.349951, 28.429846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402012, 24.115911, 29.253092>,  <15.938420, 24.377966, 28.724218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402012, 24.115911, 29.253092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.653654, 24.265133, 28.980310>,  <16.804640, 24.354666, 28.816641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.653654, 24.265133, 28.980310>,  <16.402012, 24.115911, 29.253092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.653654, 24.265133, 28.980310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579711, 0.359292, 0.731330,
		0.517845, -0.855419, 0.009770,
		0.629103, 0.373052, -0.681953,
		16.842386, 24.377048, 28.775724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.109686, 23.756021, 29.428616>,  <16.402012, 24.115911, 29.253092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.109686, 23.756021, 29.428616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166948, 24.101488, 29.235292>,  <17.201305, 24.308767, 29.119299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166948, 24.101488, 29.235292>,  <17.109686, 23.756021, 29.428616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166948, 24.101488, 29.235292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301088, 0.427188, 0.852559,
		0.942790, -0.267565, -0.198886,
		0.143154, 0.863666, -0.483309,
		17.209894, 24.360588, 29.090300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793484, 23.976078, 29.560738>,  <17.109686, 23.756021, 29.428616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793484, 23.976078, 29.560738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556635, 24.284254, 29.466242>,  <17.414526, 24.469160, 29.409544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556635, 24.284254, 29.466242>,  <17.793484, 23.976078, 29.560738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.556635, 24.284254, 29.466242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138312, 0.385972, 0.912083,
		0.793888, 0.507392, -0.335104,
		-0.592124, 0.770441, -0.236240,
		17.378998, 24.515387, 29.395370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.114201, 24.418976, 29.886271>,  <17.793484, 23.976078, 29.560738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.114201, 24.418976, 29.886271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.769352, 24.610659, 29.820415>,  <17.562443, 24.725668, 29.780903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.769352, 24.610659, 29.820415>,  <18.114201, 24.418976, 29.886271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.769352, 24.610659, 29.820415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105778, 0.487971, 0.866427,
		0.495536, 0.729551, -0.471380,
		-0.862122, 0.479208, -0.164637,
		17.510715, 24.754421, 29.771025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169443, 25.030308, 30.059069>,  <18.114201, 24.418976, 29.886271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169443, 25.030308, 30.059069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770319, 25.009180, 30.074982>,  <17.530844, 24.996504, 30.084530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770319, 25.009180, 30.074982>,  <18.169443, 25.030308, 30.059069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770319, 25.009180, 30.074982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014215, 0.416239, 0.909144,
		-0.064582, 0.907720, -0.414577,
		-0.997811, -0.052821, 0.039784,
		17.470976, 24.993334, 30.086918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968033, 25.600451, 30.483137>,  <18.169443, 25.030308, 30.059069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968033, 25.600451, 30.483137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.631880, 25.383694, 30.479023>,  <17.430187, 25.253639, 30.476555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.631880, 25.383694, 30.479023>,  <17.968033, 25.600451, 30.483137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.631880, 25.383694, 30.479023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187204, 0.272409, 0.943795,
		-0.508635, 0.795075, -0.330373,
		-0.840384, -0.541894, -0.010284,
		17.379765, 25.221125, 30.475937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537886, 26.040293, 30.823933>,  <17.968033, 25.600451, 30.483137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.537886, 26.040293, 30.823933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.396683, 25.666082, 30.818613>,  <17.311960, 25.441557, 30.815422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.396683, 25.666082, 30.818613>,  <17.537886, 26.040293, 30.823933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.396683, 25.666082, 30.818613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230687, 0.073253, 0.970267,
		-0.906735, 0.345581, -0.241673,
		-0.353009, -0.935525, -0.013300,
		17.290779, 25.385426, 30.814623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954590, 26.031189, 31.117327>,  <17.537886, 26.040293, 30.823933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954590, 26.031189, 31.117327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058525, 25.647846, 31.164722>,  <17.120886, 25.417841, 31.193161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058525, 25.647846, 31.164722>,  <16.954590, 26.031189, 31.117327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058525, 25.647846, 31.164722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240577, 0.054592, 0.969094,
		-0.935204, -0.280315, -0.216373,
		0.259839, -0.958355, 0.118492,
		17.136477, 25.360340, 31.200270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318726, 25.651838, 31.297354>,  <16.954590, 26.031189, 31.117327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318726, 25.651838, 31.297354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.660114, 25.530264, 31.466686>,  <16.864948, 25.457319, 31.568285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.660114, 25.530264, 31.466686>,  <16.318726, 25.651838, 31.297354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.660114, 25.530264, 31.466686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429828, 0.048782, 0.901592,
		-0.294678, -0.951442, -0.089007,
		0.853471, -0.303937, 0.423331,
		16.916155, 25.439083, 31.593685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123161, 25.122215, 31.760572>,  <16.318726, 25.651838, 31.297354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.123161, 25.122215, 31.760572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451500, 25.330868, 31.853624>,  <16.648502, 25.456059, 31.909454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451500, 25.330868, 31.853624>,  <16.123161, 25.122215, 31.760572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451500, 25.330868, 31.853624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387653, 0.209703, 0.897636,
		0.419452, -0.826998, 0.374346,
		0.820844, 0.521631, 0.232628,
		16.697754, 25.487356, 31.923412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477543, 24.833591, 32.506371>,  <16.123161, 25.122215, 31.760572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.477543, 24.833591, 32.506371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.520342, 25.216057, 32.397339>,  <16.546021, 25.445536, 32.331921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.520342, 25.216057, 32.397339>,  <16.477543, 24.833591, 32.506371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520342, 25.216057, 32.397339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460338, 0.290642, 0.838819,
		0.881272, 0.035728, 0.471257,
		0.106998, 0.956165, -0.272582,
		16.552441, 25.502907, 32.315563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003340, 24.569576, 32.978222>,  <16.477543, 24.833591, 32.506371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.003340, 24.569576, 32.978222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661152, 24.430540, 33.131767>,  <16.455839, 24.347118, 33.223896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661152, 24.430540, 33.131767>,  <17.003340, 24.569576, 32.978222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661152, 24.430540, 33.131767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165059, -0.885623, -0.434081,
		0.490842, -0.307983, 0.814997,
		-0.855470, -0.347589, 0.383866,
		16.404510, 24.326263, 33.246925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.148687, 23.853697, 33.237358>,  <17.003340, 24.569576, 32.978222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.148687, 23.853697, 33.237358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760952, 23.892248, 33.146938>,  <16.528311, 23.915379, 33.092686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760952, 23.892248, 33.146938>,  <17.148687, 23.853697, 33.237358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760952, 23.892248, 33.146938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024495, -0.877401, -0.479131,
		-0.244510, -0.469977, 0.848137,
		-0.969337, 0.096378, -0.226045,
		16.470150, 23.921162, 33.079124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949791, 23.963671, 33.179558>,  <17.148687, 23.853697, 33.237358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.949791, 23.963671, 33.179558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.225210, 24.226776, 33.301704>,  <18.390463, 24.384640, 33.374992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.225210, 24.226776, 33.301704>,  <17.949791, 23.963671, 33.179558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225210, 24.226776, 33.301704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627975, 0.330208, 0.704706,
		0.362706, -0.676976, 0.640428,
		0.688543, 0.657773, 0.305356,
		18.431776, 24.424105, 33.393314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.394587, 24.045938, 32.615757>,  <17.949791, 23.963671, 33.179558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.394587, 24.045938, 32.615757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.326590, 23.651775, 32.619228>,  <18.285791, 23.415277, 32.621311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.326590, 23.651775, 32.619228>,  <18.394587, 24.045938, 32.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.326590, 23.651775, 32.619228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265892, -0.054346, -0.962470,
		0.948896, -0.161305, 0.271250,
		-0.169992, -0.985407, 0.008679,
		18.275591, 23.356153, 32.621834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999187, 23.685139, 32.460003>,  <18.394587, 24.045938, 32.615757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999187, 23.685139, 32.460003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.680101, 23.473612, 32.344067>,  <18.488649, 23.346695, 32.274506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.680101, 23.473612, 32.344067>,  <18.999187, 23.685139, 32.460003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.680101, 23.473612, 32.344067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385207, -0.077057, -0.919607,
		0.463970, -0.845230, 0.265174,
		-0.797714, -0.528817, -0.289837,
		18.440786, 23.314966, 32.257114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208099, 23.057711, 31.987341>,  <18.999187, 23.685139, 32.460003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208099, 23.057711, 31.987341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.909386, 23.029556, 32.251873>,  <18.730158, 23.012663, 32.410591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.909386, 23.029556, 32.251873>,  <19.208099, 23.057711, 31.987341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909386, 23.029556, 32.251873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457214, -0.667800, -0.587367,
		0.482979, -0.741006, 0.466521,
		-0.746784, -0.070386, 0.661331,
		18.685350, 23.008440, 32.450272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066633, 22.387569, 31.968573>,  <19.208099, 23.057711, 31.987341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066633, 22.387569, 31.968573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.749409, 22.609951, 32.068150>,  <18.559074, 22.743380, 32.127895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.749409, 22.609951, 32.068150>,  <19.066633, 22.387569, 31.968573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749409, 22.609951, 32.068150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575042, -0.548468, -0.607050,
		-0.200954, -0.624579, 0.754664,
		-0.793060, 0.555953, 0.248943,
		18.511492, 22.776737, 32.142834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568722, 21.925983, 32.246017>,  <19.066633, 22.387569, 31.968573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568722, 21.925983, 32.246017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394772, 22.244902, 32.078590>,  <18.290401, 22.436253, 31.978134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394772, 22.244902, 32.078590>,  <18.568722, 21.925983, 32.246017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394772, 22.244902, 32.078590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497516, -0.600173, -0.626315,
		-0.750573, -0.064124, 0.657669,
		-0.434877, 0.797296, -0.418571,
		18.264309, 22.484091, 31.953018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.740776, 21.855042, 32.329391>,  <18.568722, 21.925983, 32.246017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.740776, 21.855042, 32.329391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.834877, 22.108223, 32.034359>,  <17.891336, 22.260132, 31.857340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.834877, 22.108223, 32.034359>,  <17.740776, 21.855042, 32.329391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834877, 22.108223, 32.034359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503209, -0.569930, -0.649585,
		-0.831528, 0.523972, 0.184432,
		0.235251, 0.632955, -0.737580,
		17.905453, 22.298109, 31.813086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129780, 21.994461, 31.906626>,  <17.740776, 21.855042, 32.329391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129780, 21.994461, 31.906626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430273, 22.096512, 31.663132>,  <17.610569, 22.157743, 31.517035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430273, 22.096512, 31.663132>,  <17.129780, 21.994461, 31.906626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430273, 22.096512, 31.663132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365544, -0.607100, -0.705555,
		-0.549570, 0.752556, -0.362813,
		0.751233, 0.255128, -0.608736,
		17.655643, 22.173050, 31.480511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949253, 22.165316, 31.130089>,  <17.129780, 21.994461, 31.906626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.949253, 22.165316, 31.130089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.331667, 22.067204, 31.065796>,  <17.561115, 22.008335, 31.027220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.331667, 22.067204, 31.065796>,  <16.949253, 22.165316, 31.130089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.331667, 22.067204, 31.065796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252566, -0.410173, -0.876338,
		0.149023, 0.878405, -0.454089,
		0.956035, -0.245282, -0.160730,
		17.618477, 21.993618, 31.017576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923979, 22.210810, 30.403055>,  <16.949253, 22.165316, 31.130089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923979, 22.210810, 30.403055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259350, 22.021544, 30.511246>,  <17.460571, 21.907984, 30.576160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259350, 22.021544, 30.511246>,  <16.923979, 22.210810, 30.403055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259350, 22.021544, 30.511246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068148, -0.583391, -0.809327,
		0.540737, 0.660129, -0.521376,
		0.838427, -0.473164, 0.270475,
		17.510878, 21.879595, 30.592388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258055, 22.145485, 29.782167>,  <16.923979, 22.210810, 30.403055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258055, 22.145485, 29.782167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.450886, 21.890957, 30.023066>,  <17.566584, 21.738241, 30.167604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.450886, 21.890957, 30.023066>,  <17.258055, 22.145485, 29.782167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.450886, 21.890957, 30.023066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079423, -0.716303, -0.693254,
		0.872521, 0.286370, -0.395852,
		0.482078, -0.636319, 0.602245,
		17.595509, 21.700062, 30.203739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802223, 21.794884, 29.403921>,  <17.258055, 22.145485, 29.782167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802223, 21.794884, 29.403921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.739101, 21.544666, 29.709547>,  <17.701229, 21.394537, 29.892923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.739101, 21.544666, 29.709547>,  <17.802223, 21.794884, 29.403921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.739101, 21.544666, 29.709547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126391, -0.754600, -0.643897,
		0.979348, -0.198180, 0.040015,
		-0.157802, -0.625542, 0.764065,
		17.691761, 21.357004, 29.938766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202003, 21.183195, 29.271914>,  <17.802223, 21.794884, 29.403921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202003, 21.183195, 29.271914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.918623, 21.071901, 29.531355>,  <17.748594, 21.005125, 29.687019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.918623, 21.071901, 29.531355>,  <18.202003, 21.183195, 29.271914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.918623, 21.071901, 29.531355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327796, -0.684150, -0.651528,
		0.625020, -0.674183, 0.393481,
		-0.708449, -0.278237, 0.648602,
		17.706089, 20.988430, 29.725935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131187, 20.405514, 29.252720>,  <18.202003, 21.183195, 29.271914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131187, 20.405514, 29.252720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.790953, 20.551613, 29.404034>,  <17.586813, 20.639273, 29.494822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.790953, 20.551613, 29.404034>,  <18.131187, 20.405514, 29.252720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.790953, 20.551613, 29.404034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525782, -0.580438, -0.621808,
		-0.007544, -0.727796, 0.685752,
		-0.850586, 0.365247, 0.378284,
		17.535776, 20.661186, 29.517519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835941, 19.804300, 29.356297>,  <18.131187, 20.405514, 29.252720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.835941, 19.804300, 29.356297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566256, 20.099245, 29.372921>,  <17.404444, 20.276213, 29.382896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566256, 20.099245, 29.372921>,  <17.835941, 19.804300, 29.356297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.566256, 20.099245, 29.372921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582907, -0.496743, -0.643013,
		-0.453488, -0.457757, 0.764727,
		-0.674217, 0.737363, 0.041563,
		17.363991, 20.320454, 29.385389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288372, 19.496181, 29.559420>,  <17.835941, 19.804300, 29.356297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288372, 19.496181, 29.559420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.169947, 19.821989, 29.359858>,  <17.098892, 20.017473, 29.240120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.169947, 19.821989, 29.359858>,  <17.288372, 19.496181, 29.559420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.169947, 19.821989, 29.359858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473448, -0.578782, -0.663972,
		-0.829575, 0.039629, 0.556988,
		-0.296062, 0.814519, -0.498905,
		17.081127, 20.066345, 29.210186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597570, 19.301517, 29.497145>,  <17.288372, 19.496181, 29.559420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597570, 19.301517, 29.497145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.667950, 19.591721, 29.231009>,  <16.710176, 19.765842, 29.071327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.667950, 19.591721, 29.231009>,  <16.597570, 19.301517, 29.497145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667950, 19.591721, 29.231009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648482, -0.423081, -0.632830,
		-0.740617, 0.542806, 0.396040,
		0.175947, 0.725510, -0.665341,
		16.720734, 19.809374, 29.031406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.941688, 19.464893, 29.257921>,  <16.597570, 19.301517, 29.497145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.941688, 19.464893, 29.257921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.181528, 19.653502, 28.999264>,  <16.325432, 19.766666, 28.844070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.181528, 19.653502, 28.999264>,  <15.941688, 19.464893, 29.257921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181528, 19.653502, 28.999264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726803, -0.017408, -0.686625,
		-0.335014, 0.881683, 0.332265,
		0.599602, 0.471520, -0.646642,
		16.361408, 19.794958, 28.805271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574172, 20.095362, 28.940681>,  <15.941688, 19.464893, 29.257921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574172, 20.095362, 28.940681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.856724, 19.953665, 28.695555>,  <16.026255, 19.868647, 28.548479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.856724, 19.953665, 28.695555>,  <15.574172, 20.095362, 28.940681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.856724, 19.953665, 28.695555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672196, -0.064465, -0.737562,
		0.221769, 0.932930, -0.283656,
		0.706379, -0.354240, -0.612815,
		16.068638, 19.847393, 28.511711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377989, 20.258236, 28.315508>,  <15.574172, 20.095362, 28.940681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377989, 20.258236, 28.315508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640704, 19.977884, 28.204226>,  <15.798333, 19.809673, 28.137457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640704, 19.977884, 28.204226>,  <15.377989, 20.258236, 28.315508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640704, 19.977884, 28.204226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537097, -0.175841, -0.824989,
		0.529298, 0.691265, -0.491931,
		0.656788, -0.700880, -0.278204,
		15.837741, 19.767620, 28.120764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255631, 20.268597, 27.632158>,  <15.377989, 20.258236, 28.315508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.255631, 20.268597, 27.632158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.449645, 19.924395, 27.694481>,  <15.566053, 19.717875, 27.731874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.449645, 19.924395, 27.694481>,  <15.255631, 20.268597, 27.632158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.449645, 19.924395, 27.694481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493124, -0.416272, -0.763902,
		0.722199, 0.293685, -0.626240,
		0.485033, -0.860504, 0.155808,
		15.595155, 19.666243, 27.741224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647136, 20.167467, 27.090843>,  <15.255631, 20.268597, 27.632158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647136, 20.167467, 27.090843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.599582, 19.801971, 27.246250>,  <15.571050, 19.582674, 27.339495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.599582, 19.801971, 27.246250>,  <15.647136, 20.167467, 27.090843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.599582, 19.801971, 27.246250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341800, -0.329717, -0.880033,
		0.932222, -0.237419, -0.273118,
		-0.118885, -0.913739, 0.388519,
		15.563916, 19.527849, 27.362806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873157, 19.726322, 26.641922>,  <15.647136, 20.167467, 27.090843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873157, 19.726322, 26.641922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.649892, 19.489559, 26.874508>,  <15.515933, 19.347502, 27.014059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.649892, 19.489559, 26.874508>,  <15.873157, 19.726322, 26.641922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649892, 19.489559, 26.874508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435729, -0.387279, -0.812499,
		0.706114, -0.706867, -0.041747,
		-0.558161, -0.591907, 0.581465,
		15.482444, 19.311987, 27.048948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916321, 19.140329, 26.330814>,  <15.873157, 19.726322, 26.641922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916321, 19.140329, 26.330814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577973, 19.150061, 26.543949>,  <15.374965, 19.155899, 26.671829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577973, 19.150061, 26.543949>,  <15.916321, 19.140329, 26.330814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577973, 19.150061, 26.543949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490827, -0.426544, -0.759703,
		0.208794, -0.904140, 0.372742,
		-0.845868, 0.024330, 0.532836,
		15.324213, 19.157360, 26.703800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741439, 18.494181, 26.262953>,  <15.916321, 19.140329, 26.330814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741439, 18.494181, 26.262953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429647, 18.718634, 26.374340>,  <15.242573, 18.853306, 26.441172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429647, 18.718634, 26.374340>,  <15.741439, 18.494181, 26.262953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429647, 18.718634, 26.374340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498798, -0.287048, -0.817804,
		-0.378965, -0.776358, 0.503640,
		-0.779478, 0.561134, 0.278465,
		15.195804, 18.886972, 26.457880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.186572, 18.032665, 26.234062>,  <15.741439, 18.494181, 26.262953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.186572, 18.032665, 26.234062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.039325, 18.404263, 26.218769>,  <14.950976, 18.627220, 26.209593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.039325, 18.404263, 26.218769>,  <15.186572, 18.032665, 26.234062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.039325, 18.404263, 26.218769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422748, -0.203855, -0.883022,
		-0.828114, -0.308894, 0.467773,
		-0.368118, 0.928993, -0.038231,
		14.928889, 18.682961, 26.207300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530003, 17.942377, 26.018511>,  <15.186572, 18.032665, 26.234062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.530003, 17.942377, 26.018511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.571968, 18.331535, 25.936079>,  <14.597147, 18.565029, 25.886620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.571968, 18.331535, 25.936079>,  <14.530003, 17.942377, 26.018511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.571968, 18.331535, 25.936079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683106, -0.080101, -0.725913,
		-0.722744, 0.216934, 0.656187,
		0.104914, 0.972895, -0.206081,
		14.603442, 18.623404, 25.874254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.909698, 18.067537, 25.825310>,  <14.530003, 17.942377, 26.018511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.909698, 18.067537, 25.825310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111715, 18.392580, 25.708963>,  <14.232925, 18.587605, 25.639156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111715, 18.392580, 25.708963>,  <13.909698, 18.067537, 25.825310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111715, 18.392580, 25.708963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621751, 0.108797, -0.775622,
		-0.598629, 0.572568, 0.560186,
		0.505043, 0.812606, -0.290866,
		14.263228, 18.636362, 25.621704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.413942, 18.686525, 25.875235>,  <13.909698, 18.067537, 25.825310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.413942, 18.686525, 25.875235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.698789, 18.719137, 25.596310>,  <13.869696, 18.738705, 25.428955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.698789, 18.719137, 25.596310>,  <13.413942, 18.686525, 25.875235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.698789, 18.719137, 25.596310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698552, 0.181495, -0.692159,
		0.070126, 0.980007, 0.186200,
		0.712115, 0.081532, -0.697313,
		13.912423, 18.743597, 25.387115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.070994, 19.134386, 25.484438>,  <13.413942, 18.686525, 25.875235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.070994, 19.134386, 25.484438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362796, 19.035595, 25.229305>,  <13.537876, 18.976320, 25.076225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362796, 19.035595, 25.229305>,  <13.070994, 19.134386, 25.484438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.362796, 19.035595, 25.229305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583319, 0.262302, -0.768724,
		0.357163, 0.932845, 0.047283,
		0.729503, -0.246979, -0.637830,
		13.581647, 18.961502, 25.037956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093939, 19.642405, 24.953239>,  <13.070994, 19.134386, 25.484438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093939, 19.642405, 24.953239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292581, 19.327991, 24.805979>,  <13.411766, 19.139343, 24.717623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292581, 19.327991, 24.805979>,  <13.093939, 19.642405, 24.953239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292581, 19.327991, 24.805979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422329, 0.151736, -0.893652,
		0.758302, 0.599274, -0.256612,
		0.496605, -0.786033, -0.368152,
		13.441562, 19.092182, 24.695534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.293174, 19.828979, 24.302958>,  <13.093939, 19.642405, 24.953239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.293174, 19.828979, 24.302958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.259116, 19.431276, 24.328884>,  <13.238682, 19.192654, 24.344440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.259116, 19.431276, 24.328884>,  <13.293174, 19.828979, 24.302958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.259116, 19.431276, 24.328884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395886, -0.025940, -0.917933,
		0.914344, -0.103818, -0.391404,
		-0.085145, -0.994258, 0.064818,
		13.233573, 19.132999, 24.348330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.650747, 19.558334, 23.767756>,  <13.293174, 19.828979, 24.302958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.650747, 19.558334, 23.767756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402866, 19.252987, 23.840683>,  <13.254138, 19.069778, 23.884439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402866, 19.252987, 23.840683>,  <13.650747, 19.558334, 23.767756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.402866, 19.252987, 23.840683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069979, -0.177633, -0.981606,
		0.781712, -0.621061, 0.056660,
		-0.619701, -0.763368, 0.182319,
		13.216956, 19.023977, 23.895378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862229, 19.050064, 23.317205>,  <13.650747, 19.558334, 23.767756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862229, 19.050064, 23.317205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487300, 18.938160, 23.400307>,  <13.262342, 18.871017, 23.450167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487300, 18.938160, 23.400307>,  <13.862229, 19.050064, 23.317205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487300, 18.938160, 23.400307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136333, -0.254253, -0.957480,
		0.320685, -0.925792, 0.200177,
		-0.937323, -0.279759, 0.207751,
		13.206103, 18.854233, 23.462631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800829, 18.359644, 23.030022>,  <13.862229, 19.050064, 23.317205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800829, 18.359644, 23.030022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450607, 18.552515, 23.042070>,  <13.240474, 18.668238, 23.049299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450607, 18.552515, 23.042070>,  <13.800829, 18.359644, 23.030022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.450607, 18.552515, 23.042070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133416, -0.181390, -0.974319,
		-0.464332, -0.857089, 0.223147,
		-0.875555, 0.482179, 0.030124,
		13.187941, 18.697168, 23.051107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.649551, 18.197340, 22.440752>,  <13.800829, 18.359644, 23.030022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.649551, 18.197340, 22.440752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314671, 18.390594, 22.543257>,  <13.113742, 18.506548, 22.604759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314671, 18.390594, 22.543257>,  <13.649551, 18.197340, 22.440752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314671, 18.390594, 22.543257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328538, -0.069700, -0.941916,
		-0.437213, -0.872766, 0.217082,
		-0.837202, 0.483137, 0.256263,
		13.063510, 18.535536, 22.620136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.080904, 17.782446, 22.204319>,  <13.649551, 18.197340, 22.440752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.080904, 17.782446, 22.204319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.950597, 18.158974, 22.239626>,  <12.872413, 18.384890, 22.260811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.950597, 18.158974, 22.239626>,  <13.080904, 17.782446, 22.204319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.950597, 18.158974, 22.239626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236240, 0.009354, -0.971650,
		-0.915459, -0.337385, 0.219330,
		-0.325769, 0.941320, 0.088267,
		12.852866, 18.441370, 22.266106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.403919, 17.789278, 21.955454>,  <13.080904, 17.782446, 22.204319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.403919, 17.789278, 21.955454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.535924, 18.166536, 21.939625>,  <12.615127, 18.392891, 21.930128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.535924, 18.166536, 21.939625>,  <12.403919, 17.789278, 21.955454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535924, 18.166536, 21.939625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455007, 0.122202, -0.882063,
		-0.827079, 0.309097, 0.469467,
		0.330012, 0.943147, -0.039571,
		12.634928, 18.449480, 21.927753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.850189, 18.184673, 21.860327>,  <12.403919, 17.789278, 21.955454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.850189, 18.184673, 21.860327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.166146, 18.376888, 21.707930>,  <12.355721, 18.492218, 21.616491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.166146, 18.376888, 21.707930>,  <11.850189, 18.184673, 21.860327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.166146, 18.376888, 21.707930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398196, -0.070579, -0.914581,
		-0.466381, 0.874130, 0.135599,
		0.789892, 0.480538, -0.380991,
		12.403114, 18.521049, 21.593632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.569077, 18.686668, 21.331173>,  <11.850189, 18.184673, 21.860327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.569077, 18.686668, 21.331173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.951660, 18.726580, 21.221460>,  <12.181211, 18.750526, 21.155632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.951660, 18.726580, 21.221460>,  <11.569077, 18.686668, 21.331173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.951660, 18.726580, 21.221460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277043, 0.014684, -0.960745,
		-0.091834, 0.994901, 0.041687,
		0.956459, 0.099778, -0.274282,
		12.238598, 18.756514, 21.139175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.552717, 19.194712, 20.770323>,  <11.569077, 18.686668, 21.331173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.552717, 19.194712, 20.770323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.883300, 18.971636, 20.739470>,  <12.081650, 18.837790, 20.720959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.883300, 18.971636, 20.739470>,  <11.552717, 19.194712, 20.770323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.883300, 18.971636, 20.739470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141946, -0.073830, -0.987117,
		0.544812, 0.826758, -0.140180,
		0.826457, -0.557692, -0.077132,
		12.131237, 18.804329, 20.716330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.957018, 19.439213, 20.244839>,  <11.552717, 19.194712, 20.770323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.957018, 19.439213, 20.244839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117973, 19.075855, 20.290268>,  <12.214547, 18.857840, 20.317526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117973, 19.075855, 20.290268>,  <11.957018, 19.439213, 20.244839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117973, 19.075855, 20.290268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173605, -0.046093, -0.983736,
		0.898857, 0.415562, 0.139155,
		0.402389, -0.908396, 0.113575,
		12.238690, 18.803337, 20.324341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.572081, 19.435007, 19.790089>,  <11.957018, 19.439213, 20.244839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.572081, 19.435007, 19.790089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.464457, 19.055592, 19.856884>,  <12.399882, 18.827942, 19.896961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.464457, 19.055592, 19.856884>,  <12.572081, 19.435007, 19.790089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.464457, 19.055592, 19.856884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102650, -0.200635, -0.974273,
		0.957637, -0.244997, 0.151351,
		-0.269060, -0.948537, 0.166987,
		12.383739, 18.771030, 19.906981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.067117, 19.109196, 19.482964>,  <12.572081, 19.435007, 19.790089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.067117, 19.109196, 19.482964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.742886, 18.876633, 19.511045>,  <12.548347, 18.737095, 19.527895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.742886, 18.876633, 19.511045>,  <13.067117, 19.109196, 19.482964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.742886, 18.876633, 19.511045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061492, -0.203711, -0.977098,
		0.582395, -0.787696, 0.200875,
		-0.810577, -0.581409, 0.070203,
		12.499712, 18.702209, 19.532106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.246625, 18.592710, 19.060726>,  <13.067117, 19.109196, 19.482964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.246625, 18.592710, 19.060726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850204, 18.555294, 19.098803>,  <12.612350, 18.532845, 19.121649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850204, 18.555294, 19.098803>,  <13.246625, 18.592710, 19.060726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.850204, 18.555294, 19.098803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073451, -0.213232, -0.974236,
		0.111429, -0.972513, 0.204454,
		-0.991054, -0.093541, 0.095192,
		12.552887, 18.527231, 19.127359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.714587, 18.062773, 19.461470>,  <13.246625, 18.592710, 19.060726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.714587, 18.062773, 19.461470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.856620, 17.759933, 19.242119>,  <13.941839, 17.578230, 19.110508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.856620, 17.759933, 19.242119>,  <13.714587, 18.062773, 19.461470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856620, 17.759933, 19.242119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845693, 0.010158, 0.533573,
		-0.398396, -0.653223, 0.643879,
		0.355083, -0.757098, -0.548379,
		13.963144, 17.532804, 19.077604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897095, 17.478880, 19.871815>,  <13.714587, 18.062773, 19.461470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897095, 17.478880, 19.871815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.101809, 17.517553, 19.530352>,  <14.224637, 17.540758, 19.325474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.101809, 17.517553, 19.530352>,  <13.897095, 17.478880, 19.871815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101809, 17.517553, 19.530352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858933, -0.037174, 0.510737,
		0.017648, -0.994621, -0.102072,
		0.511784, 0.096686, -0.853656,
		14.255343, 17.546558, 19.274254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.411900, 16.902815, 19.853800>,  <13.897095, 17.478880, 19.871815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.411900, 16.902815, 19.853800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547034, 17.209013, 19.634754>,  <14.628115, 17.392733, 19.503326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547034, 17.209013, 19.634754>,  <14.411900, 16.902815, 19.853800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547034, 17.209013, 19.634754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823483, 0.041355, 0.565832,
		0.455789, -0.642111, -0.616401,
		0.337836, 0.765496, -0.547616,
		14.648385, 17.438662, 19.470469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147694, 16.751007, 19.803764>,  <14.411900, 16.902815, 19.853800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.147694, 16.751007, 19.803764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.117940, 17.137413, 19.704742>,  <15.100088, 17.369257, 19.645329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.117940, 17.137413, 19.704742>,  <15.147694, 16.751007, 19.803764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.117940, 17.137413, 19.704742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809374, 0.203502, 0.550910,
		0.582564, -0.159386, -0.797004,
		-0.074384, 0.966014, -0.247556,
		15.095625, 17.427217, 19.630476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852376, 16.955091, 19.590851>,  <15.147694, 16.751007, 19.803764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.852376, 16.955091, 19.590851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.635013, 17.271177, 19.704176>,  <15.504595, 17.460829, 19.772171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.635013, 17.271177, 19.704176>,  <15.852376, 16.955091, 19.590851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.635013, 17.271177, 19.704176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628984, 0.159758, 0.760826,
		0.555956, 0.591638, -0.583847,
		-0.543407, 0.790217, 0.283312,
		15.471991, 17.508242, 19.789169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332350, 17.485647, 19.741926>,  <15.852376, 16.955091, 19.590851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332350, 17.485647, 19.741926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003197, 17.575169, 19.950838>,  <15.805704, 17.628881, 20.076185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003197, 17.575169, 19.950838>,  <16.332350, 17.485647, 19.741926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003197, 17.575169, 19.950838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565719, 0.236734, 0.789885,
		0.053138, 0.945447, -0.321414,
		-0.822884, 0.223803, 0.522278,
		15.756331, 17.642309, 20.107521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.651815, 17.922455, 20.157841>,  <16.332350, 17.485647, 19.741926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.651815, 17.922455, 20.157841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.290092, 17.866552, 20.319181>,  <16.073059, 17.833010, 20.415987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.290092, 17.866552, 20.319181>,  <16.651815, 17.922455, 20.157841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290092, 17.866552, 20.319181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399254, 0.057485, 0.915036,
		-0.151070, 0.988516, 0.003814,
		-0.904309, -0.139757, 0.403353,
		16.018801, 17.824625, 20.440187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536787, 18.439638, 20.592556>,  <16.651815, 17.922455, 20.157841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536787, 18.439638, 20.592556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266258, 18.178370, 20.728765>,  <16.103941, 18.021608, 20.810492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266258, 18.178370, 20.728765>,  <16.536787, 18.439638, 20.592556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266258, 18.178370, 20.728765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432223, 0.022439, 0.901487,
		-0.596466, 0.756879, 0.267139,
		-0.676322, -0.653170, 0.340524,
		16.063362, 17.982418, 20.830923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196190, 18.787081, 21.048517>,  <16.536787, 18.439638, 20.592556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196190, 18.787081, 21.048517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.107307, 18.410847, 21.151222>,  <16.053978, 18.185106, 21.212845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.107307, 18.410847, 21.151222>,  <16.196190, 18.787081, 21.048517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107307, 18.410847, 21.151222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315072, 0.179946, 0.931852,
		-0.922689, 0.287961, 0.256367,
		-0.222205, -0.940584, 0.256763,
		16.040646, 18.128672, 21.228251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628620, 18.789938, 21.593014>,  <16.196190, 18.787081, 21.048517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628620, 18.789938, 21.593014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.833112, 18.447969, 21.628239>,  <15.955807, 18.242788, 21.649374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.833112, 18.447969, 21.628239>,  <15.628620, 18.789938, 21.593014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833112, 18.447969, 21.628239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112802, 0.168324, 0.979256,
		-0.852010, -0.490691, 0.182489,
		0.511230, -0.854921, 0.088063,
		15.986481, 18.191494, 21.654657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623448, 18.715031, 22.232378>,  <15.628620, 18.789938, 21.593014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.623448, 18.715031, 22.232378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.879925, 18.414682, 22.169048>,  <16.033810, 18.234472, 22.131050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.879925, 18.414682, 22.169048>,  <15.623448, 18.715031, 22.232378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.879925, 18.414682, 22.169048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385964, 0.137232, 0.912250,
		-0.663255, -0.646033, 0.377802,
		0.641190, -0.750872, -0.158325,
		16.072281, 18.189421, 22.121552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615666, 18.297506, 22.861467>,  <15.623448, 18.715031, 22.232378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615666, 18.297506, 22.861467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968316, 18.235458, 22.683174>,  <16.179905, 18.198231, 22.576199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968316, 18.235458, 22.683174>,  <15.615666, 18.297506, 22.861467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968316, 18.235458, 22.683174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420942, -0.168633, 0.891275,
		-0.213419, -0.973397, -0.083374,
		0.881624, -0.155119, -0.445733,
		16.232803, 18.188923, 22.549454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898880, 17.829967, 23.337067>,  <15.615666, 18.297506, 22.861467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898880, 17.829967, 23.337067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200098, 17.955708, 23.105860>,  <16.380829, 18.031151, 22.967134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200098, 17.955708, 23.105860>,  <15.898880, 17.829967, 23.337067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200098, 17.955708, 23.105860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639846, -0.145112, 0.754678,
		0.153356, -0.938150, -0.310412,
		0.753046, 0.314351, -0.578018,
		16.426012, 18.050013, 22.932455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447739, 17.368670, 23.365396>,  <15.898880, 17.829967, 23.337067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447739, 17.368670, 23.365396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.582981, 17.739061, 23.298164>,  <16.664125, 17.961296, 23.257826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.582981, 17.739061, 23.298164>,  <16.447739, 17.368670, 23.365396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.582981, 17.739061, 23.298164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658557, -0.105205, 0.745140,
		0.672300, -0.362625, -0.645380,
		0.338104, 0.925978, -0.168080,
		16.684412, 18.016855, 23.247740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192968, 17.291092, 23.352354>,  <16.447739, 17.368670, 23.365396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192968, 17.291092, 23.352354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.132761, 17.682451, 23.409037>,  <17.096636, 17.917267, 23.443047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.132761, 17.682451, 23.409037>,  <17.192968, 17.291092, 23.352354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132761, 17.682451, 23.409037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862679, 0.059983, 0.502182,
		0.482834, 0.197837, -0.853072,
		-0.150520, 0.978398, 0.141708,
		17.087605, 17.975971, 23.451550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845617, 17.462690, 23.668777>,  <17.192968, 17.291092, 23.352354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845617, 17.462690, 23.668777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605877, 17.776733, 23.731245>,  <17.462032, 17.965158, 23.768726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605877, 17.776733, 23.731245>,  <17.845617, 17.462690, 23.668777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605877, 17.776733, 23.731245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628721, 0.340942, 0.698905,
		0.495470, 0.517076, -0.697956,
		-0.599350, 0.785106, 0.156170,
		17.426071, 18.012264, 23.778095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293205, 18.089769, 23.552929>,  <17.845617, 17.462690, 23.668777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293205, 18.089769, 23.552929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.976068, 18.161434, 23.785929>,  <17.785788, 18.204433, 23.925728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.976068, 18.161434, 23.785929>,  <18.293205, 18.089769, 23.552929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.976068, 18.161434, 23.785929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607502, 0.308318, 0.732039,
		-0.048441, 0.934259, -0.353289,
		-0.792840, 0.179163, 0.582499,
		17.738216, 18.215183, 23.960678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389765, 18.704144, 23.894615>,  <18.293205, 18.089769, 23.552929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389765, 18.704144, 23.894615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.133783, 18.516054, 24.137712>,  <17.980194, 18.403200, 24.283571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.133783, 18.516054, 24.137712>,  <18.389765, 18.704144, 23.894615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.133783, 18.516054, 24.137712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508992, 0.333108, 0.793704,
		-0.575661, 0.817270, 0.026166,
		-0.639954, -0.470223, 0.607741,
		17.941797, 18.374987, 24.320034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553720, 18.972231, 24.479347>,  <18.389765, 18.704144, 23.894615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.553720, 18.972231, 24.479347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.301193, 18.706585, 24.639542>,  <18.149677, 18.547197, 24.735659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.301193, 18.706585, 24.639542>,  <18.553720, 18.972231, 24.479347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301193, 18.706585, 24.639542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317873, 0.249443, 0.914732,
		-0.707386, 0.704790, 0.053626,
		-0.631318, -0.664115, 0.400486,
		18.111797, 18.507351, 24.759687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023407, 19.236237, 24.920729>,  <18.553720, 18.972231, 24.479347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023407, 19.236237, 24.920729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.066166, 18.862690, 25.057236>,  <18.091822, 18.638561, 25.139141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.066166, 18.862690, 25.057236>,  <18.023407, 19.236237, 24.920729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.066166, 18.862690, 25.057236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282314, 0.357618, 0.890173,
		-0.953347, 0.001187, 0.301873,
		0.106899, -0.933867, 0.341270,
		18.098236, 18.582529, 25.159616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.690844, 19.288452, 25.446354>,  <18.023407, 19.236237, 24.920729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.690844, 19.288452, 25.446354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902655, 18.954609, 25.507051>,  <18.029741, 18.754303, 25.543470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902655, 18.954609, 25.507051>,  <17.690844, 19.288452, 25.446354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902655, 18.954609, 25.507051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203341, 0.298551, 0.932480,
		-0.823559, -0.462920, 0.327802,
		0.529530, -0.834609, 0.151744,
		18.061514, 18.704226, 25.552574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403572, 18.851252, 26.004139>,  <17.690844, 19.288452, 25.446354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.403572, 18.851252, 26.004139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788868, 18.746462, 25.980326>,  <18.020044, 18.683588, 25.966038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788868, 18.746462, 25.980326>,  <17.403572, 18.851252, 26.004139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788868, 18.746462, 25.980326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108106, 0.175110, 0.978596,
		-0.245942, -0.949055, 0.196994,
		0.963237, -0.261974, -0.059532,
		18.077839, 18.667870, 25.962465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485088, 18.315477, 26.548727>,  <17.403572, 18.851252, 26.004139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485088, 18.315477, 26.548727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.871029, 18.393976, 26.478815>,  <18.102594, 18.441074, 26.436869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.871029, 18.393976, 26.478815>,  <17.485088, 18.315477, 26.548727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871029, 18.393976, 26.478815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208684, -0.167946, 0.963455,
		0.159721, -0.966065, -0.202996,
		0.964852, 0.196246, -0.174778,
		18.160484, 18.452850, 26.426382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.912363, 17.795431, 26.953798>,  <17.485088, 18.315477, 26.548727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.912363, 17.795431, 26.953798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109011, 18.138018, 26.890837>,  <18.226999, 18.343569, 26.853060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109011, 18.138018, 26.890837>,  <17.912363, 17.795431, 26.953798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109011, 18.138018, 26.890837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329647, -0.015735, 0.943973,
		0.806004, -0.515965, -0.290067,
		0.491621, 0.856465, -0.157404,
		18.256496, 18.394957, 26.843615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313057, 17.903320, 27.479994>,  <17.912363, 17.795431, 26.953798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313057, 17.903320, 27.479994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.418179, 18.257324, 27.326273>,  <18.481251, 18.469727, 27.234041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.418179, 18.257324, 27.326273>,  <18.313057, 17.903320, 27.479994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.418179, 18.257324, 27.326273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390690, 0.266580, 0.881077,
		0.882211, -0.381692, -0.275707,
		0.262802, 0.885012, -0.384303,
		18.497019, 18.522827, 27.210981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959320, 18.005333, 27.678799>,  <18.313057, 17.903320, 27.479994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959320, 18.005333, 27.678799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822224, 18.375492, 27.614096>,  <18.739965, 18.597588, 27.575274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822224, 18.375492, 27.614096>,  <18.959320, 18.005333, 27.678799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822224, 18.375492, 27.614096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251990, 0.256440, 0.933134,
		0.905002, 0.279064, -0.321084,
		-0.342743, 0.925398, -0.161758,
		18.719400, 18.653112, 27.565569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.493631, 18.513430, 27.732525>,  <18.959320, 18.005333, 27.678799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.493631, 18.513430, 27.732525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.154539, 18.712736, 27.805281>,  <18.951084, 18.832321, 27.848934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.154539, 18.712736, 27.805281>,  <19.493631, 18.513430, 27.732525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.154539, 18.712736, 27.805281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402969, 0.381988, 0.831686,
		0.344921, 0.778341, -0.524609,
		-0.847729, 0.498267, 0.181891,
		18.900221, 18.862217, 27.859848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.748152, 19.160358, 28.124510>,  <19.493631, 18.513430, 27.732525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.748152, 19.160358, 28.124510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.355957, 19.129864, 28.196987>,  <19.120640, 19.111567, 28.240475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.355957, 19.129864, 28.196987>,  <19.748152, 19.160358, 28.124510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.355957, 19.129864, 28.196987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145092, 0.341260, 0.928703,
		-0.132635, 0.936872, -0.323540,
		-0.980488, -0.076235, 0.181195,
		19.061811, 19.106993, 28.251347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699715, 19.756678, 28.386463>,  <19.748152, 19.160358, 28.124510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699715, 19.756678, 28.386463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366222, 19.568476, 28.502058>,  <19.166126, 19.455555, 28.571415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366222, 19.568476, 28.502058>,  <19.699715, 19.756678, 28.386463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366222, 19.568476, 28.502058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110208, 0.371045, 0.922052,
		-0.541058, 0.800594, -0.257499,
		-0.833733, -0.470505, 0.288988,
		19.116102, 19.427324, 28.588755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262194, 20.197023, 28.568901>,  <19.699715, 19.756678, 28.386463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262194, 20.197023, 28.568901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142204, 19.875889, 28.774996>,  <19.070211, 19.683208, 28.898653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142204, 19.875889, 28.774996>,  <19.262194, 20.197023, 28.568901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142204, 19.875889, 28.774996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069750, 0.520204, 0.851189,
		-0.951395, 0.291271, -0.100049,
		-0.299972, -0.802839, 0.515235,
		19.052212, 19.635036, 28.929565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889589, 20.449728, 29.203165>,  <19.262194, 20.197023, 28.568901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889589, 20.449728, 29.203165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.946989, 20.063967, 29.292009>,  <18.981428, 19.832510, 29.345316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.946989, 20.063967, 29.292009>,  <18.889589, 20.449728, 29.203165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.946989, 20.063967, 29.292009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146600, 0.242673, 0.958967,
		-0.978732, -0.105050, 0.176205,
		0.143499, -0.964404, 0.222112,
		18.990040, 19.774645, 29.358643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711962, 20.456875, 29.941717>,  <18.889589, 20.449728, 29.203165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711962, 20.456875, 29.941717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.950914, 20.176914, 29.785118>,  <19.094286, 20.008938, 29.691158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.950914, 20.176914, 29.785118>,  <18.711962, 20.456875, 29.941717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950914, 20.176914, 29.785118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600529, 0.066865, 0.796802,
		-0.531506, -0.711102, 0.460256,
		0.597383, -0.699902, -0.391498,
		19.130129, 19.966944, 29.667669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.933886, 20.092154, 30.508038>,  <18.711962, 20.456875, 29.941717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.933886, 20.092154, 30.508038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226936, 20.060755, 30.237600>,  <19.402767, 20.041916, 30.075338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226936, 20.060755, 30.237600>,  <18.933886, 20.092154, 30.508038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226936, 20.060755, 30.237600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678224, 0.167690, 0.715466,
		0.057212, -0.982709, 0.176093,
		0.732625, -0.078497, -0.676091,
		19.446724, 20.037207, 30.034773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481468, 19.747549, 30.896852>,  <18.933886, 20.092154, 30.508038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481468, 19.747549, 30.896852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.643692, 19.926044, 30.577755>,  <19.741026, 20.033142, 30.386297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.643692, 19.926044, 30.577755>,  <19.481468, 19.747549, 30.896852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.643692, 19.926044, 30.577755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728249, 0.369706, 0.577036,
		0.552425, -0.814978, -0.175034,
		0.405560, 0.446237, -0.797742,
		19.765360, 20.059916, 30.338432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248405, 19.635094, 30.856970>,  <19.481468, 19.747549, 30.896852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248405, 19.635094, 30.856970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.147839, 19.986877, 30.695311>,  <20.087498, 20.197948, 30.598314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.147839, 19.986877, 30.695311>,  <20.248405, 19.635094, 30.856970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.147839, 19.986877, 30.695311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647000, 0.463269, 0.605618,
		0.719847, -0.109222, -0.685486,
		-0.251417, 0.879462, -0.404149,
		20.072412, 20.250715, 30.574066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.778490, 19.942957, 30.490477>,  <20.248405, 19.635094, 30.856970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.778490, 19.942957, 30.490477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528975, 20.227480, 30.620047>,  <20.379265, 20.398193, 30.697788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528975, 20.227480, 30.620047>,  <20.778490, 19.942957, 30.490477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528975, 20.227480, 30.620047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745777, 0.417659, 0.519016,
		0.233890, 0.565333, -0.791008,
		-0.623789, 0.711309, 0.323926,
		20.341839, 20.440872, 30.717224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051352, 20.706709, 30.272276>,  <20.778490, 19.942957, 30.490477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051352, 20.706709, 30.272276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.850296, 20.619408, 30.606873>,  <20.729662, 20.567026, 30.807631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.850296, 20.619408, 30.606873>,  <21.051352, 20.706709, 30.272276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.850296, 20.619408, 30.606873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749750, 0.371659, 0.547490,
		-0.430381, 0.902350, -0.023176,
		-0.502641, -0.218253, 0.836491,
		20.699503, 20.553932, 30.857821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.001884, 21.318111, 30.691975>,  <21.051352, 20.706709, 30.272276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.001884, 21.318111, 30.691975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.986803, 20.994230, 30.926226>,  <20.977755, 20.799902, 31.066776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.986803, 20.994230, 30.926226>,  <21.001884, 21.318111, 30.691975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.986803, 20.994230, 30.926226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769300, 0.350509, 0.534155,
		-0.637774, 0.470662, 0.609690,
		-0.037705, -0.809704, 0.585626,
		20.975492, 20.751320, 31.101913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680563, 21.681751, 31.206167>,  <21.001884, 21.318111, 30.691975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680563, 21.681751, 31.206167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752447, 22.046631, 31.058874>,  <20.795578, 22.265560, 30.970499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752447, 22.046631, 31.058874>,  <20.680563, 21.681751, 31.206167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752447, 22.046631, 31.058874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397897, -0.274933, -0.875266,
		-0.899657, 0.303811, 0.313555,
		0.179708, 0.912201, -0.368231,
		20.806360, 22.320292, 30.948404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118530, 21.926416, 30.827051>,  <20.680563, 21.681751, 31.206167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118530, 21.926416, 30.827051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420050, 22.136623, 30.669256>,  <20.600962, 22.262747, 30.574579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420050, 22.136623, 30.669256>,  <20.118530, 21.926416, 30.827051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.420050, 22.136623, 30.669256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286845, -0.276962, -0.917067,
		-0.591191, 0.804441, -0.058033,
		0.753799, 0.525515, -0.394487,
		20.646189, 22.294277, 30.550909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759182, 22.281351, 30.267946>,  <20.118530, 21.926416, 30.827051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759182, 22.281351, 30.267946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.149782, 22.281509, 30.181736>,  <20.384142, 22.281605, 30.130011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.149782, 22.281509, 30.181736>,  <19.759182, 22.281351, 30.267946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.149782, 22.281509, 30.181736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208758, -0.246872, -0.946295,
		-0.053580, 0.969048, -0.240988,
		0.976499, 0.000394, -0.215524,
		20.442732, 22.281628, 30.117079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925032, 22.833937, 29.769047>,  <19.759182, 22.281351, 30.267946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.925032, 22.833937, 29.769047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209665, 22.553499, 29.750637>,  <20.380445, 22.385237, 29.739592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209665, 22.553499, 29.750637>,  <19.925032, 22.833937, 29.769047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209665, 22.553499, 29.750637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263083, -0.205130, -0.942714,
		0.651488, 0.682928, -0.330412,
		0.711584, -0.701092, -0.046026,
		20.423140, 22.343172, 29.736830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300385, 22.962666, 29.120527>,  <19.925032, 22.833937, 29.769047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300385, 22.962666, 29.120527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.421288, 22.592833, 29.213293>,  <20.493830, 22.370932, 29.268951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.421288, 22.592833, 29.213293>,  <20.300385, 22.962666, 29.120527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.421288, 22.592833, 29.213293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239231, -0.309085, -0.920454,
		0.922718, 0.222734, -0.314613,
		0.302258, -0.924584, 0.231913,
		20.511965, 22.315456, 29.282867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733475, 22.716116, 28.634548>,  <20.300385, 22.962666, 29.120527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733475, 22.716116, 28.634548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.668110, 22.351820, 28.786257>,  <20.628891, 22.133242, 28.877281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.668110, 22.351820, 28.786257>,  <20.733475, 22.716116, 28.634548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.668110, 22.351820, 28.786257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244972, -0.334940, -0.909837,
		0.955660, -0.241590, -0.168373,
		-0.163412, -0.910741, 0.379271,
		20.619085, 22.078598, 28.900038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070889, 22.357080, 28.140306>,  <20.733475, 22.716116, 28.634548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070889, 22.357080, 28.140306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.796297, 22.116522, 28.303801>,  <20.631542, 21.972187, 28.401897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.796297, 22.116522, 28.303801>,  <21.070889, 22.357080, 28.140306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.796297, 22.116522, 28.303801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423872, -0.125764, -0.896948,
		0.590828, -0.788989, -0.168582,
		-0.686480, -0.601399, 0.408735,
		20.590353, 21.936102, 28.426420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.067274, 21.799187, 27.576057>,  <21.070889, 22.357080, 28.140306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.067274, 21.799187, 27.576057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.751419, 21.724195, 27.809750>,  <20.561907, 21.679201, 27.949965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.751419, 21.724195, 27.809750>,  <21.067274, 21.799187, 27.576057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.751419, 21.724195, 27.809750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560880, -0.165508, -0.811185,
		0.248773, -0.968225, 0.025539,
		-0.789636, -0.187477, 0.584232,
		20.514528, 21.667953, 27.985020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790371, 21.160732, 27.346117>,  <21.067274, 21.799187, 27.576057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790371, 21.160732, 27.346117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479959, 21.352007, 27.510612>,  <20.293713, 21.466772, 27.609310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479959, 21.352007, 27.510612>,  <20.790371, 21.160732, 27.346117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479959, 21.352007, 27.510612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587659, -0.311477, -0.746752,
		-0.228997, -0.821168, 0.522727,
		-0.776026, 0.478189, 0.411239,
		20.247152, 21.495462, 27.633984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154253, 20.683260, 27.452883>,  <20.790371, 21.160732, 27.346117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154253, 20.683260, 27.452883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033920, 21.064663, 27.445644>,  <19.961721, 21.293505, 27.441301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033920, 21.064663, 27.445644>,  <20.154253, 20.683260, 27.452883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.033920, 21.064663, 27.445644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644349, -0.217206, -0.733236,
		-0.703075, -0.208921, 0.679733,
		-0.300831, 0.953506, -0.018094,
		19.943670, 21.350716, 27.440216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433437, 20.615955, 27.361843>,  <20.154253, 20.683260, 27.452883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433437, 20.615955, 27.361843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.529051, 20.987226, 27.247757>,  <19.586420, 21.209990, 27.179306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.529051, 20.987226, 27.247757>,  <19.433437, 20.615955, 27.361843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.529051, 20.987226, 27.247757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701314, -0.038125, -0.711832,
		-0.671581, 0.370179, 0.641831,
		0.239035, 0.928178, -0.285216,
		19.600761, 21.265680, 27.162191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837048, 20.867252, 27.146814>,  <19.433437, 20.615955, 27.361843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837048, 20.867252, 27.146814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.089294, 21.142906, 27.004032>,  <19.240643, 21.308298, 26.918364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.089294, 21.142906, 27.004032>,  <18.837048, 20.867252, 27.146814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089294, 21.142906, 27.004032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518023, 0.031272, -0.854795,
		-0.577906, 0.723959, 0.376708,
		0.630617, 0.689134, -0.356955,
		19.278479, 21.349646, 26.896946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.434923, 21.370218, 26.779669>,  <18.837048, 20.867252, 27.146814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.434923, 21.370218, 26.779669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804716, 21.404804, 26.631155>,  <19.026592, 21.425556, 26.542046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804716, 21.404804, 26.631155>,  <18.434923, 21.370218, 26.779669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804716, 21.404804, 26.631155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366659, -0.064951, -0.928085,
		-0.104361, 0.994135, -0.028343,
		0.924484, 0.086464, -0.371287,
		19.082062, 21.430744, 26.519770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484785, 21.921885, 26.295462>,  <18.434923, 21.370218, 26.779669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484785, 21.921885, 26.295462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.805861, 21.701027, 26.205280>,  <18.998505, 21.568512, 26.151171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.805861, 21.701027, 26.205280>,  <18.484785, 21.921885, 26.295462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805861, 21.701027, 26.205280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313507, -0.069050, -0.947072,
		0.507354, 0.830884, -0.228527,
		0.802686, -0.552146, -0.225455,
		19.046667, 21.535383, 26.137644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628445, 22.268145, 25.661821>,  <18.484785, 21.921885, 26.295462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628445, 22.268145, 25.661821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783398, 21.899448, 25.654510>,  <18.876369, 21.678230, 25.650124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783398, 21.899448, 25.654510>,  <18.628445, 22.268145, 25.661821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783398, 21.899448, 25.654510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208481, -0.068271, -0.975641,
		0.898037, 0.381756, -0.218612,
		0.387382, -0.921738, -0.018279,
		18.899612, 21.622927, 25.649027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940857, 22.197559, 25.034710>,  <18.628445, 22.268145, 25.661821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940857, 22.197559, 25.034710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.918207, 21.813745, 25.145044>,  <18.904617, 21.583458, 25.211245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.918207, 21.813745, 25.145044>,  <18.940857, 22.197559, 25.034710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918207, 21.813745, 25.145044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157148, -0.264272, -0.951559,
		0.985950, -0.097228, -0.135825,
		-0.056623, -0.959535, 0.275838,
		18.901220, 21.525885, 25.227797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.192142, 21.834942, 24.471842>,  <18.940857, 22.197559, 25.034710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.192142, 21.834942, 24.471842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.037439, 21.527746, 24.676043>,  <18.944618, 21.343430, 24.798563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.037439, 21.527746, 24.676043>,  <19.192142, 21.834942, 24.471842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.037439, 21.527746, 24.676043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211902, -0.464759, -0.859707,
		0.897505, -0.440676, 0.017011,
		-0.386758, -0.767987, 0.510504,
		18.921412, 21.297350, 24.829193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511419, 21.193563, 24.248064>,  <19.192142, 21.834942, 24.471842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511419, 21.193563, 24.248064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158363, 21.098948, 24.410542>,  <18.946529, 21.042177, 24.508028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158363, 21.098948, 24.410542>,  <19.511419, 21.193563, 24.248064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.158363, 21.098948, 24.410542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248455, -0.498791, -0.830348,
		0.399015, -0.833821, 0.381484,
		-0.882642, -0.236540, 0.406192,
		18.893570, 21.027987, 24.532398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.412205, 20.466795, 24.220646>,  <19.511419, 21.193563, 24.248064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.412205, 20.466795, 24.220646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040276, 20.610989, 24.250246>,  <18.817118, 20.697506, 24.268007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040276, 20.610989, 24.250246>,  <19.412205, 20.466795, 24.220646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040276, 20.610989, 24.250246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247031, -0.462367, -0.851582,
		-0.272768, -0.810103, 0.518971,
		-0.929824, 0.360486, 0.074002,
		18.761328, 20.719135, 24.272448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054131, 19.878986, 24.031885>,  <19.412205, 20.466795, 24.220646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054131, 19.878986, 24.031885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781954, 20.169741, 23.994709>,  <18.618649, 20.344193, 23.972403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781954, 20.169741, 23.994709>,  <19.054131, 19.878986, 24.031885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781954, 20.169741, 23.994709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328515, -0.415949, -0.847976,
		-0.655040, -0.546466, 0.521822,
		-0.680441, 0.726885, -0.092941,
		18.577822, 20.387806, 23.966827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433102, 19.599966, 23.922960>,  <19.054131, 19.878986, 24.031885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433102, 19.599966, 23.922960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402052, 19.967194, 23.767460>,  <18.383423, 20.187531, 23.674160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402052, 19.967194, 23.767460>,  <18.433102, 19.599966, 23.922960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402052, 19.967194, 23.767460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471058, -0.377431, -0.797276,
		-0.878680, 0.121236, 0.461761,
		-0.077625, 0.918067, -0.388750,
		18.378765, 20.242615, 23.650835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687738, 19.645990, 23.644630>,  <18.433102, 19.599966, 23.922960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687738, 19.645990, 23.644630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904987, 19.933895, 23.471674>,  <18.035337, 20.106638, 23.367899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904987, 19.933895, 23.471674>,  <17.687738, 19.645990, 23.644630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904987, 19.933895, 23.471674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351964, -0.272383, -0.895505,
		-0.762326, 0.638555, 0.105392,
		0.543122, 0.719760, -0.432393,
		18.067924, 20.149824, 23.341955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193205, 20.058393, 23.205769>,  <17.687738, 19.645990, 23.644630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.193205, 20.058393, 23.205769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566519, 20.098589, 23.067850>,  <17.790506, 20.122705, 22.985100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566519, 20.098589, 23.067850>,  <17.193205, 20.058393, 23.205769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.566519, 20.098589, 23.067850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330357, -0.136385, -0.933950,
		-0.140876, 0.985546, -0.094089,
		0.933284, 0.100488, -0.344796,
		17.846504, 20.128735, 22.964411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035929, 20.203983, 22.561031>,  <17.193205, 20.058393, 23.205769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035929, 20.203983, 22.561031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430513, 20.138735, 22.554295>,  <17.667265, 20.099585, 22.550253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430513, 20.138735, 22.554295>,  <17.035929, 20.203983, 22.561031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430513, 20.138735, 22.554295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065876, -0.300131, -0.951621,
		0.150177, 0.939847, -0.306814,
		0.986462, -0.163123, -0.016841,
		17.726452, 20.089798, 22.549242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196177, 20.458179, 21.926424>,  <17.035929, 20.203983, 22.561031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196177, 20.458179, 21.926424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492668, 20.205833, 22.018150>,  <17.670563, 20.054426, 22.073185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492668, 20.205833, 22.018150>,  <17.196177, 20.458179, 21.926424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492668, 20.205833, 22.018150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019432, -0.321311, -0.946774,
		0.670970, 0.706234, -0.225906,
		0.741230, -0.630867, 0.229314,
		17.715036, 20.016573, 22.086945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.775406, 20.564297, 21.426685>,  <17.196177, 20.458179, 21.926424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.775406, 20.564297, 21.426685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820238, 20.190653, 21.562258>,  <17.847137, 19.966467, 21.643600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820238, 20.190653, 21.562258>,  <17.775406, 20.564297, 21.426685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.820238, 20.190653, 21.562258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296046, -0.294202, -0.908737,
		0.948575, 0.202189, 0.243566,
		0.112079, -0.934112, 0.338930,
		17.853861, 19.910419, 21.663937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.322893, 20.365870, 21.162914>,  <17.775406, 20.564297, 21.426685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.322893, 20.365870, 21.162914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.184998, 20.003860, 21.262585>,  <18.102261, 19.786655, 21.322388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.184998, 20.003860, 21.262585>,  <18.322893, 20.365870, 21.162914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.184998, 20.003860, 21.262585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394177, -0.380481, -0.836575,
		0.851926, -0.190181, 0.487906,
		-0.344740, -0.905022, 0.249177,
		18.081575, 19.732353, 21.337337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857815, 19.941509, 21.068773>,  <18.322893, 20.365870, 21.162914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857815, 19.941509, 21.068773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526793, 19.717779, 21.088001>,  <18.328180, 19.583542, 21.099539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526793, 19.717779, 21.088001>,  <18.857815, 19.941509, 21.068773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526793, 19.717779, 21.088001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157481, -0.313487, -0.936443,
		0.538845, -0.767387, 0.347510,
		-0.827554, -0.559324, 0.048072,
		18.278526, 19.549982, 21.102423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037004, 19.299540, 20.870926>,  <18.857815, 19.941509, 21.068773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037004, 19.299540, 20.870926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.642138, 19.332394, 20.816141>,  <18.405218, 19.352106, 20.783270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.642138, 19.332394, 20.816141>,  <19.037004, 19.299540, 20.870926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.642138, 19.332394, 20.816141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092260, -0.406721, -0.908882,
		-0.130355, -0.909853, 0.393924,
		-0.987165, 0.082134, -0.136961,
		18.345987, 19.357035, 20.775053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.867311, 18.553528, 20.852961>,  <19.037004, 19.299540, 20.870926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.867311, 18.553528, 20.852961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629534, 18.817932, 20.669788>,  <18.486866, 18.976576, 20.559885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629534, 18.817932, 20.669788>,  <18.867311, 18.553528, 20.852961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629534, 18.817932, 20.669788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211816, -0.420643, -0.882153,
		-0.775738, -0.621388, 0.110036,
		-0.594446, 0.661012, -0.457929,
		18.451200, 19.016235, 20.532410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391571, 18.133928, 20.396534>,  <18.867311, 18.553528, 20.852961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391571, 18.133928, 20.396534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.379869, 18.509941, 20.260599>,  <18.372849, 18.735548, 20.179039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.379869, 18.509941, 20.260599>,  <18.391571, 18.133928, 20.396534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379869, 18.509941, 20.260599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045561, -0.340882, -0.939001,
		-0.998533, -0.011984, 0.052801,
		-0.029252, 0.940030, -0.339836,
		18.371094, 18.791950, 20.158648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818787, 18.184910, 19.955276>,  <18.391571, 18.133928, 20.396534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818787, 18.184910, 19.955276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059187, 18.477139, 19.825624>,  <18.203428, 18.652475, 19.747833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059187, 18.477139, 19.825624>,  <17.818787, 18.184910, 19.955276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059187, 18.477139, 19.825624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024783, -0.422382, -0.906079,
		-0.798863, 0.536523, -0.271959,
		0.601003, 0.730573, -0.324129,
		18.239489, 18.696310, 19.728386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.659115, 18.297823, 19.249945>,  <17.818787, 18.184910, 19.955276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.659115, 18.297823, 19.249945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994156, 18.511219, 19.296955>,  <18.195181, 18.639257, 19.325161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994156, 18.511219, 19.296955>,  <17.659115, 18.297823, 19.249945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994156, 18.511219, 19.296955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234808, -0.157346, -0.959222,
		-0.493244, 0.831042, -0.257061,
		0.837601, 0.533491, 0.117525,
		18.245436, 18.671267, 19.332212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652706, 18.721403, 18.688242>,  <17.659115, 18.297823, 19.249945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652706, 18.721403, 18.688242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038042, 18.762810, 18.787247>,  <18.269243, 18.787655, 18.846649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038042, 18.762810, 18.787247>,  <17.652706, 18.721403, 18.688242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038042, 18.762810, 18.787247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257688, -0.100237, -0.961015,
		-0.074673, 0.989564, -0.123238,
		0.963338, 0.103519, 0.247514,
		18.327044, 18.793865, 18.861502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.770279, 19.148582, 18.278191>,  <17.652706, 18.721403, 18.688242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.770279, 19.148582, 18.278191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121284, 18.974848, 18.359503>,  <18.331888, 18.870607, 18.408289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121284, 18.974848, 18.359503>,  <17.770279, 19.148582, 18.278191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121284, 18.974848, 18.359503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226165, 0.001039, -0.974088,
		0.422873, 0.900749, 0.099144,
		0.877512, -0.434339, 0.203279,
		18.384539, 18.844545, 18.420486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330128, 19.540146, 17.881386>,  <17.770279, 19.148582, 18.278191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330128, 19.540146, 17.881386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.484127, 19.180248, 17.963593>,  <18.576527, 18.964310, 18.012917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.484127, 19.180248, 17.963593>,  <18.330128, 19.540146, 17.881386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484127, 19.180248, 17.963593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333171, -0.072173, -0.940100,
		0.860682, 0.430409, 0.271982,
		0.384998, -0.899744, 0.205517,
		18.599627, 18.910324, 18.025248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922615, 19.535898, 17.417904>,  <18.330128, 19.540146, 17.881386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922615, 19.535898, 17.417904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.907806, 19.149597, 17.520630>,  <18.898922, 18.917816, 17.582266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.907806, 19.149597, 17.520630>,  <18.922615, 19.535898, 17.417904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.907806, 19.149597, 17.520630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410404, -0.249012, -0.877247,
		0.911152, 0.072923, 0.405566,
		-0.037020, -0.965751, 0.256816,
		18.896700, 18.859871, 17.597675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514849, 19.273548, 17.280218>,  <18.922615, 19.535898, 17.417904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514849, 19.273548, 17.280218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.259640, 18.965649, 17.272064>,  <19.106514, 18.780909, 17.267172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.259640, 18.965649, 17.272064>,  <19.514849, 19.273548, 17.280218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259640, 18.965649, 17.272064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336898, -0.255244, -0.906284,
		0.692406, -0.585099, 0.422178,
		-0.638024, -0.769747, -0.020386,
		19.068233, 18.734724, 17.265949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.901850, 18.740395, 16.967091>,  <19.514849, 19.273548, 17.280218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.901850, 18.740395, 16.967091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518272, 18.641174, 16.912104>,  <19.288126, 18.581642, 16.879112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518272, 18.641174, 16.912104>,  <19.901850, 18.740395, 16.967091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518272, 18.641174, 16.912104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146415, -0.017901, -0.989061,
		0.242875, -0.968582, 0.053484,
		-0.958944, -0.248050, -0.137468,
		19.230589, 18.566759, 16.870863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970314, 18.188595, 16.613493>,  <19.901850, 18.740395, 16.967091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970314, 18.188595, 16.613493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.596104, 18.313892, 16.548168>,  <19.371578, 18.389071, 16.508974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.596104, 18.313892, 16.548168>,  <19.970314, 18.188595, 16.613493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.596104, 18.313892, 16.548168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121543, -0.148655, -0.981391,
		-0.331694, -0.937965, 0.100997,
		-0.935525, 0.313246, -0.163311,
		19.315447, 18.407866, 16.499174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.762392, 17.842621, 16.090397>,  <19.970314, 18.188595, 16.613493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.762392, 17.842621, 16.090397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.499235, 18.142853, 16.065720>,  <19.341341, 18.322992, 16.050913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.499235, 18.142853, 16.065720>,  <19.762392, 17.842621, 16.090397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.499235, 18.142853, 16.065720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081897, -0.152736, -0.984868,
		-0.748644, -0.642886, 0.161954,
		-0.657894, 0.750579, -0.061694,
		19.301867, 18.368027, 16.047211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.136862, 17.494507, 15.503313>,  <19.762392, 17.842621, 16.090397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.136862, 17.494507, 15.503313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255980, 17.407085, 15.131603>,  <20.327450, 17.354631, 14.908577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255980, 17.407085, 15.131603>,  <20.136862, 17.494507, 15.503313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.255980, 17.407085, 15.131603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174016, 0.969558, -0.172264,
		0.938636, -0.110410, 0.326760,
		0.297793, -0.218555, -0.929276,
		20.345318, 17.341518, 14.852820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912590, 17.338896, 15.621950>,  <20.136862, 17.494507, 15.503313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912590, 17.338896, 15.621950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841406, 17.132795, 15.957294>,  <20.798695, 17.009134, 16.158499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841406, 17.132795, 15.957294>,  <20.912590, 17.338896, 15.621950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.841406, 17.132795, 15.957294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572266, -0.747267, -0.337793,
		0.800526, 0.419651, 0.427845,
		-0.177960, -0.515253, 0.838358,
		20.788017, 16.978220, 16.208801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.481672, 17.150463, 15.966753>,  <20.912590, 17.338896, 15.621950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.481672, 17.150463, 15.966753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252190, 16.850359, 16.098190>,  <21.114500, 16.670298, 16.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252190, 16.850359, 16.098190>,  <21.481672, 17.150463, 15.966753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.252190, 16.850359, 16.098190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676993, -0.660174, -0.325347,
		0.461022, 0.035802, 0.886666,
		-0.573706, -0.750259, 0.328592,
		21.080078, 16.625280, 16.196768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106405, 16.668726, 16.095274>,  <21.481672, 17.150463, 15.966753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106405, 16.668726, 16.095274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.770685, 16.452353, 16.073492>,  <21.569252, 16.322529, 16.060423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.770685, 16.452353, 16.073492>,  <22.106405, 16.668726, 16.095274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.770685, 16.452353, 16.073492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525627, -0.781785, -0.335451,
		0.138885, -0.310168, 0.940482,
		-0.839301, -0.540932, -0.054455,
		21.518894, 16.290073, 16.057156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.263266, 16.091969, 16.499580>,  <22.106405, 16.668726, 16.095274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.263266, 16.091969, 16.499580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000120, 16.019438, 16.207188>,  <21.842232, 15.975920, 16.031752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000120, 16.019438, 16.207188>,  <22.263266, 16.091969, 16.499580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000120, 16.019438, 16.207188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564499, -0.761214, -0.319210,
		-0.498552, -0.622635, 0.603135,
		-0.657866, -0.181326, -0.730981,
		21.802761, 15.965040, 15.987893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.068684, 15.345178, 16.478449>,  <22.263266, 16.091969, 16.499580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.068684, 15.345178, 16.478449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.072350, 15.527641, 16.122509>,  <22.074549, 15.637119, 15.908945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.072350, 15.527641, 16.122509>,  <22.068684, 15.345178, 16.478449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.072350, 15.527641, 16.122509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675566, -0.658916, -0.330817,
		-0.737242, -0.598121, -0.314205,
		0.009166, 0.456159, -0.889851,
		22.075100, 15.664489, 15.855554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.015839, 14.838210, 15.955302>,  <22.068684, 15.345178, 16.478449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.015839, 14.838210, 15.955302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194542, 15.150759, 15.781008>,  <22.301764, 15.338287, 15.676431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194542, 15.150759, 15.781008>,  <22.015839, 14.838210, 15.955302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194542, 15.150759, 15.781008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616890, -0.621793, -0.482515,
		-0.647961, -0.053233, -0.759811,
		0.446759, 0.781371, -0.435736,
		22.328569, 15.385170, 15.650287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.301352, 14.917050, 15.913406>,  <22.015839, 14.838210, 15.955302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.301352, 14.917050, 15.913406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.043848, 15.017376, 16.202589>,  <20.889345, 15.077571, 16.376099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.043848, 15.017376, 16.202589>,  <21.301352, 14.917050, 15.913406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043848, 15.017376, 16.202589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730807, 0.078659, -0.678037,
		-0.226928, -0.964834, 0.132659,
		-0.643759, 0.250814, 0.722957,
		20.850719, 15.092620, 16.419476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656525, 14.552999, 15.740229>,  <21.301352, 14.917050, 15.913406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656525, 14.552999, 15.740229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.535721, 14.859107, 15.967613>,  <20.463238, 15.042772, 16.104044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.535721, 14.859107, 15.967613>,  <20.656525, 14.552999, 15.740229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.535721, 14.859107, 15.967613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679290, 0.245619, -0.691546,
		-0.668846, -0.595004, 0.445663,
		-0.302009, 0.765272, 0.568462,
		20.445118, 15.088689, 16.138151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.980459, 14.551321, 15.714036>,  <20.656525, 14.552999, 15.740229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.980459, 14.551321, 15.714036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.054729, 14.931534, 15.813646>,  <20.099291, 15.159661, 15.873412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.054729, 14.931534, 15.813646>,  <19.980459, 14.551321, 15.714036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.054729, 14.931534, 15.813646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642485, 0.309193, -0.701151,
		-0.743464, -0.029809, 0.668112,
		0.185675, 0.950532, 0.249025,
		20.110432, 15.216694, 15.888354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289581, 14.911036, 15.736661>,  <19.980459, 14.551321, 15.714036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289581, 14.911036, 15.736661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562405, 15.202714, 15.714486>,  <19.726099, 15.377721, 15.701181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562405, 15.202714, 15.714486>,  <19.289581, 14.911036, 15.736661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562405, 15.202714, 15.714486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560508, 0.472572, -0.680078,
		-0.469712, 0.494925, 0.731040,
		0.682057, 0.729195, -0.055436,
		19.767021, 15.421473, 15.697855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.043343, 15.555661, 16.008497>,  <19.289581, 14.911036, 15.736661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.043343, 15.555661, 16.008497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330881, 15.628068, 15.740022>,  <19.503405, 15.671512, 15.578937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330881, 15.628068, 15.740022>,  <19.043343, 15.555661, 16.008497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330881, 15.628068, 15.740022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652933, 0.507217, -0.562503,
		0.238615, 0.842594, 0.482803,
		0.718847, 0.181016, -0.671187,
		19.546535, 15.682373, 15.538666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715649, 16.080046, 15.597843>,  <19.043343, 15.555661, 16.008497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715649, 16.080046, 15.597843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.035952, 16.006859, 15.369699>,  <19.228134, 15.962947, 15.232813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.035952, 16.006859, 15.369699>,  <18.715649, 16.080046, 15.597843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.035952, 16.006859, 15.369699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486321, 0.357296, -0.797391,
		0.349683, 0.915895, 0.197127,
		0.800758, -0.182967, -0.570359,
		19.276178, 15.951969, 15.198592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901510, 16.757633, 15.292538>,  <18.715649, 16.080046, 15.597843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901510, 16.757633, 15.292538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.063643, 16.482485, 15.051693>,  <19.160921, 16.317396, 14.907186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.063643, 16.482485, 15.051693>,  <18.901510, 16.757633, 15.292538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063643, 16.482485, 15.051693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452272, 0.421500, -0.785995,
		0.794454, 0.590907, -0.140259,
		0.405331, -0.687871, -0.602113,
		19.185242, 16.276123, 14.871059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288467, 17.073811, 14.766549>,  <18.901510, 16.757633, 15.292538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288467, 17.073811, 14.766549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.187071, 16.725693, 14.597633>,  <19.126234, 16.516821, 14.496284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.187071, 16.725693, 14.597633>,  <19.288467, 17.073811, 14.766549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.187071, 16.725693, 14.597633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247574, 0.480377, -0.841395,
		0.935121, -0.108737, -0.337233,
		-0.253489, -0.870296, -0.422290,
		19.111023, 16.464603, 14.470946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.559673, 17.079931, 14.111332>,  <19.288467, 17.073811, 14.766549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.559673, 17.079931, 14.111332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.288095, 16.788696, 14.073552>,  <19.125149, 16.613955, 14.050884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.288095, 16.788696, 14.073552>,  <19.559673, 17.079931, 14.111332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.288095, 16.788696, 14.073552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140413, 0.255039, -0.956681,
		0.720637, -0.636273, -0.275391,
		-0.678946, -0.728088, -0.094450,
		19.084412, 16.570271, 14.045218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.633503, 16.850307, 13.445676>,  <19.559673, 17.079931, 14.111332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.633503, 16.850307, 13.445676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268372, 16.731949, 13.558240>,  <19.049294, 16.660934, 13.625778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268372, 16.731949, 13.558240>,  <19.633503, 16.850307, 13.445676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268372, 16.731949, 13.558240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356487, 0.241343, -0.902591,
		0.199152, -0.924231, -0.325786,
		-0.912829, -0.295891, 0.281412,
		18.994524, 16.643179, 13.642663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259912, 16.550602, 12.866137>,  <19.633503, 16.850307, 13.445676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.259912, 16.550602, 12.866137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.945181, 16.582415, 13.110948>,  <18.756342, 16.601501, 13.257834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.945181, 16.582415, 13.110948>,  <19.259912, 16.550602, 12.866137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.945181, 16.582415, 13.110948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595316, 0.163766, -0.786625,
		-0.162791, -0.983288, -0.081509,
		-0.786828, 0.079532, 0.612027,
		18.709133, 16.606274, 13.294556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.696270, 16.167900, 12.482237>,  <19.259912, 16.550602, 12.866137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.696270, 16.167900, 12.482237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.519323, 16.416941, 12.740438>,  <18.413155, 16.566366, 12.895359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.519323, 16.416941, 12.740438>,  <18.696270, 16.167900, 12.482237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.519323, 16.416941, 12.740438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627487, 0.299374, -0.718774,
		-0.640758, -0.723008, 0.258242,
		-0.442368, 0.622603, 0.645504,
		18.386614, 16.603722, 12.934090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075027, 16.042433, 12.406488>,  <18.696270, 16.167900, 12.482237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075027, 16.042433, 12.406488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065716, 16.410259, 12.563386>,  <18.060129, 16.630955, 12.657524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065716, 16.410259, 12.563386>,  <18.075027, 16.042433, 12.406488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065716, 16.410259, 12.563386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540699, 0.318434, -0.778617,
		-0.840894, -0.230212, 0.489796,
		-0.023279, 0.919567, 0.392244,
		18.058731, 16.686129, 12.681059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337063, 16.320755, 12.623134>,  <18.075027, 16.042433, 12.406488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337063, 16.320755, 12.623134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560480, 16.643093, 12.544500>,  <17.694530, 16.836496, 12.497320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560480, 16.643093, 12.544500>,  <17.337063, 16.320755, 12.623134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560480, 16.643093, 12.544500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679340, 0.308425, -0.665861,
		-0.475949, 0.505458, 0.719711,
		0.558542, 0.805845, -0.196583,
		17.728043, 16.884846, 12.485525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799681, 16.764894, 12.235532>,  <17.337063, 16.320755, 12.623134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799681, 16.764894, 12.235532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.147038, 16.956738, 12.185138>,  <17.355452, 17.071844, 12.154902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.147038, 16.956738, 12.185138>,  <16.799681, 16.764894, 12.235532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147038, 16.956738, 12.185138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319703, 0.347284, -0.881581,
		-0.379062, 0.805834, 0.454910,
		0.868391, 0.479609, -0.125985,
		17.407555, 17.100620, 12.147342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707676, 17.469179, 12.014649>,  <16.799681, 16.764894, 12.235532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707676, 17.469179, 12.014649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064873, 17.379187, 11.858725>,  <17.279190, 17.325191, 11.765170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064873, 17.379187, 11.858725>,  <16.707676, 17.469179, 12.014649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064873, 17.379187, 11.858725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241034, 0.492375, -0.836343,
		0.380094, 0.840803, 0.385458,
		0.892990, -0.224980, -0.389812,
		17.332769, 17.311693, 11.741781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722479, 17.901073, 11.515802>,  <16.707676, 17.469179, 12.014649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722479, 17.901073, 11.515802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061972, 17.717567, 11.410587>,  <17.265667, 17.607464, 11.347458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061972, 17.717567, 11.410587>,  <16.722479, 17.901073, 11.515802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061972, 17.717567, 11.410587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204930, 0.173207, -0.963329,
		0.487502, 0.871512, 0.052991,
		0.848732, -0.458766, -0.263038,
		17.316591, 17.579937, 11.331676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085266, 18.295378, 11.142518>,  <16.722479, 17.901073, 11.515802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085266, 18.295378, 11.142518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195988, 17.933552, 11.012815>,  <17.262421, 17.716457, 10.934993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195988, 17.933552, 11.012815>,  <17.085266, 18.295378, 11.142518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195988, 17.933552, 11.012815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170156, 0.285971, -0.943010,
		0.945741, 0.316204, -0.074758,
		0.276804, -0.904564, -0.324259,
		17.279030, 17.662182, 10.915537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.385994, 18.455738, 10.533247>,  <17.085266, 18.295378, 11.142518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.385994, 18.455738, 10.533247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316328, 18.062929, 10.504136>,  <17.274529, 17.827244, 10.486670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316328, 18.062929, 10.504136>,  <17.385994, 18.455738, 10.533247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316328, 18.062929, 10.504136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264800, 0.117891, -0.957070,
		0.948445, -0.147418, -0.280572,
		-0.174166, -0.982023, -0.072777,
		17.264078, 17.768322, 10.482303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.531462, 18.387058, 9.879248>,  <17.385994, 18.455738, 10.533247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.531462, 18.387058, 9.879248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350407, 18.036348, 9.944220>,  <17.241774, 17.825922, 9.983203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350407, 18.036348, 9.944220>,  <17.531462, 18.387058, 9.879248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350407, 18.036348, 9.944220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005203, -0.184753, -0.982771,
		0.891680, -0.443993, 0.088187,
		-0.452637, -0.876776, 0.162430,
		17.214615, 17.773315, 9.992949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982656, 17.806147, 9.823441>,  <17.531462, 18.387058, 9.879248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.982656, 17.806147, 9.823441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.600643, 17.739403, 9.725401>,  <17.371435, 17.699356, 9.666577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.600643, 17.739403, 9.725401>,  <17.982656, 17.806147, 9.823441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600643, 17.739403, 9.725401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291742, -0.381261, -0.877226,
		0.052926, -0.909284, 0.412796,
		-0.955031, -0.166858, -0.245098,
		17.314135, 17.689346, 9.651872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398340, 18.366270, 9.862577>,  <17.982656, 17.806147, 9.823441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398340, 18.366270, 9.862577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681980, 18.284435, 9.592668>,  <18.852163, 18.235334, 9.430721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681980, 18.284435, 9.592668>,  <18.398340, 18.366270, 9.862577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.681980, 18.284435, 9.592668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665313, -0.122815, 0.736393,
		-0.233529, -0.971113, 0.049026,
		0.709100, -0.204587, -0.674775,
		18.894711, 18.223059, 9.390235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.320328, 18.757763, 9.211036>,  <18.398340, 18.366270, 9.862577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.320328, 18.757763, 9.211036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208879, 18.710173, 8.829834>,  <18.142012, 18.681618, 8.601113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208879, 18.710173, 8.829834>,  <18.320328, 18.757763, 9.211036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208879, 18.710173, 8.829834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909400, 0.286384, -0.301624,
		0.308811, -0.950699, 0.028405,
		-0.278618, -0.118976, -0.953004,
		18.125294, 18.674480, 8.543933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539867, 18.176958, 8.830301>,  <18.320328, 18.757763, 9.211036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539867, 18.176958, 8.830301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.482090, 18.487883, 8.585377>,  <18.447424, 18.674437, 8.438422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.482090, 18.487883, 8.585377>,  <18.539867, 18.176958, 8.830301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482090, 18.487883, 8.585377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964523, -0.027586, -0.262552,
		-0.220976, -0.628513, -0.745749,
		-0.144445, 0.777310, -0.612311,
		18.438757, 18.721075, 8.401683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.933813, 17.549063, 8.535655>,  <18.539867, 18.176958, 8.830301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.933813, 17.549063, 8.535655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226192, 17.782747, 8.394567>,  <19.401621, 17.922958, 8.309915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226192, 17.782747, 8.394567>,  <18.933813, 17.549063, 8.535655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226192, 17.782747, 8.394567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679908, -0.579032, 0.449941,
		0.058625, -0.568701, -0.820452,
		0.730950, 0.584210, -0.352719,
		19.445477, 17.958010, 8.288752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.484028, 17.255701, 8.068098>,  <18.933813, 17.549063, 8.535655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.484028, 17.255701, 8.068098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650040, 17.551083, 8.280679>,  <19.749647, 17.728312, 8.408227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650040, 17.551083, 8.280679>,  <19.484028, 17.255701, 8.068098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650040, 17.551083, 8.280679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574416, -0.665671, 0.476370,
		0.705548, 0.107568, -0.700450,
		0.415028, 0.738452, 0.531452,
		19.774548, 17.772617, 8.440114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206654, 17.219381, 7.966557>,  <19.484028, 17.255701, 8.068098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206654, 17.219381, 7.966557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.112265, 17.358721, 8.329428>,  <20.055632, 17.442326, 8.547151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.112265, 17.358721, 8.329428>,  <20.206654, 17.219381, 7.966557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.112265, 17.358721, 8.329428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459982, -0.782291, 0.420044,
		0.855999, 0.516404, 0.024365,
		-0.235972, 0.348349, 0.907177,
		20.041473, 17.463226, 8.601581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.819628, 17.296921, 8.453137>,  <20.206654, 17.219381, 7.966557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.819628, 17.296921, 8.453137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473700, 17.219049, 8.638260>,  <20.266144, 17.172327, 8.749333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473700, 17.219049, 8.638260>,  <20.819628, 17.296921, 8.453137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473700, 17.219049, 8.638260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376427, -0.861379, 0.341072,
		0.332251, 0.469177, 0.818219,
		-0.864819, -0.194678, 0.462805,
		20.214254, 17.160646, 8.777102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945484, 17.071604, 9.165853>,  <20.819628, 17.296921, 8.453137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945484, 17.071604, 9.165853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585489, 16.929583, 9.064689>,  <20.369492, 16.844370, 9.003990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585489, 16.929583, 9.064689>,  <20.945484, 17.071604, 9.165853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585489, 16.929583, 9.064689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150510, -0.797591, 0.584119,
		-0.409110, 0.487634, 0.771260,
		-0.899987, -0.355051, -0.252909,
		20.315493, 16.823067, 8.988816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.828472, 16.484356, 9.559338>,  <20.945484, 17.071604, 9.165853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.828472, 16.484356, 9.559338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939035, 16.795317, 9.785346>,  <21.005373, 16.981894, 9.920951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939035, 16.795317, 9.785346>,  <20.828472, 16.484356, 9.559338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939035, 16.795317, 9.785346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170612, -0.618280, 0.767216,
		0.945775, -0.115664, -0.303531,
		0.276406, 0.777400, 0.565020,
		21.021957, 17.028538, 9.954852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520716, 16.474566, 9.800003>,  <20.828472, 16.484356, 9.559338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520716, 16.474566, 9.800003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332140, 16.710934, 10.061861>,  <21.218994, 16.852755, 10.218976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332140, 16.710934, 10.061861>,  <21.520716, 16.474566, 9.800003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332140, 16.710934, 10.061861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270010, -0.609951, 0.745020,
		0.839548, 0.527992, 0.128001,
		-0.471439, 0.590918, 0.654646,
		21.190708, 16.888208, 10.258255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.011097, 16.558867, 10.403701>,  <21.520716, 16.474566, 9.800003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.011097, 16.558867, 10.403701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.645216, 16.631950, 10.547887>,  <21.425688, 16.675800, 10.634398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.645216, 16.631950, 10.547887>,  <22.011097, 16.558867, 10.403701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.645216, 16.631950, 10.547887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191025, -0.590546, 0.784069,
		0.356128, 0.786048, 0.505273,
		-0.914704, 0.182709, 0.360465,
		21.370806, 16.686764, 10.656026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.062239, 16.779366, 11.087089>,  <22.011097, 16.558867, 10.403701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.062239, 16.779366, 11.087089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682549, 16.654644, 11.070343>,  <21.454735, 16.579811, 11.060296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682549, 16.654644, 11.070343>,  <22.062239, 16.779366, 11.087089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.682549, 16.654644, 11.070343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114530, -0.466426, 0.877114,
		-0.293012, 0.827783, 0.478454,
		-0.949224, -0.311803, -0.041863,
		21.397781, 16.561104, 11.057784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.763935, 16.846739, 11.721923>,  <22.062239, 16.779366, 11.087089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.763935, 16.846739, 11.721923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.525286, 16.570631, 11.558184>,  <21.382095, 16.404966, 11.459940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.525286, 16.570631, 11.558184>,  <21.763935, 16.846739, 11.721923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.525286, 16.570631, 11.558184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049976, -0.541044, 0.839508,
		-0.800962, 0.480414, 0.357298,
		-0.596626, -0.690270, -0.409347,
		21.346298, 16.363550, 11.435380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319107, 16.695391, 12.228743>,  <21.763935, 16.846739, 11.721923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319107, 16.695391, 12.228743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.312248, 16.383615, 11.978244>,  <21.308134, 16.196550, 11.827945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.312248, 16.383615, 11.978244>,  <21.319107, 16.695391, 12.228743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.312248, 16.383615, 11.978244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097746, -0.624646, 0.774767,
		-0.995064, -0.047929, 0.086897,
		-0.017146, -0.779436, -0.626247,
		21.307104, 16.149784, 11.790370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733831, 16.281479, 12.442487>,  <21.319107, 16.695391, 12.228743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733831, 16.281479, 12.442487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961298, 16.030567, 12.229643>,  <21.097778, 15.880020, 12.101936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961298, 16.030567, 12.229643>,  <20.733831, 16.281479, 12.442487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.961298, 16.030567, 12.229643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076792, -0.603577, 0.793598,
		-0.818977, -0.492153, -0.295063,
		0.568665, -0.627280, -0.532109,
		21.131897, 15.842383, 12.070010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430996, 15.677532, 12.665221>,  <20.733831, 16.281479, 12.442487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430996, 15.677532, 12.665221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.789845, 15.580095, 12.517797>,  <21.005154, 15.521633, 12.429341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.789845, 15.580095, 12.517797>,  <20.430996, 15.677532, 12.665221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.789845, 15.580095, 12.517797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129961, -0.651829, 0.747147,
		-0.422238, -0.718180, -0.553112,
		0.897120, -0.243591, -0.368562,
		21.058981, 15.507018, 12.407228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484016, 15.027538, 12.880459>,  <20.430996, 15.677532, 12.665221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484016, 15.027538, 12.880459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.856356, 15.126458, 12.772857>,  <21.079760, 15.185810, 12.708295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.856356, 15.126458, 12.772857>,  <20.484016, 15.027538, 12.880459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.856356, 15.126458, 12.772857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365272, -0.609870, 0.703303,
		0.009868, -0.752929, -0.658027,
		0.930849, 0.247299, -0.269006,
		21.135611, 15.200647, 12.692155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.784630, 14.403170, 12.686418>,  <20.484016, 15.027538, 12.880459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.784630, 14.403170, 12.686418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.091516, 14.637486, 12.790897>,  <21.275648, 14.778076, 12.853585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.091516, 14.637486, 12.790897>,  <20.784630, 14.403170, 12.686418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.091516, 14.637486, 12.790897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306446, -0.692545, 0.653048,
		0.563443, -0.420987, -0.710846,
		0.767218, 0.585791, 0.261200,
		21.321682, 14.813224, 12.869257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337788, 13.981621, 12.901619>,  <20.784630, 14.403170, 12.686418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337788, 13.981621, 12.901619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403868, 14.329889, 13.086936>,  <21.443516, 14.538851, 13.198126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403868, 14.329889, 13.086936>,  <21.337788, 13.981621, 12.901619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403868, 14.329889, 13.086936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262172, -0.491614, 0.830411,
		0.950776, -0.015722, -0.309481,
		0.165201, 0.870672, 0.463292,
		21.453428, 14.591091, 13.225924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974726, 13.838363, 13.209850>,  <21.337788, 13.981621, 12.901619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974726, 13.838363, 13.209850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.797781, 14.145535, 13.395149>,  <21.691614, 14.329839, 13.506329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.797781, 14.145535, 13.395149>,  <21.974726, 13.838363, 13.209850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.797781, 14.145535, 13.395149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200688, -0.418676, 0.885683,
		0.874095, 0.484759, 0.031091,
		-0.442360, 0.767931, 0.463248,
		21.665073, 14.375915, 13.534123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.319767, 13.804652, 13.780851>,  <21.974726, 13.838363, 13.209850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.319767, 13.804652, 13.780851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.001846, 14.029737, 13.871752>,  <21.811094, 14.164787, 13.926292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.001846, 14.029737, 13.871752>,  <22.319767, 13.804652, 13.780851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.001846, 14.029737, 13.871752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040604, -0.324321, 0.945075,
		0.605507, 0.760377, 0.234923,
		-0.794804, 0.562711, 0.227252,
		21.763405, 14.198549, 13.939927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.561972, 14.057575, 14.276607>,  <22.319767, 13.804652, 13.780851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.561972, 14.057575, 14.276607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.169701, 14.120064, 14.323714>,  <21.934338, 14.157557, 14.351979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.169701, 14.120064, 14.323714>,  <22.561972, 14.057575, 14.276607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.169701, 14.120064, 14.323714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059702, -0.334291, 0.940577,
		0.186308, 0.929432, 0.318505,
		-0.980676, 0.156222, 0.117770,
		21.875498, 14.166930, 14.359045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471140, 14.505384, 14.899763>,  <22.561972, 14.057575, 14.276607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471140, 14.505384, 14.899763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.141577, 14.290703, 14.826962>,  <21.943838, 14.161894, 14.783280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.141577, 14.290703, 14.826962>,  <22.471140, 14.505384, 14.899763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141577, 14.290703, 14.826962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026464, -0.357237, 0.933639,
		-0.566106, 0.764416, 0.308534,
		-0.823908, -0.536703, -0.182004,
		21.894405, 14.129692, 14.772360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.074629, 14.878589, 15.107967>,  <22.471140, 14.505384, 14.899763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.074629, 14.878589, 15.107967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049431, 14.900709, 15.506559>,  <23.034313, 14.913981, 15.745715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049431, 14.900709, 15.506559>,  <23.074629, 14.878589, 15.107967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.049431, 14.900709, 15.506559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517877, -0.855328, 0.014730,
		0.853133, -0.515127, 0.082519,
		-0.062993, 0.055301, 0.996481,
		23.030533, 14.917299, 15.805504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.458437, 14.217155, 15.392503>,  <23.074629, 14.878589, 15.107967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.458437, 14.217155, 15.392503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.150562, 14.376912, 15.591727>,  <22.965837, 14.472767, 15.711262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.150562, 14.376912, 15.591727>,  <23.458437, 14.217155, 15.392503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.150562, 14.376912, 15.591727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521075, -0.843760, -0.128644,
		0.368864, -0.358543, 0.857546,
		-0.769688, 0.399394, 0.498061,
		22.919657, 14.496731, 15.741145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.785572, 13.925002, 14.716702>,  <23.458437, 14.217155, 15.392503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.785572, 13.925002, 14.716702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162174, 13.790854, 14.703440>,  <24.388136, 13.710366, 14.695482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162174, 13.790854, 14.703440>,  <23.785572, 13.925002, 14.716702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162174, 13.790854, 14.703440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336627, 0.931247, 0.139504,
		-0.015910, -0.142504, 0.989666,
		0.941503, -0.335368, -0.033154,
		24.444626, 13.690244, 14.693494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.180286, 14.012974, 15.401037>,  <23.785572, 13.925002, 14.716702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.180286, 14.012974, 15.401037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297642, 14.065200, 15.022223>,  <24.368055, 14.096536, 14.794935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297642, 14.065200, 15.022223>,  <24.180286, 14.012974, 15.401037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297642, 14.065200, 15.022223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275769, 0.960078, 0.046931,
		0.915355, 0.247394, 0.317681,
		0.293388, 0.130565, -0.947035,
		24.385658, 14.104369, 14.738112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781048, 14.439802, 15.327394>,  <24.180286, 14.012974, 15.401037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781048, 14.439802, 15.327394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545715, 14.491632, 15.008126>,  <24.404516, 14.522731, 14.816566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545715, 14.491632, 15.008126>,  <24.781048, 14.439802, 15.327394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545715, 14.491632, 15.008126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120978, 0.961864, 0.245321,
		0.799520, 0.240892, -0.550218,
		-0.588330, 0.129575, -0.798172,
		24.369217, 14.530505, 14.768675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876776, 15.101350, 15.089764>,  <24.781048, 14.439802, 15.327394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876776, 15.101350, 15.089764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531153, 14.998945, 14.916390>,  <24.323778, 14.937502, 14.812366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531153, 14.998945, 14.916390>,  <24.876776, 15.101350, 15.089764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531153, 14.998945, 14.916390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322146, 0.942839, 0.085305,
		0.386818, 0.213337, -0.897140,
		-0.864057, -0.256012, -0.433432,
		24.271936, 14.922141, 14.786361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857378, 15.030874, 14.407615>,  <24.876776, 15.101350, 15.089764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857378, 15.030874, 14.407615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071606, 14.844837, 14.125664>,  <25.200142, 14.733215, 13.956493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071606, 14.844837, 14.125664>,  <24.857378, 15.030874, 14.407615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071606, 14.844837, 14.125664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815638, 0.501195, 0.289030,
		0.218856, -0.729721, 0.647773,
		0.535571, -0.465092, -0.704878,
		25.232277, 14.705310, 13.914201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355675, 14.527545, 14.530687>,  <24.857378, 15.030874, 14.407615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355675, 14.527545, 14.530687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493565, 14.667813, 14.182390>,  <25.576298, 14.751974, 13.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493565, 14.667813, 14.182390>,  <25.355675, 14.527545, 14.530687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493565, 14.667813, 14.182390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874817, 0.216344, 0.433464,
		0.340383, -0.911167, -0.232195,
		0.344724, 0.350672, -0.870744,
		25.596981, 14.773015, 13.921167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912788, 14.119772, 14.410944>,  <25.355675, 14.527545, 14.530687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912788, 14.119772, 14.410944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946674, 14.484223, 14.249616>,  <25.967005, 14.702894, 14.152819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946674, 14.484223, 14.249616>,  <25.912788, 14.119772, 14.410944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946674, 14.484223, 14.249616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934292, 0.068044, 0.349954,
		0.346297, -0.406466, -0.845496,
		0.084714, 0.911128, -0.403322,
		25.972088, 14.757562, 14.128619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410221, 14.762179, 14.403430>,  <25.912788, 14.119772, 14.410944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410221, 14.762179, 14.403430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590239, 14.687638, 14.054092>,  <26.698250, 14.642914, 13.844490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590239, 14.687638, 14.054092>,  <26.410221, 14.762179, 14.403430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590239, 14.687638, 14.054092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723443, 0.649438, 0.234223,
		0.523535, -0.737227, 0.427093,
		0.450046, -0.186354, -0.873345,
		26.725252, 14.631732, 13.792089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020111, 15.088789, 14.830187>,  <26.410221, 14.762179, 14.403430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020111, 15.088789, 14.830187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121077, 14.819524, 15.108219>,  <27.181656, 14.657965, 15.275039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121077, 14.819524, 15.108219>,  <27.020111, 15.088789, 14.830187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121077, 14.819524, 15.108219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484975, -0.533588, -0.692880,
		0.837308, 0.511991, 0.191782,
		0.252415, -0.673163, 0.695081,
		27.196800, 14.617575, 15.316744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.393353, 25.028101, 22.625347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.058952, 24.945700, 22.828783>,  <17.858313, 24.896259, 22.950846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.058952, 24.945700, 22.828783>,  <18.393353, 25.028101, 22.625347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058952, 24.945700, 22.828783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369988, -0.472856, -0.799698,
		0.405230, -0.856721, 0.319090,
		-0.836001, -0.206002, 0.508592,
		17.808151, 24.883900, 22.981361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.197725, 24.388908, 22.451637>,  <18.393353, 25.028101, 22.625347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.197725, 24.388908, 22.451637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.850815, 24.537577, 22.584118>,  <17.642668, 24.626778, 22.663607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.850815, 24.537577, 22.584118>,  <18.197725, 24.388908, 22.451637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850815, 24.537577, 22.584118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483794, -0.472380, -0.736750,
		-0.117374, -0.799199, 0.589495,
		-0.867275, 0.371669, 0.331203,
		17.590631, 24.649076, 22.683479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771461, 23.912518, 22.381933>,  <18.197725, 24.388908, 22.451637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771461, 23.912518, 22.381933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.500095, 24.202299, 22.430799>,  <17.337276, 24.376167, 22.460119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.500095, 24.202299, 22.430799>,  <17.771461, 23.912518, 22.381933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500095, 24.202299, 22.430799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559317, -0.401476, -0.725246,
		-0.476361, -0.560343, 0.677566,
		-0.678413, 0.724453, 0.122162,
		17.296572, 24.419634, 22.467449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.062593, 23.613255, 22.606344>,  <17.771461, 23.912518, 22.381933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.062593, 23.613255, 22.606344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.035191, 23.950598, 22.393158>,  <17.018749, 24.153004, 22.265247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.035191, 23.950598, 22.393158>,  <17.062593, 23.613255, 22.606344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.035191, 23.950598, 22.393158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658859, -0.439392, -0.610606,
		-0.749141, 0.309319, 0.585755,
		-0.068505, 0.843360, -0.532964,
		17.014639, 24.203606, 22.233269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.455061, 23.503870, 22.461040>,  <17.062593, 23.613255, 22.606344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.455061, 23.503870, 22.461040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.572489, 23.804869, 22.225222>,  <16.642944, 23.985468, 22.083731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.572489, 23.804869, 22.225222>,  <16.455061, 23.503870, 22.461040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572489, 23.804869, 22.225222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640822, -0.302717, -0.705485,
		-0.709341, 0.584904, 0.393348,
		0.293568, 0.752496, -0.589549,
		16.660559, 24.030617, 22.048357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871593, 23.744432, 22.163424>,  <16.455061, 23.503870, 22.461040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871593, 23.744432, 22.163424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.180149, 23.864910, 21.939196>,  <16.365282, 23.937197, 21.804659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.180149, 23.864910, 21.939196>,  <15.871593, 23.744432, 22.163424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180149, 23.864910, 21.939196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505881, -0.244167, -0.827325,
		-0.386057, 0.921773, -0.035980,
		0.771391, 0.301193, -0.560570,
		16.411566, 23.955269, 21.771025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451579, 23.983953, 21.503967>,  <15.871593, 23.744432, 22.163424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.451579, 23.983953, 21.503967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.836714, 23.979559, 21.396021>,  <16.067795, 23.976923, 21.331253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.836714, 23.979559, 21.396021>,  <15.451579, 23.983953, 21.503967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.836714, 23.979559, 21.396021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256304, -0.352282, -0.900114,
		-0.085181, 0.935829, -0.342005,
		0.962836, -0.010985, -0.269865,
		16.125565, 23.976263, 21.315062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482478, 24.429516, 20.845928>,  <15.451579, 23.983953, 21.503967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482478, 24.429516, 20.845928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.819254, 24.218140, 20.802313>,  <16.021318, 24.091314, 20.776144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.819254, 24.218140, 20.802313>,  <15.482478, 24.429516, 20.845928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819254, 24.218140, 20.802313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319386, -0.325203, -0.890076,
		0.434893, 0.784215, -0.442578,
		0.841939, -0.528441, -0.109039,
		16.071836, 24.059607, 20.769602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635632, 24.500090, 20.177876>,  <15.482478, 24.429516, 20.845928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635632, 24.500090, 20.177876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.814911, 24.165285, 20.303432>,  <15.922479, 23.964403, 20.378767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.814911, 24.165285, 20.303432>,  <15.635632, 24.500090, 20.177876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814911, 24.165285, 20.303432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363005, -0.491297, -0.791742,
		0.816912, 0.240912, -0.524038,
		0.448198, -0.837012, 0.313895,
		15.949370, 23.914181, 20.397600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119570, 24.310061, 19.654373>,  <15.635632, 24.500090, 20.177876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.119570, 24.310061, 19.654373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.061989, 23.964981, 19.848291>,  <16.027439, 23.757933, 19.964643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.061989, 23.964981, 19.848291>,  <16.119570, 24.310061, 19.654373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061989, 23.964981, 19.848291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077441, -0.498219, -0.863586,
		0.986550, -0.086774, 0.138529,
		-0.143955, -0.862698, 0.484798,
		16.018803, 23.706171, 19.993731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.618629, 23.887577, 19.370300>,  <16.119570, 24.310061, 19.654373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.618629, 23.887577, 19.370300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.335087, 23.650143, 19.522709>,  <16.164961, 23.507681, 19.614155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.335087, 23.650143, 19.522709>,  <16.618629, 23.887577, 19.370300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.335087, 23.650143, 19.522709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084511, -0.607768, -0.789605,
		0.700272, -0.527515, 0.480985,
		-0.708856, -0.593587, 0.381022,
		16.122431, 23.472067, 19.637016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830130, 23.178152, 19.186586>,  <16.618629, 23.887577, 19.370300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830130, 23.178152, 19.186586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.439268, 23.140905, 19.263002>,  <16.204750, 23.118557, 19.308853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.439268, 23.140905, 19.263002>,  <16.830130, 23.178152, 19.186586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439268, 23.140905, 19.263002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037090, -0.810396, -0.584708,
		0.209265, -0.578436, 0.788428,
		-0.977155, -0.093116, 0.191042,
		16.146122, 23.112970, 19.320314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649445, 22.438749, 19.147589>,  <16.830130, 23.178152, 19.186586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.649445, 22.438749, 19.147589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.287872, 22.604961, 19.107101>,  <16.070929, 22.704689, 19.082809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.287872, 22.604961, 19.107101>,  <16.649445, 22.438749, 19.147589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.287872, 22.604961, 19.107101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254883, -0.713449, -0.652706,
		-0.343432, -0.564202, 0.750820,
		-0.903930, 0.415531, -0.101216,
		16.016693, 22.729620, 19.076736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184784, 21.918474, 19.333080>,  <16.649445, 22.438749, 19.147589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184784, 21.918474, 19.333080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.988748, 22.170282, 19.091911>,  <15.871126, 22.321367, 18.947210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.988748, 22.170282, 19.091911>,  <16.184784, 21.918474, 19.333080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.988748, 22.170282, 19.091911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117220, -0.733000, -0.670053,
		-0.863755, -0.257710, 0.433027,
		-0.490089, 0.629521, -0.602923,
		15.841721, 22.359138, 18.911034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838490, 21.487566, 18.854498>,  <16.184784, 21.918474, 19.333080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838490, 21.487566, 18.854498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.834473, 21.837423, 18.660635>,  <15.832063, 22.047338, 18.544317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.834473, 21.837423, 18.660635>,  <15.838490, 21.487566, 18.854498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834473, 21.837423, 18.660635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147607, -0.480671, -0.864389,
		-0.988995, 0.062858, 0.133931,
		-0.010043, 0.874645, -0.484659,
		15.831460, 22.099817, 18.515238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184172, 21.591970, 18.530479>,  <15.838490, 21.487566, 18.854498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184172, 21.591970, 18.530479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.461876, 21.797291, 18.328678>,  <15.628499, 21.920483, 18.207598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.461876, 21.797291, 18.328678>,  <15.184172, 21.591970, 18.530479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.461876, 21.797291, 18.328678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195271, -0.540335, -0.818479,
		-0.692727, 0.666753, -0.274900,
		0.694261, 0.513303, -0.504502,
		15.670155, 21.951283, 18.177328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976370, 21.564911, 17.769962>,  <15.184172, 21.591970, 18.530479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.976370, 21.564911, 17.769962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.338994, 21.728374, 17.727730>,  <15.556568, 21.826452, 17.702391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.338994, 21.728374, 17.727730>,  <14.976370, 21.564911, 17.769962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338994, 21.728374, 17.727730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071842, -0.395894, -0.915482,
		-0.415919, 0.822354, -0.388261,
		0.906560, 0.408659, -0.105580,
		15.610962, 21.850973, 17.696056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.999225, 21.798624, 17.057735>,  <14.976370, 21.564911, 17.769962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.999225, 21.798624, 17.057735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.373439, 21.739962, 17.186275>,  <15.597967, 21.704763, 17.263399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.373439, 21.739962, 17.186275>,  <14.999225, 21.798624, 17.057735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.373439, 21.739962, 17.186275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240831, -0.400702, -0.883990,
		0.258411, 0.904394, -0.339551,
		0.935534, -0.146658, 0.321352,
		15.654099, 21.695965, 17.282681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.336332, 21.924437, 16.553722>,  <14.999225, 21.798624, 17.057735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.336332, 21.924437, 16.553722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.607381, 21.727173, 16.771942>,  <15.770010, 21.608814, 16.902874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.607381, 21.727173, 16.771942>,  <15.336332, 21.924437, 16.553722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607381, 21.727173, 16.771942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367332, -0.415692, -0.832026,
		0.637101, 0.764197, -0.100529,
		0.677621, -0.493157, 0.545551,
		15.810667, 21.579226, 16.935608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968175, 22.010132, 16.235407>,  <15.336332, 21.924437, 16.553722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968175, 22.010132, 16.235407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.041258, 21.680141, 16.449335>,  <16.085108, 21.482147, 16.577692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.041258, 21.680141, 16.449335>,  <15.968175, 22.010132, 16.235407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041258, 21.680141, 16.449335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560972, -0.359263, -0.745815,
		0.807421, 0.436284, 0.397149,
		0.182706, -0.824976, 0.534820,
		16.096069, 21.432648, 16.609781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670937, 21.898634, 16.214565>,  <15.968175, 22.010132, 16.235407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670937, 21.898634, 16.214565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.494089, 21.551159, 16.303932>,  <16.387981, 21.342674, 16.357552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.494089, 21.551159, 16.303932>,  <16.670937, 21.898634, 16.214565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494089, 21.551159, 16.303932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554217, -0.460415, -0.693441,
		0.705248, -0.182761, 0.684999,
		-0.442118, -0.868687, 0.223418,
		16.361454, 21.290552, 16.370958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077248, 21.367319, 16.544775>,  <16.670937, 21.898634, 16.214565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077248, 21.367319, 16.544775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.808712, 21.205490, 16.296381>,  <16.647591, 21.108393, 16.147345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.808712, 21.205490, 16.296381>,  <17.077248, 21.367319, 16.544775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808712, 21.205490, 16.296381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714417, -0.130238, -0.687493,
		0.197266, -0.905184, 0.376469,
		-0.671338, -0.404575, -0.620987,
		16.607311, 21.084118, 16.110085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.493826, 21.005249, 16.153454>,  <17.077248, 21.367319, 16.544775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.493826, 21.005249, 16.153454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.170137, 20.980591, 15.919748>,  <16.975925, 20.965796, 15.779525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.170137, 20.980591, 15.919748>,  <17.493826, 21.005249, 16.153454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.170137, 20.980591, 15.919748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576859, -0.271838, -0.770284,
		-0.111340, -0.960366, 0.255537,
		-0.809220, -0.061645, -0.584263,
		16.927372, 20.962097, 15.744470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629938, 20.468044, 16.603971>,  <17.493826, 21.005249, 16.153454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629938, 20.468044, 16.603971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.974581, 20.482765, 16.401474>,  <18.181366, 20.491598, 16.279976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.974581, 20.482765, 16.401474>,  <17.629938, 20.468044, 16.603971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.974581, 20.482765, 16.401474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360170, 0.658432, 0.660866,
		0.357649, -0.751740, 0.554053,
		0.861606, 0.036804, -0.506242,
		18.233063, 20.493807, 16.249601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.068258, 20.494431, 17.091604>,  <17.629938, 20.468044, 16.603971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.068258, 20.494431, 17.091604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.303965, 20.594297, 16.784246>,  <18.445389, 20.654219, 16.599831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.303965, 20.594297, 16.784246>,  <18.068258, 20.494431, 17.091604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303965, 20.594297, 16.784246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410199, 0.726911, 0.550761,
		0.696063, -0.639739, 0.325930,
		0.589265, 0.249669, -0.768396,
		18.480743, 20.669197, 16.553728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.798120, 20.493021, 17.266935>,  <18.068258, 20.494431, 17.091604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.798120, 20.493021, 17.266935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.766521, 20.752537, 16.964193>,  <18.747562, 20.908247, 16.782547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.766521, 20.752537, 16.964193>,  <18.798120, 20.493021, 17.266935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766521, 20.752537, 16.964193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374758, 0.722865, 0.580537,
		0.923751, -0.237777, -0.300243,
		-0.078996, 0.648790, -0.756856,
		18.742823, 20.947174, 16.737137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494860, 20.664665, 17.095745>,  <18.798120, 20.493021, 17.266935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494860, 20.664665, 17.095745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.238218, 20.941740, 16.963968>,  <19.084234, 21.107985, 16.884903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.238218, 20.941740, 16.963968>,  <19.494860, 20.664665, 17.095745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.238218, 20.941740, 16.963968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412017, 0.673506, 0.613702,
		0.646984, 0.258017, -0.717522,
		-0.641602, 0.692688, -0.329440,
		19.045738, 21.149546, 16.865135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936857, 21.211365, 17.000090>,  <19.494860, 20.664665, 17.095745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.936857, 21.211365, 17.000090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.562681, 21.352648, 17.005724>,  <19.338175, 21.437416, 17.009106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.562681, 21.352648, 17.005724>,  <19.936857, 21.211365, 17.000090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562681, 21.352648, 17.005724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241888, 0.610544, 0.754139,
		0.257765, 0.708860, -0.656563,
		-0.935440, 0.353205, 0.014088,
		19.282049, 21.458609, 17.009951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093428, 21.804077, 17.349182>,  <19.936857, 21.211365, 17.000090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.093428, 21.804077, 17.349182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.694120, 21.785387, 17.363487>,  <19.454536, 21.774174, 17.372070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.694120, 21.785387, 17.363487>,  <20.093428, 21.804077, 17.349182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694120, 21.785387, 17.363487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007793, 0.497431, 0.867469,
		-0.058323, 0.866244, -0.496204,
		-0.998267, -0.046726, 0.035762,
		19.394640, 21.771370, 17.374216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825886, 22.524109, 17.610878>,  <20.093428, 21.804077, 17.349182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825886, 22.524109, 17.610878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.513220, 22.286388, 17.686571>,  <19.325621, 22.143757, 17.731987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.513220, 22.286388, 17.686571>,  <19.825886, 22.524109, 17.610878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513220, 22.286388, 17.686571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186719, 0.512468, 0.838160,
		-0.595095, 0.619825, -0.511545,
		-0.781663, -0.594300, 0.189235,
		19.278721, 22.108099, 17.743341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385578, 22.898582, 17.960083>,  <19.825886, 22.524109, 17.610878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.385578, 22.898582, 17.960083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.280910, 22.523577, 18.051815>,  <19.218109, 22.298573, 18.106853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.280910, 22.523577, 18.051815>,  <19.385578, 22.898582, 17.960083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280910, 22.523577, 18.051815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137768, 0.271457, 0.952539,
		-0.955275, 0.217655, -0.200192,
		-0.261669, -0.937517, 0.229330,
		19.202410, 22.242321, 18.120615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800705, 22.931936, 18.350677>,  <19.385578, 22.898582, 17.960083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800705, 22.931936, 18.350677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.898046, 22.557583, 18.452579>,  <18.956451, 22.332972, 18.513721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.898046, 22.557583, 18.452579>,  <18.800705, 22.931936, 18.350677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.898046, 22.557583, 18.452579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099385, 0.237210, 0.966361,
		-0.964832, -0.260487, -0.035287,
		0.243355, -0.935883, 0.254757,
		18.971052, 22.276817, 18.529007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355089, 22.679071, 18.944496>,  <18.800705, 22.931936, 18.350677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355089, 22.679071, 18.944496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.686636, 22.457064, 18.972601>,  <18.885565, 22.323860, 18.989464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.686636, 22.457064, 18.972601>,  <18.355089, 22.679071, 18.944496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686636, 22.457064, 18.972601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046141, 0.192982, 0.980117,
		-0.557541, -0.809144, 0.185565,
		0.828866, -0.555017, 0.070261,
		18.935295, 22.290558, 18.993679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285576, 22.081903, 19.446659>,  <18.355089, 22.679071, 18.944496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285576, 22.081903, 19.446659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.682568, 22.130842, 19.445013>,  <18.920763, 22.160206, 19.444025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.682568, 22.130842, 19.445013>,  <18.285576, 22.081903, 19.446659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.682568, 22.130842, 19.445013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019532, 0.191467, 0.981305,
		0.120844, -0.973844, 0.192417,
		0.992479, 0.122343, -0.004116,
		18.980310, 22.167545, 19.443777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487160, 21.777868, 20.113037>,  <18.285576, 22.081903, 19.446659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487160, 21.777868, 20.113037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.790033, 22.007328, 19.988077>,  <18.971758, 22.145004, 19.913101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.790033, 22.007328, 19.988077>,  <18.487160, 21.777868, 20.113037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790033, 22.007328, 19.988077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143912, 0.320003, 0.936423,
		0.637150, -0.754004, 0.159746,
		0.757186, 0.573652, -0.312400,
		19.017189, 22.179424, 19.894358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.912785, 21.694147, 20.608778>,  <18.487160, 21.777868, 20.113037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.912785, 21.694147, 20.608778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.010870, 22.036226, 20.426128>,  <19.069721, 22.241474, 20.316540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.010870, 22.036226, 20.426128>,  <18.912785, 21.694147, 20.608778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010870, 22.036226, 20.426128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139631, 0.434936, 0.889569,
		0.959361, -0.281894, -0.012760,
		0.245214, 0.855200, -0.456622,
		19.084435, 22.292786, 20.289143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485498, 21.946644, 21.051128>,  <18.912785, 21.694147, 20.608778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485498, 21.946644, 21.051128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.358349, 22.262400, 20.841055>,  <19.282059, 22.451853, 20.715010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.358349, 22.262400, 20.841055>,  <19.485498, 21.946644, 21.051128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358349, 22.262400, 20.841055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325078, 0.611079, 0.721739,
		0.890663, 0.058696, -0.450859,
		-0.317874, 0.789391, -0.525185,
		19.262987, 22.499216, 20.683500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.047916, 22.420282, 21.051970>,  <19.485498, 21.946644, 21.051128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.047916, 22.420282, 21.051970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.734940, 22.650173, 20.956076>,  <19.547153, 22.788109, 20.898539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.734940, 22.650173, 20.956076>,  <20.047916, 22.420282, 21.051970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734940, 22.650173, 20.956076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316880, 0.698875, 0.641218,
		0.536072, 0.425748, -0.728948,
		-0.782441, 0.574728, -0.239736,
		19.500208, 22.822592, 20.884155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361080, 23.039560, 21.033186>,  <20.047916, 22.420282, 21.051970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361080, 23.039560, 21.033186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.975809, 23.135279, 21.082220>,  <19.744646, 23.192709, 21.111641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.975809, 23.135279, 21.082220>,  <20.361080, 23.039560, 21.033186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975809, 23.135279, 21.082220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261385, 0.726570, 0.635431,
		0.062989, 0.644075, -0.762364,
		-0.963177, 0.239296, 0.122586,
		19.686855, 23.207067, 21.118996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.387774, 23.767084, 21.125463>,  <20.361080, 23.039560, 21.033186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.387774, 23.767084, 21.125463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.062506, 23.599932, 21.287514>,  <19.867344, 23.499640, 21.384745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.062506, 23.599932, 21.287514>,  <20.387774, 23.767084, 21.125463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.062506, 23.599932, 21.287514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049600, 0.643777, 0.763604,
		-0.579907, 0.641035, -0.502774,
		-0.813171, -0.417882, 0.405127,
		19.818554, 23.474567, 21.409052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.688482, 24.390736, 21.451551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.594236, 24.046362, 21.631899>,  <19.537689, 23.839739, 21.740107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.594236, 24.046362, 21.631899>,  <19.688482, 24.390736, 21.451551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.594236, 24.046362, 21.631899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167401, 0.492947, 0.853803,
		-0.957321, 0.125692, -0.260267,
		-0.235614, -0.860932, 0.450867,
		19.523552, 23.788082, 21.767159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.176800, 24.498072, 21.900869>,  <19.688482, 24.390736, 21.451551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.176800, 24.498072, 21.900869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.348318, 24.165901, 22.043150>,  <19.451229, 23.966599, 22.128519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.348318, 24.165901, 22.043150>,  <19.176800, 24.498072, 21.900869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.348318, 24.165901, 22.043150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141231, 0.327275, 0.934315,
		-0.892294, -0.450866, 0.023052,
		0.428795, -0.830429, 0.355701,
		19.476957, 23.916773, 22.149860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901934, 24.452684, 22.626436>,  <19.176800, 24.498072, 21.900869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901934, 24.452684, 22.626436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.214575, 24.203203, 22.630199>,  <19.402159, 24.053514, 22.632458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.214575, 24.203203, 22.630199>,  <18.901934, 24.452684, 22.626436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.214575, 24.203203, 22.630199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149176, 0.201544, 0.968053,
		-0.605676, -0.755229, 0.250569,
		0.781603, -0.623705, 0.009409,
		19.449057, 24.016092, 22.633022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922804, 24.019653, 23.141685>,  <18.901934, 24.452684, 22.626436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922804, 24.019653, 23.141685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.315037, 24.037825, 23.065372>,  <19.550377, 24.048727, 23.019585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.315037, 24.037825, 23.065372>,  <18.922804, 24.019653, 23.141685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315037, 24.037825, 23.065372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187436, 0.069156, 0.979839,
		0.057691, -0.996572, 0.059301,
		0.980581, 0.045413, -0.190783,
		19.609211, 24.051453, 23.008137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121452, 23.727308, 23.755070>,  <18.922804, 24.019653, 23.141685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121452, 23.727308, 23.755070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.451704, 23.879696, 23.588602>,  <19.649855, 23.971128, 23.488722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.451704, 23.879696, 23.588602>,  <19.121452, 23.727308, 23.755070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451704, 23.879696, 23.588602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358122, 0.216127, 0.908316,
		0.435989, -0.898971, 0.042006,
		0.825628, 0.380972, -0.416171,
		19.699392, 23.993986, 23.463751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.681889, 23.458309, 24.055361>,  <19.121452, 23.727308, 23.755070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.681889, 23.458309, 24.055361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.821428, 23.796003, 23.892599>,  <19.905151, 23.998621, 23.794943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.821428, 23.796003, 23.892599>,  <19.681889, 23.458309, 24.055361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821428, 23.796003, 23.892599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538171, 0.174996, 0.824468,
		0.767253, -0.506597, -0.393297,
		0.348848, 0.844237, -0.406902,
		19.926083, 24.049274, 23.770529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.274321, 23.574585, 24.446150>,  <19.681889, 23.458309, 24.055361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.274321, 23.574585, 24.446150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.211988, 23.922243, 24.258404>,  <20.174589, 24.130838, 24.145756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.211988, 23.922243, 24.258404>,  <20.274321, 23.574585, 24.446150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.211988, 23.922243, 24.258404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443026, 0.486192, 0.753223,
		0.882862, -0.090567, -0.460817,
		-0.155828, 0.869146, -0.469364,
		20.165239, 24.182987, 24.117594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.923660, 23.927818, 24.438015>,  <20.274321, 23.574585, 24.446150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.923660, 23.927818, 24.438015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.646755, 24.213284, 24.395206>,  <20.480612, 24.384563, 24.369522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.646755, 24.213284, 24.395206>,  <20.923660, 23.927818, 24.438015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646755, 24.213284, 24.395206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526023, 0.600553, 0.602193,
		0.494035, 0.360581, -0.791145,
		-0.692264, 0.713665, -0.107020,
		20.439075, 24.427383, 24.363100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.283352, 24.573587, 24.248163>,  <20.923660, 23.927818, 24.438015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.283352, 24.573587, 24.248163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.932573, 24.652149, 24.423615>,  <20.722107, 24.699286, 24.528885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.932573, 24.652149, 24.423615>,  <21.283352, 24.573587, 24.248163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.932573, 24.652149, 24.423615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450855, 0.652266, 0.609326,
		-0.166428, 0.732103, -0.660550,
		-0.876944, 0.196404, 0.438628,
		20.669491, 24.711071, 24.555202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313360, 25.176346, 24.516825>,  <21.283352, 24.573587, 24.248163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313360, 25.176346, 24.516825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.986494, 25.087929, 24.729759>,  <20.790375, 25.034880, 24.857521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.986494, 25.087929, 24.729759>,  <21.313360, 25.176346, 24.516825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.986494, 25.087929, 24.729759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281395, 0.653031, 0.703112,
		-0.503051, 0.724355, -0.471433,
		-0.817164, -0.221042, 0.532338,
		20.741344, 25.021616, 24.889462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.237448, 25.757568, 24.939507>,  <21.313360, 25.176346, 24.516825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.237448, 25.757568, 24.939507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.037275, 25.464811, 25.124506>,  <20.917171, 25.289158, 25.235506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.037275, 25.464811, 25.124506>,  <21.237448, 25.757568, 24.939507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.037275, 25.464811, 25.124506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257300, 0.384341, 0.886611,
		-0.826661, 0.562687, -0.004020,
		-0.500429, -0.731892, 0.462499,
		20.887146, 25.245243, 25.263256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.011641, 26.077938, 25.494108>,  <21.237448, 25.757568, 24.939507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.011641, 26.077938, 25.494108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.931326, 25.698177, 25.590710>,  <20.883137, 25.470322, 25.648670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.931326, 25.698177, 25.590710>,  <21.011641, 26.077938, 25.494108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.931326, 25.698177, 25.590710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290763, 0.177657, 0.940157,
		-0.935490, 0.258992, 0.240379,
		-0.200788, -0.949400, 0.241502,
		20.871090, 25.413357, 25.663160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533670, 26.089169, 25.974243>,  <21.011641, 26.077938, 25.494108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533670, 26.089169, 25.974243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.684195, 25.721365, 26.019669>,  <20.774509, 25.500683, 26.046923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.684195, 25.721365, 26.019669>,  <20.533670, 26.089169, 25.974243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.684195, 25.721365, 26.019669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290345, 0.233437, 0.928012,
		-0.879823, -0.316250, 0.354819,
		0.376312, -0.919507, 0.113562,
		20.797089, 25.445513, 26.053738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213797, 25.906290, 26.513529>,  <20.533670, 26.089169, 25.974243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213797, 25.906290, 26.513529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.544683, 25.681568, 26.509851>,  <20.743216, 25.546734, 26.507645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.544683, 25.681568, 26.509851>,  <20.213797, 25.906290, 26.513529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.544683, 25.681568, 26.509851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061405, 0.074123, 0.995357,
		-0.558515, -0.823942, 0.095813,
		0.827218, -0.561805, -0.009195,
		20.792849, 25.513027, 26.507093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237501, 25.677275, 27.245005>,  <20.213797, 25.906290, 26.513529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237501, 25.677275, 27.245005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.593357, 25.574759, 27.093821>,  <20.806871, 25.513248, 27.003109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.593357, 25.574759, 27.093821>,  <20.237501, 25.677275, 27.245005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593357, 25.574759, 27.093821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366296, -0.093767, 0.925762,
		-0.272705, -0.962041, 0.010460,
		0.889640, -0.256291, -0.377962,
		20.860249, 25.497871, 26.980433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470831, 24.954540, 27.564981>,  <20.237501, 25.677275, 27.245005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470831, 24.954540, 27.564981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.775217, 25.194965, 27.467285>,  <20.957850, 25.339220, 27.408669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.775217, 25.194965, 27.467285>,  <20.470831, 24.954540, 27.564981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.775217, 25.194965, 27.467285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356551, -0.072926, 0.931425,
		0.542033, -0.795868, -0.269804,
		0.760967, 0.601062, -0.244239,
		21.003508, 25.375284, 27.394014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.067713, 24.543125, 27.689354>,  <20.470831, 24.954540, 27.564981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.067713, 24.543125, 27.689354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.184938, 24.924057, 27.723251>,  <21.255274, 25.152617, 27.743589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.184938, 24.924057, 27.723251>,  <21.067713, 24.543125, 27.689354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184938, 24.924057, 27.723251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359511, -0.191895, 0.913197,
		0.885926, -0.237159, -0.398610,
		0.293064, 0.952330, 0.084744,
		21.272858, 25.209757, 27.748674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702047, 24.488407, 28.051100>,  <21.067713, 24.543125, 27.689354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702047, 24.488407, 28.051100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.589828, 24.870829, 28.085165>,  <21.522497, 25.100283, 28.105604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.589828, 24.870829, 28.085165>,  <21.702047, 24.488407, 28.051100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589828, 24.870829, 28.085165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230316, -0.019080, 0.972929,
		0.931798, 0.292567, -0.214842,
		-0.280548, 0.956055, 0.085162,
		21.505665, 25.157644, 28.110714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.173931, 24.744747, 28.534719>,  <21.702047, 24.488407, 28.051100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.173931, 24.744747, 28.534719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.928482, 25.060537, 28.529190>,  <21.781212, 25.250011, 28.525873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.928482, 25.060537, 28.529190>,  <22.173931, 24.744747, 28.534719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928482, 25.060537, 28.529190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133075, 0.120657, 0.983734,
		0.778304, 0.601804, -0.179097,
		-0.613624, 0.789477, -0.013823,
		21.744394, 25.297380, 28.525043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.526688, 25.339340, 28.882626>,  <22.173931, 24.744747, 28.534719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.526688, 25.339340, 28.882626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.137070, 25.426712, 28.906376>,  <21.903299, 25.479136, 28.920626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.137070, 25.426712, 28.906376>,  <22.526688, 25.339340, 28.882626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.137070, 25.426712, 28.906376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065322, 0.020099, 0.997662,
		0.216728, 0.975645, -0.033845,
		-0.974044, 0.218432, 0.059375,
		21.844856, 25.492241, 28.924189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.404606, 25.985706, 29.303240>,  <22.526688, 25.339340, 28.882626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.404606, 25.985706, 29.303240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.071512, 25.767183, 29.339245>,  <21.871656, 25.636070, 29.360847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.071512, 25.767183, 29.339245>,  <22.404606, 25.985706, 29.303240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.071512, 25.767183, 29.339245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022403, 0.129198, 0.991366,
		-0.553219, 0.827561, -0.095348,
		-0.832735, -0.546306, 0.090015,
		21.821692, 25.603291, 29.366249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.047144, 26.412640, 29.737871>,  <22.404606, 25.985706, 29.303240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.047144, 26.412640, 29.737871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.849327, 26.064997, 29.741573>,  <21.730637, 25.856411, 29.743793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.849327, 26.064997, 29.741573>,  <22.047144, 26.412640, 29.737871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.849327, 26.064997, 29.741573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248073, 0.151347, 0.956846,
		-0.833001, 0.470903, -0.290448,
		-0.494540, -0.869106, 0.009254,
		21.700966, 25.804264, 29.744350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.256205, 26.397516, 29.979385>,  <22.047144, 26.412640, 29.737871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.256205, 26.397516, 29.979385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.460918, 26.060785, 30.047974>,  <21.583748, 25.858747, 30.089127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.460918, 26.060785, 30.047974>,  <21.256205, 26.397516, 29.979385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.460918, 26.060785, 30.047974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259849, 0.038561, 0.964879,
		-0.818873, -0.538369, -0.199012,
		0.511787, -0.841826, 0.171471,
		21.614454, 25.808237, 30.099415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.268589, 27.214230, 30.210817>,  <21.256205, 26.397516, 29.979385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.268589, 27.214230, 30.210817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.210594, 27.552420, 30.416401>,  <21.175797, 27.755333, 30.539751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.210594, 27.552420, 30.416401>,  <21.268589, 27.214230, 30.210817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.210594, 27.552420, 30.416401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429413, -0.414206, 0.802520,
		0.891394, 0.337055, -0.303003,
		-0.144987, 0.845474, 0.513957,
		21.167097, 27.806063, 30.570587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.702162, 26.861441, 30.419353>,  <21.268589, 27.214230, 30.210817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.702162, 26.861441, 30.419353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.309521, 26.921299, 30.466784>,  <20.073936, 26.957214, 30.495241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.309521, 26.921299, 30.466784>,  <20.702162, 26.861441, 30.419353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.309521, 26.921299, 30.466784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164953, -0.351949, -0.921370,
		-0.096148, -0.923979, 0.370160,
		-0.981604, 0.149647, 0.118573,
		20.015039, 26.966194, 30.502356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.309029, 26.318281, 30.083126>,  <20.702162, 26.861441, 30.419353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.309029, 26.318281, 30.083126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.053164, 26.624580, 30.109846>,  <19.899645, 26.808359, 30.125879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.053164, 26.624580, 30.109846>,  <20.309029, 26.318281, 30.083126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.053164, 26.624580, 30.109846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383819, -0.242903, -0.890888,
		-0.665969, -0.595507, 0.449284,
		-0.639662, 0.765748, 0.066801,
		19.861265, 26.854305, 30.129887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.624611, 26.034378, 30.032410>,  <20.309029, 26.318281, 30.083126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.624611, 26.034378, 30.032410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.582197, 26.417221, 29.924553>,  <19.556749, 26.646927, 29.859838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.582197, 26.417221, 29.924553>,  <19.624611, 26.034378, 30.032410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582197, 26.417221, 29.924553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527084, -0.284038, -0.800940,
		-0.843172, 0.057196, 0.534592,
		-0.106034, 0.957106, -0.269640,
		19.550386, 26.704353, 29.843660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019346, 25.973776, 29.670830>,  <19.624611, 26.034378, 30.032410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.019346, 25.973776, 29.670830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.156523, 26.341824, 29.595179>,  <19.238829, 26.562653, 29.549788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.156523, 26.341824, 29.595179>,  <19.019346, 25.973776, 29.670830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156523, 26.341824, 29.595179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432413, -0.024105, -0.901354,
		-0.833913, 0.390893, 0.389605,
		0.342941, 0.920120, -0.189129,
		19.259405, 26.617859, 29.538441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363888, 26.496334, 29.546059>,  <19.019346, 25.973776, 29.670830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363888, 26.496334, 29.546059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.687130, 26.638971, 29.358524>,  <18.881075, 26.724554, 29.246004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.687130, 26.638971, 29.358524>,  <18.363888, 26.496334, 29.546059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687130, 26.638971, 29.358524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515024, 0.041467, -0.856172,
		-0.285865, 0.933338, 0.217165,
		0.808104, 0.356595, -0.468837,
		18.929562, 26.745951, 29.217873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144690, 27.053665, 29.137968>,  <18.363888, 26.496334, 29.546059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144690, 27.053665, 29.137968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.471561, 26.912668, 28.955555>,  <18.667685, 26.828070, 28.846107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.471561, 26.912668, 28.955555>,  <18.144690, 27.053665, 29.137968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.471561, 26.912668, 28.955555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432526, 0.147929, -0.889403,
		0.380966, 0.924050, -0.031576,
		0.817182, -0.352490, -0.456031,
		18.716717, 26.806921, 28.818745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075008, 27.422573, 28.486067>,  <18.144690, 27.053665, 29.137968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075008, 27.422573, 28.486067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.340265, 27.125269, 28.450729>,  <18.499420, 26.946886, 28.429527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.340265, 27.125269, 28.450729>,  <18.075008, 27.422573, 28.486067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.340265, 27.125269, 28.450729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356163, -0.209535, -0.910628,
		0.658323, 0.635342, -0.403674,
		0.663143, -0.743261, -0.088344,
		18.539207, 26.902290, 28.424227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285666, 27.430439, 27.829350>,  <18.075008, 27.422573, 28.486067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285666, 27.430439, 27.829350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.416374, 27.064772, 27.925280>,  <18.494799, 26.845371, 27.982838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.416374, 27.064772, 27.925280>,  <18.285666, 27.430439, 27.829350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.416374, 27.064772, 27.925280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159725, -0.303522, -0.939342,
		0.931509, 0.268645, -0.245198,
		0.326772, -0.914169, 0.239824,
		18.514406, 26.790522, 27.997227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899153, 27.262875, 27.453291>,  <18.285666, 27.430439, 27.829350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899153, 27.262875, 27.453291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.707014, 26.925026, 27.547850>,  <18.591730, 26.722317, 27.604586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.707014, 26.925026, 27.547850>,  <18.899153, 27.262875, 27.453291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707014, 26.925026, 27.547850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090964, -0.316051, -0.944372,
		0.872349, -0.432123, 0.228644,
		-0.480347, -0.844620, 0.236399,
		18.562910, 26.671640, 27.618769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117016, 26.878721, 27.069086>,  <18.899153, 27.262875, 27.453291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117016, 26.878721, 27.069086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.814480, 26.644514, 27.185787>,  <18.632957, 26.503990, 27.255808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.814480, 26.644514, 27.185787>,  <19.117016, 26.878721, 27.069086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.814480, 26.644514, 27.185787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033778, -0.410431, -0.911266,
		0.653307, -0.699081, 0.290647,
		-0.756339, -0.585519, 0.291751,
		18.587578, 26.468859, 27.273314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311270, 26.158831, 26.811531>,  <19.117016, 26.878721, 27.069086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311270, 26.158831, 26.811531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.913702, 26.151358, 26.854944>,  <18.675161, 26.146873, 26.880993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.913702, 26.151358, 26.854944>,  <19.311270, 26.158831, 26.811531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.913702, 26.151358, 26.854944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090263, -0.426420, -0.900010,
		0.063095, -0.904332, 0.422140,
		-0.993917, -0.018683, 0.108532,
		18.615526, 26.145754, 26.887505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178867, 25.435326, 26.698931>,  <19.311270, 26.158831, 26.811531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178867, 25.435326, 26.698931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.847178, 25.656841, 26.668724>,  <18.648163, 25.789751, 26.650600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.847178, 25.656841, 26.668724>,  <19.178867, 25.435326, 26.698931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.847178, 25.656841, 26.668724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171135, -0.380199, -0.908934,
		-0.532072, -0.740786, 0.410043,
		-0.829224, 0.553791, -0.075519,
		18.598410, 25.822979, 26.646069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787916, 24.998472, 26.411850>,  <19.178867, 25.435326, 26.698931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.787916, 24.998472, 26.411850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.567392, 25.318966, 26.318827>,  <18.435078, 25.511261, 26.263012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.567392, 25.318966, 26.318827>,  <18.787916, 24.998472, 26.411850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567392, 25.318966, 26.318827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238415, -0.418424, -0.876402,
		-0.799509, -0.427724, 0.421707,
		-0.551311, 0.801232, -0.232558,
		18.401999, 25.559336, 26.249060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143085, 24.771406, 26.259886>,  <18.787916, 24.998472, 26.411850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143085, 24.771406, 26.259886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.199970, 25.114195, 26.061743>,  <18.234100, 25.319868, 25.942858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.199970, 25.114195, 26.061743>,  <18.143085, 24.771406, 26.259886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.199970, 25.114195, 26.061743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378500, -0.415330, -0.827187,
		-0.914611, 0.305128, 0.265298,
		0.142212, 0.856970, -0.495357,
		18.242634, 25.371286, 25.913136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651125, 24.657108, 25.722319>,  <18.143085, 24.771406, 26.259886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651125, 24.657108, 25.722319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.834320, 24.990025, 25.597395>,  <17.944237, 25.189774, 25.522440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.834320, 24.990025, 25.597395>,  <17.651125, 24.657108, 25.722319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834320, 24.990025, 25.597395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458164, -0.080066, -0.885254,
		-0.761795, 0.548526, 0.344656,
		0.457990, 0.832291, -0.312309,
		17.971718, 25.239712, 25.503702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.150984, 25.101395, 25.311085>,  <17.651125, 24.657108, 25.722319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.150984, 25.101395, 25.311085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.515844, 25.230835, 25.210476>,  <17.734760, 25.308498, 25.150110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.515844, 25.230835, 25.210476>,  <17.150984, 25.101395, 25.311085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.515844, 25.230835, 25.210476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229732, -0.104543, -0.967623,
		-0.339419, 0.940400, -0.021018,
		0.912150, 0.323601, -0.251524,
		17.789490, 25.327915, 25.135019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.030916, 25.590687, 24.778877>,  <17.150984, 25.101395, 25.311085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.030916, 25.590687, 24.778877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.402264, 25.453085, 24.722607>,  <17.625072, 25.370523, 24.688845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.402264, 25.453085, 24.722607>,  <17.030916, 25.590687, 24.778877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402264, 25.453085, 24.722607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200332, -0.144364, -0.969034,
		0.313046, 0.927803, -0.202938,
		0.928369, -0.344007, -0.140676,
		17.680775, 25.349882, 24.680405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179947, 25.853413, 24.218037>,  <17.030916, 25.590687, 24.778877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.179947, 25.853413, 24.218037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.447149, 25.556053, 24.231468>,  <17.607471, 25.377638, 24.239527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.447149, 25.556053, 24.231468>,  <17.179947, 25.853413, 24.218037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447149, 25.556053, 24.231468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057970, -0.096971, -0.993598,
		0.741894, 0.661784, -0.107872,
		0.668007, -0.743397, 0.033579,
		17.647551, 25.333035, 24.241541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.670750, 26.039268, 23.575602>,  <17.179947, 25.853413, 24.218037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.670750, 26.039268, 23.575602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.680374, 25.655218, 23.687017>,  <17.686150, 25.424788, 23.753866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.680374, 25.655218, 23.687017>,  <17.670750, 26.039268, 23.575602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.680374, 25.655218, 23.687017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020383, -0.278090, -0.960339,
		0.999502, 0.028787, 0.012878,
		0.024064, -0.960124, 0.278538,
		17.687593, 25.367182, 23.770578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162708, 25.713774, 23.159470>,  <17.670750, 26.039268, 23.575602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162708, 25.713774, 23.159470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.967531, 25.392529, 23.296246>,  <17.850426, 25.199781, 23.378311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.967531, 25.392529, 23.296246>,  <18.162708, 25.713774, 23.159470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.967531, 25.392529, 23.296246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047916, -0.366502, -0.929183,
		0.871561, -0.469771, 0.140349,
		-0.487941, -0.803114, 0.341938,
		17.821150, 25.151594, 23.398827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<13.794127, 18.013445, 7.453692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.906034, 17.641397, 7.358518>,  <13.973177, 17.418169, 7.301413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.906034, 17.641397, 7.358518>,  <13.794127, 18.013445, 7.453692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.906034, 17.641397, 7.358518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950076, 0.232555, 0.208023,
		-0.138152, -0.284254, 0.948743,
		0.279766, -0.930117, -0.237935,
		13.989964, 17.362362, 7.287137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.898221, 17.571468, 8.038329>,  <13.794127, 18.013445, 7.453692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.898221, 17.571468, 8.038329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.125424, 17.494999, 7.718124>,  <14.261746, 17.449118, 7.526002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.125424, 17.494999, 7.718124>,  <13.898221, 17.571468, 8.038329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.125424, 17.494999, 7.718124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814664, 0.268865, 0.513842,
		0.116995, -0.944015, 0.308462,
		0.568009, -0.191176, -0.800511,
		14.295827, 17.437647, 7.477971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.441320, 17.023678, 8.075480>,  <13.898221, 17.571468, 8.038329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.441320, 17.023678, 8.075480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.584207, 17.314983, 7.841547>,  <14.669938, 17.489767, 7.701189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.584207, 17.314983, 7.841547>,  <14.441320, 17.023678, 8.075480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.584207, 17.314983, 7.841547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831855, 0.036683, 0.553779,
		0.424752, -0.684312, -0.592708,
		0.357216, 0.728266, -0.584830,
		14.691371, 17.533463, 7.666099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072433, 16.735662, 7.910763>,  <14.441320, 17.023678, 8.075480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072433, 16.735662, 7.910763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.063731, 17.132694, 7.958618>,  <15.058511, 17.370913, 7.987330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.063731, 17.132694, 7.958618>,  <15.072433, 16.735662, 7.910763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.063731, 17.132694, 7.958618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720472, -0.067401, 0.690201,
		0.693143, 0.101208, -0.713660,
		-0.021753, 0.992579, 0.119636,
		15.057205, 17.430468, 7.994509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807457, 16.692160, 8.072212>,  <15.072433, 16.735662, 7.910763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807457, 16.692160, 8.072212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.610071, 17.008955, 8.216018>,  <15.491640, 17.199032, 8.302301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.610071, 17.008955, 8.216018>,  <15.807457, 16.692160, 8.072212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610071, 17.008955, 8.216018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756221, 0.186476, 0.627182,
		0.429679, 0.581363, -0.690936,
		-0.493463, 0.791987, 0.359514,
		15.462032, 17.246552, 8.323872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.238623, 17.370543, 8.118893>,  <15.807457, 16.692160, 8.072212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.238623, 17.370543, 8.118893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.941573, 17.340631, 8.385102>,  <15.763344, 17.322685, 8.544827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.941573, 17.340631, 8.385102>,  <16.238623, 17.370543, 8.118893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941573, 17.340631, 8.385102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659351, 0.092485, 0.746126,
		-0.117345, 0.992902, -0.019376,
		-0.742622, -0.074779, 0.665523,
		15.718786, 17.318197, 8.584759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358717, 17.920660, 8.518458>,  <16.238623, 17.370543, 8.118893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.358717, 17.920660, 8.518458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.174068, 17.644421, 8.741161>,  <16.063278, 17.478678, 8.874784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.174068, 17.644421, 8.741161>,  <16.358717, 17.920660, 8.518458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174068, 17.644421, 8.741161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709930, 0.088714, 0.698663,
		-0.531887, 0.717777, 0.449323,
		-0.461623, -0.690598, 0.556758,
		16.035582, 17.437241, 8.908189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269707, 18.233471, 9.094052>,  <16.358717, 17.920660, 8.518458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269707, 18.233471, 9.094052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.262997, 17.837791, 9.152294>,  <16.258970, 17.600384, 9.187239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.262997, 17.837791, 9.152294>,  <16.269707, 18.233471, 9.094052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262997, 17.837791, 9.152294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571945, 0.109954, 0.812890,
		-0.820121, 0.096913, 0.563924,
		-0.016774, -0.989201, 0.145604,
		16.257965, 17.541031, 9.195975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090437, 18.012148, 9.783362>,  <16.269707, 18.233471, 9.094052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090437, 18.012148, 9.783362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.338575, 17.745279, 9.618412>,  <16.487459, 17.585157, 9.519442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.338575, 17.745279, 9.618412>,  <16.090437, 18.012148, 9.783362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338575, 17.745279, 9.618412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544273, -0.012397, 0.838817,
		-0.564747, -0.744801, 0.355433,
		0.620345, -0.667172, -0.412376,
		16.524679, 17.545128, 9.494699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120806, 17.526953, 10.266718>,  <16.090437, 18.012148, 9.783362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120806, 17.526953, 10.266718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.450230, 17.514095, 10.040191>,  <16.647884, 17.506380, 9.904275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.450230, 17.514095, 10.040191>,  <16.120806, 17.526953, 10.266718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450230, 17.514095, 10.040191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559043, -0.123001, 0.819964,
		-0.096012, -0.991886, -0.083331,
		0.823561, -0.032140, -0.566316,
		16.697298, 17.504452, 9.870296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460489, 16.812548, 10.305233>,  <16.120806, 17.526953, 10.266718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460489, 16.812548, 10.305233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.726635, 17.098665, 10.219772>,  <16.886322, 17.270336, 10.168496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.726635, 17.098665, 10.219772>,  <16.460489, 16.812548, 10.305233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726635, 17.098665, 10.219772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461425, -0.169082, 0.870918,
		0.586838, -0.678061, -0.442555,
		0.665364, 0.715293, -0.213650,
		16.926245, 17.313253, 10.155677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061583, 16.510342, 10.473843>,  <16.460489, 16.812548, 10.305233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061583, 16.510342, 10.473843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.147390, 16.900837, 10.461553>,  <17.198875, 17.135134, 10.454179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.147390, 16.900837, 10.461553>,  <17.061583, 16.510342, 10.473843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147390, 16.900837, 10.461553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525047, -0.088736, 0.846434,
		0.823593, -0.197710, -0.531606,
		0.214521, 0.976236, -0.030725,
		17.211746, 17.193708, 10.452335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796263, 16.592825, 10.434294>,  <17.061583, 16.510342, 10.473843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796263, 16.592825, 10.434294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.634390, 16.916775, 10.604156>,  <17.537266, 17.111145, 10.706075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.634390, 16.916775, 10.604156>,  <17.796263, 16.592825, 10.434294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634390, 16.916775, 10.604156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242472, -0.352729, 0.903764,
		0.881724, 0.468706, -0.053628,
		-0.404684, 0.809874, 0.424658,
		17.512985, 17.159737, 10.731554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.290346, 16.821831, 10.962768>,  <17.796263, 16.592825, 10.434294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.290346, 16.821831, 10.962768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.994555, 17.062910, 11.082719>,  <17.817080, 17.207558, 11.154690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.994555, 17.062910, 11.082719>,  <18.290346, 16.821831, 10.962768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994555, 17.062910, 11.082719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391595, 0.022782, 0.919856,
		0.547563, 0.797644, -0.252860,
		-0.739479, 0.602697, 0.299878,
		17.772711, 17.243719, 11.172683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614475, 17.272030, 11.441122>,  <18.290346, 16.821831, 10.962768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.614475, 17.272030, 11.441122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.222410, 17.243893, 11.515244>,  <17.987171, 17.227011, 11.559716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.222410, 17.243893, 11.515244>,  <18.614475, 17.272030, 11.441122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222410, 17.243893, 11.515244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190315, -0.072862, 0.979015,
		-0.055365, 0.994858, 0.084804,
		-0.980160, -0.070343, 0.185303,
		17.928362, 17.222790, 11.570834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492523, 17.765320, 11.921887>,  <18.614475, 17.272030, 11.441122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.492523, 17.765320, 11.921887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.167870, 17.550858, 12.014656>,  <17.973078, 17.422180, 12.070317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.167870, 17.550858, 12.014656>,  <18.492523, 17.765320, 11.921887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.167870, 17.550858, 12.014656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244442, 0.048872, 0.968431,
		-0.530566, 0.842702, 0.091393,
		-0.811633, -0.536157, 0.231922,
		17.924379, 17.390011, 12.084232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307041, 17.977318, 12.555322>,  <18.492523, 17.765320, 11.921887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.307041, 17.977318, 12.555322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.140648, 17.614914, 12.524071>,  <18.040812, 17.397470, 12.505320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.140648, 17.614914, 12.524071>,  <18.307041, 17.977318, 12.555322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.140648, 17.614914, 12.524071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214178, -0.181109, 0.959858,
		-0.883791, 0.382550, 0.269386,
		-0.415982, -0.906011, -0.078129,
		18.015854, 17.343111, 12.500632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046909, 17.887381, 13.131186>,  <18.307041, 17.977318, 12.555322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046909, 17.887381, 13.131186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.070204, 17.511419, 12.996609>,  <18.084181, 17.285843, 12.915862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.070204, 17.511419, 12.996609>,  <18.046909, 17.887381, 13.131186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070204, 17.511419, 12.996609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402395, -0.286326, 0.869538,
		-0.913612, -0.186021, 0.361538,
		0.058234, -0.939901, -0.336444,
		18.087675, 17.229448, 12.895676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870045, 17.540148, 13.668898>,  <18.046909, 17.887381, 13.131186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870045, 17.540148, 13.668898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.042881, 17.250357, 13.454076>,  <18.146584, 17.076483, 13.325183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.042881, 17.250357, 13.454076>,  <17.870045, 17.540148, 13.668898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.042881, 17.250357, 13.454076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370127, -0.400588, 0.838174,
		-0.822376, -0.560947, 0.095058,
		0.432092, -0.724477, -0.537055,
		18.172508, 17.033014, 13.292959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727140, 16.908585, 14.021655>,  <17.870045, 17.540148, 13.668898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727140, 16.908585, 14.021655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.051239, 16.838583, 13.797914>,  <18.245697, 16.796581, 13.663669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.051239, 16.838583, 13.797914>,  <17.727140, 16.908585, 14.021655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051239, 16.838583, 13.797914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412752, -0.507186, 0.756570,
		-0.416098, -0.843882, -0.338712,
		0.810246, -0.175003, -0.559353,
		18.294313, 16.786081, 13.630108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814867, 16.219398, 13.925762>,  <17.727140, 16.908585, 14.021655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814867, 16.219398, 13.925762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.182442, 16.368690, 13.874766>,  <18.402987, 16.458265, 13.844169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.182442, 16.368690, 13.874766>,  <17.814867, 16.219398, 13.925762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182442, 16.368690, 13.874766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357680, -0.652428, 0.668135,
		0.166191, -0.659574, -0.733037,
		0.918938, 0.373230, -0.127489,
		18.458122, 16.480659, 13.836519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214283, 15.614577, 14.087548>,  <17.814867, 16.219398, 13.925762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214283, 15.614577, 14.087548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.485910, 15.907825, 14.072582>,  <18.648888, 16.083773, 14.063602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.485910, 15.907825, 14.072582>,  <18.214283, 15.614577, 14.087548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485910, 15.907825, 14.072582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519694, -0.444133, 0.729838,
		0.518441, -0.515056, -0.682595,
		0.679071, 0.733119, -0.037415,
		18.689632, 16.127760, 14.061357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947542, 15.316969, 13.903348>,  <18.214283, 15.614577, 14.087548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947542, 15.316969, 13.903348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.977209, 15.675983, 14.077210>,  <18.995010, 15.891393, 14.181528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.977209, 15.675983, 14.077210>,  <18.947542, 15.316969, 13.903348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977209, 15.675983, 14.077210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590579, -0.390739, 0.706073,
		0.803564, 0.204331, -0.559047,
		0.074169, 0.897537, 0.434657,
		18.999460, 15.945245, 14.207607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761007, 15.429069, 14.092618>,  <18.947542, 15.316969, 13.903348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761007, 15.429069, 14.092618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.573303, 15.678828, 14.342392>,  <19.460680, 15.828684, 14.492256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.573303, 15.678828, 14.342392>,  <19.761007, 15.429069, 14.092618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.573303, 15.678828, 14.342392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673504, -0.204274, 0.710398,
		0.571128, 0.753922, -0.324677,
		-0.469261, 0.624399, 0.624435,
		19.432526, 15.866148, 14.529722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.294765, 15.622709, 14.445577>,  <19.761007, 15.429069, 14.092618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.294765, 15.622709, 14.445577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.984438, 15.733279, 14.672448>,  <19.798241, 15.799622, 14.808571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.984438, 15.733279, 14.672448>,  <20.294765, 15.622709, 14.445577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.984438, 15.733279, 14.672448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560843, -0.109708, 0.820621,
		0.289064, 0.954753, -0.069917,
		-0.775820, 0.276425, 0.567179,
		19.751692, 15.816207, 14.842602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.563536, 16.132566, 14.951334>,  <20.294765, 15.622709, 14.445577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.563536, 16.132566, 14.951334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.242535, 15.959851, 15.116041>,  <20.049934, 15.856222, 15.214866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.242535, 15.959851, 15.116041>,  <20.563536, 16.132566, 14.951334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.242535, 15.959851, 15.116041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494117, -0.094132, 0.864284,
		-0.334426, 0.897050, 0.288894,
		-0.802501, -0.431787, 0.411768,
		20.001785, 15.830316, 15.239572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609972, 16.385874, 15.626498>,  <20.563536, 16.132566, 14.951334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609972, 16.385874, 15.626498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.349617, 16.082962, 15.647936>,  <20.193403, 15.901215, 15.660798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.349617, 16.082962, 15.647936>,  <20.609972, 16.385874, 15.626498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.349617, 16.082962, 15.647936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349047, -0.235823, 0.906947,
		-0.674175, 0.609027, 0.417821,
		-0.650887, -0.757281, 0.053593,
		20.154350, 15.855778, 15.664014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.437965, 16.343985, 16.340149>,  <20.609972, 16.385874, 15.626498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.437965, 16.343985, 16.340149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.306566, 15.994789, 16.195936>,  <20.227726, 15.785273, 16.109409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.306566, 15.994789, 16.195936>,  <20.437965, 16.343985, 16.340149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306566, 15.994789, 16.195936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259431, -0.450431, 0.854288,
		-0.908176, 0.187100, 0.374447,
		-0.328500, -0.872986, -0.360531,
		20.208015, 15.732893, 16.087776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.893694, 16.021717, 16.816101>,  <20.437965, 16.343985, 16.340149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.893694, 16.021717, 16.816101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.111088, 15.759531, 16.606342>,  <20.241524, 15.602220, 16.480488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.111088, 15.759531, 16.606342>,  <19.893694, 16.021717, 16.816101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.111088, 15.759531, 16.606342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303721, -0.428835, 0.850796,
		-0.782545, -0.621666, -0.033987,
		0.543486, -0.655464, -0.524396,
		20.274134, 15.562892, 16.449024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990473, 15.500513, 17.269768>,  <19.893694, 16.021717, 16.816101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990473, 15.500513, 17.269768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.262552, 15.376448, 17.004097>,  <20.425800, 15.302009, 16.844694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.262552, 15.376448, 17.004097>,  <19.990473, 15.500513, 17.269768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.262552, 15.376448, 17.004097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507157, -0.455084, 0.731909,
		-0.529266, -0.834684, -0.152246,
		0.680198, -0.310162, -0.664176,
		20.466612, 15.283399, 16.804844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994390, 14.753419, 17.346483>,  <19.990473, 15.500513, 17.269768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994390, 14.753419, 17.346483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.345945, 14.910010, 17.237452>,  <20.556879, 15.003965, 17.172033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.345945, 14.910010, 17.237452>,  <19.994390, 14.753419, 17.346483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345945, 14.910010, 17.237452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474514, -0.658896, 0.583689,
		0.048900, -0.642340, -0.764858,
		0.878889, 0.391478, -0.272579,
		20.609612, 15.027453, 17.155678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398304, 14.246353, 17.008934>,  <19.994390, 14.753419, 17.346483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398304, 14.246353, 17.008934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.638880, 14.519176, 17.175341>,  <20.783226, 14.682869, 17.275185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.638880, 14.519176, 17.175341>,  <20.398304, 14.246353, 17.008934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638880, 14.519176, 17.175341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659979, -0.717616, 0.222385,
		0.450219, 0.140810, -0.881746,
		0.601441, 0.682055, 0.416016,
		20.819313, 14.723792, 17.300146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.374495, 13.795021, 16.441599>,  <20.398304, 14.246353, 17.008934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.374495, 13.795021, 16.441599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.013765, 13.765157, 16.611841>,  <19.797327, 13.747238, 16.713987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.013765, 13.765157, 16.611841>,  <20.374495, 13.795021, 16.441599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013765, 13.765157, 16.611841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031928, 0.970754, 0.237944,
		-0.430925, 0.228172, -0.873064,
		-0.901823, -0.074661, 0.425607,
		19.743217, 13.742759, 16.739523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.080719, 13.497857, 16.506674>,  <20.374495, 13.795021, 16.441599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.080719, 13.497857, 16.506674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.211123, 13.134804, 16.400904>,  <21.289366, 12.916972, 16.337442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.211123, 13.134804, 16.400904>,  <21.080719, 13.497857, 16.506674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211123, 13.134804, 16.400904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470783, 0.398427, -0.787159,
		0.819806, 0.132135, 0.557189,
		0.326010, -0.907632, -0.264426,
		21.308926, 12.862514, 16.321575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.895325, 13.416615, 16.405020>,  <21.080719, 13.497857, 16.506674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.895325, 13.416615, 16.405020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.661852, 13.186806, 16.175503>,  <21.521769, 13.048920, 16.037792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.661852, 13.186806, 16.175503>,  <21.895325, 13.416615, 16.405020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661852, 13.186806, 16.175503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310841, 0.494728, -0.811555,
		0.750129, -0.652048, -0.110178,
		-0.583681, -0.574523, -0.573793,
		21.486748, 13.014449, 16.003365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.283541, 13.155343, 15.752738>,  <21.895325, 13.416615, 16.405020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.283541, 13.155343, 15.752738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.887980, 13.159843, 15.693487>,  <21.650642, 13.162543, 15.657937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.887980, 13.159843, 15.693487>,  <22.283541, 13.155343, 15.752738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887980, 13.159843, 15.693487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135670, 0.474577, -0.869695,
		0.060513, -0.880142, -0.470838,
		-0.988904, 0.011250, -0.148127,
		21.591309, 13.163218, 15.649049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147938, 13.192966, 14.982102>,  <22.283541, 13.155343, 15.752738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147938, 13.192966, 14.982102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.807928, 13.326954, 15.144708>,  <21.603922, 13.407347, 15.242270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.807928, 13.326954, 15.144708>,  <22.147938, 13.192966, 14.982102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.807928, 13.326954, 15.144708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187641, 0.528561, -0.827898,
		-0.492187, -0.780012, -0.386436,
		-0.850025, 0.334969, 0.406513,
		21.552921, 13.427444, 15.266662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.494167, 13.071244, 14.603511>,  <22.147938, 13.192966, 14.982102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.494167, 13.071244, 14.603511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.468830, 13.416329, 14.804195>,  <21.453627, 13.623381, 14.924606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.468830, 13.416329, 14.804195>,  <21.494167, 13.071244, 14.603511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.468830, 13.416329, 14.804195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178458, 0.484825, -0.856211,
		-0.981906, -0.143771, 0.123247,
		-0.063345, 0.862713, 0.501710,
		21.449827, 13.675143, 14.954708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.821714, 13.519106, 14.362857>,  <21.494167, 13.071244, 14.603511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.821714, 13.519106, 14.362857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.125355, 13.735113, 14.508264>,  <21.307539, 13.864717, 14.595508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.125355, 13.735113, 14.508264>,  <20.821714, 13.519106, 14.362857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.125355, 13.735113, 14.508264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191418, 0.718904, -0.668234,
		-0.622191, 0.437674, 0.649091,
		0.759103, 0.540017, 0.363517,
		21.353086, 13.897119, 14.617318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.570673, 14.214954, 14.435339>,  <20.821714, 13.519106, 14.362857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.570673, 14.214954, 14.435339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.969934, 14.239183, 14.437149>,  <21.209492, 14.253721, 14.438235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.969934, 14.239183, 14.437149>,  <20.570673, 14.214954, 14.435339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969934, 14.239183, 14.437149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028719, 0.536279, -0.843552,
		-0.053524, 0.841864, 0.537028,
		0.998153, 0.060574, 0.004526,
		21.269381, 14.257356, 14.438507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.759315, 14.891076, 14.342656>,  <20.570673, 14.214954, 14.435339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.759315, 14.891076, 14.342656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.065805, 14.675667, 14.202434>,  <21.249701, 14.546421, 14.118299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.065805, 14.675667, 14.202434>,  <20.759315, 14.891076, 14.342656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065805, 14.675667, 14.202434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023291, 0.521920, -0.852677,
		0.642148, 0.661508, 0.387366,
		0.766227, -0.538523, -0.350557,
		21.295673, 14.514110, 14.097266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089909, 15.431856, 14.132220>,  <20.759315, 14.891076, 14.342656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089909, 15.431856, 14.132220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.248674, 15.107037, 13.961089>,  <21.343933, 14.912145, 13.858410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.248674, 15.107037, 13.961089>,  <21.089909, 15.431856, 14.132220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.248674, 15.107037, 13.961089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024032, 0.475151, -0.879576,
		0.917541, 0.338834, 0.208109,
		0.396914, -0.812048, -0.427828,
		21.367748, 14.863422, 13.832741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709917, 15.702272, 13.836350>,  <21.089909, 15.431856, 14.132220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709917, 15.702272, 13.836350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.638445, 15.363342, 13.636305>,  <21.595562, 15.159985, 13.516277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.638445, 15.363342, 13.636305>,  <21.709917, 15.702272, 13.836350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.638445, 15.363342, 13.636305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034081, 0.502659, -0.863812,
		0.983317, -0.171391, -0.060938,
		-0.178681, -0.847324, -0.500115,
		21.584841, 15.109145, 13.486271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.206486, 15.742941, 13.292213>,  <21.709917, 15.702272, 13.836350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.206486, 15.742941, 13.292213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.938562, 15.470885, 13.173037>,  <21.777809, 15.307652, 13.101530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.938562, 15.470885, 13.173037>,  <22.206486, 15.742941, 13.292213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.938562, 15.470885, 13.173037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023912, 0.381285, -0.924148,
		0.742151, -0.626125, -0.239123,
		-0.669807, -0.680139, -0.297943,
		21.737619, 15.266844, 13.083653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.429060, 15.568489, 12.549639>,  <22.206486, 15.742941, 13.292213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.429060, 15.568489, 12.549639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.045631, 15.459033, 12.581282>,  <21.815575, 15.393359, 12.600267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.045631, 15.459033, 12.581282>,  <22.429060, 15.568489, 12.549639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.045631, 15.459033, 12.581282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214724, 0.511689, -0.831906,
		0.187164, -0.814430, -0.549248,
		-0.958574, -0.273640, 0.079107,
		21.758059, 15.376941, 12.605014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.247505, 15.188492, 11.958494>,  <22.429060, 15.568489, 12.549639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.247505, 15.188492, 11.958494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.878790, 15.271295, 12.089618>,  <21.657560, 15.320976, 12.168292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.878790, 15.271295, 12.089618>,  <22.247505, 15.188492, 11.958494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878790, 15.271295, 12.089618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224671, 0.403860, -0.886803,
		-0.315964, -0.891092, -0.325763,
		-0.921786, 0.207008, 0.327808,
		21.602255, 15.333397, 12.187960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776802, 14.977440, 11.412110>,  <22.247505, 15.188492, 11.958494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776802, 14.977440, 11.412110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.584805, 15.259546, 11.620804>,  <21.469606, 15.428810, 11.746020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.584805, 15.259546, 11.620804>,  <21.776802, 14.977440, 11.412110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584805, 15.259546, 11.620804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242440, 0.464922, -0.851511,
		-0.843106, -0.535210, -0.052175,
		-0.479994, 0.705265, 0.521735,
		21.440805, 15.471126, 11.777324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.217016, 15.110951, 11.019955>,  <21.776802, 14.977440, 11.412110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.217016, 15.110951, 11.019955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.237280, 15.429120, 11.261528>,  <21.249437, 15.620022, 11.406472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.237280, 15.429120, 11.261528>,  <21.217016, 15.110951, 11.019955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.237280, 15.429120, 11.261528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388763, 0.572721, -0.721702,
		-0.919944, -0.198227, 0.338244,
		0.050659, 0.795422, 0.603934,
		21.252478, 15.667747, 11.442708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.643078, 15.456831, 10.865750>,  <21.217016, 15.110951, 11.019955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.643078, 15.456831, 10.865750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.876572, 15.731659, 11.038812>,  <21.016668, 15.896556, 11.142649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.876572, 15.731659, 11.038812>,  <20.643078, 15.456831, 10.865750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.876572, 15.731659, 11.038812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353084, 0.694643, -0.626740,
		-0.731155, 0.213086, 0.648080,
		0.583734, 0.687070, 0.432654,
		21.051691, 15.937780, 11.168608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.243519, 16.041496, 10.887512>,  <20.643078, 15.456831, 10.865750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.243519, 16.041496, 10.887512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.593901, 16.220539, 10.959455>,  <20.804131, 16.327965, 11.002620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.593901, 16.220539, 10.959455>,  <20.243519, 16.041496, 10.887512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593901, 16.220539, 10.959455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218746, 0.700876, -0.678913,
		-0.429944, 0.555355, 0.711849,
		0.875956, 0.447608, 0.179856,
		20.856688, 16.354822, 11.013412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.124014, 16.841581, 11.049809>,  <20.243519, 16.041496, 10.887512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.124014, 16.841581, 11.049809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.499498, 16.784370, 10.924357>,  <20.724789, 16.750044, 10.849086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.499498, 16.784370, 10.924357>,  <20.124014, 16.841581, 11.049809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.499498, 16.784370, 10.924357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057356, 0.832365, -0.551253,
		0.339897, 0.535456, 0.773147,
		0.938712, -0.143025, -0.313630,
		20.781113, 16.741463, 10.830269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.522665, 17.474127, 11.147913>,  <20.124014, 16.841581, 11.049809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.522665, 17.474127, 11.147913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.696156, 17.266577, 10.853253>,  <20.800249, 17.142048, 10.676457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.696156, 17.266577, 10.853253>,  <20.522665, 17.474127, 11.147913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696156, 17.266577, 10.853253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185290, 0.748717, -0.636467,
		0.881788, 0.412546, 0.228596,
		0.433726, -0.518873, -0.736650,
		20.826273, 17.110914, 10.632258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<20.245945, 22.176205, 19.389482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846436, 22.161659, 19.402918>,  <19.606730, 22.152931, 19.410978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846436, 22.161659, 19.402918>,  <20.245945, 22.176205, 19.389482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.846436, 22.161659, 19.402918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025613, -0.201020, -0.979252,
		0.042364, -0.978912, 0.199842,
		-0.998773, -0.036367, 0.033589,
		19.546803, 22.150749, 19.412994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040203, 21.639597, 18.856121>,  <20.245945, 22.176205, 19.389482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040203, 21.639597, 18.856121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.690973, 21.822666, 18.923382>,  <19.481436, 21.932508, 18.963739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.690973, 21.822666, 18.923382>,  <20.040203, 21.639597, 18.856121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.690973, 21.822666, 18.923382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296716, -0.225044, -0.928070,
		-0.386914, -0.860167, 0.332280,
		-0.873073, 0.457676, 0.168153,
		19.429050, 21.959969, 18.973827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580030, 21.125210, 18.667768>,  <20.040203, 21.639597, 18.856121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580030, 21.125210, 18.667768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410757, 21.485865, 18.632071>,  <19.309193, 21.702257, 18.610653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410757, 21.485865, 18.632071>,  <19.580030, 21.125210, 18.667768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410757, 21.485865, 18.632071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355852, -0.255982, -0.898801,
		-0.833238, -0.348599, 0.429177,
		-0.423183, 0.901639, -0.089244,
		19.283802, 21.756355, 18.605297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.989929, 21.014357, 18.378042>,  <19.580030, 21.125210, 18.667768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.989929, 21.014357, 18.378042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.048410, 21.405231, 18.316420>,  <19.083500, 21.639755, 18.279446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.048410, 21.405231, 18.316420>,  <18.989929, 21.014357, 18.378042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.048410, 21.405231, 18.316420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345072, -0.095570, -0.933698,
		-0.927119, 0.189671, 0.323227,
		0.146204, 0.977185, -0.154054,
		19.092272, 21.698387, 18.270203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.416611, 21.118525, 17.983253>,  <18.989929, 21.014357, 18.378042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.416611, 21.118525, 17.983253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656012, 21.432638, 17.919844>,  <18.799652, 21.621105, 17.881798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656012, 21.432638, 17.919844>,  <18.416611, 21.118525, 17.983253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.656012, 21.432638, 17.919844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233839, -0.018017, -0.972108,
		-0.766235, 0.618875, 0.172847,
		0.598500, 0.785282, -0.158522,
		18.835562, 21.668222, 17.872288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101715, 21.642977, 17.539797>,  <18.416611, 21.118525, 17.983253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101715, 21.642977, 17.539797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494167, 21.678944, 17.471329>,  <18.729639, 21.700523, 17.430248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494167, 21.678944, 17.471329>,  <18.101715, 21.642977, 17.539797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.494167, 21.678944, 17.471329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146577, -0.231431, -0.961746,
		-0.126091, 0.968687, -0.213885,
		0.981130, 0.089917, -0.171169,
		18.788506, 21.705919, 17.419977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.065966, 22.034246, 16.919043>,  <18.101715, 21.642977, 17.539797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.065966, 22.034246, 16.919043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410276, 21.835732, 16.964235>,  <18.616863, 21.716623, 16.991352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410276, 21.835732, 16.964235>,  <18.065966, 22.034246, 16.919043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.410276, 21.835732, 16.964235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096750, -0.377468, -0.920955,
		0.499705, 0.781804, -0.372931,
		0.860775, -0.496287, 0.112983,
		18.668509, 21.686846, 16.998131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480942, 22.203947, 16.270924>,  <18.065966, 22.034246, 16.919043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480942, 22.203947, 16.270924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.613062, 21.864603, 16.436422>,  <18.692333, 21.660995, 16.535721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.613062, 21.864603, 16.436422>,  <18.480942, 22.203947, 16.270924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613062, 21.864603, 16.436422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004733, -0.436853, -0.899520,
		0.943865, 0.299068, -0.140276,
		0.330298, -0.848362, 0.413746,
		18.712151, 21.610094, 16.560547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864544, 21.806274, 15.741637>,  <18.480942, 22.203947, 16.270924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864544, 21.806274, 15.741637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831205, 21.532928, 16.031759>,  <18.811203, 21.368921, 16.205833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831205, 21.532928, 16.031759>,  <18.864544, 21.806274, 15.741637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.831205, 21.532928, 16.031759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132460, -0.713782, -0.687728,
		0.987678, -0.153394, -0.031027,
		-0.083347, -0.683363, 0.725305,
		18.806202, 21.327919, 16.249352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.124474, 21.162390, 15.487149>,  <18.864544, 21.806274, 15.741637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.124474, 21.162390, 15.487149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922247, 21.030453, 15.806049>,  <18.800911, 20.951290, 15.997390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922247, 21.030453, 15.806049>,  <19.124474, 21.162390, 15.487149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922247, 21.030453, 15.806049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271070, -0.816526, -0.509711,
		0.819100, -0.473803, 0.323397,
		-0.505565, -0.329841, 0.797251,
		18.770576, 20.931499, 16.045225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.349161, 20.520363, 15.620300>,  <19.124474, 21.162390, 15.487149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.349161, 20.520363, 15.620300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.985929, 20.521229, 15.787816>,  <18.767990, 20.521749, 15.888326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.985929, 20.521229, 15.787816>,  <19.349161, 20.520363, 15.620300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.985929, 20.521229, 15.787816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191082, -0.891975, -0.409718,
		0.372662, -0.452080, 0.810399,
		-0.908081, 0.002166, 0.418789,
		18.713505, 20.521879, 15.913453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346390, 20.003780, 16.110262>,  <19.349161, 20.520363, 15.620300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346390, 20.003780, 16.110262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980497, 20.074066, 15.964719>,  <18.760962, 20.116238, 15.877393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980497, 20.074066, 15.964719>,  <19.346390, 20.003780, 16.110262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980497, 20.074066, 15.964719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146752, -0.983477, -0.106003,
		-0.376473, -0.043567, 0.925403,
		-0.914731, 0.175712, -0.363859,
		18.706078, 20.126780, 15.855561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709875, 19.847563, 16.541332>,  <19.346390, 20.003780, 16.110262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709875, 19.847563, 16.541332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611240, 19.802677, 16.156292>,  <18.552059, 19.775745, 15.925267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611240, 19.802677, 16.156292>,  <18.709875, 19.847563, 16.541332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611240, 19.802677, 16.156292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091312, -0.986165, 0.138352,
		-0.964810, 0.122013, 0.232928,
		-0.246586, -0.112215, -0.962602,
		18.537264, 19.769012, 15.867511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986010, 19.569607, 16.445097>,  <18.709875, 19.847563, 16.541332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986010, 19.569607, 16.445097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209385, 19.472612, 16.127771>,  <18.343410, 19.414415, 15.937376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209385, 19.472612, 16.127771>,  <17.986010, 19.569607, 16.445097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209385, 19.472612, 16.127771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229343, -0.964179, 0.133273,
		-0.797212, 0.107516, -0.594048,
		0.558439, -0.242488, -0.793313,
		18.376917, 19.399866, 15.889777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.066437, 18.742977, 16.420538>,  <17.986010, 19.569607, 16.445097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.066437, 18.742977, 16.420538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.448433, 18.626926, 16.445244>,  <18.677631, 18.557297, 16.460068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.448433, 18.626926, 16.445244>,  <18.066437, 18.742977, 16.420538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448433, 18.626926, 16.445244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049622, 0.049039, 0.997564,
		-0.292450, -0.955731, 0.032436,
		0.954993, -0.290127, 0.061766,
		18.734930, 18.539888, 16.463774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020702, 18.199974, 16.727840>,  <18.066437, 18.742977, 16.420538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020702, 18.199974, 16.727840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399162, 18.319614, 16.777382>,  <18.626238, 18.391397, 16.807106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399162, 18.319614, 16.777382>,  <18.020702, 18.199974, 16.727840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399162, 18.319614, 16.777382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086845, -0.134051, 0.987162,
		0.311863, -0.944759, -0.100857,
		0.946150, 0.299100, 0.123854,
		18.683006, 18.409344, 16.814537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219131, 17.793808, 17.360950>,  <18.020702, 18.199974, 16.727840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219131, 17.793808, 17.360950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489086, 18.085609, 17.316494>,  <18.651060, 18.260691, 17.289820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489086, 18.085609, 17.316494>,  <18.219131, 17.793808, 17.360950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.489086, 18.085609, 17.316494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016426, 0.135726, 0.990610,
		0.737736, -0.670377, 0.079618,
		0.674889, 0.729502, -0.111142,
		18.691553, 18.304461, 17.283152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.741348, 17.605482, 17.899914>,  <18.219131, 17.793808, 17.360950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.741348, 17.605482, 17.899914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753901, 17.991110, 17.794401>,  <18.761433, 18.222486, 17.731092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753901, 17.991110, 17.794401>,  <18.741348, 17.605482, 17.899914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753901, 17.991110, 17.794401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060132, 0.265255, 0.962301,
		0.997697, -0.014337, 0.066296,
		0.031382, 0.964072, -0.263782,
		18.763315, 18.280331, 17.715267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265736, 17.879345, 18.320858>,  <18.741348, 17.605482, 17.899914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265736, 17.879345, 18.320858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.051994, 18.206087, 18.233944>,  <18.923750, 18.402132, 18.181795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.051994, 18.206087, 18.233944>,  <19.265736, 17.879345, 18.320858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051994, 18.206087, 18.233944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030460, 0.238286, 0.970717,
		0.844711, 0.525326, -0.102448,
		-0.534355, 0.816855, -0.217284,
		18.891687, 18.451143, 18.168758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528576, 18.329065, 18.778961>,  <19.265736, 17.879345, 18.320858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.528576, 18.329065, 18.778961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179127, 18.491219, 18.671295>,  <18.969458, 18.588511, 18.606695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179127, 18.491219, 18.671295>,  <19.528576, 18.329065, 18.778961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179127, 18.491219, 18.671295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207299, 0.190392, 0.959572,
		0.440243, 0.894100, -0.082294,
		-0.873621, 0.405385, -0.269165,
		18.917040, 18.612835, 18.590546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521101, 18.893583, 19.185129>,  <19.528576, 18.329065, 18.778961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521101, 18.893583, 19.185129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146938, 18.810242, 19.070862>,  <18.922441, 18.760237, 19.002302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146938, 18.810242, 19.070862>,  <19.521101, 18.893583, 19.185129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146938, 18.810242, 19.070862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345769, 0.370183, 0.862212,
		-0.073896, 0.905292, -0.418313,
		-0.935405, -0.208354, -0.285667,
		18.866316, 18.747736, 18.985163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.290785, 19.487299, 19.265501>,  <19.521101, 18.893583, 19.185129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.290785, 19.487299, 19.265501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981785, 19.234364, 19.288782>,  <18.796385, 19.082602, 19.302752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981785, 19.234364, 19.288782>,  <19.290785, 19.487299, 19.265501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981785, 19.234364, 19.288782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355090, 0.506138, 0.785962,
		-0.526453, 0.586489, -0.615530,
		-0.772501, -0.632340, 0.058202,
		18.750034, 19.044661, 19.306242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731628, 19.879650, 19.499922>,  <19.290785, 19.487299, 19.265501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731628, 19.879650, 19.499922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611347, 19.504473, 19.569021>,  <18.539179, 19.279367, 19.610481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611347, 19.504473, 19.569021>,  <18.731628, 19.879650, 19.499922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611347, 19.504473, 19.569021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465321, 0.302397, 0.831885,
		-0.832499, 0.169764, -0.527376,
		-0.300701, -0.937942, 0.172751,
		18.521137, 19.223089, 19.620846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148914, 20.054937, 19.812050>,  <18.731628, 19.879650, 19.499922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148914, 20.054937, 19.812050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224337, 19.673473, 19.905840>,  <18.269590, 19.444595, 19.962114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224337, 19.673473, 19.905840>,  <18.148914, 20.054937, 19.812050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224337, 19.673473, 19.905840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256619, 0.182616, 0.949104,
		-0.947942, -0.239127, -0.210294,
		0.188553, -0.953661, 0.234474,
		18.280903, 19.387375, 19.976183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545412, 19.833509, 20.115648>,  <18.148914, 20.054937, 19.812050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545412, 19.833509, 20.115648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827427, 19.573837, 20.229834>,  <17.996635, 19.418034, 20.298346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827427, 19.573837, 20.229834>,  <17.545412, 19.833509, 20.115648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827427, 19.573837, 20.229834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261542, 0.136135, 0.955543,
		-0.659182, -0.748352, -0.073808,
		0.705035, -0.649181, 0.285463,
		18.038937, 19.379084, 20.315472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048407, 19.319450, 20.510540>,  <17.545412, 19.833509, 20.115648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048407, 19.319450, 20.510540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439131, 19.299576, 20.593845>,  <17.673565, 19.287651, 20.643829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439131, 19.299576, 20.593845>,  <17.048407, 19.319450, 20.510540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439131, 19.299576, 20.593845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197842, 0.162427, 0.966683,
		-0.081859, -0.985469, 0.148830,
		0.976810, -0.049687, 0.208263,
		17.732174, 19.284670, 20.656324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207609, 18.778252, 21.059187>,  <17.048407, 19.319450, 20.510540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207609, 18.778252, 21.059187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512335, 19.037273, 21.066229>,  <17.695169, 19.192686, 21.070454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512335, 19.037273, 21.066229>,  <17.207609, 18.778252, 21.059187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512335, 19.037273, 21.066229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088508, 0.077123, 0.993085,
		0.641720, -0.758105, 0.116067,
		0.761815, 0.647556, 0.017606,
		17.740879, 19.231541, 21.071510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529205, 18.625271, 21.634094>,  <17.207609, 18.778252, 21.059187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529205, 18.625271, 21.634094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.710066, 18.971256, 21.547012>,  <17.818583, 19.178848, 21.494762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.710066, 18.971256, 21.547012>,  <17.529205, 18.625271, 21.634094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.710066, 18.971256, 21.547012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144455, 0.169845, 0.974826,
		0.880167, -0.472216, -0.048153,
		0.452150, 0.864965, -0.217705,
		17.845711, 19.230745, 21.481701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377995, 17.949205, 22.030813>,  <17.529205, 18.625271, 21.634094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377995, 17.949205, 22.030813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016708, 18.012688, 22.190319>,  <16.799936, 18.050777, 22.286022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016708, 18.012688, 22.190319>,  <17.377995, 17.949205, 22.030813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016708, 18.012688, 22.190319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429091, -0.314523, -0.846733,
		-0.008961, -0.935889, 0.352182,
		-0.903217, 0.158705, 0.398763,
		16.745743, 18.060299, 22.309948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050808, 17.378633, 21.808058>,  <17.377995, 17.949205, 22.030813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050808, 17.378633, 21.808058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760715, 17.636145, 21.905704>,  <16.586660, 17.790651, 21.964293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760715, 17.636145, 21.905704>,  <17.050808, 17.378633, 21.808058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760715, 17.636145, 21.905704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540187, -0.312197, -0.781493,
		-0.426896, -0.698629, 0.574175,
		-0.725229, 0.643778, 0.244115,
		16.543146, 17.829277, 21.978939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503971, 17.031481, 21.926714>,  <17.050808, 17.378633, 21.808058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503971, 17.031481, 21.926714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372196, 17.392807, 21.816813>,  <16.293131, 17.609604, 21.750872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372196, 17.392807, 21.816813>,  <16.503971, 17.031481, 21.926714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372196, 17.392807, 21.816813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445716, -0.405320, -0.798156,
		-0.832351, -0.140480, 0.536150,
		-0.329437, 0.903317, -0.274754,
		16.273365, 17.663801, 21.734386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879404, 16.894617, 21.615166>,  <16.503971, 17.031481, 21.926714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879404, 16.894617, 21.615166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919931, 17.273756, 21.494289>,  <15.944248, 17.501240, 21.421762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919931, 17.273756, 21.494289>,  <15.879404, 16.894617, 21.615166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919931, 17.273756, 21.494289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532170, -0.205006, -0.821443,
		-0.840553, 0.244045, 0.483645,
		0.101319, 0.947847, -0.302192,
		15.950327, 17.558111, 21.403631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279903, 16.955894, 21.141525>,  <15.879404, 16.894617, 21.615166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279903, 16.955894, 21.141525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515786, 17.271185, 21.071161>,  <15.657316, 17.460360, 21.028942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515786, 17.271185, 21.071161>,  <15.279903, 16.955894, 21.141525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.515786, 17.271185, 21.071161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546941, 0.229518, -0.805094,
		-0.594222, 0.570983, 0.566462,
		0.589708, 0.788226, -0.175910,
		15.692698, 17.507652, 21.018389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.837013, 17.571146, 21.008947>,  <15.279903, 16.955894, 21.141525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.837013, 17.571146, 21.008947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192805, 17.635342, 20.837801>,  <15.406281, 17.673859, 20.735113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192805, 17.635342, 20.837801>,  <14.837013, 17.571146, 21.008947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.192805, 17.635342, 20.837801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454923, 0.222403, -0.862312,
		-0.043233, 0.961655, 0.270833,
		0.889480, 0.160489, -0.427864,
		15.459649, 17.683489, 20.709442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.756240, 18.234556, 20.732603>,  <14.837013, 17.571146, 21.008947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.756240, 18.234556, 20.732603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048061, 18.038403, 20.541910>,  <15.223154, 17.920712, 20.427494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048061, 18.038403, 20.541910>,  <14.756240, 18.234556, 20.732603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.048061, 18.038403, 20.541910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453664, 0.174643, -0.873893,
		0.511800, 0.853829, -0.095058,
		0.729554, -0.490383, -0.476734,
		15.266928, 17.891287, 20.398890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725823, 18.560043, 20.125978>,  <14.756240, 18.234556, 20.732603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725823, 18.560043, 20.125978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972839, 18.261599, 20.026407>,  <15.121049, 18.082533, 19.966665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972839, 18.261599, 20.026407>,  <14.725823, 18.560043, 20.125978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.972839, 18.261599, 20.026407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438689, -0.064039, -0.896354,
		0.652837, 0.662736, -0.366857,
		0.617540, -0.746109, -0.248928,
		15.158101, 18.037766, 19.951729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074311, 18.648451, 19.458338>,  <14.725823, 18.560043, 20.125978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074311, 18.648451, 19.458338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075545, 18.250601, 19.499741>,  <15.076285, 18.011890, 19.524582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075545, 18.250601, 19.499741>,  <15.074311, 18.648451, 19.458338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075545, 18.250601, 19.499741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618456, -0.083237, -0.781398,
		0.785813, -0.061605, -0.615388,
		0.003085, -0.994624, 0.103508,
		15.076470, 17.952213, 19.530792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178223, 18.365271, 18.772499>,  <15.074311, 18.648451, 19.458338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178223, 18.365271, 18.772499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.006007, 18.078173, 18.991398>,  <14.902678, 17.905914, 19.122738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.006007, 18.078173, 18.991398>,  <15.178223, 18.365271, 18.772499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006007, 18.078173, 18.991398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743891, -0.061188, -0.665494,
		0.511140, -0.693612, -0.507580,
		-0.430537, -0.717745, 0.547247,
		14.876846, 17.862850, 19.155573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.713243, 18.682568, 18.524216>,  <15.178223, 18.365271, 18.772499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.713243, 18.682568, 18.524216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968633, 18.426699, 18.353022>,  <16.121866, 18.273178, 18.250305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968633, 18.426699, 18.353022>,  <15.713243, 18.682568, 18.524216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968633, 18.426699, 18.353022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458324, -0.130725, 0.879119,
		-0.618294, -0.757452, 0.209711,
		0.638475, -0.639670, -0.427985,
		16.160175, 18.234798, 18.224627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169473, 19.189083, 18.585987>,  <15.713243, 18.682568, 18.524216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.169473, 19.189083, 18.585987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196636, 19.586832, 18.553461>,  <15.212934, 19.825481, 18.533945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196636, 19.586832, 18.553461>,  <15.169473, 19.189083, 18.585987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196636, 19.586832, 18.553461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990664, 0.076861, 0.112588,
		0.118204, 0.072909, 0.990309,
		0.067908, 0.994372, -0.081314,
		15.217009, 19.885143, 18.529066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.131889, 19.785971, 27.286928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.313898, 19.442390, 27.380873>,  <18.423103, 19.236242, 27.437239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.313898, 19.442390, 27.380873>,  <18.131889, 19.785971, 27.286928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.313898, 19.442390, 27.380873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206061, -0.358152, -0.910640,
		0.866310, 0.365967, -0.339964,
		0.455023, -0.858950, 0.234859,
		18.450405, 19.184706, 27.451330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.653509, 19.789780, 26.840271>,  <18.131889, 19.785971, 27.286928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.653509, 19.789780, 26.840271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.607651, 19.406614, 26.945536>,  <18.580135, 19.176714, 27.008696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.607651, 19.406614, 26.945536>,  <18.653509, 19.789780, 26.840271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607651, 19.406614, 26.945536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015783, -0.266633, -0.963669,
		0.993281, -0.106328, 0.045687,
		-0.114646, -0.957915, 0.263164,
		18.573257, 19.119240, 27.024485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.985619, 19.491222, 26.328646>,  <18.653509, 19.789780, 26.840271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.985619, 19.491222, 26.328646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.799915, 19.186378, 26.509159>,  <18.688494, 19.003473, 26.617468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.799915, 19.186378, 26.509159>,  <18.985619, 19.491222, 26.328646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.799915, 19.186378, 26.509159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033889, -0.493863, -0.868879,
		0.885051, -0.418678, 0.203453,
		-0.464258, -0.762108, 0.451283,
		18.660637, 18.957747, 26.644545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381729, 18.881283, 26.195402>,  <18.985619, 19.491222, 26.328646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381729, 18.881283, 26.195402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.010166, 18.755474, 26.273588>,  <18.787228, 18.679989, 26.320499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.010166, 18.755474, 26.273588>,  <19.381729, 18.881283, 26.195402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010166, 18.755474, 26.273588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080434, -0.343873, -0.935565,
		0.361472, -0.884775, 0.294128,
		-0.928907, -0.314522, 0.195467,
		18.731495, 18.661118, 26.332228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.282566, 18.235107, 25.895447>,  <19.381729, 18.881283, 26.195402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.282566, 18.235107, 25.895447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.904560, 18.364227, 25.916409>,  <18.677757, 18.441700, 25.928986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.904560, 18.364227, 25.916409>,  <19.282566, 18.235107, 25.895447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.904560, 18.364227, 25.916409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204518, -0.458323, -0.864935,
		-0.255183, -0.828095, 0.499140,
		-0.945015, 0.322800, 0.052404,
		18.621056, 18.461067, 25.932129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843918, 17.662107, 25.768572>,  <19.282566, 18.235107, 25.895447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.843918, 17.662107, 25.768572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.611103, 17.974112, 25.676641>,  <18.471415, 18.161314, 25.621483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.611103, 17.974112, 25.676641>,  <18.843918, 17.662107, 25.768572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611103, 17.974112, 25.676641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302761, -0.470182, -0.829014,
		-0.754699, -0.412933, 0.509819,
		-0.582035, 0.780009, -0.229826,
		18.436493, 18.208115, 25.607693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276768, 17.328438, 25.442726>,  <18.843918, 17.662107, 25.768572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276768, 17.328438, 25.442726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.225882, 17.717268, 25.363850>,  <18.195351, 17.950565, 25.316523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.225882, 17.717268, 25.363850>,  <18.276768, 17.328438, 25.442726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225882, 17.717268, 25.363850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585285, -0.234076, -0.776306,
		-0.800786, 0.016657, 0.598719,
		-0.127214, 0.972076, -0.197194,
		18.187717, 18.008890, 25.304691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552481, 17.494192, 25.351961>,  <18.276768, 17.328438, 25.442726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.552481, 17.494192, 25.351961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.704948, 17.810457, 25.160311>,  <17.796429, 18.000216, 25.045321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.704948, 17.810457, 25.160311>,  <17.552481, 17.494192, 25.351961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.704948, 17.810457, 25.160311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711209, -0.080337, -0.698375,
		-0.590671, 0.606957, 0.531705,
		0.381168, 0.790663, -0.479127,
		17.819300, 18.047657, 25.016573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954538, 17.828312, 25.069914>,  <17.552481, 17.494192, 25.351961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954538, 17.828312, 25.069914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.249857, 17.986706, 24.851515>,  <17.427048, 18.081741, 24.720476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.249857, 17.986706, 24.851515>,  <16.954538, 17.828312, 25.069914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249857, 17.986706, 24.851515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589721, -0.013878, -0.807488,
		-0.327329, 0.918152, 0.223274,
		0.738299, 0.395984, -0.545996,
		17.471346, 18.105501, 24.687716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650845, 18.404396, 24.682085>,  <16.954538, 17.828312, 25.069914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650845, 18.404396, 24.682085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.984213, 18.351257, 24.467510>,  <17.184235, 18.319374, 24.338766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.984213, 18.351257, 24.467510>,  <16.650845, 18.404396, 24.682085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.984213, 18.351257, 24.467510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546941, -0.059239, -0.835073,
		0.079160, 0.989365, -0.122031,
		0.833420, -0.132848, -0.536435,
		17.234240, 18.311403, 24.306580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556089, 18.833277, 24.194872>,  <16.650845, 18.404396, 24.682085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556089, 18.833277, 24.194872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.828484, 18.571262, 24.063917>,  <16.991920, 18.414053, 23.985344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.828484, 18.571262, 24.063917>,  <16.556089, 18.833277, 24.194872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828484, 18.571262, 24.063917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506287, -0.098133, -0.856764,
		0.529085, 0.749196, -0.398464,
		0.680986, -0.655038, -0.327388,
		17.032780, 18.374750, 23.965700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795738, 19.180021, 23.591202>,  <16.556089, 18.833277, 24.194872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.795738, 19.180021, 23.591202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.884947, 18.790808, 23.567661>,  <16.938471, 18.557280, 23.553537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.884947, 18.790808, 23.567661>,  <16.795738, 19.180021, 23.591202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884947, 18.790808, 23.567661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410011, -0.038861, -0.911252,
		0.884394, 0.227356, -0.407622,
		0.223019, -0.973036, -0.058850,
		16.951853, 18.498898, 23.550007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234840, 19.116951, 22.981728>,  <16.795738, 19.180021, 23.591202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.234840, 19.116951, 22.981728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.072618, 18.757090, 23.046408>,  <16.975285, 18.541172, 23.085217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.072618, 18.757090, 23.046408>,  <17.234840, 19.116951, 22.981728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072618, 18.757090, 23.046408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376131, 0.003019, -0.926561,
		0.833097, -0.436592, -0.339613,
		-0.405555, -0.899654, 0.161701,
		16.950953, 18.487194, 23.094917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377596, 18.738676, 22.371021>,  <17.234840, 19.116951, 22.981728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377596, 18.738676, 22.371021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.076845, 18.538818, 22.543085>,  <16.896395, 18.418903, 22.646322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.076845, 18.538818, 22.543085>,  <17.377596, 18.738676, 22.371021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.076845, 18.538818, 22.543085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273273, -0.357584, -0.893004,
		0.600004, -0.788979, 0.132319,
		-0.751876, -0.499646, 0.430158,
		16.851282, 18.388924, 22.672132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086046, 18.738928, 22.172583>,  <17.377596, 18.738676, 22.371021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086046, 18.738928, 22.172583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.013165, 19.098896, 22.014116>,  <17.969437, 19.314877, 21.919037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.013165, 19.098896, 22.014116>,  <18.086046, 18.738928, 22.172583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.013165, 19.098896, 22.014116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135077, 0.421997, 0.896478,
		0.973939, 0.109827, -0.198447,
		-0.182202, 0.899920, -0.396164,
		17.958504, 19.368872, 21.895267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.724037, 19.174389, 22.407623>,  <18.086046, 18.738928, 22.172583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.724037, 19.174389, 22.407623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.428139, 19.425167, 22.309879>,  <18.250599, 19.575634, 22.251232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.428139, 19.425167, 22.309879>,  <18.724037, 19.174389, 22.407623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.428139, 19.425167, 22.309879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122763, 0.482809, 0.867079,
		0.661590, 0.611421, -0.434122,
		-0.739748, 0.626945, -0.244362,
		18.206215, 19.613251, 22.236570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994144, 19.922192, 22.329800>,  <18.724037, 19.174389, 22.407623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.994144, 19.922192, 22.329800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.604166, 19.954298, 22.412785>,  <18.370180, 19.973562, 22.462576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.604166, 19.954298, 22.412785>,  <18.994144, 19.922192, 22.329800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604166, 19.954298, 22.412785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209879, 0.641004, 0.738285,
		-0.073725, 0.763329, -0.641789,
		-0.974944, 0.080268, 0.207465,
		18.311684, 19.978378, 22.475023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995565, 20.575712, 22.522509>,  <18.994144, 19.922192, 22.329800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.995565, 20.575712, 22.522509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.638355, 20.445784, 22.647085>,  <18.424028, 20.367826, 22.721830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.638355, 20.445784, 22.647085>,  <18.995565, 20.575712, 22.522509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.638355, 20.445784, 22.647085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064311, 0.592856, 0.802736,
		-0.445386, 0.736894, -0.508546,
		-0.893026, -0.324822, 0.311441,
		18.370447, 20.348337, 22.740517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.673752, 21.147007, 22.760796>,  <18.995565, 20.575712, 22.522509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.673752, 21.147007, 22.760796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.499367, 20.832962, 22.936768>,  <18.394735, 20.644535, 23.042351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.499367, 20.832962, 22.936768>,  <18.673752, 21.147007, 22.760796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499367, 20.832962, 22.936768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054409, 0.464941, 0.883668,
		-0.898319, 0.409183, -0.159980,
		-0.435963, -0.785111, 0.439929,
		18.368578, 20.597429, 23.068747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220644, 21.463436, 23.270626>,  <18.673752, 21.147007, 22.760796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220644, 21.463436, 23.270626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.250496, 21.084877, 23.396334>,  <18.268406, 20.857742, 23.471758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.250496, 21.084877, 23.396334>,  <18.220644, 21.463436, 23.270626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250496, 21.084877, 23.396334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077016, 0.319677, 0.944392,
		-0.994233, -0.046275, 0.096744,
		0.074628, -0.946396, 0.314269,
		18.272884, 20.800959, 23.490614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665409, 21.302094, 23.819336>,  <18.220644, 21.463436, 23.270626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665409, 21.302094, 23.819336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.986473, 21.070831, 23.877951>,  <18.179111, 20.932074, 23.913120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.986473, 21.070831, 23.877951>,  <17.665409, 21.302094, 23.819336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986473, 21.070831, 23.877951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077898, 0.345202, 0.935290,
		-0.591331, -0.739303, 0.322117,
		0.802658, -0.578158, 0.146539,
		18.227270, 20.897385, 23.921913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587551, 21.170305, 24.540880>,  <17.665409, 21.302094, 23.819336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587551, 21.170305, 24.540880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.951731, 21.036871, 24.443060>,  <18.170238, 20.956810, 24.384367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.951731, 21.036871, 24.443060>,  <17.587551, 21.170305, 24.540880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951731, 21.036871, 24.443060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294847, 0.108757, 0.949335,
		-0.290086, -0.936426, 0.197374,
		0.910448, -0.333584, -0.244553,
		18.224865, 20.936796, 24.369694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.772997, 20.687933, 25.047895>,  <17.587551, 21.170305, 24.540880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.772997, 20.687933, 25.047895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.111813, 20.829340, 24.889124>,  <18.315102, 20.914185, 24.793861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.111813, 20.829340, 24.889124>,  <17.772997, 20.687933, 25.047895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.111813, 20.829340, 24.889124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342981, 0.206981, 0.916255,
		0.406070, -0.912241, 0.054070,
		0.847037, 0.353519, -0.396930,
		18.365923, 20.935396, 24.770044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159544, 20.503965, 25.460930>,  <17.772997, 20.687933, 25.047895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.159544, 20.503965, 25.460930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.377529, 20.777088, 25.266285>,  <18.508320, 20.940962, 25.149498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.377529, 20.777088, 25.266285>,  <18.159544, 20.503965, 25.460930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377529, 20.777088, 25.266285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456103, 0.245569, 0.855374,
		0.703554, -0.688090, -0.177606,
		0.544960, 0.682808, -0.486612,
		18.541018, 20.981930, 25.120302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817320, 20.289404, 25.607660>,  <18.159544, 20.503965, 25.460930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817320, 20.289404, 25.607660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.823074, 20.671976, 25.491020>,  <18.826527, 20.901520, 25.421036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.823074, 20.671976, 25.491020>,  <18.817320, 20.289404, 25.607660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823074, 20.671976, 25.491020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460136, 0.252584, 0.851162,
		0.887732, -0.146418, -0.436456,
		0.014384, 0.956433, -0.291599,
		18.827389, 20.958906, 25.403540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549129, 20.467632, 25.560482>,  <18.817320, 20.289404, 25.607660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549129, 20.467632, 25.560482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.353031, 20.815285, 25.586626>,  <19.235373, 21.023876, 25.602312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.353031, 20.815285, 25.586626>,  <19.549129, 20.467632, 25.560482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353031, 20.815285, 25.586626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589383, 0.275335, 0.759485,
		0.642096, 0.410856, -0.647232,
		-0.490245, 0.869130, 0.065361,
		19.205957, 21.076023, 25.606234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061861, 20.950224, 25.666235>,  <19.549129, 20.467632, 25.560482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061861, 20.950224, 25.666235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.744274, 21.137693, 25.821133>,  <19.553722, 21.250175, 25.914072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.744274, 21.137693, 25.821133>,  <20.061861, 20.950224, 25.666235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.744274, 21.137693, 25.821133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534053, 0.233286, 0.812628,
		0.290516, 0.852012, -0.435518,
		-0.793969, 0.468672, 0.387247,
		19.506083, 21.278296, 25.937307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.309464, 21.601410, 25.985676>,  <20.061861, 20.950224, 25.666235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.309464, 21.601410, 25.985676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.950941, 21.546068, 26.154196>,  <19.735826, 21.512863, 26.255308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.950941, 21.546068, 26.154196>,  <20.309464, 21.601410, 25.985676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950941, 21.546068, 26.154196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384645, 0.230153, 0.893912,
		-0.220639, 0.963269, -0.153070,
		-0.896307, -0.138354, 0.421298,
		19.682049, 21.504562, 26.280584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.353057, 24.238031, 26.180437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.610802, 23.932686, 26.198643>,  <15.765449, 23.749477, 26.209566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.610802, 23.932686, 26.198643>,  <15.353057, 24.238031, 26.180437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610802, 23.932686, 26.198643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038836, -0.026774, -0.998887,
		0.763733, 0.645413, 0.012394,
		0.644363, -0.763365, 0.045514,
		15.804111, 23.703676, 26.212297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807384, 24.370722, 25.670780>,  <15.353057, 24.238031, 26.180437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807384, 24.370722, 25.670780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.897624, 23.983524, 25.714764>,  <15.951768, 23.751205, 25.741154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.897624, 23.983524, 25.714764>,  <15.807384, 24.370722, 25.670780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897624, 23.983524, 25.714764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202386, -0.156975, -0.966643,
		0.952966, 0.195819, -0.231322,
		0.225599, -0.967995, 0.109961,
		15.965303, 23.693127, 25.747751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192530, 24.092449, 25.001146>,  <15.807384, 24.370722, 25.670780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192530, 24.092449, 25.001146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.076941, 23.747334, 25.167080>,  <16.007587, 23.540264, 25.266640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.076941, 23.747334, 25.167080>,  <16.192530, 24.092449, 25.001146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.076941, 23.747334, 25.167080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236130, -0.355695, -0.904281,
		0.927759, -0.359267, -0.100945,
		-0.288973, -0.862791, 0.414833,
		15.990249, 23.488497, 25.291531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459229, 23.590784, 24.640184>,  <16.192530, 24.092449, 25.001146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459229, 23.590784, 24.640184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.164200, 23.380037, 24.809135>,  <15.987183, 23.253590, 24.910505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.164200, 23.380037, 24.809135>,  <16.459229, 23.590784, 24.640184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.164200, 23.380037, 24.809135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067260, -0.565063, -0.822302,
		0.671911, -0.634915, 0.381337,
		-0.737572, -0.526865, 0.422377,
		15.942928, 23.221977, 24.935848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581665, 22.872295, 24.563148>,  <16.459229, 23.590784, 24.640184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.581665, 22.872295, 24.563148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.185795, 22.914335, 24.602127>,  <15.948273, 22.939560, 24.625515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.185795, 22.914335, 24.602127>,  <16.581665, 22.872295, 24.563148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.185795, 22.914335, 24.602127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138980, -0.537617, -0.831657,
		-0.035018, -0.836614, 0.546673,
		-0.989676, 0.105100, 0.097446,
		15.888892, 22.945866, 24.631361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416824, 22.412704, 23.879147>,  <16.581665, 22.872295, 24.563148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.416824, 22.412704, 23.879147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.076630, 22.496962, 24.071938>,  <15.872513, 22.547516, 24.187613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.076630, 22.496962, 24.071938>,  <16.416824, 22.412704, 23.879147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.076630, 22.496962, 24.071938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516496, -0.507794, -0.689476,
		0.099511, -0.835329, 0.540668,
		-0.850488, 0.210643, 0.481975,
		15.821484, 22.560154, 24.216530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057852, 21.754965, 23.967815>,  <16.416824, 22.412704, 23.879147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.057852, 21.754965, 23.967815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.836246, 22.086147, 23.933060>,  <15.703281, 22.284857, 23.912207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.836246, 22.086147, 23.933060>,  <16.057852, 21.754965, 23.967815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.836246, 22.086147, 23.933060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519845, -0.425580, -0.740704,
		-0.650251, -0.365194, 0.666189,
		-0.554017, 0.827959, -0.086889,
		15.670040, 22.334536, 23.906994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368593, 21.554430, 23.902649>,  <16.057852, 21.754965, 23.967815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368593, 21.554430, 23.902649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.348588, 21.929222, 23.764334>,  <15.336585, 22.154097, 23.681345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.348588, 21.929222, 23.764334>,  <15.368593, 21.554430, 23.902649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.348588, 21.929222, 23.764334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598202, -0.305352, -0.740887,
		-0.799783, 0.169798, 0.575774,
		-0.050013, 0.936979, -0.345789,
		15.333584, 22.210316, 23.660597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.708714, 21.551725, 23.608969>,  <15.368593, 21.554430, 23.902649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.708714, 21.551725, 23.608969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.903121, 21.858332, 23.441048>,  <15.019766, 22.042295, 23.340294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.903121, 21.858332, 23.441048>,  <14.708714, 21.551725, 23.608969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903121, 21.858332, 23.441048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460992, -0.183241, -0.868280,
		-0.742477, 0.615527, 0.264300,
		0.486019, 0.766518, -0.419805,
		15.048926, 22.088287, 23.315105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252202, 21.854013, 23.131903>,  <14.708714, 21.551725, 23.608969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252202, 21.854013, 23.131903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.601452, 22.000463, 23.003153>,  <14.811002, 22.088333, 22.925903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.601452, 22.000463, 23.003153>,  <14.252202, 21.854013, 23.131903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.601452, 22.000463, 23.003153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312655, -0.086026, -0.945963,
		-0.374032, 0.926580, 0.039360,
		0.873125, 0.366127, -0.321877,
		14.863389, 22.110302, 22.906590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040875, 22.444788, 22.695318>,  <14.252202, 21.854013, 23.131903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040875, 22.444788, 22.695318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.415656, 22.339308, 22.603594>,  <14.640525, 22.276020, 22.548559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.415656, 22.339308, 22.603594>,  <14.040875, 22.444788, 22.695318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415656, 22.339308, 22.603594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241460, -0.014161, -0.970307,
		0.252623, 0.964500, -0.076941,
		0.936952, -0.263701, -0.229311,
		14.696742, 22.260197, 22.534801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.185850, 22.738722, 21.988935>,  <14.040875, 22.444788, 22.695318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.185850, 22.738722, 21.988935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.482268, 22.472612, 22.025301>,  <14.660119, 22.312946, 22.047121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.482268, 22.472612, 22.025301>,  <14.185850, 22.738722, 21.988935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482268, 22.472612, 22.025301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015143, -0.151924, -0.988276,
		0.671285, 0.730980, -0.122657,
		0.741045, -0.665272, 0.090915,
		14.704582, 22.273031, 22.052576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627133, 22.934830, 21.502968>,  <14.185850, 22.738722, 21.988935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627133, 22.934830, 21.502968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.688319, 22.548462, 21.586493>,  <14.725031, 22.316641, 21.636608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.688319, 22.548462, 21.586493>,  <14.627133, 22.934830, 21.502968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.688319, 22.548462, 21.586493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158355, -0.232526, -0.959612,
		0.975461, 0.113719, -0.188527,
		0.152964, -0.965919, 0.208812,
		14.734208, 22.258686, 21.649136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099436, 22.698267, 20.880272>,  <14.627133, 22.934830, 21.502968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099436, 22.698267, 20.880272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.932385, 22.379644, 21.055126>,  <14.832155, 22.188471, 21.160038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.932385, 22.379644, 21.055126>,  <15.099436, 22.698267, 20.880272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.932385, 22.379644, 21.055126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145298, -0.416360, -0.897515,
		0.896927, -0.438339, 0.058144,
		-0.417625, -0.796557, 0.437135,
		14.807098, 22.140676, 21.186266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793598, 22.594608, 20.584078>,  <15.099436, 22.698267, 20.880272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793598, 22.594608, 20.584078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.850843, 22.947735, 20.405123>,  <15.885191, 23.159611, 20.297750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.850843, 22.947735, 20.405123>,  <15.793598, 22.594608, 20.584078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850843, 22.947735, 20.405123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300613, 0.391910, 0.869504,
		0.942948, -0.258929, -0.209298,
		0.143113, 0.882815, -0.447388,
		15.893778, 23.212580, 20.270906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446255, 22.810890, 20.870472>,  <15.793598, 22.594608, 20.584078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446255, 22.810890, 20.870472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.314737, 23.159153, 20.724127>,  <16.235826, 23.368111, 20.636320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.314737, 23.159153, 20.724127>,  <16.446255, 22.810890, 20.870472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314737, 23.159153, 20.724127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446456, 0.484674, 0.752175,
		0.832210, 0.083967, -0.548066,
		-0.328792, 0.870655, -0.365863,
		16.216101, 23.420349, 20.614368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049732, 23.258482, 20.954649>,  <16.446255, 22.810890, 20.870472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049732, 23.258482, 20.954649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.745010, 23.511005, 20.896538>,  <16.562178, 23.662519, 20.861671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.745010, 23.511005, 20.896538>,  <17.049732, 23.258482, 20.954649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745010, 23.511005, 20.896538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373449, 0.611223, 0.697812,
		0.529333, 0.477341, -0.701393,
		-0.761802, 0.631310, -0.145278,
		16.516470, 23.700397, 20.852955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343885, 23.947371, 20.949200>,  <17.049732, 23.258482, 20.954649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.343885, 23.947371, 20.949200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.960730, 23.955244, 21.063786>,  <16.730837, 23.959969, 21.132538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.960730, 23.955244, 21.063786>,  <17.343885, 23.947371, 20.949200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960730, 23.955244, 21.063786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234482, 0.629454, 0.740814,
		-0.165733, 0.776788, -0.607563,
		-0.957889, 0.019686, 0.286464,
		16.673363, 23.961149, 21.149725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257048, 24.522928, 20.985502>,  <17.343885, 23.947371, 20.949200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.257048, 24.522928, 20.985502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.982487, 24.346859, 21.217054>,  <16.817751, 24.241217, 21.355986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.982487, 24.346859, 21.217054>,  <17.257048, 24.522928, 20.985502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982487, 24.346859, 21.217054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333519, 0.516822, 0.788454,
		-0.646235, 0.734263, -0.207940,
		-0.686401, -0.440174, 0.578879,
		16.776567, 24.214808, 21.390718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939190, 25.020779, 21.297520>,  <17.257048, 24.522928, 20.985502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939190, 25.020779, 21.297520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.884903, 24.701176, 21.531841>,  <16.852331, 24.509413, 21.672434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.884903, 24.701176, 21.531841>,  <16.939190, 25.020779, 21.297520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884903, 24.701176, 21.531841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395362, 0.498478, 0.771497,
		-0.908443, 0.336310, 0.248246,
		-0.135717, -0.799009, 0.585803,
		16.844189, 24.461473, 21.707582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802832, 25.361185, 21.872715>,  <16.939190, 25.020779, 21.297520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802832, 25.361185, 21.872715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.840271, 24.980690, 21.990282>,  <16.862734, 24.752394, 22.060823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.840271, 24.980690, 21.990282>,  <16.802832, 25.361185, 21.872715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.840271, 24.980690, 21.990282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316626, 0.308327, 0.897041,
		-0.943921, 0.009102, 0.330045,
		0.093597, -0.951237, 0.293919,
		16.868351, 24.695318, 22.078457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454609, 25.394697, 22.551594>,  <16.802832, 25.361185, 21.872715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454609, 25.394697, 22.551594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.715265, 25.093313, 22.516579>,  <16.871660, 24.912483, 22.495569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.715265, 25.093313, 22.516579>,  <16.454609, 25.394697, 22.551594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715265, 25.093313, 22.516579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403120, 0.246245, 0.881395,
		-0.642539, -0.609643, 0.464198,
		0.651643, -0.753458, -0.087537,
		16.910759, 24.867275, 22.490318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504095, 25.046427, 23.240402>,  <16.454609, 25.394697, 22.551594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.504095, 25.046427, 23.240402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.840689, 24.954851, 23.044649>,  <17.042645, 24.899906, 22.927198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.840689, 24.954851, 23.044649>,  <16.504095, 25.046427, 23.240402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.840689, 24.954851, 23.044649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524916, 0.131923, 0.840869,
		-0.127946, -0.964460, 0.231184,
		0.841483, -0.228938, -0.489381,
		17.093134, 24.886169, 22.897835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772934, 24.381096, 23.645180>,  <16.504095, 25.046427, 23.240402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772934, 24.381096, 23.645180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.073517, 24.550718, 23.442997>,  <17.253866, 24.652493, 23.321688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.073517, 24.550718, 23.442997>,  <16.772934, 24.381096, 23.645180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073517, 24.550718, 23.442997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476486, 0.181101, 0.860327,
		0.456368, -0.887343, -0.065968,
		0.751458, 0.424058, -0.505455,
		17.298954, 24.677937, 23.291361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.261181, 24.027338, 23.729130>,  <16.772934, 24.381096, 23.645180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.261181, 24.027338, 23.729130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.430883, 24.377747, 23.637400>,  <17.532705, 24.587992, 23.582361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.430883, 24.377747, 23.637400>,  <17.261181, 24.027338, 23.729130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430883, 24.377747, 23.637400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366330, 0.065567, 0.928172,
		0.828137, -0.477791, -0.293097,
		0.424254, 0.876024, -0.229327,
		17.558159, 24.640554, 23.568602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848007, 24.039869, 24.072912>,  <17.261181, 24.027338, 23.729130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848007, 24.039869, 24.072912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.827152, 24.429674, 23.985636>,  <17.814640, 24.663557, 23.933270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.827152, 24.429674, 23.985636>,  <17.848007, 24.039869, 24.072912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827152, 24.429674, 23.985636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419798, 0.219633, 0.880642,
		0.906119, -0.045682, -0.420550,
		-0.052137, 0.974512, -0.218190,
		17.811512, 24.722029, 23.920179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398533, 24.317766, 24.254620>,  <17.848007, 24.039869, 24.072912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398533, 24.317766, 24.254620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.160311, 24.638899, 24.265749>,  <18.017378, 24.831579, 24.272427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.160311, 24.638899, 24.265749>,  <18.398533, 24.317766, 24.254620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.160311, 24.638899, 24.265749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285469, 0.179134, 0.941498,
		0.750881, 0.568657, -0.335868,
		-0.595555, 0.802833, 0.027825,
		17.981644, 24.879749, 24.274097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895329, 24.922588, 24.531345>,  <18.398533, 24.317766, 24.254620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.895329, 24.922588, 24.531345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.511974, 25.026089, 24.579592>,  <18.281961, 25.088188, 24.608540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.511974, 25.026089, 24.579592>,  <18.895329, 24.922588, 24.531345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511974, 25.026089, 24.579592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206077, 0.334641, 0.919537,
		0.197565, 0.906126, -0.374037,
		-0.958384, 0.258749, 0.120618,
		18.224459, 25.103714, 24.615778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.567772, 25.336851, 24.366476>,  <18.895329, 24.922588, 24.531345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.567772, 25.336851, 24.366476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.829996, 25.035397, 24.385525>,  <19.987331, 24.854523, 24.396954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.829996, 25.035397, 24.385525>,  <19.567772, 25.336851, 24.366476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829996, 25.035397, 24.385525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160890, -0.201013, -0.966286,
		0.737803, 0.625798, -0.253030,
		0.655562, -0.753639, 0.047623,
		20.026665, 24.809305, 24.399811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.953808, 25.401489, 23.792168>,  <19.567772, 25.336851, 24.366476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.953808, 25.401489, 23.792168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.005814, 25.018126, 23.893795>,  <20.037018, 24.788107, 23.954771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.005814, 25.018126, 23.893795>,  <19.953808, 25.401489, 23.792168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005814, 25.018126, 23.893795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149054, -0.272225, -0.950619,
		0.980244, 0.085726, -0.178248,
		0.130017, -0.958407, 0.254069,
		20.044819, 24.730604, 23.970016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471119, 25.093287, 23.327744>,  <19.953808, 25.401489, 23.792168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471119, 25.093287, 23.327744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.270512, 24.782150, 23.479237>,  <20.150146, 24.595469, 23.570133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.270512, 24.782150, 23.479237>,  <20.471119, 25.093287, 23.327744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.270512, 24.782150, 23.479237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091374, -0.482944, -0.870870,
		0.860308, -0.402150, 0.313280,
		-0.501518, -0.777843, 0.378735,
		20.120056, 24.548798, 23.592857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.880793, 24.462317, 23.161356>,  <20.471119, 25.093287, 23.327744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.880793, 24.462317, 23.161356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.501129, 24.352953, 23.223770>,  <20.273331, 24.287334, 23.261219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.501129, 24.352953, 23.223770>,  <20.880793, 24.462317, 23.161356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501129, 24.352953, 23.223770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005256, -0.481829, -0.876249,
		0.314756, -0.832519, 0.455895,
		-0.949158, -0.273408, 0.156035,
		20.216381, 24.270931, 23.270580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.833836, 23.898277, 22.728018>,  <20.880793, 24.462317, 23.161356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.833836, 23.898277, 22.728018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.451483, 23.929716, 22.841230>,  <20.222071, 23.948580, 22.909159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.451483, 23.929716, 22.841230>,  <20.833836, 23.898277, 22.728018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.451483, 23.929716, 22.841230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288467, -0.432970, -0.854005,
		0.055425, -0.897976, 0.436541,
		-0.955884, 0.078594, 0.283033,
		20.164717, 23.953295, 22.926140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.495802, 23.257929, 22.764673>,  <20.833836, 23.898277, 22.728018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.495802, 23.257929, 22.764673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.178228, 23.495007, 22.710445>,  <19.987684, 23.637253, 22.677910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.178228, 23.495007, 22.710445>,  <20.495802, 23.257929, 22.764673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.178228, 23.495007, 22.710445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264091, -0.537015, -0.801168,
		-0.547664, -0.600263, 0.582879,
		-0.793926, 0.592704, -0.135580,
		19.940048, 23.672815, 22.669775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.853140, 22.833237, 22.774614>,  <20.495802, 23.257929, 22.764673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.853140, 22.833237, 22.774614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.750210, 23.173105, 22.590509>,  <19.688452, 23.377028, 22.480047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.750210, 23.173105, 22.590509>,  <19.853140, 22.833237, 22.774614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750210, 23.173105, 22.590509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348627, -0.525852, -0.775847,
		-0.901246, -0.039184, 0.431533,
		-0.257323, 0.849673, -0.460261,
		19.673014, 23.428007, 22.452431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.130199, 22.697306, 22.298044>,  <19.853140, 22.833237, 22.774614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.130199, 22.697306, 22.298044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.268362, 23.034418, 22.132919>,  <19.351259, 23.236687, 22.033844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.268362, 23.034418, 22.132919>,  <19.130199, 22.697306, 22.298044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268362, 23.034418, 22.132919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170127, -0.376364, -0.910718,
		-0.922904, 0.384797, 0.013382,
		0.345405, 0.842782, -0.412812,
		19.371984, 23.287252, 22.009075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747881, 22.801725, 21.794542>,  <19.130199, 22.697306, 22.298044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.747881, 22.801725, 21.794542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.054071, 23.038176, 21.692865>,  <19.237785, 23.180046, 21.631859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.054071, 23.038176, 21.692865>,  <18.747881, 22.801725, 21.794542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054071, 23.038176, 21.692865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094160, -0.287881, -0.953026,
		-0.636537, 0.753454, -0.164706,
		0.765477, 0.591127, -0.254192,
		19.283714, 23.215513, 21.616608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.459846, 23.328901, 21.366177>,  <18.747881, 22.801725, 21.794542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.459846, 23.328901, 21.366177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.851158, 23.298174, 21.289167>,  <19.085945, 23.279737, 21.242962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.851158, 23.298174, 21.289167>,  <18.459846, 23.328901, 21.366177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851158, 23.298174, 21.289167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207279, -0.356096, -0.911170,
		0.001438, 0.931286, -0.364284,
		0.978281, -0.076819, -0.192524,
		19.144642, 23.275127, 21.231411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378452, 23.367874, 20.659771>,  <18.459846, 23.328901, 21.366177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378452, 23.367874, 20.659771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.743301, 23.214933, 20.718878>,  <18.962212, 23.123169, 20.754341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.743301, 23.214933, 20.718878>,  <18.378452, 23.367874, 20.659771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.743301, 23.214933, 20.718878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074526, -0.509156, -0.857441,
		0.403081, 0.771081, -0.492910,
		0.912125, -0.382353, 0.147765,
		19.016939, 23.100227, 20.763206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745399, 23.477936, 20.049541>,  <18.378452, 23.367874, 20.659771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745399, 23.477936, 20.049541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.937914, 23.186333, 20.244234>,  <19.053423, 23.011370, 20.361050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.937914, 23.186333, 20.244234>,  <18.745399, 23.477936, 20.049541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.937914, 23.186333, 20.244234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037146, -0.537812, -0.842246,
		0.875775, 0.423443, -0.231763,
		0.481288, -0.729009, 0.486731,
		19.082300, 22.967630, 20.390253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495895, 23.400766, 19.842712>,  <18.745399, 23.477936, 20.049541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.495895, 23.400766, 19.842712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.385311, 23.040510, 19.976828>,  <19.318960, 22.824356, 20.057297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.385311, 23.040510, 19.976828>,  <19.495895, 23.400766, 19.842712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385311, 23.040510, 19.976828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091634, -0.372001, -0.923698,
		0.956646, -0.224644, 0.185373,
		-0.276462, -0.900639, 0.335288,
		19.302372, 22.770319, 20.077414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974957, 22.899330, 19.472013>,  <19.495895, 23.400766, 19.842712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.974957, 22.899330, 19.472013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.682131, 22.676504, 19.628864>,  <19.506435, 22.542809, 19.722975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.682131, 22.676504, 19.628864>,  <19.974957, 22.899330, 19.472013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.682131, 22.676504, 19.628864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081902, -0.643405, -0.761132,
		0.676296, -0.525080, 0.516638,
		-0.732063, -0.557064, 0.392127,
		19.462511, 22.509384, 19.746502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.286807, 9.923828, 17.663141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.405477, 9.746397, 17.324858>,  <14.476679, 9.639938, 17.121887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.405477, 9.746397, 17.324858>,  <14.286807, 9.923828, 17.663141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.405477, 9.746397, 17.324858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081476, -0.894106, 0.440381,
		-0.951497, -0.061744, -0.301399,
		0.296674, -0.443578, -0.845709,
		14.494479, 9.613323, 17.071146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.870965, 9.482242, 18.052000>,  <14.286807, 9.923828, 17.663141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.870965, 9.482242, 18.052000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.655118, 9.809286, 17.971676>,  <13.525610, 10.005513, 17.923481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.655118, 9.809286, 17.971676>,  <13.870965, 9.482242, 18.052000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.655118, 9.809286, 17.971676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041271, 0.212539, 0.976281,
		0.840898, 0.535106, -0.080946,
		-0.539617, 0.817612, -0.200808,
		13.493233, 10.054569, 17.911434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526163, 9.301658, 17.400421>,  <13.870965, 9.482242, 18.052000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526163, 9.301658, 17.400421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.908348, 9.218133, 17.317003>,  <14.137659, 9.168018, 17.266953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.908348, 9.218133, 17.317003>,  <13.526163, 9.301658, 17.400421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.908348, 9.218133, 17.317003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169527, -0.966778, 0.191313,
		-0.241565, -0.147438, -0.959118,
		0.955462, -0.208811, -0.208545,
		14.194986, 9.155490, 17.254440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.803124, 9.047239, 17.580494>,  <13.526163, 9.301658, 17.400421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.803124, 9.047239, 17.580494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.560136, 8.769638, 17.735069>,  <12.414343, 8.603077, 17.827816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.560136, 8.769638, 17.735069>,  <12.803124, 9.047239, 17.580494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.560136, 8.769638, 17.735069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745991, 0.331297, -0.577702,
		0.272900, -0.639220, -0.718974,
		-0.607473, -0.694003, 0.386442,
		12.377894, 8.561437, 17.851002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.164021, 9.172145, 17.177189>,  <12.803124, 9.047239, 17.580494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.164021, 9.172145, 17.177189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.073228, 8.890444, 17.446262>,  <12.018752, 8.721423, 17.607706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.073228, 8.890444, 17.446262>,  <12.164021, 9.172145, 17.177189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.073228, 8.890444, 17.446262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973896, 0.165831, -0.155008,
		-0.002388, -0.690310, -0.723510,
		-0.226984, -0.704253, 0.672686,
		12.005133, 8.679168, 17.648067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.653193, 8.606723, 16.935385>,  <12.164021, 9.172145, 17.177189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.653193, 8.606723, 16.935385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.610882, 8.677011, 17.326881>,  <11.585495, 8.719183, 17.561779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.610882, 8.677011, 17.326881>,  <11.653193, 8.606723, 16.935385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.610882, 8.677011, 17.326881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917933, 0.361226, -0.164058,
		-0.382375, -0.915772, 0.123088,
		-0.105777, 0.175718, 0.978741,
		11.579148, 8.729726, 17.620504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953605, 8.320820, 17.233490>,  <11.653193, 8.606723, 16.935385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953605, 8.320820, 17.233490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.122086, 8.672179, 17.323826>,  <11.223174, 8.882995, 17.378027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.122086, 8.672179, 17.323826>,  <10.953605, 8.320820, 17.233490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.122086, 8.672179, 17.323826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780733, 0.477880, -0.402600,
		-0.461567, -0.006743, 0.887080,
		0.421203, 0.878399, 0.225837,
		11.248446, 8.935699, 17.391577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.385795, 8.864843, 17.357273>,  <10.953605, 8.320820, 17.233490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.385795, 8.864843, 17.357273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.702563, 9.097816, 17.283913>,  <10.892624, 9.237598, 17.239897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.702563, 9.097816, 17.283913>,  <10.385795, 8.864843, 17.357273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.702563, 9.097816, 17.283913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597450, 0.801112, -0.035668,
		0.126151, 0.137819, 0.982391,
		0.791921, 0.582430, -0.183401,
		10.940140, 9.272545, 17.228891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.366513, 9.457818, 17.842667>,  <10.385795, 8.864843, 17.357273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.366513, 9.457818, 17.842667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.559237, 9.542692, 17.502586>,  <10.674870, 9.593616, 17.298538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.559237, 9.542692, 17.502586>,  <10.366513, 9.457818, 17.842667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.559237, 9.542692, 17.502586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540144, 0.835908, -0.097481,
		0.690004, 0.506198, 0.517357,
		0.481807, 0.212185, -0.850199,
		10.703779, 9.606348, 17.247526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.447502, 10.054495, 17.952967>,  <10.366513, 9.457818, 17.842667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.447502, 10.054495, 17.952967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.444579, 9.987535, 17.558622>,  <10.442825, 9.947360, 17.322016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.444579, 9.987535, 17.558622>,  <10.447502, 10.054495, 17.952967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.444579, 9.987535, 17.558622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660844, 0.740726, -0.120878,
		0.750488, 0.650617, -0.116037,
		-0.007307, -0.167400, -0.985862,
		10.442388, 9.937316, 17.262863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.740913, 10.662961, 17.505964>,  <10.447502, 10.054495, 17.952967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.740913, 10.662961, 17.505964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.448067, 10.442394, 17.345991>,  <10.272359, 10.310055, 17.250008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.448067, 10.442394, 17.345991>,  <10.740913, 10.662961, 17.505964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.448067, 10.442394, 17.345991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530846, 0.829769, -0.172295,
		0.426857, 0.086162, -0.900205,
		-0.732117, -0.551416, -0.399932,
		10.228432, 10.276970, 17.226011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.569592, 10.988346, 16.870144>,  <10.740913, 10.662961, 17.505964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.569592, 10.988346, 16.870144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.261815, 10.761280, 16.987253>,  <10.077149, 10.625040, 17.057518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.261815, 10.761280, 16.987253>,  <10.569592, 10.988346, 16.870144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.261815, 10.761280, 16.987253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609917, 0.789103, -0.072916,
		-0.189636, -0.234672, -0.953398,
		-0.769441, -0.567666, 0.292773,
		10.030983, 10.590981, 17.075085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.080563, 11.239103, 16.421743>,  <10.569592, 10.988346, 16.870144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.080563, 11.239103, 16.421743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.882939, 11.027590, 16.697800>,  <9.764365, 10.900681, 16.863434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.882939, 11.027590, 16.697800>,  <10.080563, 11.239103, 16.421743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.882939, 11.027590, 16.697800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770642, 0.633836, -0.066046,
		-0.402512, -0.564482, -0.720655,
		-0.494059, -0.528783, 0.690141,
		9.734721, 10.868955, 16.904842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.470926, 11.060188, 16.078133>,  <10.080563, 11.239103, 16.421743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.470926, 11.060188, 16.078133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.431152, 11.078156, 16.475744>,  <9.407288, 11.088936, 16.714312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.431152, 11.078156, 16.475744>,  <9.470926, 11.060188, 16.078133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.431152, 11.078156, 16.475744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664731, 0.740367, -0.099950,
		-0.740436, -0.670701, -0.043760,
		-0.099435, 0.044918, 0.994030,
		9.401321, 11.091631, 16.773952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.723928, 11.034104, 16.197987>,  <9.470926, 11.060188, 16.078133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.723928, 11.034104, 16.197987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.895554, 11.204474, 16.516607>,  <8.998528, 11.306697, 16.707779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.895554, 11.204474, 16.516607>,  <8.723928, 11.034104, 16.197987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.895554, 11.204474, 16.516607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623148, 0.777968, -0.080328,
		-0.653904, -0.461903, 0.599212,
		0.429064, 0.425925, 0.796550,
		9.024273, 11.332252, 16.755571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.215171, 11.331018, 16.562653>,  <8.723928, 11.034104, 16.197987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.215171, 11.331018, 16.562653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.532965, 11.530345, 16.701490>,  <8.723640, 11.649940, 16.784794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.532965, 11.530345, 16.701490>,  <8.215171, 11.331018, 16.562653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.532965, 11.530345, 16.701490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556013, 0.826738, 0.085758,
		-0.244223, -0.261124, 0.933900,
		0.794484, 0.498316, 0.347097,
		8.771310, 11.679840, 16.805620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.818487, 11.831781, 16.943380>,  <8.215171, 11.331018, 16.562653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.818487, 11.831781, 16.943380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.192361, 11.973901, 16.938894>,  <8.416685, 12.059173, 16.936203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.192361, 11.973901, 16.938894>,  <7.818487, 11.831781, 16.943380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.192361, 11.973901, 16.938894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354355, 0.928772, -0.108700,
		-0.028204, 0.105574, 0.994011,
		0.934686, 0.355299, -0.011216,
		8.472767, 12.080490, 16.935530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.886241, 12.283559, 17.498173>,  <7.818487, 11.831781, 16.943380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.886241, 12.283559, 17.498173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.173628, 12.375593, 17.235611>,  <8.346060, 12.430814, 17.078074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.173628, 12.375593, 17.235611>,  <7.886241, 12.283559, 17.498173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.173628, 12.375593, 17.235611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341738, 0.938717, -0.045007,
		0.605822, 0.256654, 0.753066,
		0.718467, 0.230085, -0.656404,
		8.389168, 12.444618, 17.038691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.014873, 12.990069, 17.641378>,  <7.886241, 12.283559, 17.498173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.014873, 12.990069, 17.641378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.161612, 12.921334, 17.275669>,  <8.249655, 12.880093, 17.056244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.161612, 12.921334, 17.275669>,  <8.014873, 12.990069, 17.641378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.161612, 12.921334, 17.275669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408228, 0.853375, -0.324192,
		0.835927, 0.492161, 0.242908,
		0.366847, -0.171839, -0.914273,
		8.271666, 12.869782, 17.001387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.359769, 13.611959, 17.333759>,  <8.014873, 12.990069, 17.641378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.359769, 13.611959, 17.333759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.296040, 13.386239, 17.009739>,  <8.257802, 13.250808, 16.815327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.296040, 13.386239, 17.009739>,  <8.359769, 13.611959, 17.333759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.296040, 13.386239, 17.009739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430682, 0.778064, -0.457307,
		0.888330, 0.276015, -0.366997,
		-0.159324, -0.564298, -0.810052,
		8.248242, 13.216949, 16.766724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.591930, 14.039095, 16.767626>,  <8.359769, 13.611959, 17.333759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.591930, 14.039095, 16.767626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.321313, 13.772090, 16.643229>,  <8.158942, 13.611887, 16.568590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.321313, 13.772090, 16.643229>,  <8.591930, 14.039095, 16.767626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.321313, 13.772090, 16.643229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467312, 0.715548, -0.519240,
		0.569128, -0.205960, -0.796037,
		-0.676545, -0.667512, -0.310990,
		8.118350, 13.571836, 16.549931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.562931, 14.224524, 16.094038>,  <8.591930, 14.039095, 16.767626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.562931, 14.224524, 16.094038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.232140, 14.004677, 16.141415>,  <8.033665, 13.872768, 16.169840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.232140, 14.004677, 16.141415>,  <8.562931, 14.224524, 16.094038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.232140, 14.004677, 16.141415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503225, 0.629620, -0.591898,
		0.250744, -0.549089, -0.797263,
		-0.826978, -0.549618, 0.118442,
		7.984046, 13.839791, 16.176947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.275845, 14.103816, 15.371505>,  <8.562931, 14.224524, 16.094038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.275845, 14.103816, 15.371505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.979192, 14.048549, 15.634075>,  <7.801201, 14.015388, 15.791617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.979192, 14.048549, 15.634075>,  <8.275845, 14.103816, 15.371505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.979192, 14.048549, 15.634075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576956, 0.630588, -0.519116,
		-0.342209, -0.763721, -0.547380,
		-0.741630, -0.138168, 0.656426,
		7.756703, 14.007098, 15.831003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.626166, 13.762502, 15.156837>,  <8.275845, 14.103816, 15.371505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.626166, 13.762502, 15.156837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.473927, 13.942760, 15.479838>,  <7.382585, 14.050915, 15.673639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.473927, 13.942760, 15.479838>,  <7.626166, 13.762502, 15.156837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.473927, 13.942760, 15.479838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617469, 0.526194, -0.584681,
		-0.688388, -0.721137, 0.077993,
		-0.380596, 0.450646, 0.807505,
		7.359749, 14.077953, 15.722090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.871698, 13.734039, 15.097491>,  <7.626166, 13.762502, 15.156837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.871698, 13.734039, 15.097491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.961996, 14.029525, 15.351528>,  <7.016175, 14.206816, 15.503950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.961996, 14.029525, 15.351528>,  <6.871698, 13.734039, 15.097491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.961996, 14.029525, 15.351528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580547, 0.625526, -0.521231,
		-0.782307, -0.251036, 0.570067,
		0.225744, 0.738714, 0.635092,
		7.029719, 14.251139, 15.542056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.238537, 13.990650, 15.158218>,  <6.871698, 13.734039, 15.097491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.238537, 13.990650, 15.158218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.426388, 14.269059, 15.375476>,  <6.539098, 14.436105, 15.505831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.426388, 14.269059, 15.375476>,  <6.238537, 13.990650, 15.158218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.426388, 14.269059, 15.375476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593649, 0.704313, -0.389260,
		-0.653477, -0.139631, 0.743957,
		0.469626, 0.696022, 0.543144,
		6.567276, 14.477865, 15.538419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.763764, 14.328005, 15.751613>,  <6.238537, 13.990650, 15.158218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.763764, 14.328005, 15.751613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.043182, 14.578810, 15.613692>,  <6.210834, 14.729293, 15.530940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.043182, 14.578810, 15.613692>,  <5.763764, 14.328005, 15.751613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.043182, 14.578810, 15.613692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715354, 0.623614, -0.315238,
		0.017364, 0.466862, 0.884160,
		0.698547, 0.627014, -0.344800,
		6.252747, 14.766913, 15.510252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.640305, 15.021917, 16.026703>,  <5.763764, 14.328005, 15.751613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.640305, 15.021917, 16.026703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.846343, 15.081701, 15.689103>,  <5.969965, 15.117572, 15.486543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.846343, 15.081701, 15.689103>,  <5.640305, 15.021917, 16.026703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.846343, 15.081701, 15.689103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645171, 0.715875, -0.266978,
		0.564296, 0.682045, 0.465171,
		0.515095, 0.149460, -0.844001,
		6.000871, 15.126539, 15.435903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.308971, 15.630245, 15.846680>,  <5.640305, 15.021917, 16.026703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.308971, 15.630245, 15.846680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.542680, 15.563890, 15.528911>,  <5.682906, 15.524077, 15.338249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.542680, 15.563890, 15.528911>,  <5.308971, 15.630245, 15.846680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.542680, 15.563890, 15.528911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431351, 0.765690, -0.477132,
		0.687430, 0.621450, 0.375818,
		0.584274, -0.165886, -0.794422,
		5.717962, 15.514125, 15.290584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722454, 16.250435, 15.628926>,  <5.308971, 15.630245, 15.846680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722454, 16.250435, 15.628926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.654796, 16.010952, 15.315764>,  <5.614201, 15.867262, 15.127868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.654796, 16.010952, 15.315764>,  <5.722454, 16.250435, 15.628926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.654796, 16.010952, 15.315764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538390, 0.721487, -0.435423,
		0.825546, 0.347858, -0.444374,
		-0.169145, -0.598708, -0.782904,
		5.604053, 15.831340, 15.080894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.964186, 16.701351, 15.089061>,  <5.722454, 16.250435, 15.628926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.964186, 16.701351, 15.089061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.710341, 16.430822, 14.939471>,  <5.558034, 16.268505, 14.849717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.710341, 16.430822, 14.939471>,  <5.964186, 16.701351, 15.089061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.710341, 16.430822, 14.939471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480838, 0.724369, -0.494049,
		0.605031, -0.133709, -0.784895,
		-0.634612, -0.676322, -0.373973,
		5.519958, 16.227926, 14.827279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.179132, 17.457767, 15.322643>,  <5.964186, 16.701351, 15.089061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.179132, 17.457767, 15.322643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.495478, 17.640865, 15.485125>,  <6.685286, 17.750723, 15.582613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.495478, 17.640865, 15.485125>,  <6.179132, 17.457767, 15.322643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.495478, 17.640865, 15.485125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610781, -0.548690, -0.570864,
		-0.038429, 0.699579, -0.713521,
		0.790867, 0.457743, 0.406204,
		6.732738, 17.778189, 15.606986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.599966, 17.712978, 14.748155>,  <6.179132, 17.457767, 15.322643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.599966, 17.712978, 14.748155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.825763, 17.691891, 15.077656>,  <6.961242, 17.679237, 15.275356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.825763, 17.691891, 15.077656>,  <6.599966, 17.712978, 14.748155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.825763, 17.691891, 15.077656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721386, -0.453525, -0.523370,
		0.401185, 0.889683, -0.217979,
		0.564493, -0.052721, 0.823753,
		6.995111, 17.676075, 15.324781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.204963, 17.997591, 14.572914>,  <6.599966, 17.712978, 14.748155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.204963, 17.997591, 14.572914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.269989, 17.762600, 14.890012>,  <7.309005, 17.621605, 15.080271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.269989, 17.762600, 14.890012>,  <7.204963, 17.997591, 14.572914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.269989, 17.762600, 14.890012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652277, -0.538848, -0.533083,
		0.740342, 0.603750, 0.295601,
		0.162565, -0.587477, 0.792744,
		7.318758, 17.586357, 15.127835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.881806, 18.055243, 14.604120>,  <7.204963, 17.997591, 14.572914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.881806, 18.055243, 14.604120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.774411, 17.719118, 14.792500>,  <7.709974, 17.517445, 14.905529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.774411, 17.719118, 14.792500>,  <7.881806, 18.055243, 14.604120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.774411, 17.719118, 14.792500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669605, -0.514272, -0.535866,
		0.692491, 0.171478, 0.700751,
		-0.268487, -0.840309, 0.470951,
		7.693865, 17.467026, 14.933785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.577293, 17.636477, 14.688869>,  <7.881806, 18.055243, 14.604120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.577293, 17.636477, 14.688869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.270268, 17.382805, 14.726111>,  <8.086054, 17.230602, 14.748456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.270268, 17.382805, 14.726111>,  <8.577293, 17.636477, 14.688869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.270268, 17.382805, 14.726111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518852, -0.700017, -0.490682,
		0.376354, -0.328321, 0.866350,
		-0.767561, -0.634178, 0.093104,
		8.040000, 17.192551, 14.754043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.937361, 17.050993, 14.736290>,  <8.577293, 17.636477, 14.688869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.937361, 17.050993, 14.736290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.557358, 16.948252, 14.665281>,  <8.329356, 16.886606, 14.622676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.557358, 16.948252, 14.665281>,  <8.937361, 17.050993, 14.736290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.557358, 16.948252, 14.665281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312066, -0.762643, -0.566560,
		0.010138, -0.593635, 0.804671,
		-0.950006, -0.256854, -0.177522,
		8.272356, 16.871195, 14.612024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.859509, 16.362885, 15.025475>,  <8.937361, 17.050993, 14.736290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.859509, 16.362885, 15.025475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.563350, 16.412067, 14.761145>,  <8.385653, 16.441578, 14.602547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.563350, 16.412067, 14.761145>,  <8.859509, 16.362885, 15.025475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.563350, 16.412067, 14.761145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208920, -0.892336, -0.400112,
		-0.638874, -0.434302, 0.634997,
		-0.740400, 0.122957, -0.660824,
		8.341229, 16.448956, 14.562897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.615063, 15.699068, 15.027800>,  <8.859509, 16.362885, 15.025475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.615063, 15.699068, 15.027800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.528646, 15.875841, 14.679542>,  <8.476796, 15.981905, 14.470587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.528646, 15.875841, 14.679542>,  <8.615063, 15.699068, 15.027800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.528646, 15.875841, 14.679542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268497, -0.830434, -0.488147,
		-0.938741, -0.339225, 0.060750,
		-0.216041, 0.441933, -0.870644,
		8.463834, 16.008421, 14.418348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.212423, 15.250772, 14.631920>,  <8.615063, 15.699068, 15.027800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.212423, 15.250772, 14.631920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.376584, 15.516557, 14.382100>,  <8.475080, 15.676027, 14.232208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.376584, 15.516557, 14.382100>,  <8.212423, 15.250772, 14.631920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.376584, 15.516557, 14.382100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374058, -0.747278, -0.549232,
		-0.831656, -0.008212, -0.555231,
		0.410402, 0.664461, -0.624550,
		8.499704, 15.715895, 14.194736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.992975, 15.006474, 14.064896>,  <8.212423, 15.250772, 14.631920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.992975, 15.006474, 14.064896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.301663, 15.240566, 13.965335>,  <8.486876, 15.381021, 13.905599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.301663, 15.240566, 13.965335>,  <7.992975, 15.006474, 14.064896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.301663, 15.240566, 13.965335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377607, -0.736581, -0.561125,
		-0.511724, 0.339045, -0.789422,
		0.771720, 0.585232, -0.248901,
		8.533179, 15.416136, 13.890665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087577, 14.862907, 13.324829>,  <7.992975, 15.006474, 14.064896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087577, 14.862907, 13.324829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.409102, 15.067722, 13.445956>,  <8.602018, 15.190612, 13.518633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.409102, 15.067722, 13.445956>,  <8.087577, 14.862907, 13.324829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.409102, 15.067722, 13.445956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572201, -0.526284, -0.628977,
		-0.162692, 0.678854, -0.716023,
		0.803815, 0.512038, 0.302818,
		8.650247, 15.221334, 13.536801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.467345, 15.051490, 12.711370>,  <8.087577, 14.862907, 13.324829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.467345, 15.051490, 12.711370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.722383, 15.048170, 13.019500>,  <8.875406, 15.046179, 13.204378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.722383, 15.048170, 13.019500>,  <8.467345, 15.051490, 12.711370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.722383, 15.048170, 13.019500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652921, -0.524878, -0.546074,
		0.408859, 0.851137, -0.329242,
		0.637596, -0.008299, 0.770326,
		8.913662, 15.045680, 13.250598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.060128, 15.187063, 12.432673>,  <8.467345, 15.051490, 12.711370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.060128, 15.187063, 12.432673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.170247, 15.013210, 12.775673>,  <9.236319, 14.908898, 12.981473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.170247, 15.013210, 12.775673>,  <9.060128, 15.187063, 12.432673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.170247, 15.013210, 12.775673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709595, -0.509919, -0.486270,
		0.648603, 0.742347, 0.168033,
		0.275298, -0.434631, 0.857500,
		9.252836, 14.882821, 13.032923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.744390, 15.121868, 12.280415>,  <9.060128, 15.187063, 12.432673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.744390, 15.121868, 12.280415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.680922, 14.871771, 12.586066>,  <9.642840, 14.721712, 12.769458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.680922, 14.871771, 12.586066>,  <9.744390, 15.121868, 12.280415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.680922, 14.871771, 12.586066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782178, -0.551891, -0.289161,
		0.602513, 0.551804, 0.576620,
		-0.158671, -0.625243, 0.764130,
		9.633320, 14.684198, 12.815306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.374829, 14.987025, 12.605737>,  <9.744390, 15.121868, 12.280415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.374829, 14.987025, 12.605737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.156096, 14.675934, 12.729746>,  <10.024857, 14.489279, 12.804152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.156096, 14.675934, 12.729746>,  <10.374829, 14.987025, 12.605737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.156096, 14.675934, 12.729746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757685, -0.617237, -0.211970,
		0.356213, 0.118988, 0.926798,
		-0.546832, -0.777728, 0.310023,
		9.992046, 14.442616, 12.822753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.863754, 14.458547, 12.900690>,  <10.374829, 14.987025, 12.605737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.863754, 14.458547, 12.900690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.526922, 14.261540, 12.812754>,  <10.324823, 14.143337, 12.759992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.526922, 14.261540, 12.812754>,  <10.863754, 14.458547, 12.900690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.526922, 14.261540, 12.812754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534361, -0.817160, -0.216118,
		-0.073205, -0.299464, 0.951295,
		-0.842080, -0.492514, -0.219842,
		10.274298, 14.113786, 12.746801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792258, 13.840918, 13.407267>,  <10.863754, 14.458547, 12.900690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792258, 13.840918, 13.407267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.572542, 13.751424, 13.085217>,  <10.440713, 13.697727, 12.891988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.572542, 13.751424, 13.085217>,  <10.792258, 13.840918, 13.407267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.572542, 13.751424, 13.085217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592957, -0.783247, -0.186885,
		-0.588797, -0.580058, 0.562895,
		-0.549290, -0.223735, -0.805123,
		10.407755, 13.684303, 12.843680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.686287, 13.126018, 13.437936>,  <10.792258, 13.840918, 13.407267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.686287, 13.126018, 13.437936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.594330, 13.198779, 13.055510>,  <10.539156, 13.242436, 12.826054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.594330, 13.198779, 13.055510>,  <10.686287, 13.126018, 13.437936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.594330, 13.198779, 13.055510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345109, -0.903300, -0.254849,
		-0.909972, -0.388534, 0.144886,
		-0.229893, 0.181904, -0.956065,
		10.525362, 13.253350, 12.768690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.410396, 12.462455, 13.304056>,  <10.686287, 13.126018, 13.437936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.410396, 12.462455, 13.304056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.551509, 12.643133, 12.976273>,  <10.636177, 12.751540, 12.779602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.551509, 12.643133, 12.976273>,  <10.410396, 12.462455, 13.304056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.551509, 12.643133, 12.976273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548546, -0.809329, -0.209960,
		-0.758052, -0.375441, -0.533293,
		0.352782, 0.451696, -0.819460,
		10.657344, 12.778642, 12.730434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.252392, 12.062628, 12.716933>,  <10.410396, 12.462455, 13.304056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.252392, 12.062628, 12.716933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.576578, 12.285735, 12.645336>,  <10.771090, 12.419600, 12.602378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.576578, 12.285735, 12.645336>,  <10.252392, 12.062628, 12.716933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.576578, 12.285735, 12.645336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520623, -0.825920, -0.216351,
		-0.268507, 0.082158, -0.959768,
		0.810466, 0.557769, -0.178992,
		10.819718, 12.453066, 12.591639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.565213, 11.833099, 12.009070>,  <10.252392, 12.062628, 12.716933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.565213, 11.833099, 12.009070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.860944, 12.010699, 12.211559>,  <11.038382, 12.117259, 12.333053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.860944, 12.010699, 12.211559>,  <10.565213, 11.833099, 12.009070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.860944, 12.010699, 12.211559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595956, -0.781413, -0.185013,
		0.313422, 0.438471, -0.842324,
		0.739326, 0.444001, 0.506222,
		11.082742, 12.143900, 12.363426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.093826, 22.164722, 26.362150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.864782, 21.882528, 26.529198>,  <19.727356, 21.713211, 26.629427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.864782, 21.882528, 26.529198>,  <20.093826, 22.164722, 26.362150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.864782, 21.882528, 26.529198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335250, 0.263361, 0.904571,
		-0.748147, 0.657974, 0.085710,
		-0.572611, -0.705486, 0.417619,
		19.692999, 21.670883, 26.654484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.676107, 22.501883, 26.883459>,  <20.093826, 22.164722, 26.362150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.676107, 22.501883, 26.883459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.656412, 22.113194, 26.975830>,  <19.644596, 21.879980, 27.031252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.656412, 22.113194, 26.975830>,  <19.676107, 22.501883, 26.883459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656412, 22.113194, 26.975830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144370, 0.221854, 0.964333,
		-0.988298, 0.080820, 0.129364,
		-0.049237, -0.971725, 0.230925,
		19.641642, 21.821676, 27.045107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232986, 22.466721, 27.492996>,  <19.676107, 22.501883, 26.883459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232986, 22.466721, 27.492996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.461792, 22.138638, 27.489834>,  <19.599075, 21.941788, 27.487936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.461792, 22.138638, 27.489834>,  <19.232986, 22.466721, 27.492996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.461792, 22.138638, 27.489834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060740, 0.032747, 0.997616,
		-0.817992, -0.571130, 0.068552,
		0.572014, -0.820206, -0.007904,
		19.633396, 21.892576, 27.487463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.313519, 22.213961, 28.149494>,  <19.232986, 22.466721, 27.492996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.313519, 22.213961, 28.149494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.600613, 21.985525, 27.990137>,  <19.772869, 21.848463, 27.894524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.600613, 21.985525, 27.990137>,  <19.313519, 22.213961, 28.149494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600613, 21.985525, 27.990137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328962, -0.226168, 0.916860,
		-0.613712, -0.789117, 0.025538,
		0.717734, -0.571089, -0.398392,
		19.815933, 21.814198, 27.870619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.364914, 21.562422, 28.526016>,  <19.313519, 22.213961, 28.149494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.364914, 21.562422, 28.526016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.732199, 21.602583, 28.372757>,  <19.952570, 21.626680, 28.280802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.732199, 21.602583, 28.372757>,  <19.364914, 21.562422, 28.526016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.732199, 21.602583, 28.372757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390606, -0.069209, 0.917953,
		0.065648, -0.992537, -0.102767,
		0.918214, 0.100404, -0.383147,
		20.007664, 21.632704, 28.257812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.712587, 21.116405, 28.883320>,  <19.364914, 21.562422, 28.526016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.712587, 21.116405, 28.883320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.974724, 21.383171, 28.741474>,  <20.132006, 21.543230, 28.656366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.974724, 21.383171, 28.741474>,  <19.712587, 21.116405, 28.883320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.974724, 21.383171, 28.741474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526380, -0.066532, 0.847642,
		0.541713, -0.742157, -0.394653,
		0.655341, 0.666916, -0.354616,
		20.171326, 21.583246, 28.635090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217440, 20.985064, 29.424219>,  <19.712587, 21.116405, 28.883320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217440, 20.985064, 29.424219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.333603, 21.328846, 29.255934>,  <20.403301, 21.535116, 29.154963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.333603, 21.328846, 29.255934>,  <20.217440, 20.985064, 29.424219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.333603, 21.328846, 29.255934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453199, 0.263690, 0.851515,
		0.842778, -0.437953, -0.312926,
		0.290409, 0.859456, -0.420712,
		20.420725, 21.586683, 29.129721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931337, 21.093601, 29.645496>,  <20.217440, 20.985064, 29.424219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931337, 21.093601, 29.645496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.760775, 21.443634, 29.553921>,  <20.658438, 21.653654, 29.498976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.760775, 21.443634, 29.553921>,  <20.931337, 21.093601, 29.645496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760775, 21.443634, 29.553921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362387, 0.397172, 0.843167,
		0.828767, 0.276566, -0.486474,
		-0.426405, 0.875081, -0.228939,
		20.632853, 21.706158, 29.485239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.377361, 21.501598, 29.938560>,  <20.931337, 21.093601, 29.645496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.377361, 21.501598, 29.938560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.087070, 21.757746, 29.837965>,  <20.912897, 21.911434, 29.777607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.087070, 21.757746, 29.837965>,  <21.377361, 21.501598, 29.938560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.087070, 21.757746, 29.837965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260276, 0.593930, 0.761251,
		0.636850, 0.487003, -0.597704,
		-0.725726, 0.640371, -0.251490,
		20.869352, 21.949858, 29.762518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.680105, 22.232792, 29.749002>,  <21.377361, 21.501598, 29.938560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.680105, 22.232792, 29.749002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.302771, 22.256948, 29.879520>,  <21.076370, 22.271442, 29.957832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.302771, 22.256948, 29.879520>,  <21.680105, 22.232792, 29.749002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302771, 22.256948, 29.879520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314087, 0.479796, 0.819234,
		-0.107080, 0.875299, -0.471578,
		-0.943336, 0.060392, 0.326297,
		21.019770, 22.275066, 29.977409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656773, 22.925116, 30.059441>,  <21.680105, 22.232792, 29.749002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656773, 22.925116, 30.059441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.350901, 22.713261, 30.206272>,  <21.167377, 22.586147, 30.294371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.350901, 22.713261, 30.206272>,  <21.656773, 22.925116, 30.059441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350901, 22.713261, 30.206272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203909, 0.341491, 0.917499,
		-0.611296, 0.776445, -0.153134,
		-0.764682, -0.529638, 0.367076,
		21.121496, 22.554369, 30.316395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.173195, 23.482819, 30.403763>,  <21.656773, 22.925116, 30.059441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.173195, 23.482819, 30.403763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.076183, 23.132931, 30.571594>,  <21.017977, 22.922998, 30.672293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.076183, 23.132931, 30.571594>,  <21.173195, 23.482819, 30.403763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076183, 23.132931, 30.571594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106280, 0.405932, 0.907702,
		-0.964305, 0.264738, -0.005486,
		-0.242530, -0.874719, 0.419579,
		21.003424, 22.870516, 30.697468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.550339, 23.502151, 30.818567>,  <21.173195, 23.482819, 30.403763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.550339, 23.502151, 30.818567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.798019, 23.218018, 30.952440>,  <20.946629, 23.047537, 31.032764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.798019, 23.218018, 30.952440>,  <20.550339, 23.502151, 30.818567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.798019, 23.218018, 30.952440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015413, 0.437137, 0.899263,
		-0.785079, -0.551669, 0.281625,
		0.619204, -0.710333, 0.334684,
		20.983780, 23.004917, 31.052845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.561279, 24.105465, 30.308407>,  <20.550339, 23.502151, 30.818567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.561279, 24.105465, 30.308407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.650675, 24.213730, 29.933857>,  <20.704311, 24.278688, 29.709127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.650675, 24.213730, 29.933857>,  <20.561279, 24.105465, 30.308407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.650675, 24.213730, 29.933857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442455, -0.884162, -0.149968,
		-0.868497, -0.380788, -0.317354,
		0.223487, 0.270662, -0.936374,
		20.717720, 24.294928, 29.652945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.905428, 24.778074, 29.986900>,  <20.561279, 24.105465, 30.308407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.905428, 24.778074, 29.986900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.141340, 25.083519, 29.881786>,  <21.282887, 25.266787, 29.818718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.141340, 25.083519, 29.881786>,  <20.905428, 24.778074, 29.986900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.141340, 25.083519, 29.881786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265813, -0.123706, -0.956054,
		-0.762564, 0.633712, 0.130019,
		0.589779, 0.763614, -0.262783,
		21.318274, 25.312603, 29.802952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625792, 25.076408, 29.344769>,  <20.905428, 24.778074, 29.986900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625792, 25.076408, 29.344769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.992914, 25.235090, 29.351225>,  <21.213188, 25.330299, 29.355099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.992914, 25.235090, 29.351225>,  <20.625792, 25.076408, 29.344769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.992914, 25.235090, 29.351225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097070, 0.263629, -0.959728,
		-0.384983, 0.879276, 0.280468,
		0.917805, 0.396704, 0.016141,
		21.268255, 25.354101, 29.356068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.531273, 25.663343, 28.927223>,  <20.625792, 25.076408, 29.344769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.531273, 25.663343, 28.927223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.926672, 25.603037, 28.931929>,  <21.163912, 25.566853, 28.934752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.926672, 25.603037, 28.931929>,  <20.531273, 25.663343, 28.927223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.926672, 25.603037, 28.931929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058452, 0.309187, -0.949203,
		0.139470, 0.938975, 0.314444,
		0.988500, -0.150765, 0.011763,
		21.223223, 25.557808, 28.935457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.783291, 26.230104, 28.512014>,  <20.531273, 25.663343, 28.927223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.783291, 26.230104, 28.512014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.075020, 25.956482, 28.507004>,  <21.250057, 25.792309, 28.503998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.075020, 25.956482, 28.507004>,  <20.783291, 26.230104, 28.512014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.075020, 25.956482, 28.507004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068001, 0.090698, -0.993554,
		0.680783, 0.723769, 0.112665,
		0.729322, -0.684056, -0.012528,
		21.293816, 25.751265, 28.503244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.273766, 26.410151, 28.074442>,  <20.783291, 26.230104, 28.512014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.273766, 26.410151, 28.074442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.351109, 26.017870, 28.086048>,  <21.397514, 25.782501, 28.093012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.351109, 26.017870, 28.086048>,  <21.273766, 26.410151, 28.074442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.351109, 26.017870, 28.086048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141985, -0.057233, -0.988213,
		0.970800, 0.186957, -0.150311,
		0.193356, -0.980699, 0.029016,
		21.409115, 25.723660, 28.094753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.866926, 26.286972, 27.660265>,  <21.273766, 26.410151, 28.074442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.866926, 26.286972, 27.660265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.641668, 25.956720, 27.674164>,  <21.506514, 25.758570, 27.682503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.641668, 25.956720, 27.674164>,  <21.866926, 26.286972, 27.660265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641668, 25.956720, 27.674164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066379, 0.003286, -0.997789,
		0.823689, -0.564204, -0.056655,
		-0.563143, -0.825629, 0.034745,
		21.472725, 25.709032, 27.684587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125051, 25.971827, 27.112556>,  <21.866926, 26.286972, 27.660265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125051, 25.971827, 27.112556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.773857, 25.802011, 27.201017>,  <21.563141, 25.700123, 27.254095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.773857, 25.802011, 27.201017>,  <22.125051, 25.971827, 27.112556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.773857, 25.802011, 27.201017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221683, -0.048868, -0.973894,
		0.424262, -0.904090, -0.051207,
		-0.877985, -0.424538, 0.221154,
		21.510462, 25.674650, 27.267365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.075781, 25.586327, 26.477177>,  <22.125051, 25.971827, 27.112556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.075781, 25.586327, 26.477177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.707428, 25.532951, 26.623695>,  <21.486416, 25.500925, 26.711607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.707428, 25.532951, 26.623695>,  <22.075781, 25.586327, 26.477177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.707428, 25.532951, 26.623695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284327, -0.412944, -0.865237,
		0.266718, -0.900928, 0.342331,
		-0.920880, -0.133441, 0.366298,
		21.431164, 25.492920, 26.733585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928726, 24.861406, 26.463617>,  <22.075781, 25.586327, 26.477177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.928726, 24.861406, 26.463617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.576847, 25.051281, 26.474958>,  <21.365719, 25.165205, 26.481764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.576847, 25.051281, 26.474958>,  <21.928726, 24.861406, 26.463617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.576847, 25.051281, 26.474958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279871, -0.468615, -0.837897,
		-0.384450, -0.745033, 0.545091,
		-0.879699, 0.474685, 0.028354,
		21.312937, 25.193687, 26.483465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.441200, 24.348915, 26.139381>,  <21.928726, 24.861406, 26.463617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.441200, 24.348915, 26.139381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.233835, 24.690449, 26.120571>,  <21.109415, 24.895369, 26.109285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.233835, 24.690449, 26.120571>,  <21.441200, 24.348915, 26.139381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.233835, 24.690449, 26.120571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472206, -0.331685, -0.816704,
		-0.712929, -0.401186, 0.575137,
		-0.518415, 0.853835, -0.047026,
		21.078310, 24.946600, 26.106462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836077, 24.079342, 26.028021>,  <21.441200, 24.348915, 26.139381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836077, 24.079342, 26.028021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.825827, 24.470312, 25.944134>,  <20.819675, 24.704895, 25.893803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.825827, 24.470312, 25.944134>,  <20.836077, 24.079342, 26.028021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825827, 24.470312, 25.944134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694843, -0.168239, -0.699206,
		-0.718705, 0.127801, 0.683469,
		-0.025627, 0.977426, -0.209716,
		20.818138, 24.763540, 25.881220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.124146, 24.363083, 25.982048>,  <20.836077, 24.079342, 26.028021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.124146, 24.363083, 25.982048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.337166, 24.607803, 25.748095>,  <20.464977, 24.754635, 25.607721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.337166, 24.607803, 25.748095>,  <20.124146, 24.363083, 25.982048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337166, 24.607803, 25.748095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659829, -0.132707, -0.739604,
		-0.530107, 0.779801, 0.333010,
		0.532552, 0.611800, -0.584885,
		20.496931, 24.791344, 25.572630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663876, 24.857910, 25.643938>,  <20.124146, 24.363083, 25.982048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663876, 24.857910, 25.643938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.989937, 24.887850, 25.414183>,  <20.185574, 24.905813, 25.276329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.989937, 24.887850, 25.414183>,  <19.663876, 24.857910, 25.643938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989937, 24.887850, 25.414183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570960, -0.063306, -0.818533,
		-0.097630, 0.995183, -0.008867,
		0.815152, 0.074851, -0.574391,
		20.234482, 24.910305, 25.241865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400393, 24.939606, 25.070089>,  <19.663876, 24.857910, 25.643938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400393, 24.939606, 25.070089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.766266, 24.885187, 24.917856>,  <19.985790, 24.852537, 24.826517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.766266, 24.885187, 24.917856>,  <19.400393, 24.939606, 25.070089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766266, 24.885187, 24.917856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404110, -0.323670, -0.855530,
		-0.006792, 0.936338, -0.351033,
		0.914685, -0.136045, -0.380583,
		20.040672, 24.844374, 24.803682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006544, 25.514105, 24.934958>,  <19.400393, 24.939606, 25.070089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.006544, 25.514105, 24.934958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.615784, 25.440426, 24.978294>,  <18.381329, 25.396217, 25.004297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.615784, 25.440426, 24.978294>,  <19.006544, 25.514105, 24.934958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615784, 25.440426, 24.978294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067725, 0.213992, 0.974485,
		-0.202683, 0.959311, -0.196574,
		-0.976900, -0.184198, 0.108342,
		18.322714, 25.385166, 25.010798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816910, 26.196726, 25.179264>,  <19.006544, 25.514105, 24.934958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816910, 26.196726, 25.179264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.553555, 25.913836, 25.282301>,  <18.395540, 25.744101, 25.344124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.553555, 25.913836, 25.282301>,  <18.816910, 26.196726, 25.179264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553555, 25.913836, 25.282301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002943, 0.339814, 0.940488,
		-0.752671, 0.619966, -0.221649,
		-0.658390, -0.707226, 0.257592,
		18.356037, 25.701668, 25.359579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509882, 26.585382, 25.523489>,  <18.816910, 26.196726, 25.179264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509882, 26.585382, 25.523489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.421896, 26.210386, 25.631357>,  <18.369104, 25.985388, 25.696079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.421896, 26.210386, 25.631357>,  <18.509882, 26.585382, 25.523489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.421896, 26.210386, 25.631357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025604, 0.281895, 0.959103,
		-0.975172, 0.204065, -0.086011,
		-0.219965, -0.937493, 0.269671,
		18.355906, 25.929138, 25.712259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819847, 26.653339, 25.898468>,  <18.509882, 26.585382, 25.523489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819847, 26.653339, 25.898468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.009653, 26.315140, 25.996420>,  <18.123537, 26.112219, 26.055191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.009653, 26.315140, 25.996420>,  <17.819847, 26.653339, 25.898468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.009653, 26.315140, 25.996420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020187, 0.288572, 0.957245,
		-0.880016, -0.449283, 0.153999,
		0.474514, -0.845500, 0.244879,
		18.152008, 26.061489, 26.069883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442999, 26.431841, 26.444145>,  <17.819847, 26.653339, 25.898468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.442999, 26.431841, 26.444145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.777472, 26.221910, 26.507845>,  <17.978155, 26.095951, 26.546064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.777472, 26.221910, 26.507845>,  <17.442999, 26.431841, 26.444145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.777472, 26.221910, 26.507845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025633, 0.252645, 0.967219,
		-0.547857, -0.812851, 0.197804,
		0.836179, -0.524827, 0.159249,
		18.028326, 26.064463, 26.555620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338268, 26.148638, 27.086933>,  <17.442999, 26.431841, 26.444145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338268, 26.148638, 27.086933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.734198, 26.157280, 27.030668>,  <17.971754, 26.162464, 26.996910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.734198, 26.157280, 27.030668>,  <17.338268, 26.148638, 27.086933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.734198, 26.157280, 27.030668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139319, 0.054458, 0.988749,
		0.029018, -0.998282, 0.050894,
		0.989822, 0.021601, -0.140660,
		18.031145, 26.163761, 26.988470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.568666, 25.709703, 27.602421>,  <17.338268, 26.148638, 27.086933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.568666, 25.709703, 27.602421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.887707, 25.930920, 27.506105>,  <18.079130, 26.063650, 27.448317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.887707, 25.930920, 27.506105>,  <17.568666, 25.709703, 27.602421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887707, 25.930920, 27.506105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164169, 0.185089, 0.968912,
		0.580415, -0.812335, 0.056835,
		0.797601, 0.553041, -0.240789,
		18.126987, 26.096832, 27.433868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677212, 25.030249, 28.085310>,  <17.568666, 25.709703, 27.602421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.677212, 25.030249, 28.085310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.424475, 24.801821, 28.294939>,  <17.272833, 24.664764, 28.420717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.424475, 24.801821, 28.294939>,  <17.677212, 25.030249, 28.085310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.424475, 24.801821, 28.294939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259863, -0.480934, -0.837361,
		0.730239, -0.665266, 0.155474,
		-0.631841, -0.571072, 0.524075,
		17.234922, 24.630499, 28.452162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757257, 24.391188, 27.826797>,  <17.677212, 25.030249, 28.085310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757257, 24.391188, 27.826797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.406214, 24.364491, 28.016682>,  <17.195587, 24.348473, 28.130611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.406214, 24.364491, 28.016682>,  <17.757257, 24.391188, 27.826797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406214, 24.364491, 28.016682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395459, -0.458915, -0.795619,
		0.270952, -0.885970, 0.376353,
		-0.877608, -0.066742, 0.474709,
		17.142931, 24.344467, 28.159094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517969, 23.617138, 27.818392>,  <17.757257, 24.391188, 27.826797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517969, 23.617138, 27.818392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.185343, 23.832766, 27.871918>,  <16.985767, 23.962143, 27.904034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.185343, 23.832766, 27.871918>,  <17.517969, 23.617138, 27.818392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.185343, 23.832766, 27.871918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475716, -0.566880, -0.672564,
		-0.286700, -0.622938, 0.727840,
		-0.831564, 0.539068, 0.133817,
		16.935873, 23.994486, 27.912064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044222, 23.132587, 27.906090>,  <17.517969, 23.617138, 27.818392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044222, 23.132587, 27.906090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.841072, 23.453798, 27.781372>,  <16.719183, 23.646524, 27.706541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.841072, 23.453798, 27.781372>,  <17.044222, 23.132587, 27.906090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841072, 23.453798, 27.781372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533834, -0.577463, -0.617704,
		-0.676082, -0.147267, 0.721959,
		-0.507872, 0.803025, -0.311796,
		16.688711, 23.694706, 27.687834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381157, 22.907478, 27.765608>,  <17.044222, 23.132587, 27.906090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381157, 22.907478, 27.765608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.334755, 23.258421, 27.579367>,  <16.306913, 23.468987, 27.467623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.334755, 23.258421, 27.579367>,  <16.381157, 22.907478, 27.765608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334755, 23.258421, 27.579367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533691, -0.450408, -0.715756,
		-0.837685, 0.165457, 0.520488,
		-0.116005, 0.877358, -0.465603,
		16.299953, 23.521627, 27.439686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869472, 22.731930, 27.501133>,  <16.381157, 22.907478, 27.765608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869472, 22.731930, 27.501133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.022194, 23.047136, 27.307947>,  <16.113827, 23.236259, 27.192036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.022194, 23.047136, 27.307947>,  <15.869472, 22.731930, 27.501133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022194, 23.047136, 27.307947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312161, -0.381898, -0.869890,
		-0.869931, 0.482891, 0.100178,
		0.381805, 0.788016, -0.482965,
		16.136736, 23.283541, 27.163057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264559, 23.060581, 27.110678>,  <15.869472, 22.731930, 27.501133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264559, 23.060581, 27.110678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.605119, 23.172829, 26.933422>,  <15.809455, 23.240177, 26.827068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.605119, 23.172829, 26.933422>,  <15.264559, 23.060581, 27.110678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605119, 23.172829, 26.933422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238266, -0.545737, -0.803368,
		-0.467276, 0.789572, -0.397779,
		0.851400, 0.280618, -0.443138,
		15.860538, 23.257013, 26.800480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<19.014057, 16.194258, 32.412773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.973690, 16.562679, 32.262321>,  <18.949471, 16.783731, 32.172050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.973690, 16.562679, 32.262321>,  <19.014057, 16.194258, 32.412773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973690, 16.562679, 32.262321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400651, -0.308427, -0.862758,
		-0.910656, -0.237765, -0.337895,
		-0.100918, 0.921054, -0.376132,
		18.943415, 16.838995, 32.149483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828611, 16.116295, 31.614717>,  <19.014057, 16.194258, 32.412773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828611, 16.116295, 31.614717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.985186, 16.474855, 31.697899>,  <19.079130, 16.689991, 31.747808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.985186, 16.474855, 31.697899>,  <18.828611, 16.116295, 31.614717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.985186, 16.474855, 31.697899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371692, 0.052713, -0.926859,
		-0.841798, 0.440101, -0.312551,
		0.391436, 0.896400, 0.207955,
		19.102617, 16.743776, 31.760286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535662, 16.527498, 31.116024>,  <18.828611, 16.116295, 31.614717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535662, 16.527498, 31.116024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.905195, 16.634279, 31.225767>,  <19.126915, 16.698347, 31.291613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.905195, 16.634279, 31.225767>,  <18.535662, 16.527498, 31.116024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905195, 16.634279, 31.225767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306228, -0.085327, -0.948126,
		-0.229692, 0.959925, -0.160575,
		0.923832, 0.266950, 0.274358,
		19.182344, 16.714365, 31.308075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795109, 16.979195, 30.613707>,  <18.535662, 16.527498, 31.116024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795109, 16.979195, 30.613707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.125410, 16.838417, 30.790012>,  <19.323591, 16.753950, 30.895796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.125410, 16.838417, 30.790012>,  <18.795109, 16.979195, 30.613707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125410, 16.838417, 30.790012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480559, 0.029874, -0.876453,
		0.295293, 0.935545, 0.193797,
		0.825751, -0.351942, 0.440763,
		19.373135, 16.732834, 30.922241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.318947, 17.412998, 30.397070>,  <18.795109, 16.979195, 30.613707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.318947, 17.412998, 30.397070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.469305, 17.054941, 30.492920>,  <19.559519, 16.840107, 30.550430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.469305, 17.054941, 30.492920>,  <19.318947, 17.412998, 30.397070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469305, 17.054941, 30.492920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487321, -0.028992, -0.872742,
		0.788176, 0.444834, 0.425324,
		0.375894, -0.895144, 0.239627,
		19.582073, 16.786398, 30.564808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.147018, 17.413513, 29.678221>,  <19.318947, 17.412998, 30.397070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.147018, 17.413513, 29.678221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.759523, 17.346354, 29.605164>,  <18.527027, 17.306057, 29.561329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.759523, 17.346354, 29.605164>,  <19.147018, 17.413513, 29.678221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.759523, 17.346354, 29.605164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219708, -0.238671, -0.945920,
		0.115229, -0.956475, 0.268099,
		-0.968737, -0.167901, -0.182644,
		18.468903, 17.295984, 29.550371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859522, 18.041523, 29.950243>,  <19.147018, 17.413513, 29.678221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.859522, 18.041523, 29.950243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.887844, 18.106831, 29.556627>,  <18.904837, 18.146015, 29.320457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.887844, 18.106831, 29.556627>,  <18.859522, 18.041523, 29.950243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.887844, 18.106831, 29.556627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987659, -0.149636, 0.046236,
		-0.139699, -0.975168, -0.171851,
		0.070803, 0.163271, -0.984037,
		18.909084, 18.155811, 29.261415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.306292, 18.556856, 29.572851>,  <18.859522, 18.041523, 29.950243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.306292, 18.556856, 29.572851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.194305, 18.937334, 29.520927>,  <19.127113, 19.165621, 29.489773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.194305, 18.937334, 29.520927>,  <19.306292, 18.556856, 29.572851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194305, 18.937334, 29.520927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539523, -0.267738, -0.798268,
		-0.794062, -0.153452, 0.588148,
		-0.279966, 0.951194, -0.129809,
		19.110315, 19.222692, 29.481985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594109, 18.548691, 29.486349>,  <19.306292, 18.556856, 29.572851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594109, 18.548691, 29.486349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.691677, 18.901833, 29.325815>,  <18.750217, 19.113718, 29.229494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.691677, 18.901833, 29.325815>,  <18.594109, 18.548691, 29.486349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691677, 18.901833, 29.325815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298453, -0.325415, -0.897235,
		-0.922729, 0.338635, 0.184115,
		0.243922, 0.882854, -0.401336,
		18.764854, 19.166689, 29.205414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067139, 18.805201, 29.026106>,  <18.594109, 18.548691, 29.486349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067139, 18.805201, 29.026106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.397949, 18.988293, 28.895563>,  <18.596436, 19.098148, 28.817238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.397949, 18.988293, 28.895563>,  <18.067139, 18.805201, 29.026106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.397949, 18.988293, 28.895563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223722, -0.264602, -0.938048,
		-0.515727, 0.848805, -0.116428,
		0.827027, 0.457729, -0.326359,
		18.646057, 19.125612, 28.797655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813316, 19.035057, 28.436697>,  <18.067139, 18.805201, 29.026106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813316, 19.035057, 28.436697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.209385, 19.048975, 28.382519>,  <18.447027, 19.057325, 28.350012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.209385, 19.048975, 28.382519>,  <17.813316, 19.035057, 28.436697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209385, 19.048975, 28.382519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133088, -0.062879, -0.989107,
		-0.042934, 0.997414, -0.057630,
		0.990174, 0.034797, -0.135444,
		18.506437, 19.059414, 28.341887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862316, 19.621256, 27.996691>,  <17.813316, 19.035057, 28.436697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862316, 19.621256, 27.996691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.168407, 19.365410, 27.967520>,  <18.352062, 19.211903, 27.950018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.168407, 19.365410, 27.967520>,  <17.862316, 19.621256, 27.996691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.168407, 19.365410, 27.967520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105095, -0.012358, -0.994385,
		0.635123, 0.768596, -0.076677,
		0.765228, -0.639615, -0.072927,
		18.397976, 19.173525, 27.945642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139778, 19.402084, 27.863220>,  <17.862316, 19.621256, 27.996691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.139778, 19.402084, 27.863220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.800966, 19.536331, 28.028097>,  <16.597679, 19.616879, 28.127024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.800966, 19.536331, 28.028097>,  <17.139778, 19.402084, 27.863220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.800966, 19.536331, 28.028097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527711, 0.437948, 0.727821,
		0.063749, 0.834004, -0.548063,
		-0.847028, 0.335617, 0.412194,
		16.546858, 19.637016, 28.151756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976938, 20.166971, 27.752287>,  <17.139778, 19.402084, 27.863220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976938, 20.166971, 27.752287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.800163, 20.062057, 28.095427>,  <16.694099, 19.999109, 28.301310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.800163, 20.062057, 28.095427>,  <16.976938, 20.166971, 27.752287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.800163, 20.062057, 28.095427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628667, 0.591611, 0.504751,
		-0.639899, 0.762368, -0.096565,
		-0.441935, -0.262282, 0.857847,
		16.667583, 19.983374, 28.352781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032728, 20.777088, 28.148954>,  <16.976938, 20.166971, 27.752287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032728, 20.777088, 28.148954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.940531, 20.483078, 28.404018>,  <16.885212, 20.306673, 28.557056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.940531, 20.483078, 28.404018>,  <17.032728, 20.777088, 28.148954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.940531, 20.483078, 28.404018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498007, 0.473875, 0.726245,
		-0.835979, 0.484955, 0.256821,
		-0.230495, -0.735024, 0.637661,
		16.871382, 20.262571, 28.595316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538021, 21.084812, 28.659182>,  <17.032728, 20.777088, 28.148954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538021, 21.084812, 28.659182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.721798, 20.768299, 28.820568>,  <16.832064, 20.578392, 28.917400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.721798, 20.768299, 28.820568>,  <16.538021, 21.084812, 28.659182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.721798, 20.768299, 28.820568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437458, 0.596924, 0.672542,
		-0.773009, -0.132494, 0.620405,
		0.459442, -0.791282, 0.403467,
		16.859631, 20.530914, 28.941608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289700, 20.991634, 29.342817>,  <16.538021, 21.084812, 28.659182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.289700, 20.991634, 29.342817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.658459, 20.838806, 29.317123>,  <16.879715, 20.747108, 29.301706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.658459, 20.838806, 29.317123>,  <16.289700, 20.991634, 29.342817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658459, 20.838806, 29.317123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300582, 0.600722, 0.740799,
		-0.244450, -0.702249, 0.668648,
		0.921898, -0.382071, -0.064237,
		16.935028, 20.724184, 29.297852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430483, 21.067627, 30.032391>,  <16.289700, 20.991634, 29.342817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430483, 21.067627, 30.032391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.770594, 20.933144, 29.870407>,  <16.974661, 20.852453, 29.773216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.770594, 20.933144, 29.870407>,  <16.430483, 21.067627, 30.032391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.770594, 20.933144, 29.870407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508498, 0.326122, 0.796916,
		-0.135865, -0.883520, 0.448256,
		0.850277, -0.336210, -0.404959,
		17.025677, 20.832281, 29.748919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725393, 20.687212, 30.505493>,  <16.430483, 21.067627, 30.032391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725393, 20.687212, 30.505493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.007883, 20.820986, 30.255884>,  <17.177378, 20.901249, 30.106119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.007883, 20.820986, 30.255884>,  <16.725393, 20.687212, 30.505493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.007883, 20.820986, 30.255884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478700, 0.423831, 0.768904,
		0.521628, -0.841737, 0.139226,
		0.706223, 0.334435, -0.624021,
		17.219749, 20.921316, 30.068678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323849, 20.672834, 30.993788>,  <16.725393, 20.687212, 30.505493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323849, 20.672834, 30.993788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.452381, 20.869139, 30.669836>,  <17.529501, 20.986921, 30.475466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.452381, 20.869139, 30.669836>,  <17.323849, 20.672834, 30.993788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452381, 20.869139, 30.669836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439314, 0.680378, 0.586591,
		0.838899, -0.544279, 0.003028,
		0.321329, 0.490761, -0.809878,
		17.548780, 21.016367, 30.426872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119465, 20.776491, 30.976534>,  <17.323849, 20.672834, 30.993788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.119465, 20.776491, 30.976534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.956240, 21.056602, 30.742235>,  <17.858305, 21.224669, 30.601656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.956240, 21.056602, 30.742235>,  <18.119465, 20.776491, 30.976534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.956240, 21.056602, 30.742235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304902, 0.709289, 0.635566,
		0.860535, 0.080755, -0.502949,
		-0.408061, 0.700277, -0.585746,
		17.833820, 21.266685, 30.566511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.634527, 21.304707, 30.876356>,  <18.119465, 20.776491, 30.976534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.634527, 21.304707, 30.876356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.291859, 21.488146, 30.781864>,  <18.086258, 21.598209, 30.725170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.291859, 21.488146, 30.781864>,  <18.634527, 21.304707, 30.876356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.291859, 21.488146, 30.781864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260485, 0.779816, 0.569241,
		0.445267, 0.426119, -0.787503,
		-0.856671, 0.458596, -0.236229,
		18.034857, 21.625725, 30.710995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855103, 22.020630, 30.802937>,  <18.634527, 21.304707, 30.876356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855103, 22.020630, 30.802937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.460176, 22.021400, 30.866438>,  <18.223221, 22.021864, 30.904539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.460176, 22.021400, 30.866438>,  <18.855103, 22.020630, 30.802937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460176, 22.021400, 30.866438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107270, 0.745266, 0.658082,
		-0.117044, 0.666764, -0.736020,
		-0.987316, 0.001929, 0.158753,
		18.163982, 22.021978, 30.914064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.504822, 22.588457, 30.579197>,  <18.855103, 22.020630, 30.802937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.504822, 22.588457, 30.579197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.261766, 22.461187, 30.870275>,  <18.115934, 22.384825, 31.044922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.261766, 22.461187, 30.870275>,  <18.504822, 22.588457, 30.579197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261766, 22.461187, 30.870275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117520, 0.870139, 0.478588,
		-0.785473, 0.376326, -0.491336,
		-0.607636, -0.318176, 0.727696,
		18.079475, 22.365734, 31.088585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166674, 23.181417, 30.837883>,  <18.504822, 22.588457, 30.579197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166674, 23.181417, 30.837883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.090166, 22.905142, 31.116842>,  <18.044262, 22.739376, 31.284218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.090166, 22.905142, 31.116842>,  <18.166674, 23.181417, 30.837883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090166, 22.905142, 31.116842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137439, 0.684669, 0.715778,
		-0.971868, 0.232756, -0.036028,
		-0.191269, -0.690690, 0.697398,
		18.032785, 22.697935, 31.326061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803820, 23.566603, 31.291809>,  <18.166674, 23.181417, 30.837883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.803820, 23.566603, 31.291809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.906256, 23.247284, 31.509851>,  <17.967716, 23.055693, 31.640676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.906256, 23.247284, 31.509851>,  <17.803820, 23.566603, 31.291809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.906256, 23.247284, 31.509851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034146, 0.571027, 0.820221,
		-0.966050, -0.191436, 0.173492,
		0.256088, -0.798299, 0.545104,
		17.983082, 23.007793, 31.673382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.416391, 24.186258, 31.428799>,  <17.803820, 23.566603, 31.291809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.416391, 24.186258, 31.428799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.288378, 24.557573, 31.353050>,  <17.211569, 24.780363, 31.307602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.288378, 24.557573, 31.353050>,  <17.416391, 24.186258, 31.428799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288378, 24.557573, 31.353050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092726, -0.229613, -0.968855,
		-0.942857, -0.292508, 0.159561,
		-0.320035, 0.928287, -0.189369,
		17.192368, 24.836060, 31.296240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823387, 24.179094, 30.960720>,  <17.416391, 24.186258, 31.428799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823387, 24.179094, 30.960720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.983009, 24.541658, 30.905333>,  <17.078783, 24.759197, 30.872101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.983009, 24.541658, 30.905333>,  <16.823387, 24.179094, 30.960720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983009, 24.541658, 30.905333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249030, -0.038201, -0.967742,
		-0.882462, 0.420665, 0.210479,
		0.399055, 0.906411, -0.138469,
		17.102726, 24.813581, 30.863792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334827, 24.440237, 30.564911>,  <16.823387, 24.179094, 30.960720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334827, 24.440237, 30.564911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.626535, 24.711660, 30.529758>,  <16.801559, 24.874516, 30.508667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.626535, 24.711660, 30.529758>,  <16.334827, 24.440237, 30.564911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626535, 24.711660, 30.529758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080561, -0.042392, -0.995848,
		-0.679467, 0.733322, 0.023750,
		0.729270, 0.678559, -0.087881,
		16.845316, 24.915228, 30.503395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150869, 25.046989, 30.063566>,  <16.334827, 24.440237, 30.564911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150869, 25.046989, 30.063566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.549032, 25.010406, 30.074900>,  <16.787930, 24.988457, 30.081699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.549032, 25.010406, 30.074900>,  <16.150869, 25.046989, 30.063566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549032, 25.010406, 30.074900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025595, -0.030974, -0.999192,
		0.092260, 0.995327, -0.028491,
		0.995406, -0.091456, 0.028333,
		16.847654, 24.982969, 30.083399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276011, 25.273090, 29.450224>,  <16.150869, 25.046989, 30.063566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276011, 25.273090, 29.450224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.616596, 25.097473, 29.564939>,  <16.820948, 24.992104, 29.633768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.616596, 25.097473, 29.564939>,  <16.276011, 25.273090, 29.450224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616596, 25.097473, 29.564939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214602, -0.207267, -0.954456,
		0.478489, 0.874232, -0.082261,
		0.851466, -0.439043, 0.286787,
		16.872036, 24.965759, 29.650976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869856, 25.573084, 29.072077>,  <16.276011, 25.273090, 29.450224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869856, 25.573084, 29.072077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.981550, 25.196838, 29.149302>,  <17.048567, 24.971090, 29.195637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.981550, 25.196838, 29.149302>,  <16.869856, 25.573084, 29.072077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981550, 25.196838, 29.149302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212278, -0.135616, -0.967753,
		0.936465, 0.311213, 0.161803,
		0.279234, -0.940614, 0.193063,
		17.065321, 24.914654, 29.207220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515392, 25.517220, 28.574917>,  <16.869856, 25.573084, 29.072077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515392, 25.517220, 28.574917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.353535, 25.182295, 28.721981>,  <17.256420, 24.981340, 28.810219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.353535, 25.182295, 28.721981>,  <17.515392, 25.517220, 28.574917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.353535, 25.182295, 28.721981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162649, -0.461533, -0.872085,
		0.899894, -0.293083, 0.322944,
		-0.404643, -0.837311, 0.367661,
		17.232141, 24.931101, 28.832279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.124620, 25.623955, 28.154263>,  <17.515392, 25.517220, 28.574917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.124620, 25.623955, 28.154263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.268814, 25.935986, 27.949703>,  <18.355331, 26.123205, 27.826967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.268814, 25.935986, 27.949703>,  <18.124620, 25.623955, 28.154263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268814, 25.935986, 27.949703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404425, 0.363335, 0.839302,
		0.840530, -0.509378, -0.184506,
		0.360485, 0.780078, -0.511399,
		18.376959, 26.170010, 27.796284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863907, 25.614857, 28.334715>,  <18.124620, 25.623955, 28.154263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.863907, 25.614857, 28.334715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.750992, 25.980572, 28.218517>,  <18.683243, 26.200001, 28.148798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.750992, 25.980572, 28.218517>,  <18.863907, 25.614857, 28.334715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750992, 25.980572, 28.218517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654580, 0.404939, 0.638395,
		0.701311, -0.009941, -0.712786,
		-0.282288, 0.914290, -0.290495,
		18.666306, 26.254858, 28.131369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472637, 25.986889, 28.205551>,  <18.863907, 25.614857, 28.334715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472637, 25.986889, 28.205551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.177677, 26.243546, 28.289970>,  <19.000702, 26.397539, 28.340622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.177677, 26.243546, 28.289970>,  <19.472637, 25.986889, 28.205551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.177677, 26.243546, 28.289970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519803, 0.339538, 0.783913,
		0.431332, 0.687759, -0.583901,
		-0.737399, 0.641640, 0.211046,
		18.956457, 26.436037, 28.353285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.900650, 26.595156, 28.294462>,  <19.472637, 25.986889, 28.205551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.900650, 26.595156, 28.294462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.534645, 26.642958, 28.448591>,  <19.315042, 26.671638, 28.541069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.534645, 26.642958, 28.448591>,  <19.900650, 26.595156, 28.294462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534645, 26.642958, 28.448591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400788, 0.378359, 0.834394,
		-0.046075, 0.917912, -0.394099,
		-0.915012, 0.119506, 0.385321,
		19.260141, 26.678810, 28.564188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022638, 27.204769, 28.670479>,  <19.900650, 26.595156, 28.294462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022638, 27.204769, 28.670479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.683331, 27.059191, 28.824354>,  <19.479746, 26.971844, 28.916679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.683331, 27.059191, 28.824354>,  <20.022638, 27.204769, 28.670479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683331, 27.059191, 28.824354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300820, 0.266678, 0.915637,
		-0.435831, 0.892426, -0.116731,
		-0.848268, -0.363948, 0.384686,
		19.428850, 26.950006, 28.939760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632486, 27.749092, 28.999575>,  <20.022638, 27.204769, 28.670479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632486, 27.749092, 28.999575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.558701, 27.398853, 29.178148>,  <19.514429, 27.188709, 29.285292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.558701, 27.398853, 29.178148>,  <19.632486, 27.749092, 28.999575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558701, 27.398853, 29.178148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283787, 0.387431, 0.877133,
		-0.940977, 0.288490, 0.177017,
		-0.184462, -0.875597, 0.446434,
		19.503363, 27.136173, 29.312078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242943, 27.958347, 29.592720>,  <19.632486, 27.749092, 28.999575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242943, 27.958347, 29.592720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.363317, 27.582747, 29.659306>,  <19.435541, 27.357386, 29.699257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.363317, 27.582747, 29.659306>,  <19.242943, 27.958347, 29.592720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363317, 27.582747, 29.659306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435454, 0.290598, 0.852017,
		-0.848421, -0.183915, 0.496344,
		0.300935, -0.939004, 0.166463,
		19.453598, 27.301044, 29.709244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.120640, 27.902630, 30.297485>,  <19.242943, 27.958347, 29.592720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.120640, 27.902630, 30.297485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.354822, 27.587057, 30.222834>,  <19.495333, 27.397715, 30.178043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.354822, 27.587057, 30.222834>,  <19.120640, 27.902630, 30.297485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.354822, 27.587057, 30.222834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288537, -0.012357, 0.957389,
		-0.757619, -0.614359, 0.220401,
		0.585457, -0.788930, -0.186627,
		19.530458, 27.350378, 30.166845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739252, 27.291958, 30.595345>,  <19.120640, 27.902630, 30.297485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.739252, 27.291958, 30.595345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.137877, 27.259569, 30.588306>,  <19.377050, 27.240135, 30.584084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.137877, 27.259569, 30.588306>,  <18.739252, 27.291958, 30.595345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137877, 27.259569, 30.588306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018394, 0.009099, 0.999789,
		-0.080798, -0.996675, 0.010557,
		0.996561, -0.080975, -0.017597,
		19.436844, 27.235277, 30.583027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.700068, 19.988823, 16.134756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.961747, 20.290840, 16.152380>,  <16.118753, 20.472050, 16.162954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.961747, 20.290840, 16.152380>,  <15.700068, 19.988823, 16.134756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961747, 20.290840, 16.152380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350821, 0.251326, 0.902086,
		0.670039, -0.605597, 0.429301,
		0.654196, 0.755041, 0.044057,
		16.158007, 20.517353, 16.165598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019560, 20.102053, 16.803978>,  <15.700068, 19.988823, 16.134756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019560, 20.102053, 16.803978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.105133, 20.466606, 16.663345>,  <16.156477, 20.685339, 16.578966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.105133, 20.466606, 16.663345>,  <16.019560, 20.102053, 16.803978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105133, 20.466606, 16.663345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165696, 0.388556, 0.906404,
		0.962693, -0.135655, 0.234138,
		0.213934, 0.911385, -0.351583,
		16.169313, 20.740021, 16.557871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173275, 20.394299, 17.415834>,  <16.019560, 20.102053, 16.803978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173275, 20.394299, 17.415834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.169395, 20.711727, 17.172474>,  <16.167067, 20.902184, 17.026459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.169395, 20.711727, 17.172474>,  <16.173275, 20.394299, 17.415834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169395, 20.711727, 17.172474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016462, 0.608219, 0.793599,
		0.999817, 0.017714, 0.007164,
		-0.009701, 0.793572, -0.608399,
		16.166485, 20.949799, 16.989954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.633163, 20.912205, 17.678410>,  <16.173275, 20.394299, 17.415834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.633163, 20.912205, 17.678410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373606, 21.114292, 17.450834>,  <16.217871, 21.235544, 17.314289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373606, 21.114292, 17.450834>,  <16.633163, 20.912205, 17.678410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373606, 21.114292, 17.450834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115490, 0.673679, 0.729944,
		0.752063, 0.539364, -0.378799,
		-0.648894, 0.505217, -0.568940,
		16.178938, 21.265858, 17.280151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846901, 21.574398, 17.746941>,  <16.633163, 20.912205, 17.678410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846901, 21.574398, 17.746941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.480289, 21.623604, 17.594707>,  <16.260323, 21.653128, 17.503366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.480289, 21.623604, 17.594707>,  <16.846901, 21.574398, 17.746941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480289, 21.623604, 17.594707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197115, 0.689032, 0.697410,
		0.348028, 0.714214, -0.607269,
		-0.916527, 0.123016, -0.380585,
		16.205332, 21.660509, 17.480532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806734, 22.267122, 17.687033>,  <16.846901, 21.574398, 17.746941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806734, 22.267122, 17.687033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.436852, 22.115547, 17.701576>,  <16.214922, 22.024601, 17.710302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.436852, 22.115547, 17.701576>,  <16.806734, 22.267122, 17.687033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436852, 22.115547, 17.701576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227012, 0.625585, 0.746397,
		-0.305584, 0.681945, -0.664506,
		-0.924707, -0.378939, 0.036359,
		16.159439, 22.001865, 17.712484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433664, 22.851517, 17.653728>,  <16.806734, 22.267122, 17.687033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433664, 22.851517, 17.653728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.175327, 22.582455, 17.798185>,  <16.020325, 22.421019, 17.884859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.175327, 22.582455, 17.798185>,  <16.433664, 22.851517, 17.653728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175327, 22.582455, 17.798185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198004, 0.604415, 0.771671,
		-0.737347, 0.426871, -0.523546,
		-0.645843, -0.672654, 0.361142,
		15.981574, 22.380659, 17.906528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793999, 23.146330, 17.781372>,  <16.433664, 22.851517, 17.653728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793999, 23.146330, 17.781372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.827858, 22.829153, 18.022728>,  <15.848174, 22.638847, 18.167542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.827858, 22.829153, 18.022728>,  <15.793999, 23.146330, 17.781372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.827858, 22.829153, 18.022728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102625, 0.595406, 0.796844,
		-0.991112, -0.129375, -0.030975,
		0.084649, -0.792940, 0.603391,
		15.853252, 22.591270, 18.203745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.106768, 23.175903, 18.168467>,  <15.793999, 23.146330, 17.781372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.106768, 23.175903, 18.168467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354465, 22.943720, 18.379978>,  <15.503083, 22.804409, 18.506886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354465, 22.943720, 18.379978>,  <15.106768, 23.175903, 18.168467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.354465, 22.943720, 18.379978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076744, 0.625465, 0.776469,
		-0.781440, -0.521404, 0.342768,
		0.619243, -0.580458, 0.528778,
		15.540237, 22.769583, 18.538612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789755, 23.147203, 18.939587>,  <15.106768, 23.175903, 18.168467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789755, 23.147203, 18.939587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.162009, 23.011234, 18.993799>,  <15.385362, 22.929653, 19.026327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.162009, 23.011234, 18.993799>,  <14.789755, 23.147203, 18.939587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162009, 23.011234, 18.993799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110093, 0.613275, 0.782159,
		-0.348991, -0.712985, 0.608159,
		0.930637, -0.339921, 0.135533,
		15.441200, 22.909258, 19.034458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879224, 23.094263, 19.685131>,  <14.789755, 23.147203, 18.939587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.879224, 23.094263, 19.685131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255125, 23.116861, 19.550268>,  <15.480665, 23.130421, 19.469351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255125, 23.116861, 19.550268>,  <14.879224, 23.094263, 19.685131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255125, 23.116861, 19.550268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282373, 0.427646, 0.858711,
		0.192694, -0.902179, 0.385930,
		0.939752, 0.056492, -0.337156,
		15.537050, 23.133810, 19.449121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226068, 22.662516, 20.137520>,  <14.879224, 23.094263, 19.685131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.226068, 22.662516, 20.137520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.496699, 22.910509, 19.978590>,  <15.659078, 23.059305, 19.883232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.496699, 22.910509, 19.978590>,  <15.226068, 22.662516, 20.137520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496699, 22.910509, 19.978590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288566, 0.273189, 0.917659,
		0.677477, -0.735520, 0.005928,
		0.676576, 0.619982, -0.397326,
		15.699672, 23.096504, 19.859392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233961, 22.065371, 20.406544>,  <15.226068, 22.662516, 20.137520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233961, 22.065371, 20.406544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.923757, 21.958815, 20.635496>,  <14.737634, 21.894880, 20.772867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.923757, 21.958815, 20.635496>,  <15.233961, 22.065371, 20.406544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923757, 21.958815, 20.635496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512110, -0.264787, -0.817087,
		0.369224, -0.926781, 0.068923,
		-0.775511, -0.266392, 0.572379,
		14.691103, 21.878897, 20.807209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082508, 21.323288, 20.234190>,  <15.233961, 22.065371, 20.406544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082508, 21.323288, 20.234190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.768615, 21.525864, 20.377138>,  <14.580278, 21.647409, 20.462908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.768615, 21.525864, 20.377138>,  <15.082508, 21.323288, 20.234190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768615, 21.525864, 20.377138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514029, -0.209540, -0.831786,
		-0.346366, -0.836428, 0.424758,
		-0.784733, 0.506440, 0.357370,
		14.533195, 21.677795, 20.484350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525970, 20.920576, 20.109819>,  <15.082508, 21.323288, 20.234190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525970, 20.920576, 20.109819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.324798, 21.260735, 20.171640>,  <14.204094, 21.464830, 20.208733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.324798, 21.260735, 20.171640>,  <14.525970, 20.920576, 20.109819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.324798, 21.260735, 20.171640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582637, -0.201477, -0.787363,
		-0.638432, -0.486038, 0.596802,
		-0.502930, 0.850397, 0.154554,
		14.173919, 21.515854, 20.218006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.865505, 20.758034, 20.098270>,  <14.525970, 20.920576, 20.109819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.865505, 20.758034, 20.098270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.855177, 21.148857, 20.013714>,  <13.848980, 21.383352, 19.962980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.855177, 21.148857, 20.013714>,  <13.865505, 20.758034, 20.098270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.855177, 21.148857, 20.013714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570579, -0.188037, -0.799426,
		-0.820837, 0.099974, 0.562345,
		-0.025820, 0.977061, -0.211391,
		13.847431, 21.441975, 19.950296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.222116, 20.776279, 20.061115>,  <13.865505, 20.758034, 20.098270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.222116, 20.776279, 20.061115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.339613, 21.116417, 19.886471>,  <13.410111, 21.320499, 19.781683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.339613, 21.116417, 19.886471>,  <13.222116, 20.776279, 20.061115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.339613, 21.116417, 19.886471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816950, -0.013821, -0.576543,
		-0.496295, 0.526046, 0.690628,
		0.293743, 0.850344, -0.436612,
		13.427736, 21.371521, 19.755487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.577806, 21.219593, 20.051281>,  <13.222116, 20.776279, 20.061115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.577806, 21.219593, 20.051281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.824334, 21.327971, 19.755514>,  <12.972251, 21.392998, 19.578054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.824334, 21.327971, 19.755514>,  <12.577806, 21.219593, 20.051281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.824334, 21.327971, 19.755514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763266, -0.025597, -0.645577,
		-0.193843, 0.962254, 0.191027,
		0.616319, 0.270945, -0.739418,
		13.009230, 21.409254, 19.533689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.164831, 21.711683, 19.655731>,  <12.577806, 21.219593, 20.051281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.164831, 21.711683, 19.655731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.463428, 21.558468, 19.438097>,  <12.642587, 21.466539, 19.307516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.463428, 21.558468, 19.438097>,  <12.164831, 21.711683, 19.655731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.463428, 21.558468, 19.438097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635090, -0.166197, -0.754347,
		0.198519, 0.908658, -0.367329,
		0.746492, -0.383039, -0.544087,
		12.687376, 21.443556, 19.274872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.911613, 21.883028, 19.008923>,  <12.164831, 21.711683, 19.655731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.911613, 21.883028, 19.008923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207393, 21.618050, 18.960962>,  <12.384861, 21.459063, 18.932186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207393, 21.618050, 18.960962>,  <11.911613, 21.883028, 19.008923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.207393, 21.618050, 18.960962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557601, -0.502878, -0.660451,
		0.377220, 0.555226, -0.741235,
		0.739450, -0.662448, -0.119899,
		12.429228, 21.419315, 18.924994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082744, 21.856522, 18.380713>,  <11.911613, 21.883028, 19.008923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082744, 21.856522, 18.380713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.212786, 21.491161, 18.478697>,  <12.290812, 21.271946, 18.537487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.212786, 21.491161, 18.478697>,  <12.082744, 21.856522, 18.380713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.212786, 21.491161, 18.478697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672946, -0.405442, -0.618676,
		0.664416, 0.036289, -0.746481,
		0.325106, -0.913400, 0.244962,
		12.310317, 21.217142, 18.552185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.983114, 21.455891, 17.808666>,  <12.082744, 21.856522, 18.380713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.983114, 21.455891, 17.808666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.026882, 21.182985, 18.097816>,  <12.053144, 21.019243, 18.271307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.026882, 21.182985, 18.097816>,  <11.983114, 21.455891, 17.808666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.026882, 21.182985, 18.097816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694053, -0.573042, -0.435790,
		0.711560, -0.454028, -0.536229,
		0.109421, -0.682262, 0.722874,
		12.059709, 20.978308, 18.314678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.948781, 20.833271, 17.449604>,  <11.983114, 21.455891, 17.808666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.948781, 20.833271, 17.449604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888390, 20.718369, 17.827955>,  <11.852155, 20.649427, 18.054966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888390, 20.718369, 17.827955>,  <11.948781, 20.833271, 17.449604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888390, 20.718369, 17.827955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659554, -0.683462, -0.312839,
		0.736338, -0.671091, -0.086274,
		-0.150978, -0.287257, 0.945880,
		11.843096, 20.632191, 18.111719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.087008, 20.123524, 17.491043>,  <11.948781, 20.833271, 17.449604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.087008, 20.123524, 17.491043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841772, 20.219154, 17.792231>,  <11.694631, 20.276533, 17.972944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841772, 20.219154, 17.792231>,  <12.087008, 20.123524, 17.491043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.841772, 20.219154, 17.792231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613347, -0.744762, -0.262935,
		0.497922, -0.623034, 0.603242,
		-0.613089, 0.239076, 0.752970,
		11.657845, 20.290876, 18.018122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.577921, 19.585905, 17.553108>,  <12.087008, 20.123524, 17.491043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.577921, 19.585905, 17.553108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397369, 19.871332, 17.767427>,  <11.289039, 20.042589, 17.896019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397369, 19.871332, 17.767427>,  <11.577921, 19.585905, 17.553108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.397369, 19.871332, 17.767427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887591, -0.420849, -0.187264,
		0.091864, -0.560096, 0.823318,
		-0.451379, 0.713567, 0.535797,
		11.261956, 20.085402, 17.928167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112370, 19.252550, 18.095373>,  <11.577921, 19.585905, 17.553108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112370, 19.252550, 18.095373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984858, 19.623117, 18.015244>,  <10.908350, 19.845457, 17.967165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984858, 19.623117, 18.015244>,  <11.112370, 19.252550, 18.095373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.984858, 19.623117, 18.015244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920393, -0.353044, -0.168037,
		-0.226396, 0.130811, 0.965212,
		-0.318782, 0.926417, -0.200325,
		10.889223, 19.901043, 17.955147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.695359, 19.130333, 18.504683>,  <11.112370, 19.252550, 18.095373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.695359, 19.130333, 18.504683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799422, 18.744513, 18.486965>,  <11.861860, 18.513021, 18.476336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799422, 18.744513, 18.486965>,  <11.695359, 19.130333, 18.504683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799422, 18.744513, 18.486965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144297, -0.084195, 0.985946,
		-0.954723, -0.250110, -0.161086,
		0.260158, -0.964549, -0.044293,
		11.877470, 18.455147, 18.473677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.330477, 18.865604, 19.024643>,  <11.695359, 19.130333, 18.504683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.330477, 18.865604, 19.024643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630508, 18.620874, 18.924204>,  <11.810528, 18.474037, 18.863941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630508, 18.620874, 18.924204>,  <11.330477, 18.865604, 19.024643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630508, 18.620874, 18.924204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213107, -0.135823, 0.967542,
		-0.626071, -0.779245, 0.028506,
		0.750080, -0.611825, -0.251098,
		11.855533, 18.437326, 18.848875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.203858, 18.298388, 19.340815>,  <11.330477, 18.865604, 19.024643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.203858, 18.298388, 19.340815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.596547, 18.328766, 19.271011>,  <11.832161, 18.346992, 19.229130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.596547, 18.328766, 19.271011>,  <11.203858, 18.298388, 19.340815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.596547, 18.328766, 19.271011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185062, -0.166988, 0.968435,
		0.044409, -0.983030, -0.177991,
		0.981723, 0.075946, -0.174506,
		11.891064, 18.351549, 19.218660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.598185, 17.730089, 19.699738>,  <11.203858, 18.298388, 19.340815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.598185, 17.730089, 19.699738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.884915, 18.006460, 19.662258>,  <12.056953, 18.172283, 19.639771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.884915, 18.006460, 19.662258>,  <11.598185, 17.730089, 19.699738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.884915, 18.006460, 19.662258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153462, -0.025250, 0.987832,
		0.680154, -0.722484, -0.124131,
		0.716827, 0.690927, -0.093700,
		12.099963, 18.213737, 19.634148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.017867, 17.531534, 20.158289>,  <11.598185, 17.730089, 19.699738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.017867, 17.531534, 20.158289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.132248, 17.908665, 20.089806>,  <12.200876, 18.134943, 20.048716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.132248, 17.908665, 20.089806>,  <12.017867, 17.531534, 20.158289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.132248, 17.908665, 20.089806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295838, 0.083078, 0.951618,
		0.911433, -0.322767, -0.255168,
		0.285952, 0.942825, -0.171207,
		12.218034, 18.191513, 20.038443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.713797, 17.589720, 20.420336>,  <12.017867, 17.531534, 20.158289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.713797, 17.589720, 20.420336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531337, 17.944870, 20.396305>,  <12.421861, 18.157959, 20.381887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531337, 17.944870, 20.396305>,  <12.713797, 17.589720, 20.420336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531337, 17.944870, 20.396305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369955, 0.250598, 0.894614,
		0.809359, 0.385852, -0.442783,
		-0.456149, 0.887873, -0.060076,
		12.394492, 18.211231, 20.378283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.210388, 18.169842, 20.441357>,  <12.713797, 17.589720, 20.420336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.210388, 18.169842, 20.441357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.870073, 18.357191, 20.536676>,  <12.665884, 18.469601, 20.593868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.870073, 18.357191, 20.536676>,  <13.210388, 18.169842, 20.441357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.870073, 18.357191, 20.536676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424311, 0.344735, 0.837328,
		0.310031, 0.813501, -0.492033,
		-0.850788, 0.468373, 0.238299,
		12.614837, 18.497704, 20.608166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387333, 18.934500, 20.643452>,  <13.210388, 18.169842, 20.441357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387333, 18.934500, 20.643452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032250, 18.855940, 20.810020>,  <12.819201, 18.808804, 20.909962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032250, 18.855940, 20.810020>,  <13.387333, 18.934500, 20.643452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.032250, 18.855940, 20.810020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376860, 0.209628, 0.902237,
		-0.264491, 0.957854, -0.112074,
		-0.887705, -0.196398, 0.416422,
		12.765939, 18.797020, 20.934946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449529, 19.230759, 21.268227>,  <13.387333, 18.934500, 20.643452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449529, 19.230759, 21.268227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.115359, 19.028618, 21.354656>,  <12.914858, 18.907333, 21.406513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.115359, 19.028618, 21.354656>,  <13.449529, 19.230759, 21.268227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.115359, 19.028618, 21.354656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174710, 0.128568, 0.976190,
		-0.521098, 0.853283, -0.019119,
		-0.835424, -0.505350, 0.216073,
		12.864732, 18.877012, 21.419477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.030808, 19.677889, 21.774767>,  <13.449529, 19.230759, 21.268227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.030808, 19.677889, 21.774767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943855, 19.290016, 21.819424>,  <12.891684, 19.057293, 21.846218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943855, 19.290016, 21.819424>,  <13.030808, 19.677889, 21.774767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943855, 19.290016, 21.819424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120066, 0.086944, 0.988952,
		-0.968674, 0.228385, 0.097525,
		-0.217383, -0.969681, 0.111642,
		12.878640, 18.999111, 21.852917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.463908, 19.688887, 22.348347>,  <13.030808, 19.677889, 21.774767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.463908, 19.688887, 22.348347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.590387, 19.310246, 22.323170>,  <12.666275, 19.083061, 22.308064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.590387, 19.310246, 22.323170>,  <12.463908, 19.688887, 22.348347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.590387, 19.310246, 22.323170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172798, -0.007769, 0.984927,
		-0.932823, -0.322308, 0.161115,
		0.316198, -0.946603, -0.062942,
		12.685246, 19.026264, 22.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.058893, 19.256569, 22.779512>,  <12.463908, 19.688887, 22.348347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.058893, 19.256569, 22.779512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408816, 19.064501, 22.753763>,  <12.618771, 18.949259, 22.738314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408816, 19.064501, 22.753763>,  <12.058893, 19.256569, 22.779512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.408816, 19.064501, 22.753763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091970, -0.295051, 0.951045,
		-0.475659, -0.826062, -0.302275,
		0.874809, -0.480173, -0.064371,
		12.671259, 18.920448, 22.734451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.912403, 18.697124, 23.200720>,  <12.058893, 19.256569, 22.779512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.912403, 18.697124, 23.200720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.308408, 18.744852, 23.170675>,  <12.546010, 18.773489, 23.152649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.308408, 18.744852, 23.170675>,  <11.912403, 18.697124, 23.200720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.308408, 18.744852, 23.170675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087880, -0.105612, 0.990517,
		0.110253, -0.987223, -0.115043,
		0.990011, 0.119318, -0.075113,
		12.605412, 18.780647, 23.148142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.072227, 18.421556, 23.772694>,  <11.912403, 18.697124, 23.200720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.072227, 18.421556, 23.772694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440041, 18.542320, 23.672049>,  <12.660728, 18.614779, 23.611662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440041, 18.542320, 23.672049>,  <12.072227, 18.421556, 23.772694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440041, 18.542320, 23.672049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279332, -0.051692, 0.958802,
		0.276464, -0.951934, -0.131865,
		0.919533, 0.301908, -0.251615,
		12.715900, 18.632893, 23.596563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.509510, 18.012587, 24.132847>,  <12.072227, 18.421556, 23.772694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.509510, 18.012587, 24.132847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744299, 18.321693, 24.036268>,  <12.885173, 18.507156, 23.978321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744299, 18.321693, 24.036268>,  <12.509510, 18.012587, 24.132847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744299, 18.321693, 24.036268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425553, -0.040787, 0.904014,
		0.688744, -0.633379, -0.352793,
		0.586973, 0.772766, -0.241445,
		12.920391, 18.553524, 23.963835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.219765, 17.881367, 24.185900>,  <12.509510, 18.012587, 24.132847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.219765, 17.881367, 24.185900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.229347, 18.278200, 24.235201>,  <13.235097, 18.516300, 24.264782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.229347, 18.278200, 24.235201>,  <13.219765, 17.881367, 24.185900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.229347, 18.278200, 24.235201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640006, -0.109932, 0.760465,
		0.767996, 0.060666, -0.637575,
		0.023956, 0.992086, 0.123254,
		13.236534, 18.575827, 24.272177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.978113, 17.995199, 24.214136>,  <13.219765, 17.881367, 24.185900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.978113, 17.995199, 24.214136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.799786, 18.318615, 24.367762>,  <13.692789, 18.512665, 24.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.799786, 18.318615, 24.367762>,  <13.978113, 17.995199, 24.214136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.799786, 18.318615, 24.367762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685713, 0.032695, 0.727137,
		0.575363, 0.587531, -0.569004,
		-0.445819, 0.808541, 0.384066,
		13.666040, 18.561178, 24.482981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.487477, 18.511288, 24.212408>,  <13.978113, 17.995199, 24.214136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.487477, 18.511288, 24.212408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210950, 18.636229, 24.473026>,  <14.045033, 18.711193, 24.629398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210950, 18.636229, 24.473026>,  <14.487477, 18.511288, 24.212408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210950, 18.636229, 24.473026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720032, 0.222595, 0.657271,
		0.060269, 0.923519, -0.378789,
		-0.691319, 0.312353, 0.651547,
		14.003554, 18.729935, 24.668491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.765341, 19.146181, 24.479057>,  <14.487477, 18.511288, 24.212408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.765341, 19.146181, 24.479057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.503803, 19.025423, 24.756575>,  <14.346881, 18.952969, 24.923084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.503803, 19.025423, 24.756575>,  <14.765341, 19.146181, 24.479057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.503803, 19.025423, 24.756575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665911, 0.205751, 0.717097,
		-0.359236, 0.930874, 0.066506,
		-0.653844, -0.301894, 0.693793,
		14.307651, 18.934855, 24.964712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950554, 19.576872, 24.979542>,  <14.765341, 19.146181, 24.479057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.950554, 19.576872, 24.979542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.730914, 19.307310, 25.177267>,  <14.599130, 19.145573, 25.295902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.730914, 19.307310, 25.177267>,  <14.950554, 19.576872, 24.979542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730914, 19.307310, 25.177267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495740, 0.213540, 0.841809,
		-0.672853, 0.707288, 0.216826,
		-0.549100, -0.673903, 0.494312,
		14.566184, 19.105139, 25.325562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900470, 19.837736, 25.675961>,  <14.950554, 19.576872, 24.979542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.900470, 19.837736, 25.675961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.785613, 19.457253, 25.721123>,  <14.716700, 19.228962, 25.748220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.785613, 19.457253, 25.721123>,  <14.900470, 19.837736, 25.675961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.785613, 19.457253, 25.721123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320894, 0.015537, 0.946988,
		-0.902539, 0.308150, 0.300776,
		-0.287141, -0.951211, 0.112907,
		14.699471, 19.171888, 25.754995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444684, 19.904173, 26.214579>,  <14.900470, 19.837736, 25.675961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444684, 19.904173, 26.214579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.601424, 19.536354, 26.202648>,  <14.695468, 19.315662, 26.195490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.601424, 19.536354, 26.202648>,  <14.444684, 19.904173, 26.214579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.601424, 19.536354, 26.202648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219859, 0.062112, 0.973552,
		-0.893373, -0.388043, 0.226509,
		0.391849, -0.919546, -0.029825,
		14.718979, 19.260490, 26.193701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159300, 19.533545, 26.812819>,  <14.444684, 19.904173, 26.214579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159300, 19.533545, 26.812819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.480784, 19.325851, 26.696583>,  <14.673676, 19.201235, 26.626841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.480784, 19.325851, 26.696583>,  <14.159300, 19.533545, 26.812819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480784, 19.325851, 26.696583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385551, 0.082472, 0.918993,
		-0.453207, -0.850643, 0.266475,
		0.803712, -0.519234, -0.290589,
		14.721898, 19.170082, 26.609406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.234629, 19.056219, 27.436419>,  <14.159300, 19.533545, 26.812819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.234629, 19.056219, 27.436419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568161, 19.072758, 27.216230>,  <14.768280, 19.082682, 27.084118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568161, 19.072758, 27.216230>,  <14.234629, 19.056219, 27.436419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568161, 19.072758, 27.216230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551241, -0.009427, 0.834293,
		0.029312, -0.999100, -0.030656,
		0.833831, 0.041353, -0.550469,
		14.818311, 19.085161, 27.051090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638352, 18.670231, 27.719370>,  <14.234629, 19.056219, 27.436419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638352, 18.670231, 27.719370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899280, 18.885075, 27.505457>,  <15.055836, 19.013981, 27.377110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899280, 18.885075, 27.505457>,  <14.638352, 18.670231, 27.719370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.899280, 18.885075, 27.505457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630809, 0.006432, 0.775912,
		0.420191, -0.843487, -0.334619,
		0.652319, 0.537112, -0.534782,
		15.094975, 19.046207, 27.345022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255530, 18.429693, 28.092756>,  <14.638352, 18.670231, 27.719370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.255530, 18.429693, 28.092756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.345337, 18.744442, 27.862825>,  <15.399220, 18.933290, 27.724867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.345337, 18.744442, 27.862825>,  <15.255530, 18.429693, 28.092756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.345337, 18.744442, 27.862825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628049, 0.334183, 0.702763,
		0.745082, -0.518800, -0.419165,
		0.224515, 0.786873, -0.574826,
		15.412691, 18.980503, 27.690378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925148, 18.479973, 27.898733>,  <15.255530, 18.429693, 28.092756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925148, 18.479973, 27.898733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828856, 18.867540, 27.875944>,  <15.771080, 19.100080, 27.862270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828856, 18.867540, 27.875944>,  <15.925148, 18.479973, 27.898733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828856, 18.867540, 27.875944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774910, 0.227212, 0.589821,
		0.584433, 0.097839, -0.805522,
		-0.240732, 0.968918, -0.056973,
		15.756636, 19.158216, 27.858852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634966, 18.778763, 27.794752>,  <15.925148, 18.479973, 27.898733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634966, 18.778763, 27.794752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.402283, 19.086670, 27.899881>,  <16.262672, 19.271414, 27.962959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.402283, 19.086670, 27.899881>,  <16.634966, 18.778763, 27.794752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.402283, 19.086670, 27.899881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754580, 0.390060, 0.527695,
		0.303686, 0.505284, -0.807752,
		-0.581707, 0.769767, 0.262821,
		16.227770, 19.317600, 27.978727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
