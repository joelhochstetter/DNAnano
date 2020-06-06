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
	<23.927708, 35.289593, 35.173649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.145704, 34.963127, 35.096855>,  <24.276503, 34.767246, 35.050781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.145704, 34.963127, 35.096855>,  <23.927708, 35.289593, 35.173649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.145704, 34.963127, 35.096855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680855, -0.297178, -0.669419,
		0.489304, 0.495540, -0.717650,
		0.544994, -0.816165, -0.191980,
		24.309202, 34.718277, 35.039261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.225531, 35.664726, 34.550957>,  <23.927708, 35.289593, 35.173649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.225531, 35.664726, 34.550957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439163, 35.327106, 34.531654>,  <24.567343, 35.124535, 34.520073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439163, 35.327106, 34.531654>,  <24.225531, 35.664726, 34.550957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.439163, 35.327106, 34.531654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842768, -0.536059, 0.048818,
		-0.067075, 0.014597, -0.997641,
		0.534082, -0.844054, -0.048258,
		24.599388, 35.073891, 34.517178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882494, 35.751041, 34.162304>,  <24.225531, 35.664726, 34.550957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882494, 35.751041, 34.162304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218481, 35.869446, 34.344219>,  <25.420073, 35.940487, 34.453369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218481, 35.869446, 34.344219>,  <24.882494, 35.751041, 34.162304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218481, 35.869446, 34.344219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200362, -0.948069, 0.247022,
		0.504292, -0.116368, -0.855656,
		0.839967, 0.296012, 0.454788,
		25.470470, 35.958248, 34.480656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403582, 35.277397, 33.994686>,  <24.882494, 35.751041, 34.162304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403582, 35.277397, 33.994686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521023, 35.434917, 34.343102>,  <25.591488, 35.529430, 34.552151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521023, 35.434917, 34.343102>,  <25.403582, 35.277397, 33.994686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521023, 35.434917, 34.343102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177120, -0.917835, 0.355256,
		0.939375, 0.049975, -0.339230,
		0.293603, 0.393803, 0.871043,
		25.609104, 35.553059, 34.604416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052891, 34.881741, 34.145077>,  <25.403582, 35.277397, 33.994686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052891, 34.881741, 34.145077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941816, 35.054279, 34.488430>,  <25.875172, 35.157803, 34.694443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941816, 35.054279, 34.488430>,  <26.052891, 34.881741, 34.145077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941816, 35.054279, 34.488430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381754, -0.770400, 0.510634,
		0.881563, 0.469489, 0.049261,
		-0.277688, 0.431350, 0.858386,
		25.858511, 35.183685, 34.745945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629736, 34.910122, 34.568462>,  <26.052891, 34.881741, 34.145077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629736, 34.910122, 34.568462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288960, 34.903126, 34.777802>,  <26.084494, 34.898930, 34.903404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288960, 34.903126, 34.777802>,  <26.629736, 34.910122, 34.568462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288960, 34.903126, 34.777802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330097, -0.793781, 0.510830,
		0.406490, 0.607952, 0.682026,
		-0.851940, -0.017487, 0.523348,
		26.033377, 34.897881, 34.934807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793585, 34.665596, 35.226913>,  <26.629736, 34.910122, 34.568462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793585, 34.665596, 35.226913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414005, 34.561066, 35.156254>,  <26.186256, 34.498348, 35.113857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414005, 34.561066, 35.156254>,  <26.793585, 34.665596, 35.226913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414005, 34.561066, 35.156254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173743, -0.900456, 0.398739,
		-0.263264, 0.347692, 0.899890,
		-0.948950, -0.261323, -0.176649,
		26.129320, 34.482670, 35.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379490, 34.447697, 35.895527>,  <26.793585, 34.665596, 35.226913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379490, 34.447697, 35.895527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243353, 34.250526, 35.575230>,  <26.161671, 34.132225, 35.383053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243353, 34.250526, 35.575230>,  <26.379490, 34.447697, 35.895527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243353, 34.250526, 35.575230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044741, -0.859105, 0.509840,
		-0.939236, 0.137695, 0.314444,
		-0.340343, -0.492929, -0.800742,
		26.141251, 34.102646, 35.335007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830980, 33.971954, 36.127361>,  <26.379490, 34.447697, 35.895527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830980, 33.971954, 36.127361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981594, 33.808285, 35.794903>,  <26.071962, 33.710083, 35.595428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981594, 33.808285, 35.794903>,  <25.830980, 33.971954, 36.127361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981594, 33.808285, 35.794903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053588, -0.905291, 0.421398,
		-0.924851, -0.114132, -0.362801,
		0.376536, -0.409172, -0.831143,
		26.094555, 33.685532, 35.545559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449780, 33.318977, 35.967293>,  <25.830980, 33.971954, 36.127361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449780, 33.318977, 35.967293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787573, 33.254128, 35.763111>,  <25.990248, 33.215218, 35.640602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787573, 33.254128, 35.763111>,  <25.449780, 33.318977, 35.967293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787573, 33.254128, 35.763111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010736, -0.958017, 0.286510,
		-0.535477, -0.236472, -0.810769,
		0.844482, -0.162124, -0.510457,
		26.040918, 33.205490, 35.609974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319216, 32.763107, 35.648769>,  <25.449780, 33.318977, 35.967293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319216, 32.763107, 35.648769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718830, 32.780334, 35.652271>,  <25.958599, 32.790672, 35.654373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718830, 32.780334, 35.652271>,  <25.319216, 32.763107, 35.648769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718830, 32.780334, 35.652271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034379, -0.889888, 0.454881,
		0.027384, -0.454140, -0.890509,
		0.999034, 0.043071, 0.008756,
		26.018539, 32.793255, 35.654900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616709, 32.045605, 35.569809>,  <25.319216, 32.763107, 35.648769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616709, 32.045605, 35.569809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882612, 32.282463, 35.751999>,  <26.042154, 32.424580, 35.861313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882612, 32.282463, 35.751999>,  <25.616709, 32.045605, 35.569809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882612, 32.282463, 35.751999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256756, -0.753646, 0.605057,
		0.701549, -0.285272, -0.653031,
		0.664760, 0.592147, 0.455474,
		26.082041, 32.460106, 35.888641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244484, 31.643576, 35.655254>,  <25.616709, 32.045605, 35.569809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244484, 31.643576, 35.655254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313633, 31.950600, 35.902142>,  <26.355124, 32.134815, 36.050274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313633, 31.950600, 35.902142>,  <26.244484, 31.643576, 35.655254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313633, 31.950600, 35.902142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460961, -0.616842, 0.637982,
		0.870419, 0.174225, -0.460452,
		0.172874, 0.767562, 0.617222,
		26.365496, 32.180870, 36.087307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909424, 31.803356, 35.739265>,  <26.244484, 31.643576, 35.655254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909424, 31.803356, 35.739265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738863, 31.920961, 36.081432>,  <26.636526, 31.991524, 36.286732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738863, 31.920961, 36.081432>,  <26.909424, 31.803356, 35.739265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738863, 31.920961, 36.081432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678567, -0.521348, 0.517438,
		0.598104, 0.801094, 0.022796,
		-0.426402, 0.294013, 0.855417,
		26.610943, 32.009167, 36.338058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319342, 32.278435, 36.364647>,  <26.909424, 31.803356, 35.739265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319342, 32.278435, 36.364647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041792, 32.011448, 36.472740>,  <26.875263, 31.851255, 36.537598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041792, 32.011448, 36.472740>,  <27.319342, 32.278435, 36.364647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041792, 32.011448, 36.472740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688019, -0.503747, 0.522368,
		-0.212534, 0.548384, 0.808767,
		-0.693873, -0.667468, 0.270236,
		26.833630, 31.811207, 36.553810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990091, 32.910694, 36.430538>,  <27.319342, 32.278435, 36.364647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990091, 32.910694, 36.430538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740511, 32.745434, 36.165211>,  <26.590763, 32.646278, 36.006016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740511, 32.745434, 36.165211>,  <26.990091, 32.910694, 36.430538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740511, 32.745434, 36.165211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288640, 0.666954, -0.686921,
		0.726204, -0.620066, -0.296895,
		-0.623951, -0.413148, -0.663320,
		26.553326, 32.621490, 35.966213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322521, 32.995079, 35.673000>,  <26.990091, 32.910694, 36.430538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322521, 32.995079, 35.673000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929237, 32.927643, 35.645058>,  <26.693268, 32.887180, 35.628292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929237, 32.927643, 35.645058>,  <27.322521, 32.995079, 35.673000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929237, 32.927643, 35.645058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091646, 0.787195, -0.609856,
		0.157807, -0.593213, -0.789427,
		-0.983208, -0.168588, -0.069859,
		26.634275, 32.877068, 35.624100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138258, 33.013557, 34.943298>,  <27.322521, 32.995079, 35.673000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138258, 33.013557, 34.943298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799606, 33.076256, 35.146729>,  <26.596415, 33.113876, 35.268787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799606, 33.076256, 35.146729>,  <27.138258, 33.013557, 34.943298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799606, 33.076256, 35.146729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181373, 0.813445, -0.552639,
		-0.500322, -0.560123, -0.660257,
		-0.846629, 0.156745, 0.508576,
		26.545618, 33.123280, 35.299301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591282, 33.139587, 34.495106>,  <27.138258, 33.013557, 34.943298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591282, 33.139587, 34.495106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432337, 33.322731, 34.813217>,  <26.336969, 33.432617, 35.004082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432337, 33.322731, 34.813217>,  <26.591282, 33.139587, 34.495106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432337, 33.322731, 34.813217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269140, 0.770375, -0.578002,
		-0.877307, -0.443716, -0.182888,
		-0.397361, 0.457863, 0.795277,
		26.313128, 33.460091, 35.051800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942797, 33.351631, 34.310669>,  <26.591282, 33.139587, 34.495106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942797, 33.351631, 34.310669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007030, 33.596661, 34.620239>,  <26.045570, 33.743679, 34.805981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007030, 33.596661, 34.620239>,  <25.942797, 33.351631, 34.310669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007030, 33.596661, 34.620239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277581, 0.780485, -0.560172,
		-0.947186, -0.124873, 0.295372,
		0.160583, 0.612577, 0.773927,
		26.055206, 33.780434, 34.852417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186354, 33.612331, 34.489986>,  <25.942797, 33.351631, 34.310669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186354, 33.612331, 34.489986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498068, 33.830212, 34.613930>,  <25.685097, 33.960941, 34.688297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498068, 33.830212, 34.613930>,  <25.186354, 33.612331, 34.489986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498068, 33.830212, 34.613930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421020, 0.821319, -0.384938,
		-0.464169, 0.169520, 0.869373,
		0.779288, 0.544700, 0.309860,
		25.731853, 33.993622, 34.706886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873665, 34.159271, 34.907261>,  <25.186354, 33.612331, 34.489986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873665, 34.159271, 34.907261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214954, 34.278389, 34.735992>,  <25.419727, 34.349861, 34.633232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214954, 34.278389, 34.735992>,  <24.873665, 34.159271, 34.907261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214954, 34.278389, 34.735992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470407, 0.793938, -0.385200,
		0.225226, 0.530075, 0.817493,
		0.853224, 0.297797, -0.428167,
		25.470921, 34.367729, 34.607544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330111, 34.391224, 35.325985>,  <24.873665, 34.159271, 34.907261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330111, 34.391224, 35.325985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166964, 34.205975, 35.640732>,  <25.069075, 34.094826, 35.829578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166964, 34.205975, 35.640732>,  <25.330111, 34.391224, 35.325985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166964, 34.205975, 35.640732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753487, -0.657453, 0.003613,
		0.515656, 0.594368, 0.617110,
		-0.407868, -0.463121, 0.786868,
		25.044603, 34.067039, 35.876793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051092, 34.982853, 35.705711>,  <25.330111, 34.391224, 35.325985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051092, 34.982853, 35.705711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402897, 34.999168, 35.516064>,  <25.613979, 35.008957, 35.402275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402897, 34.999168, 35.516064>,  <25.051092, 34.982853, 35.705711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402897, 34.999168, 35.516064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183710, 0.948186, -0.259217,
		0.438982, 0.315086, 0.841437,
		0.879514, 0.040788, -0.474121,
		25.666752, 35.011406, 35.373829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255825, 35.687210, 35.808258>,  <25.051092, 34.982853, 35.705711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255825, 35.687210, 35.808258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478855, 35.539917, 35.510666>,  <25.612673, 35.451542, 35.332111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478855, 35.539917, 35.510666>,  <25.255825, 35.687210, 35.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478855, 35.539917, 35.510666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113051, 0.854198, -0.507510,
		0.822391, 0.367084, 0.434652,
		0.557577, -0.368234, -0.743984,
		25.646128, 35.429447, 35.287472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920231, 36.009609, 35.783115>,  <25.255825, 35.687210, 35.808258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920231, 36.009609, 35.783115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837339, 35.903976, 35.406326>,  <25.787605, 35.840595, 35.180252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837339, 35.903976, 35.406326>,  <25.920231, 36.009609, 35.783115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837339, 35.903976, 35.406326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070816, 0.964399, -0.254791,
		0.975727, 0.013908, -0.218550,
		-0.207226, -0.264083, -0.941975,
		25.775171, 35.824753, 35.123734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345156, 36.493198, 35.300846>,  <25.920231, 36.009609, 35.783115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345156, 36.493198, 35.300846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071501, 36.324009, 35.063175>,  <25.907309, 36.222496, 34.920574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071501, 36.324009, 35.063175>,  <26.345156, 36.493198, 35.300846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071501, 36.324009, 35.063175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034184, 0.832364, -0.553173,
		0.728550, -0.358136, -0.583912,
		-0.684139, -0.422975, -0.594177,
		25.866259, 36.197117, 34.884922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830273, 37.146000, 35.267334>,  <26.345156, 36.493198, 35.300846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830273, 37.146000, 35.267334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211212, 37.172493, 35.386429>,  <27.439775, 37.188389, 35.457886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211212, 37.172493, 35.386429>,  <26.830273, 37.146000, 35.267334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211212, 37.172493, 35.386429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087356, 0.994476, 0.058198,
		-0.292237, -0.081433, 0.952873,
		0.952348, 0.066231, 0.297736,
		27.496916, 37.192364, 35.475750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858595, 37.685131, 35.878777>,  <26.830273, 37.146000, 35.267334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858595, 37.685131, 35.878777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175959, 37.655704, 35.637085>,  <27.366377, 37.638046, 35.492069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175959, 37.655704, 35.637085>,  <26.858595, 37.685131, 35.878777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175959, 37.655704, 35.637085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016585, 0.989688, -0.142279,
		0.608462, 0.122907, 0.784008,
		0.793410, -0.073569, -0.604226,
		27.413982, 37.633633, 35.455818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451923, 38.189060, 35.978207>,  <26.858595, 37.685131, 35.878777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451923, 38.189060, 35.978207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488214, 38.077713, 35.595734>,  <27.509989, 38.010906, 35.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488214, 38.077713, 35.595734>,  <27.451923, 38.189060, 35.978207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488214, 38.077713, 35.595734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068612, 0.959606, -0.272854,
		0.993510, -0.040850, 0.106161,
		0.090727, -0.278367, -0.956180,
		27.515432, 37.994202, 35.308880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759653, 37.725182, 36.522251>,  <27.451923, 38.189060, 35.978207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759653, 37.725182, 36.522251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769081, 37.590672, 36.898838>,  <27.774738, 37.509968, 37.124790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769081, 37.590672, 36.898838>,  <27.759653, 37.725182, 36.522251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769081, 37.590672, 36.898838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988152, 0.135025, 0.072966,
		-0.151659, -0.932035, -0.329107,
		0.023569, -0.336273, 0.941469,
		27.776152, 37.489788, 37.181278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174631, 37.267231, 36.731670>,  <27.759653, 37.725182, 36.522251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174631, 37.267231, 36.731670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298998, 37.424885, 37.077618>,  <27.373617, 37.519478, 37.285187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298998, 37.424885, 37.077618>,  <27.174631, 37.267231, 36.731670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298998, 37.424885, 37.077618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950398, 0.137224, 0.279129,
		-0.008667, -0.908753, 0.417245,
		0.310915, 0.394130, 0.864866,
		27.392273, 37.543125, 37.337078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751627, 36.909328, 37.282780>,  <27.174631, 37.267231, 36.731670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751627, 36.909328, 37.282780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900049, 37.238731, 37.454433>,  <26.989101, 37.436375, 37.557426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900049, 37.238731, 37.454433>,  <26.751627, 36.909328, 37.282780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900049, 37.238731, 37.454433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901960, 0.209693, 0.377489,
		0.220878, -0.527130, 0.820577,
		0.371055, 0.823506, 0.429133,
		27.011366, 37.485783, 37.583172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240454, 36.983326, 37.795570>,  <26.751627, 36.909328, 37.282780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240454, 36.983326, 37.795570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443529, 37.327652, 37.781464>,  <26.565374, 37.534248, 37.772999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443529, 37.327652, 37.781464>,  <26.240454, 36.983326, 37.795570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443529, 37.327652, 37.781464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841874, 0.504380, 0.191962,
		0.183032, -0.067767, 0.980769,
		0.507688, 0.860819, -0.035266,
		26.595835, 37.585899, 37.770885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317532, 37.326286, 38.485264>,  <26.240454, 36.983326, 37.795570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317532, 37.326286, 38.485264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298584, 37.578552, 38.175419>,  <26.287214, 37.729912, 37.989513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298584, 37.578552, 38.175419>,  <26.317532, 37.326286, 38.485264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298584, 37.578552, 38.175419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840941, 0.393313, 0.371649,
		0.539050, 0.669007, 0.511718,
		-0.047370, 0.630662, -0.774610,
		26.284372, 37.767750, 37.943035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780437, 37.854256, 38.378098>,  <26.317532, 37.326286, 38.485264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780437, 37.854256, 38.378098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002464, 37.650383, 38.641041>,  <27.135681, 37.528061, 38.798809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002464, 37.650383, 38.641041>,  <26.780437, 37.854256, 38.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002464, 37.650383, 38.641041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807412, -0.140162, 0.573098,
		-0.199960, -0.848870, -0.489322,
		0.555070, -0.509681, 0.657361,
		27.168985, 37.497478, 38.838249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173370, 37.946907, 38.804279>,  <26.780437, 37.854256, 38.378098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173370, 37.946907, 38.804279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314472, 38.057186, 38.446606>,  <26.399134, 38.123352, 38.232002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314472, 38.057186, 38.446606>,  <26.173370, 37.946907, 38.804279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314472, 38.057186, 38.446606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767104, 0.632429, -0.107633,
		0.535831, 0.723897, 0.434577,
		0.352755, 0.275693, -0.894180,
		26.420300, 38.139893, 38.178352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229666, 38.754211, 38.802246>,  <26.173370, 37.946907, 38.804279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229666, 38.754211, 38.802246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211962, 38.627983, 38.423100>,  <26.201340, 38.552246, 38.195610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211962, 38.627983, 38.423100>,  <26.229666, 38.754211, 38.802246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211962, 38.627983, 38.423100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803833, 0.574635, -0.153775,
		0.593206, 0.755122, -0.279100,
		-0.044262, -0.315570, -0.947869,
		26.198683, 38.533314, 38.138741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207008, 39.338886, 38.386330>,  <26.229666, 38.754211, 38.802246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207008, 39.338886, 38.386330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056189, 39.048615, 38.156120>,  <25.965696, 38.874451, 38.017994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056189, 39.048615, 38.156120>,  <26.207008, 39.338886, 38.386330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056189, 39.048615, 38.156120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765536, 0.593939, -0.247368,
		0.521334, 0.347312, -0.779478,
		-0.377048, -0.725679, -0.575521,
		25.943073, 38.830910, 37.983463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154097, 39.548820, 37.639370>,  <26.207008, 39.338886, 38.386330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154097, 39.548820, 37.639370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859459, 39.300529, 37.746796>,  <25.682676, 39.151554, 37.811253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859459, 39.300529, 37.746796>,  <26.154097, 39.548820, 37.639370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859459, 39.300529, 37.746796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674442, 0.644475, -0.360249,
		0.050530, -0.446492, -0.893360,
		-0.736596, -0.620723, 0.268567,
		25.638479, 39.114311, 37.827366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658987, 39.332695, 37.018436>,  <26.154097, 39.548820, 37.639370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658987, 39.332695, 37.018436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500505, 39.342968, 37.385559>,  <25.405416, 39.349133, 37.605831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500505, 39.342968, 37.385559>,  <25.658987, 39.332695, 37.018436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500505, 39.342968, 37.385559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617662, 0.732157, -0.287122,
		-0.679349, -0.680651, -0.274223,
		-0.396204, 0.025679, 0.917803,
		25.381643, 39.350670, 37.660900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830902, 38.969440, 37.281208>,  <25.658987, 39.332695, 37.018436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830902, 38.969440, 37.281208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009640, 39.303349, 37.409885>,  <25.116882, 39.503693, 37.487091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009640, 39.303349, 37.409885>,  <24.830902, 38.969440, 37.281208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009640, 39.303349, 37.409885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692756, 0.550402, -0.465991,
		-0.566056, -0.014628, 0.824237,
		0.446845, 0.834772, 0.321692,
		25.143694, 39.553780, 37.506393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912695, 38.274132, 37.713520>,  <24.830902, 38.969440, 37.281208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912695, 38.274132, 37.713520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211573, 38.527752, 37.633839>,  <25.390900, 38.679924, 37.586029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211573, 38.527752, 37.633839>,  <24.912695, 38.274132, 37.713520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211573, 38.527752, 37.633839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664426, -0.719658, 0.201569,
		-0.015554, -0.282968, -0.959003,
		0.747192, 0.634051, -0.199205,
		25.435730, 38.717968, 37.574078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405024, 37.918480, 37.310955>,  <24.912695, 38.274132, 37.713520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405024, 37.918480, 37.310955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594624, 38.219280, 37.494179>,  <25.708384, 38.399761, 37.604115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594624, 38.219280, 37.494179>,  <25.405024, 37.918480, 37.310955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594624, 38.219280, 37.494179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765725, -0.608873, 0.207219,
		0.434729, 0.252526, -0.864431,
		0.474001, 0.752000, 0.458060,
		25.736824, 38.444881, 37.631596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058029, 38.012432, 36.971554>,  <25.405024, 37.918480, 37.310955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058029, 38.012432, 36.971554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114279, 38.202229, 37.319138>,  <26.148027, 38.316105, 37.527687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114279, 38.202229, 37.319138>,  <26.058029, 38.012432, 36.971554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114279, 38.202229, 37.319138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884327, -0.454847, 0.105259,
		0.445186, 0.753639, -0.483567,
		0.140622, 0.474492, 0.868955,
		26.156466, 38.344578, 37.579823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778566, 38.542671, 37.034657>,  <26.058029, 38.012432, 36.971554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778566, 38.542671, 37.034657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656359, 38.393639, 37.385162>,  <26.583035, 38.304218, 37.595467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656359, 38.393639, 37.385162>,  <26.778566, 38.542671, 37.034657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656359, 38.393639, 37.385162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843214, -0.533359, 0.067213,
		0.442322, 0.759415, 0.477116,
		-0.305517, -0.372581, 0.876266,
		26.564703, 38.281864, 37.648041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234507, 38.678322, 37.691341>,  <26.778566, 38.542671, 37.034657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234507, 38.678322, 37.691341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035254, 38.335293, 37.742615>,  <26.915701, 38.129475, 37.773376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035254, 38.335293, 37.742615>,  <27.234507, 38.678322, 37.691341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035254, 38.335293, 37.742615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862517, -0.474879, 0.174798,
		-0.089032, 0.197631, 0.976225,
		-0.498135, -0.857573, 0.128181,
		26.885813, 38.078022, 37.781071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488688, 38.412601, 38.350208>,  <27.234507, 38.678322, 37.691341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488688, 38.412601, 38.350208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342257, 38.135868, 38.101257>,  <27.254398, 37.969830, 37.951885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342257, 38.135868, 38.101257>,  <27.488688, 38.412601, 38.350208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342257, 38.135868, 38.101257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846991, -0.524750, 0.085113,
		-0.385479, -0.495993, 0.778073,
		-0.366078, -0.691830, -0.622381,
		27.232433, 37.928318, 37.914543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650251, 37.690483, 38.578503>,  <27.488688, 38.412601, 38.350208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650251, 37.690483, 38.578503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586487, 37.692417, 38.183624>,  <27.548229, 37.693577, 37.946697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586487, 37.692417, 38.183624>,  <27.650251, 37.690483, 38.578503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586487, 37.692417, 38.183624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906356, -0.395636, -0.148292,
		-0.391289, -0.918395, 0.058685,
		-0.159408, 0.004836, -0.987201,
		27.538664, 37.693867, 37.887463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536501, 37.024311, 38.237537>,  <27.650251, 37.690483, 38.578503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536501, 37.024311, 38.237537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727083, 37.312130, 38.035454>,  <27.841433, 37.484821, 37.914204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727083, 37.312130, 38.035454>,  <27.536501, 37.024311, 38.237537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727083, 37.312130, 38.035454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829557, -0.558275, -0.012783,
		-0.291245, -0.413011, -0.862901,
		0.476456, 0.719549, -0.505211,
		27.870020, 37.527996, 37.883892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123472, 36.688389, 37.909706>,  <27.536501, 37.024311, 38.237537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123472, 36.688389, 37.909706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200680, 37.080849, 37.906101>,  <28.247004, 37.316326, 37.903938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200680, 37.080849, 37.906101>,  <28.123472, 36.688389, 37.909706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200680, 37.080849, 37.906101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975470, -0.192875, -0.106100,
		-0.105840, 0.011684, -0.994315,
		0.193018, 0.981154, -0.009016,
		28.258585, 37.375195, 37.903397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559605, 36.849739, 37.313416>,  <28.123472, 36.688389, 37.909706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559605, 36.849739, 37.313416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658104, 37.155037, 37.552353>,  <28.717203, 37.338215, 37.695713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658104, 37.155037, 37.552353>,  <28.559605, 36.849739, 37.313416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658104, 37.155037, 37.552353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963829, -0.257679, -0.068084,
		0.101957, 0.592499, -0.799093,
		0.246249, 0.763248, 0.597339,
		28.731979, 37.384010, 37.731556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030157, 37.268188, 36.993412>,  <28.559605, 36.849739, 37.313416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030157, 37.268188, 36.993412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069715, 37.273743, 37.391411>,  <29.093451, 37.277077, 37.630211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069715, 37.273743, 37.391411>,  <29.030157, 37.268188, 36.993412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069715, 37.273743, 37.391411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946584, -0.309713, -0.089759,
		0.306918, 0.950729, -0.043776,
		0.098894, 0.013889, 0.995001,
		29.099384, 37.277908, 37.689911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617062, 37.761703, 37.149216>,  <29.030157, 37.268188, 36.993412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617062, 37.761703, 37.149216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575762, 37.495338, 37.444756>,  <29.550982, 37.335522, 37.622082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575762, 37.495338, 37.444756>,  <29.617062, 37.761703, 37.149216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575762, 37.495338, 37.444756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936440, -0.315479, -0.153472,
		0.335291, 0.676044, 0.656159,
		-0.103251, -0.665911, 0.738852,
		29.544786, 37.295567, 37.666412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226088, 37.862732, 37.534031>,  <29.617062, 37.761703, 37.149216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226088, 37.862732, 37.534031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062347, 37.500000, 37.574223>,  <29.964104, 37.282360, 37.598339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062347, 37.500000, 37.574223>,  <30.226088, 37.862732, 37.534031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062347, 37.500000, 37.574223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894949, -0.420510, -0.149120,
		0.177480, 0.028884, 0.983700,
		-0.409349, -0.906828, 0.100482,
		29.939543, 37.227951, 37.604366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763729, 37.498825, 37.631695>,  <30.226088, 37.862732, 37.534031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763729, 37.498825, 37.631695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067566, 37.325947, 37.826107>,  <31.249868, 37.222221, 37.942753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067566, 37.325947, 37.826107>,  <30.763729, 37.498825, 37.631695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067566, 37.325947, 37.826107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156152, -0.604238, -0.781353,
		0.631376, 0.669405, -0.391486,
		0.759593, -0.432196, 0.486030,
		31.295444, 37.196289, 37.971916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230038, 37.390900, 37.041309>,  <30.763729, 37.498825, 37.631695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230038, 37.390900, 37.041309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374847, 37.155251, 37.330273>,  <31.461733, 37.013863, 37.503651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374847, 37.155251, 37.330273>,  <31.230038, 37.390900, 37.041309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374847, 37.155251, 37.330273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070561, -0.790072, -0.608940,
		0.929495, 0.169476, -0.327593,
		0.362023, -0.589122, 0.722409,
		31.483454, 36.978516, 37.546997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469856, 36.896046, 36.643318>,  <31.230038, 37.390900, 37.041309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469856, 36.896046, 36.643318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459883, 36.741703, 37.012207>,  <31.453897, 36.649097, 37.233540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459883, 36.741703, 37.012207>,  <31.469856, 36.896046, 36.643318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459883, 36.741703, 37.012207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316624, -0.871970, -0.373387,
		0.948223, -0.301308, -0.100427,
		-0.024935, -0.385852, 0.922223,
		31.452402, 36.625946, 37.288876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865192, 36.790459, 36.154625>,  <31.469856, 36.896046, 36.643318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865192, 36.790459, 36.154625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791239, 36.927425, 35.786152>,  <30.746866, 37.009605, 35.565067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791239, 36.927425, 35.786152>,  <30.865192, 36.790459, 36.154625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791239, 36.927425, 35.786152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790213, 0.505478, 0.346491,
		0.584279, 0.791988, 0.177126,
		-0.184884, 0.342414, -0.921179,
		30.735773, 37.030151, 35.509800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082966, 36.067303, 36.159752>,  <30.865192, 36.790459, 36.154625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082966, 36.067303, 36.159752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364878, 36.350739, 36.145969>,  <31.534025, 36.520802, 36.137699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364878, 36.350739, 36.145969>,  <31.082966, 36.067303, 36.159752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364878, 36.350739, 36.145969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092469, -0.043605, 0.994760,
		0.703374, -0.704273, -0.096254,
		0.704780, 0.708589, -0.034453,
		31.576311, 36.563316, 36.135635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040716, 36.195454, 36.811794>,  <31.082966, 36.067303, 36.159752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040716, 36.195454, 36.811794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272125, 35.951920, 37.028912>,  <31.410971, 35.805798, 37.159184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272125, 35.951920, 37.028912>,  <31.040716, 36.195454, 36.811794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272125, 35.951920, 37.028912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110057, 0.717644, 0.687658,
		-0.808208, -0.338087, 0.482180,
		0.578522, -0.608838, 0.542797,
		31.445683, 35.769268, 37.191750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855503, 36.138210, 37.552612>,  <31.040716, 36.195454, 36.811794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855503, 36.138210, 37.552612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251839, 36.102203, 37.512337>,  <31.489639, 36.080601, 37.488171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251839, 36.102203, 37.512337>,  <30.855503, 36.138210, 37.552612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251839, 36.102203, 37.512337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130680, 0.827282, 0.546377,
		0.034117, -0.554529, 0.831465,
		0.990837, -0.090015, -0.100690,
		31.549089, 36.075199, 37.482128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189377, 36.061520, 38.202091>,  <30.855503, 36.138210, 37.552612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189377, 36.061520, 38.202091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437233, 36.216084, 37.928818>,  <31.585945, 36.308823, 37.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437233, 36.216084, 37.928818>,  <31.189377, 36.061520, 38.202091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437233, 36.216084, 37.928818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042562, 0.852595, 0.520836,
		0.783733, -0.351807, 0.511854,
		0.619637, 0.386411, -0.683181,
		31.623125, 36.332008, 37.723862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928537, 36.155571, 38.446499>,  <31.189377, 36.061520, 38.202091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928537, 36.155571, 38.446499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775557, 36.414669, 38.182938>,  <31.683769, 36.570129, 38.024799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775557, 36.414669, 38.182938>,  <31.928537, 36.155571, 38.446499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775557, 36.414669, 38.182938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162446, 0.749150, 0.642172,
		0.909584, 0.138562, -0.391736,
		-0.382450, 0.647746, -0.658907,
		31.660822, 36.608994, 37.985264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435345, 36.699112, 38.382450>,  <31.928537, 36.155571, 38.446499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435345, 36.699112, 38.382450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083668, 36.849922, 38.265923>,  <31.872660, 36.940407, 38.196007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083668, 36.849922, 38.265923>,  <32.435345, 36.699112, 38.382450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083668, 36.849922, 38.265923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181602, 0.830438, 0.526682,
		0.440493, 0.410153, -0.798586,
		-0.879196, 0.377025, -0.291318,
		31.819908, 36.963028, 38.178528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422058, 37.304924, 37.965366>,  <32.435345, 36.699112, 38.382450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422058, 37.304924, 37.965366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063557, 37.332130, 38.140690>,  <31.848457, 37.348454, 38.245884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063557, 37.332130, 38.140690>,  <32.422058, 37.304924, 37.965366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063557, 37.332130, 38.140690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169081, 0.965948, 0.195847,
		-0.410060, 0.249637, -0.877230,
		-0.896249, 0.068014, 0.438306,
		31.794682, 37.352535, 38.272182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629848, 37.865101, 37.465172>,  <32.422058, 37.304924, 37.965366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629848, 37.865101, 37.465172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395634, 38.141891, 37.296265>,  <32.255104, 38.307964, 37.194920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395634, 38.141891, 37.296265>,  <32.629848, 37.865101, 37.465172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395634, 38.141891, 37.296265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375908, -0.229734, -0.897728,
		-0.718216, -0.684390, -0.125601,
		-0.585541, 0.691978, -0.422266,
		32.219971, 38.349483, 37.169586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279839, 37.630581, 36.858391>,  <32.629848, 37.865101, 37.465172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279839, 37.630581, 36.858391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299259, 38.026482, 36.804661>,  <32.310913, 38.264023, 36.772423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299259, 38.026482, 36.804661>,  <32.279839, 37.630581, 36.858391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299259, 38.026482, 36.804661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411519, -0.142361, -0.900214,
		-0.910107, -0.011568, -0.414212,
		0.048554, 0.989747, -0.134324,
		32.313824, 38.323406, 36.764362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999023, 37.938866, 36.251095>,  <32.279839, 37.630581, 36.858391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999023, 37.938866, 36.251095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317631, 38.172546, 36.313412>,  <32.508797, 38.312756, 36.350803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317631, 38.172546, 36.313412>,  <31.999023, 37.938866, 36.251095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317631, 38.172546, 36.313412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282508, -0.131797, -0.950168,
		-0.534553, 0.800839, -0.270020,
		0.796519, 0.584198, 0.155791,
		32.556587, 38.347805, 36.360149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054352, 38.599644, 35.740837>,  <31.999023, 37.938866, 36.251095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054352, 38.599644, 35.740837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404812, 38.470535, 35.884041>,  <32.615089, 38.393070, 35.969963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404812, 38.470535, 35.884041>,  <32.054352, 38.599644, 35.740837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404812, 38.470535, 35.884041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349938, -0.084881, -0.932920,
		0.331512, 0.942662, 0.038583,
		0.876153, -0.322775, 0.358012,
		32.667656, 38.373703, 35.991444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374752, 39.011482, 35.382477>,  <32.054352, 38.599644, 35.740837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374752, 39.011482, 35.382477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622448, 38.720989, 35.501892>,  <32.771065, 38.546692, 35.573544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622448, 38.720989, 35.501892>,  <32.374752, 39.011482, 35.382477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622448, 38.720989, 35.501892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442445, 0.008626, -0.896754,
		0.648676, 0.687396, 0.326659,
		0.619243, -0.726231, 0.298540,
		32.808220, 38.503120, 35.591454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042629, 39.313797, 35.178814>,  <32.374752, 39.011482, 35.382477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042629, 39.313797, 35.178814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082809, 38.917526, 35.215626>,  <33.106918, 38.679764, 35.237713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082809, 38.917526, 35.215626>,  <33.042629, 39.313797, 35.178814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082809, 38.917526, 35.215626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493086, -0.030766, -0.869436,
		0.864161, 0.132717, 0.485398,
		0.100455, -0.990676, 0.092028,
		33.112946, 38.620323, 35.243233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901108, 39.163971, 35.057728>,  <33.042629, 39.313797, 35.178814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901108, 39.163971, 35.057728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681015, 38.837864, 34.985523>,  <33.548958, 38.642200, 34.942200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681015, 38.837864, 34.985523>,  <33.901108, 39.163971, 35.057728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681015, 38.837864, 34.985523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412725, -0.077614, -0.907543,
		0.725879, -0.573861, 0.379187,
		-0.550234, -0.815266, -0.180508,
		33.515945, 38.593285, 34.931370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343586, 38.837502, 34.710194>,  <33.901108, 39.163971, 35.057728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343586, 38.837502, 34.710194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000984, 38.647285, 34.629929>,  <33.795425, 38.533157, 34.581768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000984, 38.647285, 34.629929>,  <34.343586, 38.837502, 34.710194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000984, 38.647285, 34.629929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361672, -0.275588, -0.890643,
		0.368235, -0.835412, 0.408031,
		-0.856503, -0.475539, -0.200664,
		33.744034, 38.504623, 34.569729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586445, 38.320210, 34.341209>,  <34.343586, 38.837502, 34.710194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586445, 38.320210, 34.341209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193806, 38.331131, 34.265610>,  <33.958221, 38.337685, 34.220249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193806, 38.331131, 34.265610>,  <34.586445, 38.320210, 34.341209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193806, 38.331131, 34.265610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168906, -0.337574, -0.926021,
		-0.089088, -0.940903, 0.326749,
		-0.981598, 0.027307, -0.188998,
		33.899326, 38.339325, 34.208912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266029, 37.680145, 34.184479>,  <34.586445, 38.320210, 34.341209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266029, 37.680145, 34.184479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062660, 37.967587, 33.994698>,  <33.940639, 38.140053, 33.880829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062660, 37.967587, 33.994698>,  <34.266029, 37.680145, 34.184479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062660, 37.967587, 33.994698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191807, -0.442635, -0.875948,
		-0.839474, -0.536356, 0.087212,
		-0.508423, 0.718607, -0.474458,
		33.910133, 38.183170, 33.852360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138699, 37.381699, 33.597027>,  <34.266029, 37.680145, 34.184479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138699, 37.381699, 33.597027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063339, 37.767441, 33.522705>,  <34.018124, 37.998886, 33.478111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063339, 37.767441, 33.522705>,  <34.138699, 37.381699, 33.597027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063339, 37.767441, 33.522705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144129, -0.159992, -0.976540,
		-0.971460, -0.210755, -0.108850,
		-0.188396, 0.964357, -0.185801,
		34.006821, 38.056747, 33.466965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639874, 37.316639, 33.015999>,  <34.138699, 37.381699, 33.597027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639874, 37.316639, 33.015999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783386, 37.689739, 33.001808>,  <33.869492, 37.913597, 32.993294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783386, 37.689739, 33.001808>,  <33.639874, 37.316639, 33.015999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783386, 37.689739, 33.001808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156586, -0.097607, -0.982829,
		-0.920195, 0.347064, -0.181075,
		0.358779, 0.932748, -0.035472,
		33.891022, 37.969563, 32.991165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494171, 37.600182, 32.337852>,  <33.639874, 37.316639, 33.015999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494171, 37.600182, 32.337852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778866, 37.866535, 32.427319>,  <33.949684, 38.026348, 32.480999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778866, 37.866535, 32.427319>,  <33.494171, 37.600182, 32.337852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778866, 37.866535, 32.427319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347448, -0.056994, -0.935965,
		-0.610499, 0.743873, -0.271926,
		0.711737, 0.665887, 0.223663,
		33.992386, 38.066299, 32.494419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398975, 38.146454, 31.907305>,  <33.494171, 37.600182, 32.337852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398975, 38.146454, 31.907305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762112, 38.230682, 32.052345>,  <33.979996, 38.281219, 32.139370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762112, 38.230682, 32.052345>,  <33.398975, 38.146454, 31.907305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762112, 38.230682, 32.052345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278334, 0.344136, -0.896716,
		-0.313607, 0.915002, 0.253813,
		0.907844, 0.210572, 0.362600,
		34.034466, 38.293854, 32.161125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558273, 38.884632, 31.874411>,  <33.398975, 38.146454, 31.907305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558273, 38.884632, 31.874411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894993, 38.669601, 31.854860>,  <34.097023, 38.540585, 31.843130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894993, 38.669601, 31.854860>,  <33.558273, 38.884632, 31.874411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894993, 38.669601, 31.854860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219509, 0.423638, -0.878832,
		0.493142, 0.729072, 0.474620,
		0.841800, -0.537572, -0.048876,
		34.147533, 38.508331, 31.840197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089626, 39.339794, 31.635717>,  <33.558273, 38.884632, 31.874411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089626, 39.339794, 31.635717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270000, 38.986835, 31.581989>,  <34.378223, 38.775063, 31.549753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270000, 38.986835, 31.581989>,  <34.089626, 39.339794, 31.635717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270000, 38.986835, 31.581989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273408, 0.279811, -0.920301,
		0.849652, 0.378269, 0.367429,
		0.450932, -0.882394, -0.134320,
		34.405281, 38.722118, 31.541693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785355, 39.463371, 31.410473>,  <34.089626, 39.339794, 31.635717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785355, 39.463371, 31.410473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715973, 39.084892, 31.301205>,  <34.674343, 38.857803, 31.235643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715973, 39.084892, 31.301205>,  <34.785355, 39.463371, 31.410473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715973, 39.084892, 31.301205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359624, 0.197370, -0.911985,
		0.916834, -0.256426, 0.306041,
		-0.173453, -0.946198, -0.273172,
		34.663937, 38.801033, 31.219254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396503, 39.296307, 31.016987>,  <34.785355, 39.463371, 31.410473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396503, 39.296307, 31.016987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098152, 39.049892, 30.915663>,  <34.919144, 38.902042, 30.854868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098152, 39.049892, 30.915663>,  <35.396503, 39.296307, 31.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098152, 39.049892, 30.915663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225945, 0.123750, -0.966248,
		0.626594, -0.777934, 0.046889,
		-0.745874, -0.616039, -0.253311,
		34.874390, 38.865082, 30.839670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661526, 38.831474, 30.497898>,  <35.396503, 39.296307, 31.016987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661526, 38.831474, 30.497898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268291, 38.791122, 30.436758>,  <35.032352, 38.766911, 30.400074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268291, 38.791122, 30.436758>,  <35.661526, 38.831474, 30.497898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268291, 38.791122, 30.436758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147630, 0.057392, -0.987376,
		0.108384, -0.993241, -0.041527,
		-0.983086, -0.100885, -0.152852,
		34.973366, 38.760857, 30.390902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654484, 38.290558, 30.052097>,  <35.661526, 38.831474, 30.497898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654484, 38.290558, 30.052097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308273, 38.489426, 30.027832>,  <35.100548, 38.608746, 30.013273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308273, 38.489426, 30.027832>,  <35.654484, 38.290558, 30.052097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308273, 38.489426, 30.027832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097097, 0.047733, -0.994130,
		-0.491358, -0.866338, -0.089589,
		-0.865528, 0.497172, -0.060665,
		35.048615, 38.638577, 30.009632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398987, 37.998989, 29.491728>,  <35.654484, 38.290558, 30.052097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398987, 37.998989, 29.491728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168694, 38.324097, 29.527353>,  <35.030518, 38.519161, 29.548729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168694, 38.324097, 29.527353>,  <35.398987, 37.998989, 29.491728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168694, 38.324097, 29.527353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308279, 0.316669, -0.897042,
		-0.757293, -0.489004, -0.432878,
		-0.575736, 0.812770, 0.089062,
		34.995972, 38.567928, 29.554071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913860, 38.013283, 28.912163>,  <35.398987, 37.998989, 29.491728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913860, 38.013283, 28.912163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966621, 38.384995, 29.050173>,  <34.998280, 38.608021, 29.132978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966621, 38.384995, 29.050173>,  <34.913860, 38.013283, 28.912163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966621, 38.384995, 29.050173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219173, 0.312109, -0.924419,
		-0.966729, 0.197552, -0.162505,
		0.131901, 0.929280, 0.345023,
		35.006191, 38.663780, 29.153679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787109, 38.500206, 28.395647>,  <34.913860, 38.013283, 28.912163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787109, 38.500206, 28.395647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973373, 38.762543, 28.633314>,  <35.085133, 38.919945, 28.775915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973373, 38.762543, 28.633314>,  <34.787109, 38.500206, 28.395647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973373, 38.762543, 28.633314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283594, 0.525406, -0.802199,
		-0.838291, 0.542057, 0.058671,
		0.465663, 0.655838, 0.594167,
		35.113071, 38.959293, 28.811563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594669, 39.148109, 28.160341>,  <34.787109, 38.500206, 28.395647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594669, 39.148109, 28.160341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949970, 39.156425, 28.343899>,  <35.163151, 39.161415, 28.454033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949970, 39.156425, 28.343899>,  <34.594669, 39.148109, 28.160341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949970, 39.156425, 28.343899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416046, 0.387076, -0.822847,
		-0.194731, 0.921813, 0.335171,
		0.888248, 0.020788, 0.458893,
		35.216446, 39.162663, 28.481567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894142, 39.877525, 28.013439>,  <34.594669, 39.148109, 28.160341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894142, 39.877525, 28.013439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180676, 39.611053, 28.096453>,  <35.352596, 39.451172, 28.146261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180676, 39.611053, 28.096453>,  <34.894142, 39.877525, 28.013439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180676, 39.611053, 28.096453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528407, 0.323684, -0.784867,
		0.455683, 0.671892, 0.583878,
		0.716338, -0.666176, 0.207535,
		35.395576, 39.411201, 28.158712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550533, 40.345062, 28.011293>,  <34.894142, 39.877525, 28.013439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550533, 40.345062, 28.011293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644974, 39.961262, 27.949833>,  <35.701637, 39.730980, 27.912956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644974, 39.961262, 27.949833>,  <35.550533, 40.345062, 28.011293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644974, 39.961262, 27.949833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516429, 0.257845, -0.816589,
		0.823138, 0.113451, 0.556393,
		0.236106, -0.959503, -0.153652,
		35.715805, 39.673412, 27.903738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230511, 40.369865, 27.677492>,  <35.550533, 40.345062, 28.011293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230511, 40.369865, 27.677492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125889, 39.991486, 27.600794>,  <36.063118, 39.764458, 27.554775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125889, 39.991486, 27.600794>,  <36.230511, 40.369865, 27.677492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125889, 39.991486, 27.600794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501457, 0.036567, -0.864409,
		0.824701, -0.322240, 0.464790,
		-0.261551, -0.945952, -0.191746,
		36.047424, 39.707699, 27.543270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785717, 40.022583, 27.554640>,  <36.230511, 40.369865, 27.677492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785717, 40.022583, 27.554640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508804, 39.790318, 27.383263>,  <36.342655, 39.650959, 27.280436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508804, 39.790318, 27.383263>,  <36.785717, 40.022583, 27.554640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508804, 39.790318, 27.383263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560905, -0.059452, -0.825743,
		0.454010, -0.811967, 0.366857,
		-0.692287, -0.580667, -0.428445,
		36.301117, 39.616116, 27.254728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127163, 39.655476, 27.090467>,  <36.785717, 40.022583, 27.554640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127163, 39.655476, 27.090467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756428, 39.608124, 26.947941>,  <36.533985, 39.579712, 26.862425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756428, 39.608124, 26.947941>,  <37.127163, 39.655476, 27.090467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756428, 39.608124, 26.947941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361556, -0.025491, -0.932002,
		0.101251, -0.992641, 0.066428,
		-0.926836, -0.118383, -0.356314,
		36.478378, 39.572609, 26.841047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199429, 39.222122, 26.512848>,  <37.127163, 39.655476, 27.090467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199429, 39.222122, 26.512848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829556, 39.360062, 26.448298>,  <36.607632, 39.442825, 26.409567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829556, 39.360062, 26.448298>,  <37.199429, 39.222122, 26.512848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829556, 39.360062, 26.448298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206437, 0.097962, -0.973544,
		-0.319921, -0.933531, -0.161774,
		-0.924681, 0.344853, -0.161375,
		36.552151, 39.463516, 26.399885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868294, 38.762596, 25.816841>,  <37.199429, 39.222122, 26.512848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868294, 38.762596, 25.816841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656406, 39.096386, 25.877579>,  <36.529274, 39.296658, 25.914022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656406, 39.096386, 25.877579>,  <36.868294, 38.762596, 25.816841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656406, 39.096386, 25.877579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132725, 0.258374, -0.956884,
		-0.837725, -0.486725, -0.247621,
		-0.529718, 0.834471, 0.151845,
		36.497490, 39.346725, 25.923132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512615, 38.852436, 25.125311>,  <36.868294, 38.762596, 25.816841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512615, 38.852436, 25.125311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503838, 39.209667, 25.305058>,  <36.498569, 39.424007, 25.412905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503838, 39.209667, 25.305058>,  <36.512615, 38.852436, 25.125311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503838, 39.209667, 25.305058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069989, 0.449743, -0.890411,
		-0.997306, 0.011912, -0.072374,
		-0.021943, 0.893078, 0.449366,
		36.497253, 39.477592, 25.439867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153690, 39.272575, 24.647154>,  <36.512615, 38.852436, 25.125311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153690, 39.272575, 24.647154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361111, 39.504223, 24.898783>,  <36.485561, 39.643211, 25.049759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361111, 39.504223, 24.898783>,  <36.153690, 39.272575, 24.647154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361111, 39.504223, 24.898783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407713, 0.479222, -0.777250,
		-0.751584, 0.659521, 0.012385,
		0.518547, 0.579119, 0.629070,
		36.516674, 39.677959, 25.087503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013050, 39.993893, 24.474779>,  <36.153690, 39.272575, 24.647154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013050, 39.993893, 24.474779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379414, 39.956657, 24.630957>,  <36.599232, 39.934319, 24.724663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379414, 39.956657, 24.630957>,  <36.013050, 39.993893, 24.474779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379414, 39.956657, 24.630957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371316, 0.565910, -0.736118,
		-0.152437, 0.819195, 0.552885,
		0.915908, -0.093083, 0.390446,
		36.654186, 39.928734, 24.748091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270927, 40.539547, 24.253471>,  <36.013050, 39.993893, 24.474779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270927, 40.539547, 24.253471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591221, 40.322609, 24.355209>,  <36.783398, 40.192448, 24.416252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591221, 40.322609, 24.355209>,  <36.270927, 40.539547, 24.253471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591221, 40.322609, 24.355209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495396, 0.360850, -0.790171,
		0.336761, 0.758719, 0.557618,
		0.800734, -0.542341, 0.254347,
		36.831440, 40.159908, 24.431513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906269, 40.959095, 24.098686>,  <36.270927, 40.539547, 24.253471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906269, 40.959095, 24.098686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082397, 40.601505, 24.131981>,  <37.188076, 40.386951, 24.151957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082397, 40.601505, 24.131981>,  <36.906269, 40.959095, 24.098686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082397, 40.601505, 24.131981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785459, 0.338643, -0.518050,
		0.434936, 0.293487, 0.851291,
		0.440325, -0.893972, 0.083234,
		37.214497, 40.333313, 24.156952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530289, 40.999790, 24.348862>,  <36.906269, 40.959095, 24.098686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530289, 40.999790, 24.348862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544350, 40.660389, 24.137653>,  <37.552788, 40.456749, 24.010929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544350, 40.660389, 24.137653>,  <37.530289, 40.999790, 24.348862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544350, 40.660389, 24.137653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702965, 0.396540, -0.590421,
		0.710356, -0.350425, 0.610407,
		0.035152, -0.848504, -0.528021,
		37.554893, 40.405838, 23.979248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189022, 40.915543, 24.332027>,  <37.530289, 40.999790, 24.348862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189022, 40.915543, 24.332027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034195, 40.687294, 24.042320>,  <37.941299, 40.550346, 23.868496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034195, 40.687294, 24.042320>,  <38.189022, 40.915543, 24.332027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034195, 40.687294, 24.042320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750626, 0.261169, -0.606920,
		0.535479, -0.778576, 0.327233,
		-0.387070, -0.570622, -0.724270,
		37.918076, 40.516106, 23.825039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776737, 40.645088, 23.862858>,  <38.189022, 40.915543, 24.332027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776737, 40.645088, 23.862858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468166, 40.548298, 23.627451>,  <38.283024, 40.490223, 23.486208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468166, 40.548298, 23.627451>,  <38.776737, 40.645088, 23.862858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468166, 40.548298, 23.627451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590831, 0.071026, -0.803663,
		0.236267, -0.967679, 0.088176,
		-0.771425, -0.241976, -0.588516,
		38.236740, 40.475704, 23.450895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096386, 40.239292, 23.344814>,  <38.776737, 40.645088, 23.862858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096386, 40.239292, 23.344814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747147, 40.378658, 23.208395>,  <38.537605, 40.462276, 23.126543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747147, 40.378658, 23.208395>,  <39.096386, 40.239292, 23.344814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747147, 40.378658, 23.208395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450525, 0.309164, -0.837523,
		-0.186365, -0.884887, -0.426899,
		-0.873095, 0.348413, -0.341046,
		38.485218, 40.483181, 23.106081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071404, 40.042786, 22.519632>,  <39.096386, 40.239292, 23.344814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071404, 40.042786, 22.519632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820763, 40.342785, 22.604361>,  <38.670380, 40.522785, 22.655197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820763, 40.342785, 22.604361>,  <39.071404, 40.042786, 22.519632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820763, 40.342785, 22.604361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249417, 0.450487, -0.857235,
		-0.738351, -0.484312, -0.469339,
		-0.626601, 0.750002, 0.211822,
		38.632782, 40.567787, 22.667908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727806, 40.141865, 21.878675>,  <39.071404, 40.042786, 22.519632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727806, 40.141865, 21.878675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687042, 40.485107, 22.079981>,  <38.662582, 40.691051, 22.200764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687042, 40.485107, 22.079981>,  <38.727806, 40.141865, 21.878675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687042, 40.485107, 22.079981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218360, 0.512854, -0.830241,
		-0.970533, 0.025282, -0.239641,
		-0.101911, 0.858104, 0.503262,
		38.656467, 40.742538, 22.230959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379066, 40.561550, 21.456093>,  <38.727806, 40.141865, 21.878675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379066, 40.561550, 21.456093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538513, 40.818180, 21.718233>,  <38.634182, 40.972160, 21.875517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538513, 40.818180, 21.718233>,  <38.379066, 40.561550, 21.456093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538513, 40.818180, 21.718233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197874, 0.637580, -0.744539,
		-0.895516, 0.426463, 0.127199,
		0.398618, 0.641577, 0.655349,
		38.658100, 41.010654, 21.914839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190216, 41.149323, 21.113932>,  <38.379066, 40.561550, 21.456093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190216, 41.149323, 21.113932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473938, 41.265648, 21.370777>,  <38.644173, 41.335442, 21.524885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473938, 41.265648, 21.370777>,  <38.190216, 41.149323, 21.113932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473938, 41.265648, 21.370777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282806, 0.716999, -0.637129,
		-0.645680, 0.633514, 0.426330,
		0.709308, 0.290813, 0.642114,
		38.686729, 41.352890, 21.563412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045544, 41.866566, 21.517876>,  <38.190216, 41.149323, 21.113932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045544, 41.866566, 21.517876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433624, 41.784946, 21.465605>,  <38.666473, 41.735973, 21.434242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433624, 41.784946, 21.465605>,  <38.045544, 41.866566, 21.517876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433624, 41.784946, 21.465605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077112, 0.771269, -0.631822,
		0.229712, 0.602916, 0.764019,
		0.970199, -0.204052, -0.130678,
		38.724686, 41.723732, 21.426401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117607, 42.028473, 20.728764>,  <38.045544, 41.866566, 21.517876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117607, 42.028473, 20.728764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909496, 41.698383, 20.640837>,  <37.784630, 41.500328, 20.588081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909496, 41.698383, 20.640837>,  <38.117607, 42.028473, 20.728764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909496, 41.698383, 20.640837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275359, 0.405754, -0.871516,
		0.808387, -0.392901, -0.438337,
		-0.520277, -0.825223, -0.219818,
		37.753414, 41.450817, 20.574892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797432, 42.030746, 20.327555>,  <38.117607, 42.028473, 20.728764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797432, 42.030746, 20.327555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043800, 41.816563, 20.096409>,  <39.191620, 41.688053, 19.957722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043800, 41.816563, 20.096409>,  <38.797432, 42.030746, 20.327555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043800, 41.816563, 20.096409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738909, 0.138243, 0.659471,
		-0.273232, -0.833172, 0.480800,
		0.615920, -0.535456, -0.577866,
		39.228577, 41.655926, 19.923050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443115, 42.078663, 20.648607>,  <38.797432, 42.030746, 20.327555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443115, 42.078663, 20.648607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569939, 41.812843, 20.377949>,  <39.646034, 41.653351, 20.215553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569939, 41.812843, 20.377949>,  <39.443115, 42.078663, 20.648607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569939, 41.812843, 20.377949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945876, 0.169496, 0.276751,
		-0.069226, -0.727768, 0.682320,
		0.317061, -0.664548, -0.676645,
		39.665058, 41.613480, 20.174955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084057, 41.916126, 20.942936>,  <39.443115, 42.078663, 20.648607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084057, 41.916126, 20.942936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069336, 41.789852, 20.563677>,  <40.060501, 41.714088, 20.336121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069336, 41.789852, 20.563677>,  <40.084057, 41.916126, 20.942936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069336, 41.789852, 20.563677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965291, 0.234264, -0.115470,
		0.258569, -0.919491, 0.296105,
		-0.036807, -0.315684, -0.948150,
		40.058292, 41.695148, 20.279232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296242, 42.544792, 20.477322>,  <40.084057, 41.916126, 20.942936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296242, 42.544792, 20.477322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671532, 42.653587, 20.391764>,  <40.896706, 42.718864, 20.340429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671532, 42.653587, 20.391764>,  <40.296242, 42.544792, 20.477322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671532, 42.653587, 20.391764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216769, 0.019811, 0.976022,
		0.269706, -0.962096, -0.040372,
		0.938227, 0.271991, -0.213895,
		40.952999, 42.735184, 20.327595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835453, 41.968494, 20.648058>,  <40.296242, 42.544792, 20.477322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835453, 41.968494, 20.648058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973003, 42.343189, 20.674185>,  <41.055534, 42.568008, 20.689861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973003, 42.343189, 20.674185>,  <40.835453, 41.968494, 20.648058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973003, 42.343189, 20.674185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235937, -0.153522, 0.959565,
		0.908889, -0.314565, -0.273805,
		0.343880, 0.936739, 0.065317,
		41.076168, 42.624210, 20.693781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479164, 41.979973, 21.056589>,  <40.835453, 41.968494, 20.648058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479164, 41.979973, 21.056589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288853, 42.329632, 21.095577>,  <41.174667, 42.539429, 21.118969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288853, 42.329632, 21.095577>,  <41.479164, 41.979973, 21.056589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288853, 42.329632, 21.095577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071214, -0.072167, 0.994847,
		0.876677, 0.480269, -0.027916,
		-0.475780, 0.874147, 0.097469,
		41.146118, 42.591877, 21.124819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856743, 42.491867, 21.415987>,  <41.479164, 41.979973, 21.056589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856743, 42.491867, 21.415987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470406, 42.579029, 21.472086>,  <41.238605, 42.631325, 21.505745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470406, 42.579029, 21.472086>,  <41.856743, 42.491867, 21.415987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470406, 42.579029, 21.472086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157839, 0.065451, 0.985293,
		0.205522, 0.973773, -0.097609,
		-0.965840, 0.217906, 0.140248,
		41.180653, 42.644402, 21.514160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740398, 43.012630, 21.912033>,  <41.856743, 42.491867, 21.415987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740398, 43.012630, 21.912033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408600, 42.790260, 21.890587>,  <41.209518, 42.656837, 21.877720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408600, 42.790260, 21.890587>,  <41.740398, 43.012630, 21.912033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408600, 42.790260, 21.890587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004988, -0.088621, 0.996053,
		-0.558484, 0.826493, 0.070738,
		-0.829500, -0.555927, -0.053616,
		41.159748, 42.623482, 21.874502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416996, 43.354370, 22.352959>,  <41.740398, 43.012630, 21.912033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416996, 43.354370, 22.352959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216564, 43.008598, 22.336533>,  <41.096306, 42.801136, 22.326677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216564, 43.008598, 22.336533>,  <41.416996, 43.354370, 22.352959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216564, 43.008598, 22.336533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048738, -0.075562, 0.995949,
		-0.864030, 0.497045, 0.079992,
		-0.501076, -0.864428, -0.041063,
		41.066242, 42.749271, 22.324213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746029, 43.544788, 22.581696>,  <41.416996, 43.354370, 22.352959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746029, 43.544788, 22.581696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771584, 43.147038, 22.615475>,  <40.786919, 42.908386, 22.635742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771584, 43.147038, 22.615475>,  <40.746029, 43.544788, 22.581696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771584, 43.147038, 22.615475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263670, 0.064794, 0.962434,
		-0.962495, -0.083757, -0.258048,
		0.063891, -0.994377, 0.084448,
		40.790752, 42.848724, 22.640810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253441, 43.429958, 23.155148>,  <40.746029, 43.544788, 22.581696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253441, 43.429958, 23.155148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433723, 43.073868, 23.128723>,  <40.541893, 42.860214, 23.112869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433723, 43.073868, 23.128723>,  <40.253441, 43.429958, 23.155148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433723, 43.073868, 23.128723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353564, -0.245974, 0.902490,
		-0.819668, -0.383403, -0.425614,
		0.450708, -0.890224, -0.066059,
		40.568935, 42.806801, 23.108906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798149, 42.934425, 23.204540>,  <40.253441, 43.429958, 23.155148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798149, 42.934425, 23.204540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152546, 42.801426, 23.333828>,  <40.365185, 42.721626, 23.411402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152546, 42.801426, 23.333828>,  <39.798149, 42.934425, 23.204540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152546, 42.801426, 23.333828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394619, -0.174581, 0.902107,
		-0.243525, -0.926803, -0.285889,
		0.885986, -0.332503, 0.323219,
		40.418343, 42.701675, 23.430794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610020, 42.420883, 23.690575>,  <39.798149, 42.934425, 23.204540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610020, 42.420883, 23.690575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004002, 42.446415, 23.754820>,  <40.240391, 42.461735, 23.793367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004002, 42.446415, 23.754820>,  <39.610020, 42.420883, 23.690575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004002, 42.446415, 23.754820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139963, -0.250627, 0.957913,
		0.101393, -0.965977, -0.237922,
		0.984951, 0.063826, 0.160612,
		40.299488, 42.465561, 23.803003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695160, 41.857559, 24.068598>,  <39.610020, 42.420883, 23.690575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695160, 41.857559, 24.068598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002197, 42.098946, 24.154984>,  <40.186420, 42.243778, 24.206814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002197, 42.098946, 24.154984>,  <39.695160, 41.857559, 24.068598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002197, 42.098946, 24.154984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095960, -0.441349, 0.892190,
		0.633719, -0.664111, -0.396683,
		0.767589, 0.603463, 0.215963,
		40.232475, 42.279984, 24.219772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251972, 41.393471, 24.236057>,  <39.695160, 41.857559, 24.068598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251972, 41.393471, 24.236057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337986, 41.747135, 24.401960>,  <40.389595, 41.959332, 24.501501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337986, 41.747135, 24.401960>,  <40.251972, 41.393471, 24.236057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337986, 41.747135, 24.401960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006363, -0.423414, 0.905914,
		0.976585, -0.197443, -0.085424,
		0.215036, 0.884159, 0.414757,
		40.402496, 42.012383, 24.526388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872650, 41.379105, 24.691877>,  <40.251972, 41.393471, 24.236057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872650, 41.379105, 24.691877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673180, 41.693707, 24.837605>,  <40.553497, 41.882469, 24.925041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673180, 41.693707, 24.837605>,  <40.872650, 41.379105, 24.691877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673180, 41.693707, 24.837605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007730, -0.424329, 0.905475,
		0.866753, 0.448724, 0.217683,
		-0.498678, 0.786506, 0.364320,
		40.523575, 41.929657, 24.946901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064800, 41.510452, 25.450916>,  <40.872650, 41.379105, 24.691877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064800, 41.510452, 25.450916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726597, 41.723980, 25.445936>,  <40.523674, 41.852097, 25.442949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726597, 41.723980, 25.445936>,  <41.064800, 41.510452, 25.450916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726597, 41.723980, 25.445936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277365, -0.419155, 0.864510,
		0.456272, 0.734403, 0.502461,
		-0.845508, 0.533817, -0.012449,
		40.472946, 41.884125, 25.442202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951958, 41.854233, 26.105774>,  <41.064800, 41.510452, 25.450916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951958, 41.854233, 26.105774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586605, 41.856590, 25.942953>,  <40.367393, 41.858006, 25.845261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586605, 41.856590, 25.942953>,  <40.951958, 41.854233, 26.105774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586605, 41.856590, 25.942953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400674, -0.189926, 0.896320,
		-0.072028, 0.981781, 0.175836,
		-0.913385, 0.005893, -0.407054,
		40.312588, 41.858356, 25.820837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454567, 42.206635, 26.582104>,  <40.951958, 41.854233, 26.105774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454567, 42.206635, 26.582104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204342, 41.988987, 26.358459>,  <40.054207, 41.858398, 26.224274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204342, 41.988987, 26.358459>,  <40.454567, 42.206635, 26.582104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204342, 41.988987, 26.358459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666202, -0.000392, 0.745771,
		-0.406007, 0.839009, -0.362247,
		-0.625566, -0.544118, -0.559108,
		40.016670, 41.825752, 26.190727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778969, 42.442284, 26.754086>,  <40.454567, 42.206635, 26.582104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778969, 42.442284, 26.754086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693848, 42.096008, 26.572845>,  <39.642776, 41.888245, 26.464102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693848, 42.096008, 26.572845>,  <39.778969, 42.442284, 26.754086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693848, 42.096008, 26.572845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711482, -0.180555, 0.679112,
		-0.669709, 0.466887, -0.577500,
		-0.212798, -0.865688, -0.453101,
		39.630009, 41.836304, 26.436914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152679, 42.418461, 26.760351>,  <39.778969, 42.442284, 26.754086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152679, 42.418461, 26.760351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192848, 42.031528, 26.667244>,  <39.216949, 41.799370, 26.611380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192848, 42.031528, 26.667244>,  <39.152679, 42.418461, 26.760351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192848, 42.031528, 26.667244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720793, -0.232001, 0.653171,
		-0.685837, 0.102185, -0.720545,
		0.100423, -0.967333, -0.232769,
		39.222977, 41.741329, 26.597414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419460, 42.208702, 26.653643>,  <39.152679, 42.418461, 26.760351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419460, 42.208702, 26.653643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648582, 41.897671, 26.757389>,  <38.786057, 41.711052, 26.819637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648582, 41.897671, 26.757389>,  <38.419460, 42.208702, 26.653643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648582, 41.897671, 26.757389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606471, -0.189163, 0.772276,
		-0.551440, -0.599663, -0.579930,
		0.572806, -0.777575, 0.259366,
		38.820423, 41.664398, 26.835199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961632, 41.586910, 26.745197>,  <38.419460, 42.208702, 26.653643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961632, 41.586910, 26.745197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293110, 41.482174, 26.943069>,  <38.491997, 41.419331, 27.061792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293110, 41.482174, 26.943069>,  <37.961632, 41.586910, 26.745197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293110, 41.482174, 26.943069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559450, -0.360756, 0.746237,
		-0.016935, -0.895150, -0.445442,
		0.828691, -0.261841, 0.494683,
		38.541718, 41.403622, 27.091475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823635, 40.961689, 26.988953>,  <37.961632, 41.586910, 26.745197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823635, 40.961689, 26.988953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113289, 41.094486, 27.230747>,  <38.287083, 41.174164, 27.375824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113289, 41.094486, 27.230747>,  <37.823635, 40.961689, 26.988953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113289, 41.094486, 27.230747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386435, -0.530657, 0.754368,
		0.571220, -0.779862, -0.255976,
		0.724138, 0.331992, 0.604488,
		38.330532, 41.194084, 27.412094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895054, 40.369213, 27.383768>,  <37.823635, 40.961689, 26.988953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895054, 40.369213, 27.383768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095791, 40.649403, 27.586742>,  <38.216232, 40.817516, 27.708527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095791, 40.649403, 27.586742>,  <37.895054, 40.369213, 27.383768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095791, 40.649403, 27.586742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403768, -0.329105, 0.853616,
		0.764933, -0.633270, 0.117668,
		0.501845, 0.700470, 0.507438,
		38.246346, 40.859543, 27.738974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202610, 40.039700, 27.982822>,  <37.895054, 40.369213, 27.383768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202610, 40.039700, 27.982822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198620, 40.428196, 28.077984>,  <38.196224, 40.661293, 28.135080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198620, 40.428196, 28.077984>,  <38.202610, 40.039700, 27.982822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198620, 40.428196, 28.077984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297304, -0.230036, 0.926657,
		0.954731, -0.061483, 0.291048,
		-0.009978, 0.971238, 0.237902,
		38.195625, 40.719566, 28.149355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543858, 40.087288, 28.565489>,  <38.202610, 40.039700, 27.982822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543858, 40.087288, 28.565489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327972, 40.424026, 28.566113>,  <38.198441, 40.626072, 28.566486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327972, 40.424026, 28.566113>,  <38.543858, 40.087288, 28.565489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327972, 40.424026, 28.566113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298711, -0.193236, 0.934576,
		0.787073, 0.503934, 0.355761,
		-0.539711, 0.841849, 0.001560,
		38.166058, 40.676582, 28.566580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549328, 40.305954, 29.204615>,  <38.543858, 40.087288, 28.565489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549328, 40.305954, 29.204615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239174, 40.503029, 29.046604>,  <38.053082, 40.621273, 28.951797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239174, 40.503029, 29.046604>,  <38.549328, 40.305954, 29.204615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239174, 40.503029, 29.046604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518589, -0.139839, 0.843511,
		0.360345, 0.858899, 0.363929,
		-0.775382, 0.492684, -0.395026,
		38.006557, 40.650833, 28.928097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449421, 40.869106, 29.607307>,  <38.549328, 40.305954, 29.204615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449421, 40.869106, 29.607307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105534, 40.799076, 29.415379>,  <37.899200, 40.757057, 29.300220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105534, 40.799076, 29.415379>,  <38.449421, 40.869106, 29.607307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105534, 40.799076, 29.415379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497098, 0.070936, 0.864790,
		-0.117367, 0.981996, -0.148014,
		-0.859720, -0.175075, -0.479823,
		37.847618, 40.746555, 29.271431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056431, 41.368782, 29.894178>,  <38.449421, 40.869106, 29.607307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056431, 41.368782, 29.894178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794220, 41.105854, 29.745472>,  <37.636894, 40.948097, 29.656248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794220, 41.105854, 29.745472>,  <38.056431, 41.368782, 29.894178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794220, 41.105854, 29.745472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463875, -0.037978, 0.885086,
		-0.595907, 0.752650, -0.280021,
		-0.655526, -0.657324, -0.371767,
		37.597561, 40.908657, 29.633942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322193, 41.701149, 30.091751>,  <38.056431, 41.368782, 29.894178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322193, 41.701149, 30.091751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302872, 41.304165, 30.046686>,  <37.291279, 41.065975, 30.019648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302872, 41.304165, 30.046686>,  <37.322193, 41.701149, 30.091751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302872, 41.304165, 30.046686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599359, -0.061432, 0.798120,
		-0.799022, 0.106078, -0.591871,
		-0.048303, -0.992458, -0.112664,
		37.288380, 41.006428, 30.012886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639786, 41.592503, 30.212322>,  <37.322193, 41.701149, 30.091751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639786, 41.592503, 30.212322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814388, 41.233723, 30.240437>,  <36.919151, 41.018456, 30.257305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814388, 41.233723, 30.240437>,  <36.639786, 41.592503, 30.212322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814388, 41.233723, 30.240437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529233, -0.192808, 0.826280,
		-0.727580, -0.397877, -0.558858,
		0.436510, -0.896950, 0.070287,
		36.945343, 40.964638, 30.261522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122017, 41.102795, 30.282103>,  <36.639786, 41.592503, 30.212322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122017, 41.102795, 30.282103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454334, 40.920517, 30.409933>,  <36.653725, 40.811150, 30.486631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454334, 40.920517, 30.409933>,  <36.122017, 41.102795, 30.282103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454334, 40.920517, 30.409933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475536, -0.282772, 0.833010,
		-0.289289, -0.843995, -0.451646,
		0.830770, -0.455754, 0.319547,
		36.703571, 40.783810, 30.505806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890537, 40.390808, 30.396526>,  <36.122017, 41.102795, 30.282103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890537, 40.390808, 30.396526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223343, 40.434116, 30.614161>,  <36.423027, 40.460102, 30.744741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223343, 40.434116, 30.614161>,  <35.890537, 40.390808, 30.396526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223343, 40.434116, 30.614161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507945, -0.245629, 0.825626,
		0.223036, -0.963298, -0.149370,
		0.832014, 0.108272, 0.544087,
		36.472946, 40.466599, 30.777386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807285, 39.886398, 30.890699>,  <35.890537, 40.390808, 30.396526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807285, 39.886398, 30.890699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073460, 40.140469, 31.047543>,  <36.233166, 40.292912, 31.141647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073460, 40.140469, 31.047543>,  <35.807285, 39.886398, 30.890699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073460, 40.140469, 31.047543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495366, -0.017187, 0.868515,
		0.558399, -0.772176, 0.303207,
		0.665435, 0.635176, 0.392107,
		36.273090, 40.331020, 31.165174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144455, 39.534813, 31.509556>,  <35.807285, 39.886398, 30.890699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144455, 39.534813, 31.509556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192066, 39.930408, 31.544733>,  <36.220634, 40.167767, 31.565840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192066, 39.930408, 31.544733>,  <36.144455, 39.534813, 31.509556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192066, 39.930408, 31.544733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389214, -0.035008, 0.920482,
		0.913425, -0.143791, 0.380761,
		0.119027, 0.988989, 0.087943,
		36.227776, 40.227104, 31.571115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243217, 39.579117, 32.220699>,  <36.144455, 39.534813, 31.509556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243217, 39.579117, 32.220699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190002, 39.960426, 32.112213>,  <36.158073, 40.189213, 32.047119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190002, 39.960426, 32.112213>,  <36.243217, 39.579117, 32.220699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190002, 39.960426, 32.112213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258282, 0.230850, 0.938082,
		0.956865, 0.194855, 0.215502,
		-0.133041, 0.953278, -0.271220,
		36.150089, 40.246410, 32.030846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629360, 40.076824, 32.716988>,  <36.243217, 39.579117, 32.220699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629360, 40.076824, 32.716988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318501, 40.274242, 32.560810>,  <36.131985, 40.392693, 32.467102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318501, 40.274242, 32.560810>,  <36.629360, 40.076824, 32.716988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318501, 40.274242, 32.560810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174480, 0.427125, 0.887199,
		0.604640, 0.757614, -0.245827,
		-0.777153, 0.493544, -0.390445,
		36.085354, 40.422306, 32.443676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661415, 40.849709, 33.036388>,  <36.629360, 40.076824, 32.716988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661415, 40.849709, 33.036388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299423, 40.784298, 32.879276>,  <36.082230, 40.745052, 32.785011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299423, 40.784298, 32.879276>,  <36.661415, 40.849709, 33.036388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299423, 40.784298, 32.879276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420221, 0.487947, 0.765063,
		0.066550, 0.857419, -0.510297,
		-0.904978, -0.163523, -0.392779,
		36.027931, 40.735241, 32.761444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182358, 41.433743, 33.256889>,  <36.661415, 40.849709, 33.036388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182358, 41.433743, 33.256889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948692, 41.132172, 33.136658>,  <35.808495, 40.951229, 33.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948692, 41.132172, 33.136658>,  <36.182358, 41.433743, 33.256889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948692, 41.132172, 33.136658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498016, 0.040529, 0.866220,
		-0.640884, 0.655707, -0.399143,
		-0.584164, -0.753926, -0.300578,
		35.773441, 40.905994, 33.046486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486549, 41.693401, 33.389320>,  <36.182358, 41.433743, 33.256889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486549, 41.693401, 33.389320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490204, 41.293457, 33.394886>,  <35.492397, 41.053490, 33.398224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490204, 41.293457, 33.394886>,  <35.486549, 41.693401, 33.389320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490204, 41.293457, 33.394886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407673, 0.008980, 0.913084,
		-0.913082, -0.014012, -0.407535,
		0.009135, -0.999861, 0.013911,
		35.492943, 40.993500, 33.399059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880894, 41.496548, 33.790493>,  <35.486549, 41.693401, 33.389320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880894, 41.496548, 33.790493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066582, 41.142265, 33.792889>,  <35.177994, 40.929695, 33.794327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066582, 41.142265, 33.792889>,  <34.880894, 41.496548, 33.790493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066582, 41.142265, 33.792889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286590, -0.143799, 0.947200,
		-0.838075, -0.441423, -0.320587,
		0.464216, -0.885702, 0.005993,
		35.205845, 40.876556, 33.794685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409092, 40.944004, 33.903015>,  <34.880894, 41.496548, 33.790493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409092, 40.944004, 33.903015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754913, 40.786774, 34.028255>,  <34.962406, 40.692436, 34.103397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754913, 40.786774, 34.028255>,  <34.409092, 40.944004, 33.903015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754913, 40.786774, 34.028255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451221, -0.332924, 0.827986,
		-0.221227, -0.857117, -0.465197,
		0.864557, -0.393079, 0.313098,
		35.014282, 40.668850, 34.122185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308491, 40.197609, 34.256390>,  <34.409092, 40.944004, 33.903015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308491, 40.197609, 34.256390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657181, 40.358810, 34.367878>,  <34.866394, 40.455532, 34.434772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657181, 40.358810, 34.367878>,  <34.308491, 40.197609, 34.256390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657181, 40.358810, 34.367878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208865, -0.208943, 0.955363,
		0.443255, -0.891026, -0.097966,
		0.871722, 0.403008, 0.278719,
		34.918697, 40.479713, 34.451492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560566, 39.681370, 34.633228>,  <34.308491, 40.197609, 34.256390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560566, 39.681370, 34.633228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786987, 39.984020, 34.764133>,  <34.922840, 40.165611, 34.842674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786987, 39.984020, 34.764133>,  <34.560566, 39.681370, 34.633228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786987, 39.984020, 34.764133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083513, -0.342309, 0.935869,
		0.820126, -0.557084, -0.130577,
		0.566055, 0.756626, 0.327260,
		34.956802, 40.211006, 34.862312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033752, 39.404545, 34.984428>,  <34.560566, 39.681370, 34.633228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033752, 39.404545, 34.984428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053616, 39.776695, 35.129719>,  <35.065533, 39.999985, 35.216892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053616, 39.776695, 35.129719>,  <35.033752, 39.404545, 34.984428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053616, 39.776695, 35.129719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006240, -0.363959, 0.931394,
		0.998747, -0.043980, -0.023877,
		0.049653, 0.930376, 0.363229,
		35.068512, 40.055809, 35.238686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498108, 39.330925, 35.486874>,  <35.033752, 39.404545, 34.984428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498108, 39.330925, 35.486874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291412, 39.659908, 35.581982>,  <35.167393, 39.857300, 35.639046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291412, 39.659908, 35.581982>,  <35.498108, 39.330925, 35.486874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291412, 39.659908, 35.581982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057950, -0.310687, 0.948744,
		0.854179, 0.476476, 0.208207,
		-0.516741, 0.822462, 0.237771,
		35.136391, 39.906647, 35.653313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210251, 39.188606, 35.666084>,  <35.498108, 39.330925, 35.486874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210251, 39.188606, 35.666084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528820, 39.046310, 35.861698>,  <36.719963, 38.960934, 35.979065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528820, 39.046310, 35.861698>,  <36.210251, 39.188606, 35.666084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528820, 39.046310, 35.861698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550902, 0.093256, -0.829343,
		0.249423, 0.929922, 0.270248,
		0.796427, -0.355738, 0.489035,
		36.767750, 38.939590, 36.008408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688583, 39.681019, 35.620590>,  <36.210251, 39.188606, 35.666084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688583, 39.681019, 35.620590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879124, 39.333187, 35.672611>,  <36.993450, 39.124489, 35.703823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879124, 39.333187, 35.672611>,  <36.688583, 39.681019, 35.620590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879124, 39.333187, 35.672611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704482, 0.288963, -0.648233,
		0.526110, 0.400409, 0.750253,
		0.476354, -0.869582, 0.130055,
		37.022030, 39.072311, 35.711628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441261, 39.810238, 35.676331>,  <36.688583, 39.681019, 35.620590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441261, 39.810238, 35.676331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413200, 39.419998, 35.593109>,  <37.396362, 39.185856, 35.543175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413200, 39.419998, 35.593109>,  <37.441261, 39.810238, 35.676331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413200, 39.419998, 35.593109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747188, 0.086791, -0.658921,
		0.660900, -0.201681, 0.722867,
		-0.070153, -0.975598, -0.208054,
		37.392155, 39.127319, 35.530693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105415, 39.675880, 35.502533>,  <37.441261, 39.810238, 35.676331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105415, 39.675880, 35.502533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928425, 39.346336, 35.360847>,  <37.822231, 39.148609, 35.275837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928425, 39.346336, 35.360847>,  <38.105415, 39.675880, 35.502533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928425, 39.346336, 35.360847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670190, -0.041333, -0.741038,
		0.595871, -0.565283, 0.570432,
		-0.442474, -0.823861, -0.354217,
		37.795681, 39.099178, 35.254581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671505, 39.272449, 35.281662>,  <38.105415, 39.675880, 35.502533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671505, 39.272449, 35.281662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359962, 39.113323, 35.087704>,  <38.173038, 39.017849, 34.971329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359962, 39.113323, 35.087704>,  <38.671505, 39.272449, 35.281662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359962, 39.113323, 35.087704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546172, -0.050097, -0.836174,
		0.308353, -0.916096, 0.256295,
		-0.778855, -0.397817, -0.484898,
		38.126305, 38.993977, 34.942234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875336, 38.685089, 34.926453>,  <38.671505, 39.272449, 35.281662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875336, 38.685089, 34.926453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541077, 38.790386, 34.733620>,  <38.340523, 38.853565, 34.617920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541077, 38.790386, 34.733620>,  <38.875336, 38.685089, 34.926453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541077, 38.790386, 34.733620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521310, 0.103652, -0.847049,
		-0.173008, -0.959146, -0.223845,
		-0.835646, 0.263239, -0.482080,
		38.290382, 38.869358, 34.588997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914188, 38.273930, 34.204994>,  <38.875336, 38.685089, 34.926453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914188, 38.273930, 34.204994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638397, 38.563263, 34.189964>,  <38.472923, 38.736862, 34.180946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638397, 38.563263, 34.189964>,  <38.914188, 38.273930, 34.204994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638397, 38.563263, 34.189964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268755, 0.207308, -0.940635,
		-0.672603, -0.658643, -0.337334,
		-0.689474, 0.723335, -0.037578,
		38.431557, 38.780262, 34.178692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419216, 38.069511, 33.615131>,  <38.914188, 38.273930, 34.204994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419216, 38.069511, 33.615131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407871, 38.460693, 33.697880>,  <38.401066, 38.695404, 33.747528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407871, 38.460693, 33.697880>,  <38.419216, 38.069511, 33.615131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407871, 38.460693, 33.697880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357975, 0.203164, -0.911361,
		-0.933300, 0.048204, -0.355847,
		-0.028364, 0.977957, 0.206869,
		38.399361, 38.754082, 33.759941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359226, 38.394661, 32.995953>,  <38.419216, 38.069511, 33.615131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359226, 38.394661, 32.995953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499561, 38.698868, 33.214500>,  <38.583763, 38.881393, 33.345631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499561, 38.698868, 33.214500>,  <38.359226, 38.394661, 32.995953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499561, 38.698868, 33.214500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575317, 0.285304, -0.766559,
		-0.738865, 0.583275, -0.337444,
		0.350840, 0.760521, 0.546369,
		38.604813, 38.927025, 33.378410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170807, 38.986832, 32.549911>,  <38.359226, 38.394661, 32.995953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170807, 38.986832, 32.549911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451633, 39.123013, 32.800095>,  <38.620129, 39.204720, 32.950203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451633, 39.123013, 32.800095>,  <38.170807, 38.986832, 32.549911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451633, 39.123013, 32.800095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480953, 0.421021, -0.769042,
		-0.525151, 0.840734, 0.131845,
		0.702069, 0.340452, 0.625453,
		38.662254, 39.225147, 32.987732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193489, 39.747284, 32.572689>,  <38.170807, 38.986832, 32.549911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193489, 39.747284, 32.572689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550797, 39.591663, 32.662762>,  <38.765182, 39.498291, 32.716805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550797, 39.591663, 32.662762>,  <38.193489, 39.747284, 32.572689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550797, 39.591663, 32.662762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442941, 0.676435, -0.588420,
		0.076607, 0.625359, 0.776567,
		0.893272, -0.389051, 0.225177,
		38.818779, 39.474949, 32.730316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587521, 40.310387, 32.613037>,  <38.193489, 39.747284, 32.572689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587521, 40.310387, 32.613037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842701, 40.003620, 32.585175>,  <38.995808, 39.819561, 32.568459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842701, 40.003620, 32.585175>,  <38.587521, 40.310387, 32.613037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842701, 40.003620, 32.585175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446235, 0.441873, -0.778217,
		0.627609, 0.465382, 0.624120,
		0.637950, -0.766921, -0.069654,
		39.034084, 39.773544, 32.564278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235088, 40.620564, 32.501308>,  <38.587521, 40.310387, 32.613037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235088, 40.620564, 32.501308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251328, 40.246204, 32.361343>,  <39.261070, 40.021587, 32.277363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251328, 40.246204, 32.361343>,  <39.235088, 40.620564, 32.501308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251328, 40.246204, 32.361343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365921, 0.339800, -0.866393,
		0.929760, -0.092869, 0.356261,
		0.040597, -0.935901, -0.349915,
		39.263508, 39.965435, 32.256371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825130, 40.598888, 32.213341>,  <39.235088, 40.620564, 32.501308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825130, 40.598888, 32.213341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647011, 40.282516, 32.045467>,  <39.540138, 40.092693, 31.944744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647011, 40.282516, 32.045467>,  <39.825130, 40.598888, 32.213341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647011, 40.282516, 32.045467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470290, 0.192254, -0.861317,
		0.761927, -0.580920, 0.286356,
		-0.445303, -0.790931, -0.419684,
		39.513420, 40.045238, 31.919561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376995, 40.334770, 31.745024>,  <39.825130, 40.598888, 32.213341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376995, 40.334770, 31.745024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037971, 40.169029, 31.612381>,  <39.834557, 40.069584, 31.532795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037971, 40.169029, 31.612381>,  <40.376995, 40.334770, 31.745024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037971, 40.169029, 31.612381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393471, -0.071309, -0.916568,
		0.356133, -0.907320, 0.223473,
		-0.847555, -0.414350, -0.331608,
		39.783707, 40.044724, 31.512899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668823, 40.059380, 31.207520>,  <40.376995, 40.334770, 31.745024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668823, 40.059380, 31.207520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277622, 40.005260, 31.144020>,  <40.042900, 39.972790, 31.105921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277622, 40.005260, 31.144020>,  <40.668823, 40.059380, 31.207520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277622, 40.005260, 31.144020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184885, -0.209972, -0.960067,
		0.096567, -0.968300, 0.230369,
		-0.978004, -0.135302, -0.158748,
		39.984222, 39.964668, 31.096395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506287, 39.381046, 30.920420>,  <40.668823, 40.059380, 31.207520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506287, 39.381046, 30.920420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193855, 39.605320, 30.810478>,  <40.006393, 39.739883, 30.744514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193855, 39.605320, 30.810478>,  <40.506287, 39.381046, 30.920420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193855, 39.605320, 30.810478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194109, -0.200339, -0.960305,
		-0.593491, -0.803429, 0.047647,
		-0.781083, 0.560684, -0.274852,
		39.959530, 39.773525, 30.728024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134045, 38.967239, 30.351366>,  <40.506287, 39.381046, 30.920420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134045, 38.967239, 30.351366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006332, 39.344391, 30.313347>,  <39.929703, 39.570683, 30.290535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006332, 39.344391, 30.313347>,  <40.134045, 38.967239, 30.351366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006332, 39.344391, 30.313347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187976, -0.035290, -0.981539,
		-0.928828, -0.331257, -0.165972,
		-0.319285, 0.942880, -0.095047,
		39.910545, 39.627254, 30.284832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650589, 39.001083, 29.708132>,  <40.134045, 38.967239, 30.351366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650589, 39.001083, 29.708132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790916, 39.373547, 29.747887>,  <39.875114, 39.597023, 29.771740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790916, 39.373547, 29.747887>,  <39.650589, 39.001083, 29.708132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790916, 39.373547, 29.747887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226803, 0.018488, -0.973765,
		-0.908563, 0.364156, -0.204703,
		0.350818, 0.931154, 0.099389,
		39.896160, 39.652893, 29.777704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336182, 39.261757, 29.161528>,  <39.650589, 39.001083, 29.708132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336182, 39.261757, 29.161528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625610, 39.507420, 29.287548>,  <39.799267, 39.654819, 29.363161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625610, 39.507420, 29.287548>,  <39.336182, 39.261757, 29.161528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625610, 39.507420, 29.287548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305409, 0.124462, -0.944052,
		-0.619010, 0.779306, -0.097513,
		0.723569, 0.614159, 0.315050,
		39.842682, 39.691666, 29.382063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360950, 39.752411, 28.637125>,  <39.336182, 39.261757, 29.161528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360950, 39.752411, 28.637125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716747, 39.801769, 28.813112>,  <39.930225, 39.831387, 28.918705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716747, 39.801769, 28.813112>,  <39.360950, 39.752411, 28.637125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716747, 39.801769, 28.813112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419720, 0.160026, -0.893435,
		-0.180655, 0.979369, 0.090549,
		0.889494, 0.123398, 0.439970,
		39.983597, 39.838787, 28.945103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667175, 40.430084, 28.395147>,  <39.360950, 39.752411, 28.637125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667175, 40.430084, 28.395147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975475, 40.194981, 28.493523>,  <40.160454, 40.053917, 28.552547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975475, 40.194981, 28.493523>,  <39.667175, 40.430084, 28.395147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975475, 40.194981, 28.493523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367236, 0.094382, -0.925327,
		0.520660, 0.803510, 0.288592,
		0.770747, -0.587762, 0.245937,
		40.206699, 40.018654, 28.567305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263813, 40.715790, 28.134140>,  <39.667175, 40.430084, 28.395147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263813, 40.715790, 28.134140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340939, 40.325073, 28.171448>,  <40.387215, 40.090641, 28.193832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340939, 40.325073, 28.171448>,  <40.263813, 40.715790, 28.134140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340939, 40.325073, 28.171448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382792, -0.012643, -0.923748,
		0.903490, 0.213811, 0.371471,
		0.192811, -0.976793, 0.093268,
		40.398781, 40.032036, 28.199429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011616, 40.589924, 27.866087>,  <40.263813, 40.715790, 28.134140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011616, 40.589924, 27.866087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878696, 40.212997, 27.882141>,  <40.798946, 39.986839, 27.891773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878696, 40.212997, 27.882141>,  <41.011616, 40.589924, 27.866087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878696, 40.212997, 27.882141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354994, -0.164381, -0.920304,
		0.873818, -0.291568, 0.389141,
		-0.332298, -0.942320, 0.040134,
		40.779007, 39.930302, 27.894182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596706, 40.188335, 27.641701>,  <41.011616, 40.589924, 27.866087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596706, 40.188335, 27.641701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249989, 39.995628, 27.590197>,  <41.041958, 39.880005, 27.559294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249989, 39.995628, 27.590197>,  <41.596706, 40.188335, 27.641701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249989, 39.995628, 27.590197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163313, -0.030279, -0.986110,
		0.471173, -0.875778, 0.104924,
		-0.866790, -0.481763, -0.128759,
		40.989952, 39.851101, 27.551569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768047, 39.563065, 27.325808>,  <41.596706, 40.188335, 27.641701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768047, 39.563065, 27.325808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386692, 39.611053, 27.215055>,  <41.157879, 39.639847, 27.148605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386692, 39.611053, 27.215055>,  <41.768047, 39.563065, 27.325808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386692, 39.611053, 27.215055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262848, -0.120492, -0.957284,
		-0.148218, -0.985437, 0.083338,
		-0.953385, 0.119981, -0.276879,
		41.100677, 39.647045, 27.131992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553196, 38.993820, 26.903597>,  <41.768047, 39.563065, 27.325808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553196, 38.993820, 26.903597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267857, 39.257809, 26.809305>,  <41.096653, 39.416203, 26.752729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267857, 39.257809, 26.809305>,  <41.553196, 38.993820, 26.903597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267857, 39.257809, 26.809305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067588, -0.270011, -0.960482,
		-0.697542, -0.701092, 0.148006,
		-0.713349, 0.659973, -0.235729,
		41.053852, 39.455799, 26.738586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287045, 38.658054, 26.362238>,  <41.553196, 38.993820, 26.903597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287045, 38.658054, 26.362238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181885, 39.040119, 26.307762>,  <41.118790, 39.269360, 26.275078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181885, 39.040119, 26.307762>,  <41.287045, 38.658054, 26.362238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181885, 39.040119, 26.307762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147268, -0.099772, -0.984052,
		-0.953518, -0.278761, -0.114435,
		-0.262898, 0.955164, -0.136187,
		41.103016, 39.326668, 26.266907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710003, 38.724907, 25.815290>,  <41.287045, 38.658054, 26.362238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710003, 38.724907, 25.815290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849644, 39.099720, 25.819429>,  <40.933426, 39.324608, 25.821913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849644, 39.099720, 25.819429>,  <40.710003, 38.724907, 25.815290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849644, 39.099720, 25.819429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045352, 0.027925, -0.998581,
		-0.935988, 0.348133, 0.052244,
		0.349098, 0.937029, 0.010349,
		40.954372, 39.380829, 25.822535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341370, 39.052921, 25.311657>,  <40.710003, 38.724907, 25.815290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341370, 39.052921, 25.311657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653488, 39.297752, 25.363041>,  <40.840759, 39.444649, 25.393871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653488, 39.297752, 25.363041>,  <40.341370, 39.052921, 25.311657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653488, 39.297752, 25.363041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181636, -0.025239, -0.983042,
		-0.598453, 0.790397, -0.130869,
		0.780296, 0.612075, 0.128460,
		40.887577, 39.481377, 25.401579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196014, 39.595005, 24.876295>,  <40.341370, 39.052921, 25.311657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196014, 39.595005, 24.876295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589855, 39.588779, 24.945944>,  <40.826160, 39.585045, 24.987734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589855, 39.588779, 24.945944>,  <40.196014, 39.595005, 24.876295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589855, 39.588779, 24.945944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174747, 0.116076, -0.977747,
		-0.004992, 0.993118, 0.117008,
		0.984601, -0.015566, 0.174124,
		40.885235, 39.584110, 24.998180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501827, 40.177387, 24.492571>,  <40.196014, 39.595005, 24.876295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501827, 40.177387, 24.492571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815243, 39.932930, 24.537422>,  <41.003292, 39.786255, 24.564333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815243, 39.932930, 24.537422>,  <40.501827, 40.177387, 24.492571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815243, 39.932930, 24.537422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190246, 0.064174, -0.979637,
		0.591499, 0.788917, 0.166550,
		0.783540, -0.611140, 0.112129,
		41.050304, 39.749588, 24.571060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009937, 40.507259, 24.039595>,  <40.501827, 40.177387, 24.492571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009937, 40.507259, 24.039595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188400, 40.153805, 24.096359>,  <41.295479, 39.941734, 24.130419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188400, 40.153805, 24.096359>,  <41.009937, 40.507259, 24.039595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188400, 40.153805, 24.096359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236603, -0.036468, -0.970922,
		0.863114, 0.466756, 0.192800,
		0.446153, -0.883634, 0.141912,
		41.322247, 39.888714, 24.138933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810978, 40.471493, 23.925793>,  <41.009937, 40.507259, 24.039595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810978, 40.471493, 23.925793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683708, 40.097111, 23.865448>,  <41.607346, 39.872482, 23.829241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683708, 40.097111, 23.865448>,  <41.810978, 40.471493, 23.925793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683708, 40.097111, 23.865448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366353, 0.025384, -0.930130,
		0.874387, -0.351210, 0.334812,
		-0.318172, -0.935953, -0.150863,
		41.588257, 39.816326, 23.820189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458546, 40.108532, 23.606733>,  <41.810978, 40.471493, 23.925793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458546, 40.108532, 23.606733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129608, 39.891712, 23.537537>,  <41.932247, 39.761620, 23.496019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129608, 39.891712, 23.537537>,  <42.458546, 40.108532, 23.606733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129608, 39.891712, 23.537537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325809, -0.199337, -0.924182,
		0.466473, -0.816359, 0.340530,
		-0.822345, -0.542054, -0.172992,
		41.882904, 39.729095, 23.485640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681576, 39.689045, 23.032324>,  <42.458546, 40.108532, 23.606733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681576, 39.689045, 23.032324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291027, 39.603951, 23.047543>,  <42.056698, 39.552895, 23.056675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291027, 39.603951, 23.047543>,  <42.681576, 39.689045, 23.032324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291027, 39.603951, 23.047543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008756, -0.214854, -0.976607,
		0.215939, -0.953194, 0.211639,
		-0.976368, -0.212741, 0.038049,
		41.998116, 39.540127, 23.058958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541943, 38.995277, 22.860348>,  <42.681576, 39.689045, 23.032324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541943, 38.995277, 22.860348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219776, 39.209171, 22.758091>,  <42.026474, 39.337509, 22.696737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219776, 39.209171, 22.758091>,  <42.541943, 38.995277, 22.860348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219776, 39.209171, 22.758091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168697, -0.206658, -0.963760,
		-0.568190, -0.819358, 0.076237,
		-0.805420, 0.534738, -0.255644,
		41.978149, 39.369595, 22.681398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164806, 38.560966, 22.421631>,  <42.541943, 38.995277, 22.860348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164806, 38.560966, 22.421631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017963, 38.927402, 22.357117>,  <41.929859, 39.147263, 22.318407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017963, 38.927402, 22.357117>,  <42.164806, 38.560966, 22.421631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017963, 38.927402, 22.357117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039689, -0.157808, -0.986672,
		-0.929333, -0.368611, 0.021573,
		-0.367103, 0.916091, -0.161286,
		41.907833, 39.202229, 22.308731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162758, 37.748333, 22.389326>,  <42.164806, 38.560966, 22.421631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162758, 37.748333, 22.389326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209000, 37.358982, 22.468498>,  <42.236744, 37.125374, 22.516001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209000, 37.358982, 22.468498>,  <42.162758, 37.748333, 22.389326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209000, 37.358982, 22.468498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426713, 0.131277, 0.894809,
		-0.896969, -0.187900, -0.400176,
		0.115601, -0.973375, 0.197930,
		42.243679, 37.066971, 22.527878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607601, 37.521286, 22.792971>,  <42.162758, 37.748333, 22.389326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607601, 37.521286, 22.792971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890144, 37.243198, 22.846231>,  <42.059669, 37.076347, 22.878189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890144, 37.243198, 22.846231>,  <41.607601, 37.521286, 22.792971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890144, 37.243198, 22.846231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233193, -0.050940, 0.971095,
		-0.668337, -0.716995, -0.198101,
		0.706361, -0.695215, 0.133153,
		42.102055, 37.034634, 22.886177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372654, 37.187397, 23.327099>,  <41.607601, 37.521286, 22.792971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372654, 37.187397, 23.327099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749577, 37.053555, 23.330940>,  <41.975731, 36.973248, 23.333246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749577, 37.053555, 23.330940>,  <41.372654, 37.187397, 23.327099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749577, 37.053555, 23.330940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091945, -0.231127, 0.968569,
		-0.321874, -0.913573, -0.248559,
		0.942308, -0.334611, 0.009605,
		42.032269, 36.953171, 23.333822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325874, 36.520794, 23.637066>,  <41.372654, 37.187397, 23.327099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325874, 36.520794, 23.637066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698574, 36.658813, 23.682291>,  <41.922195, 36.741627, 23.709425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698574, 36.658813, 23.682291>,  <41.325874, 36.520794, 23.637066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698574, 36.658813, 23.682291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025039, -0.249580, 0.968030,
		0.362234, -0.904794, -0.223907,
		0.931751, 0.345048, 0.113061,
		41.978100, 36.762329, 23.716209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714581, 36.013863, 23.931143>,  <41.325874, 36.520794, 23.637066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714581, 36.013863, 23.931143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884754, 36.370125, 23.995316>,  <41.986858, 36.583881, 24.033819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884754, 36.370125, 23.995316>,  <41.714581, 36.013863, 23.931143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884754, 36.370125, 23.995316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047762, -0.154930, 0.986770,
		0.903728, -0.427469, -0.023372,
		0.425435, 0.890656, 0.160431,
		42.012386, 36.637321, 24.043446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094967, 35.928593, 24.466084>,  <41.714581, 36.013863, 23.931143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094967, 35.928593, 24.466084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077099, 36.327866, 24.482311>,  <42.066380, 36.567429, 24.492048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077099, 36.327866, 24.482311>,  <42.094967, 35.928593, 24.466084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077099, 36.327866, 24.482311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111689, -0.045346, 0.992708,
		0.992739, 0.039814, 0.113511,
		-0.044671, 0.998178, 0.040570,
		42.063698, 36.627319, 24.494482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483402, 36.100540, 25.048340>,  <42.094967, 35.928593, 24.466084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483402, 36.100540, 25.048340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253613, 36.418545, 24.970427>,  <42.115738, 36.609348, 24.923677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253613, 36.418545, 24.970427>,  <42.483402, 36.100540, 25.048340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253613, 36.418545, 24.970427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174123, 0.113829, 0.978123,
		0.799788, 0.595822, 0.073037,
		-0.574474, 0.795009, -0.194785,
		42.081272, 36.657047, 24.911991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753483, 36.704357, 25.332146>,  <42.483402, 36.100540, 25.048340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753483, 36.704357, 25.332146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357594, 36.754974, 25.305481>,  <42.120060, 36.785343, 25.289482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357594, 36.754974, 25.305481>,  <42.753483, 36.704357, 25.332146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357594, 36.754974, 25.305481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044017, 0.173988, 0.983764,
		0.136086, 0.976584, -0.166629,
		-0.989719, 0.126542, -0.066664,
		42.060677, 36.792938, 25.285482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572479, 37.253067, 25.816179>,  <42.753483, 36.704357, 25.332146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572479, 37.253067, 25.816179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210659, 37.091648, 25.761147>,  <41.993565, 36.994797, 25.728127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210659, 37.091648, 25.761147>,  <42.572479, 37.253067, 25.816179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210659, 37.091648, 25.761147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231324, 0.193455, 0.953449,
		-0.358150, 0.894272, -0.268341,
		-0.904554, -0.403551, -0.137581,
		41.939293, 36.970581, 25.719872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125378, 37.645908, 26.223162>,  <42.572479, 37.253067, 25.816179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125378, 37.645908, 26.223162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887455, 37.335407, 26.139614>,  <41.744701, 37.149105, 26.089485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887455, 37.335407, 26.139614>,  <42.125378, 37.645908, 26.223162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887455, 37.335407, 26.139614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315883, -0.013223, 0.948706,
		-0.739201, 0.630278, -0.237341,
		-0.594810, -0.776257, -0.208869,
		41.709011, 37.102531, 26.076954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494457, 37.788216, 26.583998>,  <42.125378, 37.645908, 26.223162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494457, 37.788216, 26.583998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508591, 37.396683, 26.503363>,  <41.517071, 37.161762, 26.454981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508591, 37.396683, 26.503363>,  <41.494457, 37.788216, 26.583998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508591, 37.396683, 26.503363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347518, -0.201161, 0.915842,
		-0.937007, 0.037694, -0.347270,
		0.035335, -0.978833, -0.201589,
		41.519192, 37.103031, 26.442886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863892, 37.575356, 26.802021>,  <41.494457, 37.788216, 26.583998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863892, 37.575356, 26.802021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114708, 37.264313, 26.783527>,  <41.265198, 37.077686, 26.772430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114708, 37.264313, 26.783527>,  <40.863892, 37.575356, 26.802021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114708, 37.264313, 26.783527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395560, -0.368977, 0.841064,
		-0.671081, -0.509093, -0.538956,
		0.627042, -0.777612, -0.046236,
		41.302822, 37.031029, 26.769657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490116, 37.201260, 27.163761>,  <40.863892, 37.575356, 26.802021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490116, 37.201260, 27.163761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854549, 37.037395, 27.145418>,  <41.073212, 36.939079, 27.134413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854549, 37.037395, 27.145418>,  <40.490116, 37.201260, 27.163761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854549, 37.037395, 27.145418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135073, -0.401794, 0.905713,
		-0.389449, -0.818993, -0.421403,
		0.911090, -0.409649, -0.045855,
		41.127876, 36.914497, 27.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418449, 36.534576, 27.334877>,  <40.490116, 37.201260, 27.163761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418449, 36.534576, 27.334877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797527, 36.631245, 27.418266>,  <41.024975, 36.689247, 27.468300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797527, 36.631245, 27.418266>,  <40.418449, 36.534576, 27.334877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797527, 36.631245, 27.418266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127689, -0.311534, 0.941617,
		0.292511, -0.918989, -0.264381,
		0.947699, 0.241675, 0.208472,
		41.081837, 36.703747, 27.480808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771446, 35.970711, 27.776506>,  <40.418449, 36.534576, 27.334877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771446, 35.970711, 27.776506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953987, 36.322601, 27.829910>,  <41.063511, 36.533733, 27.861954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953987, 36.322601, 27.829910>,  <40.771446, 35.970711, 27.776506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953987, 36.322601, 27.829910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000608, -0.149738, 0.988725,
		0.889798, -0.451290, -0.067799,
		0.456354, 0.879725, 0.133511,
		41.090893, 36.586517, 27.869965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266846, 35.750607, 28.273964>,  <40.771446, 35.970711, 27.776506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266846, 35.750607, 28.273964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241573, 36.149513, 28.258659>,  <41.226410, 36.388859, 28.249477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241573, 36.149513, 28.258659>,  <41.266846, 35.750607, 28.273964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241573, 36.149513, 28.258659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316640, 0.016325, 0.948405,
		0.946439, 0.072040, 0.314743,
		-0.063185, 0.997268, -0.038262,
		41.222618, 36.448692, 28.247181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562466, 35.975098, 28.898609>,  <41.266846, 35.750607, 28.273964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562466, 35.975098, 28.898609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346039, 36.288883, 28.777374>,  <41.216183, 36.477154, 28.704634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346039, 36.288883, 28.777374>,  <41.562466, 35.975098, 28.898609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346039, 36.288883, 28.777374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174396, 0.247901, 0.952959,
		0.822700, 0.568469, 0.002678,
		-0.541064, 0.784467, -0.303087,
		41.183720, 36.524223, 28.686449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959251, 36.587082, 29.062918>,  <41.562466, 35.975098, 28.898609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959251, 36.587082, 29.062918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573494, 36.689053, 29.034771>,  <41.342037, 36.750237, 29.017883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573494, 36.689053, 29.034771>,  <41.959251, 36.587082, 29.062918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573494, 36.689053, 29.034771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006475, 0.288754, 0.957382,
		0.264385, 0.922839, -0.280123,
		-0.964395, 0.254931, -0.070367,
		41.284176, 36.765533, 29.013660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843040, 37.186142, 29.359266>,  <41.959251, 36.587082, 29.062918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843040, 37.186142, 29.359266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471619, 37.037666, 29.358978>,  <41.248764, 36.948582, 29.358807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471619, 37.037666, 29.358978>,  <41.843040, 37.186142, 29.359266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471619, 37.037666, 29.358978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163971, 0.408445, 0.897935,
		-0.333011, 0.833901, -0.440129,
		-0.928557, -0.371190, -0.000719,
		41.193050, 36.926308, 29.358763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581791, 37.589073, 29.884699>,  <41.843040, 37.186142, 29.359266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581791, 37.589073, 29.884699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240364, 37.388592, 29.827814>,  <41.035507, 37.268303, 29.793682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240364, 37.388592, 29.827814>,  <41.581791, 37.589073, 29.884699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240364, 37.388592, 29.827814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391058, 0.435997, 0.810543,
		-0.344242, 0.747464, -0.568151,
		-0.853564, -0.501203, -0.142213,
		40.984295, 37.238232, 29.785151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921040, 37.991455, 29.773273>,  <41.581791, 37.589073, 29.884699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921040, 37.991455, 29.773273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816410, 37.645683, 29.945011>,  <40.753632, 37.438221, 30.048054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816410, 37.645683, 29.945011>,  <40.921040, 37.991455, 29.773273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816410, 37.645683, 29.945011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477661, 0.502474, 0.720666,
		-0.838701, -0.016575, -0.544339,
		-0.261572, -0.864433, 0.429343,
		40.737938, 37.386353, 30.073814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257118, 38.090054, 30.131134>,  <40.921040, 37.991455, 29.773273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257118, 38.090054, 30.131134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360497, 37.746651, 30.308296>,  <40.422523, 37.540607, 30.414595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360497, 37.746651, 30.308296>,  <40.257118, 38.090054, 30.131134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360497, 37.746651, 30.308296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482005, 0.282735, 0.829296,
		-0.837185, -0.427810, -0.340735,
		0.258444, -0.858510, 0.442908,
		40.438030, 37.489098, 30.441168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649788, 37.812016, 30.494408>,  <40.257118, 38.090054, 30.131134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649788, 37.812016, 30.494408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965183, 37.649014, 30.678680>,  <40.154419, 37.551212, 30.789244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965183, 37.649014, 30.678680>,  <39.649788, 37.812016, 30.494408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965183, 37.649014, 30.678680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454588, 0.118412, 0.882796,
		-0.414292, -0.905495, -0.091880,
		0.788487, -0.407503, 0.460684,
		40.201729, 37.526764, 30.816885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375412, 37.274063, 30.962631>,  <39.649788, 37.812016, 30.494408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375412, 37.274063, 30.962631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733223, 37.383480, 31.104050>,  <39.947910, 37.449131, 31.188900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733223, 37.383480, 31.104050>,  <39.375412, 37.274063, 30.962631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733223, 37.383480, 31.104050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406033, 0.166416, 0.898578,
		0.186975, -0.947351, 0.259936,
		0.894526, 0.273554, 0.353540,
		40.001583, 37.465542, 31.210114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453487, 36.848778, 31.528030>,  <39.375412, 37.274063, 30.962631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453487, 36.848778, 31.528030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737808, 37.116169, 31.615568>,  <39.908401, 37.276604, 31.668091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737808, 37.116169, 31.615568>,  <39.453487, 36.848778, 31.528030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737808, 37.116169, 31.615568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198176, -0.108198, 0.974176,
		0.674895, -0.735819, 0.055569,
		0.710805, 0.668479, 0.218844,
		39.951050, 37.316711, 31.681221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825111, 36.516239, 32.016819>,  <39.453487, 36.848778, 31.528030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825111, 36.516239, 32.016819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912579, 36.906460, 32.025543>,  <39.965057, 37.140594, 32.030777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912579, 36.906460, 32.025543>,  <39.825111, 36.516239, 32.016819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912579, 36.906460, 32.025543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133641, 0.007797, 0.990999,
		0.966605, -0.219615, 0.132079,
		0.218668, 0.975555, 0.021813,
		39.978180, 37.199127, 32.032085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452545, 36.534515, 32.523132>,  <39.825111, 36.516239, 32.016819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452545, 36.534515, 32.523132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314766, 36.909897, 32.512806>,  <40.232098, 37.135124, 32.506611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314766, 36.909897, 32.512806>,  <40.452545, 36.534515, 32.523132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314766, 36.909897, 32.512806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059428, 0.049237, 0.997018,
		0.936921, 0.341890, -0.072729,
		-0.344452, 0.938449, -0.025813,
		40.211430, 37.191433, 32.505062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848759, 36.830318, 32.984348>,  <40.452545, 36.534515, 32.523132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848759, 36.830318, 32.984348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519161, 37.054867, 32.953640>,  <40.321404, 37.189594, 32.935215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519161, 37.054867, 32.953640>,  <40.848759, 36.830318, 32.984348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519161, 37.054867, 32.953640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160806, -0.101774, 0.981725,
		0.543295, 0.821285, 0.174133,
		-0.823997, 0.561368, -0.076774,
		40.271961, 37.223278, 32.930607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012775, 37.316711, 33.451023>,  <40.848759, 36.830318, 32.984348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012775, 37.316711, 33.451023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618343, 37.282028, 33.394268>,  <40.381683, 37.261219, 33.360214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618343, 37.282028, 33.394268>,  <41.012775, 37.316711, 33.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618343, 37.282028, 33.394268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118252, -0.234265, 0.964954,
		-0.116906, 0.968299, 0.220750,
		-0.986078, -0.086705, -0.141890,
		40.322521, 37.256016, 33.351700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709766, 37.646595, 33.963821>,  <41.012775, 37.316711, 33.451023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709766, 37.646595, 33.963821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407841, 37.420303, 33.831032>,  <40.226685, 37.284531, 33.751358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407841, 37.420303, 33.831032>,  <40.709766, 37.646595, 33.963821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407841, 37.420303, 33.831032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303052, -0.148077, 0.941399,
		-0.581731, 0.811190, -0.059674,
		-0.754817, -0.565725, -0.331973,
		40.181396, 37.250587, 33.731441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059978, 37.900093, 34.297256>,  <40.709766, 37.646595, 33.963821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059978, 37.900093, 34.297256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007179, 37.525799, 34.166428>,  <39.975498, 37.301224, 34.087933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007179, 37.525799, 34.166428>,  <40.059978, 37.900093, 34.297256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007179, 37.525799, 34.166428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316892, -0.272807, 0.908381,
		-0.939232, 0.223551, -0.260517,
		-0.131998, -0.935736, -0.327071,
		39.967579, 37.245079, 34.068306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427608, 37.669353, 34.557346>,  <40.059978, 37.900093, 34.297256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427608, 37.669353, 34.557346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609222, 37.319355, 34.490128>,  <39.718189, 37.109356, 34.449795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609222, 37.319355, 34.490128>,  <39.427608, 37.669353, 34.557346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609222, 37.319355, 34.490128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376882, -0.359510, 0.853647,
		-0.807351, -0.324248, -0.492998,
		0.454030, -0.874995, -0.168048,
		39.745430, 37.056858, 34.439713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917419, 37.067661, 34.672337>,  <39.427608, 37.669353, 34.557346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917419, 37.067661, 34.672337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267673, 36.874683, 34.681389>,  <39.477825, 36.758896, 34.686821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267673, 36.874683, 34.681389>,  <38.917419, 37.067661, 34.672337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267673, 36.874683, 34.681389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279810, -0.468557, 0.837950,
		-0.393660, -0.740070, -0.545277,
		0.875635, -0.482442, 0.022627,
		39.530365, 36.729950, 34.688175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857182, 36.278618, 34.785736>,  <38.917419, 37.067661, 34.672337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857182, 36.278618, 34.785736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226372, 36.375549, 34.905331>,  <39.447887, 36.433708, 34.977085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226372, 36.375549, 34.905331>,  <38.857182, 36.278618, 34.785736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226372, 36.375549, 34.905331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130131, -0.534601, 0.835026,
		0.362190, -0.809616, -0.461888,
		0.922976, 0.242332, 0.298983,
		39.503265, 36.448250, 34.995026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214954, 35.675468, 35.076488>,  <38.857182, 36.278618, 34.785736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214954, 35.675468, 35.076488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437965, 35.972214, 35.225510>,  <39.571774, 36.150261, 35.314922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437965, 35.972214, 35.225510>,  <39.214954, 35.675468, 35.076488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437965, 35.972214, 35.225510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264423, -0.584100, 0.767403,
		0.786918, -0.329340, -0.521820,
		0.557531, 0.741865, 0.372553,
		39.605225, 36.194775, 35.337276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888885, 35.336651, 35.241722>,  <39.214954, 35.675468, 35.076488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888885, 35.336651, 35.241722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860794, 35.671505, 35.458710>,  <39.843937, 35.872417, 35.588902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860794, 35.671505, 35.458710>,  <39.888885, 35.336651, 35.241722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860794, 35.671505, 35.458710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087278, -0.546883, 0.832647,
		0.993705, 0.011132, 0.111471,
		-0.070230, 0.837135, 0.542469,
		39.839725, 35.922646, 35.621449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299438, 35.172836, 35.737343>,  <39.888885, 35.336651, 35.241722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299438, 35.172836, 35.737343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077282, 35.472439, 35.881863>,  <39.943989, 35.652199, 35.968575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077282, 35.472439, 35.881863>,  <40.299438, 35.172836, 35.737343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077282, 35.472439, 35.881863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023704, -0.420030, 0.907201,
		0.831252, 0.512415, 0.215527,
		-0.555391, 0.749003, 0.361297,
		39.910664, 35.697140, 35.990253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691620, 35.467125, 36.340309>,  <40.299438, 35.172836, 35.737343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691620, 35.467125, 36.340309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311054, 35.583553, 36.380497>,  <40.082714, 35.653408, 36.404610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311054, 35.583553, 36.380497>,  <40.691620, 35.467125, 36.340309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311054, 35.583553, 36.380497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016655, -0.277173, 0.960676,
		0.307471, 0.915671, 0.258858,
		-0.951412, 0.291069, 0.100473,
		40.025631, 35.670876, 36.410641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719383, 35.784153, 37.028370>,  <40.691620, 35.467125, 36.340309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719383, 35.784153, 37.028370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330853, 35.710026, 36.968788>,  <40.097736, 35.665550, 36.933037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330853, 35.710026, 36.968788>,  <40.719383, 35.784153, 37.028370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330853, 35.710026, 36.968788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047320, -0.463300, 0.884937,
		-0.233003, 0.866610, 0.441245,
		-0.971324, -0.185314, -0.148958,
		40.039455, 35.654430, 36.924099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355221, 35.889027, 37.561089>,  <40.719383, 35.784153, 37.028370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355221, 35.889027, 37.561089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138115, 35.609882, 37.374157>,  <40.007851, 35.442394, 37.261997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138115, 35.609882, 37.374157>,  <40.355221, 35.889027, 37.561089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138115, 35.609882, 37.374157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321860, -0.341116, 0.883203,
		-0.775766, 0.629785, -0.039468,
		-0.542765, -0.697862, -0.467328,
		39.975285, 35.400524, 37.233959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902065, 36.155987, 37.987667>,  <40.355221, 35.889027, 37.561089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902065, 36.155987, 37.987667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094566, 36.502476, 38.041420>,  <41.210068, 36.710369, 38.073673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094566, 36.502476, 38.041420>,  <40.902065, 36.155987, 37.987667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094566, 36.502476, 38.041420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497836, 0.143902, 0.855249,
		0.721496, -0.478491, 0.500489,
		0.481251, 0.866220, 0.134385,
		41.238941, 36.762341, 38.081738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227386, 36.137783, 38.719933>,  <40.902065, 36.155987, 37.987667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227386, 36.137783, 38.719933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109280, 36.490143, 38.571968>,  <41.038418, 36.701557, 38.483189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109280, 36.490143, 38.571968>,  <41.227386, 36.137783, 38.719933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109280, 36.490143, 38.571968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591035, 0.135795, 0.795134,
		0.750665, 0.453407, 0.480546,
		-0.295264, 0.880898, -0.369915,
		41.020702, 36.754414, 38.460995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187439, 36.521980, 39.233356>,  <41.227386, 36.137783, 38.719933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187439, 36.521980, 39.233356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962162, 36.721500, 38.969841>,  <40.826996, 36.841213, 38.811729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962162, 36.721500, 38.969841>,  <41.187439, 36.521980, 39.233356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962162, 36.721500, 38.969841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672639, 0.186345, 0.716123,
		0.479967, 0.846446, 0.230567,
		-0.563194, 0.498804, -0.658792,
		40.793205, 36.871143, 38.772202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961311, 37.035805, 39.620174>,  <41.187439, 36.521980, 39.233356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961311, 37.035805, 39.620174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730564, 37.028015, 39.293530>,  <40.592117, 37.023342, 39.097542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730564, 37.028015, 39.293530>,  <40.961311, 37.035805, 39.620174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730564, 37.028015, 39.293530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785444, 0.287727, 0.547988,
		0.224287, 0.957515, -0.181276,
		-0.576864, -0.019476, -0.816608,
		40.557507, 37.022171, 39.048546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852951, 37.631870, 39.407448>,  <40.961311, 37.035805, 39.620174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852951, 37.631870, 39.407448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557205, 37.374287, 39.328800>,  <40.379757, 37.219738, 39.281612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557205, 37.374287, 39.328800>,  <40.852951, 37.631870, 39.407448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557205, 37.374287, 39.328800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535040, 0.384640, 0.752186,
		-0.408749, 0.661338, -0.628933,
		-0.739362, -0.643959, -0.196621,
		40.335396, 37.181099, 39.269814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195820, 38.024754, 39.390228>,  <40.852951, 37.631870, 39.407448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195820, 38.024754, 39.390228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059761, 37.653534, 39.450924>,  <39.978127, 37.430801, 39.487339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059761, 37.653534, 39.450924>,  <40.195820, 38.024754, 39.390228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059761, 37.653534, 39.450924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701783, 0.357926, 0.615946,
		-0.625938, 0.103029, -0.773037,
		-0.340151, -0.928048, 0.151735,
		39.957714, 37.375118, 39.496445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506706, 38.056290, 39.357693>,  <40.195820, 38.024754, 39.390228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506706, 38.056290, 39.357693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581028, 37.714333, 39.551445>,  <39.625622, 37.509159, 39.667698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581028, 37.714333, 39.551445>,  <39.506706, 38.056290, 39.357693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581028, 37.714333, 39.551445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679041, 0.244590, 0.692156,
		-0.710197, -0.457525, -0.535062,
		0.185807, -0.854896, 0.484385,
		39.636772, 37.457863, 39.696762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899780, 37.966881, 39.706028>,  <39.506706, 38.056290, 39.357693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899780, 37.966881, 39.706028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129986, 37.702778, 39.899044>,  <39.268108, 37.544315, 40.014854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129986, 37.702778, 39.899044>,  <38.899780, 37.966881, 39.706028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129986, 37.702778, 39.899044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585765, 0.078934, 0.806628,
		-0.570670, -0.746881, -0.341328,
		0.575513, -0.660257, 0.482542,
		39.302639, 37.504700, 40.043808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496857, 37.309742, 39.843140>,  <38.899780, 37.966881, 39.706028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496857, 37.309742, 39.843140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785633, 37.397312, 40.105705>,  <38.958897, 37.449856, 40.263245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785633, 37.397312, 40.105705>,  <38.496857, 37.309742, 39.843140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785633, 37.397312, 40.105705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691877, 0.213918, 0.689598,
		0.010551, -0.952004, 0.305904,
		0.721938, 0.218923, 0.656412,
		39.002216, 37.462990, 40.302628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328503, 36.975597, 40.471397>,  <38.496857, 37.309742, 39.843140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328503, 36.975597, 40.471397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576744, 37.271397, 40.575703>,  <38.725689, 37.448875, 40.638287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576744, 37.271397, 40.575703>,  <38.328503, 36.975597, 40.471397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576744, 37.271397, 40.575703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656826, 0.308626, 0.687990,
		0.428287, -0.598245, 0.677254,
		0.620604, 0.739496, 0.260762,
		38.762924, 37.493244, 40.653931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030666, 37.086552, 41.160091>,  <38.328503, 36.975597, 40.471397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030666, 37.086552, 41.160091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297928, 37.380619, 41.114296>,  <38.458282, 37.557060, 41.086819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297928, 37.380619, 41.114296>,  <38.030666, 37.086552, 41.160091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297928, 37.380619, 41.114296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379150, 0.468824, 0.797778,
		0.640172, -0.489628, 0.591983,
		0.668150, 0.735166, -0.114486,
		38.498371, 37.601170, 41.079952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256878, 37.193897, 41.798920>,  <38.030666, 37.086552, 41.160091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256878, 37.193897, 41.798920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303204, 37.530334, 41.587582>,  <38.330997, 37.732197, 41.460777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303204, 37.530334, 41.587582>,  <38.256878, 37.193897, 41.798920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303204, 37.530334, 41.587582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357699, 0.531553, 0.767790,
		0.926628, 0.100070, 0.362419,
		0.115812, 0.841093, -0.528347,
		38.337948, 37.782661, 41.429077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578766, 37.690369, 42.187206>,  <38.256878, 37.193897, 41.798920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578766, 37.690369, 42.187206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410244, 37.917469, 41.904320>,  <38.309132, 38.053730, 41.734589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410244, 37.917469, 41.904320>,  <38.578766, 37.690369, 42.187206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410244, 37.917469, 41.904320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249507, 0.677152, 0.692251,
		0.871922, 0.468105, -0.143629,
		-0.421305, 0.567752, -0.707219,
		38.283852, 38.087795, 41.692154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726685, 38.417976, 42.285522>,  <38.578766, 37.690369, 42.187206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726685, 38.417976, 42.285522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409485, 38.448364, 42.043736>,  <38.219166, 38.466599, 41.898663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409485, 38.448364, 42.043736>,  <38.726685, 38.417976, 42.285522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409485, 38.448364, 42.043736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349568, 0.755868, 0.553593,
		0.498955, 0.650302, -0.572846,
		-0.792998, 0.075969, -0.604469,
		38.171585, 38.471153, 41.862396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686634, 39.210892, 42.377243>,  <38.726685, 38.417976, 42.285522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686634, 39.210892, 42.377243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345810, 39.065895, 42.226200>,  <38.141315, 38.978897, 42.135574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345810, 39.065895, 42.226200>,  <38.686634, 39.210892, 42.377243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345810, 39.065895, 42.226200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511042, 0.732174, 0.450286,
		0.113249, 0.576645, -0.809108,
		-0.852063, -0.362494, -0.377607,
		38.090191, 38.957146, 42.112919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340527, 39.780212, 41.988209>,  <38.686634, 39.210892, 42.377243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340527, 39.780212, 41.988209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089142, 39.501961, 42.127426>,  <37.938309, 39.335011, 42.210957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089142, 39.501961, 42.127426>,  <38.340527, 39.780212, 41.988209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089142, 39.501961, 42.127426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573536, 0.716680, 0.396770,
		-0.525443, 0.049737, -0.849374,
		-0.628464, -0.695626, 0.348048,
		37.900604, 39.293274, 42.231842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815811, 40.016201, 41.825371>,  <38.340527, 39.780212, 41.988209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815811, 40.016201, 41.825371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641624, 39.766502, 42.084808>,  <37.537113, 39.616684, 42.240471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641624, 39.766502, 42.084808>,  <37.815811, 40.016201, 41.825371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641624, 39.766502, 42.084808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599059, 0.738757, 0.308815,
		-0.671934, -0.254068, -0.695668,
		-0.435470, -0.624250, 0.648597,
		37.510983, 39.579227, 42.279388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075333, 40.069958, 41.778454>,  <37.815811, 40.016201, 41.825371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075333, 40.069958, 41.778454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108936, 39.887173, 42.132656>,  <37.129097, 39.777500, 42.345177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108936, 39.887173, 42.132656>,  <37.075333, 40.069958, 41.778454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108936, 39.887173, 42.132656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788536, 0.512821, 0.339450,
		-0.609224, -0.726773, -0.317250,
		0.084011, -0.456963, 0.885509,
		37.134140, 39.750084, 42.398308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495312, 39.734135, 42.015434>,  <37.075333, 40.069958, 41.778454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495312, 39.734135, 42.015434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680286, 39.818428, 42.359932>,  <36.791271, 39.869003, 42.566631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680286, 39.818428, 42.359932>,  <36.495312, 39.734135, 42.015434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680286, 39.818428, 42.359932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844253, 0.401431, 0.355091,
		-0.270900, -0.891316, 0.363550,
		0.462439, 0.210734, 0.861244,
		36.819019, 39.881649, 42.618305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972427, 39.738743, 42.548508>,  <36.495312, 39.734135, 42.015434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972427, 39.738743, 42.548508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284180, 39.912464, 42.729149>,  <36.471230, 40.016697, 42.837536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284180, 39.912464, 42.729149>,  <35.972427, 39.738743, 42.548508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284180, 39.912464, 42.729149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616819, 0.405292, 0.674739,
		0.110010, -0.804437, 0.583763,
		0.779379, 0.434304, 0.451606,
		36.517994, 40.042755, 42.864632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840115, 39.726040, 43.272644>,  <35.972427, 39.738743, 42.548508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840115, 39.726040, 43.272644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071888, 40.033535, 43.164341>,  <36.210953, 40.218033, 43.099358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071888, 40.033535, 43.164341>,  <35.840115, 39.726040, 43.272644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071888, 40.033535, 43.164341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506672, 0.599967, 0.619131,
		0.638395, -0.221554, 0.737133,
		0.579427, 0.768735, -0.270761,
		36.245716, 40.264156, 43.083115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764748, 40.168400, 43.872463>,  <35.840115, 39.726040, 43.272644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764748, 40.168400, 43.872463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934700, 40.424118, 43.616093>,  <36.036671, 40.577549, 43.462273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934700, 40.424118, 43.616093>,  <35.764748, 40.168400, 43.872463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934700, 40.424118, 43.616093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478142, 0.759670, 0.440775,
		0.768677, 0.119181, 0.628436,
		0.424872, 0.639295, -0.640926,
		36.062164, 40.615906, 43.423817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791462, 40.833134, 43.815285>,  <35.764748, 40.168400, 43.872463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791462, 40.833134, 43.815285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129501, 40.791679, 44.025074>,  <36.332325, 40.766808, 44.150948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129501, 40.791679, 44.025074>,  <35.791462, 40.833134, 43.815285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129501, 40.791679, 44.025074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456547, -0.370557, -0.808859,
		0.278173, 0.923010, -0.265842,
		0.845094, -0.103633, 0.524477,
		36.383030, 40.760590, 44.182419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288685, 41.203411, 43.498486>,  <35.791462, 40.833134, 43.815285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288685, 41.203411, 43.498486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435944, 40.876835, 43.676430>,  <36.524300, 40.680889, 43.783195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435944, 40.876835, 43.676430>,  <36.288685, 41.203411, 43.498486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435944, 40.876835, 43.676430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341159, -0.326473, -0.881490,
		0.864916, 0.476285, 0.158345,
		0.368146, -0.816436, 0.444861,
		36.546387, 40.631905, 43.809887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963856, 41.150337, 43.182381>,  <36.288685, 41.203411, 43.498486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963856, 41.150337, 43.182381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843605, 40.799801, 43.332924>,  <36.771454, 40.589478, 43.423248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843605, 40.799801, 43.332924>,  <36.963856, 41.150337, 43.182381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843605, 40.799801, 43.332924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466885, -0.479320, -0.743149,
		0.831650, -0.047695, 0.553249,
		-0.300628, -0.876343, 0.376359,
		36.753418, 40.536900, 43.445831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482807, 40.622406, 43.091324>,  <36.963856, 41.150337, 43.182381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482807, 40.622406, 43.091324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161369, 40.391994, 43.151211>,  <36.968506, 40.253746, 43.187141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161369, 40.391994, 43.151211>,  <37.482807, 40.622406, 43.091324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161369, 40.391994, 43.151211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428241, -0.734311, -0.526685,
		0.413325, -0.359129, 0.836773,
		-0.803599, -0.576033, 0.149715,
		36.920288, 40.219185, 43.196125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733532, 39.948463, 43.377213>,  <37.482807, 40.622406, 43.091324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733532, 39.948463, 43.377213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383114, 39.903893, 43.189545>,  <37.172863, 39.877148, 43.076942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383114, 39.903893, 43.189545>,  <37.733532, 39.948463, 43.377213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383114, 39.903893, 43.189545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378143, -0.762500, -0.524977,
		-0.299245, -0.637319, 0.710124,
		-0.876048, -0.111431, -0.469172,
		37.120300, 39.870464, 43.048794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385387, 39.196259, 43.503117>,  <37.733532, 39.948463, 43.377213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385387, 39.196259, 43.503117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291481, 39.368298, 43.154427>,  <37.235138, 39.471519, 42.945213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291481, 39.368298, 43.154427>,  <37.385387, 39.196259, 43.503117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291481, 39.368298, 43.154427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442310, -0.751303, -0.489802,
		-0.865590, -0.500561, -0.013856,
		-0.234766, 0.430097, -0.871724,
		37.221050, 39.497326, 42.892910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990269, 38.698101, 43.121902>,  <37.385387, 39.196259, 43.503117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990269, 38.698101, 43.121902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131897, 38.959770, 42.854561>,  <37.216873, 39.116772, 42.694157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131897, 38.959770, 42.854561>,  <36.990269, 38.698101, 43.121902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131897, 38.959770, 42.854561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427866, -0.748780, -0.506220,
		-0.831602, -0.106725, -0.545021,
		0.354074, 0.654170, -0.668351,
		37.238121, 39.156021, 42.654057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899086, 38.477951, 42.477871>,  <36.990269, 38.698101, 43.121902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899086, 38.477951, 42.477871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201126, 38.725338, 42.390862>,  <37.382351, 38.873772, 42.338654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201126, 38.725338, 42.390862>,  <36.899086, 38.477951, 42.477871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201126, 38.725338, 42.390862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379466, -0.682861, -0.624265,
		-0.534628, 0.388840, -0.750317,
		0.755102, 0.618470, -0.217525,
		37.427658, 38.910877, 42.325603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931801, 38.514156, 41.762108>,  <36.899086, 38.477951, 42.477871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931801, 38.514156, 41.762108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296062, 38.636082, 41.873676>,  <37.514622, 38.709236, 41.940617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296062, 38.636082, 41.873676>,  <36.931801, 38.514156, 41.762108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296062, 38.636082, 41.873676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409617, -0.577806, -0.705942,
		-0.054017, 0.757121, -0.651038,
		0.910657, 0.304809, 0.278918,
		37.569260, 38.727524, 41.957352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231358, 38.605473, 41.025093>,  <36.931801, 38.514156, 41.762108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231358, 38.605473, 41.025093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524216, 38.567993, 41.294964>,  <37.699928, 38.545506, 41.456886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524216, 38.567993, 41.294964>,  <37.231358, 38.605473, 41.025093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524216, 38.567993, 41.294964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442401, -0.687732, -0.575592,
		0.517926, 0.719893, -0.462068,
		0.732143, -0.093695, 0.674676,
		37.743858, 38.539886, 41.497368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716198, 38.667141, 40.620380>,  <37.231358, 38.605473, 41.025093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716198, 38.667141, 40.620380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866802, 38.515476, 40.958488>,  <37.957165, 38.424477, 41.161354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866802, 38.515476, 40.958488>,  <37.716198, 38.667141, 40.620380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866802, 38.515476, 40.958488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768022, -0.382474, -0.513669,
		0.518055, 0.842586, 0.147197,
		0.376511, -0.379160, 0.845268,
		37.979755, 38.401730, 41.212070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235802, 38.355961, 40.268246>,  <37.716198, 38.667141, 40.620380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235802, 38.355961, 40.268246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316635, 38.297382, 40.655590>,  <38.365135, 38.262238, 40.887997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316635, 38.297382, 40.655590>,  <38.235802, 38.355961, 40.268246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316635, 38.297382, 40.655590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804384, -0.539225, -0.249406,
		0.558687, 0.829332, 0.008831,
		0.202079, -0.146443, 0.968359,
		38.377258, 38.253448, 40.946098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001835, 38.652309, 40.561970>,  <38.235802, 38.355961, 40.268246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001835, 38.652309, 40.561970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875633, 38.335064, 40.770367>,  <38.799911, 38.144718, 40.895405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875633, 38.335064, 40.770367>,  <39.001835, 38.652309, 40.561970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875633, 38.335064, 40.770367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836184, -0.491931, -0.242487,
		0.448611, 0.359140, 0.818392,
		-0.315506, -0.793109, 0.520993,
		38.780983, 38.097130, 40.926666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581600, 38.539917, 41.022163>,  <39.001835, 38.652309, 40.561970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581600, 38.539917, 41.022163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353874, 38.224216, 40.930111>,  <39.217239, 38.034798, 40.874878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353874, 38.224216, 40.930111>,  <39.581600, 38.539917, 41.022163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353874, 38.224216, 40.930111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768829, -0.411988, -0.489048,
		0.291168, -0.455358, 0.841350,
		-0.569318, -0.789249, -0.230135,
		39.183079, 37.987442, 40.861069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806705, 37.963493, 41.219799>,  <39.581600, 38.539917, 41.022163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806705, 37.963493, 41.219799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586018, 37.820354, 40.918453>,  <39.453606, 37.734470, 40.737648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586018, 37.820354, 40.918453>,  <39.806705, 37.963493, 41.219799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586018, 37.820354, 40.918453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833706, -0.211464, -0.510116,
		0.023234, -0.909522, 0.415007,
		-0.551720, -0.357845, -0.753360,
		39.420502, 37.713001, 40.692444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120102, 37.427189, 40.999149>,  <39.806705, 37.963493, 41.219799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120102, 37.427189, 40.999149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933224, 37.554333, 40.669132>,  <39.821098, 37.630619, 40.471123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933224, 37.554333, 40.669132>,  <40.120102, 37.427189, 40.999149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933224, 37.554333, 40.669132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825255, -0.178115, -0.535937,
		-0.317307, -0.931256, -0.179103,
		-0.467194, 0.317863, -0.825041,
		39.793064, 37.649693, 40.421619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967785, 36.753361, 40.835094>,  <40.120102, 37.427189, 40.999149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967785, 36.753361, 40.835094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729454, 36.939480, 40.573257>,  <39.586456, 37.051151, 40.416157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729454, 36.939480, 40.573257>,  <39.967785, 36.753361, 40.835094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729454, 36.939480, 40.573257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334297, -0.597409, -0.728936,
		-0.730233, -0.653145, 0.200402,
		-0.595823, 0.465300, -0.654592,
		39.550709, 37.079071, 40.376881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829521, 36.251801, 40.229382>,  <39.967785, 36.753361, 40.835094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829521, 36.251801, 40.229382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794300, 36.621773, 40.081463>,  <39.773167, 36.843758, 39.992710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794300, 36.621773, 40.081463>,  <39.829521, 36.251801, 40.229382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794300, 36.621773, 40.081463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342659, -0.320456, -0.883115,
		-0.935324, -0.204475, -0.288719,
		-0.088054, 0.924931, -0.369796,
		39.767883, 36.899254, 39.970524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470608, 36.208874, 39.543072>,  <39.829521, 36.251801, 40.229382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470608, 36.208874, 39.543072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673294, 36.552868, 39.518860>,  <39.794907, 36.759266, 39.504333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673294, 36.552868, 39.518860>,  <39.470608, 36.208874, 39.543072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673294, 36.552868, 39.518860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312204, -0.248491, -0.916941,
		-0.803597, 0.445731, -0.394405,
		0.506716, 0.859986, -0.060527,
		39.825310, 36.810863, 39.500702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537045, 36.317112, 38.825954>,  <39.470608, 36.208874, 39.543072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537045, 36.317112, 38.825954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785145, 36.597591, 38.966591>,  <39.934006, 36.765877, 39.050972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785145, 36.597591, 38.966591>,  <39.537045, 36.317112, 38.825954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785145, 36.597591, 38.966591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511329, -0.021533, -0.859115,
		-0.594837, 0.712643, -0.371898,
		0.620251, 0.701196, 0.351586,
		39.971218, 36.807949, 39.072067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680405, 36.806568, 38.185013>,  <39.537045, 36.317112, 38.825954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680405, 36.806568, 38.185013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947506, 36.907673, 38.465073>,  <40.107769, 36.968334, 38.633110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947506, 36.907673, 38.465073>,  <39.680405, 36.806568, 38.185013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947506, 36.907673, 38.465073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664629, 0.221122, -0.713704,
		-0.335216, 0.941922, -0.020337,
		0.667757, 0.252761, 0.700152,
		40.147835, 36.983501, 38.675117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017513, 37.405956, 37.924377>,  <39.680405, 36.806568, 38.185013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017513, 37.405956, 37.924377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264343, 37.249207, 38.197334>,  <40.412441, 37.155159, 38.361107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264343, 37.249207, 38.197334>,  <40.017513, 37.405956, 37.924377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264343, 37.249207, 38.197334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754769, 0.049470, -0.654123,
		0.222573, 0.918690, 0.326298,
		0.617078, -0.391869, 0.682388,
		40.449467, 37.131645, 38.402050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553791, 37.848511, 37.940887>,  <40.017513, 37.405956, 37.924377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553791, 37.848511, 37.940887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702572, 37.514236, 38.102520>,  <40.791840, 37.313671, 38.199497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702572, 37.514236, 38.102520>,  <40.553791, 37.848511, 37.940887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702572, 37.514236, 38.102520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771527, 0.036279, -0.635162,
		0.516136, 0.548010, 0.658247,
		0.371955, -0.835685, 0.404079,
		40.814159, 37.263531, 38.223743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221100, 37.956268, 37.996429>,  <40.553791, 37.848511, 37.940887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221100, 37.956268, 37.996429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179993, 37.558769, 37.978989>,  <41.155327, 37.320271, 37.968525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179993, 37.558769, 37.978989>,  <41.221100, 37.956268, 37.996429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179993, 37.558769, 37.978989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877208, -0.069877, -0.474997,
		0.468981, -0.087068, 0.878906,
		-0.102772, -0.993749, -0.043606,
		41.149162, 37.260643, 37.965908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815041, 37.475765, 38.282619>,  <41.221100, 37.956268, 37.996429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815041, 37.475765, 38.282619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623798, 37.307983, 37.973953>,  <41.509052, 37.207314, 37.788754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623798, 37.307983, 37.973953>,  <41.815041, 37.475765, 38.282619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623798, 37.307983, 37.973953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843595, 0.025225, -0.536386,
		0.244455, -0.907426, 0.341789,
		-0.478109, -0.419454, -0.771667,
		41.480366, 37.182148, 37.742455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100948, 36.792164, 38.005127>,  <41.815041, 37.475765, 38.282619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100948, 36.792164, 38.005127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919849, 37.007893, 37.721111>,  <41.811192, 37.137329, 37.550701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919849, 37.007893, 37.721111>,  <42.100948, 36.792164, 38.005127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919849, 37.007893, 37.721111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870494, 0.094964, -0.482931,
		-0.193028, -0.836727, -0.512473,
		-0.452748, 0.539324, -0.710034,
		41.784023, 37.169689, 37.508102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193119, 36.452984, 37.302853>,  <42.100948, 36.792164, 38.005127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193119, 36.452984, 37.302853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142670, 36.849754, 37.297585>,  <42.112400, 37.087818, 37.294422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142670, 36.849754, 37.297585>,  <42.193119, 36.452984, 37.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142670, 36.849754, 37.297585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798548, 0.093642, -0.594603,
		-0.588570, -0.085510, -0.803911,
		-0.126124, 0.991927, -0.013169,
		42.104832, 37.147331, 37.293633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191189, 36.815369, 36.586601>,  <42.193119, 36.452984, 37.302853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191189, 36.815369, 36.586601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333763, 37.071136, 36.859100>,  <42.419308, 37.224598, 37.022598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333763, 37.071136, 36.859100>,  <42.191189, 36.815369, 36.586601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333763, 37.071136, 36.859100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902088, -0.045661, -0.429130,
		-0.243287, 0.767503, -0.593086,
		0.356440, 0.639417, 0.681247,
		42.440697, 37.262962, 37.063473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452991, 37.548676, 36.358875>,  <42.191189, 36.815369, 36.586601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452991, 37.548676, 36.358875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623150, 37.374989, 36.676491>,  <42.725246, 37.270775, 36.867058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623150, 37.374989, 36.676491>,  <42.452991, 37.548676, 36.358875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623150, 37.374989, 36.676491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864120, -0.065861, -0.498958,
		0.268952, 0.898397, 0.347199,
		0.425396, -0.434217, 0.794036,
		42.750771, 37.244724, 36.914703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158707, 37.908344, 36.561619>,  <42.452991, 37.548676, 36.358875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158707, 37.908344, 36.561619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135391, 37.526619, 36.678848>,  <43.121403, 37.297585, 36.749184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135391, 37.526619, 36.678848>,  <43.158707, 37.908344, 36.561619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135391, 37.526619, 36.678848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893358, -0.180882, -0.411330,
		0.445549, 0.237842, 0.863086,
		-0.058285, -0.954313, 0.293070,
		43.117905, 37.240326, 36.766769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784473, 37.734615, 37.006145>,  <43.158707, 37.908344, 36.561619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784473, 37.734615, 37.006145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687550, 37.378742, 36.851360>,  <43.629395, 37.165218, 36.758488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687550, 37.378742, 36.851360>,  <43.784473, 37.734615, 37.006145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687550, 37.378742, 36.851360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928391, -0.096807, -0.358775,
		0.281736, -0.446191, 0.849434,
		-0.242313, -0.889687, -0.386965,
		43.614857, 37.111835, 36.735271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330276, 37.331173, 37.103638>,  <43.784473, 37.734615, 37.006145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330276, 37.331173, 37.103638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127666, 37.143547, 36.814251>,  <44.006100, 37.030972, 36.640617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127666, 37.143547, 36.814251>,  <44.330276, 37.331173, 37.103638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127666, 37.143547, 36.814251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861211, -0.234557, -0.450887,
		0.041801, -0.851447, 0.522773,
		-0.506526, -0.469065, -0.723470,
		43.975708, 37.002827, 36.597210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514332, 36.616386, 36.909054>,  <44.330276, 37.331173, 37.103638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514332, 36.616386, 36.909054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370979, 36.793686, 36.580395>,  <44.284969, 36.900066, 36.383202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370979, 36.793686, 36.580395>,  <44.514332, 36.616386, 36.909054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370979, 36.793686, 36.580395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850778, -0.207293, -0.482914,
		-0.384370, -0.872103, -0.302814,
		-0.358380, 0.443245, -0.821643,
		44.263466, 36.926659, 36.333900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221432, 36.032406, 36.464497>,  <44.514332, 36.616386, 36.909054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221432, 36.032406, 36.464497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361027, 36.363213, 36.288197>,  <44.444782, 36.561695, 36.182419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361027, 36.363213, 36.288197>,  <44.221432, 36.032406, 36.464497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361027, 36.363213, 36.288197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905967, -0.418011, -0.067005,
		-0.239652, -0.375919, -0.895127,
		0.348984, 0.827014, -0.440747,
		44.465721, 36.611317, 36.155972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643509, 35.842724, 35.889194>,  <44.221432, 36.032406, 36.464497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643509, 35.842724, 35.889194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748737, 36.203312, 36.026684>,  <44.811874, 36.419666, 36.109177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748737, 36.203312, 36.026684>,  <44.643509, 35.842724, 35.889194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748737, 36.203312, 36.026684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964593, -0.238783, -0.111998,
		-0.018888, 0.361015, -0.932369,
		0.263067, 0.901471, 0.343722,
		44.827656, 36.473755, 36.129799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099354, 36.222546, 35.346901>,  <44.643509, 35.842724, 35.889194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099354, 36.222546, 35.346901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164158, 36.295162, 35.734879>,  <45.203041, 36.338734, 35.967667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164158, 36.295162, 35.734879>,  <45.099354, 36.222546, 35.346901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164158, 36.295162, 35.734879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952065, -0.287215, -0.105262,
		0.259474, 0.940505, -0.219369,
		0.162006, 0.181541, 0.969947,
		45.212761, 36.349625, 36.025864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756271, 36.421741, 34.979458>,  <45.099354, 36.222546, 35.346901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756271, 36.421741, 34.979458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049149, 36.581577, 35.200081>,  <46.224876, 36.677479, 35.332455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049149, 36.581577, 35.200081>,  <45.756271, 36.421741, 34.979458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049149, 36.581577, 35.200081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506226, 0.222498, -0.833205,
		-0.455659, 0.889284, -0.039369,
		0.732196, 0.399587, 0.551562,
		46.268806, 36.701454, 35.365551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919968, 37.144154, 34.737362>,  <45.756271, 36.421741, 34.979458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919968, 37.144154, 34.737362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233276, 36.949066, 34.891567>,  <46.421261, 36.832016, 34.984089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233276, 36.949066, 34.891567>,  <45.919968, 37.144154, 34.737362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233276, 36.949066, 34.891567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558681, 0.280201, -0.780617,
		0.272698, 0.826813, 0.491950,
		0.783270, -0.487716, 0.385514,
		46.468258, 36.802750, 35.007221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426315, 36.479069, 34.617069>,  <45.919968, 37.144154, 34.737362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426315, 36.479069, 34.617069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549683, 36.756992, 34.357185>,  <46.623703, 36.923744, 34.201256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549683, 36.756992, 34.357185>,  <46.426315, 36.479069, 34.617069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549683, 36.756992, 34.357185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865101, -0.488895, -0.112169,
		-0.395577, -0.527471, -0.751860,
		0.308414, 0.694806, -0.649712,
		46.642208, 36.965435, 34.162273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778889, 36.196739, 34.020912>,  <46.426315, 36.479069, 34.617069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778889, 36.196739, 34.020912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890747, 36.579449, 34.052845>,  <46.957863, 36.809074, 34.072002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890747, 36.579449, 34.052845>,  <46.778889, 36.196739, 34.020912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.890747, 36.579449, 34.052845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958511, -0.273432, -0.080575,
		-0.055264, 0.099049, -0.993547,
		0.279648, 0.956778, 0.079828,
		46.974640, 36.866482, 34.076794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338634, 36.380463, 33.597500>,  <46.778889, 36.196739, 34.020912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338634, 36.380463, 33.597500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358891, 36.626862, 33.911945>,  <47.371044, 36.774700, 34.100613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358891, 36.626862, 33.911945>,  <47.338634, 36.380463, 33.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358891, 36.626862, 33.911945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984845, -0.161535, 0.063137,
		0.165878, 0.771006, -0.614846,
		0.050640, 0.616001, 0.786116,
		47.374081, 36.811661, 34.147781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.355961, 35.687168, 33.893028>,  <47.338634, 36.380463, 33.597500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.355961, 35.687168, 33.893028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539379, 35.350815, 34.008026>,  <47.649429, 35.149002, 34.077023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539379, 35.350815, 34.008026>,  <47.355961, 35.687168, 33.893028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539379, 35.350815, 34.008026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099054, 0.369855, 0.923794,
		-0.883133, -0.395124, 0.252888,
		0.458545, -0.840883, 0.287493,
		47.676941, 35.098549, 34.094273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945675, 35.328487, 34.420616>,  <47.355961, 35.687168, 33.893028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945675, 35.328487, 34.420616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332836, 35.233746, 34.454212>,  <47.565132, 35.176899, 34.474369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332836, 35.233746, 34.454212>,  <46.945675, 35.328487, 34.420616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332836, 35.233746, 34.454212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036062, 0.199859, 0.979161,
		-0.248707, -0.950766, 0.184903,
		0.967907, -0.236856, 0.083993,
		47.623207, 35.162689, 34.479408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144207, 34.815899, 34.930504>,  <46.945675, 35.328487, 34.420616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144207, 34.815899, 34.930504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476460, 35.036015, 34.896469>,  <47.675812, 35.168083, 34.876049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476460, 35.036015, 34.896469>,  <47.144207, 34.815899, 34.930504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.476460, 35.036015, 34.896469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100929, 0.299066, 0.948880,
		0.547601, -0.779581, 0.303953,
		0.830630, 0.550285, -0.085086,
		47.725647, 35.201099, 34.870945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.670334, 34.798771, 35.462605>,  <47.144207, 34.815899, 34.930504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.670334, 34.798771, 35.462605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720177, 35.167698, 35.316288>,  <47.750084, 35.389053, 35.228500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720177, 35.167698, 35.316288>,  <47.670334, 34.798771, 35.462605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720177, 35.167698, 35.316288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049875, 0.374017, 0.926080,
		0.990952, -0.097152, 0.092606,
		0.124607, 0.922319, -0.365787,
		47.757561, 35.444393, 35.206551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.190914, 35.451679, 28.225487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906319, 35.728409, 28.176241>,  <36.735561, 35.894447, 28.146692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906319, 35.728409, 28.176241>,  <37.190914, 35.451679, 28.225487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906319, 35.728409, 28.176241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142025, 0.030011, 0.989408,
		0.688192, 0.721441, 0.076903,
		-0.711492, 0.691825, -0.123116,
		36.692871, 35.935955, 28.139307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313843, 36.098965, 28.680487>,  <37.190914, 35.451679, 28.225487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313843, 36.098965, 28.680487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925388, 36.090168, 28.585487>,  <36.692314, 36.084888, 28.528488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925388, 36.090168, 28.585487>,  <37.313843, 36.098965, 28.680487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925388, 36.090168, 28.585487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237548, 0.178673, 0.954802,
		0.021434, 0.983663, -0.178741,
		-0.971139, -0.021994, -0.237497,
		36.634045, 36.083569, 28.514238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020901, 36.712292, 28.998529>,  <37.313843, 36.098965, 28.680487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020901, 36.712292, 28.998529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.710876, 36.467155, 28.936939>,  <36.524860, 36.320072, 28.899984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.710876, 36.467155, 28.936939>,  <37.020901, 36.712292, 28.998529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710876, 36.467155, 28.936939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320443, 0.171183, 0.931672,
		-0.544609, 0.771441, -0.329058,
		-0.775059, -0.612841, -0.153975,
		36.478359, 36.283302, 28.890747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489639, 37.004879, 29.338196>,  <37.020901, 36.712292, 28.998529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489639, 37.004879, 29.338196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344872, 36.635197, 29.289436>,  <36.258011, 36.413387, 29.260181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344872, 36.635197, 29.289436>,  <36.489639, 37.004879, 29.338196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344872, 36.635197, 29.289436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368402, 0.021683, 0.929413,
		-0.856324, 0.381283, -0.348327,
		-0.361923, -0.924204, -0.121898,
		36.236294, 36.357937, 29.252867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864594, 37.034996, 29.667524>,  <36.489639, 37.004879, 29.338196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864594, 37.034996, 29.667524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899803, 36.639343, 29.620409>,  <35.920929, 36.401951, 29.592140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899803, 36.639343, 29.620409>,  <35.864594, 37.034996, 29.667524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899803, 36.639343, 29.620409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342599, -0.141098, 0.928826,
		-0.935349, -0.041405, -0.351295,
		0.088026, -0.989129, -0.117791,
		35.926212, 36.342606, 29.585072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298416, 36.795532, 29.897549>,  <35.864594, 37.034996, 29.667524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298416, 36.795532, 29.897549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573936, 36.508778, 29.940678>,  <35.739250, 36.336723, 29.966555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573936, 36.508778, 29.940678>,  <35.298416, 36.795532, 29.897549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573936, 36.508778, 29.940678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180694, -0.025739, 0.983203,
		-0.702069, -0.696715, -0.147266,
		0.688802, -0.716886, 0.107821,
		35.780579, 36.293713, 29.973024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103153, 36.172089, 30.174616>,  <35.298416, 36.795532, 29.897549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103153, 36.172089, 30.174616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494762, 36.163628, 30.255676>,  <35.729729, 36.158550, 30.304312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494762, 36.163628, 30.255676>,  <35.103153, 36.172089, 30.174616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494762, 36.163628, 30.255676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202262, -0.220911, 0.954090,
		0.024590, -0.975064, -0.220554,
		0.979023, -0.021149, 0.202651,
		35.788467, 36.157284, 30.316471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123302, 35.622185, 30.671232>,  <35.103153, 36.172089, 30.174616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123302, 35.622185, 30.671232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465748, 35.825829, 30.706743>,  <35.671215, 35.948013, 30.728050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465748, 35.825829, 30.706743>,  <35.123302, 35.622185, 30.671232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465748, 35.825829, 30.706743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087321, -0.026813, 0.995819,
		0.509363, -0.860283, 0.021501,
		0.856110, 0.509111, 0.088778,
		35.722580, 35.978561, 30.733377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522480, 35.290390, 31.098644>,  <35.123302, 35.622185, 30.671232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522480, 35.290390, 31.098644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710354, 35.642574, 31.124506>,  <35.823078, 35.853886, 31.140022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710354, 35.642574, 31.124506>,  <35.522480, 35.290390, 31.098644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710354, 35.642574, 31.124506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064691, -0.107360, 0.992114,
		0.880461, -0.461799, -0.107383,
		0.469685, 0.880464, 0.064652,
		35.851261, 35.906712, 31.143902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956871, 35.184078, 31.661020>,  <35.522480, 35.290390, 31.098644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956871, 35.184078, 31.661020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.943241, 35.581520, 31.617956>,  <35.935062, 35.819984, 31.592117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.943241, 35.581520, 31.617956>,  <35.956871, 35.184078, 31.661020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943241, 35.581520, 31.617956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075143, 0.109963, 0.991091,
		0.996590, 0.025682, -0.078410,
		-0.034076, 0.993604, -0.107658,
		35.933018, 35.879601, 31.585659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516582, 35.387985, 31.988079>,  <35.956871, 35.184078, 31.661020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516582, 35.387985, 31.988079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262733, 35.696808, 32.001888>,  <36.110424, 35.882099, 32.010174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262733, 35.696808, 32.001888>,  <36.516582, 35.387985, 31.988079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262733, 35.696808, 32.001888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016635, -0.058307, 0.998160,
		0.772646, 0.632877, 0.049845,
		-0.634619, 0.772053, 0.034523,
		36.072350, 35.928425, 32.012245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843475, 35.839222, 32.381783>,  <36.516582, 35.387985, 31.988079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843475, 35.839222, 32.381783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458179, 35.944340, 32.404106>,  <36.227001, 36.007412, 32.417500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458179, 35.944340, 32.404106>,  <36.843475, 35.839222, 32.381783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458179, 35.944340, 32.404106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055751, -0.007683, 0.998415,
		0.262810, 0.964820, -0.007251,
		-0.963235, 0.262798, 0.055809,
		36.169209, 36.023178, 32.420849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762085, 36.364223, 32.901054>,  <36.843475, 35.839222, 32.381783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762085, 36.364223, 32.901054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392200, 36.212673, 32.886326>,  <36.170269, 36.121742, 32.877487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392200, 36.212673, 32.886326>,  <36.762085, 36.364223, 32.901054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392200, 36.212673, 32.886326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081994, 0.103779, 0.991215,
		-0.371728, 0.919609, -0.127032,
		-0.924714, -0.378878, -0.036825,
		36.114788, 36.099010, 32.875278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442722, 36.684902, 33.380650>,  <36.762085, 36.364223, 32.901054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442722, 36.684902, 33.380650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175411, 36.396847, 33.306023>,  <36.015026, 36.224014, 33.261246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175411, 36.396847, 33.306023>,  <36.442722, 36.684902, 33.380650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175411, 36.396847, 33.306023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355774, 0.089136, 0.930312,
		-0.653322, 0.688083, -0.315773,
		-0.668278, -0.720137, -0.186568,
		35.974926, 36.180805, 33.250053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779049, 36.925232, 33.678188>,  <36.442722, 36.684902, 33.380650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779049, 36.925232, 33.678188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781094, 36.526222, 33.650150>,  <35.782318, 36.286816, 33.633327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781094, 36.526222, 33.650150>,  <35.779049, 36.925232, 33.678188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781094, 36.526222, 33.650150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012809, -0.070025, 0.997463,
		-0.999905, -0.005993, 0.012420,
		0.005108, -0.997527, -0.070095,
		35.782627, 36.226963, 33.629124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403706, 36.722363, 34.200367>,  <35.779049, 36.925232, 33.678188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403706, 36.722363, 34.200367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613880, 36.389812, 34.127995>,  <35.739983, 36.190281, 34.084572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613880, 36.389812, 34.127995>,  <35.403706, 36.722363, 34.200367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613880, 36.389812, 34.127995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066838, -0.252325, 0.965332,
		-0.848205, -0.495125, -0.188147,
		0.525434, -0.831374, -0.180930,
		35.771511, 36.140400, 34.073715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098392, 36.167816, 34.608223>,  <35.403706, 36.722363, 34.200367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098392, 36.167816, 34.608223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457664, 36.011463, 34.527740>,  <35.673229, 35.917652, 34.479450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457664, 36.011463, 34.527740>,  <35.098392, 36.167816, 34.608223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457664, 36.011463, 34.527740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001964, -0.454101, 0.890948,
		-0.439613, -0.800631, -0.407099,
		0.898185, -0.390873, -0.201201,
		35.727119, 35.894199, 34.467381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085396, 35.459377, 34.719990>,  <35.098392, 36.167816, 34.608223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085396, 35.459377, 34.719990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469185, 35.563824, 34.762371>,  <35.699459, 35.626492, 34.787800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469185, 35.563824, 34.762371>,  <35.085396, 35.459377, 34.719990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469185, 35.563824, 34.762371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028488, -0.284178, 0.958348,
		0.280352, -0.922529, -0.265223,
		0.959474, 0.261119, 0.105951,
		35.757027, 35.642159, 34.794155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390144, 34.839840, 35.063053>,  <35.085396, 35.459377, 34.719990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390144, 34.839840, 35.063053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646603, 35.144352, 35.101818>,  <35.800476, 35.327057, 35.125076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646603, 35.144352, 35.101818>,  <35.390144, 34.839840, 35.063053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646603, 35.144352, 35.101818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181479, -0.273108, 0.944710,
		0.745654, -0.588106, -0.313258,
		0.641143, 0.761277, 0.096915,
		35.838947, 35.372734, 35.130894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980824, 34.608662, 35.531345>,  <35.390144, 34.839840, 35.063053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980824, 34.608662, 35.531345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042362, 35.003876, 35.535748>,  <36.079285, 35.241005, 35.538391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042362, 35.003876, 35.535748>,  <35.980824, 34.608662, 35.531345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042362, 35.003876, 35.535748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199972, -0.042044, 0.978899,
		0.967648, -0.148400, -0.204048,
		0.153848, 0.988033, 0.011008,
		36.088516, 35.300285, 35.539051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674347, 34.715054, 35.768940>,  <35.980824, 34.608662, 35.531345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674347, 34.715054, 35.768940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462391, 35.049995, 35.822689>,  <36.335217, 35.250961, 35.854939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462391, 35.049995, 35.822689>,  <36.674347, 34.715054, 35.768940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462391, 35.049995, 35.822689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223580, -0.014908, 0.974572,
		0.818063, 0.546460, -0.179316,
		-0.529891, 0.837353, 0.134373,
		36.303425, 35.301201, 35.863003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012314, 34.846111, 36.435608>,  <36.674347, 34.715054, 35.768940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012314, 34.846111, 36.435608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349293, 34.672134, 36.562798>,  <37.551479, 34.567749, 36.639111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349293, 34.672134, 36.562798>,  <37.012314, 34.846111, 36.435608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349293, 34.672134, 36.562798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201128, -0.293625, -0.934522,
		0.499832, 0.851238, -0.159883,
		0.842446, -0.434947, 0.317971,
		37.602028, 34.541649, 36.658188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583038, 35.114788, 36.087952>,  <37.012314, 34.846111, 36.435608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583038, 35.114788, 36.087952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720055, 34.752579, 36.188103>,  <37.802265, 34.535252, 36.248192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720055, 34.752579, 36.188103>,  <37.583038, 35.114788, 36.087952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720055, 34.752579, 36.188103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313985, -0.140838, -0.938924,
		0.885483, 0.400233, 0.236079,
		0.342539, -0.905526, 0.250376,
		37.822815, 34.480919, 36.263214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289520, 35.072296, 35.772758>,  <37.583038, 35.114788, 36.087952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289520, 35.072296, 35.772758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198135, 34.692299, 35.857910>,  <38.143303, 34.464302, 35.909000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198135, 34.692299, 35.857910>,  <38.289520, 35.072296, 35.772758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198135, 34.692299, 35.857910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127910, -0.246061, -0.960777,
		0.965112, -0.192276, 0.177730,
		-0.228467, -0.949992, 0.212883,
		38.129597, 34.407303, 35.921776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796139, 34.661465, 35.401768>,  <38.289520, 35.072296, 35.772758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796139, 34.661465, 35.401768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512978, 34.385902, 35.464100>,  <38.343079, 34.220566, 35.501499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512978, 34.385902, 35.464100>,  <38.796139, 34.661465, 35.401768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512978, 34.385902, 35.464100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110599, -0.326026, -0.938869,
		0.697594, -0.647396, 0.306987,
		-0.707906, -0.688902, 0.155833,
		38.300606, 34.179234, 35.510849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071491, 33.970425, 35.191040>,  <38.796139, 34.661465, 35.401768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071491, 33.970425, 35.191040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671577, 33.978584, 35.189674>,  <38.431629, 33.983479, 35.188854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671577, 33.978584, 35.189674>,  <39.071491, 33.970425, 35.191040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671577, 33.978584, 35.189674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004054, -0.355363, -0.934719,
		-0.020280, -0.934506, 0.355370,
		-0.999786, 0.020397, -0.003418,
		38.371643, 33.984703, 35.188648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911789, 33.302254, 34.848057>,  <39.071491, 33.970425, 35.191040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911789, 33.302254, 34.848057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573299, 33.512375, 34.812370>,  <38.370205, 33.638447, 34.790958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573299, 33.512375, 34.812370>,  <38.911789, 33.302254, 34.848057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573299, 33.512375, 34.812370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024507, -0.128887, -0.991356,
		-0.532261, -0.841097, 0.096194,
		-0.846225, 0.525303, -0.089214,
		38.319431, 33.669964, 34.785606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487709, 32.916481, 34.259583>,  <38.911789, 33.302254, 34.848057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487709, 32.916481, 34.259583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323032, 33.276424, 34.317211>,  <38.224228, 33.492390, 34.351788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323032, 33.276424, 34.317211>,  <38.487709, 32.916481, 34.259583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323032, 33.276424, 34.317211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193124, 0.068355, -0.978790,
		-0.890625, -0.430784, 0.145644,
		-0.411692, 0.899863, 0.144074,
		38.199524, 33.546383, 34.360432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950096, 33.037331, 33.811764>,  <38.487709, 32.916481, 34.259583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950096, 33.037331, 33.811764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070351, 33.405720, 33.910896>,  <38.142506, 33.626755, 33.970375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070351, 33.405720, 33.910896>,  <37.950096, 33.037331, 33.811764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070351, 33.405720, 33.910896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073456, 0.281437, -0.956764,
		-0.950905, 0.269437, 0.152262,
		0.300640, 0.920976, 0.247828,
		38.160542, 33.682014, 33.985245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678757, 33.417984, 33.156540>,  <37.950096, 33.037331, 33.811764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678757, 33.417984, 33.156540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925453, 33.660946, 33.356815>,  <38.073471, 33.806725, 33.476982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925453, 33.660946, 33.356815>,  <37.678757, 33.417984, 33.156540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925453, 33.660946, 33.356815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210758, 0.485429, -0.848493,
		-0.758428, 0.628824, 0.171369,
		0.616740, 0.607404, 0.500693,
		38.110474, 33.843166, 33.507023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638470, 33.986290, 32.818359>,  <37.678757, 33.417984, 33.156540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638470, 33.986290, 32.818359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981186, 34.046101, 33.015762>,  <38.186817, 34.081985, 33.134205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981186, 34.046101, 33.015762>,  <37.638470, 33.986290, 32.818359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981186, 34.046101, 33.015762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391473, 0.434324, -0.811241,
		-0.335644, 0.888259, 0.313590,
		0.856792, 0.149526, 0.493507,
		38.238224, 34.090958, 33.163815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805801, 34.750645, 32.777798>,  <37.638470, 33.986290, 32.818359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805801, 34.750645, 32.777798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133888, 34.530384, 32.839806>,  <38.330738, 34.398228, 32.877010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133888, 34.530384, 32.839806>,  <37.805801, 34.750645, 32.777798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133888, 34.530384, 32.839806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369848, 0.303713, -0.878049,
		0.436420, 0.777521, 0.452768,
		0.820214, -0.550653, 0.155018,
		38.379951, 34.365189, 32.886311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337502, 35.199150, 32.662167>,  <37.805801, 34.750645, 32.777798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337502, 35.199150, 32.662167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476902, 34.826336, 32.622463>,  <38.560543, 34.602646, 32.598640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476902, 34.826336, 32.622463>,  <38.337502, 35.199150, 32.662167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476902, 34.826336, 32.622463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504273, 0.275704, -0.818349,
		0.790098, 0.235145, 0.566085,
		0.348503, -0.932038, -0.099256,
		38.581451, 34.546726, 32.592686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037800, 35.237976, 32.530369>,  <38.337502, 35.199150, 32.662167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037800, 35.237976, 32.530369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.945904, 34.874649, 32.390549>,  <38.890766, 34.656654, 32.306656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.945904, 34.874649, 32.390549>,  <39.037800, 35.237976, 32.530369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945904, 34.874649, 32.390549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594238, 0.153524, -0.789501,
		0.770780, -0.389091, 0.504486,
		-0.229737, -0.908316, -0.349546,
		38.876984, 34.602154, 32.285686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543888, 35.085663, 32.006256>,  <39.037800, 35.237976, 32.530369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543888, 35.085663, 32.006256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260189, 34.812637, 31.935751>,  <39.089970, 34.648823, 31.893448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260189, 34.812637, 31.935751>,  <39.543888, 35.085663, 32.006256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260189, 34.812637, 31.935751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298379, -0.064134, -0.952290,
		0.638699, -0.728003, 0.249151,
		-0.709249, -0.682568, -0.176259,
		39.047413, 34.607868, 31.882874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886295, 34.514011, 31.590147>,  <39.543888, 35.085663, 32.006256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886295, 34.514011, 31.590147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489826, 34.502495, 31.538376>,  <39.251945, 34.495586, 31.507313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489826, 34.502495, 31.538376>,  <39.886295, 34.514011, 31.590147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489826, 34.502495, 31.538376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131562, -0.092056, -0.987024,
		0.016501, -0.995337, 0.095030,
		-0.991171, -0.028789, -0.129429,
		39.192474, 34.493858, 31.499546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784340, 34.012028, 31.193142>,  <39.886295, 34.514011, 31.590147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784340, 34.012028, 31.193142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459660, 34.236748, 31.129238>,  <39.264851, 34.371578, 31.090897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459660, 34.236748, 31.129238>,  <39.784340, 34.012028, 31.193142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459660, 34.236748, 31.129238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172907, -0.030135, -0.984477,
		-0.557894, -0.826724, -0.072679,
		-0.811701, 0.561800, -0.159759,
		39.216148, 34.405289, 31.081310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445026, 33.697121, 30.694857>,  <39.784340, 34.012028, 31.193142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445026, 33.697121, 30.694857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265656, 34.054066, 30.674438>,  <39.158031, 34.268234, 30.662188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265656, 34.054066, 30.674438>,  <39.445026, 33.697121, 30.694857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265656, 34.054066, 30.674438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152819, 0.020276, -0.988046,
		-0.880659, -0.450866, -0.145462,
		-0.448426, 0.892361, -0.051044,
		39.131126, 34.321774, 30.659124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255688, 33.749165, 30.031282>,  <39.445026, 33.697121, 30.694857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255688, 33.749165, 30.031282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.187092, 34.131718, 30.125883>,  <39.145935, 34.361248, 30.182644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.187092, 34.131718, 30.125883>,  <39.255688, 33.749165, 30.031282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187092, 34.131718, 30.125883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178734, 0.266274, -0.947181,
		-0.968837, -0.120162, -0.216601,
		-0.171491, 0.956378, 0.236499,
		39.135643, 34.418633, 30.196833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681065, 33.880970, 29.722063>,  <39.255688, 33.749165, 30.031282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681065, 33.880970, 29.722063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875351, 34.227440, 29.769098>,  <38.991924, 34.435322, 29.797319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875351, 34.227440, 29.769098>,  <38.681065, 33.880970, 29.722063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875351, 34.227440, 29.769098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002378, 0.133214, -0.991084,
		-0.874113, 0.481667, 0.062644,
		0.485717, 0.866171, 0.117589,
		39.021065, 34.487289, 29.804375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.307945, 34.406570, 29.372616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670856, 34.568531, 29.418058>,  <38.888603, 34.665707, 29.445324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670856, 34.568531, 29.418058>,  <38.307945, 34.406570, 29.372616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670856, 34.568531, 29.418058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031243, 0.204508, -0.978366,
		-0.419373, 0.891198, 0.172895,
		0.907276, 0.404899, 0.113609,
		38.943039, 34.690002, 29.452141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207092, 35.046764, 29.020983>,  <38.307945, 34.406570, 29.372616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207092, 35.046764, 29.020983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606361, 35.038212, 29.043619>,  <38.845921, 35.033081, 29.057201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606361, 35.038212, 29.043619>,  <38.207092, 35.046764, 29.020983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606361, 35.038212, 29.043619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060139, 0.249213, -0.966580,
		0.006561, 0.968213, 0.250042,
		0.998168, -0.021379, 0.056593,
		38.905811, 35.031799, 29.060596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503521, 35.669960, 28.881006>,  <38.207092, 35.046764, 29.020983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503521, 35.669960, 28.881006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.827789, 35.449177, 28.802872>,  <39.022350, 35.316708, 28.755991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.827789, 35.449177, 28.802872>,  <38.503521, 35.669960, 28.881006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827789, 35.449177, 28.802872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082289, 0.437714, -0.895341,
		0.579694, 0.709750, 0.400262,
		0.810669, -0.551961, -0.195335,
		39.070992, 35.283588, 28.744270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074612, 36.103256, 28.656099>,  <38.503521, 35.669960, 28.881006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074612, 36.103256, 28.656099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131134, 35.732788, 28.516251>,  <39.165047, 35.510506, 28.432343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131134, 35.732788, 28.516251>,  <39.074612, 36.103256, 28.656099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131134, 35.732788, 28.516251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128466, 0.367332, -0.921175,
		0.981595, 0.085252, 0.170888,
		0.141304, -0.926175, -0.349619,
		39.173527, 35.454937, 28.411366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549862, 36.199863, 28.166233>,  <39.074612, 36.103256, 28.656099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549862, 36.199863, 28.166233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400166, 35.836311, 28.092604>,  <39.310349, 35.618179, 28.048426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400166, 35.836311, 28.092604>,  <39.549862, 36.199863, 28.166233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400166, 35.836311, 28.092604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005717, 0.200756, -0.979625,
		0.927314, -0.365563, -0.080327,
		-0.374241, -0.908879, -0.184074,
		39.287895, 35.563648, 28.037382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847466, 35.907322, 27.503168>,  <39.549862, 36.199863, 28.166233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847466, 35.907322, 27.503168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.527958, 35.670509, 27.546007>,  <39.336254, 35.528423, 27.571711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.527958, 35.670509, 27.546007>,  <39.847466, 35.907322, 27.503168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527958, 35.670509, 27.546007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111337, -0.029482, -0.993345,
		0.591247, -0.805377, -0.042366,
		-0.798768, -0.592030, 0.107100,
		39.288326, 35.492901, 27.578136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954830, 35.270344, 27.129906>,  <39.847466, 35.907322, 27.503168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954830, 35.270344, 27.129906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561272, 35.303463, 27.193268>,  <39.325138, 35.323334, 27.231285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561272, 35.303463, 27.193268>,  <39.954830, 35.270344, 27.129906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561272, 35.303463, 27.193268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168210, -0.129244, -0.977242,
		-0.060432, -0.988151, 0.141089,
		-0.983897, 0.082789, 0.158406,
		39.266102, 35.328300, 27.240789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658615, 34.821972, 26.688200>,  <39.954830, 35.270344, 27.129906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658615, 34.821972, 26.688200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327225, 35.033810, 26.761038>,  <39.128391, 35.160912, 26.804741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327225, 35.033810, 26.761038>,  <39.658615, 34.821972, 26.688200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327225, 35.033810, 26.761038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228718, -0.023171, -0.973217,
		-0.511193, -0.847933, 0.140325,
		-0.828474, 0.529597, 0.182093,
		39.078682, 35.192688, 26.815666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033981, 34.537418, 26.327927>,  <39.658615, 34.821972, 26.688200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033981, 34.537418, 26.327927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929989, 34.919346, 26.385527>,  <38.867596, 35.148502, 26.420086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929989, 34.919346, 26.385527>,  <39.033981, 34.537418, 26.327927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929989, 34.919346, 26.385527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175554, 0.099905, -0.979388,
		-0.949522, -0.279898, 0.141649,
		-0.259977, 0.954817, 0.143999,
		38.851997, 35.205791, 26.428726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494461, 34.655125, 26.012201>,  <39.033981, 34.537418, 26.327927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494461, 34.655125, 26.012201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657581, 35.019539, 26.036572>,  <38.755451, 35.238190, 26.051193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657581, 35.019539, 26.036572>,  <38.494461, 34.655125, 26.012201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657581, 35.019539, 26.036572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083468, 0.029250, -0.996081,
		-0.909249, 0.411285, -0.064114,
		0.407798, 0.911037, 0.060925,
		38.779922, 35.292850, 26.054850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176125, 35.000778, 25.457273>,  <38.494461, 34.655125, 26.012201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176125, 35.000778, 25.457273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495930, 35.219017, 25.557756>,  <38.687813, 35.349960, 25.618046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495930, 35.219017, 25.557756>,  <38.176125, 35.000778, 25.457273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495930, 35.219017, 25.557756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101734, 0.289176, -0.951855,
		-0.591972, 0.786576, 0.175693,
		0.799512, 0.545597, 0.251205,
		38.735783, 35.382698, 25.633118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168079, 35.634113, 25.030277>,  <38.176125, 35.000778, 25.457273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168079, 35.634113, 25.030277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547527, 35.583755, 25.146393>,  <38.775196, 35.553539, 25.216063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547527, 35.583755, 25.146393>,  <38.168079, 35.634113, 25.030277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547527, 35.583755, 25.146393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316007, 0.330460, -0.889345,
		0.016037, 0.935385, 0.353266,
		0.948621, -0.125897, 0.290289,
		38.832115, 35.545986, 25.233479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446918, 36.074512, 24.610718>,  <38.168079, 35.634113, 25.030277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446918, 36.074512, 24.610718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778687, 35.897614, 24.747236>,  <38.977749, 35.791473, 24.829147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778687, 35.897614, 24.747236>,  <38.446918, 36.074512, 24.610718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778687, 35.897614, 24.747236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465063, 0.208172, -0.860454,
		0.309485, 0.872400, 0.378335,
		0.829419, -0.442247, 0.341295,
		39.027512, 35.764938, 24.849625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035915, 36.581394, 24.510044>,  <38.446918, 36.074512, 24.610718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035915, 36.581394, 24.510044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191494, 36.212898, 24.512768>,  <39.284840, 35.991802, 24.514402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191494, 36.212898, 24.512768>,  <39.035915, 36.581394, 24.510044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191494, 36.212898, 24.512768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525297, 0.215693, -0.823128,
		0.756826, 0.323728, 0.567815,
		0.388943, -0.921237, 0.006811,
		39.308178, 35.936527, 24.514811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724216, 36.656174, 24.330608>,  <39.035915, 36.581394, 24.510044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724216, 36.656174, 24.330608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.677853, 36.262623, 24.276129>,  <39.650036, 36.026493, 24.243441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.677853, 36.262623, 24.276129>,  <39.724216, 36.656174, 24.330608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677853, 36.262623, 24.276129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519655, 0.056791, -0.852487,
		0.846478, -0.169583, 0.504695,
		-0.115906, -0.983878, -0.136197,
		39.643082, 35.967461, 24.235270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421810, 36.372025, 24.253532>,  <39.724216, 36.656174, 24.330608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421810, 36.372025, 24.253532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.154175, 36.116295, 24.101959>,  <39.993595, 35.962856, 24.011015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.154175, 36.116295, 24.101959>,  <40.421810, 36.372025, 24.253532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154175, 36.116295, 24.101959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495664, -0.003966, -0.868505,
		0.553752, -0.768929, 0.319543,
		-0.669086, -0.639322, -0.378934,
		39.953449, 35.924500, 23.988279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793201, 35.992893, 23.840698>,  <40.421810, 36.372025, 24.253532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793201, 35.992893, 23.840698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.422348, 35.894924, 23.727247>,  <40.199837, 35.836143, 23.659176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.422348, 35.894924, 23.727247>,  <40.793201, 35.992893, 23.840698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422348, 35.894924, 23.727247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313048, -0.090157, -0.945448,
		0.205992, -0.965342, 0.160260,
		-0.927129, -0.244924, -0.283627,
		40.144211, 35.821445, 23.642159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828308, 35.320812, 23.444515>,  <40.793201, 35.992893, 23.840698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828308, 35.320812, 23.444515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511673, 35.539352, 23.335054>,  <40.321690, 35.670475, 23.269379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511673, 35.539352, 23.335054>,  <40.828308, 35.320812, 23.444515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511673, 35.539352, 23.335054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259366, -0.105075, -0.960046,
		-0.553276, -0.830940, -0.058528,
		-0.791591, 0.546350, -0.273653,
		40.274197, 35.703259, 23.252958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591042, 34.935364, 22.884529>,  <40.828308, 35.320812, 23.444515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591042, 34.935364, 22.884529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433479, 35.302429, 22.863636>,  <40.338943, 35.522667, 22.851101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433479, 35.302429, 22.863636>,  <40.591042, 34.935364, 22.884529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433479, 35.302429, 22.863636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022606, -0.047138, -0.998633,
		-0.918872, -0.394549, -0.002177,
		-0.393907, 0.917665, -0.052233,
		40.315308, 35.577728, 22.847965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973553, 34.809566, 22.511318>,  <40.591042, 34.935364, 22.884529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973553, 34.809566, 22.511318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075577, 35.192951, 22.460274>,  <40.136791, 35.422981, 22.429647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075577, 35.192951, 22.460274>,  <39.973553, 34.809566, 22.511318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075577, 35.192951, 22.460274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088250, -0.108348, -0.990188,
		-0.962888, 0.263824, 0.056949,
		0.255065, 0.958466, -0.127610,
		40.152096, 35.480492, 22.421991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519348, 34.959438, 22.005144>,  <39.973553, 34.809566, 22.511318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519348, 34.959438, 22.005144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802795, 35.241531, 21.996098>,  <39.972862, 35.410786, 21.990669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802795, 35.241531, 21.996098>,  <39.519348, 34.959438, 22.005144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802795, 35.241531, 21.996098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015357, -0.047457, -0.998755,
		-0.705428, 0.707386, -0.044459,
		0.708615, 0.705233, -0.022614,
		40.015381, 35.453102, 21.989313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246712, 35.531761, 21.520422>,  <39.519348, 34.959438, 22.005144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246712, 35.531761, 21.520422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643650, 35.569202, 21.552654>,  <39.881813, 35.591667, 21.571993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643650, 35.569202, 21.552654>,  <39.246712, 35.531761, 21.520422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643650, 35.569202, 21.552654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075498, 0.056623, -0.995537,
		-0.097744, 0.993999, 0.049123,
		0.992344, 0.093599, 0.080579,
		39.941353, 35.597282, 21.576828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357033, 35.523361, 20.871479>,  <39.246712, 35.531761, 21.520422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357033, 35.523361, 20.871479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.706322, 35.604500, 21.048717>,  <39.915897, 35.653183, 21.155060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.706322, 35.604500, 21.048717>,  <39.357033, 35.523361, 20.871479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706322, 35.604500, 21.048717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388896, 0.257859, -0.884460,
		-0.293663, 0.944650, 0.146283,
		0.873225, 0.202844, 0.443094,
		39.968288, 35.665352, 21.181646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488041, 36.152821, 20.739704>,  <39.357033, 35.523361, 20.871479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488041, 36.152821, 20.739704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.823429, 35.942371, 20.796499>,  <40.024662, 35.816101, 20.830576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.823429, 35.942371, 20.796499>,  <39.488041, 36.152821, 20.739704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823429, 35.942371, 20.796499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238096, 0.119321, -0.963884,
		0.490181, 0.841995, 0.225316,
		0.838470, -0.526125, 0.141987,
		40.074970, 35.784534, 20.839096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545479, 36.935730, 20.984606>,  <39.488041, 36.152821, 20.739704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545479, 36.935730, 20.984606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325058, 37.185814, 20.763535>,  <39.192806, 37.335865, 20.630892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325058, 37.185814, 20.763535>,  <39.545479, 36.935730, 20.984606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325058, 37.185814, 20.763535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526154, 0.253746, 0.811649,
		0.647691, 0.738056, 0.189130,
		-0.551052, 0.625209, -0.552680,
		39.159744, 37.373375, 20.597731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585567, 37.601013, 21.306778>,  <39.545479, 36.935730, 20.984606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585567, 37.601013, 21.306778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.252632, 37.576851, 21.086390>,  <39.052872, 37.562351, 20.954157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.252632, 37.576851, 21.086390>,  <39.585567, 37.601013, 21.306778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252632, 37.576851, 21.086390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550297, 0.208934, 0.808406,
		0.066282, 0.976062, -0.207145,
		-0.832334, -0.060408, -0.550973,
		39.002934, 37.558727, 20.921097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236973, 38.213573, 21.536926>,  <39.585567, 37.601013, 21.306778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236973, 38.213573, 21.536926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975399, 37.949097, 21.389854>,  <38.818455, 37.790409, 21.301611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975399, 37.949097, 21.389854>,  <39.236973, 38.213573, 21.536926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975399, 37.949097, 21.389854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579978, 0.126069, 0.804818,
		-0.485788, 0.739547, -0.465920,
		-0.653938, -0.661194, -0.367678,
		38.779217, 37.750740, 21.279551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669250, 38.478180, 21.723646>,  <39.236973, 38.213573, 21.536926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669250, 38.478180, 21.723646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.565384, 38.099457, 21.647627>,  <38.503063, 37.872223, 21.602015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.565384, 38.099457, 21.647627>,  <38.669250, 38.478180, 21.723646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565384, 38.099457, 21.647627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591206, 0.000254, 0.806521,
		-0.763576, 0.321786, -0.559827,
		-0.259669, -0.946813, -0.190048,
		38.487484, 37.815414, 21.590612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948879, 38.547062, 21.821924>,  <38.669250, 38.478180, 21.723646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948879, 38.547062, 21.821924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035774, 38.157345, 21.845819>,  <38.087914, 37.923515, 21.860157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035774, 38.157345, 21.845819>,  <37.948879, 38.547062, 21.821924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035774, 38.157345, 21.845819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520718, -0.063908, 0.851333,
		-0.825627, -0.216050, -0.521213,
		0.217240, -0.974288, 0.059737,
		38.100945, 37.865059, 21.863741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286564, 38.269657, 21.933996>,  <37.948879, 38.547062, 21.821924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286564, 38.269657, 21.933996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605900, 38.067593, 22.065123>,  <37.797501, 37.946354, 22.143799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605900, 38.067593, 22.065123>,  <37.286564, 38.269657, 21.933996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605900, 38.067593, 22.065123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331972, 0.084999, 0.939452,
		-0.502442, -0.858827, -0.099843,
		0.798340, -0.505165, 0.327814,
		37.845402, 37.916042, 22.163467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966900, 37.818581, 22.426340>,  <37.286564, 38.269657, 21.933996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966900, 37.818581, 22.426340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353981, 37.778656, 22.518934>,  <37.586231, 37.754704, 22.574492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353981, 37.778656, 22.518934>,  <36.966900, 37.818581, 22.426340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353981, 37.778656, 22.518934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239575, -0.078431, 0.967705,
		-0.078431, -0.991911, -0.099810,
		-0.967705, 0.099810, -0.231486,
		37.644291, 37.748714, 22.588379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042721, 37.270164, 22.878389>,  <36.966900, 37.818581, 22.426340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042721, 37.270164, 22.878389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369816, 37.486660, 22.956743>,  <37.566071, 37.616558, 23.003756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369816, 37.486660, 22.956743>,  <37.042721, 37.270164, 22.878389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369816, 37.486660, 22.956743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122480, -0.168904, 0.977993,
		0.562412, -0.823731, -0.071828,
		0.817735, 0.541238, 0.195884,
		37.615135, 37.649033, 23.015509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486309, 36.899120, 23.350857>,  <37.042721, 37.270164, 22.878389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486309, 36.899120, 23.350857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621548, 37.270779, 23.410696>,  <37.702690, 37.493774, 23.446600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621548, 37.270779, 23.410696>,  <37.486309, 36.899120, 23.350857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621548, 37.270779, 23.410696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054030, -0.139533, 0.988742,
		0.939560, -0.342372, 0.003027,
		0.338095, 0.929146, 0.149598,
		37.722977, 37.549522, 23.455576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135395, 36.847118, 23.776320>,  <37.486309, 36.899120, 23.350857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135395, 36.847118, 23.776320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950668, 37.199520, 23.817413>,  <37.839832, 37.410961, 23.842070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950668, 37.199520, 23.817413>,  <38.135395, 36.847118, 23.776320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950668, 37.199520, 23.817413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092025, -0.162794, 0.982359,
		0.882186, 0.444220, 0.156256,
		-0.461821, 0.881003, 0.102735,
		37.812122, 37.463821, 23.848234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467636, 37.202515, 24.239628>,  <38.135395, 36.847118, 23.776320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467636, 37.202515, 24.239628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.116146, 37.392273, 24.260757>,  <37.905251, 37.506126, 24.273436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.116146, 37.392273, 24.260757>,  <38.467636, 37.202515, 24.239628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116146, 37.392273, 24.260757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008109, -0.095819, 0.995366,
		0.477256, 0.875083, 0.080352,
		-0.878727, 0.474393, 0.052826,
		37.852528, 37.534592, 24.276606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452686, 37.503143, 24.889282>,  <38.467636, 37.202515, 24.239628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452686, 37.503143, 24.889282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062016, 37.504910, 24.803411>,  <37.827614, 37.505970, 24.751888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062016, 37.504910, 24.803411>,  <38.452686, 37.503143, 24.889282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062016, 37.504910, 24.803411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209077, -0.247367, 0.946095,
		-0.048923, 0.968912, 0.242521,
		-0.976675, 0.004420, -0.214679,
		37.769012, 37.506237, 24.739008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164482, 37.891502, 25.532373>,  <38.452686, 37.503143, 24.889282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164482, 37.891502, 25.532373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879791, 37.686165, 25.340570>,  <37.708977, 37.562962, 25.225489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879791, 37.686165, 25.340570>,  <38.164482, 37.891502, 25.532373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879791, 37.686165, 25.340570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376617, -0.297356, 0.877348,
		-0.592967, 0.805019, 0.018300,
		-0.711723, -0.513346, -0.479506,
		37.666275, 37.532162, 25.196718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532295, 38.103249, 25.877045>,  <38.164482, 37.891502, 25.532373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532295, 38.103249, 25.877045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482044, 37.745796, 25.704700>,  <37.451893, 37.531326, 25.601294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482044, 37.745796, 25.704700>,  <37.532295, 38.103249, 25.877045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482044, 37.745796, 25.704700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504620, -0.316364, 0.803289,
		-0.854153, 0.318335, -0.411201,
		-0.125626, -0.893631, -0.430862,
		37.444355, 37.477707, 25.575441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814293, 37.865150, 25.975388>,  <37.532295, 38.103249, 25.877045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814293, 37.865150, 25.975388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012608, 37.521122, 25.927263>,  <37.131596, 37.314705, 25.898388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012608, 37.521122, 25.927263>,  <36.814293, 37.865150, 25.975388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012608, 37.521122, 25.927263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526788, -0.407977, 0.745688,
		-0.690428, -0.306324, -0.655344,
		0.495787, -0.860070, -0.120311,
		37.161343, 37.263100, 25.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293129, 37.242599, 26.105635>,  <36.814293, 37.865150, 25.975388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293129, 37.242599, 26.105635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634632, 37.034634, 26.116877>,  <36.839535, 36.909855, 26.123621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634632, 37.034634, 26.116877>,  <36.293129, 37.242599, 26.105635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634632, 37.034634, 26.116877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384692, -0.593495, 0.706948,
		-0.350870, -0.614374, -0.706707,
		0.853758, -0.519912, 0.028105,
		36.890759, 36.878658, 26.125309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088615, 36.608826, 26.277668>,  <36.293129, 37.242599, 26.105635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088615, 36.608826, 26.277668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466682, 36.651443, 26.401155>,  <36.693523, 36.677013, 26.475248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466682, 36.651443, 26.401155>,  <36.088615, 36.608826, 26.277668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466682, 36.651443, 26.401155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216010, -0.505032, 0.835633,
		0.244946, -0.856499, -0.454325,
		0.945167, 0.106547, 0.308718,
		36.750233, 36.683407, 26.493771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275295, 35.928276, 26.512907>,  <36.088615, 36.608826, 26.277668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275295, 35.928276, 26.512907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552933, 36.158474, 26.685894>,  <36.719517, 36.296593, 26.789686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552933, 36.158474, 26.685894>,  <36.275295, 35.928276, 26.512907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552933, 36.158474, 26.685894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268348, -0.350607, 0.897253,
		0.667995, -0.738834, -0.088922,
		0.694098, 0.575499, 0.432469,
		36.761162, 36.331123, 26.815634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669624, 35.533108, 26.888327>,  <36.275295, 35.928276, 26.512907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669624, 35.533108, 26.888327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671673, 35.887177, 27.074423>,  <36.672901, 36.099617, 27.186081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671673, 35.887177, 27.074423>,  <36.669624, 35.533108, 26.888327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671673, 35.887177, 27.074423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255715, -0.448618, 0.856359,
		0.966739, -0.123351, 0.224055,
		0.005118, 0.885170, 0.465240,
		36.673210, 36.152729, 27.213995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996223, 35.411457, 27.520891>,  <36.669624, 35.533108, 26.888327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996223, 35.411457, 27.520891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805367, 35.757755, 27.581320>,  <36.690853, 35.965534, 27.617577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805367, 35.757755, 27.581320>,  <36.996223, 35.411457, 27.520891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805367, 35.757755, 27.581320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190454, -0.269680, 0.943928,
		0.857939, 0.421619, 0.293560,
		-0.477146, 0.865743, 0.151070,
		36.662224, 36.017479, 27.626640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.528728, 33.342228, 32.049507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.637707, 33.722969, 32.105728>,  <38.703094, 33.951412, 32.139462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.637707, 33.722969, 32.105728>,  <38.528728, 33.342228, 32.049507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637707, 33.722969, 32.105728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025600, -0.153195, 0.987864,
		0.961831, -0.265539, -0.066105,
		0.272444, 0.951851, 0.140550,
		38.719440, 34.008526, 32.147892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085171, 33.358482, 32.469604>,  <38.528728, 33.342228, 32.049507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085171, 33.358482, 32.469604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935356, 33.726562, 32.515114>,  <38.845467, 33.947411, 32.542419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935356, 33.726562, 32.515114>,  <39.085171, 33.358482, 32.469604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935356, 33.726562, 32.515114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115742, -0.075347, 0.990418,
		0.919959, 0.384118, -0.078286,
		-0.374538, 0.920205, 0.113774,
		38.822994, 34.002625, 32.549248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388893, 33.589340, 33.072582>,  <39.085171, 33.358482, 32.469604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388893, 33.589340, 33.072582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.084583, 33.838017, 32.998047>,  <38.901997, 33.987225, 32.953327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.084583, 33.838017, 32.998047>,  <39.388893, 33.589340, 33.072582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084583, 33.838017, 32.998047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259364, -0.028040, 0.965373,
		0.594943, 0.782757, 0.182577,
		-0.760772, 0.621695, -0.186336,
		38.856350, 34.024525, 32.942146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428165, 34.127777, 33.669636>,  <39.388893, 33.589340, 33.072582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428165, 34.127777, 33.669636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.057438, 34.121613, 33.519558>,  <38.835003, 34.117916, 33.429512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.057438, 34.121613, 33.519558>,  <39.428165, 34.127777, 33.669636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057438, 34.121613, 33.519558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375286, 0.072715, 0.924052,
		0.013044, 0.997234, -0.073176,
		-0.926817, -0.015409, -0.375196,
		38.779392, 34.116989, 33.406998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044689, 34.585129, 34.029560>,  <39.428165, 34.127777, 33.669636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044689, 34.585129, 34.029560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744965, 34.368156, 33.877609>,  <38.565128, 34.237972, 33.786438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744965, 34.368156, 33.877609>,  <39.044689, 34.585129, 34.029560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744965, 34.368156, 33.877609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408334, -0.073144, 0.909897,
		-0.521339, 0.836912, -0.166684,
		-0.749312, -0.542428, -0.379873,
		38.520172, 34.205429, 33.763649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460670, 34.848656, 34.323685>,  <39.044689, 34.585129, 34.029560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460670, 34.848656, 34.323685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333664, 34.491325, 34.196465>,  <38.257462, 34.276928, 34.120132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333664, 34.491325, 34.196465>,  <38.460670, 34.848656, 34.323685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333664, 34.491325, 34.196465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470417, -0.142839, 0.870807,
		-0.823343, 0.426110, -0.374882,
		-0.317512, -0.893324, -0.318055,
		38.238411, 34.223328, 34.101048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716099, 34.791183, 34.415695>,  <38.460670, 34.848656, 34.323685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716099, 34.791183, 34.415695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891994, 34.432114, 34.427078>,  <37.997532, 34.216671, 34.433910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891994, 34.432114, 34.427078>,  <37.716099, 34.791183, 34.415695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891994, 34.432114, 34.427078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404769, -0.169795, 0.898516,
		-0.801741, -0.406637, -0.438016,
		0.439743, -0.897672, 0.028462,
		38.023918, 34.162811, 34.435616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238266, 34.448025, 34.769245>,  <37.716099, 34.791183, 34.415695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238266, 34.448025, 34.769245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553074, 34.201256, 34.770073>,  <37.741959, 34.053196, 34.770569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553074, 34.201256, 34.770073>,  <37.238266, 34.448025, 34.769245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553074, 34.201256, 34.770073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110699, -0.137925, 0.984237,
		-0.606913, -0.774844, -0.176842,
		0.787021, -0.616923, 0.002066,
		37.789181, 34.016178, 34.770691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075001, 33.940014, 35.208916>,  <37.238266, 34.448025, 34.769245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075001, 33.940014, 35.208916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474300, 33.950413, 35.187675>,  <37.713879, 33.956650, 35.174931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474300, 33.950413, 35.187675>,  <37.075001, 33.940014, 35.208916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474300, 33.950413, 35.187675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052846, 0.010559, 0.998547,
		0.026535, -0.999606, 0.009166,
		0.998250, 0.026012, -0.053105,
		37.773777, 33.958210, 35.171745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307186, 33.470680, 35.713097>,  <37.075001, 33.940014, 35.208916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307186, 33.470680, 35.713097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.603275, 33.732590, 35.651993>,  <37.780930, 33.889736, 35.615330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.603275, 33.732590, 35.651993>,  <37.307186, 33.470680, 35.713097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603275, 33.732590, 35.651993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221279, -0.022704, 0.974946,
		0.634906, -0.755480, -0.161695,
		0.740223, 0.654779, -0.152757,
		37.825344, 33.929024, 35.606167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792992, 33.186001, 36.129826>,  <37.307186, 33.470680, 35.713097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792992, 33.186001, 36.129826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871090, 33.573143, 36.066414>,  <37.917950, 33.805428, 36.028366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871090, 33.573143, 36.066414>,  <37.792992, 33.186001, 36.129826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871090, 33.573143, 36.066414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017301, 0.158212, 0.987254,
		0.980601, -0.195501, 0.014145,
		0.195247, 0.967857, -0.158525,
		37.929665, 33.863499, 36.018856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150627, 33.288025, 36.705311>,  <37.792992, 33.186001, 36.129826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150627, 33.288025, 36.705311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068172, 33.653976, 36.566460>,  <38.018700, 33.873547, 36.483147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068172, 33.653976, 36.566460>,  <38.150627, 33.288025, 36.705311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068172, 33.653976, 36.566460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107455, 0.373770, 0.921276,
		0.972606, 0.152606, -0.175356,
		-0.206135, 0.914881, -0.347133,
		38.006332, 33.928440, 36.462318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635029, 33.815418, 36.966980>,  <38.150627, 33.288025, 36.705311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635029, 33.815418, 36.966980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298527, 34.017765, 36.890678>,  <38.096626, 34.139172, 36.844898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298527, 34.017765, 36.890678>,  <38.635029, 33.815418, 36.966980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298527, 34.017765, 36.890678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028881, 0.394381, 0.918493,
		0.539863, 0.767180, -0.346386,
		-0.841257, 0.505864, -0.190755,
		38.046150, 34.169525, 36.833450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629902, 34.454433, 37.391846>,  <38.635029, 33.815418, 36.966980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629902, 34.454433, 37.391846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258152, 34.346889, 37.290665>,  <38.035103, 34.282364, 37.229954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258152, 34.346889, 37.290665>,  <38.629902, 34.454433, 37.391846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258152, 34.346889, 37.290665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312971, 0.210493, 0.926144,
		-0.195756, 0.939898, -0.279771,
		-0.929370, -0.268858, -0.252955,
		37.979340, 34.266232, 37.214779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976582, 34.703541, 36.729485>,  <38.629902, 34.454433, 37.391846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976582, 34.703541, 36.729485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245750, 34.941414, 36.905453>,  <39.407249, 35.084137, 37.011032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245750, 34.941414, 36.905453>,  <38.976582, 34.703541, 36.729485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245750, 34.941414, 36.905453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054599, 0.633022, -0.772206,
		-0.737700, 0.495613, 0.458441,
		0.672918, 0.594686, 0.439920,
		39.447624, 35.119820, 37.037430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766361, 35.367737, 36.701725>,  <38.976582, 34.703541, 36.729485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766361, 35.367737, 36.701725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.154316, 35.444794, 36.761330>,  <39.387089, 35.491028, 36.797092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.154316, 35.444794, 36.761330>,  <38.766361, 35.367737, 36.701725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154316, 35.444794, 36.761330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020845, 0.675261, -0.737284,
		-0.242655, 0.711977, 0.658944,
		0.969889, 0.192641, 0.149014,
		39.445282, 35.502586, 36.806034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779522, 36.099976, 36.639610>,  <38.766361, 35.367737, 36.701725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779522, 36.099976, 36.639610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146328, 35.955002, 36.573021>,  <39.366413, 35.868015, 36.533066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146328, 35.955002, 36.573021>,  <38.779522, 36.099976, 36.639610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146328, 35.955002, 36.573021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163241, 0.721903, -0.672465,
		0.363908, 0.589487, 0.721163,
		0.917019, -0.362439, -0.166478,
		39.421432, 35.846272, 36.523079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268612, 36.595970, 36.632248>,  <38.779522, 36.099976, 36.639610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268612, 36.595970, 36.632248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449696, 36.319725, 36.406643>,  <39.558346, 36.153976, 36.271282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449696, 36.319725, 36.406643>,  <39.268612, 36.595970, 36.632248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449696, 36.319725, 36.406643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153248, 0.683389, -0.713789,
		0.878392, 0.236703, 0.415210,
		0.452706, -0.690616, -0.564009,
		39.585506, 36.112541, 36.237442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728859, 37.008789, 36.369350>,  <39.268612, 36.595970, 36.632248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728859, 37.008789, 36.369350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741028, 36.677090, 36.146130>,  <39.748329, 36.478069, 36.012199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741028, 36.677090, 36.146130>,  <39.728859, 37.008789, 36.369350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741028, 36.677090, 36.146130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275066, 0.543695, -0.792928,
		0.960944, -0.129377, 0.244639,
		0.030422, -0.829251, -0.558047,
		39.750153, 36.428314, 35.978714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248169, 37.144588, 35.941170>,  <39.728859, 37.008789, 36.369350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248169, 37.144588, 35.941170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060165, 36.847145, 35.750954>,  <39.947365, 36.668678, 35.636826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060165, 36.847145, 35.750954>,  <40.248169, 37.144588, 35.941170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060165, 36.847145, 35.750954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276329, 0.387711, -0.879388,
		0.838295, -0.544721, 0.023256,
		-0.470004, -0.743613, -0.475538,
		39.919163, 36.624062, 35.608292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674782, 36.727852, 35.424934>,  <40.248169, 37.144588, 35.941170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674782, 36.727852, 35.424934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306526, 36.632626, 35.301155>,  <40.085575, 36.575489, 35.226887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306526, 36.632626, 35.301155>,  <40.674782, 36.727852, 35.424934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306526, 36.632626, 35.301155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275835, 0.164313, -0.947057,
		0.276310, -0.957248, -0.085605,
		-0.920635, -0.238068, -0.309444,
		40.030334, 36.561207, 35.208321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750141, 36.322845, 34.697052>,  <40.674782, 36.727852, 35.424934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750141, 36.322845, 34.697052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.368999, 36.442883, 34.714973>,  <40.140312, 36.514904, 34.725727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.368999, 36.442883, 34.714973>,  <40.750141, 36.322845, 34.697052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368999, 36.442883, 34.714973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012286, 0.109388, -0.993923,
		-0.303166, -0.947619, -0.100545,
		-0.952859, 0.300088, 0.044805,
		40.083141, 36.532909, 34.728416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342930, 35.940201, 34.111023>,  <40.750141, 36.322845, 34.697052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342930, 35.940201, 34.111023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152950, 36.278656, 34.207752>,  <40.038963, 36.481728, 34.265789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152950, 36.278656, 34.207752>,  <40.342930, 35.940201, 34.111023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152950, 36.278656, 34.207752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078578, 0.232917, -0.969317,
		-0.876500, -0.479375, -0.044135,
		-0.474946, 0.846138, 0.241820,
		40.010468, 36.532497, 34.280296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830883, 36.075115, 33.612652>,  <40.342930, 35.940201, 34.111023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830883, 36.075115, 33.612652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831772, 36.437782, 33.781387>,  <39.832306, 36.655380, 33.882629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831772, 36.437782, 33.781387>,  <39.830883, 36.075115, 33.612652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831772, 36.437782, 33.781387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031379, 0.421700, -0.906192,
		-0.999505, -0.011223, 0.029387,
		0.002222, 0.906666, 0.421843,
		39.832439, 36.709782, 33.907940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292282, 36.449509, 33.200096>,  <39.830883, 36.075115, 33.612652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292282, 36.449509, 33.200096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551399, 36.697979, 33.376503>,  <39.706871, 36.847061, 33.482349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551399, 36.697979, 33.376503>,  <39.292282, 36.449509, 33.200096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551399, 36.697979, 33.376503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091317, 0.511421, -0.854465,
		-0.756320, 0.593792, 0.274573,
		0.647797, 0.621176, 0.441021,
		39.745739, 36.884331, 33.508808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030247, 37.170776, 33.078754>,  <39.292282, 36.449509, 33.200096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030247, 37.170776, 33.078754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422920, 37.189011, 33.152752>,  <39.658524, 37.199951, 33.197151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422920, 37.189011, 33.152752>,  <39.030247, 37.170776, 33.078754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422920, 37.189011, 33.152752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121821, 0.596383, -0.793402,
		-0.146498, 0.801404, 0.579904,
		0.981681, 0.045587, 0.184997,
		39.717426, 37.202686, 33.208252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145939, 37.864864, 32.792538>,  <39.030247, 37.170776, 33.078754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145939, 37.864864, 32.792538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503017, 37.688805, 32.831253>,  <39.717262, 37.583168, 32.854481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503017, 37.688805, 32.831253>,  <39.145939, 37.864864, 32.792538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503017, 37.688805, 32.831253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263941, 0.336547, -0.903920,
		0.365289, 0.832468, 0.416607,
		0.892692, -0.440152, 0.096785,
		39.770824, 37.556759, 32.860291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690273, 38.370209, 32.568253>,  <39.145939, 37.864864, 32.792538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690273, 38.370209, 32.568253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.818398, 37.994045, 32.522606>,  <39.895271, 37.768345, 32.495216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.818398, 37.994045, 32.522606>,  <39.690273, 38.370209, 32.568253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818398, 37.994045, 32.522606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263481, 0.204152, -0.942815,
		0.909932, 0.271929, 0.313174,
		0.320313, -0.940413, -0.114116,
		39.914490, 37.711922, 32.488373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071682, 39.018814, 32.623047>,  <39.690273, 38.370209, 32.568253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071682, 39.018814, 32.623047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733990, 39.232346, 32.603870>,  <39.531376, 39.360466, 32.592365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733990, 39.232346, 32.603870>,  <40.071682, 39.018814, 32.623047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733990, 39.232346, 32.603870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189008, -0.212821, 0.958636,
		0.501548, 0.818371, 0.280569,
		-0.844231, 0.533832, -0.047939,
		39.480721, 39.392494, 32.589489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967335, 39.241898, 33.293793>,  <40.071682, 39.018814, 32.623047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967335, 39.241898, 33.293793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615334, 39.299194, 33.112656>,  <39.404133, 39.333572, 33.003971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615334, 39.299194, 33.112656>,  <39.967335, 39.241898, 33.293793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615334, 39.299194, 33.112656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474205, -0.211261, 0.854692,
		0.026759, 0.966877, 0.253837,
		-0.880008, 0.143242, -0.452845,
		39.351330, 39.342167, 32.976803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587826, 39.563507, 33.836647>,  <39.967335, 39.241898, 33.293793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587826, 39.563507, 33.836647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303036, 39.476116, 33.569706>,  <39.132160, 39.423683, 33.409542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303036, 39.476116, 33.569706>,  <39.587826, 39.563507, 33.836647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303036, 39.476116, 33.569706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656621, -0.129706, 0.742984,
		-0.248882, 0.967184, -0.051107,
		-0.711974, -0.218473, -0.667355,
		39.089443, 39.410576, 33.369499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041809, 39.917713, 34.074066>,  <39.587826, 39.563507, 33.836647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041809, 39.917713, 34.074066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.904232, 39.613739, 33.853447>,  <38.821686, 39.431355, 33.721077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.904232, 39.613739, 33.853447>,  <39.041809, 39.917713, 34.074066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904232, 39.613739, 33.853447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728304, -0.154855, 0.667527,
		-0.592686, 0.631285, -0.500202,
		-0.343942, -0.759933, -0.551548,
		38.801048, 39.385757, 33.687981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377327, 40.075085, 34.041988>,  <39.041809, 39.917713, 34.074066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377327, 40.075085, 34.041988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431549, 39.686798, 33.962654>,  <38.464081, 39.453827, 33.915054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431549, 39.686798, 33.962654>,  <38.377327, 40.075085, 34.041988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431549, 39.686798, 33.962654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557235, -0.240219, 0.794849,
		-0.819215, 0.002773, -0.573479,
		0.135557, -0.970715, -0.198336,
		38.472218, 39.395584, 33.903152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658657, 39.814163, 33.908798>,  <38.377327, 40.075085, 34.041988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658657, 39.814163, 33.908798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898529, 39.503689, 33.986683>,  <38.042454, 39.317402, 34.033413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898529, 39.503689, 33.986683>,  <37.658657, 39.814163, 33.908798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898529, 39.503689, 33.986683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596822, -0.271715, 0.754966,
		-0.533092, -0.568945, -0.626190,
		0.599680, -0.776191, 0.194710,
		38.078434, 39.270832, 34.045097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316780, 39.181412, 33.872154>,  <37.658657, 39.814163, 33.908798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316780, 39.181412, 33.872154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.617443, 39.089176, 34.119328>,  <37.797840, 39.033833, 34.267632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.617443, 39.089176, 34.119328>,  <37.316780, 39.181412, 33.872154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617443, 39.089176, 34.119328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658746, -0.216050, 0.720678,
		-0.032678, -0.948762, -0.314296,
		0.751656, -0.230591, 0.617933,
		37.842941, 39.019997, 34.304707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021744, 38.635880, 34.275322>,  <37.316780, 39.181412, 33.872154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021744, 38.635880, 34.275322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363861, 38.731174, 34.459370>,  <37.569134, 38.788349, 34.569798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363861, 38.731174, 34.459370>,  <37.021744, 38.635880, 34.275322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363861, 38.731174, 34.459370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417436, -0.209236, 0.884289,
		0.306942, -0.948401, -0.079511,
		0.855297, 0.238234, 0.460120,
		37.620449, 38.802643, 34.597404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156235, 38.150097, 34.719093>,  <37.021744, 38.635880, 34.275322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156235, 38.150097, 34.719093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.365459, 38.443729, 34.892315>,  <37.490993, 38.619907, 34.996246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.365459, 38.443729, 34.892315>,  <37.156235, 38.150097, 34.719093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365459, 38.443729, 34.892315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356849, -0.272799, 0.893442,
		0.773994, -0.621860, 0.119265,
		0.523060, 0.734079, 0.433055,
		37.522377, 38.663952, 35.022232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363232, 37.840359, 35.314720>,  <37.156235, 38.150097, 34.719093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363232, 37.840359, 35.314720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409817, 38.229294, 35.395706>,  <37.437767, 38.462654, 35.444298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409817, 38.229294, 35.395706>,  <37.363232, 37.840359, 35.314720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409817, 38.229294, 35.395706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430805, -0.134219, 0.892408,
		0.894899, -0.191150, 0.403259,
		0.116459, 0.972341, 0.202460,
		37.444756, 38.520996, 35.456444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697422, 38.008759, 35.939976>,  <37.363232, 37.840359, 35.314720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697422, 38.008759, 35.939976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494022, 38.347607, 35.878246>,  <37.371983, 38.550915, 35.841209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494022, 38.347607, 35.878246>,  <37.697422, 38.008759, 35.939976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494022, 38.347607, 35.878246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403025, -0.075770, 0.912047,
		0.760921, 0.525971, 0.379940,
		-0.508498, 0.847121, -0.154325,
		37.341473, 38.601742, 35.831947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765091, 38.407494, 36.592945>,  <37.697422, 38.008759, 35.939976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765091, 38.407494, 36.592945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.445721, 38.565735, 36.411388>,  <37.254101, 38.660679, 36.302456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.445721, 38.565735, 36.411388>,  <37.765091, 38.407494, 36.592945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445721, 38.565735, 36.411388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480050, 0.036754, 0.876471,
		0.363417, 0.917686, 0.160564,
		-0.798423, 0.395603, -0.453892,
		37.206192, 38.684418, 36.275219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.071194, 39.907471, 29.565489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731705, 39.911198, 29.353987>,  <40.528011, 39.913433, 29.227085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731705, 39.911198, 29.353987>,  <41.071194, 39.907471, 29.565489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731705, 39.911198, 29.353987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482029, 0.397629, 0.780730,
		0.217524, 0.917499, -0.332985,
		-0.848724, 0.009319, -0.528755,
		40.477089, 39.913994, 29.195360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719261, 40.615860, 29.527281>,  <41.071194, 39.907471, 29.565489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719261, 40.615860, 29.527281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462677, 40.309200, 29.516142>,  <40.308727, 40.125202, 29.509459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462677, 40.309200, 29.516142>,  <40.719261, 40.615860, 29.527281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462677, 40.309200, 29.516142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408253, 0.310405, 0.858475,
		-0.649508, 0.562044, -0.512100,
		-0.641459, -0.766652, -0.027846,
		40.270241, 40.079205, 29.507788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183407, 40.892891, 29.989956>,  <40.719261, 40.615860, 29.527281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183407, 40.892891, 29.989956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093849, 40.508537, 29.924761>,  <40.040115, 40.277924, 29.885643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093849, 40.508537, 29.924761>,  <40.183407, 40.892891, 29.989956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093849, 40.508537, 29.924761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535734, -0.018365, 0.844187,
		-0.814163, 0.276326, -0.510669,
		-0.223893, -0.960888, -0.162989,
		40.026680, 40.220272, 29.875864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464149, 40.857796, 30.162813>,  <40.183407, 40.892891, 29.989956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464149, 40.857796, 30.162813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575199, 40.474113, 30.184183>,  <39.641827, 40.243904, 30.197006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575199, 40.474113, 30.184183>,  <39.464149, 40.857796, 30.162813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575199, 40.474113, 30.184183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447609, -0.079942, 0.890649,
		-0.850043, -0.271176, -0.451542,
		0.277620, -0.959205, 0.053426,
		39.658485, 40.186352, 30.200211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912609, 40.537365, 30.358145>,  <39.464149, 40.857796, 30.162813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912609, 40.537365, 30.358145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223339, 40.312893, 30.472427>,  <39.409775, 40.178211, 30.540997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223339, 40.312893, 30.472427>,  <38.912609, 40.537365, 30.358145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223339, 40.312893, 30.472427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418015, -0.120206, 0.900452,
		-0.470971, -0.818920, -0.327959,
		0.776820, -0.561178, 0.285708,
		39.456387, 40.144539, 30.558140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683617, 40.147552, 30.945990>,  <38.912609, 40.537365, 30.358145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683617, 40.147552, 30.945990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073891, 40.063049, 30.969324>,  <39.308056, 40.012348, 30.983324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073891, 40.063049, 30.969324>,  <38.683617, 40.147552, 30.945990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073891, 40.063049, 30.969324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120054, -0.292506, 0.948698,
		-0.183349, -0.932638, -0.310756,
		0.975689, -0.211250, 0.058336,
		39.366596, 39.999672, 30.986824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612743, 39.447968, 31.308968>,  <38.683617, 40.147552, 30.945990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612743, 39.447968, 31.308968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961063, 39.640377, 31.349594>,  <39.170055, 39.755821, 31.373970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961063, 39.640377, 31.349594>,  <38.612743, 39.447968, 31.308968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961063, 39.640377, 31.349594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060075, -0.309153, 0.949113,
		0.487946, -0.820390, -0.298109,
		0.870804, 0.481025, 0.101565,
		39.222305, 39.784683, 31.380064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008999, 38.938362, 31.587358>,  <38.612743, 39.447968, 31.308968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008999, 38.938362, 31.587358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143681, 39.303768, 31.678684>,  <39.224491, 39.523010, 31.733479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143681, 39.303768, 31.678684>,  <39.008999, 38.938362, 31.587358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143681, 39.303768, 31.678684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106802, -0.277957, 0.954638,
		0.935534, -0.297046, -0.191155,
		0.336704, 0.913512, 0.228313,
		39.244690, 39.577820, 31.747179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559994, 38.777355, 31.933872>,  <39.008999, 38.938362, 31.587358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559994, 38.777355, 31.933872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446083, 39.146797, 32.036518>,  <39.377739, 39.368462, 32.098106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446083, 39.146797, 32.036518>,  <39.559994, 38.777355, 31.933872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446083, 39.146797, 32.036518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026074, -0.260135, 0.965220,
		0.958240, 0.281561, 0.049998,
		-0.284775, 0.923609, 0.256613,
		39.360649, 39.423882, 32.113503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219894, 38.516991, 32.120491>,  <39.559994, 38.777355, 31.933872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219894, 38.516991, 32.120491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146481, 38.124054, 32.105984>,  <40.102432, 37.888290, 32.097279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146481, 38.124054, 32.105984>,  <40.219894, 38.516991, 32.120491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146481, 38.124054, 32.105984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222166, -0.005513, -0.974993,
		0.957579, -0.187003, 0.219255,
		-0.183535, -0.982344, -0.036266,
		40.091419, 37.829350, 32.095104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836475, 38.227364, 31.916460>,  <40.219894, 38.516991, 32.120491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836475, 38.227364, 31.916460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559776, 37.943047, 31.865456>,  <40.393757, 37.772457, 31.834852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559776, 37.943047, 31.865456>,  <40.836475, 38.227364, 31.916460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559776, 37.943047, 31.865456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359201, -0.185492, -0.914641,
		0.626470, -0.678500, 0.383631,
		-0.691744, -0.710796, -0.127513,
		40.352253, 37.729809, 31.827202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199959, 37.680382, 31.575615>,  <40.836475, 38.227364, 31.916460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199959, 37.680382, 31.575615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817234, 37.641281, 31.466108>,  <40.587597, 37.617821, 31.400404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817234, 37.641281, 31.466108>,  <41.199959, 37.680382, 31.575615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817234, 37.641281, 31.466108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290150, -0.378837, -0.878804,
		-0.017809, -0.920286, 0.390839,
		-0.956815, -0.097752, -0.273768,
		40.530190, 37.611958, 31.383978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112499, 36.982151, 31.487753>,  <41.199959, 37.680382, 31.575615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112499, 36.982151, 31.487753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824459, 37.148453, 31.265545>,  <40.651634, 37.248234, 31.132219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824459, 37.148453, 31.265545>,  <41.112499, 36.982151, 31.487753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824459, 37.148453, 31.265545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320480, -0.510815, -0.797722,
		-0.615423, -0.752475, 0.234598,
		-0.720102, 0.415753, -0.555520,
		40.608429, 37.273178, 31.098888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888905, 36.430286, 30.943962>,  <41.112499, 36.982151, 31.487753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888905, 36.430286, 30.943962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764549, 36.782352, 30.800491>,  <40.689934, 36.993591, 30.714409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764549, 36.782352, 30.800491>,  <40.888905, 36.430286, 30.943962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764549, 36.782352, 30.800491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123636, -0.336721, -0.933452,
		-0.942370, -0.334548, -0.004137,
		-0.310892, 0.880169, -0.358677,
		40.671280, 37.046402, 30.692888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469658, 36.170212, 30.414553>,  <40.888905, 36.430286, 30.943962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469658, 36.170212, 30.414553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551487, 36.552109, 30.328196>,  <40.600582, 36.781246, 30.276381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551487, 36.552109, 30.328196>,  <40.469658, 36.170212, 30.414553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551487, 36.552109, 30.328196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174389, -0.252577, -0.951732,
		-0.963192, 0.157047, -0.218167,
		0.204571, 0.954747, -0.215893,
		40.612858, 36.838531, 30.263428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112583, 36.243721, 29.810925>,  <40.469658, 36.170212, 30.414553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112583, 36.243721, 29.810925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366611, 36.552593, 29.802677>,  <40.519028, 36.737915, 29.797728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366611, 36.552593, 29.802677>,  <40.112583, 36.243721, 29.810925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366611, 36.552593, 29.802677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156789, -0.154998, -0.975394,
		-0.756372, 0.616214, -0.219504,
		0.635074, 0.772176, -0.020621,
		40.557133, 36.784245, 29.796492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953453, 36.641731, 29.361557>,  <40.112583, 36.243721, 29.810925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953453, 36.641731, 29.361557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343792, 36.729107, 29.360401>,  <40.577995, 36.781532, 29.359707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343792, 36.729107, 29.360401>,  <39.953453, 36.641731, 29.361557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343792, 36.729107, 29.360401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005329, 0.010579, -0.999930,
		-0.218392, 0.975793, 0.011488,
		0.975847, 0.218438, -0.002890,
		40.636547, 36.794640, 29.359535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038849, 37.069439, 28.848251>,  <39.953453, 36.641731, 29.361557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038849, 37.069439, 28.848251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428699, 37.001236, 28.906258>,  <40.662609, 36.960312, 28.941061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428699, 37.001236, 28.906258>,  <40.038849, 37.069439, 28.848251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428699, 37.001236, 28.906258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155272, 0.048374, -0.986687,
		0.161226, 0.984168, 0.073622,
		0.974626, -0.170511, 0.145015,
		40.721088, 36.950081, 28.949762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400032, 37.482620, 28.350624>,  <40.038849, 37.069439, 28.848251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400032, 37.482620, 28.350624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680748, 37.216564, 28.452663>,  <40.849178, 37.056931, 28.513887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680748, 37.216564, 28.452663>,  <40.400032, 37.482620, 28.350624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680748, 37.216564, 28.452663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309458, -0.037899, -0.950158,
		0.641656, 0.745756, 0.179236,
		0.701793, -0.665140, 0.255098,
		40.891285, 37.017021, 28.529192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113117, 37.731335, 28.156790>,  <40.400032, 37.482620, 28.350624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113117, 37.731335, 28.156790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132736, 37.333164, 28.189600>,  <41.144508, 37.094261, 28.209286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132736, 37.333164, 28.189600>,  <41.113117, 37.731335, 28.156790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132736, 37.333164, 28.189600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569119, -0.039634, -0.821300,
		0.820791, 0.086966, 0.564569,
		0.049048, -0.995423, 0.082025,
		41.147449, 37.034538, 28.214207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841812, 37.644913, 28.064337>,  <41.113117, 37.731335, 28.156790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841812, 37.644913, 28.064337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612415, 37.320526, 28.017963>,  <41.474777, 37.125893, 27.990139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612415, 37.320526, 28.017963>,  <41.841812, 37.644913, 28.064337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612415, 37.320526, 28.017963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308278, -0.082526, -0.947710,
		0.758993, -0.579244, 0.297331,
		-0.573492, -0.810966, -0.115931,
		41.440369, 37.077236, 27.983185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290897, 37.162575, 27.826975>,  <41.841812, 37.644913, 28.064337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290897, 37.162575, 27.826975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922047, 37.042259, 27.729639>,  <41.700737, 36.970070, 27.671238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922047, 37.042259, 27.729639>,  <42.290897, 37.162575, 27.826975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922047, 37.042259, 27.729639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295594, -0.141918, -0.944713,
		0.249625, -0.943072, 0.219777,
		-0.922124, -0.300789, -0.243340,
		41.645409, 36.952023, 27.656637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331821, 36.524738, 27.524673>,  <42.290897, 37.162575, 27.826975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331821, 36.524738, 27.524673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980465, 36.647617, 27.378220>,  <41.769650, 36.721344, 27.290348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980465, 36.647617, 27.378220>,  <42.331821, 36.524738, 27.524673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980465, 36.647617, 27.378220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222135, -0.415887, -0.881870,
		-0.423194, -0.855955, 0.297067,
		-0.878387, 0.307213, -0.366138,
		41.716946, 36.739777, 27.268379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.227066, 39.377602, 26.443256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602131, 39.422157, 26.574944>,  <35.827171, 39.448891, 26.653955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602131, 39.422157, 26.574944>,  <35.227066, 39.377602, 26.443256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602131, 39.422157, 26.574944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296349, -0.238625, 0.924789,
		0.181575, -0.964702, -0.190738,
		0.937661, 0.111394, 0.329217,
		35.883430, 39.455574, 26.673708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324249, 38.847626, 26.825275>,  <35.227066, 39.377602, 26.443256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324249, 38.847626, 26.825275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634342, 39.069408, 26.946337>,  <35.820396, 39.202477, 27.018972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634342, 39.069408, 26.946337>,  <35.324249, 38.847626, 26.825275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634342, 39.069408, 26.946337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268531, -0.144407, 0.952385,
		0.571762, -0.819588, 0.036941,
		0.775228, 0.554457, 0.302651,
		35.866909, 39.235744, 27.037132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678638, 38.494572, 27.257063>,  <35.324249, 38.847626, 26.825275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678638, 38.494572, 27.257063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.779152, 38.867813, 27.359964>,  <35.839462, 39.091759, 27.421705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.779152, 38.867813, 27.359964>,  <35.678638, 38.494572, 27.257063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779152, 38.867813, 27.359964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202732, -0.209149, 0.956638,
		0.946443, -0.292544, 0.136613,
		0.251287, 0.933100, 0.257256,
		35.854538, 39.147743, 27.437141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183708, 38.420982, 27.878437>,  <35.678638, 38.494572, 27.257063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183708, 38.420982, 27.878437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005817, 38.778885, 27.862345>,  <35.899082, 38.993626, 27.852690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005817, 38.778885, 27.862345>,  <36.183708, 38.420982, 27.878437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005817, 38.778885, 27.862345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224699, -0.067980, 0.972054,
		0.867020, 0.441343, 0.231285,
		-0.444731, 0.894760, -0.040230,
		35.872398, 39.047314, 27.850275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489223, 38.794582, 28.438066>,  <36.183708, 38.420982, 27.878437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489223, 38.794582, 28.438066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141468, 38.968719, 28.344557>,  <35.932816, 39.073200, 28.288452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141468, 38.968719, 28.344557>,  <36.489223, 38.794582, 28.438066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141468, 38.968719, 28.344557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221207, 0.080156, 0.971927,
		0.441858, 0.896690, 0.026614,
		-0.869384, 0.435341, -0.233772,
		35.880653, 39.099323, 28.274426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366749, 39.319035, 28.997503>,  <36.489223, 38.794582, 28.438066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366749, 39.319035, 28.997503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007935, 39.241158, 28.838795>,  <35.792648, 39.194431, 28.743570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007935, 39.241158, 28.838795>,  <36.366749, 39.319035, 28.997503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007935, 39.241158, 28.838795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379523, -0.120720, 0.917273,
		-0.226481, 0.973407, 0.034400,
		-0.897033, -0.194689, -0.396771,
		35.738823, 39.182751, 28.719763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881538, 39.708996, 29.459496>,  <36.366749, 39.319035, 28.997503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881538, 39.708996, 29.459496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652458, 39.439869, 29.272165>,  <35.515011, 39.278393, 29.159767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652458, 39.439869, 29.272165>,  <35.881538, 39.708996, 29.459496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652458, 39.439869, 29.272165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569474, -0.084412, 0.817663,
		-0.589669, 0.734979, -0.334808,
		-0.572703, -0.672816, -0.468327,
		35.480648, 39.238026, 29.131668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148834, 39.892670, 29.710814>,  <35.881538, 39.708996, 29.459496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148834, 39.892670, 29.710814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107643, 39.538521, 29.529484>,  <35.082928, 39.326031, 29.420685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107643, 39.538521, 29.529484>,  <35.148834, 39.892670, 29.710814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107643, 39.538521, 29.529484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567515, -0.321995, 0.757791,
		-0.816899, 0.335302, -0.469307,
		-0.102974, -0.885377, -0.453326,
		35.076752, 39.272907, 29.393486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378757, 39.695404, 29.733339>,  <35.148834, 39.892670, 29.710814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378757, 39.695404, 29.733339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584831, 39.356541, 29.681332>,  <34.708473, 39.153221, 29.650127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584831, 39.356541, 29.681332>,  <34.378757, 39.695404, 29.733339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584831, 39.356541, 29.681332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460934, -0.401750, 0.791288,
		-0.722584, -0.347728, -0.597460,
		0.515182, -0.847162, -0.130019,
		34.739388, 39.102394, 29.642326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868771, 39.231567, 29.892675>,  <34.378757, 39.695404, 29.733339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868771, 39.231567, 29.892675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.222267, 39.045242, 29.910641>,  <34.434364, 38.933445, 29.921419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.222267, 39.045242, 29.910641>,  <33.868771, 39.231567, 29.892675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222267, 39.045242, 29.910641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247878, -0.384541, 0.889205,
		-0.396947, -0.796953, -0.455301,
		0.883736, -0.465826, 0.044905,
		34.487389, 38.905499, 29.924114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735279, 38.564919, 30.031778>,  <33.868771, 39.231567, 29.892675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735279, 38.564919, 30.031778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105892, 38.633450, 30.165751>,  <34.328262, 38.674568, 30.246134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105892, 38.633450, 30.165751>,  <33.735279, 38.564919, 30.031778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105892, 38.633450, 30.165751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240017, -0.416348, 0.876953,
		0.289695, -0.892917, -0.344640,
		0.926536, 0.171330, 0.334929,
		34.383854, 38.684849, 30.266230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961220, 37.925064, 30.427898>,  <33.735279, 38.564919, 30.031778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961220, 37.925064, 30.427898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.226749, 38.204151, 30.535625>,  <34.386066, 38.371601, 30.600262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.226749, 38.204151, 30.535625>,  <33.961220, 37.925064, 30.427898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226749, 38.204151, 30.535625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062563, -0.307036, 0.949639,
		0.745266, -0.647244, -0.160168,
		0.663826, 0.697713, 0.269317,
		34.425896, 38.413464, 30.616421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521442, 37.553455, 30.818989>,  <33.961220, 37.925064, 30.427898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521442, 37.553455, 30.818989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568966, 37.933033, 30.935877>,  <34.597481, 38.160778, 31.006010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568966, 37.933033, 30.935877>,  <34.521442, 37.553455, 30.818989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568966, 37.933033, 30.935877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084447, -0.283582, 0.955222,
		0.989320, -0.138166, 0.046443,
		0.118809, 0.948942, 0.292221,
		34.604610, 38.217716, 31.023542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994717, 37.544041, 31.389290>,  <34.521442, 37.553455, 30.818989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994717, 37.544041, 31.389290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821014, 37.900723, 31.440338>,  <34.716793, 38.114731, 31.470966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821014, 37.900723, 31.440338>,  <34.994717, 37.544041, 31.389290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821014, 37.900723, 31.440338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143511, -0.071380, 0.987071,
		0.889285, 0.446955, -0.096972,
		-0.434255, 0.891704, 0.127620,
		34.690739, 38.168232, 31.478624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781277, 37.226521, 31.413933>,  <34.994717, 37.544041, 31.389290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781277, 37.226521, 31.413933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845856, 36.839977, 31.494017>,  <35.884605, 36.608051, 31.542067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845856, 36.839977, 31.494017>,  <35.781277, 37.226521, 31.413933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845856, 36.839977, 31.494017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389661, -0.123965, -0.912577,
		0.906696, 0.225349, 0.356539,
		0.161450, -0.966359, 0.200208,
		35.894291, 36.550068, 31.554079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471088, 37.031441, 30.981159>,  <35.781277, 37.226521, 31.413933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471088, 37.031441, 30.981159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259838, 36.706188, 31.079067>,  <36.133087, 36.511036, 31.137812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259838, 36.706188, 31.079067>,  <36.471088, 37.031441, 30.981159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259838, 36.706188, 31.079067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250918, -0.424803, -0.869817,
		0.811250, -0.397954, 0.428376,
		-0.528123, -0.813127, 0.244768,
		36.101402, 36.462250, 31.152498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884846, 36.540710, 30.817684>,  <36.471088, 37.031441, 30.981159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884846, 36.540710, 30.817684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.529648, 36.361855, 30.774740>,  <36.316528, 36.254543, 30.748974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.529648, 36.361855, 30.774740>,  <36.884846, 36.540710, 30.817684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529648, 36.361855, 30.774740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203953, -0.173714, -0.963445,
		0.412142, -0.877435, 0.245453,
		-0.887999, -0.447137, -0.107360,
		36.263248, 36.227715, 30.742533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090523, 36.076488, 30.350294>,  <36.884846, 36.540710, 30.817684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090523, 36.076488, 30.350294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.690804, 36.091438, 30.350607>,  <36.450970, 36.100407, 30.350794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.690804, 36.091438, 30.350607>,  <37.090523, 36.076488, 30.350294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690804, 36.091438, 30.350607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012461, -0.313344, -0.949558,
		-0.035243, -0.948904, 0.313590,
		-0.999301, 0.037373, 0.000781,
		36.391014, 36.102650, 30.350842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813961, 35.537163, 29.973164>,  <37.090523, 36.076488, 30.350294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813961, 35.537163, 29.973164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474655, 35.748985, 29.971516>,  <36.271072, 35.876080, 29.970528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474655, 35.748985, 29.971516>,  <36.813961, 35.537163, 29.973164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474655, 35.748985, 29.971516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149163, -0.246385, -0.957625,
		-0.508133, -0.811704, 0.287989,
		-0.848264, 0.529558, -0.004120,
		36.220177, 35.907852, 29.970280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216812, 35.066250, 29.655216>,  <36.813961, 35.537163, 29.973164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216812, 35.066250, 29.655216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113811, 35.450710, 29.615456>,  <36.052013, 35.681385, 29.591599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113811, 35.450710, 29.615456>,  <36.216812, 35.066250, 29.655216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113811, 35.450710, 29.615456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077320, -0.082047, -0.993625,
		-0.963181, -0.263542, -0.053189,
		-0.257497, 0.961152, -0.099403,
		36.036564, 35.739056, 29.585634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754913, 35.112259, 29.161879>,  <36.216812, 35.066250, 29.655216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754913, 35.112259, 29.161879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901611, 35.483852, 29.181854>,  <35.989632, 35.706806, 29.193840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901611, 35.483852, 29.181854>,  <35.754913, 35.112259, 29.161879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901611, 35.483852, 29.181854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131705, 0.001296, -0.991288,
		-0.920951, 0.370128, -0.121876,
		0.366746, 0.928980, 0.049941,
		36.011635, 35.762547, 29.196836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425903, 35.496006, 28.687527>,  <35.754913, 35.112259, 29.161879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425903, 35.496006, 28.687527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.736668, 35.741684, 28.742912>,  <35.923126, 35.889091, 28.776144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.736668, 35.741684, 28.742912>,  <35.425903, 35.496006, 28.687527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736668, 35.741684, 28.742912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085065, 0.115510, -0.989657,
		-0.623837, 0.780654, 0.037494,
		0.776911, 0.614196, 0.138466,
		35.969742, 35.925941, 28.784452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434986, 35.972588, 28.096302>,  <35.425903, 35.496006, 28.687527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434986, 35.972588, 28.096302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796135, 36.067894, 28.239443>,  <36.012825, 36.125080, 28.325327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796135, 36.067894, 28.239443>,  <35.434986, 35.972588, 28.096302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796135, 36.067894, 28.239443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295548, 0.260503, -0.919125,
		-0.312219, 0.935610, 0.164780,
		0.902868, 0.238268, 0.357851,
		36.066994, 36.139374, 28.346798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627815, 36.634426, 27.937302>,  <35.434986, 35.972588, 28.096302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627815, 36.634426, 27.937302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971088, 36.432926, 27.976820>,  <36.177052, 36.312027, 28.000532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971088, 36.432926, 27.976820>,  <35.627815, 36.634426, 27.937302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971088, 36.432926, 27.976820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290257, 0.317427, -0.902769,
		0.423406, 0.803417, 0.418626,
		0.858183, -0.503747, 0.098797,
		36.228542, 36.281803, 28.006458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128120, 37.182827, 27.755886>,  <35.627815, 36.634426, 27.937302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128120, 37.182827, 27.755886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.289108, 36.819302, 27.711916>,  <36.385700, 36.601189, 27.685534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.289108, 36.819302, 27.711916>,  <36.128120, 37.182827, 27.755886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289108, 36.819302, 27.711916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417916, 0.289243, -0.861211,
		0.814471, 0.300673, 0.496218,
		0.402471, -0.908809, -0.109924,
		36.409851, 36.546658, 27.678938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876133, 37.323677, 27.696108>,  <36.128120, 37.182827, 27.755886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876133, 37.323677, 27.696108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802475, 36.958401, 27.550684>,  <36.758278, 36.739235, 27.463428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802475, 36.958401, 27.550684>,  <36.876133, 37.323677, 27.696108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802475, 36.958401, 27.550684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496054, 0.232978, -0.836452,
		0.848539, -0.334378, 0.410088,
		-0.184149, -0.913188, -0.363561,
		36.747231, 36.684444, 27.441616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529472, 37.169697, 27.399755>,  <36.876133, 37.323677, 27.696108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529472, 37.169697, 27.399755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.305679, 36.895721, 27.213058>,  <37.171406, 36.731339, 27.101040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.305679, 36.895721, 27.213058>,  <37.529472, 37.169697, 27.399755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305679, 36.895721, 27.213058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428281, 0.243221, -0.870298,
		0.709619, -0.686809, 0.157268,
		-0.559478, -0.684936, -0.466741,
		37.137836, 36.690239, 27.073036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944828, 36.694546, 26.992851>,  <37.529472, 37.169697, 27.399755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944828, 36.694546, 26.992851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.583290, 36.698956, 26.821768>,  <37.366367, 36.701603, 26.719118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.583290, 36.698956, 26.821768>,  <37.944828, 36.694546, 26.992851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583290, 36.698956, 26.821768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413516, 0.279108, -0.866662,
		0.109819, -0.960196, -0.256832,
		-0.903850, 0.011028, -0.427708,
		37.312134, 36.702263, 26.693455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097313, 35.954285, 27.187025>,  <37.944828, 36.694546, 26.992851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097313, 35.954285, 27.187025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376354, 35.699787, 27.055239>,  <38.543777, 35.547089, 26.976166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376354, 35.699787, 27.055239>,  <38.097313, 35.954285, 27.187025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376354, 35.699787, 27.055239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149277, -0.320681, 0.935350,
		-0.700765, -0.701682, -0.128730,
		0.697600, -0.636244, -0.329467,
		38.585632, 35.508915, 26.956398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960911, 35.340923, 27.449362>,  <38.097313, 35.954285, 27.187025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960911, 35.340923, 27.449362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353779, 35.338726, 27.374193>,  <38.589500, 35.337406, 27.329092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353779, 35.338726, 27.374193>,  <37.960911, 35.340923, 27.449362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353779, 35.338726, 27.374193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177652, -0.299972, 0.937260,
		-0.061522, -0.953932, -0.293647,
		0.982168, -0.005495, -0.187923,
		38.648430, 35.337078, 27.317816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286663, 34.666946, 27.778494>,  <37.960911, 35.340923, 27.449362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286663, 34.666946, 27.778494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607830, 34.897194, 27.716541>,  <38.800529, 35.035343, 27.679369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607830, 34.897194, 27.716541>,  <38.286663, 34.666946, 27.778494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607830, 34.897194, 27.716541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336558, -0.223309, 0.914801,
		0.491991, -0.786635, -0.373028,
		0.802915, 0.575620, -0.154882,
		38.848705, 35.069881, 27.670076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823776, 34.370029, 27.961567>,  <38.286663, 34.666946, 27.778494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823776, 34.370029, 27.961567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014477, 34.721573, 27.968685>,  <39.128895, 34.932499, 27.972956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014477, 34.721573, 27.968685>,  <38.823776, 34.370029, 27.961567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014477, 34.721573, 27.968685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319619, -0.192170, 0.927855,
		0.818874, -0.436665, -0.372517,
		0.476748, 0.878860, 0.017797,
		39.157501, 34.985229, 27.974024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512337, 34.198200, 28.136475>,  <38.823776, 34.370029, 27.961567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512337, 34.198200, 28.136475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.426933, 34.578537, 28.226192>,  <39.375690, 34.806740, 28.280024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.426933, 34.578537, 28.226192>,  <39.512337, 34.198200, 28.136475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426933, 34.578537, 28.226192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266014, -0.164329, 0.949859,
		0.940026, 0.262473, -0.217851,
		-0.213513, 0.950844, 0.224296,
		39.362881, 34.863789, 28.293482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992569, 34.340462, 28.569078>,  <39.512337, 34.198200, 28.136475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992569, 34.340462, 28.569078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736874, 34.638363, 28.645723>,  <39.583458, 34.817104, 28.691711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736874, 34.638363, 28.645723>,  <39.992569, 34.340462, 28.569078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736874, 34.638363, 28.645723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107062, -0.160554, 0.981203,
		0.761521, 0.647736, 0.022897,
		-0.639237, 0.744755, 0.191613,
		39.545101, 34.861790, 28.703207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271626, 34.680302, 29.140436>,  <39.992569, 34.340462, 28.569078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271626, 34.680302, 29.140436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879601, 34.757015, 29.119656>,  <39.644386, 34.803043, 29.107187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879601, 34.757015, 29.119656>,  <40.271626, 34.680302, 29.140436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879601, 34.757015, 29.119656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056154, -0.016550, 0.998285,
		0.190599, 0.981297, 0.026990,
		-0.980061, 0.191787, -0.051950,
		39.585583, 34.814552, 29.104071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102654, 35.254200, 29.562353>,  <40.271626, 34.680302, 29.140436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102654, 35.254200, 29.562353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759197, 35.052933, 29.523239>,  <39.553123, 34.932175, 29.499771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759197, 35.052933, 29.523239>,  <40.102654, 35.254200, 29.562353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759197, 35.052933, 29.523239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162713, 0.086657, 0.982861,
		-0.486066, 0.859836, -0.156278,
		-0.858641, -0.503163, -0.097785,
		39.501606, 34.901985, 29.493904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731899, 35.568016, 30.089411>,  <40.102654, 35.254200, 29.562353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731899, 35.568016, 30.089411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.513699, 35.246243, 29.995333>,  <39.382778, 35.053177, 29.938885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.513699, 35.246243, 29.995333>,  <39.731899, 35.568016, 30.089411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513699, 35.246243, 29.995333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241567, -0.117809, 0.963207,
		-0.802545, 0.582242, -0.130060,
		-0.545497, -0.804435, -0.235197,
		39.350048, 35.004913, 29.924774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167305, 35.686596, 30.552702>,  <39.731899, 35.568016, 30.089411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167305, 35.686596, 30.552702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.150463, 35.302380, 30.442722>,  <39.140358, 35.071850, 30.376736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.150463, 35.302380, 30.442722>,  <39.167305, 35.686596, 30.552702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150463, 35.302380, 30.442722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462298, -0.225229, 0.857643,
		-0.885724, 0.163220, -0.434571,
		-0.042106, -0.960537, -0.274947,
		39.137833, 35.014217, 30.360239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523670, 35.481293, 30.659239>,  <39.167305, 35.686596, 30.552702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523670, 35.481293, 30.659239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734646, 35.141457, 30.660555>,  <38.861229, 34.937557, 30.661345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734646, 35.141457, 30.660555>,  <38.523670, 35.481293, 30.659239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734646, 35.141457, 30.660555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360497, -0.220292, 0.906374,
		-0.769320, -0.479240, -0.422464,
		0.527436, -0.849588, 0.003289,
		38.892876, 34.886581, 30.661541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054634, 35.038841, 30.879040>,  <38.523670, 35.481293, 30.659239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054634, 35.038841, 30.879040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398010, 34.848373, 30.955290>,  <38.604034, 34.734093, 31.001040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398010, 34.848373, 30.955290>,  <38.054634, 35.038841, 30.879040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398010, 34.848373, 30.955290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350896, -0.274147, 0.895386,
		-0.374103, -0.835523, -0.402427,
		0.858440, -0.476176, 0.190622,
		38.655544, 34.705521, 31.012476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915527, 34.591991, 31.294863>,  <38.054634, 35.038841, 30.879040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915527, 34.591991, 31.294863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306259, 34.553078, 31.371119>,  <38.540699, 34.529732, 31.416872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306259, 34.553078, 31.371119>,  <37.915527, 34.591991, 31.294863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306259, 34.553078, 31.371119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212356, -0.329532, 0.919953,
		-0.026672, -0.939119, -0.342555,
		0.976828, -0.097281, 0.190639,
		38.599308, 34.523891, 31.428310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013359, 33.843945, 31.586830>,  <37.915527, 34.591991, 31.294863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013359, 33.843945, 31.586830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320782, 34.081928, 31.680935>,  <38.505234, 34.224716, 31.737398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320782, 34.081928, 31.680935>,  <38.013359, 33.843945, 31.586830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320782, 34.081928, 31.680935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136792, -0.206407, 0.968857,
		0.624989, -0.776802, -0.077250,
		0.768555, 0.594957, 0.235262,
		38.551350, 34.260414, 31.751514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.011173, 35.967060, 26.696188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.802975, 36.306412, 26.734848>,  <41.678055, 36.510021, 26.758043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.802975, 36.306412, 26.734848>,  <42.011173, 35.967060, 26.696188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802975, 36.306412, 26.734848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052490, 0.144767, -0.988073,
		-0.852247, -0.509218, -0.119882,
		-0.520500, 0.848375, 0.096648,
		41.646824, 36.560925, 26.763842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454510, 35.792076, 26.315176>,  <42.011173, 35.967060, 26.696188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454510, 35.792076, 26.315176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.438419, 36.191662, 26.323727>,  <41.428764, 36.431412, 26.328857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.438419, 36.191662, 26.323727>,  <41.454510, 35.792076, 26.315176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438419, 36.191662, 26.323727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069198, 0.024125, -0.997311,
		-0.996792, -0.038636, -0.070097,
		-0.040223, 0.998962, 0.021374,
		41.426353, 36.491352, 26.330139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911598, 36.105766, 25.887987>,  <41.454510, 35.792076, 26.315176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911598, 36.105766, 25.887987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.214657, 36.365406, 25.915224>,  <41.396492, 36.521191, 25.931566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.214657, 36.365406, 25.915224>,  <40.911598, 36.105766, 25.887987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214657, 36.365406, 25.915224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043084, 0.153846, -0.987155,
		-0.651237, 0.744985, 0.144528,
		0.757651, 0.649098, 0.068093,
		41.441952, 36.560135, 25.935652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715927, 36.596928, 25.385794>,  <40.911598, 36.105766, 25.887987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715927, 36.596928, 25.385794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.093971, 36.678875, 25.487616>,  <41.320797, 36.728043, 25.548708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.093971, 36.678875, 25.487616>,  <40.715927, 36.596928, 25.385794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093971, 36.678875, 25.487616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215298, 0.195582, -0.956762,
		-0.245797, 0.959050, 0.140738,
		0.945109, 0.204869, 0.254555,
		41.377502, 36.740337, 25.563982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860065, 37.185337, 24.999321>,  <40.715927, 36.596928, 25.385794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860065, 37.185337, 24.999321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.222031, 37.047516, 25.099251>,  <41.439209, 36.964825, 25.159208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.222031, 37.047516, 25.099251>,  <40.860065, 37.185337, 24.999321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222031, 37.047516, 25.099251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358526, 0.300866, -0.883707,
		0.229320, 0.889249, 0.395789,
		0.904915, -0.344552, 0.249824,
		41.493504, 36.944149, 25.174198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242950, 37.662136, 24.647545>,  <40.860065, 37.185337, 24.999321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242950, 37.662136, 24.647545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.488094, 37.354614, 24.720587>,  <41.635181, 37.170101, 24.764412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.488094, 37.354614, 24.720587>,  <41.242950, 37.662136, 24.647545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488094, 37.354614, 24.720587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450932, 0.150501, -0.879778,
		0.648893, 0.621525, 0.438913,
		0.612861, -0.768802, 0.182607,
		41.671951, 37.123974, 24.775370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947933, 37.916161, 24.516708>,  <41.242950, 37.662136, 24.647545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947933, 37.916161, 24.516708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982616, 37.518738, 24.487530>,  <42.003426, 37.280285, 24.470022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982616, 37.518738, 24.487530>,  <41.947933, 37.916161, 24.516708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982616, 37.518738, 24.487530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380443, 0.100697, -0.919306,
		0.920731, 0.051955, 0.386724,
		0.086705, -0.993560, -0.072949,
		42.008629, 37.220669, 24.465645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699036, 37.719955, 24.339930>,  <41.947933, 37.916161, 24.516708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699036, 37.719955, 24.339930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.494202, 37.389923, 24.244419>,  <42.371304, 37.191902, 24.187113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.494202, 37.389923, 24.244419>,  <42.699036, 37.719955, 24.339930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494202, 37.389923, 24.244419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327824, 0.069209, -0.942200,
		0.793916, -0.560761, 0.235041,
		-0.512082, -0.825080, -0.238777,
		42.340576, 37.142399, 24.172787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127731, 37.253918, 23.858519>,  <42.699036, 37.719955, 24.339930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127731, 37.253918, 23.858519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.781666, 37.061691, 23.801182>,  <42.574028, 36.946354, 23.766781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.781666, 37.061691, 23.801182>,  <43.127731, 37.253918, 23.858519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781666, 37.061691, 23.801182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197688, -0.064136, -0.978165,
		0.460882, -0.874609, 0.150491,
		-0.865163, -0.480568, -0.143341,
		42.522118, 36.917522, 23.758179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305523, 36.687759, 23.422951>,  <43.127731, 37.253918, 23.858519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305523, 36.687759, 23.422951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.912643, 36.757366, 23.394665>,  <42.676914, 36.799129, 23.377693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.912643, 36.757366, 23.394665>,  <43.305523, 36.687759, 23.422951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912643, 36.757366, 23.394665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053875, -0.099672, -0.993561,
		-0.179950, -0.979685, 0.088523,
		-0.982199, 0.174022, -0.070716,
		42.617985, 36.809570, 23.373449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045853, 36.183296, 23.025213>,  <43.305523, 36.687759, 23.422951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045853, 36.183296, 23.025213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.742256, 36.441608, 22.991993>,  <42.560097, 36.596596, 22.972061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.742256, 36.441608, 22.991993>,  <43.045853, 36.183296, 23.025213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742256, 36.441608, 22.991993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048491, -0.183262, -0.981867,
		-0.649292, -0.741202, 0.170409,
		-0.758991, 0.645782, -0.083049,
		42.514557, 36.635342, 22.967079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614555, 35.850929, 22.541479>,  <43.045853, 36.183296, 23.025213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614555, 35.850929, 22.541479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.492500, 36.231739, 22.550760>,  <42.419266, 36.460224, 22.556330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.492500, 36.231739, 22.550760>,  <42.614555, 35.850929, 22.541479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492500, 36.231739, 22.550760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176134, 0.080365, -0.981080,
		-0.935877, -0.295280, -0.192207,
		-0.305141, 0.952025, 0.023203,
		42.400959, 36.517345, 22.557722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955200, 36.086452, 22.044271>,  <42.614555, 35.850929, 22.541479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955200, 36.086452, 22.044271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.228798, 36.371761, 22.105448>,  <42.392956, 36.542946, 22.142155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.228798, 36.371761, 22.105448>,  <41.955200, 36.086452, 22.044271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228798, 36.371761, 22.105448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218115, 0.000098, -0.975923,
		-0.696112, 0.700889, -0.155508,
		0.683998, 0.713271, 0.152942,
		42.433998, 36.585743, 22.151331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803307, 35.376392, 22.111540>,  <41.955200, 36.086452, 22.044271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803307, 35.376392, 22.111540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.922554, 35.001831, 22.185589>,  <41.994102, 34.777092, 22.230019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.922554, 35.001831, 22.185589>,  <41.803307, 35.376392, 22.111540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922554, 35.001831, 22.185589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929791, 0.328742, 0.165581,
		-0.215909, 0.122762, 0.968665,
		0.298114, -0.936407, 0.185121,
		42.011990, 34.720909, 22.241125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226173, 35.758373, 21.739529>,  <41.803307, 35.376392, 22.111540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226173, 35.758373, 21.739529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.830551, 35.729305, 21.688166>,  <40.593178, 35.711864, 21.657347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.830551, 35.729305, 21.688166>,  <41.226173, 35.758373, 21.739529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830551, 35.729305, 21.688166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134051, 0.078976, 0.987822,
		-0.061645, 0.994224, -0.087853,
		-0.989055, -0.072671, -0.128409,
		40.533836, 35.707504, 21.649643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022388, 36.285275, 22.110357>,  <41.226173, 35.758373, 21.739529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022388, 36.285275, 22.110357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.714359, 36.033501, 22.068773>,  <40.529541, 35.882439, 22.043823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.714359, 36.033501, 22.068773>,  <41.022388, 36.285275, 22.110357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714359, 36.033501, 22.068773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191690, 0.072863, 0.978747,
		-0.608480, 0.773632, -0.176766,
		-0.770070, -0.629432, -0.103962,
		40.483337, 35.844669, 22.037584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448635, 36.719425, 22.319925>,  <41.022388, 36.285275, 22.110357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448635, 36.719425, 22.319925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.326302, 36.340096, 22.353741>,  <40.252899, 36.112499, 22.374029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.326302, 36.340096, 22.353741>,  <40.448635, 36.719425, 22.319925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326302, 36.340096, 22.353741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156757, 0.137735, 0.977986,
		-0.939091, 0.285853, -0.190781,
		-0.305837, -0.948323, 0.084537,
		40.234550, 36.055599, 22.379101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782990, 36.754074, 22.729284>,  <40.448635, 36.719425, 22.319925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782990, 36.754074, 22.729284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.946182, 36.390942, 22.768032>,  <40.044098, 36.173061, 22.791281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.946182, 36.390942, 22.768032>,  <39.782990, 36.754074, 22.729284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946182, 36.390942, 22.768032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192507, 0.018179, 0.981127,
		-0.892463, -0.418932, -0.167348,
		0.407983, -0.907836, 0.096872,
		40.068577, 36.118591, 22.797094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189922, 36.336433, 22.937183>,  <39.782990, 36.754074, 22.729284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189922, 36.336433, 22.937183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537346, 36.162354, 23.032017>,  <39.745800, 36.057907, 23.088917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537346, 36.162354, 23.032017>,  <39.189922, 36.336433, 22.937183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537346, 36.162354, 23.032017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360730, -0.227142, 0.904589,
		-0.339826, -0.871210, -0.354276,
		0.868558, -0.435200, 0.237083,
		39.797913, 36.031792, 23.103142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987148, 35.624222, 23.095833>,  <39.189922, 36.336433, 22.937183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987148, 35.624222, 23.095833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333427, 35.700821, 23.280830>,  <39.541195, 35.746780, 23.391829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333427, 35.700821, 23.280830>,  <38.987148, 35.624222, 23.095833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333427, 35.700821, 23.280830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386633, -0.331048, 0.860768,
		0.317942, -0.923979, -0.212547,
		0.865695, 0.191497, 0.462495,
		39.593136, 35.758270, 23.419579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157997, 34.978638, 23.495125>,  <38.987148, 35.624222, 23.095833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157997, 34.978638, 23.495125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.365776, 35.290493, 23.635035>,  <39.490444, 35.477604, 23.718981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.365776, 35.290493, 23.635035>,  <39.157997, 34.978638, 23.495125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365776, 35.290493, 23.635035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227269, -0.268536, 0.936076,
		0.823723, -0.565738, 0.037695,
		0.519451, 0.779634, 0.349774,
		39.521610, 35.524384, 23.739967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439098, 34.710491, 24.035503>,  <39.157997, 34.978638, 23.495125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439098, 34.710491, 24.035503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511398, 35.099911, 24.091398>,  <39.554779, 35.333565, 24.124935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511398, 35.099911, 24.091398>,  <39.439098, 34.710491, 24.035503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511398, 35.099911, 24.091398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120820, -0.119021, 0.985513,
		0.976080, -0.195014, 0.096112,
		0.180749, 0.973552, 0.139736,
		39.565624, 35.391975, 24.133320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798832, 34.732327, 24.524185>,  <39.439098, 34.710491, 24.035503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798832, 34.732327, 24.524185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646629, 35.102135, 24.532904>,  <39.555309, 35.324020, 24.538134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646629, 35.102135, 24.532904>,  <39.798832, 34.732327, 24.524185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646629, 35.102135, 24.532904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198257, -0.104572, 0.974555,
		0.903276, 0.366504, 0.223084,
		-0.380507, 0.924521, 0.021795,
		39.532478, 35.379490, 24.539442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112705, 35.118690, 25.113758>,  <39.798832, 34.732327, 24.524185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112705, 35.118690, 25.113758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768318, 35.313328, 25.054489>,  <39.561684, 35.430111, 25.018929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768318, 35.313328, 25.054489>,  <40.112705, 35.118690, 25.113758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768318, 35.313328, 25.054489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188654, -0.034951, 0.981421,
		0.472376, 0.872928, 0.121890,
		-0.860971, 0.486595, -0.148171,
		39.510025, 35.459305, 25.010038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028511, 35.682331, 25.599369>,  <40.112705, 35.118690, 25.113758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028511, 35.682331, 25.599369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.648319, 35.627823, 25.487646>,  <39.420204, 35.595116, 25.420612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.648319, 35.627823, 25.487646>,  <40.028511, 35.682331, 25.599369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648319, 35.627823, 25.487646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288210, 0.050289, 0.956246,
		-0.116266, 0.989394, -0.087075,
		-0.950483, -0.136274, -0.279307,
		39.363174, 35.586941, 25.403854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782742, 36.183796, 25.898630>,  <40.028511, 35.682331, 25.599369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782742, 36.183796, 25.898630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.485664, 35.923668, 25.834759>,  <39.307419, 35.767593, 25.796436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.485664, 35.923668, 25.834759>,  <39.782742, 36.183796, 25.898630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485664, 35.923668, 25.834759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376117, 0.207828, 0.902964,
		-0.554027, 0.730682, -0.398947,
		-0.742692, -0.650317, -0.159679,
		39.262856, 35.728573, 25.786856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209999, 36.477394, 26.197742>,  <39.782742, 36.183796, 25.898630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209999, 36.477394, 26.197742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.078297, 36.101040, 26.165926>,  <38.999275, 35.875229, 26.146835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.078297, 36.101040, 26.165926>,  <39.209999, 36.477394, 26.197742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078297, 36.101040, 26.165926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221630, -0.004877, 0.975119,
		-0.917862, 0.338694, -0.206922,
		-0.329257, -0.940884, -0.079541,
		38.979519, 35.818775, 26.142063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597382, 36.466267, 26.655716>,  <39.209999, 36.477394, 26.197742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597382, 36.466267, 26.655716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714016, 36.090084, 26.585836>,  <38.783997, 35.864376, 26.543909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714016, 36.090084, 26.585836>,  <38.597382, 36.466267, 26.655716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714016, 36.090084, 26.585836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327841, -0.269828, 0.905380,
		-0.898608, -0.206724, -0.386999,
		0.291587, -0.940457, -0.174697,
		38.801491, 35.807949, 26.533428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934185, 36.187267, 26.321737>,  <38.597382, 36.466267, 26.655716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934185, 36.187267, 26.321737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627720, 36.430302, 26.237982>,  <37.443840, 36.576122, 26.187729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627720, 36.430302, 26.237982>,  <37.934185, 36.187267, 26.321737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627720, 36.430302, 26.237982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396883, 0.191078, -0.897760,
		-0.505454, -0.770929, -0.387535,
		-0.766159, 0.607583, -0.209388,
		37.397873, 36.612576, 26.175165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679256, 36.118019, 25.592115>,  <37.934185, 36.187267, 26.321737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679256, 36.118019, 25.592115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.526592, 36.473972, 25.692066>,  <37.434994, 36.687546, 25.752037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.526592, 36.473972, 25.692066>,  <37.679256, 36.118019, 25.592115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526592, 36.473972, 25.692066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155791, 0.328409, -0.931599,
		-0.911078, -0.316627, -0.263977,
		-0.381662, 0.889885, 0.249879,
		37.412094, 36.740936, 25.767031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333652, 36.303909, 25.078253>,  <37.679256, 36.118019, 25.592115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333652, 36.303909, 25.078253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361229, 36.672581, 25.230967>,  <37.377773, 36.893784, 25.322596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361229, 36.672581, 25.230967>,  <37.333652, 36.303909, 25.078253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361229, 36.672581, 25.230967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161688, 0.367314, -0.915935,
		-0.984431, 0.124872, -0.123702,
		0.068937, 0.921677, 0.381786,
		37.381908, 36.949085, 25.345503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792824, 36.715378, 24.651175>,  <37.333652, 36.303909, 25.078253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792824, 36.715378, 24.651175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074169, 36.942108, 24.822752>,  <37.242977, 37.078148, 24.925699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074169, 36.942108, 24.822752>,  <36.792824, 36.715378, 24.651175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074169, 36.942108, 24.822752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263979, 0.351998, -0.898005,
		-0.659998, 0.744854, 0.097952,
		0.703361, 0.566824, 0.428944,
		37.285179, 37.112156, 24.951435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536930, 37.319344, 24.423223>,  <36.792824, 36.715378, 24.651175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536930, 37.319344, 24.423223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916985, 37.393391, 24.523605>,  <37.145016, 37.437820, 24.583836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916985, 37.393391, 24.523605>,  <36.536930, 37.319344, 24.423223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916985, 37.393391, 24.523605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107524, 0.560923, -0.820855,
		-0.292722, 0.806905, 0.513047,
		0.950133, 0.185118, 0.250957,
		37.202023, 37.448925, 24.598892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656334, 38.042183, 24.243080>,  <36.536930, 37.319344, 24.423223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656334, 38.042183, 24.243080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.025970, 37.890503, 24.262096>,  <37.247753, 37.799496, 24.273506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.025970, 37.890503, 24.262096>,  <36.656334, 38.042183, 24.243080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025970, 37.890503, 24.262096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131324, 0.198256, -0.971313,
		0.358900, 0.903824, 0.233006,
		0.924091, -0.379204, 0.047540,
		37.303196, 37.776741, 24.276358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191322, 38.580296, 23.927784>,  <36.656334, 38.042183, 24.243080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191322, 38.580296, 23.927784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390385, 38.233734, 23.911423>,  <37.509823, 38.025795, 23.901606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390385, 38.233734, 23.911423>,  <37.191322, 38.580296, 23.927784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390385, 38.233734, 23.911423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367189, 0.253168, -0.895030,
		0.785816, 0.430401, 0.444127,
		0.497661, -0.866407, -0.040905,
		37.539684, 37.973812, 23.899151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680500, 39.153748, 24.244659>,  <37.191322, 38.580296, 23.927784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680500, 39.153748, 24.244659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555435, 39.530899, 24.198658>,  <37.480396, 39.757191, 24.171057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555435, 39.530899, 24.198658>,  <37.680500, 39.153748, 24.244659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555435, 39.530899, 24.198658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484373, -0.054117, 0.873186,
		0.817083, 0.328718, 0.473624,
		-0.312663, 0.942877, -0.115004,
		37.461636, 39.813763, 24.164156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907360, 39.561939, 24.840160>,  <37.680500, 39.153748, 24.244659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907360, 39.561939, 24.840160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.572636, 39.729050, 24.698618>,  <37.371803, 39.829315, 24.613691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.572636, 39.729050, 24.698618>,  <37.907360, 39.561939, 24.840160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572636, 39.729050, 24.698618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435813, -0.117079, 0.892390,
		0.331389, 0.900975, 0.280045,
		-0.836809, 0.417775, -0.353858,
		37.321594, 39.854382, 24.592461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769318, 39.969452, 25.376728>,  <37.907360, 39.561939, 24.840160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769318, 39.969452, 25.376728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420944, 39.948551, 25.181284>,  <37.211918, 39.936012, 25.064018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420944, 39.948551, 25.181284>,  <37.769318, 39.969452, 25.376728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420944, 39.948551, 25.181284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481535, -0.107457, 0.869815,
		-0.097951, 0.992836, 0.068429,
		-0.870936, -0.052248, -0.488610,
		37.159664, 39.932877, 25.034700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340473, 40.275940, 25.915379>,  <37.769318, 39.969452, 25.376728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340473, 40.275940, 25.915379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.099140, 40.101727, 25.648157>,  <36.954338, 39.997196, 25.487823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.099140, 40.101727, 25.648157>,  <37.340473, 40.275940, 25.915379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099140, 40.101727, 25.648157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639588, -0.236111, 0.731559,
		-0.476355, 0.868654, -0.136110,
		-0.603335, -0.435536, -0.668054,
		36.918140, 39.971066, 25.447741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645489, 40.572304, 26.173178>,  <37.340473, 40.275940, 25.915379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645489, 40.572304, 26.173178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589951, 40.256538, 25.933996>,  <36.556629, 40.067078, 25.790487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589951, 40.256538, 25.933996>,  <36.645489, 40.572304, 26.173178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589951, 40.256538, 25.933996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657846, -0.377814, 0.651533,
		-0.740245, 0.483822, -0.466856,
		-0.138841, -0.789413, -0.597955,
		36.548298, 40.019714, 25.754610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899601, 40.490204, 26.037376>,  <36.645489, 40.572304, 26.173178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899601, 40.490204, 26.037376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098404, 40.144489, 26.006390>,  <36.217686, 39.937061, 25.987799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098404, 40.144489, 26.006390>,  <35.899601, 40.490204, 26.037376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098404, 40.144489, 26.006390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434785, -0.325286, 0.839733,
		-0.750966, -0.383670, -0.537446,
		0.497004, -0.864284, -0.077465,
		36.247505, 39.885204, 25.983150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449726, 40.034794, 26.141758>,  <35.899601, 40.490204, 26.037376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449726, 40.034794, 26.141758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.792538, 39.845650, 26.223642>,  <35.998226, 39.732162, 26.272774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.792538, 39.845650, 26.223642>,  <35.449726, 40.034794, 26.141758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792538, 39.845650, 26.223642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392393, -0.341438, 0.854077,
		-0.333949, -0.812303, -0.478166,
		0.857033, -0.472847, 0.204719,
		36.049644, 39.703793, 26.285057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.419991, 40.436539, 22.106718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514107, 40.052750, 22.168751>,  <41.570576, 39.822475, 22.205971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514107, 40.052750, 22.168751>,  <41.419991, 40.436539, 22.106718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514107, 40.052750, 22.168751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090867, 0.137146, 0.986374,
		-0.967668, -0.246179, -0.054915,
		0.235293, -0.959472, 0.155081,
		41.584694, 39.764908, 22.215275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002872, 40.201000, 22.495943>,  <41.419991, 40.436539, 22.106718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002872, 40.201000, 22.495943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.305233, 39.943939, 22.545919>,  <41.486649, 39.789703, 22.575905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.305233, 39.943939, 22.545919>,  <41.002872, 40.201000, 22.495943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305233, 39.943939, 22.545919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221350, -0.071273, 0.972587,
		-0.616132, -0.762834, -0.196127,
		0.755900, -0.642654, 0.124940,
		41.532001, 39.751144, 22.583401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716320, 39.665184, 23.048588>,  <41.002872, 40.201000, 22.495943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716320, 39.665184, 23.048588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.114925, 39.633217, 23.039019>,  <41.354088, 39.614037, 23.033278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.114925, 39.633217, 23.039019>,  <40.716320, 39.665184, 23.048588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114925, 39.633217, 23.039019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027355, 0.042154, 0.998736,
		-0.078808, -0.995910, 0.044193,
		0.996514, -0.079918, -0.023921,
		41.413879, 39.609241, 23.031843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768108, 39.112328, 23.448870>,  <40.716320, 39.665184, 23.048588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768108, 39.112328, 23.448870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.119553, 39.302998, 23.437378>,  <41.330418, 39.417400, 23.430483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.119553, 39.302998, 23.437378>,  <40.768108, 39.112328, 23.448870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119553, 39.302998, 23.437378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177701, -0.270513, 0.946174,
		0.443242, -0.836425, -0.322381,
		0.878611, 0.476672, -0.028731,
		41.383137, 39.445999, 23.428759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274281, 38.584667, 23.689035>,  <40.768108, 39.112328, 23.448870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274281, 38.584667, 23.689035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.347820, 38.975491, 23.732035>,  <41.391945, 39.209984, 23.757833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.347820, 38.975491, 23.732035>,  <41.274281, 38.584667, 23.689035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347820, 38.975491, 23.732035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190224, -0.142659, 0.971320,
		0.964372, -0.158130, -0.212088,
		0.183851, 0.977058, 0.107496,
		41.402977, 39.268608, 23.764284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792076, 38.668640, 24.174803>,  <41.274281, 38.584667, 23.689035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792076, 38.668640, 24.174803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.631401, 39.034321, 24.196280>,  <41.534996, 39.253731, 24.209166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.631401, 39.034321, 24.196280>,  <41.792076, 38.668640, 24.174803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631401, 39.034321, 24.196280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073263, -0.026363, 0.996964,
		0.912842, 0.404401, -0.056388,
		-0.401686, 0.914202, 0.053693,
		41.510895, 39.308582, 24.212387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031525, 38.940983, 24.826448>,  <41.792076, 38.668640, 24.174803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031525, 38.940983, 24.826448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.743843, 39.205379, 24.740805>,  <41.571236, 39.364017, 24.689419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.743843, 39.205379, 24.740805>,  <42.031525, 38.940983, 24.826448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743843, 39.205379, 24.740805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080243, 0.227076, 0.970565,
		0.690154, 0.715211, -0.110273,
		-0.719199, 0.660991, -0.214109,
		41.528084, 39.403675, 24.676573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177788, 39.563446, 25.237190>,  <42.031525, 38.940983, 24.826448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177788, 39.563446, 25.237190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.785770, 39.598030, 25.165592>,  <41.550560, 39.618782, 25.122633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.785770, 39.598030, 25.165592>,  <42.177788, 39.563446, 25.237190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785770, 39.598030, 25.165592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160043, 0.190888, 0.968477,
		0.117905, 0.977796, -0.173241,
		-0.980043, 0.086463, -0.178996,
		41.491756, 39.623970, 25.111893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911812, 40.195782, 25.585541>,  <42.177788, 39.563446, 25.237190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911812, 40.195782, 25.585541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.585331, 39.975227, 25.516504>,  <41.389442, 39.842896, 25.475082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.585331, 39.975227, 25.516504>,  <41.911812, 40.195782, 25.585541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585331, 39.975227, 25.516504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233880, 0.042162, 0.971351,
		-0.528311, 0.833185, -0.163371,
		-0.816203, -0.551385, -0.172591,
		41.340469, 39.809811, 25.464727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351440, 40.583794, 25.849781>,  <41.911812, 40.195782, 25.585541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351440, 40.583794, 25.849781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.241589, 40.199173, 25.850174>,  <41.175678, 39.968403, 25.850409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.241589, 40.199173, 25.850174>,  <41.351440, 40.583794, 25.849781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241589, 40.199173, 25.850174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262796, 0.076039, 0.961851,
		-0.924941, 0.263896, -0.273574,
		-0.274631, -0.961549, 0.000981,
		41.159199, 39.910709, 25.850468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674156, 40.561073, 26.030685>,  <41.351440, 40.583794, 25.849781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674156, 40.561073, 26.030685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.829792, 40.204327, 26.122936>,  <40.923172, 39.990280, 26.178288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.829792, 40.204327, 26.122936>,  <40.674156, 40.561073, 26.030685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829792, 40.204327, 26.122936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288837, 0.119620, 0.949876,
		-0.874747, -0.436201, -0.211060,
		0.389090, -0.891863, 0.230628,
		40.946518, 39.936768, 26.192125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134739, 40.273949, 26.463228>,  <40.674156, 40.561073, 26.030685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134739, 40.273949, 26.463228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.442345, 40.034985, 26.554193>,  <40.626907, 39.891605, 26.608772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.442345, 40.034985, 26.554193>,  <40.134739, 40.273949, 26.463228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442345, 40.034985, 26.554193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272447, 0.015507, 0.962046,
		-0.578259, -0.801789, -0.150836,
		0.769019, -0.597406, 0.227412,
		40.673050, 39.855762, 26.622417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425503, 40.531574, 26.500753>,  <40.134739, 40.273949, 26.463228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425503, 40.531574, 26.500753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.386154, 40.925800, 26.555876>,  <39.362545, 41.162334, 26.588949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.386154, 40.925800, 26.555876>,  <39.425503, 40.531574, 26.500753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386154, 40.925800, 26.555876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552967, 0.169266, -0.815829,
		-0.827376, -0.004051, -0.561634,
		-0.098370, 0.985562, 0.137807,
		39.356644, 41.221470, 26.597218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435558, 40.712460, 25.828943>,  <39.425503, 40.531574, 26.500753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435558, 40.712460, 25.828943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467926, 41.066055, 26.013124>,  <39.487347, 41.278214, 26.123632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467926, 41.066055, 26.013124>,  <39.435558, 40.712460, 25.828943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467926, 41.066055, 26.013124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491002, 0.366673, -0.790233,
		-0.867393, 0.290024, -0.404371,
		0.080915, 0.883989, 0.460452,
		39.492199, 41.331253, 26.151260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132172, 41.244499, 25.405756>,  <39.435558, 40.712460, 25.828943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132172, 41.244499, 25.405756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.399845, 41.427223, 25.640196>,  <39.560452, 41.536858, 25.780859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.399845, 41.427223, 25.640196>,  <39.132172, 41.244499, 25.405756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399845, 41.427223, 25.640196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437467, 0.395380, -0.807649,
		-0.600675, 0.796867, 0.064744,
		0.669188, 0.456812, 0.586098,
		39.600601, 41.564266, 25.816025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147427, 41.896828, 25.266041>,  <39.132172, 41.244499, 25.405756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147427, 41.896828, 25.266041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.505875, 41.857609, 25.439182>,  <39.720943, 41.834080, 25.543068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.505875, 41.857609, 25.439182>,  <39.147427, 41.896828, 25.266041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505875, 41.857609, 25.439182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437747, 0.356051, -0.825594,
		-0.073175, 0.929309, 0.361981,
		0.896116, -0.098043, 0.432856,
		39.774708, 41.828197, 25.569038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366867, 42.525768, 25.285805>,  <39.147427, 41.896828, 25.266041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366867, 42.525768, 25.285805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.707798, 42.325203, 25.345304>,  <39.912357, 42.204865, 25.381004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.707798, 42.325203, 25.345304>,  <39.366867, 42.525768, 25.285805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707798, 42.325203, 25.345304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422060, 0.491437, -0.761810,
		0.308881, 0.712091, 0.630491,
		0.852325, -0.501414, 0.148750,
		39.963497, 42.174778, 25.389929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015545, 43.007412, 25.371759>,  <39.366867, 42.525768, 25.285805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015545, 43.007412, 25.371759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.136215, 42.659473, 25.215630>,  <40.208618, 42.450710, 25.121952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.136215, 42.659473, 25.215630>,  <40.015545, 43.007412, 25.371759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136215, 42.659473, 25.215630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444561, 0.490505, -0.749514,
		0.843420, 0.052588, 0.534675,
		0.301676, -0.869851, -0.390323,
		40.226719, 42.398518, 25.098534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537521, 43.233994, 24.980686>,  <40.015545, 43.007412, 25.371759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537521, 43.233994, 24.980686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499046, 42.852192, 24.867777>,  <40.475960, 42.623112, 24.800032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499046, 42.852192, 24.867777>,  <40.537521, 43.233994, 24.980686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499046, 42.852192, 24.867777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303005, 0.242050, -0.921737,
		0.948122, -0.174189, 0.265936,
		-0.096187, -0.954500, -0.282273,
		40.470192, 42.565842, 24.783094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166527, 43.142666, 24.636950>,  <40.537521, 43.233994, 24.980686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166527, 43.142666, 24.636950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.886509, 42.887611, 24.508356>,  <40.718498, 42.734577, 24.431200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.886509, 42.887611, 24.508356>,  <41.166527, 43.142666, 24.636950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886509, 42.887611, 24.508356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277752, 0.171614, -0.945200,
		0.657866, -0.750977, 0.056968,
		-0.700047, -0.637638, -0.321485,
		40.676495, 42.696320, 24.411911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493473, 42.716816, 24.183052>,  <41.166527, 43.142666, 24.636950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493473, 42.716816, 24.183052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121120, 42.616226, 24.077057>,  <40.897709, 42.555874, 24.013460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121120, 42.616226, 24.077057>,  <41.493473, 42.716816, 24.183052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121120, 42.616226, 24.077057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238089, 0.132532, -0.962158,
		0.277076, -0.958747, -0.063499,
		-0.930882, -0.251473, -0.264989,
		40.841854, 42.540783, 23.997561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569832, 42.210167, 23.729593>,  <41.493473, 42.716816, 24.183052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569832, 42.210167, 23.729593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.207909, 42.358047, 23.645075>,  <40.990753, 42.446774, 23.594364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.207909, 42.358047, 23.645075>,  <41.569832, 42.210167, 23.729593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207909, 42.358047, 23.645075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196767, -0.077054, -0.977418,
		-0.377632, -0.925951, -0.003025,
		-0.904808, 0.369699, -0.211295,
		40.936466, 42.468956, 23.581686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245514, 41.738609, 23.357334>,  <41.569832, 42.210167, 23.729593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245514, 41.738609, 23.357334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.055428, 42.076687, 23.259504>,  <40.941376, 42.279533, 23.200808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.055428, 42.076687, 23.259504>,  <41.245514, 41.738609, 23.357334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055428, 42.076687, 23.259504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187091, -0.174542, -0.966712,
		-0.859749, -0.505152, -0.075184,
		-0.475214, 0.845196, -0.244572,
		40.912865, 42.330246, 23.186132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919430, 41.488083, 22.789211>,  <41.245514, 41.738609, 23.357334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919430, 41.488083, 22.789211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.868797, 41.883072, 22.751522>,  <40.838417, 42.120064, 22.728909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.868797, 41.883072, 22.751522>,  <40.919430, 41.488083, 22.789211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868797, 41.883072, 22.751522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017096, -0.092800, -0.995538,
		-0.991809, -0.127623, -0.005136,
		-0.126577, 0.987472, -0.094222,
		40.830826, 42.179314, 22.723255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484512, 41.585686, 22.282360>,  <40.919430, 41.488083, 22.789211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484512, 41.585686, 22.282360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.646511, 41.951355, 22.288790>,  <40.743710, 42.170757, 22.292646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.646511, 41.951355, 22.288790>,  <40.484512, 41.585686, 22.282360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646511, 41.951355, 22.288790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022635, 0.027597, -0.999363,
		-0.914036, 0.404379, 0.031869,
		0.405001, 0.914175, 0.016072,
		40.768013, 42.225609, 22.293612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752377, 41.493202, 22.374916>,  <40.484512, 41.585686, 22.282360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752377, 41.493202, 22.374916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.422665, 41.497440, 22.148481>,  <39.224838, 41.499985, 22.012621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.422665, 41.497440, 22.148481>,  <39.752377, 41.493202, 22.374916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422665, 41.497440, 22.148481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550292, -0.250243, 0.796591,
		-0.133216, 0.968125, 0.212103,
		-0.824277, 0.010600, -0.566088,
		39.175381, 41.500622, 21.978655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202293, 41.944569, 22.619368>,  <39.752377, 41.493202, 22.374916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202293, 41.944569, 22.619368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037617, 41.642361, 22.415525>,  <38.938812, 41.461037, 22.293221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037617, 41.642361, 22.415525>,  <39.202293, 41.944569, 22.619368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037617, 41.642361, 22.415525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458564, -0.311504, 0.832277,
		-0.787549, 0.576325, -0.218213,
		-0.411687, -0.755523, -0.509606,
		38.914112, 41.415703, 22.262644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517857, 41.840687, 22.933571>,  <39.202293, 41.944569, 22.619368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517857, 41.840687, 22.933571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.532883, 41.511559, 22.706747>,  <38.541897, 41.314083, 22.570652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.532883, 41.511559, 22.706747>,  <38.517857, 41.840687, 22.933571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532883, 41.511559, 22.706747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561902, -0.486646, 0.668911,
		-0.826350, 0.293505, -0.480625,
		0.037565, -0.822819, -0.567061,
		38.544151, 41.264713, 22.536629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890652, 41.572147, 22.989901>,  <38.517857, 41.840687, 22.933571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890652, 41.572147, 22.989901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.115513, 41.260597, 22.878658>,  <38.250427, 41.073666, 22.811913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.115513, 41.260597, 22.878658>,  <37.890652, 41.572147, 22.989901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115513, 41.260597, 22.878658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464599, -0.575597, 0.672931,
		-0.684206, -0.249080, -0.685435,
		0.562148, -0.778876, -0.278105,
		38.284157, 41.026936, 22.795227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383362, 41.057854, 22.812332>,  <37.890652, 41.572147, 22.989901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383362, 41.057854, 22.812332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.728256, 40.872856, 22.894934>,  <37.935192, 40.761856, 22.944494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.728256, 40.872856, 22.894934>,  <37.383362, 41.057854, 22.812332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728256, 40.872856, 22.894934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499803, -0.710815, 0.494914,
		-0.082107, -0.529946, -0.844047,
		0.862239, -0.462493, 0.206506,
		37.986927, 40.734108, 22.956884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094318, 40.377003, 22.774302>,  <37.383362, 41.057854, 22.812332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094318, 40.377003, 22.774302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.442951, 40.407742, 22.967978>,  <37.652130, 40.426186, 23.084183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.442951, 40.407742, 22.967978>,  <37.094318, 40.377003, 22.774302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442951, 40.407742, 22.967978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360372, -0.569173, 0.739036,
		0.332381, -0.818619, -0.468386,
		0.871581, 0.076849, 0.484190,
		37.704426, 40.430798, 23.113234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363796, 39.698608, 22.916866>,  <37.094318, 40.377003, 22.774302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363796, 39.698608, 22.916866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555824, 39.937447, 23.173929>,  <37.671040, 40.080750, 23.328167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555824, 39.937447, 23.173929>,  <37.363796, 39.698608, 22.916866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555824, 39.937447, 23.173929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433937, -0.475049, 0.765524,
		0.762386, -0.646377, 0.031046,
		0.480068, 0.597097, 0.642658,
		37.699844, 40.116577, 23.366726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543190, 39.298332, 23.430119>,  <37.363796, 39.698608, 22.916866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543190, 39.298332, 23.430119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.558224, 39.657402, 23.605743>,  <37.567242, 39.872845, 23.711119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.558224, 39.657402, 23.605743>,  <37.543190, 39.298332, 23.430119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558224, 39.657402, 23.605743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432576, -0.381459, 0.816925,
		0.900814, -0.220630, 0.373975,
		0.037582, 0.897670, 0.439063,
		37.569500, 39.926704, 23.737463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086376, 38.747139, 23.653248>,  <37.543190, 39.298332, 23.430119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086376, 38.747139, 23.653248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.952976, 38.374325, 23.596550>,  <37.872936, 38.150635, 23.562531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.952976, 38.374325, 23.596550>,  <38.086376, 38.747139, 23.653248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952976, 38.374325, 23.596550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317247, 0.030633, -0.947848,
		0.887769, -0.361073, 0.285469,
		-0.333497, -0.932034, -0.141744,
		37.852928, 38.094715, 23.554028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671494, 38.308720, 23.235357>,  <38.086376, 38.747139, 23.653248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671494, 38.308720, 23.235357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324860, 38.121681, 23.165640>,  <38.116879, 38.009457, 23.123810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324860, 38.121681, 23.165640>,  <38.671494, 38.308720, 23.235357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324860, 38.121681, 23.165640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286308, -0.179818, -0.941113,
		0.408719, -0.865460, 0.289704,
		-0.866589, -0.467596, -0.174293,
		38.064884, 37.981403, 23.113352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919815, 37.797920, 22.721281>,  <38.671494, 38.308720, 23.235357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919815, 37.797920, 22.721281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520805, 37.786701, 22.695482>,  <38.281399, 37.779968, 22.680004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520805, 37.786701, 22.695482>,  <38.919815, 37.797920, 22.721281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520805, 37.786701, 22.695482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069497, -0.252324, -0.965144,
		0.010798, -0.967236, 0.253648,
		-0.997524, -0.028050, -0.064496,
		38.221550, 37.778286, 22.676134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745502, 37.106167, 22.540337>,  <38.919815, 37.797920, 22.721281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745502, 37.106167, 22.540337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461597, 37.358059, 22.414055>,  <38.291252, 37.509193, 22.338285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461597, 37.358059, 22.414055>,  <38.745502, 37.106167, 22.540337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461597, 37.358059, 22.414055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270533, -0.170124, -0.947560,
		-0.650418, -0.757955, -0.049615,
		-0.709767, 0.629732, -0.315703,
		38.248669, 37.546978, 22.319344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435581, 36.620270, 21.963438>,  <38.745502, 37.106167, 22.540337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435581, 36.620270, 21.963438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324062, 37.002998, 21.930529>,  <38.257153, 37.232635, 21.910784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324062, 37.002998, 21.930529>,  <38.435581, 36.620270, 21.963438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324062, 37.002998, 21.930529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340695, 0.018446, -0.939993,
		-0.897886, -0.290098, -0.331126,
		-0.278798, 0.956819, -0.082272,
		38.240421, 37.290043, 21.905848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203922, 36.575390, 21.349527>,  <38.435581, 36.620270, 21.963438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203922, 36.575390, 21.349527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263641, 36.965382, 21.415405>,  <38.299473, 37.199375, 21.454933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263641, 36.965382, 21.415405>,  <38.203922, 36.575390, 21.349527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263641, 36.965382, 21.415405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302958, 0.113449, -0.946227,
		-0.941237, 0.191162, -0.278441,
		0.149293, 0.974980, 0.164697,
		38.308430, 37.257877, 21.464815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924175, 36.907013, 20.694708>,  <38.203922, 36.575390, 21.349527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924175, 36.907013, 20.694708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184616, 37.147461, 20.880058>,  <38.340881, 37.291729, 20.991268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184616, 37.147461, 20.880058>,  <37.924175, 36.907013, 20.694708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184616, 37.147461, 20.880058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451023, 0.184593, -0.873214,
		-0.610446, 0.777545, -0.150931,
		0.651102, 0.601124, 0.463375,
		38.379948, 37.327797, 21.019072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864288, 37.574615, 20.261395>,  <37.924175, 36.907013, 20.694708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864288, 37.574615, 20.261395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.223114, 37.558800, 20.437445>,  <38.438408, 37.549309, 20.543076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.223114, 37.558800, 20.437445>,  <37.864288, 37.574615, 20.261395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223114, 37.558800, 20.437445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440592, 0.156568, -0.883949,
		-0.033960, 0.986875, 0.157872,
		0.897065, -0.039538, 0.440127,
		38.492233, 37.546940, 20.569483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238087, 38.055538, 19.970091>,  <37.864288, 37.574615, 20.261395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238087, 38.055538, 19.970091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511650, 37.817818, 20.139360>,  <38.675789, 37.675186, 20.240923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511650, 37.817818, 20.139360>,  <38.238087, 38.055538, 19.970091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511650, 37.817818, 20.139360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531307, 0.008206, -0.847140,
		0.499983, 0.804201, 0.321369,
		0.683908, -0.594301, 0.423175,
		38.716824, 37.639526, 20.266314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.436039, 35.862499, 36.521538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833965, 35.880882, 36.485245>,  <36.072720, 35.891911, 36.463470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833965, 35.880882, 36.485245>,  <35.436039, 35.862499, 36.521538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833965, 35.880882, 36.485245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094594, 0.090311, -0.991411,
		-0.037368, 0.994853, 0.094190,
		0.994814, 0.045957, -0.090733,
		36.132408, 35.894669, 36.458023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628170, 36.406082, 36.053165>,  <35.436039, 35.862499, 36.521538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628170, 36.406082, 36.053165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862289, 36.086174, 35.999805>,  <36.002762, 35.894230, 35.967789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862289, 36.086174, 35.999805>,  <35.628170, 36.406082, 36.053165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862289, 36.086174, 35.999805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170633, 0.039349, -0.984549,
		0.792663, 0.599013, -0.113436,
		0.585294, -0.799772, -0.133402,
		36.037876, 35.846241, 35.959785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179211, 36.610680, 35.608269>,  <35.628170, 36.406082, 36.053165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179211, 36.610680, 35.608269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164307, 36.212399, 35.574360>,  <36.155365, 35.973431, 35.554012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164307, 36.212399, 35.574360>,  <36.179211, 36.610680, 35.608269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164307, 36.212399, 35.574360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001424, 0.084888, -0.996390,
		0.999305, -0.037006, -0.004581,
		-0.037261, -0.995703, -0.084776,
		36.153130, 35.913689, 35.548927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752689, 36.366089, 35.261971>,  <36.179211, 36.610680, 35.608269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752689, 36.366089, 35.261971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487041, 36.071949, 35.208008>,  <36.327652, 35.895466, 35.175632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487041, 36.071949, 35.208008>,  <36.752689, 36.366089, 35.261971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487041, 36.071949, 35.208008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120031, 0.073227, -0.990066,
		0.737927, -0.673716, 0.039633,
		-0.664121, -0.735353, -0.134903,
		36.287804, 35.851341, 35.167538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001076, 35.944344, 34.766773>,  <36.752689, 36.366089, 35.261971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001076, 35.944344, 34.766773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623550, 35.812843, 34.780254>,  <36.397034, 35.733944, 34.788345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623550, 35.812843, 34.780254>,  <37.001076, 35.944344, 34.766773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623550, 35.812843, 34.780254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064402, 0.082937, -0.994472,
		0.324140, -0.940767, -0.099449,
		-0.943814, -0.328753, 0.033705,
		36.340405, 35.714218, 34.790367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897778, 35.399117, 34.240780>,  <37.001076, 35.944344, 34.766773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897778, 35.399117, 34.240780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551846, 35.579250, 34.329559>,  <36.344284, 35.687328, 34.382828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551846, 35.579250, 34.329559>,  <36.897778, 35.399117, 34.240780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551846, 35.579250, 34.329559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210792, 0.075538, -0.974608,
		-0.455662, -0.889661, 0.029598,
		-0.864835, 0.450331, 0.221953,
		36.292397, 35.714348, 34.396145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466194, 35.067192, 33.813385>,  <36.897778, 35.399117, 34.240780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466194, 35.067192, 33.813385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250912, 35.391796, 33.904411>,  <36.121742, 35.586559, 33.959026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250912, 35.391796, 33.904411>,  <36.466194, 35.067192, 33.813385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250912, 35.391796, 33.904411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415020, -0.020173, -0.909589,
		-0.733550, -0.583990, 0.347650,
		-0.538203, 0.811511, 0.227569,
		36.089451, 35.635250, 33.972683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806271, 34.921654, 33.511642>,  <36.466194, 35.067192, 33.813385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806271, 34.921654, 33.511642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809505, 35.320728, 33.538654>,  <35.811447, 35.560173, 33.554863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809505, 35.320728, 33.538654>,  <35.806271, 34.921654, 33.511642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809505, 35.320728, 33.538654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340356, 0.066247, -0.937960,
		-0.940262, -0.015396, 0.340104,
		0.008090, 0.997685, 0.067530,
		35.811932, 35.620033, 33.558914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118248, 35.218773, 33.131157>,  <35.806271, 34.921654, 33.511642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118248, 35.218773, 33.131157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392338, 35.507118, 33.172764>,  <35.556793, 35.680126, 33.197727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392338, 35.507118, 33.172764>,  <35.118248, 35.218773, 33.131157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392338, 35.507118, 33.172764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140760, 0.271198, -0.952175,
		-0.714601, 0.637812, 0.287301,
		0.685224, 0.720866, 0.104020,
		35.597904, 35.723377, 33.203968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832821, 35.876595, 32.769470>,  <35.118248, 35.218773, 33.131157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832821, 35.876595, 32.769470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225574, 35.942314, 32.807213>,  <35.461227, 35.981747, 32.829857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225574, 35.942314, 32.807213>,  <34.832821, 35.876595, 32.769470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225574, 35.942314, 32.807213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047889, 0.266615, -0.962613,
		-0.183309, 0.949696, 0.253918,
		0.981888, 0.164295, 0.094353,
		35.520142, 35.991604, 32.835518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935783, 36.554886, 32.500973>,  <34.832821, 35.876595, 32.769470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935783, 36.554886, 32.500973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281006, 36.357544, 32.457630>,  <35.488140, 36.239140, 32.431625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281006, 36.357544, 32.457630>,  <34.935783, 36.554886, 32.500973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281006, 36.357544, 32.457630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062440, 0.317080, -0.946341,
		0.501237, 0.809978, 0.304462,
		0.863054, -0.493352, -0.108357,
		35.539921, 36.209538, 32.425121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335575, 37.002953, 32.011650>,  <34.935783, 36.554886, 32.500973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335575, 37.002953, 32.011650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533745, 36.655869, 31.995443>,  <35.652645, 36.447620, 31.985718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533745, 36.655869, 31.995443>,  <35.335575, 37.002953, 32.011650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533745, 36.655869, 31.995443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223840, 0.172596, -0.959222,
		0.839318, 0.466148, 0.279736,
		0.495421, -0.867708, -0.040520,
		35.682369, 36.395557, 31.983288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250244, 37.846672, 31.975920>,  <35.335575, 37.002953, 32.011650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250244, 37.846672, 31.975920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919292, 38.069344, 31.946091>,  <34.720722, 38.202946, 31.928192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919292, 38.069344, 31.946091>,  <35.250244, 37.846672, 31.975920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919292, 38.069344, 31.946091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099968, -0.015304, 0.994873,
		0.552680, 0.830589, 0.068312,
		-0.827376, 0.556675, -0.074574,
		34.671078, 38.236347, 31.923719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309963, 38.398640, 32.487072>,  <35.250244, 37.846672, 31.975920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309963, 38.398640, 32.487072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922081, 38.358101, 32.398170>,  <34.689350, 38.333778, 32.344830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922081, 38.358101, 32.398170>,  <35.309963, 38.398640, 32.487072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922081, 38.358101, 32.398170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217021, -0.060186, 0.974310,
		-0.112120, 0.993029, 0.036368,
		-0.969706, -0.101347, -0.222256,
		34.631168, 38.327698, 32.331493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917435, 38.937088, 32.834930>,  <35.309963, 38.398640, 32.487072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917435, 38.937088, 32.834930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637417, 38.668892, 32.736641>,  <34.469406, 38.507977, 32.677670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637417, 38.668892, 32.736641>,  <34.917435, 38.937088, 32.834930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637417, 38.668892, 32.736641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391692, 0.072822, 0.917210,
		-0.597084, 0.738338, -0.313603,
		-0.700049, -0.670487, -0.245720,
		34.427402, 38.467747, 32.662926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354813, 39.231129, 33.085915>,  <34.917435, 38.937088, 32.834930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354813, 39.231129, 33.085915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260437, 38.845417, 33.037746>,  <34.203812, 38.613991, 33.008846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260437, 38.845417, 33.037746>,  <34.354813, 39.231129, 33.085915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260437, 38.845417, 33.037746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504836, 0.015745, 0.863072,
		-0.830345, 0.264424, -0.490517,
		-0.235940, -0.964278, -0.120417,
		34.189655, 38.556133, 33.001621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684593, 39.230877, 33.068939>,  <34.354813, 39.231129, 33.085915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684593, 39.230877, 33.068939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741482, 38.860962, 33.210102>,  <33.775616, 38.639011, 33.294800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741482, 38.860962, 33.210102>,  <33.684593, 39.230877, 33.068939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741482, 38.860962, 33.210102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435040, 0.261850, 0.861496,
		-0.889108, -0.276051, -0.365079,
		0.142221, -0.924787, 0.352907,
		33.784149, 38.583527, 33.315975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078400, 39.048237, 33.397984>,  <33.684593, 39.230877, 33.068939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078400, 39.048237, 33.397984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341927, 38.775024, 33.524109>,  <33.500042, 38.611095, 33.599785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341927, 38.775024, 33.524109>,  <33.078400, 39.048237, 33.397984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341927, 38.775024, 33.524109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377988, 0.061840, 0.923743,
		-0.650447, -0.727763, -0.217437,
		0.658820, -0.683035, 0.315309,
		33.539574, 38.570114, 33.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659031, 38.528000, 33.860870>,  <33.078400, 39.048237, 33.397984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659031, 38.528000, 33.860870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034920, 38.439846, 33.965450>,  <33.260452, 38.386951, 34.028198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034920, 38.439846, 33.965450>,  <32.659031, 38.528000, 33.860870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034920, 38.439846, 33.965450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306222, -0.202122, 0.930255,
		-0.152165, -0.954243, -0.257423,
		0.939720, -0.220381, 0.261454,
		33.316837, 38.373730, 34.043884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609257, 37.950569, 34.284737>,  <32.659031, 38.528000, 33.860870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609257, 37.950569, 34.284737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.980686, 38.070950, 34.371624>,  <33.203545, 38.143177, 34.423756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.980686, 38.070950, 34.371624>,  <32.609257, 37.950569, 34.284737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980686, 38.070950, 34.371624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198452, -0.091985, 0.975785,
		0.313646, -0.949193, -0.025690,
		0.928571, 0.300952, 0.217220,
		33.259258, 38.161236, 34.436790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904430, 37.443100, 34.667557>,  <32.609257, 37.950569, 34.284737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904430, 37.443100, 34.667557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108356, 37.776966, 34.750900>,  <33.230713, 37.977287, 34.800907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108356, 37.776966, 34.750900>,  <32.904430, 37.443100, 34.667557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108356, 37.776966, 34.750900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278428, -0.069074, 0.957970,
		0.813980, -0.546404, 0.197180,
		0.509819, 0.834668, 0.208359,
		33.261303, 38.027367, 34.813408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229958, 37.342918, 35.329720>,  <32.904430, 37.443100, 34.667557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229958, 37.342918, 35.329720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.210724, 37.741402, 35.300709>,  <33.199184, 37.980492, 35.283302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.210724, 37.741402, 35.300709>,  <33.229958, 37.342918, 35.329720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210724, 37.741402, 35.300709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284298, 0.055958, 0.957102,
		0.957529, 0.066642, 0.280529,
		-0.048085, 0.996207, -0.072527,
		33.196297, 38.040264, 35.278950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294117, 37.335487, 36.038990>,  <33.229958, 37.342918, 35.329720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294117, 37.335487, 36.038990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171387, 37.687275, 35.893452>,  <33.097748, 37.898350, 35.806129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171387, 37.687275, 35.893452>,  <33.294117, 37.335487, 36.038990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171387, 37.687275, 35.893452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231045, 0.302027, 0.924877,
		0.923295, 0.367845, 0.110527,
		-0.306830, 0.879471, -0.363849,
		33.079338, 37.951115, 35.784298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749355, 37.867760, 36.418884>,  <33.294117, 37.335487, 36.038990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749355, 37.867760, 36.418884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417698, 38.034180, 36.269527>,  <33.218704, 38.134033, 36.179913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417698, 38.034180, 36.269527>,  <33.749355, 37.867760, 36.418884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417698, 38.034180, 36.269527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215451, 0.378500, 0.900177,
		0.515850, 0.826823, -0.224192,
		-0.829144, 0.416054, -0.373389,
		33.168953, 38.158997, 36.157509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773117, 38.728497, 36.419888>,  <33.749355, 37.867760, 36.418884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773117, 38.728497, 36.419888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437202, 38.518097, 36.473675>,  <33.235653, 38.391857, 36.505947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437202, 38.518097, 36.473675>,  <33.773117, 38.728497, 36.419888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437202, 38.518097, 36.473675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107728, 0.404195, 0.908307,
		-0.532124, 0.748296, -0.396103,
		-0.839785, -0.526003, 0.134470,
		33.185268, 38.360294, 36.514015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408867, 39.153088, 36.509415>,  <33.773117, 38.728497, 36.419888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408867, 39.153088, 36.509415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399837, 39.508705, 36.692322>,  <34.394421, 39.722076, 36.802067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399837, 39.508705, 36.692322>,  <34.408867, 39.153088, 36.509415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399837, 39.508705, 36.692322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324456, 0.439143, -0.837784,
		-0.945632, 0.129453, -0.298367,
		-0.022572, 0.889042, 0.457270,
		34.393066, 39.775417, 36.829502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004341, 39.634777, 36.186634>,  <34.408867, 39.153088, 36.509415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004341, 39.634777, 36.186634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288029, 39.867619, 36.345707>,  <34.458241, 40.007324, 36.441151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288029, 39.867619, 36.345707>,  <34.004341, 39.634777, 36.186634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288029, 39.867619, 36.345707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140316, 0.436263, -0.888812,
		-0.690880, 0.686167, 0.227728,
		0.709223, 0.582108, 0.397685,
		34.500797, 40.042252, 36.465012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985672, 40.391846, 36.004494>,  <34.004341, 39.634777, 36.186634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985672, 40.391846, 36.004494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370899, 40.319981, 36.084705>,  <34.602036, 40.276863, 36.132832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370899, 40.319981, 36.084705>,  <33.985672, 40.391846, 36.004494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370899, 40.319981, 36.084705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240994, 0.243098, -0.939588,
		0.120061, 0.953218, 0.277419,
		0.963072, -0.179664, 0.200533,
		34.659821, 40.266083, 36.144867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526829, 41.019787, 35.978802>,  <33.985672, 40.391846, 36.004494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526829, 41.019787, 35.978802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740479, 40.697807, 35.875446>,  <34.868668, 40.504620, 35.813431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740479, 40.697807, 35.875446>,  <34.526829, 41.019787, 35.978802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740479, 40.697807, 35.875446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188382, 0.411281, -0.891830,
		0.824149, 0.427674, 0.371313,
		0.534126, -0.804949, -0.258390,
		34.900715, 40.456322, 35.797928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165291, 41.279327, 35.596420>,  <34.526829, 41.019787, 35.978802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165291, 41.279327, 35.596420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126335, 40.892670, 35.501667>,  <35.102962, 40.660675, 35.444813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126335, 40.892670, 35.501667>,  <35.165291, 41.279327, 35.596420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126335, 40.892670, 35.501667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311009, 0.196538, -0.929864,
		0.945404, -0.164234, 0.281493,
		-0.097391, -0.966644, -0.236886,
		35.097118, 40.602676, 35.430603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713844, 41.203281, 35.177822>,  <35.165291, 41.279327, 35.596420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713844, 41.203281, 35.177822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489056, 40.883976, 35.091141>,  <35.354183, 40.692390, 35.039131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489056, 40.883976, 35.091141>,  <35.713844, 41.203281, 35.177822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489056, 40.883976, 35.091141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358760, 0.000828, -0.933430,
		0.745304, -0.602305, 0.285920,
		-0.561972, -0.798266, -0.216700,
		35.320465, 40.644497, 35.026131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182598, 40.649025, 34.841839>,  <35.713844, 41.203281, 35.177822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182598, 40.649025, 34.841839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801701, 40.604149, 34.728245>,  <35.573162, 40.577225, 34.660088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801701, 40.604149, 34.728245>,  <36.182598, 40.649025, 34.841839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801701, 40.604149, 34.728245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296241, -0.114122, -0.948271,
		0.073975, -0.987112, 0.141906,
		-0.952244, -0.112186, -0.283981,
		35.516026, 40.570492, 34.643051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217949, 40.136909, 34.286983>,  <36.182598, 40.649025, 34.841839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217949, 40.136909, 34.286983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845978, 40.274002, 34.233662>,  <35.622795, 40.356258, 34.201668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845978, 40.274002, 34.233662>,  <36.217949, 40.136909, 34.286983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845978, 40.274002, 34.233662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053443, -0.232684, -0.971083,
		-0.363835, -0.910162, 0.198063,
		-0.929929, 0.342729, -0.133300,
		35.566998, 40.376820, 34.193672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845634, 39.749599, 33.762371>,  <36.217949, 40.136909, 34.286983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845634, 39.749599, 33.762371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661182, 40.104523, 33.759842>,  <35.550510, 40.317478, 33.758324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661182, 40.104523, 33.759842>,  <35.845634, 39.749599, 33.762371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661182, 40.104523, 33.759842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005979, -0.004016, -0.999974,
		-0.887311, -0.461158, -0.003454,
		-0.461132, 0.887309, -0.006321,
		35.522842, 40.370716, 33.757946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370533, 39.697006, 33.174282>,  <35.845634, 39.749599, 33.762371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370533, 39.697006, 33.174282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419479, 40.088161, 33.242111>,  <35.448849, 40.322857, 33.282810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419479, 40.088161, 33.242111>,  <35.370533, 39.697006, 33.174282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419479, 40.088161, 33.242111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019223, 0.168488, -0.985516,
		-0.992299, 0.123855, 0.001820,
		0.122368, 0.977891, 0.169572,
		35.456188, 40.381531, 33.292984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825943, 40.084045, 32.726669>,  <35.370533, 39.697006, 33.174282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825943, 40.084045, 32.726669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138634, 40.310272, 32.831772>,  <35.326248, 40.446011, 32.894833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138634, 40.310272, 32.831772>,  <34.825943, 40.084045, 32.726669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138634, 40.310272, 32.831772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188302, 0.187600, -0.964027,
		-0.594519, 0.803079, 0.040153,
		0.781722, 0.565571, 0.262754,
		35.373150, 40.479942, 32.910599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846249, 40.636253, 32.230110>,  <34.825943, 40.084045, 32.726669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846249, 40.636253, 32.230110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210880, 40.627888, 32.394344>,  <35.429661, 40.622868, 32.492886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210880, 40.627888, 32.394344>,  <34.846249, 40.636253, 32.230110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210880, 40.627888, 32.394344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406323, 0.197913, -0.892038,
		-0.062602, 0.979996, 0.188912,
		0.911582, -0.020916, 0.410585,
		35.484356, 40.621613, 32.517521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207016, 41.132164, 31.865923>,  <34.846249, 40.636253, 32.230110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207016, 41.132164, 31.865923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482361, 40.910477, 32.053116>,  <35.647568, 40.777466, 32.165432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482361, 40.910477, 32.053116>,  <35.207016, 41.132164, 31.865923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482361, 40.910477, 32.053116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596689, 0.065780, -0.799772,
		0.412463, 0.829769, 0.375976,
		0.688358, -0.554217, 0.467982,
		35.688869, 40.744213, 32.193512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781883, 41.481499, 31.797094>,  <35.207016, 41.132164, 31.865923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781883, 41.481499, 31.797094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895638, 41.104836, 31.869091>,  <35.963890, 40.878838, 31.912289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895638, 41.104836, 31.869091>,  <35.781883, 41.481499, 31.797094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895638, 41.104836, 31.869091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531467, -0.001406, -0.847078,
		0.797913, 0.336561, 0.500062,
		0.284390, -0.941661, 0.179993,
		35.980953, 40.822338, 31.923088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537258, 41.465206, 31.735455>,  <35.781883, 41.481499, 31.797094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537258, 41.465206, 31.735455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424889, 41.084648, 31.684965>,  <36.357468, 40.856316, 31.654671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424889, 41.084648, 31.684965>,  <36.537258, 41.465206, 31.735455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424889, 41.084648, 31.684965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650218, -0.091937, -0.754164,
		0.705901, -0.293938, 0.644441,
		-0.280926, -0.951393, -0.126225,
		36.340611, 40.799229, 31.647097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157852, 41.033241, 31.767580>,  <36.537258, 41.465206, 31.735455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157852, 41.033241, 31.767580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.897427, 40.809113, 31.562775>,  <36.741173, 40.674637, 31.439892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.897427, 40.809113, 31.562775>,  <37.157852, 41.033241, 31.767580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897427, 40.809113, 31.562775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665995, -0.098131, -0.739473,
		0.364098, -0.822442, 0.437061,
		-0.651063, -0.560321, -0.512013,
		36.702106, 40.641018, 31.409170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536095, 40.522148, 31.539351>,  <37.157852, 41.033241, 31.767580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536095, 40.522148, 31.539351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221230, 40.503696, 31.293343>,  <37.032310, 40.492626, 31.145737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221230, 40.503696, 31.293343>,  <37.536095, 40.522148, 31.539351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221230, 40.503696, 31.293343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615260, 0.010515, -0.788254,
		0.042828, -0.998880, 0.020104,
		-0.787160, -0.046129, -0.615021,
		36.985081, 40.489857, 31.108837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719234, 40.110096, 30.976870>,  <37.536095, 40.522148, 31.539351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719234, 40.110096, 30.976870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397015, 40.292801, 30.825897>,  <37.203682, 40.402424, 30.735313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397015, 40.292801, 30.825897>,  <37.719234, 40.110096, 30.976870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397015, 40.292801, 30.825897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417153, -0.015188, -0.908709,
		-0.420797, -0.889459, -0.178305,
		-0.805551, 0.456763, -0.377432,
		37.155350, 40.429829, 30.712667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538147, 39.763966, 30.330812>,  <37.719234, 40.110096, 30.976870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538147, 39.763966, 30.330812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369125, 40.126091, 30.313580>,  <37.267712, 40.343365, 30.303240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369125, 40.126091, 30.313580>,  <37.538147, 39.763966, 30.330812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369125, 40.126091, 30.313580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383360, 0.135457, -0.913612,
		-0.821270, -0.402565, -0.404299,
		-0.422553, 0.905314, -0.043080,
		37.242359, 40.397686, 30.300655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201538, 39.782436, 29.668234>,  <37.538147, 39.763966, 30.330812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201538, 39.782436, 29.668234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216278, 40.162601, 29.791759>,  <37.225121, 40.390701, 29.865875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216278, 40.162601, 29.791759>,  <37.201538, 39.782436, 29.668234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216278, 40.162601, 29.791759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252439, 0.290148, -0.923087,
		-0.966911, 0.111972, -0.229228,
		0.036850, 0.950408, 0.308813,
		37.227333, 40.447723, 29.884403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785519, 40.070686, 29.113211>,  <37.201538, 39.782436, 29.668234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785519, 40.070686, 29.113211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017204, 40.353031, 29.276318>,  <37.156216, 40.522438, 29.374182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017204, 40.353031, 29.276318>,  <36.785519, 40.070686, 29.113211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017204, 40.353031, 29.276318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390264, 0.199056, -0.898927,
		-0.715687, 0.679805, -0.160177,
		0.579211, 0.705862, 0.407765,
		37.190968, 40.564789, 29.398647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719498, 40.566311, 28.621214>,  <36.785519, 40.070686, 29.113211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719498, 40.566311, 28.621214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052483, 40.637611, 28.831062>,  <37.252274, 40.680393, 28.956972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052483, 40.637611, 28.831062>,  <36.719498, 40.566311, 28.621214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052483, 40.637611, 28.831062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524186, 0.053425, -0.849927,
		-0.179528, 0.982533, -0.048963,
		0.832466, 0.178252, 0.524621,
		37.302223, 40.691086, 28.988449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917984, 41.138119, 28.361723>,  <36.719498, 40.566311, 28.621214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917984, 41.138119, 28.361723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241821, 40.988277, 28.542488>,  <37.436123, 40.898373, 28.650948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241821, 40.988277, 28.542488>,  <36.917984, 41.138119, 28.361723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241821, 40.988277, 28.542488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559024, 0.257259, -0.788232,
		0.179015, 0.890781, 0.417688,
		0.809596, -0.374603, 0.451915,
		37.484699, 40.875896, 28.678062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419685, 41.680405, 28.362461>,  <36.917984, 41.138119, 28.361723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419685, 41.680405, 28.362461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669430, 41.382763, 28.457525>,  <37.819279, 41.204178, 28.514565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669430, 41.382763, 28.457525>,  <37.419685, 41.680405, 28.362461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669430, 41.382763, 28.457525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564660, 0.219707, -0.795542,
		0.539747, 0.630908, 0.557341,
		0.624366, -0.744100, 0.237663,
		37.856739, 41.159534, 28.528824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020859, 41.990528, 28.401520>,  <37.419685, 41.680405, 28.362461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020859, 41.990528, 28.401520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.104210, 41.601921, 28.356390>,  <38.154221, 41.368755, 28.329311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.104210, 41.601921, 28.356390>,  <38.020859, 41.990528, 28.401520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104210, 41.601921, 28.356390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662297, 0.225049, -0.714643,
		0.719680, 0.074194, 0.690330,
		0.208380, -0.971518, -0.112825,
		38.166725, 41.310467, 28.322542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767036, 41.882210, 28.443714>,  <38.020859, 41.990528, 28.401520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767036, 41.882210, 28.443714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.618816, 41.581978, 28.224873>,  <38.529884, 41.401840, 28.093567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.618816, 41.581978, 28.224873>,  <38.767036, 41.882210, 28.443714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618816, 41.581978, 28.224873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625762, 0.233549, -0.744229,
		0.686380, -0.618129, 0.383144,
		-0.370546, -0.750581, -0.547105,
		38.507652, 41.356804, 28.060741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360744, 41.599861, 28.155775>,  <38.767036, 41.882210, 28.443714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360744, 41.599861, 28.155775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052399, 41.472008, 27.935375>,  <38.867390, 41.395294, 27.803135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052399, 41.472008, 27.935375>,  <39.360744, 41.599861, 28.155775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052399, 41.472008, 27.935375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542760, 0.123194, -0.830803,
		0.333435, -0.939498, 0.078520,
		-0.770865, -0.319637, -0.550999,
		38.821140, 41.376118, 27.770075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645653, 41.021229, 27.715099>,  <39.360744, 41.599861, 28.155775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645653, 41.021229, 27.715099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.316132, 41.141895, 27.523121>,  <39.118420, 41.214294, 27.407934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.316132, 41.141895, 27.523121>,  <39.645653, 41.021229, 27.715099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316132, 41.141895, 27.523121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553151, 0.242583, -0.796980,
		-0.123994, -0.922037, -0.366706,
		-0.823802, 0.301665, -0.479947,
		39.068993, 41.232395, 27.379137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694656, 40.700237, 27.150763>,  <39.645653, 41.021229, 27.715099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694656, 40.700237, 27.150763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425583, 40.983749, 27.065790>,  <39.264137, 41.153858, 27.014807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425583, 40.983749, 27.065790>,  <39.694656, 40.700237, 27.150763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425583, 40.983749, 27.065790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463619, 0.179987, -0.867561,
		-0.576677, -0.682080, -0.449678,
		-0.672682, 0.708782, -0.212431,
		39.223778, 41.196384, 27.002062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852070, 39.918728, 27.106695>,  <39.694656, 40.700237, 27.150763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852070, 39.918728, 27.106695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.223972, 39.771683, 27.098494>,  <40.447113, 39.683456, 27.093573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.223972, 39.771683, 27.098494>,  <39.852070, 39.918728, 27.106695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223972, 39.771683, 27.098494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104368, -0.316555, 0.942815,
		-0.353081, -0.874445, -0.332685,
		0.929753, -0.367612, -0.020506,
		40.502899, 39.661400, 27.092342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872810, 39.117245, 27.370060>,  <39.852070, 39.918728, 27.106695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872810, 39.117245, 27.370060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.214828, 39.320042, 27.413616>,  <40.420040, 39.441719, 27.439749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.214828, 39.320042, 27.413616>,  <39.872810, 39.117245, 27.370060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214828, 39.320042, 27.413616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000821, -0.208664, 0.977987,
		0.518550, -0.836314, -0.178002,
		0.855047, 0.506989, 0.108890,
		40.471344, 39.472137, 27.446283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321461, 38.725277, 27.799829>,  <39.872810, 39.117245, 27.370060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321461, 38.725277, 27.799829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.449772, 39.102947, 27.829836>,  <40.526760, 39.329552, 27.847839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.449772, 39.102947, 27.829836>,  <40.321461, 38.725277, 27.799829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449772, 39.102947, 27.829836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143956, -0.029680, 0.989139,
		0.936150, -0.328096, 0.126399,
		0.320781, 0.944178, 0.075016,
		40.546005, 39.386200, 27.852341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660278, 38.782089, 28.422327>,  <40.321461, 38.725277, 27.799829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660278, 38.782089, 28.422327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.597023, 39.168900, 28.342478>,  <40.559071, 39.400986, 28.294569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.597023, 39.168900, 28.342478>,  <40.660278, 38.782089, 28.422327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597023, 39.168900, 28.342478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157647, 0.174846, 0.971893,
		0.974750, 0.185167, 0.124798,
		-0.158142, 0.967027, -0.199622,
		40.549580, 39.459007, 28.282591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171398, 39.140335, 28.723629>,  <40.660278, 38.782089, 28.422327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171398, 39.140335, 28.723629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.854012, 39.380726, 28.685188>,  <40.663578, 39.524960, 28.662125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.854012, 39.380726, 28.685188>,  <41.171398, 39.140335, 28.723629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854012, 39.380726, 28.685188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024536, 0.189360, 0.981601,
		0.608113, 0.776515, -0.164997,
		-0.793471, 0.600973, -0.096100,
		40.615971, 39.561016, 28.656359>
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
