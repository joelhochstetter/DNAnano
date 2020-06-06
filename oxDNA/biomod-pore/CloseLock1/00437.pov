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
	<24.281143, 34.993832, 34.849464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211582, 34.842594, 35.213181>,  <24.169846, 34.751850, 35.431408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211582, 34.842594, 35.213181>,  <24.281143, 34.993832, 34.849464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211582, 34.842594, 35.213181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790872, -0.603788, -0.099807,
		0.586752, 0.701773, 0.404026,
		-0.173904, -0.378095, 0.909286,
		24.159410, 34.729164, 35.485966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884380, 35.129013, 35.217583>,  <24.281143, 34.993832, 34.849464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884380, 35.129013, 35.217583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692007, 34.792557, 35.316521>,  <24.576584, 34.590683, 35.375881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692007, 34.792557, 35.316521>,  <24.884380, 35.129013, 35.217583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692007, 34.792557, 35.316521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784463, -0.538820, -0.307068,
		0.391562, 0.046352, 0.918984,
		-0.480933, -0.841145, 0.247343,
		24.547728, 34.540215, 35.390724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441010, 34.855972, 35.740387>,  <24.884380, 35.129013, 35.217583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441010, 34.855972, 35.740387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185589, 34.580067, 35.603874>,  <25.032335, 34.414524, 35.521965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185589, 34.580067, 35.603874>,  <25.441010, 34.855972, 35.740387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185589, 34.580067, 35.603874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712913, -0.697205, 0.075228,
		-0.289834, -0.195269, 0.936945,
		-0.638554, -0.689764, -0.341284,
		24.994022, 34.373138, 35.501488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320950, 34.291580, 36.215851>,  <25.441010, 34.855972, 35.740387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320950, 34.291580, 36.215851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252937, 34.141064, 35.851543>,  <25.212130, 34.050755, 35.632961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252937, 34.141064, 35.851543>,  <25.320950, 34.291580, 36.215851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252937, 34.141064, 35.851543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611848, -0.764809, 0.201765,
		-0.772484, -0.522944, 0.360275,
		-0.170029, -0.376294, -0.910765,
		25.201929, 34.028175, 35.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063744, 33.554733, 36.217945>,  <25.320950, 34.291580, 36.215851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063744, 33.554733, 36.217945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256662, 33.609486, 35.871845>,  <25.372414, 33.642338, 35.664185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256662, 33.609486, 35.871845>,  <25.063744, 33.554733, 36.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256662, 33.609486, 35.871845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319764, -0.947071, 0.028410,
		-0.815563, -0.290377, -0.500539,
		0.482295, 0.136883, -0.865248,
		25.401352, 33.650551, 35.612270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855391, 33.046093, 35.760235>,  <25.063744, 33.554733, 36.217945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855391, 33.046093, 35.760235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231598, 33.169910, 35.704227>,  <25.457323, 33.244202, 35.670624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231598, 33.169910, 35.704227>,  <24.855391, 33.046093, 35.760235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231598, 33.169910, 35.704227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324660, -0.940314, 0.102010,
		-0.100085, -0.141401, -0.984880,
		0.940521, 0.309541, -0.140018,
		25.513754, 33.262772, 35.662224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944664, 32.601379, 35.382969>,  <24.855391, 33.046093, 35.760235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944664, 32.601379, 35.382969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302526, 32.742016, 35.493221>,  <25.517244, 32.826397, 35.559372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302526, 32.742016, 35.493221>,  <24.944664, 32.601379, 35.382969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302526, 32.742016, 35.493221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329419, -0.935925, 0.124614,
		0.301780, -0.020689, -0.953153,
		0.894657, 0.351593, 0.275628,
		25.570923, 32.847492, 35.575909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415705, 32.180897, 35.044209>,  <24.944664, 32.601379, 35.382969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415705, 32.180897, 35.044209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637156, 32.348904, 35.331841>,  <25.770025, 32.449707, 35.504421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637156, 32.348904, 35.331841>,  <25.415705, 32.180897, 35.044209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637156, 32.348904, 35.331841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436415, -0.881753, 0.179036,
		0.709253, 0.214700, -0.671464,
		0.553626, 0.420018, 0.719085,
		25.803244, 32.474911, 35.547565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066549, 32.070698, 34.868370>,  <25.415705, 32.180897, 35.044209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066549, 32.070698, 34.868370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021322, 32.114700, 35.263363>,  <25.994186, 32.141102, 35.500359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021322, 32.114700, 35.263363>,  <26.066549, 32.070698, 34.868370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021322, 32.114700, 35.263363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337876, -0.930366, 0.142335,
		0.934374, 0.349738, 0.068027,
		-0.113070, 0.110009, 0.987478,
		25.987402, 32.147701, 35.559605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725204, 32.069489, 35.219833>,  <26.066549, 32.070698, 34.868370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725204, 32.069489, 35.219833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448626, 31.951384, 35.483566>,  <26.282679, 31.880522, 35.641808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448626, 31.951384, 35.483566>,  <26.725204, 32.069489, 35.219833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448626, 31.951384, 35.483566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543118, -0.814265, 0.204931,
		0.476365, 0.499795, 0.723382,
		-0.691448, -0.295259, 0.659335,
		26.241192, 31.862806, 35.681366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016443, 31.518742, 35.507572>,  <26.725204, 32.069489, 35.219833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016443, 31.518742, 35.507572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666553, 31.488745, 35.699085>,  <26.456619, 31.470747, 35.813992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666553, 31.488745, 35.699085>,  <27.016443, 31.518742, 35.507572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666553, 31.488745, 35.699085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280994, -0.883414, 0.374996,
		0.394841, 0.462553, 0.793817,
		-0.874725, -0.074994, 0.478782,
		26.404137, 31.466246, 35.842720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193600, 31.368124, 36.138905>,  <27.016443, 31.518742, 35.507572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193600, 31.368124, 36.138905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815014, 31.243864, 36.103794>,  <26.587862, 31.169308, 36.082729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815014, 31.243864, 36.103794>,  <27.193600, 31.368124, 36.138905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815014, 31.243864, 36.103794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280330, -0.925773, 0.253691,
		-0.160068, 0.215503, 0.963295,
		-0.946463, -0.310648, -0.087775,
		26.531075, 31.150669, 36.077461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160719, 31.045118, 36.775261>,  <27.193600, 31.368124, 36.138905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160719, 31.045118, 36.775261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858400, 30.932478, 36.538795>,  <26.677010, 30.864893, 36.396915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858400, 30.932478, 36.538795>,  <27.160719, 31.045118, 36.775261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858400, 30.932478, 36.538795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105871, -0.943478, 0.314072,
		-0.646192, 0.174787, 0.742889,
		-0.755795, -0.281601, -0.591163,
		26.631662, 30.847998, 36.361446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949217, 30.382221, 37.115810>,  <27.160719, 31.045118, 36.775261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949217, 30.382221, 37.115810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773424, 30.339794, 36.759022>,  <26.667950, 30.314339, 36.544949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773424, 30.339794, 36.759022>,  <26.949217, 30.382221, 37.115810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773424, 30.339794, 36.759022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144549, -0.988413, 0.046314,
		-0.886545, -0.108579, 0.449719,
		-0.439480, -0.106066, -0.891968,
		26.641581, 30.307974, 36.491432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526669, 29.685200, 37.102390>,  <26.949217, 30.382221, 37.115810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526669, 29.685200, 37.102390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595465, 29.762541, 36.716015>,  <26.636742, 29.808945, 36.484192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595465, 29.762541, 36.716015>,  <26.526669, 29.685200, 37.102390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595465, 29.762541, 36.716015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290399, -0.946926, -0.137841,
		-0.941322, -0.256800, -0.219012,
		0.171991, 0.193353, -0.965937,
		26.647062, 29.820547, 36.426235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209839, 29.068552, 36.712749>,  <26.526669, 29.685200, 37.102390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209839, 29.068552, 36.712749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445036, 29.237192, 36.436626>,  <26.586155, 29.338375, 36.270954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445036, 29.237192, 36.436626>,  <26.209839, 29.068552, 36.712749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445036, 29.237192, 36.436626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322809, -0.904823, -0.277649,
		-0.741660, -0.059580, -0.668125,
		0.587992, 0.421598, -0.690304,
		26.621433, 29.363672, 36.229534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166546, 28.638439, 36.164333>,  <26.209839, 29.068552, 36.712749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166546, 28.638439, 36.164333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485666, 28.852310, 36.052879>,  <26.677137, 28.980633, 35.986008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485666, 28.852310, 36.052879>,  <26.166546, 28.638439, 36.164333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485666, 28.852310, 36.052879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321593, -0.768277, -0.553470,
		-0.509995, 0.351952, -0.784879,
		0.797800, 0.534678, -0.278632,
		26.725006, 29.012714, 35.969288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148388, 28.656614, 35.497730>,  <26.166546, 28.638439, 36.164333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148388, 28.656614, 35.497730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533440, 28.710642, 35.591629>,  <26.764471, 28.743059, 35.647968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533440, 28.710642, 35.591629>,  <26.148388, 28.656614, 35.497730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533440, 28.710642, 35.591629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258496, -0.716801, -0.647593,
		0.080796, 0.684071, -0.724927,
		0.962628, 0.135068, 0.234744,
		26.822227, 28.751162, 35.662052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486311, 28.639761, 34.856884>,  <26.148388, 28.656614, 35.497730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486311, 28.639761, 34.856884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760313, 28.562756, 35.137939>,  <26.924715, 28.516552, 35.306572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760313, 28.562756, 35.137939>,  <26.486311, 28.639761, 34.856884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760313, 28.562756, 35.137939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308166, -0.797360, -0.518894,
		0.660152, 0.571976, -0.486870,
		0.685005, -0.192512, 0.702643,
		26.965815, 28.505001, 35.348732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019617, 28.642088, 34.463619>,  <26.486311, 28.639761, 34.856884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019617, 28.642088, 34.463619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098602, 28.445461, 34.802883>,  <27.145992, 28.327484, 35.006439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098602, 28.445461, 34.802883>,  <27.019617, 28.642088, 34.463619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098602, 28.445461, 34.802883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372492, -0.762676, -0.528748,
		0.906784, 0.420340, 0.032506,
		0.197462, -0.491568, 0.848156,
		27.157841, 28.297991, 35.057331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608576, 28.322985, 34.296593>,  <27.019617, 28.642088, 34.463619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608576, 28.322985, 34.296593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469566, 28.112474, 34.607014>,  <27.386160, 27.986168, 34.793266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469566, 28.112474, 34.607014>,  <27.608576, 28.322985, 34.296593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469566, 28.112474, 34.607014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317201, -0.844829, -0.430868,
		0.882389, 0.096428, 0.460533,
		-0.347524, -0.526275, 0.776055,
		27.365309, 27.954592, 34.839828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229019, 27.905933, 34.502777>,  <27.608576, 28.322985, 34.296593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229019, 27.905933, 34.502777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895784, 27.736542, 34.645119>,  <27.695845, 27.634907, 34.730526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895784, 27.736542, 34.645119>,  <28.229019, 27.905933, 34.502777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895784, 27.736542, 34.645119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247723, -0.860846, -0.444497,
		0.494573, -0.282150, 0.822064,
		-0.833085, -0.423480, 0.355856,
		27.645859, 27.609497, 34.751877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369688, 27.217051, 34.859627>,  <28.229019, 27.905933, 34.502777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369688, 27.217051, 34.859627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982637, 27.194656, 34.761189>,  <27.750406, 27.181221, 34.702126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982637, 27.194656, 34.761189>,  <28.369688, 27.217051, 34.859627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982637, 27.194656, 34.761189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158100, -0.894516, -0.418146,
		-0.196724, -0.443517, 0.874409,
		-0.967628, -0.055984, -0.246093,
		27.692348, 27.177860, 34.687359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187012, 26.546337, 35.044582>,  <28.369688, 27.217051, 34.859627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187012, 26.546337, 35.044582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886883, 26.649853, 34.801258>,  <27.706806, 26.711962, 34.655262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886883, 26.649853, 34.801258>,  <28.187012, 26.546337, 35.044582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886883, 26.649853, 34.801258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027547, -0.907152, -0.419901,
		-0.660497, -0.331819, 0.673528,
		-0.750323, 0.258790, -0.608312,
		27.661785, 26.727489, 34.618763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749807, 25.991682, 35.026825>,  <28.187012, 26.546337, 35.044582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749807, 25.991682, 35.026825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690386, 26.184063, 34.681198>,  <27.654734, 26.299492, 34.473820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690386, 26.184063, 34.681198>,  <27.749807, 25.991682, 35.026825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690386, 26.184063, 34.681198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108896, -0.860495, -0.497684,
		-0.982890, -0.168027, 0.075456,
		-0.148554, 0.480953, -0.864070,
		27.645819, 26.328348, 34.421978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348536, 25.485790, 34.544117>,  <27.749807, 25.991682, 35.026825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348536, 25.485790, 34.544117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489027, 25.780489, 34.313000>,  <27.573322, 25.957308, 34.174328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489027, 25.780489, 34.313000>,  <27.348536, 25.485790, 34.544117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489027, 25.780489, 34.313000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181931, -0.659050, -0.729763,
		-0.918443, 0.151196, -0.365515,
		0.351230, 0.736745, -0.577793,
		27.594397, 26.001513, 34.139664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088909, 25.502941, 33.850941>,  <27.348536, 25.485790, 34.544117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088909, 25.502941, 33.850941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455757, 25.662365, 33.853466>,  <27.675865, 25.758018, 33.854980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455757, 25.662365, 33.853466>,  <27.088909, 25.502941, 33.850941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455757, 25.662365, 33.853466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258357, -0.582292, -0.770836,
		-0.303548, 0.708580, -0.637003,
		0.917121, 0.398560, 0.006313,
		27.730894, 25.781933, 33.855358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259489, 25.757528, 33.152149>,  <27.088909, 25.502941, 33.850941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259489, 25.757528, 33.152149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585300, 25.681328, 33.371330>,  <27.780787, 25.635609, 33.502838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585300, 25.681328, 33.371330>,  <27.259489, 25.757528, 33.152149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585300, 25.681328, 33.371330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306655, -0.660409, -0.685436,
		0.492448, 0.726340, -0.479504,
		0.814529, -0.190500, 0.547953,
		27.829659, 25.624178, 33.535717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808420, 25.625748, 32.651485>,  <27.259489, 25.757528, 33.152149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808420, 25.625748, 32.651485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940592, 25.492033, 33.004543>,  <28.019896, 25.411804, 33.216377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940592, 25.492033, 33.004543>,  <27.808420, 25.625748, 32.651485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940592, 25.492033, 33.004543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296334, -0.851143, -0.433293,
		0.896104, 0.404731, -0.182181,
		0.330429, -0.334289, 0.882648,
		28.039721, 25.391747, 33.269337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571011, 25.390844, 32.651630>,  <27.808420, 25.625748, 32.651485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571011, 25.390844, 32.651630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355970, 25.182514, 32.916878>,  <28.226946, 25.057516, 33.076027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355970, 25.182514, 32.916878>,  <28.571011, 25.390844, 32.651630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355970, 25.182514, 32.916878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427031, -0.846291, -0.318492,
		0.727071, 0.111952, 0.677373,
		-0.537598, -0.520825, 0.663121,
		28.194691, 25.026266, 33.115814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125168, 24.983603, 33.094250>,  <28.571011, 25.390844, 32.651630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125168, 24.983603, 33.094250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758404, 24.824049, 33.089012>,  <28.538345, 24.728317, 33.085869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758404, 24.824049, 33.089012>,  <29.125168, 24.983603, 33.094250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758404, 24.824049, 33.089012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393200, -0.908493, 0.141546,
		-0.068358, 0.124635, 0.989845,
		-0.916908, -0.398883, -0.013096,
		28.483332, 24.704384, 33.085083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707521, 25.129032, 33.595642>,  <29.125168, 24.983603, 33.094250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707521, 25.129032, 33.595642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040192, 25.155834, 33.816124>,  <30.239794, 25.171915, 33.948414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040192, 25.155834, 33.816124>,  <29.707521, 25.129032, 33.595642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040192, 25.155834, 33.816124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095095, 0.960838, -0.260285,
		-0.547056, 0.268889, 0.792735,
		0.831677, 0.067005, 0.551202,
		30.289696, 25.175936, 33.981483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682915, 25.673302, 33.972401>,  <29.707521, 25.129032, 33.595642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682915, 25.673302, 33.972401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069359, 25.596825, 33.903030>,  <30.301226, 25.550938, 33.861408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069359, 25.596825, 33.903030>,  <29.682915, 25.673302, 33.972401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069359, 25.596825, 33.903030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164410, 0.973722, -0.157593,
		0.198999, 0.123739, 0.972156,
		0.966110, -0.191193, -0.173425,
		30.359192, 25.539467, 33.851002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268969, 25.980099, 34.425606>,  <29.682915, 25.673302, 33.972401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268969, 25.980099, 34.425606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334055, 25.918554, 34.035767>,  <30.373108, 25.881628, 33.801861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334055, 25.918554, 34.035767>,  <30.268969, 25.980099, 34.425606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334055, 25.918554, 34.035767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067404, 0.987192, -0.144595,
		0.984367, -0.042164, 0.171005,
		0.162718, -0.153861, -0.974602,
		30.382870, 25.872396, 33.743385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835224, 26.374115, 34.144733>,  <30.268969, 25.980099, 34.425606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835224, 26.374115, 34.144733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607132, 26.301863, 33.824181>,  <30.470276, 26.258511, 33.631851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607132, 26.301863, 33.824181>,  <30.835224, 26.374115, 34.144733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607132, 26.301863, 33.824181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037125, 0.968863, -0.244798,
		0.820644, -0.169343, -0.545772,
		-0.570233, -0.180630, -0.801378,
		30.436062, 26.247673, 33.583767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072487, 26.719542, 33.554047>,  <30.835224, 26.374115, 34.144733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072487, 26.719542, 33.554047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680763, 26.660183, 33.499001>,  <30.445730, 26.624567, 33.465973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680763, 26.660183, 33.499001>,  <31.072487, 26.719542, 33.554047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680763, 26.660183, 33.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144846, 0.988817, -0.035516,
		0.141343, -0.014849, -0.989849,
		-0.979307, -0.148396, -0.137612,
		30.386971, 26.615664, 33.457718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906437, 27.134735, 32.902458>,  <31.072487, 26.719542, 33.554047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906437, 27.134735, 32.902458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555990, 27.064903, 33.082211>,  <30.345722, 27.023005, 33.190060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555990, 27.064903, 33.082211>,  <30.906437, 27.134735, 32.902458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555990, 27.064903, 33.082211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214775, 0.975860, -0.039619,
		-0.431614, -0.131226, -0.892462,
		-0.876117, -0.174578, 0.449379,
		30.293156, 27.012529, 33.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368660, 27.590796, 32.533649>,  <30.906437, 27.134735, 32.902458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368660, 27.590796, 32.533649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199877, 27.486826, 32.881073>,  <30.098606, 27.424444, 33.089527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199877, 27.486826, 32.881073>,  <30.368660, 27.590796, 32.533649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199877, 27.486826, 32.881073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297202, 0.944740, 0.138335,
		-0.856518, -0.199766, -0.475890,
		-0.421957, -0.259922, 0.868558,
		30.073290, 27.408850, 33.141640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668182, 27.720150, 32.472504>,  <30.368660, 27.590796, 32.533649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668182, 27.720150, 32.472504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751814, 27.732832, 32.863457>,  <29.801992, 27.740440, 33.098030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751814, 27.732832, 32.863457>,  <29.668182, 27.720150, 32.472504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751814, 27.732832, 32.863457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268806, 0.962836, 0.026269,
		-0.940229, -0.268219, 0.209829,
		0.209077, 0.031704, 0.977385,
		29.814537, 27.742344, 33.156673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118889, 28.100306, 32.760941>,  <29.668182, 27.720150, 32.472504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118889, 28.100306, 32.760941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392513, 28.137499, 33.050331>,  <29.556688, 28.159815, 33.223965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392513, 28.137499, 33.050331>,  <29.118889, 28.100306, 32.760941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392513, 28.137499, 33.050331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304079, 0.937900, 0.166970,
		-0.663022, -0.334211, 0.669855,
		0.684060, 0.092984, 0.723475,
		29.597731, 28.165394, 33.267372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836258, 28.531345, 33.189888>,  <29.118889, 28.100306, 32.760941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836258, 28.531345, 33.189888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221649, 28.549177, 33.295509>,  <29.452885, 28.559875, 33.358883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221649, 28.549177, 33.295509>,  <28.836258, 28.531345, 33.189888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221649, 28.549177, 33.295509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158881, 0.888903, 0.429660,
		-0.215560, -0.455920, 0.863522,
		0.963479, 0.044580, 0.264049,
		29.510693, 28.562551, 33.374725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782719, 28.955563, 33.753216>,  <28.836258, 28.531345, 33.189888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782719, 28.955563, 33.753216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173698, 28.965773, 33.669365>,  <29.408285, 28.971899, 33.619053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173698, 28.965773, 33.669365>,  <28.782719, 28.955563, 33.753216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173698, 28.965773, 33.669365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022755, 0.974157, 0.224724,
		0.209947, -0.224426, 0.951607,
		0.977448, 0.025527, -0.209628,
		29.466932, 28.973431, 33.606476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192730, 29.070383, 34.398354>,  <28.782719, 28.955563, 33.753216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192730, 29.070383, 34.398354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388586, 29.203382, 34.075939>,  <29.506100, 29.283182, 33.882488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388586, 29.203382, 34.075939>,  <29.192730, 29.070383, 34.398354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388586, 29.203382, 34.075939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057889, 0.909999, 0.410549,
		0.870001, -0.247682, 0.426324,
		0.489640, 0.332499, -0.806038,
		29.535477, 29.303133, 33.834129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644329, 29.570484, 34.754063>,  <29.192730, 29.070383, 34.398354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644329, 29.570484, 34.754063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628618, 29.634489, 34.359528>,  <29.619192, 29.672892, 34.122807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628618, 29.634489, 34.359528>,  <29.644329, 29.570484, 34.754063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628618, 29.634489, 34.359528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001758, 0.987105, 0.160067,
		0.999227, 0.004553, -0.039050,
		-0.039276, 0.160011, -0.986334,
		29.616837, 29.682493, 34.063629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079109, 30.052462, 34.690418>,  <29.644329, 29.570484, 34.754063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079109, 30.052462, 34.690418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837101, 30.073570, 34.372635>,  <29.691896, 30.086235, 34.181965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837101, 30.073570, 34.372635>,  <30.079109, 30.052462, 34.690418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837101, 30.073570, 34.372635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045444, 0.998463, 0.031712,
		0.794911, -0.016917, -0.606489,
		-0.605021, 0.052770, -0.794459,
		29.655594, 30.089401, 34.134296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375065, 30.609900, 34.355686>,  <30.079109, 30.052462, 34.690418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375065, 30.609900, 34.355686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002623, 30.550297, 34.222515>,  <29.779158, 30.514536, 34.142612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002623, 30.550297, 34.222515>,  <30.375065, 30.609900, 34.355686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002623, 30.550297, 34.222515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180391, 0.981428, 0.065252,
		0.317023, 0.120813, -0.940692,
		-0.931105, -0.149006, -0.332929,
		29.723291, 30.505594, 34.122635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215452, 31.200579, 34.055363>,  <30.375065, 30.609900, 34.355686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215452, 31.200579, 34.055363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843973, 31.056005, 34.088551>,  <29.621086, 30.969261, 34.108463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843973, 31.056005, 34.088551>,  <30.215452, 31.200579, 34.055363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843973, 31.056005, 34.088551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352015, 0.929590, 0.109309,
		-0.116634, 0.072309, -0.990539,
		-0.928699, -0.361434, 0.082967,
		29.565363, 30.947575, 34.113441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825891, 31.727772, 33.772923>,  <30.215452, 31.200579, 34.055363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825891, 31.727772, 33.772923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558567, 31.521873, 33.987736>,  <29.398172, 31.398335, 34.116623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558567, 31.521873, 33.987736>,  <29.825891, 31.727772, 33.772923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558567, 31.521873, 33.987736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434214, 0.856113, 0.280229,
		-0.604004, -0.045905, -0.795658,
		-0.668309, -0.514745, 0.537028,
		29.358074, 31.367451, 34.148846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142958, 31.924877, 33.512802>,  <29.825891, 31.727772, 33.772923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142958, 31.924877, 33.512802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093517, 31.759644, 33.873707>,  <29.063852, 31.660503, 34.090252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093517, 31.759644, 33.873707>,  <29.142958, 31.924877, 33.512802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093517, 31.759644, 33.873707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604375, 0.752485, 0.261717,
		-0.787053, -0.512959, -0.342666,
		-0.123601, -0.413085, 0.902266,
		29.056437, 31.635717, 34.144386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336458, 31.877630, 33.606361>,  <29.142958, 31.924877, 33.512802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336458, 31.877630, 33.606361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546780, 31.896486, 33.946079>,  <28.672974, 31.907801, 34.149910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546780, 31.896486, 33.946079>,  <28.336458, 31.877630, 33.606361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546780, 31.896486, 33.946079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496801, 0.827486, 0.261642,
		-0.690447, -0.559504, 0.458517,
		0.525806, 0.047142, 0.849297,
		28.704521, 31.910629, 34.200867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882027, 32.236198, 34.202251>,  <28.336458, 31.877630, 33.606361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882027, 32.236198, 34.202251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229128, 32.214458, 34.399857>,  <28.437389, 32.201412, 34.518421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229128, 32.214458, 34.399857>,  <27.882027, 32.236198, 34.202251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229128, 32.214458, 34.399857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192470, 0.879687, 0.434863,
		-0.458214, -0.472436, 0.752890,
		0.867753, -0.054352, 0.494015,
		28.489454, 32.198154, 34.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746855, 32.316154, 34.853710>,  <27.882027, 32.236198, 34.202251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746855, 32.316154, 34.853710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122498, 32.439571, 34.793201>,  <28.347883, 32.513622, 34.756897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122498, 32.439571, 34.793201>,  <27.746855, 32.316154, 34.853710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122498, 32.439571, 34.793201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199182, 0.847491, 0.492022,
		0.280013, -0.431929, 0.857339,
		0.939106, 0.308539, -0.151276,
		28.404230, 32.532131, 34.747818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049025, 32.619583, 35.475266>,  <27.746855, 32.316154, 34.853710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049025, 32.619583, 35.475266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242085, 32.763023, 35.155651>,  <28.357920, 32.849087, 34.963882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242085, 32.763023, 35.155651>,  <28.049025, 32.619583, 35.475266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242085, 32.763023, 35.155651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056858, 0.923236, 0.380003,
		0.873966, -0.137977, 0.465990,
		0.482650, 0.358605, -0.799031,
		28.386879, 32.870605, 34.915943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654671, 32.914230, 35.753521>,  <28.049025, 32.619583, 35.475266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654671, 32.914230, 35.753521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616264, 33.087711, 35.395149>,  <28.593220, 33.191799, 35.180126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616264, 33.087711, 35.395149>,  <28.654671, 32.914230, 35.753521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616264, 33.087711, 35.395149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065410, 0.895391, 0.440451,
		0.993228, 0.100894, -0.057604,
		-0.096017, 0.433701, -0.895927,
		28.587460, 33.217823, 35.126369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956238, 33.541542, 35.866039>,  <28.654671, 32.914230, 35.753521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956238, 33.541542, 35.866039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735762, 33.581146, 35.534645>,  <28.603476, 33.604908, 35.335808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735762, 33.581146, 35.534645>,  <28.956238, 33.541542, 35.866039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735762, 33.581146, 35.534645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140761, 0.967669, 0.209294,
		0.822421, 0.231979, -0.519431,
		-0.551189, 0.099012, -0.828485,
		28.570404, 33.610851, 35.286098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182877, 34.164768, 35.600700>,  <28.956238, 33.541542, 35.866039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182877, 34.164768, 35.600700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853296, 34.128815, 35.376904>,  <28.655548, 34.107243, 35.242626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853296, 34.128815, 35.376904>,  <29.182877, 34.164768, 35.600700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853296, 34.128815, 35.376904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316995, 0.891511, 0.323608,
		0.469705, 0.443991, -0.763052,
		-0.823949, -0.089883, -0.559490,
		28.606112, 34.101849, 35.209057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209656, 34.790634, 35.290813>,  <29.182877, 34.164768, 35.600700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209656, 34.790634, 35.290813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837236, 34.644676, 35.290062>,  <28.613785, 34.557102, 35.289612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837236, 34.644676, 35.290062>,  <29.209656, 34.790634, 35.290813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837236, 34.644676, 35.290062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340983, 0.868186, 0.360533,
		-0.129921, 0.336316, -0.932745,
		-0.931049, -0.364891, -0.001883,
		28.557922, 34.535210, 35.289497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809395, 35.174847, 34.912590>,  <29.209656, 34.790634, 35.290813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809395, 35.174847, 34.912590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569782, 35.008427, 35.186253>,  <28.426016, 34.908573, 35.350449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569782, 35.008427, 35.186253>,  <28.809395, 35.174847, 34.912590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569782, 35.008427, 35.186253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353263, 0.904085, 0.240489,
		-0.718588, -0.097626, -0.688549,
		-0.599029, -0.416052, 0.684153,
		28.390074, 34.883610, 35.391499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566637, 35.183014, 34.692524>,  <28.809395, 35.174847, 34.912590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566637, 35.183014, 34.692524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755440, 35.158108, 34.340767>,  <29.868721, 35.143162, 34.129711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755440, 35.158108, 34.340767>,  <29.566637, 35.183014, 34.692524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755440, 35.158108, 34.340767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701259, 0.631032, 0.331714,
		0.534270, -0.773254, 0.341518,
		0.472008, -0.062268, -0.879393,
		29.897041, 35.139427, 34.076950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193405, 34.752548, 34.934280>,  <29.566637, 35.183014, 34.692524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193405, 34.752548, 34.934280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183605, 35.033905, 34.650131>,  <30.177725, 35.202721, 34.479641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183605, 35.033905, 34.650131>,  <30.193405, 34.752548, 34.934280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183605, 35.033905, 34.650131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840863, 0.398827, 0.365906,
		0.540694, -0.588364, -0.601230,
		-0.024501, 0.703395, -0.710377,
		30.176254, 35.244923, 34.437019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849262, 34.729172, 34.539909>,  <30.193405, 34.752548, 34.934280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849262, 34.729172, 34.539909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665611, 35.077923, 34.608059>,  <30.555422, 35.287174, 34.648949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665611, 35.077923, 34.608059>,  <30.849262, 34.729172, 34.539909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665611, 35.077923, 34.608059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772685, 0.297291, 0.560871,
		0.438362, 0.389155, -0.810183,
		-0.459126, 0.871881, 0.170373,
		30.527874, 35.339489, 34.659172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198042, 35.494598, 34.357311>,  <30.849262, 34.729172, 34.539909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198042, 35.494598, 34.357311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962543, 35.479763, 34.680298>,  <30.821245, 35.470860, 34.874088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962543, 35.479763, 34.680298>,  <31.198042, 35.494598, 34.357311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962543, 35.479763, 34.680298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790724, 0.180860, 0.584847,
		-0.167732, 0.982809, -0.077151,
		-0.588746, -0.037092, 0.807466,
		30.785919, 35.468636, 34.922539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225447, 36.100452, 34.874828>,  <31.198042, 35.494598, 34.357311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225447, 36.100452, 34.874828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148758, 35.749695, 35.051147>,  <31.102745, 35.539242, 35.156940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148758, 35.749695, 35.051147>,  <31.225447, 36.100452, 34.874828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148758, 35.749695, 35.051147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786926, 0.131051, 0.602970,
		-0.586507, 0.462477, 0.664925,
		-0.191721, -0.876893, 0.440798,
		31.091242, 35.486626, 35.183388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140646, 36.176086, 35.633812>,  <31.225447, 36.100452, 34.874828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140646, 36.176086, 35.633812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264538, 35.803322, 35.558331>,  <31.338873, 35.579662, 35.513042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264538, 35.803322, 35.558331>,  <31.140646, 36.176086, 35.633812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264538, 35.803322, 35.558331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683936, 0.080491, 0.725088,
		-0.660530, -0.353639, 0.662298,
		0.309728, -0.931912, -0.188700,
		31.357456, 35.523746, 35.501720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251593, 36.026501, 36.279346>,  <31.140646, 36.176086, 35.633812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251593, 36.026501, 36.279346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449358, 35.790466, 36.024052>,  <31.568016, 35.648846, 35.870872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449358, 35.790466, 36.024052>,  <31.251593, 36.026501, 36.279346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449358, 35.790466, 36.024052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804833, 0.033425, 0.592559,
		-0.328330, -0.806645, 0.491450,
		0.494412, -0.590090, -0.638240,
		31.597681, 35.613438, 35.832581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495050, 35.460045, 36.659649>,  <31.251593, 36.026501, 36.279346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495050, 35.460045, 36.659649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726507, 35.499798, 36.335846>,  <31.865381, 35.523651, 36.141563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726507, 35.499798, 36.335846>,  <31.495050, 35.460045, 36.659649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726507, 35.499798, 36.335846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812207, 0.019982, 0.583027,
		0.074120, -0.994848, -0.069159,
		0.578641, 0.099385, -0.809504,
		31.900099, 35.529613, 36.092995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049763, 35.026604, 36.778496>,  <31.495050, 35.460045, 36.659649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049763, 35.026604, 36.778496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179081, 35.301258, 36.518032>,  <32.256672, 35.466053, 36.361755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179081, 35.301258, 36.518032>,  <32.049763, 35.026604, 36.778496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179081, 35.301258, 36.518032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856631, 0.080012, 0.509687,
		0.402072, -0.722581, -0.562330,
		0.323297, 0.686641, -0.651156,
		32.276070, 35.507252, 36.322685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625763, 34.732250, 36.537788>,  <32.049763, 35.026604, 36.778496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625763, 34.732250, 36.537788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665974, 35.128170, 36.497406>,  <32.690102, 35.365723, 36.473175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665974, 35.128170, 36.497406>,  <32.625763, 34.732250, 36.537788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665974, 35.128170, 36.497406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855604, -0.034221, 0.516498,
		0.507775, -0.138301, -0.850316,
		0.100531, 0.989799, -0.100954,
		32.696133, 35.425110, 36.467121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293777, 34.707333, 36.497887>,  <32.625763, 34.732250, 36.537788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293777, 34.707333, 36.497887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195107, 35.086109, 36.580311>,  <33.135902, 35.313374, 36.629765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195107, 35.086109, 36.580311>,  <33.293777, 34.707333, 36.497887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195107, 35.086109, 36.580311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757800, 0.055945, 0.650085,
		0.604061, 0.316512, -0.731389,
		-0.246677, 0.946937, 0.206059,
		33.121105, 35.370190, 36.642128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902809, 35.102802, 36.502987>,  <33.293777, 34.707333, 36.497887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902809, 35.102802, 36.502987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646564, 35.333817, 36.705402>,  <33.492817, 35.472424, 36.826851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646564, 35.333817, 36.705402>,  <33.902809, 35.102802, 36.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646564, 35.333817, 36.705402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720786, 0.225072, 0.655599,
		0.264738, 0.784726, -0.560463,
		-0.640610, 0.577536, 0.506034,
		33.454380, 35.507076, 36.857212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338253, 35.624203, 36.685223>,  <33.902809, 35.102802, 36.502987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338253, 35.624203, 36.685223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043427, 35.694382, 36.946281>,  <33.866531, 35.736488, 37.102917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043427, 35.694382, 36.946281>,  <34.338253, 35.624203, 36.685223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043427, 35.694382, 36.946281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668120, 0.043836, 0.742761,
		0.101706, 0.983513, -0.149530,
		-0.737070, 0.175447, 0.652646,
		33.822304, 35.747017, 37.142075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474792, 36.290070, 37.100967>,  <34.338253, 35.624203, 36.685223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474792, 36.290070, 37.100967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221542, 36.056938, 37.304722>,  <34.069592, 35.917061, 37.426975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221542, 36.056938, 37.304722>,  <34.474792, 36.290070, 37.100967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221542, 36.056938, 37.304722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616686, 0.017928, 0.787005,
		-0.467819, 0.812399, 0.348070,
		-0.633122, -0.582826, 0.509383,
		34.031605, 35.882092, 37.457535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444176, 36.555740, 37.770966>,  <34.474792, 36.290070, 37.100967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444176, 36.555740, 37.770966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296387, 36.188511, 37.828426>,  <34.207714, 35.968174, 37.862904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296387, 36.188511, 37.828426>,  <34.444176, 36.555740, 37.770966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296387, 36.188511, 37.828426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487681, -0.059988, 0.870958,
		-0.790983, 0.391854, 0.469889,
		-0.369476, -0.918069, 0.143651,
		34.185543, 35.913090, 37.871521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285343, 36.523674, 38.425537>,  <34.444176, 36.555740, 37.770966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285343, 36.523674, 38.425537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290573, 36.132320, 38.342995>,  <34.293713, 35.897507, 38.293468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290573, 36.132320, 38.342995>,  <34.285343, 36.523674, 38.425537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290573, 36.132320, 38.342995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463942, -0.176881, 0.868027,
		-0.885769, -0.107091, 0.451602,
		0.013078, -0.978389, -0.206360,
		34.294498, 35.838802, 38.281086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022957, 36.094639, 38.927429>,  <34.285343, 36.523674, 38.425537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022957, 36.094639, 38.927429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249233, 35.830921, 38.729305>,  <34.384998, 35.672691, 38.610432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249233, 35.830921, 38.729305>,  <34.022957, 36.094639, 38.927429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249233, 35.830921, 38.729305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392402, -0.313063, 0.864877,
		-0.725270, -0.683610, 0.081612,
		0.565689, -0.659294, -0.495306,
		34.418941, 35.633133, 38.580715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931011, 35.408752, 39.263947>,  <34.022957, 36.094639, 38.927429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931011, 35.408752, 39.263947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283489, 35.400326, 39.075035>,  <34.494976, 35.395267, 38.961689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283489, 35.400326, 39.075035>,  <33.931011, 35.408752, 39.263947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283489, 35.400326, 39.075035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427919, -0.389089, 0.815779,
		-0.200947, -0.920959, -0.333848,
		0.881195, -0.021068, -0.472282,
		34.547848, 35.394005, 38.933350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072140, 34.692261, 39.373524>,  <33.931011, 35.408752, 39.263947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072140, 34.692261, 39.373524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404034, 34.897049, 39.284588>,  <34.603168, 35.019920, 39.231228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404034, 34.897049, 39.284588>,  <34.072140, 34.692261, 39.373524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404034, 34.897049, 39.284588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431177, -0.334960, 0.837788,
		0.354447, -0.791005, -0.498676,
		0.829731, 0.511969, -0.222338,
		34.652954, 35.050640, 39.217888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671040, 34.203602, 39.511578>,  <34.072140, 34.692261, 39.373524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671040, 34.203602, 39.511578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783478, 34.582546, 39.572887>,  <34.850941, 34.809914, 39.609673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783478, 34.582546, 39.572887>,  <34.671040, 34.203602, 39.511578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783478, 34.582546, 39.572887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350468, -0.250016, 0.902587,
		0.893396, -0.200000, -0.402299,
		0.281098, 0.947360, 0.153270,
		34.867805, 34.866753, 39.618870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294613, 34.135883, 39.750530>,  <34.671040, 34.203602, 39.511578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294613, 34.135883, 39.750530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175125, 34.492767, 39.886021>,  <35.103432, 34.706898, 39.967316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175125, 34.492767, 39.886021>,  <35.294613, 34.135883, 39.750530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175125, 34.492767, 39.886021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072619, -0.332653, 0.940249,
		0.951575, 0.305467, 0.034578,
		-0.298717, 0.892206, 0.338727,
		35.085510, 34.760429, 39.987640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810890, 34.440784, 40.199543>,  <35.294613, 34.135883, 39.750530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810890, 34.440784, 40.199543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471504, 34.622906, 40.307472>,  <35.267872, 34.732178, 40.372231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471504, 34.622906, 40.307472>,  <35.810890, 34.440784, 40.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471504, 34.622906, 40.307472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165484, -0.256034, 0.952398,
		0.502714, 0.852728, 0.141891,
		-0.848466, 0.455303, 0.269825,
		35.216965, 34.759495, 40.388420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022827, 34.830475, 40.827629>,  <35.810890, 34.440784, 40.199543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022827, 34.830475, 40.827629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623234, 34.822872, 40.843945>,  <35.383476, 34.818310, 40.853733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623234, 34.822872, 40.843945>,  <36.022827, 34.830475, 40.827629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623234, 34.822872, 40.843945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039839, 0.048101, 0.998048,
		-0.020930, 0.998662, -0.047295,
		-0.998987, -0.019005, 0.040792,
		35.323536, 34.817169, 40.856182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820515, 35.220459, 41.336349>,  <36.022827, 34.830475, 40.827629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820515, 35.220459, 41.336349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492004, 34.998329, 41.284016>,  <35.294899, 34.865051, 41.252613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492004, 34.998329, 41.284016>,  <35.820515, 35.220459, 41.336349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492004, 34.998329, 41.284016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140515, -0.025380, 0.989753,
		-0.552952, 0.831248, -0.057186,
		-0.821279, -0.555322, -0.130837,
		35.245621, 34.831734, 41.244766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368679, 35.533806, 41.762894>,  <35.820515, 35.220459, 41.336349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368679, 35.533806, 41.762894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203297, 35.175575, 41.697170>,  <35.104069, 34.960636, 41.657734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203297, 35.175575, 41.697170>,  <35.368679, 35.533806, 41.762894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203297, 35.175575, 41.697170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254868, -0.059413, 0.965149,
		-0.874126, 0.440924, -0.203689,
		-0.413456, -0.895576, -0.164312,
		35.079262, 34.906902, 41.647877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712765, 35.533772, 42.036251>,  <35.368679, 35.533806, 41.762894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712765, 35.533772, 42.036251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815903, 35.148731, 42.002972>,  <34.877785, 34.917709, 41.983002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815903, 35.148731, 42.002972>,  <34.712765, 35.533772, 42.036251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815903, 35.148731, 42.002972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172107, -0.130495, 0.976397,
		-0.950734, -0.237440, -0.199317,
		0.257845, -0.962597, -0.083201,
		34.893257, 34.859951, 41.978012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147011, 35.094082, 42.359486>,  <34.712765, 35.533772, 42.036251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147011, 35.094082, 42.359486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470646, 34.860500, 42.333019>,  <34.664825, 34.720352, 42.317139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470646, 34.860500, 42.333019>,  <34.147011, 35.094082, 42.359486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470646, 34.860500, 42.333019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180525, -0.354093, 0.917621,
		-0.559274, -0.730492, -0.391910,
		0.809088, -0.583952, -0.066163,
		34.713371, 34.685314, 42.313171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965286, 34.394276, 42.674549>,  <34.147011, 35.094082, 42.359486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965286, 34.394276, 42.674549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362507, 34.440037, 42.685616>,  <34.600838, 34.467495, 42.692257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362507, 34.440037, 42.685616>,  <33.965286, 34.394276, 42.674549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362507, 34.440037, 42.685616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009088, -0.308914, 0.951046,
		0.117353, -0.944184, -0.307807,
		0.993049, 0.114405, 0.027671,
		34.660423, 34.474358, 42.693916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206177, 33.844536, 43.038616>,  <33.965286, 34.394276, 42.674549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206177, 33.844536, 43.038616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541199, 34.062267, 43.057369>,  <34.742214, 34.192905, 43.068623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541199, 34.062267, 43.057369>,  <34.206177, 33.844536, 43.038616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541199, 34.062267, 43.057369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136204, -0.291134, 0.946937,
		0.529098, -0.786729, -0.317982,
		0.837558, 0.544333, 0.046883,
		34.792465, 34.225567, 43.071434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692245, 33.407902, 43.383427>,  <34.206177, 33.844536, 43.038616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692245, 33.407902, 43.383427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826839, 33.780598, 43.438030>,  <34.907597, 34.004215, 43.470791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826839, 33.780598, 43.438030>,  <34.692245, 33.407902, 43.383427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826839, 33.780598, 43.438030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141634, -0.193387, 0.970846,
		0.930975, -0.307345, -0.197038,
		0.336489, 0.931741, 0.136508,
		34.927788, 34.060120, 43.478981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029018, 33.307823, 43.960575>,  <34.692245, 33.407902, 43.383427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029018, 33.307823, 43.960575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059914, 33.704773, 43.922165>,  <35.078453, 33.942944, 43.899117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059914, 33.704773, 43.922165>,  <35.029018, 33.307823, 43.960575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059914, 33.704773, 43.922165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283003, 0.070531, 0.956522,
		0.956004, -0.101059, -0.275398,
		0.077241, 0.992377, -0.096027,
		35.083084, 34.002487, 43.893356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713921, 33.532410, 44.119713>,  <35.029018, 33.307823, 43.960575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713921, 33.532410, 44.119713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453392, 33.829102, 44.183731>,  <35.297073, 34.007118, 44.222141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453392, 33.829102, 44.183731>,  <35.713921, 33.532410, 44.119713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453392, 33.829102, 44.183731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402435, 0.158856, 0.901560,
		0.643289, 0.651616, -0.401965,
		-0.651325, 0.741729, 0.160043,
		35.257996, 34.051620, 44.231743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123329, 34.007832, 44.400860>,  <35.713921, 33.532410, 44.119713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123329, 34.007832, 44.400860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760326, 34.139709, 44.504959>,  <35.542522, 34.218838, 44.567417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760326, 34.139709, 44.504959>,  <36.123329, 34.007832, 44.400860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760326, 34.139709, 44.504959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347648, 0.241850, 0.905897,
		0.235728, 0.912584, -0.334099,
		-0.907509, 0.329694, 0.260248,
		35.488075, 34.238617, 44.583035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197407, 34.646793, 44.710106>,  <36.123329, 34.007832, 44.400860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197407, 34.646793, 44.710106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859955, 34.490665, 44.857582>,  <35.657482, 34.396988, 44.946068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859955, 34.490665, 44.857582>,  <36.197407, 34.646793, 44.710106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859955, 34.490665, 44.857582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330595, 0.163469, 0.929508,
		-0.423073, 0.906052, -0.008871,
		-0.843633, -0.390317, 0.368695,
		35.606865, 34.373569, 44.968189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054897, 35.083473, 45.280567>,  <36.197407, 34.646793, 44.710106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054897, 35.083473, 45.280567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829014, 34.758976, 45.341217>,  <35.693481, 34.564278, 45.377605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829014, 34.758976, 45.341217>,  <36.054897, 35.083473, 45.280567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829014, 34.758976, 45.341217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239145, 0.014990, 0.970868,
		-0.789879, 0.584522, 0.185539,
		-0.564713, -0.811240, 0.151625,
		35.659599, 34.515606, 45.386703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697285, 35.246311, 45.892185>,  <36.054897, 35.083473, 45.280567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697285, 35.246311, 45.892185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701855, 34.846828, 45.872368>,  <35.704597, 34.607140, 45.860477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701855, 34.846828, 45.872368>,  <35.697285, 35.246311, 45.892185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701855, 34.846828, 45.872368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267885, -0.044674, 0.962415,
		-0.963383, -0.024266, 0.267028,
		0.011425, -0.998707, -0.049539,
		35.705284, 34.547218, 45.857506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261154, 34.992569, 46.356430>,  <35.697285, 35.246311, 45.892185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261154, 34.992569, 46.356430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506458, 34.678200, 46.324848>,  <35.653641, 34.489578, 46.305897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506458, 34.678200, 46.324848>,  <35.261154, 34.992569, 46.356430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506458, 34.678200, 46.324848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097515, -0.023867, 0.994948,
		-0.783840, -0.617860, 0.062003,
		0.613258, -0.785926, -0.078958,
		35.690437, 34.442421, 46.301159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337257, 34.536602, 47.103462>,  <35.261154, 34.992569, 46.356430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337257, 34.536602, 47.103462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652378, 34.405743, 46.894714>,  <35.841450, 34.327229, 46.769466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652378, 34.405743, 46.894714>,  <35.337257, 34.536602, 47.103462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652378, 34.405743, 46.894714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490923, -0.178192, 0.852785,
		-0.371978, -0.928021, 0.020224,
		0.787799, -0.327146, -0.521870,
		35.888718, 34.307598, 46.738152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795898, 34.320251, 47.602646>,  <35.337257, 34.536602, 47.103462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795898, 34.320251, 47.602646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055912, 34.192104, 47.327015>,  <36.211922, 34.115215, 47.161636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055912, 34.192104, 47.327015>,  <35.795898, 34.320251, 47.602646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055912, 34.192104, 47.327015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575507, -0.384607, 0.721713,
		-0.496235, -0.865704, -0.065635,
		0.650033, -0.320366, -0.689074,
		36.250923, 34.095997, 47.120293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831875, 33.561852, 47.567703>,  <35.795898, 34.320251, 47.602646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831875, 33.561852, 47.567703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173313, 33.752007, 47.482498>,  <36.378178, 33.866100, 47.431377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173313, 33.752007, 47.482498>,  <35.831875, 33.561852, 47.567703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173313, 33.752007, 47.482498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455609, -0.483047, 0.747721,
		0.252563, -0.735304, -0.628920,
		0.853600, 0.475388, -0.213011,
		36.429394, 33.894623, 47.418594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427620, 33.052303, 47.517830>,  <35.831875, 33.561852, 47.567703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427620, 33.052303, 47.517830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539715, 33.405983, 47.667313>,  <36.606972, 33.618191, 47.757004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539715, 33.405983, 47.667313>,  <36.427620, 33.052303, 47.517830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539715, 33.405983, 47.667313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364672, -0.458182, 0.810607,
		0.887966, -0.090880, -0.450842,
		0.280235, 0.884201, 0.373708,
		36.623787, 33.671242, 47.779427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974026, 32.821854, 47.838959>,  <36.427620, 33.052303, 47.517830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974026, 32.821854, 47.838959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884762, 33.173279, 48.007874>,  <36.831203, 33.384132, 48.109222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884762, 33.173279, 48.007874>,  <36.974026, 32.821854, 47.838959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884762, 33.173279, 48.007874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123566, -0.404221, 0.906276,
		0.966918, 0.254426, -0.018354,
		-0.223161, 0.878563, 0.422287,
		36.817814, 33.436848, 48.134560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576839, 33.010395, 48.223145>,  <36.974026, 32.821854, 47.838959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576839, 33.010395, 48.223145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255466, 33.202168, 48.364365>,  <37.062641, 33.317230, 48.449097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255466, 33.202168, 48.364365>,  <37.576839, 33.010395, 48.223145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255466, 33.202168, 48.364365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131283, -0.435719, 0.890457,
		0.580743, 0.761770, 0.287129,
		-0.803431, 0.479431, 0.353049,
		37.014439, 33.345997, 48.470280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711189, 33.215614, 48.962830>,  <37.576839, 33.010395, 48.223145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711189, 33.215614, 48.962830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312439, 33.233475, 48.936760>,  <37.073189, 33.244190, 48.921120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312439, 33.233475, 48.936760>,  <37.711189, 33.215614, 48.962830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312439, 33.233475, 48.936760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078141, -0.435926, 0.896584,
		0.011618, 0.898874, 0.438052,
		-0.996875, 0.044646, -0.065174,
		37.013378, 33.246868, 48.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540585, 33.483185, 49.644058>,  <37.711189, 33.215614, 48.962830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540585, 33.483185, 49.644058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206589, 33.328941, 49.487038>,  <37.006191, 33.236393, 49.392826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206589, 33.328941, 49.487038>,  <37.540585, 33.483185, 49.644058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206589, 33.328941, 49.487038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197918, -0.455182, 0.868123,
		-0.513442, 0.802566, 0.303752,
		-0.834989, -0.385613, -0.392551,
		36.956093, 33.213257, 49.369274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044437, 33.659084, 50.069771>,  <37.540585, 33.483185, 49.644058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044437, 33.659084, 50.069771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913857, 33.338825, 49.868820>,  <36.835506, 33.146667, 49.748249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913857, 33.338825, 49.868820>,  <37.044437, 33.659084, 50.069771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913857, 33.338825, 49.868820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132407, -0.487522, 0.863013,
		-0.935894, 0.348251, 0.053141,
		-0.326453, -0.800652, -0.502379,
		36.815922, 33.098629, 49.718105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513065, 33.436718, 50.505535>,  <37.044437, 33.659084, 50.069771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513065, 33.436718, 50.505535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600842, 33.141003, 50.250885>,  <36.653507, 32.963573, 50.098095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600842, 33.141003, 50.250885>,  <36.513065, 33.436718, 50.505535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600842, 33.141003, 50.250885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113312, -0.667430, 0.736001,
		-0.969024, -0.089369, -0.230230,
		0.219438, -0.739291, -0.636629,
		36.666672, 32.919216, 50.059895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968872, 32.998489, 50.613407>,  <36.513065, 33.436718, 50.505535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968872, 32.998489, 50.613407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280540, 32.795441, 50.466328>,  <36.467541, 32.673611, 50.378078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280540, 32.795441, 50.466328>,  <35.968872, 32.998489, 50.613407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280540, 32.795441, 50.466328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140257, -0.712950, 0.687045,
		-0.610912, -0.483755, -0.626711,
		0.779175, -0.507625, -0.367699,
		36.514294, 32.643154, 50.356018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623032, 32.296234, 50.580486>,  <35.968872, 32.998489, 50.613407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623032, 32.296234, 50.580486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022991, 32.293831, 50.585548>,  <36.262966, 32.292389, 50.588585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022991, 32.293831, 50.585548>,  <35.623032, 32.296234, 50.580486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022991, 32.293831, 50.585548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012487, -0.791535, 0.610996,
		0.006351, -0.611094, -0.791532,
		0.999902, -0.006003, 0.012657,
		36.322960, 32.292030, 50.589344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901443, 31.710388, 50.291676>,  <35.623032, 32.296234, 50.580486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901443, 31.710388, 50.291676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142128, 31.802679, 50.597538>,  <36.286541, 31.858053, 50.781055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142128, 31.802679, 50.597538>,  <35.901443, 31.710388, 50.291676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142128, 31.802679, 50.597538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164110, -0.901224, 0.401077,
		0.781669, -0.366822, -0.504416,
		0.601715, 0.230730, 0.764658,
		36.322643, 31.871899, 50.826935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585899, 31.275927, 50.393394>,  <35.901443, 31.710388, 50.291676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585899, 31.275927, 50.393394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383308, 31.413696, 50.709583>,  <36.261753, 31.496359, 50.899296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383308, 31.413696, 50.709583>,  <36.585899, 31.275927, 50.393394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383308, 31.413696, 50.709583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089552, -0.932810, 0.349066,
		0.857591, 0.106005, 0.503290,
		-0.506476, 0.344426, 0.790476,
		36.231365, 31.517025, 50.946728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898109, 30.900570, 50.857868>,  <36.585899, 31.275927, 50.393394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898109, 30.900570, 50.857868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566044, 31.021441, 51.045280>,  <36.366806, 31.093964, 51.157726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566044, 31.021441, 51.045280>,  <36.898109, 30.900570, 50.857868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566044, 31.021441, 51.045280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028554, -0.862319, 0.505559,
		0.556788, 0.406319, 0.724495,
		-0.830164, 0.302176, 0.468527,
		36.316994, 31.112093, 51.185837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818581, 30.887037, 51.657173>,  <36.898109, 30.900570, 50.857868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818581, 30.887037, 51.657173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451923, 30.798262, 51.524197>,  <36.231930, 30.744997, 51.444412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451923, 30.798262, 51.524197>,  <36.818581, 30.887037, 51.657173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451923, 30.798262, 51.524197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002963, -0.835443, 0.549569,
		-0.399706, 0.502771, 0.766457,
		-0.916638, -0.221937, -0.332442,
		36.176933, 30.731680, 51.424465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435009, 31.342249, 51.374435>,  <36.818581, 30.887037, 51.657173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435009, 31.342249, 51.374435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647255, 31.082115, 51.156990>,  <37.774601, 30.926035, 51.026524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647255, 31.082115, 51.156990>,  <37.435009, 31.342249, 51.374435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647255, 31.082115, 51.156990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586897, 0.180839, -0.789208,
		0.611556, 0.737808, -0.285725,
		0.530613, -0.650336, -0.543610,
		37.806438, 30.887014, 50.993908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841702, 31.697956, 50.750980>,  <37.435009, 31.342249, 51.374435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841702, 31.697956, 50.750980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742184, 31.316671, 50.682293>,  <37.682472, 31.087900, 50.641079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742184, 31.316671, 50.682293>,  <37.841702, 31.697956, 50.750980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742184, 31.316671, 50.682293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410700, 0.264392, -0.872595,
		0.877171, -0.146567, -0.457262,
		-0.248790, -0.953213, -0.171722,
		37.667545, 31.030708, 50.630775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102329, 31.324337, 50.153545>,  <37.841702, 31.697956, 50.750980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102329, 31.324337, 50.153545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750702, 31.147518, 50.224918>,  <37.539726, 31.041428, 50.267742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750702, 31.147518, 50.224918>,  <38.102329, 31.324337, 50.153545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750702, 31.147518, 50.224918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300774, 0.223928, -0.927033,
		0.369837, -0.868590, -0.329804,
		-0.879065, -0.442048, 0.178433,
		37.486984, 31.014904, 50.278450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859352, 30.656975, 49.722363>,  <38.102329, 31.324337, 50.153545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859352, 30.656975, 49.722363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560677, 30.894320, 49.842609>,  <37.381470, 31.036726, 49.914757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560677, 30.894320, 49.842609>,  <37.859352, 30.656975, 49.722363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560677, 30.894320, 49.842609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247235, 0.171985, -0.953570,
		-0.617515, -0.786347, 0.018280,
		-0.746693, 0.593363, 0.300615,
		37.336670, 31.072329, 49.932793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298637, 30.396015, 49.411839>,  <37.859352, 30.656975, 49.722363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298637, 30.396015, 49.411839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232121, 30.780561, 49.499584>,  <37.192211, 31.011290, 49.552231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232121, 30.780561, 49.499584>,  <37.298637, 30.396015, 49.411839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232121, 30.780561, 49.499584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130857, 0.198982, -0.971228,
		-0.977355, -0.190215, 0.092712,
		-0.166294, 0.961366, 0.219367,
		37.182232, 31.068972, 49.565395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669094, 30.617813, 49.184864>,  <37.298637, 30.396015, 49.411839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669094, 30.617813, 49.184864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950191, 30.901300, 49.159954>,  <37.118851, 31.071392, 49.145008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950191, 30.901300, 49.159954>,  <36.669094, 30.617813, 49.184864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950191, 30.901300, 49.159954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198846, 0.111614, -0.973654,
		-0.683094, 0.696609, 0.219360,
		0.702740, 0.708716, -0.062275,
		37.161015, 31.113914, 49.141270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349686, 31.263582, 48.909004>,  <36.669094, 30.617813, 49.184864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349686, 31.263582, 48.909004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732872, 31.223022, 48.801662>,  <36.962784, 31.198687, 48.737259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732872, 31.223022, 48.801662>,  <36.349686, 31.263582, 48.909004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732872, 31.223022, 48.801662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249446, 0.167546, -0.953785,
		0.141676, 0.980636, 0.135210,
		0.957969, -0.101401, -0.268353,
		37.020264, 31.192602, 48.721157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487022, 31.751291, 48.404121>,  <36.349686, 31.263582, 48.909004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487022, 31.751291, 48.404121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796017, 31.501778, 48.356533>,  <36.981415, 31.352070, 48.327980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796017, 31.501778, 48.356533>,  <36.487022, 31.751291, 48.404121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796017, 31.501778, 48.356533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011105, 0.200596, -0.979611,
		0.634932, 0.755417, 0.161885,
		0.772489, -0.623784, -0.118975,
		37.027763, 31.314642, 48.320839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953255, 32.016888, 47.946163>,  <36.487022, 31.751291, 48.404121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953255, 32.016888, 47.946163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010712, 31.621765, 47.922131>,  <37.045185, 31.384691, 47.907711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010712, 31.621765, 47.922131>,  <36.953255, 32.016888, 47.946163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010712, 31.621765, 47.922131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162868, 0.083481, -0.983110,
		0.976136, 0.131427, 0.172873,
		0.143639, -0.987804, -0.060083,
		37.053802, 31.325424, 47.904106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516872, 32.000347, 47.482346>,  <36.953255, 32.016888, 47.946163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516872, 32.000347, 47.482346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372890, 31.627710, 47.502598>,  <37.286503, 31.404127, 47.514751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372890, 31.627710, 47.502598>,  <37.516872, 32.000347, 47.482346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372890, 31.627710, 47.502598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095654, -0.090834, -0.991261,
		0.928054, -0.351963, 0.121807,
		-0.359951, -0.931596, 0.050632,
		37.264904, 31.348232, 47.517788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950909, 31.486441, 47.148548>,  <37.516872, 32.000347, 47.482346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950909, 31.486441, 47.148548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614849, 31.272312, 47.183384>,  <37.413216, 31.143835, 47.204285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614849, 31.272312, 47.183384>,  <37.950909, 31.486441, 47.148548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614849, 31.272312, 47.183384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109907, -0.325281, -0.939209,
		0.531107, -0.779501, 0.332120,
		-0.840146, -0.535323, 0.087086,
		37.362804, 31.111715, 47.209511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081505, 30.769375, 46.851151>,  <37.950909, 31.486441, 47.148548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081505, 30.769375, 46.851151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693077, 30.863541, 46.867161>,  <37.460022, 30.920040, 46.876766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693077, 30.863541, 46.867161>,  <38.081505, 30.769375, 46.851151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693077, 30.863541, 46.867161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093315, -0.219805, -0.971071,
		-0.219805, -0.946713, 0.235414,
		0.971071, -0.235414, -0.040029,
		37.401756, 30.934164, 46.879169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799633, 30.204058, 46.494633>,  <38.081505, 30.769375, 46.851151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799633, 30.204058, 46.494633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484642, 30.450516, 46.488380>,  <37.295647, 30.598391, 46.484631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484642, 30.450516, 46.488380>,  <37.799633, 30.204058, 46.494633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484642, 30.450516, 46.488380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227627, -0.314303, -0.921629,
		-0.572768, -0.722206, 0.387758,
		-0.787479, 0.616144, -0.015630,
		37.248398, 30.635359, 46.483692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313148, 29.828224, 46.168159>,  <37.799633, 30.204058, 46.494633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313148, 29.828224, 46.168159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193058, 30.207233, 46.124226>,  <37.121006, 30.434639, 46.097866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193058, 30.207233, 46.124226>,  <37.313148, 29.828224, 46.168159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193058, 30.207233, 46.124226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159843, -0.163492, -0.973509,
		-0.940381, -0.274714, 0.200539,
		-0.300224, 0.947525, -0.109834,
		37.102989, 30.491491, 46.091274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705391, 29.830109, 45.621624>,  <37.313148, 29.828224, 46.168159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705391, 29.830109, 45.621624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838837, 30.207121, 45.614250>,  <36.918903, 30.433329, 45.609825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838837, 30.207121, 45.614250>,  <36.705391, 29.830109, 45.621624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838837, 30.207121, 45.614250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029184, -0.029867, -0.999128,
		-0.942257, 0.332788, -0.037471,
		0.333617, 0.942528, -0.018430,
		36.938923, 30.489880, 45.608723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343288, 30.011412, 45.061760>,  <36.705391, 29.830109, 45.621624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343288, 30.011412, 45.061760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644157, 30.271080, 45.107037>,  <36.824680, 30.426882, 45.134201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644157, 30.271080, 45.107037>,  <36.343288, 30.011412, 45.061760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644157, 30.271080, 45.107037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020349, 0.194570, -0.980678,
		-0.658652, 0.735336, 0.159560,
		0.752173, 0.649172, 0.113191,
		36.869808, 30.465832, 45.140995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028423, 29.985712, 44.325653>,  <36.343288, 30.011412, 45.061760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028423, 29.985712, 44.325653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345612, 29.835905, 44.517879>,  <36.535923, 29.746021, 44.633213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345612, 29.835905, 44.517879>,  <36.028423, 29.985712, 44.325653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345612, 29.835905, 44.517879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173520, 0.617270, 0.767378,
		-0.584034, -0.691892, 0.424488,
		0.792966, -0.374517, 0.480563,
		36.583500, 29.723551, 44.662048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136623, 30.614939, 44.755707>,  <36.028423, 29.985712, 44.325653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136623, 30.614939, 44.755707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533360, 30.661139, 44.777325>,  <36.771400, 30.688858, 44.790295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533360, 30.661139, 44.777325>,  <36.136623, 30.614939, 44.755707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533360, 30.661139, 44.777325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008566, 0.362516, -0.931938,
		-0.127231, 0.924793, 0.358567,
		0.991836, 0.115500, 0.054045,
		36.830910, 30.695789, 44.793537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330914, 31.241880, 44.524731>,  <36.136623, 30.614939, 44.755707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330914, 31.241880, 44.524731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661285, 31.024979, 44.463020>,  <36.859509, 30.894836, 44.425995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661285, 31.024979, 44.463020>,  <36.330914, 31.241880, 44.524731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661285, 31.024979, 44.463020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166016, 0.495441, -0.852629,
		0.538777, 0.678599, 0.499222,
		0.825928, -0.542256, -0.154274,
		36.909065, 30.862301, 44.416737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827389, 31.750088, 44.323425>,  <36.330914, 31.241880, 44.524731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827389, 31.750088, 44.323425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922752, 31.389923, 44.177868>,  <36.979973, 31.173824, 44.090534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922752, 31.389923, 44.177868>,  <36.827389, 31.750088, 44.323425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922752, 31.389923, 44.177868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119570, 0.344635, -0.931090,
		0.963775, 0.265493, -0.025497,
		0.238411, -0.900411, -0.363896,
		36.994274, 31.119801, 44.068699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355247, 31.871372, 43.802734>,  <36.827389, 31.750088, 44.323425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355247, 31.871372, 43.802734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155277, 31.543585, 43.690628>,  <37.035297, 31.346912, 43.623363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155277, 31.543585, 43.690628>,  <37.355247, 31.871372, 43.802734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155277, 31.543585, 43.690628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038899, 0.344521, -0.937972,
		0.865196, -0.458012, -0.204110,
		-0.499923, -0.819469, -0.280262,
		37.005299, 31.297745, 43.606548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456566, 31.807995, 43.111771>,  <37.355247, 31.871372, 43.802734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456566, 31.807995, 43.111771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146774, 31.555132, 43.121281>,  <36.960899, 31.403414, 43.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146774, 31.555132, 43.121281>,  <37.456566, 31.807995, 43.111771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146774, 31.555132, 43.121281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129981, 0.122234, -0.983953,
		0.619105, -0.765139, -0.176836,
		-0.774477, -0.632156, 0.023778,
		36.914433, 31.365486, 43.128414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578190, 31.449064, 42.522537>,  <37.456566, 31.807995, 43.111771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578190, 31.449064, 42.522537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194328, 31.363619, 42.595688>,  <36.964012, 31.312351, 42.639576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194328, 31.363619, 42.595688>,  <37.578190, 31.449064, 42.522537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194328, 31.363619, 42.595688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227602, 0.208136, -0.951250,
		0.165133, -0.954490, -0.248356,
		-0.959650, -0.213609, 0.182874,
		36.906433, 31.299534, 42.650551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330528, 31.072807, 42.052921>,  <37.578190, 31.449064, 42.522537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330528, 31.072807, 42.052921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987129, 31.211077, 42.204441>,  <36.781090, 31.294039, 42.295353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987129, 31.211077, 42.204441>,  <37.330528, 31.072807, 42.052921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987129, 31.211077, 42.204441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298468, 0.263849, -0.917224,
		-0.417007, -0.900496, -0.123341,
		-0.858500, 0.345676, 0.378796,
		36.729580, 31.314779, 42.318081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816570, 30.722761, 41.585152>,  <37.330528, 31.072807, 42.052921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816570, 30.722761, 41.585152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626965, 31.036537, 41.745136>,  <36.513203, 31.224802, 41.841125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626965, 31.036537, 41.745136>,  <36.816570, 30.722761, 41.585152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626965, 31.036537, 41.745136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480184, 0.150451, -0.864169,
		-0.738064, -0.601678, 0.305361,
		-0.474010, 0.784441, 0.399959,
		36.484760, 31.271870, 41.865124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079983, 30.643473, 41.460335>,  <36.816570, 30.722761, 41.585152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079983, 30.643473, 41.460335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151535, 31.030973, 41.529064>,  <36.194466, 31.263474, 41.570301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151535, 31.030973, 41.529064>,  <36.079983, 30.643473, 41.460335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151535, 31.030973, 41.529064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610322, 0.246241, -0.752910,
		-0.771692, 0.029813, 0.635297,
		0.178883, 0.968750, 0.171827,
		36.205200, 31.321598, 41.580612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430889, 30.951387, 41.222363>,  <36.079983, 30.643473, 41.460335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430889, 30.951387, 41.222363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702141, 31.243475, 41.255630>,  <35.864891, 31.418728, 41.275589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702141, 31.243475, 41.255630>,  <35.430889, 30.951387, 41.222363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702141, 31.243475, 41.255630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430123, 0.486085, -0.760734,
		-0.595928, 0.480107, 0.643714,
		0.678133, 0.730218, 0.083167,
		35.905582, 31.462540, 41.280582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997364, 31.552780, 41.225220>,  <35.430889, 30.951387, 41.222363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997364, 31.552780, 41.225220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344795, 31.719528, 41.118042>,  <35.553253, 31.819576, 41.053738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344795, 31.719528, 41.118042>,  <34.997364, 31.552780, 41.225220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344795, 31.719528, 41.118042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436548, 0.387789, -0.811816,
		-0.234515, 0.822095, 0.518809,
		0.868578, 0.416868, -0.267942,
		35.605370, 31.844589, 41.037659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930035, 32.240601, 41.213726>,  <34.997364, 31.552780, 41.225220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930035, 32.240601, 41.213726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246933, 32.175629, 40.978455>,  <35.437073, 32.136646, 40.837292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246933, 32.175629, 40.978455>,  <34.930035, 32.240601, 41.213726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246933, 32.175629, 40.978455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511006, 0.350202, -0.785005,
		0.333488, 0.922484, 0.194446,
		0.792249, -0.162426, -0.588182,
		35.484608, 32.126900, 40.801998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113846, 32.916798, 40.885147>,  <34.930035, 32.240601, 41.213726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113846, 32.916798, 40.885147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267384, 32.624283, 40.659622>,  <35.359505, 32.448772, 40.524307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267384, 32.624283, 40.659622>,  <35.113846, 32.916798, 40.885147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267384, 32.624283, 40.659622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600356, 0.266282, -0.754100,
		0.701598, 0.627941, -0.336824,
		0.383840, -0.731289, -0.563811,
		35.382534, 32.404896, 40.490479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333992, 33.152809, 40.194790>,  <35.113846, 32.916798, 40.885147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333992, 33.152809, 40.194790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292492, 32.761074, 40.125347>,  <35.267593, 32.526035, 40.083683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292492, 32.761074, 40.125347>,  <35.333992, 33.152809, 40.194790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292492, 32.761074, 40.125347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501861, 0.202246, -0.840971,
		0.858703, -0.000123, -0.512473,
		-0.103749, -0.979335, -0.173608,
		35.261368, 32.467274, 40.073265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552315, 32.994900, 39.493992>,  <35.333992, 33.152809, 40.194790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552315, 32.994900, 39.493992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334438, 32.671764, 39.584068>,  <35.203712, 32.477882, 39.638115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334438, 32.671764, 39.584068>,  <35.552315, 32.994900, 39.493992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334438, 32.671764, 39.584068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507006, 0.103314, -0.855729,
		0.668027, -0.580276, -0.465853,
		-0.544689, -0.807840, 0.225187,
		35.171032, 32.429413, 39.651623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506111, 32.648388, 38.829979>,  <35.552315, 32.994900, 39.493992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506111, 32.648388, 38.829979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217823, 32.507984, 39.069096>,  <35.044849, 32.423740, 39.212566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217823, 32.507984, 39.069096>,  <35.506111, 32.648388, 38.829979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217823, 32.507984, 39.069096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634361, -0.013807, -0.772914,
		0.279558, -0.936268, -0.212719,
		-0.720717, -0.351015, 0.597792,
		35.001606, 32.402679, 39.248432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180767, 32.022259, 38.453873>,  <35.506111, 32.648388, 38.829979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180767, 32.022259, 38.453873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913155, 32.123478, 38.733402>,  <34.752586, 32.184212, 38.901119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913155, 32.123478, 38.733402>,  <35.180767, 32.022259, 38.453873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913155, 32.123478, 38.733402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730578, -0.051153, -0.680910,
		-0.136558, -0.966100, 0.219097,
		-0.669035, 0.253051, 0.698826,
		34.712444, 32.199394, 38.943050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683887, 31.502869, 38.446846>,  <35.180767, 32.022259, 38.453873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683887, 31.502869, 38.446846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519558, 31.834253, 38.599098>,  <34.420959, 32.033085, 38.690449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519558, 31.834253, 38.599098>,  <34.683887, 31.502869, 38.446846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519558, 31.834253, 38.599098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702796, -0.021816, -0.711057,
		-0.580778, -0.559624, 0.591200,
		-0.410822, 0.828460, 0.380631,
		34.396313, 32.082790, 38.713287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955643, 31.430906, 38.414646>,  <34.683887, 31.502869, 38.446846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955643, 31.430906, 38.414646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954353, 31.823046, 38.493546>,  <33.953579, 32.058331, 38.540886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954353, 31.823046, 38.493546>,  <33.955643, 31.430906, 38.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954353, 31.823046, 38.493546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820191, 0.110253, -0.561365,
		-0.572081, -0.163593, 0.803717,
		-0.003223, 0.980347, 0.197251,
		33.953388, 32.117149, 38.552719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263111, 31.660889, 38.320522>,  <33.955643, 31.430906, 38.414646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263111, 31.660889, 38.320522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454113, 32.010578, 38.285385>,  <33.568714, 32.220394, 38.264305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454113, 32.010578, 38.285385>,  <33.263111, 31.660889, 38.320522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454113, 32.010578, 38.285385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713885, 0.327752, -0.618827,
		-0.512205, 0.358202, 0.780601,
		0.477508, 0.874225, -0.087839,
		33.597366, 32.272846, 38.259033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795971, 32.279610, 38.577621>,  <33.263111, 31.660889, 38.320522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795971, 32.279610, 38.577621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086193, 32.407288, 38.333759>,  <33.260326, 32.483894, 38.187443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086193, 32.407288, 38.333759>,  <32.795971, 32.279610, 38.577621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086193, 32.407288, 38.333759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672760, 0.515398, -0.530809,
		0.144783, 0.795284, 0.588694,
		0.725556, 0.319197, -0.609657,
		33.303860, 32.503048, 38.150864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704838, 33.061962, 38.483788>,  <32.795971, 32.279610, 38.577621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704838, 33.061962, 38.483788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914261, 32.911510, 38.177998>,  <33.039913, 32.821239, 37.994526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914261, 32.911510, 38.177998>,  <32.704838, 33.061962, 38.483788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914261, 32.911510, 38.177998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496724, 0.594249, -0.632561,
		0.692209, 0.710914, 0.124293,
		0.523557, -0.376125, -0.764472,
		33.071327, 32.798672, 37.948654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561417, 33.556950, 37.940601>,  <32.704838, 33.061962, 38.483788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561417, 33.556950, 37.940601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755886, 33.277729, 37.730320>,  <32.872566, 33.110199, 37.604153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755886, 33.277729, 37.730320>,  <32.561417, 33.556950, 37.940601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755886, 33.277729, 37.730320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570066, 0.202601, -0.796227,
		0.662313, 0.686790, -0.299434,
		0.486175, -0.698049, -0.525701,
		32.901737, 33.068314, 37.572609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958488, 33.931194, 37.463955>,  <32.561417, 33.556950, 37.940601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958488, 33.931194, 37.463955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864685, 33.561234, 37.344250>,  <32.808403, 33.339256, 37.272427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864685, 33.561234, 37.344250>,  <32.958488, 33.931194, 37.463955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864685, 33.561234, 37.344250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438357, 0.375386, -0.816657,
		0.867668, -0.060330, -0.493469,
		-0.234510, -0.924903, -0.299264,
		32.794331, 33.283764, 37.254471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203342, 33.974228, 36.851414>,  <32.958488, 33.931194, 37.463955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203342, 33.974228, 36.851414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922710, 33.690678, 36.822323>,  <32.754333, 33.520550, 36.804867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922710, 33.690678, 36.822323>,  <33.203342, 33.974228, 36.851414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922710, 33.690678, 36.822323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315982, 0.400948, -0.859881,
		0.638706, -0.580293, -0.505287,
		-0.701577, -0.708873, -0.072726,
		32.712238, 33.478016, 36.800507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339108, 33.637344, 36.203430>,  <33.203342, 33.974228, 36.851414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339108, 33.637344, 36.203430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950020, 33.640057, 36.296192>,  <32.716568, 33.641685, 36.351849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950020, 33.640057, 36.296192>,  <33.339108, 33.637344, 36.203430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950020, 33.640057, 36.296192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218266, 0.312072, -0.924647,
		-0.078644, -0.950034, -0.302076,
		-0.972715, 0.006785, 0.231902,
		32.658207, 33.642094, 36.365765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987774, 33.225803, 36.268291>,  <33.339108, 33.637344, 36.203430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987774, 33.225803, 36.268291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795910, 32.874996, 36.257221>,  <33.680790, 32.664513, 36.250580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795910, 32.874996, 36.257221>,  <33.987774, 33.225803, 36.268291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795910, 32.874996, 36.257221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877109, -0.478347, -0.043162,
		0.024614, -0.044980, 0.998685,
		-0.479659, -0.877018, -0.027678,
		33.652012, 32.611889, 36.248917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552513, 33.503685, 35.807148>,  <33.987774, 33.225803, 36.268291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552513, 33.503685, 35.807148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814854, 33.376755, 35.533165>,  <34.972256, 33.300594, 35.368774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814854, 33.376755, 35.533165>,  <34.552513, 33.503685, 35.807148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814854, 33.376755, 35.533165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412287, -0.609509, 0.677140,
		-0.632369, -0.726497, -0.268909,
		0.655842, -0.317335, -0.684960,
		35.011608, 33.281555, 35.327679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587189, 32.791561, 35.889896>,  <34.552513, 33.503685, 35.807148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587189, 32.791561, 35.889896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907711, 32.864586, 35.662010>,  <35.100025, 32.908401, 35.525280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907711, 32.864586, 35.662010>,  <34.587189, 32.791561, 35.889896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907711, 32.864586, 35.662010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566131, -0.539248, 0.623463,
		-0.193395, -0.822120, -0.535460,
		0.801307, 0.182566, -0.569716,
		35.148102, 32.919357, 35.491096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823551, 32.178242, 35.493603>,  <34.587189, 32.791561, 35.889896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823551, 32.178242, 35.493603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125996, 32.430355, 35.564079>,  <35.307461, 32.581623, 35.606365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125996, 32.430355, 35.564079>,  <34.823551, 32.178242, 35.493603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125996, 32.430355, 35.564079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490623, -0.724085, 0.484758,
		0.433113, -0.280085, -0.856718,
		0.756110, 0.630280, 0.176195,
		35.352829, 32.619438, 35.616940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539524, 31.875666, 35.516548>,  <34.823551, 32.178242, 35.493603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539524, 31.875666, 35.516548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627926, 32.209980, 35.717594>,  <35.680969, 32.410568, 35.838223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627926, 32.209980, 35.717594>,  <35.539524, 31.875666, 35.516548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627926, 32.209980, 35.717594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499194, -0.539674, 0.677906,
		0.837831, 0.101081, -0.536490,
		0.221006, 0.835783, 0.502615,
		35.694229, 32.460716, 35.868378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237991, 31.878725, 35.663937>,  <35.539524, 31.875666, 35.516548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237991, 31.878725, 35.663937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117878, 32.154091, 35.928032>,  <36.045811, 32.319309, 36.086491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117878, 32.154091, 35.928032>,  <36.237991, 31.878725, 35.663937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117878, 32.154091, 35.928032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620022, -0.385127, 0.683557,
		0.724846, 0.614622, -0.311186,
		-0.300283, 0.688416, 0.660237,
		36.027794, 32.360615, 36.126102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812958, 32.116779, 36.073681>,  <36.237991, 31.878725, 35.663937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812958, 32.116779, 36.073681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506779, 32.204235, 36.315769>,  <36.323071, 32.256706, 36.461021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506779, 32.204235, 36.315769>,  <36.812958, 32.116779, 36.073681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506779, 32.204235, 36.315769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505717, -0.377199, 0.775868,
		0.397922, 0.899955, 0.178157,
		-0.765447, 0.218637, 0.605218,
		36.277145, 32.269825, 36.497334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087666, 32.549217, 36.665558>,  <36.812958, 32.116779, 36.073681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087666, 32.549217, 36.665558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751492, 32.381783, 36.803230>,  <36.549789, 32.281322, 36.885834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751492, 32.381783, 36.803230>,  <37.087666, 32.549217, 36.665558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751492, 32.381783, 36.803230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519721, -0.442658, 0.730715,
		-0.153515, 0.792992, 0.589573,
		-0.840430, -0.418589, 0.344180,
		36.499363, 32.256207, 36.906483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170803, 32.664246, 37.305149>,  <37.087666, 32.549217, 36.665558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170803, 32.664246, 37.305149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911064, 32.360203, 37.295464>,  <36.755222, 32.177776, 37.289654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911064, 32.360203, 37.295464>,  <37.170803, 32.664246, 37.305149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911064, 32.360203, 37.295464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495284, -0.446843, 0.745000,
		-0.577100, 0.471769, 0.666625,
		-0.649345, -0.760109, -0.024214,
		36.716259, 32.132172, 37.288200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815937, 32.666599, 37.932281>,  <37.170803, 32.664246, 37.305149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815937, 32.666599, 37.932281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756645, 32.288403, 37.816299>,  <36.721069, 32.061485, 37.746708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756645, 32.288403, 37.816299>,  <36.815937, 32.666599, 37.932281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756645, 32.288403, 37.816299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221512, -0.317491, 0.922026,
		-0.963825, 0.072447, 0.256500,
		-0.148234, -0.945490, -0.289958,
		36.712173, 32.004757, 37.729313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463242, 32.309036, 38.456585>,  <36.815937, 32.666599, 37.932281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463242, 32.309036, 38.456585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648094, 32.022602, 38.247337>,  <36.759007, 31.850742, 38.121788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648094, 32.022602, 38.247337>,  <36.463242, 32.309036, 38.456585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648094, 32.022602, 38.247337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313687, -0.419759, 0.851706,
		-0.829479, -0.557696, 0.030643,
		0.462130, -0.716085, -0.523123,
		36.786732, 31.807777, 38.090401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373436, 31.702600, 38.875519>,  <36.463242, 32.309036, 38.456585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373436, 31.702600, 38.875519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677387, 31.611628, 38.631927>,  <36.859760, 31.557043, 38.485771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677387, 31.611628, 38.631927>,  <36.373436, 31.702600, 38.875519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677387, 31.611628, 38.631927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428238, -0.529663, 0.732168,
		-0.489072, -0.817148, -0.305086,
		0.759882, -0.227433, -0.608977,
		36.905354, 31.543398, 38.449234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559170, 30.977697, 38.918900>,  <36.373436, 31.702600, 38.875519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559170, 30.977697, 38.918900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892723, 31.139360, 38.768547>,  <37.092857, 31.236359, 38.678333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892723, 31.139360, 38.768547>,  <36.559170, 30.977697, 38.918900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892723, 31.139360, 38.768547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550211, -0.554933, 0.623953,
		0.043586, -0.727122, -0.685124,
		0.833887, 0.404158, -0.375884,
		37.142891, 31.260609, 38.655781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122883, 30.446301, 38.885803>,  <36.559170, 30.977697, 38.918900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122883, 30.446301, 38.885803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330154, 30.787050, 38.855347>,  <37.454517, 30.991501, 38.837074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330154, 30.787050, 38.855347>,  <37.122883, 30.446301, 38.885803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330154, 30.787050, 38.855347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696708, -0.368798, 0.615293,
		0.496072, -0.371881, -0.784612,
		0.518180, 0.851876, -0.076142,
		37.485607, 31.042612, 38.832504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821922, 30.214436, 38.840015>,  <37.122883, 30.446301, 38.885803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821922, 30.214436, 38.840015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838276, 30.586481, 38.986012>,  <37.848087, 30.809708, 39.073608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838276, 30.586481, 38.986012>,  <37.821922, 30.214436, 38.840015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838276, 30.586481, 38.986012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586730, -0.318030, 0.744718,
		0.808750, 0.183703, -0.558728,
		0.040885, 0.930113, 0.364991,
		37.850540, 30.865515, 39.095509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540943, 30.402409, 38.984539>,  <37.821922, 30.214436, 38.840015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540943, 30.402409, 38.984539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315781, 30.648003, 39.205864>,  <38.180683, 30.795359, 39.338661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315781, 30.648003, 39.205864>,  <38.540943, 30.402409, 38.984539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315781, 30.648003, 39.205864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477660, -0.304673, 0.824024,
		0.674517, 0.728147, -0.121772,
		-0.562910, 0.613984, 0.553314,
		38.146908, 30.832197, 39.371857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024303, 30.819679, 39.374599>,  <38.540943, 30.402409, 38.984539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024303, 30.819679, 39.374599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677563, 30.844006, 39.572533>,  <38.469517, 30.858601, 39.691292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677563, 30.844006, 39.572533>,  <39.024303, 30.819679, 39.374599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677563, 30.844006, 39.572533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490443, -0.074337, 0.868297,
		0.089590, 0.995377, 0.034614,
		-0.866856, 0.060815, 0.494835,
		38.417507, 30.862249, 39.720982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148209, 31.219181, 39.942791>,  <39.024303, 30.819679, 39.374599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148209, 31.219181, 39.942791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825500, 31.009100, 40.051079>,  <38.631878, 30.883051, 40.116051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825500, 31.009100, 40.051079>,  <39.148209, 31.219181, 39.942791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825500, 31.009100, 40.051079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338164, -0.034688, 0.940448,
		-0.484534, 0.850271, 0.205589,
		-0.806766, -0.525201, 0.270724,
		38.583469, 30.851540, 40.132298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774429, 31.615522, 40.517963>,  <39.148209, 31.219181, 39.942791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774429, 31.615522, 40.517963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707256, 31.226343, 40.581425>,  <38.666954, 30.992836, 40.619499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707256, 31.226343, 40.581425>,  <38.774429, 31.615522, 40.517963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707256, 31.226343, 40.581425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256903, 0.112180, 0.959904,
		-0.951735, 0.201955, 0.231115,
		-0.167931, -0.972949, 0.158649,
		38.656876, 30.934458, 40.629021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521786, 31.569889, 41.196907>,  <38.774429, 31.615522, 40.517963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521786, 31.569889, 41.196907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592522, 31.187263, 41.104202>,  <38.634964, 30.957687, 41.048580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592522, 31.187263, 41.104202>,  <38.521786, 31.569889, 41.196907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592522, 31.187263, 41.104202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340695, -0.161422, 0.926212,
		-0.923394, -0.242746, 0.297351,
		0.176836, -0.956565, -0.231759,
		38.645573, 30.900293, 41.034676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539463, 31.237211, 41.761375>,  <38.521786, 31.569889, 41.196907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539463, 31.237211, 41.761375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679996, 30.926817, 41.551838>,  <38.764317, 30.740582, 41.426117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679996, 30.926817, 41.551838>,  <38.539463, 31.237211, 41.761375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679996, 30.926817, 41.551838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443854, -0.354595, 0.822955,
		-0.824353, -0.521642, 0.219843,
		0.351333, -0.775984, -0.523845,
		38.785397, 30.694021, 41.394684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293030, 30.561882, 42.058426>,  <38.539463, 31.237211, 41.761375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293030, 30.561882, 42.058426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631557, 30.461823, 41.870312>,  <38.834675, 30.401787, 41.757442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631557, 30.461823, 41.870312>,  <38.293030, 30.561882, 42.058426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631557, 30.461823, 41.870312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412341, -0.251268, 0.875694,
		-0.337219, -0.935035, -0.109507,
		0.846320, -0.250147, -0.470286,
		38.885452, 30.386778, 41.729225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510380, 29.919357, 42.374928>,  <38.293030, 30.561882, 42.058426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510380, 29.919357, 42.374928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831074, 30.096167, 42.214016>,  <39.023491, 30.202251, 42.117470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831074, 30.096167, 42.214016>,  <38.510380, 29.919357, 42.374928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831074, 30.096167, 42.214016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488048, -0.095659, 0.867559,
		0.344998, -0.891889, -0.292421,
		0.801739, 0.442021, -0.402283,
		39.071594, 30.228773, 42.093330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005760, 29.445232, 42.412449>,  <38.510380, 29.919357, 42.374928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005760, 29.445232, 42.412449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191143, 29.797976, 42.377720>,  <39.302372, 30.009621, 42.356884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191143, 29.797976, 42.377720>,  <39.005760, 29.445232, 42.412449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191143, 29.797976, 42.377720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275352, -0.050195, 0.960032,
		0.842252, -0.468839, -0.266084,
		0.463457, 0.881856, -0.086819,
		39.330181, 30.062532, 42.351673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723335, 29.392164, 42.703915>,  <39.005760, 29.445232, 42.412449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723335, 29.392164, 42.703915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632423, 29.781389, 42.719383>,  <39.577877, 30.014925, 42.728664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632423, 29.781389, 42.719383>,  <39.723335, 29.392164, 42.703915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632423, 29.781389, 42.719383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146982, -0.004983, 0.989127,
		0.962675, 0.230488, -0.141890,
		-0.227275, 0.973062, 0.038675,
		39.564240, 30.073307, 42.730988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199390, 29.604713, 43.057629>,  <39.723335, 29.392164, 42.703915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199390, 29.604713, 43.057629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923985, 29.891376, 43.102074>,  <39.758739, 30.063375, 43.128742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923985, 29.891376, 43.102074>,  <40.199390, 29.604713, 43.057629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923985, 29.891376, 43.102074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262258, 0.103197, 0.959464,
		0.676142, 0.689746, -0.259002,
		-0.688514, 0.716660, 0.111116,
		39.717430, 30.106375, 43.135406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458965, 30.090807, 43.424706>,  <40.199390, 29.604713, 43.057629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458965, 30.090807, 43.424706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071323, 30.166704, 43.487747>,  <39.838737, 30.212242, 43.525570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071323, 30.166704, 43.487747>,  <40.458965, 30.090807, 43.424706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071323, 30.166704, 43.487747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185353, 0.138633, 0.972844,
		0.162743, 0.971997, -0.169520,
		-0.969102, 0.189744, 0.157601,
		39.780594, 30.223627, 43.535027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433430, 30.815876, 43.620190>,  <40.458965, 30.090807, 43.424706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433430, 30.815876, 43.620190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091988, 30.655622, 43.753368>,  <39.887123, 30.559469, 43.833275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091988, 30.655622, 43.753368>,  <40.433430, 30.815876, 43.620190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091988, 30.655622, 43.753368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211553, 0.317456, 0.924374,
		-0.476032, 0.859484, -0.186226,
		-0.853603, -0.400635, 0.332946,
		39.835907, 30.535433, 43.853252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374962, 31.113708, 44.200474>,  <40.433430, 30.815876, 43.620190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374962, 31.113708, 44.200474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074200, 30.854792, 44.250511>,  <39.893742, 30.699442, 44.280533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074200, 30.854792, 44.250511>,  <40.374962, 31.113708, 44.200474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074200, 30.854792, 44.250511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033545, 0.151939, 0.987821,
		-0.658416, 0.746944, -0.092530,
		-0.751906, -0.647293, 0.125095,
		39.848629, 30.660604, 44.288040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830372, 31.437584, 44.618275>,  <40.374962, 31.113708, 44.200474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830372, 31.437584, 44.618275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825909, 31.040413, 44.665550>,  <39.823231, 30.802111, 44.693916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825909, 31.040413, 44.665550>,  <39.830372, 31.437584, 44.618275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825909, 31.040413, 44.665550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135238, 0.115611, 0.984045,
		-0.990750, 0.026961, 0.132992,
		-0.011155, -0.992929, 0.118187,
		39.822563, 30.742535, 44.701008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403370, 31.326319, 45.213799>,  <39.830372, 31.437584, 44.618275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403370, 31.326319, 45.213799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592583, 30.975157, 45.184086>,  <39.706112, 30.764460, 45.166260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592583, 30.975157, 45.184086>,  <39.403370, 31.326319, 45.213799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592583, 30.975157, 45.184086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119116, -0.019812, 0.992683,
		-0.872954, -0.478423, 0.095201,
		0.473036, -0.877906, -0.074282,
		39.734493, 30.711784, 45.161800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265724, 31.093819, 45.847305>,  <39.403370, 31.326319, 45.213799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265724, 31.093819, 45.847305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548058, 30.843912, 45.713757>,  <39.717457, 30.693968, 45.633629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548058, 30.843912, 45.713757>,  <39.265724, 31.093819, 45.847305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548058, 30.843912, 45.713757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324289, -0.134045, 0.936412,
		-0.629794, -0.769218, 0.107993,
		0.705829, -0.624768, -0.333870,
		39.759808, 30.656481, 45.613594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207096, 30.497183, 46.122955>,  <39.265724, 31.093819, 45.847305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207096, 30.497183, 46.122955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597435, 30.508944, 46.036362>,  <39.831638, 30.516001, 45.984406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597435, 30.508944, 46.036362>,  <39.207096, 30.497183, 46.122955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597435, 30.508944, 46.036362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215864, -0.282302, 0.934724,
		-0.033629, -0.958875, -0.281830,
		0.975844, 0.029404, -0.216480,
		39.890190, 30.517765, 45.971416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368603, 29.886803, 46.426895>,  <39.207096, 30.497183, 46.122955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368603, 29.886803, 46.426895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678032, 30.137497, 46.389400>,  <39.863689, 30.287914, 46.366905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678032, 30.137497, 46.389400>,  <39.368603, 29.886803, 46.426895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678032, 30.137497, 46.389400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174088, -0.067948, 0.982383,
		0.609327, -0.776262, -0.161670,
		0.773573, 0.626737, -0.093736,
		39.910103, 30.325518, 46.361279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843239, 29.669394, 46.888332>,  <39.368603, 29.886803, 46.426895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843239, 29.669394, 46.888332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990452, 30.036522, 46.828785>,  <40.078777, 30.256798, 46.793056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990452, 30.036522, 46.828785>,  <39.843239, 29.669394, 46.888332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990452, 30.036522, 46.828785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079874, 0.128310, 0.988512,
		0.926377, -0.375692, -0.026088,
		0.368029, 0.917819, -0.148871,
		40.100861, 30.311867, 46.784122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492493, 29.740282, 47.271957>,  <39.843239, 29.669394, 46.888332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492493, 29.740282, 47.271957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332977, 30.103363, 47.219742>,  <40.237267, 30.321211, 47.188412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332977, 30.103363, 47.219742>,  <40.492493, 29.740282, 47.271957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332977, 30.103363, 47.219742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046559, 0.122119, 0.991423,
		0.915858, 0.401450, -0.006438,
		-0.398793, 0.907703, -0.130535,
		40.213341, 30.375673, 47.180580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976070, 30.185946, 47.793224>,  <40.492493, 29.740282, 47.271957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976070, 30.185946, 47.793224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632179, 30.373236, 47.711613>,  <40.425842, 30.485611, 47.662647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632179, 30.373236, 47.711613>,  <40.976070, 30.185946, 47.793224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632179, 30.373236, 47.711613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021508, 0.432299, 0.901474,
		0.510294, 0.770637, -0.381732,
		-0.859731, 0.468227, -0.204024,
		40.374260, 30.513704, 47.650406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073799, 30.988321, 47.916309>,  <40.976070, 30.185946, 47.793224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073799, 30.988321, 47.916309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684513, 30.897940, 47.933281>,  <40.450943, 30.843710, 47.943462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684513, 30.897940, 47.933281>,  <41.073799, 30.988321, 47.916309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684513, 30.897940, 47.933281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051947, 0.395883, 0.916831,
		-0.223957, 0.890068, -0.397016,
		-0.973213, -0.225954, 0.042425,
		40.392548, 30.830153, 47.946007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639233, 31.478661, 48.290321>,  <41.073799, 30.988321, 47.916309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639233, 31.478661, 48.290321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425987, 31.140764, 48.309105>,  <40.298038, 30.938026, 48.320377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425987, 31.140764, 48.309105>,  <40.639233, 31.478661, 48.290321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425987, 31.140764, 48.309105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062938, 0.094954, 0.993490,
		-0.843699, 0.526688, -0.103787,
		-0.533114, -0.844739, 0.046964,
		40.266052, 30.887342, 48.323193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251610, 32.100391, 48.320839>,  <40.639233, 31.478661, 48.290321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251610, 32.100391, 48.320839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410057, 32.467506, 48.309860>,  <40.505123, 32.687775, 48.303272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410057, 32.467506, 48.309860>,  <40.251610, 32.100391, 48.320839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410057, 32.467506, 48.309860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717209, 0.290602, -0.633374,
		-0.573328, 0.270575, 0.773359,
		0.396116, 0.917791, -0.027449,
		40.528893, 32.742844, 48.301624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646568, 32.530701, 48.410526>,  <40.251610, 32.100391, 48.320839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646568, 32.530701, 48.410526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952663, 32.717117, 48.232891>,  <40.136322, 32.828968, 48.126308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952663, 32.717117, 48.232891>,  <39.646568, 32.530701, 48.410526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952663, 32.717117, 48.232891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598894, 0.262400, -0.756619,
		-0.236087, 0.844956, 0.479908,
		0.765238, 0.466042, -0.444090,
		40.182236, 32.856930, 48.099663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298573, 33.121819, 48.077553>,  <39.646568, 32.530701, 48.410526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298573, 33.121819, 48.077553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656651, 33.111664, 47.899570>,  <39.871498, 33.105572, 47.792782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656651, 33.111664, 47.899570>,  <39.298573, 33.121819, 48.077553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656651, 33.111664, 47.899570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407628, 0.357024, -0.840460,
		0.180196, 0.933750, 0.309258,
		0.895192, -0.025385, -0.444957,
		39.925209, 33.104050, 47.766083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266354, 33.712040, 47.737995>,  <39.298573, 33.121819, 48.077553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266354, 33.712040, 47.737995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554260, 33.513126, 47.544235>,  <39.727005, 33.393780, 47.427979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554260, 33.513126, 47.544235>,  <39.266354, 33.712040, 47.737995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554260, 33.513126, 47.544235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458201, 0.183887, -0.869619,
		0.521522, 0.847877, -0.095500,
		0.719768, -0.497284, -0.484399,
		39.770191, 33.363941, 47.398914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584595, 34.272526, 47.158634>,  <39.266354, 33.712040, 47.737995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584595, 34.272526, 47.158634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680466, 33.896194, 47.062805>,  <39.737988, 33.670395, 47.005310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680466, 33.896194, 47.062805>,  <39.584595, 34.272526, 47.158634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680466, 33.896194, 47.062805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113262, 0.217980, -0.969359,
		0.964224, 0.259465, -0.054316,
		0.239675, -0.940831, -0.239569,
		39.752369, 33.613945, 46.990936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530376, 34.320499, 46.442066>,  <39.584595, 34.272526, 47.158634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530376, 34.320499, 46.442066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614208, 33.930851, 46.475929>,  <39.664509, 33.697063, 46.496246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614208, 33.930851, 46.475929>,  <39.530376, 34.320499, 46.442066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614208, 33.930851, 46.475929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190684, -0.125639, -0.973578,
		0.959019, 0.187898, -0.212080,
		0.209578, -0.974120, 0.084661,
		39.677082, 33.638615, 46.501328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099644, 34.168289, 45.971970>,  <39.530376, 34.320499, 46.442066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099644, 34.168289, 45.971970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886959, 33.832664, 46.018013>,  <39.759346, 33.631290, 46.045639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886959, 33.832664, 46.018013>,  <40.099644, 34.168289, 45.971970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886959, 33.832664, 46.018013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154264, -0.037684, -0.987311,
		0.832755, -0.542725, -0.109401,
		-0.531716, -0.839065, 0.115105,
		39.727444, 33.580944, 46.052544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391479, 33.676300, 45.591373>,  <40.099644, 34.168289, 45.971970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391479, 33.676300, 45.591373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010139, 33.564445, 45.636841>,  <39.781334, 33.497334, 45.664120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010139, 33.564445, 45.636841>,  <40.391479, 33.676300, 45.591373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010139, 33.564445, 45.636841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124265, 0.020418, -0.992039,
		0.275093, -0.959888, -0.054215,
		-0.953353, -0.279640, 0.113664,
		39.724133, 33.480553, 45.670940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272877, 33.240112, 45.057747>,  <40.391479, 33.676300, 45.591373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272877, 33.240112, 45.057747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911449, 33.374752, 45.163773>,  <39.694592, 33.455536, 45.227390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911449, 33.374752, 45.163773>,  <40.272877, 33.240112, 45.057747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911449, 33.374752, 45.163773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314458, -0.100825, -0.943902,
		-0.290991, -0.936235, 0.196949,
		-0.903571, 0.336600, 0.265068,
		39.640377, 33.475731, 45.243294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800991, 32.743237, 44.806034>,  <40.272877, 33.240112, 45.057747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800991, 32.743237, 44.806034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569969, 33.061829, 44.877651>,  <39.431358, 33.252983, 44.920620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569969, 33.061829, 44.877651>,  <39.800991, 32.743237, 44.806034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569969, 33.061829, 44.877651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381261, -0.069235, -0.921871,
		-0.721854, -0.600691, 0.343653,
		-0.577552, 0.796478, 0.179043,
		39.396702, 33.300774, 44.931362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157574, 32.515030, 44.456429>,  <39.800991, 32.743237, 44.806034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157574, 32.515030, 44.456429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194992, 32.911793, 44.490768>,  <39.217442, 33.149849, 44.511372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194992, 32.911793, 44.490768>,  <39.157574, 32.515030, 44.456429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194992, 32.911793, 44.490768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435149, 0.118288, -0.892555,
		-0.895486, 0.046135, 0.442692,
		0.093543, 0.991907, 0.085849,
		39.223057, 33.209366, 44.516521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545944, 32.659370, 44.182167>,  <39.157574, 32.515030, 44.456429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545944, 32.659370, 44.182167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761166, 32.996067, 44.164391>,  <38.890297, 33.198086, 44.153725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761166, 32.996067, 44.164391>,  <38.545944, 32.659370, 44.182167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761166, 32.996067, 44.164391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246059, 0.106420, -0.963395,
		-0.806197, 0.529293, 0.264377,
		0.538053, 0.841739, -0.044442,
		38.922581, 33.248589, 44.151058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133896, 33.113941, 43.687294>,  <38.545944, 32.659370, 44.182167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133896, 33.113941, 43.687294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485069, 33.303097, 43.717232>,  <38.695774, 33.416592, 43.735195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485069, 33.303097, 43.717232>,  <38.133896, 33.113941, 43.687294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485069, 33.303097, 43.717232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158902, 0.435269, -0.886166,
		-0.451639, 0.766104, 0.457282,
		0.877936, 0.472891, 0.074849,
		38.748451, 33.444965, 43.739685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079670, 33.792698, 43.427887>,  <38.133896, 33.113941, 43.687294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079670, 33.792698, 43.427887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467197, 33.698769, 43.396248>,  <38.699715, 33.642410, 43.377266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467197, 33.698769, 43.396248>,  <38.079670, 33.792698, 43.427887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467197, 33.698769, 43.396248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010614, 0.358252, -0.933565,
		0.247560, 0.903612, 0.349572,
		0.968814, -0.234824, -0.079098,
		38.757843, 33.628323, 43.372517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409576, 34.296093, 43.209019>,  <38.079670, 33.792698, 43.427887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409576, 34.296093, 43.209019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636486, 33.984970, 43.100784>,  <38.772633, 33.798298, 43.035843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636486, 33.984970, 43.100784>,  <38.409576, 34.296093, 43.209019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636486, 33.984970, 43.100784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127792, 0.241452, -0.961962,
		0.813550, 0.580279, 0.037574,
		0.567279, -0.777803, -0.270588,
		38.806671, 33.751629, 43.019608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861912, 34.604069, 42.697693>,  <38.409576, 34.296093, 43.209019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861912, 34.604069, 42.697693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919247, 34.210403, 42.655975>,  <38.953648, 33.974205, 42.630943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919247, 34.210403, 42.655975>,  <38.861912, 34.604069, 42.697693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919247, 34.210403, 42.655975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090441, 0.117965, -0.988891,
		0.985533, 0.132311, 0.105917,
		0.143335, -0.984164, -0.104292,
		38.962246, 33.915154, 42.624687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480171, 34.594696, 42.264908>,  <38.861912, 34.604069, 42.697693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480171, 34.594696, 42.264908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290024, 34.245029, 42.225185>,  <39.175938, 34.035229, 42.201351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290024, 34.245029, 42.225185>,  <39.480171, 34.594696, 42.264908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290024, 34.245029, 42.225185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271111, -0.038169, -0.961791,
		0.836974, -0.484126, 0.255140,
		-0.475367, -0.874165, -0.099305,
		39.147415, 33.982780, 42.195393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834328, 34.265556, 41.654858>,  <39.480171, 34.594696, 42.264908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834328, 34.265556, 41.654858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507683, 34.040222, 41.705132>,  <39.311695, 33.905022, 41.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507683, 34.040222, 41.705132>,  <39.834328, 34.265556, 41.654858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507683, 34.040222, 41.705132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107881, -0.362895, -0.925564,
		0.567011, -0.742270, 0.357119,
		-0.816615, -0.563331, 0.125689,
		39.262699, 33.871223, 41.742840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063499, 33.585278, 41.406792>,  <39.834328, 34.265556, 41.654858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063499, 33.585278, 41.406792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665810, 33.624897, 41.390255>,  <39.427197, 33.648670, 41.380333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665810, 33.624897, 41.390255>,  <40.063499, 33.585278, 41.406792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665810, 33.624897, 41.390255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001081, -0.394432, -0.918925,
		-0.107328, -0.913571, 0.392260,
		-0.994223, 0.099050, -0.041346,
		39.367542, 33.654613, 41.377850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724957, 32.844269, 41.087975>,  <40.063499, 33.585278, 41.406792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724957, 32.844269, 41.087975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490101, 33.157120, 41.004517>,  <39.349186, 33.344830, 40.954441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490101, 33.157120, 41.004517>,  <39.724957, 32.844269, 41.087975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490101, 33.157120, 41.004517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051240, -0.293148, -0.954693,
		-0.807860, -0.549850, 0.212196,
		-0.587142, 0.782131, -0.208648,
		39.313957, 33.391758, 40.941921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954971, 32.594872, 40.876244>,  <39.724957, 32.844269, 41.087975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954971, 32.594872, 40.876244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934708, 32.972927, 40.747154>,  <38.922550, 33.199760, 40.669701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934708, 32.972927, 40.747154>,  <38.954971, 32.594872, 40.876244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934708, 32.972927, 40.747154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596786, -0.287749, -0.749030,
		-0.800799, 0.154655, 0.578621,
		-0.050656, 0.945136, -0.322725,
		38.919510, 33.256470, 40.650337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302589, 32.691635, 40.491085>,  <38.954971, 32.594872, 40.876244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302589, 32.691635, 40.491085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533085, 32.993916, 40.366592>,  <38.671383, 33.175285, 40.291897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533085, 32.993916, 40.366592>,  <38.302589, 32.691635, 40.491085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533085, 32.993916, 40.366592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383663, -0.086120, -0.919448,
		-0.721631, 0.649231, 0.240308,
		0.576239, 0.755700, -0.311233,
		38.705956, 33.220627, 40.273224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887890, 33.111256, 40.145779>,  <38.302589, 32.691635, 40.491085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887890, 33.111256, 40.145779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251011, 33.209915, 40.010094>,  <38.468884, 33.269112, 39.928684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251011, 33.209915, 40.010094>,  <37.887890, 33.111256, 40.145779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251011, 33.209915, 40.010094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339061, -0.044433, -0.939714,
		-0.246854, 0.968085, 0.043293,
		0.907800, 0.246651, -0.339209,
		38.523350, 33.283909, 39.908333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771553, 33.659065, 39.609619>,  <37.887890, 33.111256, 40.145779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771553, 33.659065, 39.609619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139324, 33.520386, 39.535366>,  <38.359985, 33.437180, 39.490814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139324, 33.520386, 39.535366>,  <37.771553, 33.659065, 39.609619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139324, 33.520386, 39.535366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145596, 0.138396, -0.979616,
		0.365320, 0.927711, 0.076767,
		0.919425, -0.346697, -0.185630,
		38.415154, 33.416378, 39.479675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119583, 34.230881, 39.232571>,  <37.771553, 33.659065, 39.609619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119583, 34.230881, 39.232571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308830, 33.891327, 39.138283>,  <38.422379, 33.687595, 39.081711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308830, 33.891327, 39.138283>,  <38.119583, 34.230881, 39.232571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308830, 33.891327, 39.138283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213150, 0.149315, -0.965542,
		0.854827, 0.507056, -0.110295,
		0.473115, -0.848881, -0.235718,
		38.450764, 33.636662, 39.067566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563972, 34.366589, 38.700336>,  <38.119583, 34.230881, 39.232571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563972, 34.366589, 38.700336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550789, 33.968697, 38.661518>,  <38.542877, 33.729961, 38.638226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550789, 33.968697, 38.661518>,  <38.563972, 34.366589, 38.700336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550789, 33.968697, 38.661518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060458, 0.094941, -0.993645,
		0.997626, -0.038621, 0.057010,
		-0.032963, -0.994733, -0.097051,
		38.540901, 33.670277, 38.632404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076744, 34.214161, 38.206520>,  <38.563972, 34.366589, 38.700336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076744, 34.214161, 38.206520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843521, 33.889225, 38.211578>,  <38.703587, 33.694263, 38.214615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843521, 33.889225, 38.211578>,  <39.076744, 34.214161, 38.206520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843521, 33.889225, 38.211578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100167, -0.087323, -0.991131,
		0.806235, -0.576616, 0.132283,
		-0.583054, -0.812335, 0.012645,
		38.668606, 33.645523, 38.215370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481327, 33.578262, 37.918755>,  <39.076744, 34.214161, 38.206520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481327, 33.578262, 37.918755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091011, 33.502602, 37.874828>,  <38.856823, 33.457207, 37.848473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091011, 33.502602, 37.874828>,  <39.481327, 33.578262, 37.918755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091011, 33.502602, 37.874828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170377, -0.342545, -0.923923,
		0.137145, -0.920263, 0.366479,
		-0.975788, -0.189151, -0.109813,
		38.798275, 33.445858, 37.841885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503399, 32.947575, 37.549961>,  <39.481327, 33.578262, 37.918755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503399, 32.947575, 37.549961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128376, 33.079018, 37.504353>,  <38.903362, 33.157883, 37.476990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128376, 33.079018, 37.504353>,  <39.503399, 32.947575, 37.549961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128376, 33.079018, 37.504353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064486, -0.157900, -0.985347,
		-0.341797, -0.931173, 0.126850,
		-0.937558, 0.328609, -0.114017,
		38.847107, 33.177601, 37.470146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025539, 32.448334, 37.128212>,  <39.503399, 32.947575, 37.549961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025539, 32.448334, 37.128212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900379, 32.827164, 37.099518>,  <38.825283, 33.054462, 37.082302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900379, 32.827164, 37.099518>,  <39.025539, 32.448334, 37.128212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900379, 32.827164, 37.099518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141064, -0.028355, -0.989594,
		-0.939253, -0.319760, -0.124725,
		-0.312896, 0.947074, -0.071739,
		38.806511, 33.111286, 37.077995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934864, 32.611687, 36.475002>,  <39.025539, 32.448334, 37.128212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934864, 32.611687, 36.475002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873127, 32.993023, 36.578785>,  <38.836082, 33.221825, 36.641052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873127, 32.993023, 36.578785>,  <38.934864, 32.611687, 36.475002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873127, 32.993023, 36.578785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212769, 0.288511, -0.933537,
		-0.964835, -0.088885, -0.247372,
		-0.154347, 0.953342, 0.259454,
		38.826824, 33.279026, 36.656620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425159, 32.918644, 35.959393>,  <38.934864, 32.611687, 36.475002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425159, 32.918644, 35.959393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618671, 33.226620, 36.125839>,  <38.734779, 33.411404, 36.225708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618671, 33.226620, 36.125839>,  <38.425159, 32.918644, 35.959393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618671, 33.226620, 36.125839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222724, 0.351497, -0.909310,
		-0.846375, 0.532586, -0.001436,
		0.483781, 0.769936, 0.416118,
		38.763805, 33.457600, 36.250675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218784, 33.515888, 35.558231>,  <38.425159, 32.918644, 35.959393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218784, 33.515888, 35.558231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560005, 33.614468, 35.742214>,  <38.764736, 33.673615, 35.852604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560005, 33.614468, 35.742214>,  <38.218784, 33.515888, 35.558231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560005, 33.614468, 35.742214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295298, 0.498745, -0.814894,
		-0.430233, 0.830973, 0.352680,
		0.853053, 0.246448, 0.459961,
		38.815922, 33.688400, 35.880203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239574, 34.198833, 35.553658>,  <38.218784, 33.515888, 35.558231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239574, 34.198833, 35.553658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629356, 34.133987, 35.615822>,  <38.863224, 34.095078, 35.653122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629356, 34.133987, 35.615822>,  <38.239574, 34.198833, 35.553658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629356, 34.133987, 35.615822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220783, 0.564878, -0.795090,
		0.041109, 0.809093, 0.586241,
		0.974456, -0.162117, 0.155413,
		38.921692, 34.085354, 35.662445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572582, 34.926537, 35.449753>,  <38.239574, 34.198833, 35.553658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572582, 34.926537, 35.449753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848793, 34.640026, 35.409515>,  <39.014519, 34.468121, 35.385372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848793, 34.640026, 35.409515>,  <38.572582, 34.926537, 35.449753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848793, 34.640026, 35.409515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324612, 0.431168, -0.841856,
		0.646373, 0.548673, 0.530246,
		0.690528, -0.716277, -0.100589,
		39.055950, 34.425144, 35.379337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112667, 35.316891, 35.251923>,  <38.572582, 34.926537, 35.449753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112667, 35.316891, 35.251923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203217, 34.940010, 35.153118>,  <39.257545, 34.713882, 35.093834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203217, 34.940010, 35.153118>,  <39.112667, 35.316891, 35.251923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203217, 34.940010, 35.153118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569988, 0.333783, -0.750801,
		0.789853, 0.029167, 0.612602,
		0.226375, -0.942198, -0.247015,
		39.271130, 34.657349, 35.079014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901337, 35.279316, 35.058224>,  <39.112667, 35.316891, 35.251923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901337, 35.279316, 35.058224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709686, 34.975098, 34.882954>,  <39.594696, 34.792564, 34.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709686, 34.975098, 34.882954>,  <39.901337, 35.279316, 35.058224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709686, 34.975098, 34.882954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384036, 0.267249, -0.883795,
		0.789273, -0.591728, 0.164032,
		-0.479129, -0.760550, -0.438178,
		39.565948, 34.746933, 34.751499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402973, 35.018539, 34.599709>,  <39.901337, 35.279316, 35.058224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402973, 35.018539, 34.599709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049137, 34.874989, 34.480572>,  <39.836838, 34.788857, 34.409088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049137, 34.874989, 34.480572>,  <40.402973, 35.018539, 34.599709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049137, 34.874989, 34.480572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255095, 0.162316, -0.953195,
		0.390429, -0.919161, -0.052034,
		-0.884586, -0.358881, -0.297846,
		39.783760, 34.767326, 34.391216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627327, 34.549683, 34.103683>,  <40.402973, 35.018539, 34.599709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627327, 34.549683, 34.103683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242844, 34.591820, 34.001713>,  <40.012154, 34.617100, 33.940529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242844, 34.591820, 34.001713>,  <40.627327, 34.549683, 34.103683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242844, 34.591820, 34.001713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275088, 0.298145, -0.914022,
		-0.020277, -0.948690, -0.315555,
		-0.961205, 0.105339, -0.254928,
		39.954483, 34.623421, 33.925236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592957, 34.265301, 33.466324>,  <40.627327, 34.549683, 34.103683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592957, 34.265301, 33.466324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285549, 34.520882, 33.479755>,  <40.101105, 34.674229, 33.487816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285549, 34.520882, 33.479755>,  <40.592957, 34.265301, 33.466324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285549, 34.520882, 33.479755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274861, 0.377085, -0.884454,
		-0.577785, -0.670486, -0.465418,
		-0.768515, 0.638949, 0.033583,
		40.054993, 34.712566, 33.489830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202393, 34.164440, 32.809067>,  <40.592957, 34.265301, 33.466324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202393, 34.164440, 32.809067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158382, 34.541866, 32.934021>,  <40.131977, 34.768322, 33.008995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158382, 34.541866, 32.934021>,  <40.202393, 34.164440, 32.809067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158382, 34.541866, 32.934021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208669, 0.329221, -0.920908,
		-0.971778, -0.036135, -0.233114,
		-0.110023, 0.943561, 0.312389,
		40.125374, 34.824936, 33.027737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649700, 34.499588, 32.347473>,  <40.202393, 34.164440, 32.809067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649700, 34.499588, 32.347473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942749, 34.736099, 32.482323>,  <40.118580, 34.878006, 32.563232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942749, 34.736099, 32.482323>,  <39.649700, 34.499588, 32.347473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942749, 34.736099, 32.482323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378851, 0.057236, -0.923686,
		-0.565449, 0.804436, -0.182073,
		0.732625, 0.591276, 0.337125,
		40.162537, 34.913483, 32.583462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606503, 34.984119, 31.794254>,  <39.649700, 34.499588, 32.347473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606503, 34.984119, 31.794254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947674, 34.901455, 31.986010>,  <40.152374, 34.851856, 32.101063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947674, 34.901455, 31.986010>,  <39.606503, 34.984119, 31.794254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947674, 34.901455, 31.986010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427238, -0.251351, -0.868499,
		0.299979, 0.945576, -0.126090,
		0.852925, -0.206661, 0.479386,
		40.203552, 34.839458, 32.129826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260704, 35.485992, 31.688875>,  <39.606503, 34.984119, 31.794254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260704, 35.485992, 31.688875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343857, 35.098320, 31.741739>,  <40.393749, 34.865715, 31.773457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343857, 35.098320, 31.741739>,  <40.260704, 35.485992, 31.688875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343857, 35.098320, 31.741739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353042, -0.051662, -0.934180,
		0.912221, 0.240854, 0.331424,
		0.207878, -0.969186, 0.132159,
		40.406219, 34.807564, 31.781387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925900, 35.184166, 31.939428>,  <40.260704, 35.485992, 31.688875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925900, 35.184166, 31.939428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962654, 35.331387, 32.309528>,  <40.984707, 35.419720, 32.531590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962654, 35.331387, 32.309528>,  <40.925900, 35.184166, 31.939428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962654, 35.331387, 32.309528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134439, -0.925262, 0.354707,
		0.986652, 0.091796, -0.134503,
		0.091890, 0.368055, 0.925252,
		40.990223, 35.441803, 32.587105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661751, 34.954155, 32.221554>,  <40.925900, 35.184166, 31.939428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661751, 34.954155, 32.221554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405704, 35.020634, 32.521591>,  <41.252079, 35.060520, 32.701614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405704, 35.020634, 32.521591>,  <41.661751, 34.954155, 32.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405704, 35.020634, 32.521591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146667, -0.931933, 0.331648,
		0.754153, 0.322305, 0.572166,
		-0.640112, 0.166195, 0.750091,
		41.213673, 35.070492, 32.746620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936901, 35.536961, 32.503490>,  <41.661751, 34.954155, 32.221554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936901, 35.536961, 32.503490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026772, 35.805912, 32.785606>,  <42.080692, 35.967281, 32.954876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026772, 35.805912, 32.785606>,  <41.936901, 35.536961, 32.503490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026772, 35.805912, 32.785606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640751, -0.443367, 0.626789,
		0.734139, -0.592738, 0.331212,
		0.224673, 0.672375, 0.705290,
		42.094173, 36.007626, 32.997192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375046, 35.229687, 32.072968>,  <41.936901, 35.536961, 32.503490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375046, 35.229687, 32.072968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609707, 34.909241, 32.120384>,  <42.750504, 34.716972, 32.148834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609707, 34.909241, 32.120384>,  <42.375046, 35.229687, 32.072968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609707, 34.909241, 32.120384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026831, -0.127066, -0.991531,
		0.809397, 0.584861, -0.053048,
		0.586648, -0.801119, 0.118540,
		42.785702, 34.668903, 32.155945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953999, 35.273079, 31.530863>,  <42.375046, 35.229687, 32.072968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953999, 35.273079, 31.530863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972130, 34.891815, 31.650482>,  <42.983009, 34.663055, 31.722254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972130, 34.891815, 31.650482>,  <42.953999, 35.273079, 31.530863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972130, 34.891815, 31.650482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118828, -0.292086, -0.948981,
		0.991880, 0.078554, 0.100021,
		0.045332, -0.953160, 0.299049,
		42.985729, 34.605865, 31.740196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652939, 34.947010, 31.271078>,  <42.953999, 35.273079, 31.530863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652939, 34.947010, 31.271078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372017, 34.674126, 31.352423>,  <43.203465, 34.510395, 31.401230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372017, 34.674126, 31.352423>,  <43.652939, 34.947010, 31.271078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372017, 34.674126, 31.352423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038593, -0.321734, -0.946043,
		0.710832, -0.656560, 0.252283,
		-0.702302, -0.682214, 0.203360,
		43.161327, 34.469460, 31.413431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949467, 34.392574, 30.998507>,  <43.652939, 34.947010, 31.271078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949467, 34.392574, 30.998507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559917, 34.302734, 31.011925>,  <43.326187, 34.248829, 31.019976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559917, 34.302734, 31.011925>,  <43.949467, 34.392574, 30.998507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559917, 34.302734, 31.011925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073707, -0.452348, -0.888790,
		0.214797, -0.863097, 0.457084,
		-0.973873, -0.224600, 0.033547,
		43.267754, 34.235355, 31.021988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860287, 33.687038, 30.809500>,  <43.949467, 34.392574, 30.998507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860287, 33.687038, 30.809500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513409, 33.858574, 30.708254>,  <43.305283, 33.961494, 30.647507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513409, 33.858574, 30.708254>,  <43.860287, 33.687038, 30.809500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513409, 33.858574, 30.708254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090186, -0.364639, -0.926771,
		-0.489730, -0.826521, 0.277539,
		-0.867197, 0.428837, -0.253116,
		43.253250, 33.987225, 30.632318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781010, 33.361923, 30.199907>,  <43.860287, 33.687038, 30.809500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781010, 33.361923, 30.199907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461781, 33.602619, 30.212498>,  <43.270245, 33.747036, 30.220051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461781, 33.602619, 30.212498>,  <43.781010, 33.361923, 30.199907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461781, 33.602619, 30.212498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045857, -0.008570, -0.998911,
		-0.600816, -0.798645, 0.034434,
		-0.798071, 0.601741, 0.031475,
		43.222359, 33.783142, 30.221941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318577, 33.027088, 29.770645>,  <43.781010, 33.361923, 30.199907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318577, 33.027088, 29.770645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183941, 33.402962, 29.794954>,  <43.103161, 33.628487, 29.809540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183941, 33.402962, 29.794954>,  <43.318577, 33.027088, 29.770645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183941, 33.402962, 29.794954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046866, 0.047744, -0.997760,
		-0.940485, -0.338683, 0.027969,
		-0.336589, 0.939688, 0.060775,
		43.082966, 33.684868, 29.813187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695599, 33.088593, 29.485554>,  <43.318577, 33.027088, 29.770645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695599, 33.088593, 29.485554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843674, 33.459000, 29.456038>,  <42.932518, 33.681244, 29.438328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843674, 33.459000, 29.456038>,  <42.695599, 33.088593, 29.485554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843674, 33.459000, 29.456038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013149, -0.074202, -0.997157,
		-0.928865, 0.370103, -0.015292,
		0.370186, 0.926023, -0.073790,
		42.954731, 33.736805, 29.433901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369820, 33.395954, 28.985008>,  <42.695599, 33.088593, 29.485554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369820, 33.395954, 28.985008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676479, 33.651882, 29.006493>,  <42.860474, 33.805439, 29.019382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676479, 33.651882, 29.006493>,  <42.369820, 33.395954, 28.985008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676479, 33.651882, 29.006493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127932, -0.070243, -0.989292,
		-0.629196, 0.765308, -0.135704,
		0.766646, 0.639820, 0.053711,
		42.906471, 33.843826, 29.022606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320984, 34.014915, 28.487766>,  <42.369820, 33.395954, 28.985008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320984, 34.014915, 28.487766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713726, 34.012978, 28.563589>,  <42.949371, 34.011814, 28.609083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713726, 34.012978, 28.563589>,  <42.320984, 34.014915, 28.487766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713726, 34.012978, 28.563589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189269, -0.035778, -0.981273,
		0.011534, 0.999348, -0.034212,
		0.981858, -0.004843, 0.189559,
		43.008282, 34.011524, 28.620457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703014, 34.427872, 27.964321>,  <42.320984, 34.014915, 28.487766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703014, 34.427872, 27.964321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992134, 34.192730, 28.109644>,  <43.165607, 34.051647, 28.196836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992134, 34.192730, 28.109644>,  <42.703014, 34.427872, 27.964321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992134, 34.192730, 28.109644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284685, -0.225750, -0.931660,
		0.629693, 0.776833, 0.004179,
		0.722801, -0.587850, 0.363306,
		43.208973, 34.016376, 28.218636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192551, 34.739262, 27.610750>,  <42.703014, 34.427872, 27.964321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192551, 34.739262, 27.610750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309589, 34.376938, 27.733324>,  <43.379814, 34.159546, 27.806868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309589, 34.376938, 27.733324>,  <43.192551, 34.739262, 27.610750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309589, 34.376938, 27.733324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377164, -0.185157, -0.907449,
		0.878711, 0.381095, 0.287461,
		0.292599, -0.905806, 0.306435,
		43.397369, 34.105198, 27.825254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913898, 34.701435, 27.509455>,  <43.192551, 34.739262, 27.610750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913898, 34.701435, 27.509455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757545, 34.333496, 27.496275>,  <43.663734, 34.112732, 27.488367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757545, 34.333496, 27.496275>,  <43.913898, 34.701435, 27.509455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757545, 34.333496, 27.496275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382866, -0.129932, -0.914621,
		0.837033, -0.370126, 0.402968,
		-0.390884, -0.919850, -0.032952,
		43.640282, 34.057541, 27.486389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409035, 34.269756, 27.190451>,  <43.913898, 34.701435, 27.509455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409035, 34.269756, 27.190451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092247, 34.027584, 27.158840>,  <43.902176, 33.882282, 27.139874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092247, 34.027584, 27.158840>,  <44.409035, 34.269756, 27.190451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092247, 34.027584, 27.158840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400313, -0.417152, -0.815925,
		0.461020, -0.677819, 0.572731,
		-0.791966, -0.605430, -0.079025,
		43.854656, 33.845955, 27.135132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681160, 33.544453, 27.020790>,  <44.409035, 34.269756, 27.190451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681160, 33.544453, 27.020790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295296, 33.554752, 26.915901>,  <44.063778, 33.560932, 26.852968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295296, 33.554752, 26.915901>,  <44.681160, 33.544453, 27.020790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295296, 33.554752, 26.915901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234423, -0.370468, -0.898777,
		-0.120289, -0.928488, 0.351340,
		-0.964664, 0.025751, -0.262222,
		44.005898, 33.562477, 26.837234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460606, 32.957233, 26.823040>,  <44.681160, 33.544453, 27.020790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460606, 32.957233, 26.823040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216942, 33.193115, 26.610939>,  <44.070744, 33.334644, 26.483679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216942, 33.193115, 26.610939>,  <44.460606, 32.957233, 26.823040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216942, 33.193115, 26.610939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206779, -0.527392, -0.824076,
		-0.765614, -0.611640, 0.199328,
		-0.609161, 0.589707, -0.530253,
		44.034195, 33.370026, 26.451862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417686, 32.563816, 26.236645>,  <44.460606, 32.957233, 26.823040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417686, 32.563816, 26.236645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197422, 32.882477, 26.136953>,  <44.065266, 33.073673, 26.077139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197422, 32.882477, 26.136953>,  <44.417686, 32.563816, 26.236645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197422, 32.882477, 26.136953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015475, -0.288778, -0.957271,
		-0.834587, -0.530986, 0.146690,
		-0.550659, 0.796656, -0.249227,
		44.032223, 33.121475, 26.062185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940510, 32.362885, 25.691578>,  <44.417686, 32.563816, 26.236645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940510, 32.362885, 25.691578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965881, 32.760387, 25.654879>,  <43.981102, 32.998890, 25.632858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965881, 32.760387, 25.654879>,  <43.940510, 32.362885, 25.691578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965881, 32.760387, 25.654879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010369, -0.092585, -0.995651,
		-0.997933, 0.062199, -0.016176,
		0.063426, 0.993760, -0.091749,
		43.984909, 33.058514, 25.627354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301872, 32.761124, 25.391737>,  <43.940510, 32.362885, 25.691578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301872, 32.761124, 25.391737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631031, 32.971870, 25.306646>,  <43.828526, 33.098320, 25.255592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631031, 32.971870, 25.306646>,  <43.301872, 32.761124, 25.391737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631031, 32.971870, 25.306646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214386, -0.058813, -0.974977,
		-0.526197, 0.847909, 0.064557,
		0.822895, 0.526870, -0.212727,
		43.877899, 33.129932, 25.242828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050213, 33.229008, 25.066551>,  <43.301872, 32.761124, 25.391737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050213, 33.229008, 25.066551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436554, 33.221802, 24.963171>,  <43.668358, 33.217480, 24.901142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436554, 33.221802, 24.963171>,  <43.050213, 33.229008, 25.066551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436554, 33.221802, 24.963171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242053, 0.292932, -0.924987,
		0.092372, 0.955964, 0.278570,
		0.965856, -0.018014, -0.258452,
		43.726311, 33.216396, 24.885635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081154, 33.781204, 24.752834>,  <43.050213, 33.229008, 25.066551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081154, 33.781204, 24.752834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414959, 33.590622, 24.642138>,  <43.615242, 33.476273, 24.575720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414959, 33.590622, 24.642138>,  <43.081154, 33.781204, 24.752834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414959, 33.590622, 24.642138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233470, 0.149176, -0.960853,
		0.499086, 0.866451, 0.013251,
		0.834509, -0.476454, -0.276742,
		43.665310, 33.447685, 24.559114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329971, 33.949787, 23.982918>,  <43.081154, 33.781204, 24.752834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329971, 33.949787, 23.982918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539532, 33.620243, 24.069439>,  <43.665268, 33.422516, 24.121351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539532, 33.620243, 24.069439>,  <43.329971, 33.949787, 23.982918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539532, 33.620243, 24.069439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250146, -0.093930, -0.963641,
		0.814220, 0.558959, 0.156875,
		0.523901, -0.823858, 0.216301,
		43.696701, 33.373085, 24.134329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980564, 34.172470, 23.766077>,  <43.329971, 33.949787, 23.982918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980564, 34.172470, 23.766077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890129, 33.785255, 23.722637>,  <43.835869, 33.552929, 23.696573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890129, 33.785255, 23.722637>,  <43.980564, 34.172470, 23.766077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890129, 33.785255, 23.722637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222702, 0.057165, -0.973209,
		0.948308, -0.244217, 0.202659,
		-0.226089, -0.968034, -0.108598,
		43.822304, 33.494846, 23.690058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494076, 33.713337, 23.452612>,  <43.980564, 34.172470, 23.766077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494076, 33.713337, 23.452612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119076, 33.602135, 23.368885>,  <43.894077, 33.535412, 23.318649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119076, 33.602135, 23.368885>,  <44.494076, 33.713337, 23.452612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119076, 33.602135, 23.368885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154986, 0.204984, -0.966417,
		0.311576, -0.938453, -0.149085,
		-0.937497, -0.278007, -0.209315,
		43.837826, 33.518734, 23.306091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225658, 33.583252, 23.454630>,  <44.494076, 33.713337, 23.452612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225658, 33.583252, 23.454630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067131, 33.911617, 23.619087>,  <44.972015, 34.108635, 23.717762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067131, 33.911617, 23.619087>,  <45.225658, 33.583252, 23.454630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067131, 33.911617, 23.619087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909449, 0.289631, 0.298355,
		0.125844, 0.492156, -0.861363,
		-0.396315, 0.820912, 0.411143,
		44.948238, 34.157890, 23.742430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548912, 34.166466, 23.141756>,  <45.225658, 33.583252, 23.454630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548912, 34.166466, 23.141756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434814, 34.251301, 23.515635>,  <45.366356, 34.302200, 23.739962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434814, 34.251301, 23.515635>,  <45.548912, 34.166466, 23.141756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434814, 34.251301, 23.515635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917599, 0.342122, 0.202395,
		-0.276854, 0.915408, -0.292200,
		-0.285242, 0.212089, 0.934695,
		45.349243, 34.314926, 23.796043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558239, 34.988930, 23.408241>,  <45.548912, 34.166466, 23.141756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558239, 34.988930, 23.408241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638287, 34.696735, 23.669420>,  <45.686314, 34.521420, 23.826128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638287, 34.696735, 23.669420>,  <45.558239, 34.988930, 23.408241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638287, 34.696735, 23.669420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940881, 0.329179, 0.079903,
		-0.273306, 0.598357, 0.753175,
		0.200119, -0.730486, 0.652949,
		45.698322, 34.477589, 23.865305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922554, 35.277393, 23.959116>,  <45.558239, 34.988930, 23.408241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922554, 35.277393, 23.959116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991177, 34.907593, 23.822958>,  <46.032352, 34.685715, 23.741262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991177, 34.907593, 23.822958>,  <45.922554, 35.277393, 23.959116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991177, 34.907593, 23.822958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962425, 0.231099, -0.142590,
		0.210489, -0.303143, 0.929408,
		0.171560, -0.924499, -0.340396,
		46.042645, 34.630241, 23.720839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507107, 34.843403, 24.301853>,  <45.922554, 35.277393, 23.959116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507107, 34.843403, 24.301853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480370, 34.741398, 23.916002>,  <46.464329, 34.680195, 23.684492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480370, 34.741398, 23.916002>,  <46.507107, 34.843403, 24.301853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480370, 34.741398, 23.916002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988573, 0.113992, -0.098638,
		0.135113, -0.960196, 0.244475,
		-0.066844, -0.255009, -0.964626,
		46.460316, 34.664894, 23.626616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.762634, 35.443615, 24.524694>,  <46.507107, 34.843403, 24.301853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.762634, 35.443615, 24.524694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374977, 35.371582, 24.592018>,  <46.142384, 35.328362, 24.632412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374977, 35.371582, 24.592018>,  <46.762634, 35.443615, 24.524694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374977, 35.371582, 24.592018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106185, 0.311188, 0.944398,
		-0.222447, 0.933130, -0.282464,
		-0.969145, -0.180085, 0.168307,
		46.084232, 35.317558, 24.642509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571415, 35.942860, 25.046801>,  <46.762634, 35.443615, 24.524694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571415, 35.942860, 25.046801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257412, 35.698673, 25.004669>,  <46.069008, 35.552162, 24.979391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257412, 35.698673, 25.004669>,  <46.571415, 35.942860, 25.046801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257412, 35.698673, 25.004669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247500, 0.153199, 0.956699,
		-0.567894, 0.777087, -0.271352,
		-0.785009, -0.610464, -0.105329,
		46.021908, 35.515533, 24.973070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983730, 36.191330, 25.483395>,  <46.571415, 35.942860, 25.046801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983730, 36.191330, 25.483395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025944, 35.796623, 25.434158>,  <46.051273, 35.559799, 25.404617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025944, 35.796623, 25.434158>,  <45.983730, 36.191330, 25.483395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025944, 35.796623, 25.434158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246491, -0.145876, 0.958104,
		-0.963382, -0.070775, -0.258624,
		0.105537, -0.986768, -0.123089,
		46.057606, 35.500591, 25.397232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355381, 35.844345, 25.835470>,  <45.983730, 36.191330, 25.483395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355381, 35.844345, 25.835470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646481, 35.570545, 25.818295>,  <45.821140, 35.406265, 25.807989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646481, 35.570545, 25.818295>,  <45.355381, 35.844345, 25.835470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646481, 35.570545, 25.818295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214154, -0.286271, 0.933909,
		-0.651551, -0.670456, -0.354921,
		0.727749, -0.684498, -0.042939,
		45.864807, 35.365196, 25.805412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105247, 35.243179, 26.034040>,  <45.355381, 35.844345, 25.835470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105247, 35.243179, 26.034040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498676, 35.201534, 26.093027>,  <45.734734, 35.176548, 26.128420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498676, 35.201534, 26.093027>,  <45.105247, 35.243179, 26.034040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498676, 35.201534, 26.093027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177006, -0.395909, 0.901068,
		-0.035430, -0.912368, -0.407834,
		0.983572, -0.104114, 0.147468,
		45.793747, 35.170300, 26.137268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104507, 34.703434, 26.428621>,  <45.105247, 35.243179, 26.034040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104507, 34.703434, 26.428621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475498, 34.845684, 26.474792>,  <45.698093, 34.931034, 26.502495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475498, 34.845684, 26.474792>,  <45.104507, 34.703434, 26.428621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475498, 34.845684, 26.474792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057908, -0.168366, 0.984022,
		0.369377, -0.919339, -0.135561,
		0.927473, 0.355625, 0.115428,
		45.753738, 34.952370, 26.509420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455688, 34.197426, 26.896883>,  <45.104507, 34.703434, 26.428621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455688, 34.197426, 26.896883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644333, 34.548325, 26.932703>,  <45.757519, 34.758865, 26.954195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644333, 34.548325, 26.932703>,  <45.455688, 34.197426, 26.896883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644333, 34.548325, 26.932703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136677, -0.027607, 0.990231,
		0.871149, -0.479246, 0.106879,
		0.471613, 0.877246, 0.089552,
		45.785816, 34.811497, 26.959568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983337, 34.105743, 27.344515>,  <45.455688, 34.197426, 26.896883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983337, 34.105743, 27.344515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956612, 34.504833, 27.340960>,  <45.940575, 34.744286, 27.338827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956612, 34.504833, 27.340960>,  <45.983337, 34.105743, 27.344515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956612, 34.504833, 27.340960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025991, 0.007165, 0.999637,
		0.997427, 0.067023, 0.025453,
		-0.066816, 0.997726, -0.008888,
		45.936565, 34.804150, 27.338293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486027, 34.383961, 27.853851>,  <45.983337, 34.105743, 27.344515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486027, 34.383961, 27.853851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194965, 34.654568, 27.808517>,  <46.020329, 34.816933, 27.781317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194965, 34.654568, 27.808517>,  <46.486027, 34.383961, 27.853851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194965, 34.654568, 27.808517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058593, 0.103316, 0.992921,
		0.683438, 0.729143, -0.035539,
		-0.727653, 0.676518, -0.113333,
		45.976669, 34.857525, 27.774517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.595444, 34.737312, 28.424442>,  <46.486027, 34.383961, 27.853851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.595444, 34.737312, 28.424442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.246136, 34.886158, 28.298634>,  <46.036549, 34.975464, 28.223148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.246136, 34.886158, 28.298634>,  <46.595444, 34.737312, 28.424442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246136, 34.886158, 28.298634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327980, 0.028416, 0.944257,
		0.360309, 0.927752, 0.097231,
		-0.873274, 0.372114, -0.314522,
		45.984154, 34.997791, 28.204277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538548, 35.462349, 28.621063>,  <46.595444, 34.737312, 28.424442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538548, 35.462349, 28.621063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.167450, 35.313503, 28.609564>,  <45.944790, 35.224197, 28.602663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.167450, 35.313503, 28.609564>,  <46.538548, 35.462349, 28.621063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167450, 35.313503, 28.609564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023847, -0.017774, 0.999558,
		-0.372457, 0.928018, 0.007616,
		-0.927743, -0.372111, -0.028750,
		45.889126, 35.201870, 28.600939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222084, 35.791111, 29.173445>,  <46.538548, 35.462349, 28.621063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222084, 35.791111, 29.173445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993221, 35.474304, 29.088261>,  <45.855904, 35.284222, 29.037149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993221, 35.474304, 29.088261>,  <46.222084, 35.791111, 29.173445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993221, 35.474304, 29.088261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037528, -0.234110, 0.971486,
		-0.819286, 0.563834, 0.104225,
		-0.572156, -0.792013, -0.212962,
		45.821575, 35.236702, 29.024372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721699, 35.896179, 29.617714>,  <46.222084, 35.791111, 29.173445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721699, 35.896179, 29.617714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721497, 35.508415, 29.519537>,  <45.721375, 35.275757, 29.460630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721497, 35.508415, 29.519537>,  <45.721699, 35.896179, 29.617714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721497, 35.508415, 29.519537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277594, -0.235663, 0.931346,
		-0.960698, 0.068604, -0.268984,
		-0.000504, -0.969410, -0.245445,
		45.721344, 35.217590, 29.445904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181210, 35.785168, 29.889874>,  <45.721699, 35.896179, 29.617714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181210, 35.785168, 29.889874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379669, 35.440269, 29.849161>,  <45.498745, 35.233330, 29.824734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379669, 35.440269, 29.849161>,  <45.181210, 35.785168, 29.889874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379669, 35.440269, 29.849161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194347, -0.224548, 0.954886,
		-0.846205, -0.453987, -0.278985,
		0.496151, -0.862250, -0.101783,
		45.528515, 35.181595, 29.818626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771843, 35.331917, 30.238949>,  <45.181210, 35.785168, 29.889874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771843, 35.331917, 30.238949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128712, 35.151646, 30.226776>,  <45.342831, 35.043484, 30.219473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128712, 35.151646, 30.226776>,  <44.771843, 35.331917, 30.238949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128712, 35.151646, 30.226776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062683, -0.190247, 0.979733,
		-0.447330, -0.872181, -0.197983,
		0.892170, -0.450674, -0.030432,
		45.396362, 35.016445, 30.217646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684349, 34.791065, 30.666775>,  <44.771843, 35.331917, 30.238949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684349, 34.791065, 30.666775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083866, 34.803181, 30.651310>,  <45.323578, 34.810448, 30.642031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083866, 34.803181, 30.651310>,  <44.684349, 34.791065, 30.666775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083866, 34.803181, 30.651310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046363, -0.321754, 0.945688,
		0.016202, -0.946339, -0.322770,
		0.998794, 0.030286, -0.038662,
		45.383503, 34.812267, 30.639711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873959, 34.284374, 31.053333>,  <44.684349, 34.791065, 30.666775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873959, 34.284374, 31.053333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219830, 34.485119, 31.044657>,  <45.427353, 34.605564, 31.039452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219830, 34.485119, 31.044657>,  <44.873959, 34.284374, 31.053333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219830, 34.485119, 31.044657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135737, -0.191858, 0.971991,
		0.483640, -0.843403, -0.234016,
		0.864678, 0.501858, -0.021691,
		45.479233, 34.635677, 31.038149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369354, 33.770340, 31.420246>,  <44.873959, 34.284374, 31.053333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369354, 33.770340, 31.420246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492916, 34.150520, 31.434277>,  <45.567051, 34.378628, 31.442694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492916, 34.150520, 31.434277>,  <45.369354, 33.770340, 31.420246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492916, 34.150520, 31.434277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339624, -0.144677, 0.929368,
		0.888389, -0.275171, -0.367486,
		0.308902, 0.950447, 0.035075,
		45.585587, 34.435654, 31.444799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916374, 33.716064, 31.896793>,  <45.369354, 33.770340, 31.420246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916374, 33.716064, 31.896793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838417, 34.108379, 31.893524>,  <45.791645, 34.343769, 31.891563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838417, 34.108379, 31.893524>,  <45.916374, 33.716064, 31.896793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838417, 34.108379, 31.893524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243614, 0.056474, 0.968227,
		0.950089, 0.186707, -0.249941,
		-0.194890, 0.980791, -0.008171,
		45.779949, 34.402618, 31.891073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456768, 33.981739, 32.225174>,  <45.916374, 33.716064, 31.896793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456768, 33.981739, 32.225174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.145931, 34.232353, 32.249104>,  <45.959431, 34.382721, 32.263462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.145931, 34.232353, 32.249104>,  <46.456768, 33.981739, 32.225174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145931, 34.232353, 32.249104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067992, -0.010928, 0.997626,
		0.625704, 0.779314, -0.034108,
		-0.777092, 0.626538, 0.059824,
		45.912804, 34.420315, 32.267052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610081, 34.351326, 32.700768>,  <46.456768, 33.981739, 32.225174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610081, 34.351326, 32.700768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218151, 34.430180, 32.687672>,  <45.982994, 34.477493, 32.679813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218151, 34.430180, 32.687672>,  <46.610081, 34.351326, 32.700768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218151, 34.430180, 32.687672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063661, -0.152611, 0.986234,
		0.189428, 0.968424, 0.162083,
		-0.979829, 0.197138, -0.032743,
		45.924202, 34.489323, 32.677849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.478283, 34.848522, 33.203457>,  <46.610081, 34.351326, 32.700768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.478283, 34.848522, 33.203457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123920, 34.679821, 33.126217>,  <45.911301, 34.578602, 33.079872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123920, 34.679821, 33.126217>,  <46.478283, 34.848522, 33.203457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123920, 34.679821, 33.126217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079087, -0.272871, 0.958794,
		-0.457065, 0.864678, 0.208384,
		-0.885910, -0.421751, -0.193104,
		45.858147, 34.553295, 33.068287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201595, 35.003380, 33.701061>,  <46.478283, 34.848522, 33.203457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201595, 35.003380, 33.701061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020519, 34.675217, 33.561348>,  <45.911873, 34.478317, 33.477520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020519, 34.675217, 33.561348>,  <46.201595, 35.003380, 33.701061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020519, 34.675217, 33.561348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029482, -0.377737, 0.925444,
		-0.891182, 0.429235, 0.146809,
		-0.452688, -0.820410, -0.349287,
		45.884712, 34.429092, 33.456562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682640, 34.847912, 34.148861>,  <46.201595, 35.003380, 33.701061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682640, 34.847912, 34.148861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840542, 34.531578, 33.961781>,  <45.935284, 34.341778, 33.849533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840542, 34.531578, 33.961781>,  <45.682640, 34.847912, 34.148861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840542, 34.531578, 33.961781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086978, -0.474589, 0.875900,
		-0.914659, -0.386448, -0.118562,
		0.394758, -0.790837, -0.467700,
		45.958969, 34.294327, 33.821472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376102, 35.047997, 34.413445>,  <45.682640, 34.847912, 34.148861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376102, 35.047997, 34.413445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198887, 35.002014, 34.769085>,  <46.092556, 34.974426, 34.982468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198887, 35.002014, 34.769085>,  <46.376102, 35.047997, 34.413445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198887, 35.002014, 34.769085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644208, -0.730524, 0.226562,
		0.623465, 0.673142, 0.397707,
		-0.443043, -0.114953, 0.889100,
		46.065975, 34.967529, 35.035816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854301, 35.085335, 34.935196>,  <46.376102, 35.047997, 34.413445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854301, 35.085335, 34.935196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566742, 34.832626, 35.051167>,  <46.394207, 34.681004, 35.120750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566742, 34.832626, 35.051167>,  <46.854301, 35.085335, 34.935196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566742, 34.832626, 35.051167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682156, -0.721367, 0.119555,
		0.133614, 0.283724, 0.949551,
		-0.718895, -0.631768, 0.289929,
		46.351074, 34.643097, 35.138145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423176, 34.928097, 35.225822>,  <46.854301, 35.085335, 34.935196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423176, 34.928097, 35.225822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747784, 34.878246, 34.997475>,  <47.942551, 34.848335, 34.860466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747784, 34.878246, 34.997475>,  <47.423176, 34.928097, 35.225822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747784, 34.878246, 34.997475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535795, 0.231099, -0.812107,
		0.233136, 0.964916, 0.120770,
		0.811524, -0.124623, -0.570874,
		47.991241, 34.840858, 34.826214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.832417, 37.175949, 43.248680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456425, 37.045300, 43.209160>,  <37.230831, 36.966908, 43.185448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456425, 37.045300, 43.209160>,  <37.832417, 37.175949, 43.248680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456425, 37.045300, 43.209160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113416, -0.025970, -0.993208,
		0.321843, -0.944796, 0.061456,
		-0.939976, -0.326627, -0.098797,
		37.174431, 36.947311, 43.179520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769341, 36.993065, 42.549381>,  <37.832417, 37.175949, 43.248680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769341, 36.993065, 42.549381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.387939, 36.928410, 42.651134>,  <37.159100, 36.889614, 42.712189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.387939, 36.928410, 42.651134>,  <37.769341, 36.993065, 42.549381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387939, 36.928410, 42.651134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257997, 0.001393, -0.966145,
		0.155814, -0.986849, -0.043032,
		-0.953499, -0.161641, 0.254387,
		37.101891, 36.879917, 42.727451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600117, 36.377808, 42.186935>,  <37.769341, 36.993065, 42.549381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600117, 36.377808, 42.186935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280773, 36.609512, 42.252758>,  <37.089169, 36.748535, 42.292252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280773, 36.609512, 42.252758>,  <37.600117, 36.377808, 42.186935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280773, 36.609512, 42.252758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243767, -0.061000, -0.967914,
		-0.550642, -0.812852, 0.189906,
		-0.798355, 0.579267, 0.164558,
		37.041267, 36.783291, 42.302124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976845, 36.002853, 41.966957>,  <37.600117, 36.377808, 42.186935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976845, 36.002853, 41.966957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882294, 36.391426, 41.958561>,  <36.825565, 36.624569, 41.953522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882294, 36.391426, 41.958561>,  <36.976845, 36.002853, 41.966957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882294, 36.391426, 41.958561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321270, -0.098525, -0.941848,
		-0.917013, -0.215886, 0.335382,
		-0.236375, 0.971435, -0.020991,
		36.811382, 36.682858, 41.952263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347416, 36.040947, 41.509071>,  <36.976845, 36.002853, 41.966957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347416, 36.040947, 41.509071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450932, 36.427303, 41.505550>,  <36.513039, 36.659119, 41.503437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450932, 36.427303, 41.505550>,  <36.347416, 36.040947, 41.509071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450932, 36.427303, 41.505550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431945, 0.107569, -0.895462,
		-0.863976, 0.235534, 0.445050,
		0.258785, 0.965895, -0.008800,
		36.528568, 36.717072, 41.502911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806393, 36.416092, 41.186371>,  <36.347416, 36.040947, 41.509071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806393, 36.416092, 41.186371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105579, 36.681068, 41.169746>,  <36.285091, 36.840054, 41.159771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105579, 36.681068, 41.169746>,  <35.806393, 36.416092, 41.186371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105579, 36.681068, 41.169746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392072, 0.390433, -0.832972,
		-0.535567, 0.639325, 0.551753,
		0.747962, 0.662439, -0.041559,
		36.329967, 36.879799, 41.157280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536568, 37.146061, 41.126427>,  <35.806393, 36.416092, 41.186371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536568, 37.146061, 41.126427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898685, 37.132530, 40.957050>,  <36.115955, 37.124413, 40.855423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898685, 37.132530, 40.957050>,  <35.536568, 37.146061, 41.126427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898685, 37.132530, 40.957050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402124, 0.253048, -0.879922,
		0.136919, 0.966862, 0.215478,
		0.905290, -0.033829, -0.423445,
		36.170273, 37.122383, 40.830017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564709, 37.647102, 40.561455>,  <35.536568, 37.146061, 41.126427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564709, 37.647102, 40.561455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866459, 37.398598, 40.476646>,  <36.047508, 37.249493, 40.425762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866459, 37.398598, 40.476646>,  <35.564709, 37.647102, 40.561455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866459, 37.398598, 40.476646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163577, 0.134888, -0.977265,
		0.635739, 0.771904, 0.000131,
		0.754373, -0.621264, -0.212020,
		36.092770, 37.212219, 40.413040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959259, 37.972897, 40.096577>,  <35.564709, 37.647102, 40.561455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959259, 37.972897, 40.096577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079067, 37.597950, 40.025436>,  <36.150951, 37.372982, 39.982754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079067, 37.597950, 40.025436>,  <35.959259, 37.972897, 40.096577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079067, 37.597950, 40.025436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097691, 0.215556, -0.971593,
		0.949075, 0.273640, 0.156137,
		0.299522, -0.937367, -0.177847,
		36.168922, 37.316738, 39.972084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615963, 38.034943, 39.581039>,  <35.959259, 37.972897, 40.096577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615963, 38.034943, 39.581039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481110, 37.658482, 39.590687>,  <36.400196, 37.432606, 39.596478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481110, 37.658482, 39.590687>,  <36.615963, 38.034943, 39.581039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481110, 37.658482, 39.590687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155968, -0.081101, -0.984427,
		0.928448, -0.328120, 0.174131,
		-0.337132, -0.941148, 0.024122,
		36.379971, 37.376137, 39.597923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057499, 37.525291, 39.378826>,  <36.615963, 38.034943, 39.581039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057499, 37.525291, 39.378826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716026, 37.327229, 39.314274>,  <36.511143, 37.208393, 39.275543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716026, 37.327229, 39.314274>,  <37.057499, 37.525291, 39.378826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716026, 37.327229, 39.314274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251521, -0.120658, -0.960301,
		0.456026, -0.860385, 0.227546,
		-0.853684, -0.495156, -0.161382,
		36.459923, 37.178680, 39.265858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265186, 37.061031, 38.829384>,  <37.057499, 37.525291, 39.378826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265186, 37.061031, 38.829384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865643, 37.042030, 38.831242>,  <36.625916, 37.030628, 38.832355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865643, 37.042030, 38.831242>,  <37.265186, 37.061031, 38.829384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865643, 37.042030, 38.831242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000119, -0.099826, -0.995005,
		0.047733, -0.993870, 0.099718,
		-0.998860, -0.047506, 0.004647,
		36.565983, 37.027779, 38.832634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954376, 36.380058, 38.511471>,  <37.265186, 37.061031, 38.829384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954376, 36.380058, 38.511471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679222, 36.670219, 38.501587>,  <36.514130, 36.844315, 38.495655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679222, 36.670219, 38.501587>,  <36.954376, 36.380058, 38.511471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679222, 36.670219, 38.501587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002269, -0.036192, -0.999342,
		-0.725816, -0.687376, 0.026542,
		-0.687885, 0.725399, -0.024709,
		36.472858, 36.887840, 38.494175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514740, 36.212475, 37.941128>,  <36.954376, 36.380058, 38.511471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514740, 36.212475, 37.941128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437363, 36.599136, 38.008255>,  <36.390938, 36.831131, 38.048531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437363, 36.599136, 38.008255>,  <36.514740, 36.212475, 37.941128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437363, 36.599136, 38.008255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045644, 0.162001, -0.985735,
		-0.980049, -0.198343, 0.012784,
		-0.193443, 0.966652, 0.167822,
		36.379330, 36.889133, 38.058601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020279, 36.303669, 37.529140>,  <36.514740, 36.212475, 37.941128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020279, 36.303669, 37.529140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129402, 36.684200, 37.586468>,  <36.194878, 36.912521, 37.620865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129402, 36.684200, 37.586468>,  <36.020279, 36.303669, 37.529140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129402, 36.684200, 37.586468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104964, 0.177512, -0.978505,
		-0.956324, 0.251905, 0.148283,
		0.272812, 0.951332, 0.143318,
		36.211246, 36.969601, 37.629463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539669, 36.725319, 37.197178>,  <36.020279, 36.303669, 37.529140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539669, 36.725319, 37.197178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849995, 36.974251, 37.238785>,  <36.036190, 37.123611, 37.263748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849995, 36.974251, 37.238785>,  <35.539669, 36.725319, 37.197178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849995, 36.974251, 37.238785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184803, 0.381749, -0.905602,
		-0.603293, 0.683354, 0.411174,
		0.775812, 0.622330, 0.104020,
		36.082737, 37.160950, 37.269989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325245, 37.407757, 36.957256>,  <35.539669, 36.725319, 37.197178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325245, 37.407757, 36.957256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724564, 37.393276, 36.938972>,  <35.964157, 37.384590, 36.928001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724564, 37.393276, 36.938972>,  <35.325245, 37.407757, 36.957256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724564, 37.393276, 36.938972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031633, 0.322271, -0.946119,
		0.048979, 0.945955, 0.320578,
		0.998299, -0.036199, -0.045708,
		36.024052, 37.382416, 36.925259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522709, 38.116951, 36.542320>,  <35.325245, 37.407757, 36.957256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522709, 38.116951, 36.542320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.848106, 37.884956, 36.525181>,  <36.043346, 37.745758, 36.514896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.848106, 37.884956, 36.525181>,  <35.522709, 38.116951, 36.542320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848106, 37.884956, 36.525181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212561, 0.365107, -0.906375,
		0.541335, 0.728222, 0.420296,
		0.813495, -0.579991, -0.042853,
		36.092155, 37.710960, 36.512325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209965, 38.590752, 36.443775>,  <35.522709, 38.116951, 36.542320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209965, 38.590752, 36.443775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244015, 38.210232, 36.325260>,  <36.264446, 37.981922, 36.254150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244015, 38.210232, 36.325260>,  <36.209965, 38.590752, 36.443775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244015, 38.210232, 36.325260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360374, 0.306633, -0.880969,
		0.928916, -0.031781, 0.368925,
		0.085127, -0.951297, -0.296289,
		36.269554, 37.924843, 36.236374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725704, 38.668179, 36.042213>,  <36.209965, 38.590752, 36.443775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725704, 38.668179, 36.042213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591225, 38.305496, 35.940342>,  <36.510536, 38.087887, 35.879219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591225, 38.305496, 35.940342>,  <36.725704, 38.668179, 36.042213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591225, 38.305496, 35.940342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295963, 0.155000, -0.942540,
		0.894077, -0.392259, 0.216239,
		-0.336203, -0.906702, -0.254676,
		36.490364, 38.033485, 35.863937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223751, 38.537411, 35.525372>,  <36.725704, 38.668179, 36.042213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223751, 38.537411, 35.525372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.923626, 38.277042, 35.479183>,  <36.743553, 38.120819, 35.451469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.923626, 38.277042, 35.479183>,  <37.223751, 38.537411, 35.525372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923626, 38.277042, 35.479183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000770, 0.175530, -0.984474,
		0.661086, -0.738571, -0.132203,
		-0.750310, -0.650924, -0.115472,
		36.698532, 38.081764, 35.444542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499138, 37.869236, 35.141113>,  <37.223751, 38.537411, 35.525372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499138, 37.869236, 35.141113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114132, 37.969917, 35.100677>,  <36.883129, 38.030327, 35.076416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114132, 37.969917, 35.100677>,  <37.499138, 37.869236, 35.141113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114132, 37.969917, 35.100677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136416, 0.127087, -0.982466,
		-0.234445, -0.959424, -0.156659,
		-0.962510, 0.251705, -0.101086,
		36.825378, 38.045429, 35.070351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716339, 37.230515, 35.693310>,  <37.499138, 37.869236, 35.141113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716339, 37.230515, 35.693310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982685, 37.154213, 35.404800>,  <38.142494, 37.108433, 35.231693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982685, 37.154213, 35.404800>,  <37.716339, 37.230515, 35.693310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982685, 37.154213, 35.404800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670389, -0.271287, 0.690638,
		-0.327419, -0.943405, -0.052756,
		0.665864, -0.190761, -0.721274,
		38.182446, 37.096985, 35.188419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984886, 36.600906, 35.837379>,  <37.716339, 37.230515, 35.693310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984886, 36.600906, 35.837379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.245991, 36.784622, 35.596397>,  <38.402653, 36.894852, 35.451809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.245991, 36.784622, 35.596397>,  <37.984886, 36.600906, 35.837379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245991, 36.784622, 35.596397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746406, -0.253918, 0.615145,
		0.129556, -0.851221, -0.508566,
		0.652758, 0.459292, -0.602459,
		38.441818, 36.922409, 35.415661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555363, 36.126965, 35.814388>,  <37.984886, 36.600906, 35.837379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555363, 36.126965, 35.814388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700424, 36.476166, 35.683937>,  <38.787460, 36.685684, 35.605667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700424, 36.476166, 35.683937>,  <38.555363, 36.126965, 35.814388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700424, 36.476166, 35.683937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808292, -0.120474, 0.576325,
		0.463842, -0.472607, -0.749328,
		0.362650, 0.872999, -0.326124,
		38.809219, 36.738064, 35.586102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189896, 36.023540, 35.553658>,  <38.555363, 36.126965, 35.814388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189896, 36.023540, 35.553658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184372, 36.410881, 35.653339>,  <39.181057, 36.643284, 35.713150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184372, 36.410881, 35.653339>,  <39.189896, 36.023540, 35.553658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184372, 36.410881, 35.653339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795747, -0.140276, 0.589160,
		0.605472, 0.206439, -0.768627,
		-0.013805, 0.968352, 0.249206,
		39.180229, 36.701385, 35.728100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894135, 36.204903, 35.637344>,  <39.189896, 36.023540, 35.553658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894135, 36.204903, 35.637344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.690937, 36.499317, 35.816319>,  <39.569019, 36.675964, 35.923702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.690937, 36.499317, 35.816319>,  <39.894135, 36.204903, 35.637344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690937, 36.499317, 35.816319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587497, -0.083803, 0.804875,
		0.629910, 0.671739, -0.389845,
		-0.507996, 0.736032, 0.447434,
		39.538540, 36.720127, 35.950550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424809, 36.562344, 35.989712>,  <39.894135, 36.204903, 35.637344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424809, 36.562344, 35.989712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.097694, 36.684834, 36.184628>,  <39.901424, 36.758327, 36.301575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.097694, 36.684834, 36.184628>,  <40.424809, 36.562344, 35.989712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097694, 36.684834, 36.184628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519855, 0.029770, 0.853736,
		0.246932, 0.951492, -0.183540,
		-0.817787, 0.306229, 0.487287,
		39.852360, 36.776703, 36.330814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627666, 36.978809, 36.531887>,  <40.424809, 36.562344, 35.989712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627666, 36.978809, 36.531887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.257961, 36.893364, 36.658447>,  <40.036137, 36.842098, 36.734383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.257961, 36.893364, 36.658447>,  <40.627666, 36.978809, 36.531887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257961, 36.893364, 36.658447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321411, 0.011780, 0.946866,
		-0.205987, 0.976848, 0.057769,
		-0.924264, -0.213609, 0.316397,
		39.980682, 36.829281, 36.753365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472954, 37.424580, 37.117031>,  <40.627666, 36.978809, 36.531887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472954, 37.424580, 37.117031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.203896, 37.134029, 37.173485>,  <40.042461, 36.959698, 37.207359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.203896, 37.134029, 37.173485>,  <40.472954, 37.424580, 37.117031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203896, 37.134029, 37.173485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189574, 0.015208, 0.981749,
		-0.715269, 0.687126, 0.127473,
		-0.672646, -0.726380, 0.141139,
		40.002102, 36.916115, 37.215828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950142, 37.632401, 37.705196>,  <40.472954, 37.424580, 37.117031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950142, 37.632401, 37.705196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.960606, 37.232983, 37.686333>,  <39.966885, 36.993332, 37.675014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.960606, 37.232983, 37.686333>,  <39.950142, 37.632401, 37.705196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960606, 37.232983, 37.686333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039112, -0.046121, 0.998170,
		-0.998892, -0.027960, 0.037848,
		0.026163, -0.998544, -0.047164,
		39.968456, 36.933418, 37.672184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347195, 37.418339, 38.140942>,  <39.950142, 37.632401, 37.705196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347195, 37.418339, 38.140942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.596962, 37.109295, 38.095024>,  <39.746822, 36.923870, 38.067474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.596962, 37.109295, 38.095024>,  <39.347195, 37.418339, 38.140942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596962, 37.109295, 38.095024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000085, -0.147028, 0.989132,
		-0.781091, -0.617621, -0.091873,
		0.624417, -0.772610, -0.114790,
		39.784286, 36.877510, 38.060589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166584, 37.011860, 38.607079>,  <39.347195, 37.418339, 38.140942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166584, 37.011860, 38.607079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.515217, 36.833382, 38.525833>,  <39.724396, 36.726295, 38.477085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.515217, 36.833382, 38.525833>,  <39.166584, 37.011860, 38.607079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515217, 36.833382, 38.525833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031478, -0.362518, 0.931445,
		-0.489239, -0.818224, -0.301919,
		0.871582, -0.446195, -0.203114,
		39.776691, 36.699524, 38.464897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081715, 36.375443, 38.877430>,  <39.166584, 37.011860, 38.607079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081715, 36.375443, 38.877430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473499, 36.440399, 38.829628>,  <39.708572, 36.479374, 38.800945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473499, 36.440399, 38.829628>,  <39.081715, 36.375443, 38.877430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473499, 36.440399, 38.829628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155025, -0.227570, 0.961342,
		0.128916, -0.960126, -0.248071,
		0.979463, 0.162389, -0.119506,
		39.767338, 36.489117, 38.793777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385586, 35.882416, 39.274521>,  <39.081715, 36.375443, 38.877430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385586, 35.882416, 39.274521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612392, 36.210670, 39.246136>,  <39.748478, 36.407623, 39.229103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612392, 36.210670, 39.246136>,  <39.385586, 35.882416, 39.274521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612392, 36.210670, 39.246136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204107, -0.056518, 0.977316,
		0.798015, -0.568642, -0.199545,
		0.567021, 0.820641, -0.070962,
		39.782497, 36.456863, 39.224846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898064, 35.709229, 39.539177>,  <39.385586, 35.882416, 39.274521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898064, 35.709229, 39.539177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.889484, 36.108555, 39.560757>,  <39.884338, 36.348148, 39.573704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.889484, 36.108555, 39.560757>,  <39.898064, 35.709229, 39.539177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889484, 36.108555, 39.560757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144877, -0.050285, 0.988171,
		0.989217, 0.029006, -0.143554,
		-0.021445, 0.998314, 0.053945,
		39.883053, 36.408051, 39.576939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515575, 35.906429, 39.846920>,  <39.898064, 35.709229, 39.539177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515575, 35.906429, 39.846920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.250847, 36.201336, 39.901230>,  <40.092010, 36.378281, 39.933815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.250847, 36.201336, 39.901230>,  <40.515575, 35.906429, 39.846920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250847, 36.201336, 39.901230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128749, -0.066641, 0.989436,
		0.738527, 0.672306, -0.050818,
		-0.661817, 0.737267, 0.135775,
		40.052303, 36.422516, 39.941963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815228, 36.408806, 40.346867>,  <40.515575, 35.906429, 39.846920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815228, 36.408806, 40.346867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422066, 36.482403, 40.344433>,  <40.186169, 36.526562, 40.342972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422066, 36.482403, 40.344433>,  <40.815228, 36.408806, 40.346867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422066, 36.482403, 40.344433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025736, -0.104611, 0.994180,
		0.182284, 0.977345, 0.107558,
		-0.982909, 0.183992, -0.006084,
		40.127193, 36.537601, 40.342609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760235, 37.132244, 40.664249>,  <40.815228, 36.408806, 40.346867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760235, 37.132244, 40.664249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430016, 36.910690, 40.707493>,  <40.231884, 36.777760, 40.733440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430016, 36.910690, 40.707493>,  <40.760235, 37.132244, 40.664249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430016, 36.910690, 40.707493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039158, 0.134883, 0.990088,
		-0.562976, 0.821595, -0.089663,
		-0.825545, -0.553885, 0.108108,
		40.182350, 36.744526, 40.739925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550396, 37.336769, 41.300228>,  <40.760235, 37.132244, 40.664249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550396, 37.336769, 41.300228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.267220, 37.055538, 41.273384>,  <40.097313, 36.886799, 41.257278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.267220, 37.055538, 41.273384>,  <40.550396, 37.336769, 41.300228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267220, 37.055538, 41.273384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137316, 0.043810, 0.989558,
		-0.692797, 0.709761, -0.127559,
		-0.707938, -0.703079, -0.067110,
		40.054836, 36.844616, 41.253250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.845482, 37.559357, 41.742249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.798416, 37.164192, 41.701885>,  <39.770176, 36.927094, 41.677666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.798416, 37.164192, 41.701885>,  <39.845482, 37.559357, 41.742249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798416, 37.164192, 41.701885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178037, -0.078987, 0.980849,
		-0.976964, 0.133375, -0.166591,
		-0.117663, -0.987913, -0.100913,
		39.763119, 36.867817, 41.671612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280613, 37.405678, 42.122070>,  <39.845482, 37.559357, 41.742249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280613, 37.405678, 42.122070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476322, 37.057343, 42.103058>,  <39.593746, 36.848343, 42.091648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476322, 37.057343, 42.103058>,  <39.280613, 37.405678, 42.122070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476322, 37.057343, 42.103058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196245, -0.163037, 0.966906,
		-0.849766, -0.463750, -0.250666,
		0.489271, -0.870836, -0.047534,
		39.623104, 36.796093, 42.088799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816895, 37.006535, 42.460083>,  <39.280613, 37.405678, 42.122070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816895, 37.006535, 42.460083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.153816, 36.791702, 42.478302>,  <39.355968, 36.662804, 42.489235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.153816, 36.791702, 42.478302>,  <38.816895, 37.006535, 42.460083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153816, 36.791702, 42.478302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182555, -0.204746, 0.961641,
		-0.507152, -0.818305, -0.270505,
		0.842300, -0.537081, 0.045549,
		39.406506, 36.630577, 42.491966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664490, 36.489777, 42.856876>,  <38.816895, 37.006535, 42.460083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664490, 36.489777, 42.856876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.064022, 36.471153, 42.851574>,  <39.303741, 36.459980, 42.848392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.064022, 36.471153, 42.851574>,  <38.664490, 36.489777, 42.856876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064022, 36.471153, 42.851574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006529, -0.141727, 0.989884,
		-0.047964, -0.988810, -0.141256,
		0.998828, -0.046556, -0.013254,
		39.363670, 36.457188, 42.847599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866753, 35.910786, 43.263489>,  <38.664490, 36.489777, 42.856876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866753, 35.910786, 43.263489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174225, 36.166550, 43.270187>,  <39.358707, 36.320007, 43.274204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174225, 36.166550, 43.270187>,  <38.866753, 35.910786, 43.263489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174225, 36.166550, 43.270187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079461, -0.121434, 0.989414,
		0.634676, -0.759214, -0.144153,
		0.768682, 0.639412, 0.016743,
		39.404831, 36.358372, 43.275211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353523, 35.550533, 43.544437>,  <38.866753, 35.910786, 43.263489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353523, 35.550533, 43.544437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.460373, 35.934780, 43.575058>,  <39.524483, 36.165329, 43.593430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.460373, 35.934780, 43.575058>,  <39.353523, 35.550533, 43.544437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460373, 35.934780, 43.575058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187013, -0.129599, 0.973771,
		0.945342, -0.245801, -0.214266,
		0.267122, 0.960617, 0.076548,
		39.540508, 36.222965, 43.598022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963177, 35.398186, 43.928509>,  <39.353523, 35.550533, 43.544437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963177, 35.398186, 43.928509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856228, 35.779449, 43.985073>,  <39.792061, 36.008209, 44.019012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856228, 35.779449, 43.985073>,  <39.963177, 35.398186, 43.928509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856228, 35.779449, 43.985073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211876, -0.085012, 0.973592,
		0.940012, 0.290269, -0.179223,
		-0.267368, 0.953162, 0.141413,
		39.776016, 36.065399, 44.027496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458416, 35.711803, 44.313690>,  <39.963177, 35.398186, 43.928509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458416, 35.711803, 44.313690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157631, 35.966381, 44.382385>,  <39.977161, 36.119129, 44.423603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157631, 35.966381, 44.382385>,  <40.458416, 35.711803, 44.313690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157631, 35.966381, 44.382385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291762, 0.087704, 0.952461,
		0.591126, 0.766320, -0.251640,
		-0.751960, 0.636444, 0.171740,
		39.932041, 36.157314, 44.433907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731514, 36.234947, 44.663391>,  <40.458416, 35.711803, 44.313690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731514, 36.234947, 44.663391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336655, 36.243553, 44.726723>,  <40.099739, 36.248718, 44.764721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336655, 36.243553, 44.726723>,  <40.731514, 36.234947, 44.663391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336655, 36.243553, 44.726723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159497, 0.073139, 0.984485,
		0.009605, 0.997090, -0.075631,
		-0.987152, 0.021518, 0.158330,
		40.040508, 36.250008, 44.774223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538441, 36.837242, 45.089657>,  <40.731514, 36.234947, 44.663391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538441, 36.837242, 45.089657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.236195, 36.582916, 45.152641>,  <40.054848, 36.430321, 45.190434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.236195, 36.582916, 45.152641>,  <40.538441, 36.837242, 45.089657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236195, 36.582916, 45.152641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032519, 0.203685, 0.978496,
		-0.654211, 0.744485, -0.133232,
		-0.755613, -0.635810, 0.157463,
		40.009510, 36.392174, 45.199879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312614, 37.211258, 45.635372>,  <40.538441, 36.837242, 45.089657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312614, 37.211258, 45.635372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150864, 36.845497, 45.642891>,  <40.053814, 36.626041, 45.647400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150864, 36.845497, 45.642891>,  <40.312614, 37.211258, 45.635372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150864, 36.845497, 45.642891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079081, -0.014484, 0.996763,
		-0.911169, 0.404551, 0.078169,
		-0.404373, -0.914401, 0.018795,
		40.029552, 36.571178, 45.648529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890751, 37.180367, 46.263073>,  <40.312614, 37.211258, 45.635372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890751, 37.180367, 46.263073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945187, 36.794384, 46.173332>,  <39.977848, 36.562794, 46.119488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945187, 36.794384, 46.173332>,  <39.890751, 37.180367, 46.263073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945187, 36.794384, 46.173332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068460, -0.235073, 0.969563,
		-0.988329, -0.116585, -0.098052,
		0.136086, -0.964960, -0.224349,
		39.986012, 36.504894, 46.106030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365620, 36.750385, 46.691418>,  <39.890751, 37.180367, 46.263073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365620, 36.750385, 46.691418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.665905, 36.502422, 46.600075>,  <39.846077, 36.353645, 46.545269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.665905, 36.502422, 46.600075>,  <39.365620, 36.750385, 46.691418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665905, 36.502422, 46.600075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105488, -0.228753, 0.967752,
		-0.652157, -0.750589, -0.106333,
		0.750709, -0.619910, -0.228361,
		39.891117, 36.316448, 46.531567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213608, 36.215378, 47.035347>,  <39.365620, 36.750385, 46.691418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213608, 36.215378, 47.035347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595478, 36.138073, 46.944805>,  <39.824600, 36.091690, 46.890480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595478, 36.138073, 46.944805>,  <39.213608, 36.215378, 47.035347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595478, 36.138073, 46.944805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120587, -0.444143, 0.887804,
		-0.272116, -0.874863, -0.400709,
		0.954679, -0.193265, -0.226355,
		39.881882, 36.080093, 46.876900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251717, 35.589161, 47.265804>,  <39.213608, 36.215378, 47.035347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251717, 35.589161, 47.265804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618855, 35.746536, 47.244789>,  <39.839138, 35.840961, 47.232182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618855, 35.746536, 47.244789>,  <39.251717, 35.589161, 47.265804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618855, 35.746536, 47.244789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236271, -0.435178, 0.868790,
		0.318956, -0.809829, -0.492386,
		0.917847, 0.393443, -0.052537,
		39.894207, 35.864571, 47.229027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740322, 35.092014, 47.483746>,  <39.251717, 35.589161, 47.265804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740322, 35.092014, 47.483746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.949089, 35.429321, 47.535137>,  <40.074348, 35.631706, 47.565971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.949089, 35.429321, 47.535137>,  <39.740322, 35.092014, 47.483746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949089, 35.429321, 47.535137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278662, -0.310918, 0.908668,
		0.806193, -0.438449, -0.397259,
		0.521920, 0.843263, 0.128481,
		40.105663, 35.682301, 47.573681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385365, 34.869949, 47.845013>,  <39.740322, 35.092014, 47.483746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385365, 34.869949, 47.845013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357456, 35.266972, 47.884945>,  <40.340710, 35.505184, 47.908905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357456, 35.266972, 47.884945>,  <40.385365, 34.869949, 47.845013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357456, 35.266972, 47.884945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503525, -0.051351, 0.862453,
		0.861158, 0.110444, -0.496194,
		-0.069773, 0.992555, 0.099832,
		40.336525, 35.564739, 47.914894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040066, 35.098949, 48.103027>,  <40.385365, 34.869949, 47.845013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040066, 35.098949, 48.103027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.761742, 35.374901, 48.182941>,  <40.594746, 35.540474, 48.230888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.761742, 35.374901, 48.182941>,  <41.040066, 35.098949, 48.103027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761742, 35.374901, 48.182941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342899, 0.074675, 0.936399,
		0.631086, 0.720060, -0.288519,
		-0.695809, 0.689882, 0.199781,
		40.552998, 35.581863, 48.242874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403194, 35.503120, 48.529263>,  <41.040066, 35.098949, 48.103027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403194, 35.503120, 48.529263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015118, 35.583862, 48.582905>,  <40.782272, 35.632309, 48.615089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015118, 35.583862, 48.582905>,  <41.403194, 35.503120, 48.529263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015118, 35.583862, 48.582905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098783, -0.175908, 0.979438,
		0.221294, 0.963489, 0.150724,
		-0.970191, 0.201855, 0.134104,
		40.724060, 35.644421, 48.623135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372467, 35.886108, 49.202160>,  <41.403194, 35.503120, 48.529263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372467, 35.886108, 49.202160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.987106, 35.804932, 49.132111>,  <40.755890, 35.756226, 49.090080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.987106, 35.804932, 49.132111>,  <41.372467, 35.886108, 49.202160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987106, 35.804932, 49.132111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156011, -0.106744, 0.981971,
		-0.217973, 0.973356, 0.071177,
		-0.963405, -0.202938, -0.175122,
		40.698086, 35.744049, 49.079575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935543, 36.243965, 49.700493>,  <41.372467, 35.886108, 49.202160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935543, 36.243965, 49.700493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.730858, 35.917374, 49.593533>,  <40.608047, 35.721416, 49.529354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.730858, 35.917374, 49.593533>,  <40.935543, 36.243965, 49.700493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730858, 35.917374, 49.593533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047217, -0.284043, 0.957648,
		-0.857856, 0.502670, 0.106798,
		-0.511716, -0.816482, -0.267403,
		40.577343, 35.672428, 49.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496136, 36.296661, 50.186283>,  <40.935543, 36.243965, 49.700493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496136, 36.296661, 50.186283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.503826, 35.913116, 50.072994>,  <40.508438, 35.682991, 50.005020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.503826, 35.913116, 50.072994>,  <40.496136, 36.296661, 50.186283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503826, 35.913116, 50.072994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086738, -0.280610, 0.955895,
		-0.996046, -0.042942, 0.077775,
		0.019223, -0.958861, -0.283225,
		40.509594, 35.625458, 49.988026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107018, 35.855606, 50.698135>,  <40.496136, 36.296661, 50.186283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107018, 35.855606, 50.698135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332664, 35.590923, 50.500584>,  <40.468052, 35.432114, 50.382053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332664, 35.590923, 50.500584>,  <40.107018, 35.855606, 50.698135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332664, 35.590923, 50.500584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285583, -0.404860, 0.868637,
		-0.774732, -0.631059, -0.039418,
		0.564121, -0.661704, -0.493878,
		40.501900, 35.392410, 50.352421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906296, 35.126694, 50.841465>,  <40.107018, 35.855606, 50.698135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906296, 35.126694, 50.841465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.294598, 35.162128, 50.752209>,  <40.527576, 35.183388, 50.698654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.294598, 35.162128, 50.752209>,  <39.906296, 35.126694, 50.841465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294598, 35.162128, 50.752209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225247, -0.657727, 0.718790,
		-0.083091, -0.748029, -0.658444,
		0.970752, 0.088588, -0.223142,
		40.585823, 35.188705, 50.685265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279633, 35.432503, 50.644814>,  <39.906296, 35.126694, 50.841465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279633, 35.432503, 50.644814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880901, 35.413193, 50.670151>,  <38.641663, 35.401608, 50.685352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880901, 35.413193, 50.670151>,  <39.279633, 35.432503, 50.644814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880901, 35.413193, 50.670151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077368, 0.398113, -0.914068,
		0.018905, -0.916066, -0.400583,
		-0.996823, -0.048273, 0.063348,
		38.581856, 35.398712, 50.689156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939240, 35.082874, 50.020615>,  <39.279633, 35.432503, 50.644814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939240, 35.082874, 50.020615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648613, 35.315403, 50.167130>,  <38.474236, 35.454922, 50.255039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648613, 35.315403, 50.167130>,  <38.939240, 35.082874, 50.020615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648613, 35.315403, 50.167130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144006, 0.392416, -0.908445,
		-0.671834, -0.712794, -0.201403,
		-0.726568, 0.581321, 0.366285,
		38.430641, 35.489799, 50.277016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391178, 34.950130, 49.520935>,  <38.939240, 35.082874, 50.020615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391178, 34.950130, 49.520935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241779, 35.270874, 49.707493>,  <38.152138, 35.463322, 49.819427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241779, 35.270874, 49.707493>,  <38.391178, 34.950130, 49.520935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241779, 35.270874, 49.707493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433275, 0.293764, -0.852042,
		-0.820226, -0.520313, 0.237704,
		-0.373500, 0.801859, 0.466391,
		38.129730, 35.511433, 49.847408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719494, 34.963543, 49.224613>,  <38.391178, 34.950130, 49.520935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719494, 34.963543, 49.224613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787201, 35.330666, 49.368271>,  <37.827824, 35.550938, 49.454464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787201, 35.330666, 49.368271>,  <37.719494, 34.963543, 49.224613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787201, 35.330666, 49.368271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461606, 0.395790, -0.793896,
		-0.870786, -0.031400, 0.490659,
		0.169269, 0.917804, 0.359143,
		37.837982, 35.606007, 49.476013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001003, 35.281605, 49.165207>,  <37.719494, 34.963543, 49.224613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001003, 35.281605, 49.165207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280788, 35.564186, 49.208408>,  <37.448662, 35.733734, 49.234329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280788, 35.564186, 49.208408>,  <37.001003, 35.281605, 49.165207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280788, 35.564186, 49.208408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407817, 0.518663, -0.751448,
		-0.586883, 0.481567, 0.650893,
		0.699467, 0.706457, 0.108004,
		37.490627, 35.776123, 49.240810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672039, 35.897312, 49.235844>,  <37.001003, 35.281605, 49.165207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672039, 35.897312, 49.235844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037186, 35.941231, 49.078560>,  <37.256275, 35.967583, 48.984188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037186, 35.941231, 49.078560>,  <36.672039, 35.897312, 49.235844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037186, 35.941231, 49.078560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405117, 0.362727, -0.839232,
		0.050486, 0.925405, 0.375601,
		0.912870, 0.109793, -0.393210,
		37.311047, 35.974167, 48.960598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555157, 36.501411, 48.818443>,  <36.672039, 35.897312, 49.235844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555157, 36.501411, 48.818443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916584, 36.371712, 48.706417>,  <37.133438, 36.293892, 48.639202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916584, 36.371712, 48.706417>,  <36.555157, 36.501411, 48.818443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916584, 36.371712, 48.706417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168036, 0.333120, -0.927790,
		0.394127, 0.885379, 0.246510,
		0.903564, -0.324245, -0.280068,
		37.187653, 36.274437, 48.622398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741421, 36.922688, 48.273312>,  <36.555157, 36.501411, 48.818443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741421, 36.922688, 48.273312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980694, 36.607960, 48.212521>,  <37.124256, 36.419125, 48.176044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980694, 36.607960, 48.212521>,  <36.741421, 36.922688, 48.273312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980694, 36.607960, 48.212521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049031, 0.225228, -0.973072,
		0.799862, 0.574619, 0.173305,
		0.598178, -0.786820, -0.151977,
		37.160149, 36.371914, 48.166927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062687, 37.097713, 47.794243>,  <36.741421, 36.922688, 48.273312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062687, 37.097713, 47.794243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234577, 36.738605, 47.755577>,  <37.337711, 36.523140, 47.732376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234577, 36.738605, 47.755577>,  <37.062687, 37.097713, 47.794243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234577, 36.738605, 47.755577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034268, 0.123189, -0.991791,
		0.902307, 0.422889, 0.083702,
		0.429729, -0.897769, -0.096663,
		37.363495, 36.469276, 47.726578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585289, 37.149403, 47.275105>,  <37.062687, 37.097713, 47.794243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585289, 37.149403, 47.275105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445560, 36.777283, 47.319855>,  <37.361721, 36.554012, 47.346706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445560, 36.777283, 47.319855>,  <37.585289, 37.149403, 47.275105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445560, 36.777283, 47.319855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070687, -0.092894, -0.993164,
		0.934332, -0.354844, -0.033310,
		-0.349324, -0.930299, 0.111876,
		37.340763, 36.498192, 47.353416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071701, 36.660698, 46.902847>,  <37.585289, 37.149403, 47.275105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071701, 36.660698, 46.902847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.710133, 36.494495, 46.943424>,  <37.493191, 36.394775, 46.967770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.710133, 36.494495, 46.943424>,  <38.071701, 36.660698, 46.902847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710133, 36.494495, 46.943424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074391, -0.080828, -0.993948,
		0.421188, -0.905993, 0.042152,
		-0.903917, -0.415503, 0.101442,
		37.438957, 36.369846, 46.973858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098991, 35.956184, 46.651611>,  <38.071701, 36.660698, 46.902847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098991, 35.956184, 46.651611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716408, 36.070190, 46.626453>,  <37.486858, 36.138596, 46.611359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716408, 36.070190, 46.626453>,  <38.098991, 35.956184, 46.651611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716408, 36.070190, 46.626453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023831, -0.138509, -0.990074,
		-0.290900, -0.948462, 0.125685,
		-0.956456, 0.285018, -0.062894,
		37.429470, 36.155697, 46.607586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859844, 35.525734, 46.144550>,  <38.098991, 35.956184, 46.651611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859844, 35.525734, 46.144550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599274, 35.825443, 46.192265>,  <37.442932, 36.005268, 46.220894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599274, 35.825443, 46.192265>,  <37.859844, 35.525734, 46.144550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599274, 35.825443, 46.192265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131844, 0.043039, -0.990336,
		-0.747171, -0.660856, 0.070751,
		-0.651424, 0.749278, 0.119287,
		37.403847, 36.050228, 46.228050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361107, 35.275009, 45.618767>,  <37.859844, 35.525734, 46.144550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361107, 35.275009, 45.618767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305672, 35.662971, 45.698837>,  <37.272411, 35.895748, 45.746880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305672, 35.662971, 45.698837>,  <37.361107, 35.275009, 45.618767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305672, 35.662971, 45.698837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269890, 0.157491, -0.949924,
		-0.952866, -0.185674, 0.239942,
		-0.138587, 0.969908, 0.200179,
		37.264095, 35.953945, 45.758892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758110, 35.437557, 45.297195>,  <37.361107, 35.275009, 45.618767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758110, 35.437557, 45.297195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.936016, 35.793179, 45.340584>,  <37.042759, 36.006554, 45.366615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.936016, 35.793179, 45.340584>,  <36.758110, 35.437557, 45.297195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936016, 35.793179, 45.340584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209843, 0.221177, -0.952390,
		-0.870719, 0.400826, 0.284933,
		0.444764, 0.889055, 0.108472,
		37.069447, 36.059895, 45.373127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364311, 35.909348, 44.968670>,  <36.758110, 35.437557, 45.297195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364311, 35.909348, 44.968670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714031, 36.103008, 44.982548>,  <36.923862, 36.219204, 44.990875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714031, 36.103008, 44.982548>,  <36.364311, 35.909348, 44.968670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714031, 36.103008, 44.982548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175918, 0.382670, -0.906982,
		-0.452390, 0.786869, 0.419738,
		0.874297, 0.484150, 0.034691,
		36.976322, 36.248253, 44.992954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221542, 36.633179, 44.882130>,  <36.364311, 35.909348, 44.968670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221542, 36.633179, 44.882130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.609112, 36.576313, 44.801155>,  <36.841652, 36.542194, 44.752571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.609112, 36.576313, 44.801155>,  <36.221542, 36.633179, 44.882130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609112, 36.576313, 44.801155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120720, 0.442556, -0.888578,
		0.215916, 0.885400, 0.411639,
		0.968921, -0.142165, -0.202441,
		36.899788, 36.533665, 44.740421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309734, 37.170559, 44.374805>,  <36.221542, 36.633179, 44.882130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309734, 37.170559, 44.374805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.630424, 36.934521, 44.336819>,  <36.822838, 36.792896, 44.314026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.630424, 36.934521, 44.336819>,  <36.309734, 37.170559, 44.374805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630424, 36.934521, 44.336819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083152, 0.267462, -0.959974,
		0.591876, 0.761742, 0.263499,
		0.801728, -0.590096, -0.094964,
		36.870941, 36.757492, 44.308331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824249, 37.603046, 44.101326>,  <36.309734, 37.170559, 44.374805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824249, 37.603046, 44.101326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904598, 37.219521, 44.020992>,  <36.952808, 36.989407, 43.972794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904598, 37.219521, 44.020992>,  <36.824249, 37.603046, 44.101326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904598, 37.219521, 44.020992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137151, 0.230516, -0.963355,
		0.969969, 0.165967, 0.177806,
		0.200872, -0.958811, -0.200830,
		36.964859, 36.931877, 43.960743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442196, 37.626705, 43.762428>,  <36.824249, 37.603046, 44.101326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442196, 37.626705, 43.762428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.256187, 37.286591, 43.663818>,  <37.144585, 37.082523, 43.604652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.256187, 37.286591, 43.663818>,  <37.442196, 37.626705, 43.762428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256187, 37.286591, 43.663818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135330, 0.206914, -0.968954,
		0.874896, -0.483943, 0.018850,
		-0.465018, -0.850285, -0.246521,
		37.116680, 37.031506, 43.589863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.885433, 33.016163, 24.300594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.513321, 33.143715, 24.373142>,  <44.290054, 33.220245, 24.416672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.513321, 33.143715, 24.373142>,  <44.885433, 33.016163, 24.300594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513321, 33.143715, 24.373142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199614, 0.025197, 0.979550,
		0.307786, 0.947461, -0.087093,
		-0.930281, 0.318877, 0.181371,
		44.234238, 33.239376, 24.427553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958130, 33.589432, 24.606848>,  <44.885433, 33.016163, 24.300594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958130, 33.589432, 24.606848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.584106, 33.481438, 24.698738>,  <44.359692, 33.416641, 24.753872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.584106, 33.481438, 24.698738>,  <44.958130, 33.589432, 24.606848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584106, 33.481438, 24.698738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191982, 0.159102, 0.968416,
		-0.298010, 0.949628, -0.096937,
		-0.935058, -0.269987, 0.229726,
		44.303589, 33.400440, 24.767656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805962, 33.991737, 25.172155>,  <44.958130, 33.589432, 24.606848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805962, 33.991737, 25.172155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.530308, 33.701935, 25.166744>,  <44.364914, 33.528053, 25.163498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.530308, 33.701935, 25.166744>,  <44.805962, 33.991737, 25.172155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530308, 33.701935, 25.166744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042716, 0.021980, 0.998845,
		-0.723372, 0.688919, -0.046095,
		-0.689137, -0.724505, -0.013528,
		44.323566, 33.484585, 25.162685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309368, 34.326607, 25.592506>,  <44.805962, 33.991737, 25.172155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309368, 34.326607, 25.592506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.212078, 33.938671, 25.586246>,  <44.153702, 33.705910, 25.582491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.212078, 33.938671, 25.586246>,  <44.309368, 34.326607, 25.592506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212078, 33.938671, 25.586246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409364, 0.088013, 0.908116,
		-0.879352, 0.227287, -0.418426,
		-0.243230, -0.969842, -0.015648,
		44.139111, 33.647717, 25.581553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556725, 34.300442, 25.822527>,  <44.309368, 34.326607, 25.592506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556725, 34.300442, 25.822527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706039, 33.934578, 25.884556>,  <43.795628, 33.715057, 25.921774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706039, 33.934578, 25.884556>,  <43.556725, 34.300442, 25.822527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706039, 33.934578, 25.884556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315126, 0.032202, 0.948503,
		-0.872553, -0.402936, -0.276213,
		0.373291, -0.914662, 0.155074,
		43.818027, 33.660179, 25.931078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992542, 33.940094, 25.947750>,  <43.556725, 34.300442, 25.822527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992542, 33.940094, 25.947750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309559, 33.761154, 26.113523>,  <43.499771, 33.653790, 26.212988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309559, 33.761154, 26.113523>,  <42.992542, 33.940094, 25.947750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309559, 33.761154, 26.113523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363090, 0.199844, 0.910070,
		-0.489938, -0.871748, -0.004042,
		0.792544, -0.447345, 0.414434,
		43.547321, 33.626949, 26.237854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769596, 33.647926, 26.484589>,  <42.992542, 33.940094, 25.947750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769596, 33.647926, 26.484589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159458, 33.640293, 26.573753>,  <43.393375, 33.635715, 26.627253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159458, 33.640293, 26.573753>,  <42.769596, 33.647926, 26.484589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159458, 33.640293, 26.573753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208224, 0.287079, 0.935002,
		-0.081835, -0.957717, 0.275829,
		0.974652, -0.019082, 0.222913,
		43.451855, 33.634567, 26.640627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856205, 33.084389, 26.964733>,  <42.769596, 33.647926, 26.484589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856205, 33.084389, 26.964733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.164669, 33.327972, 27.039009>,  <43.349747, 33.474121, 27.083574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.164669, 33.327972, 27.039009>,  <42.856205, 33.084389, 26.964733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164669, 33.327972, 27.039009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164063, -0.091735, 0.982175,
		0.615138, -0.787880, 0.029165,
		0.771161, 0.608958, 0.185692,
		43.396019, 33.510658, 27.094717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196247, 32.872097, 27.607948>,  <42.856205, 33.084389, 26.964733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196247, 32.872097, 27.607948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329437, 33.247402, 27.570438>,  <43.409351, 33.472584, 27.547932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329437, 33.247402, 27.570438>,  <43.196247, 32.872097, 27.607948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329437, 33.247402, 27.570438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023182, 0.091275, 0.995556,
		0.942649, -0.333673, 0.008642,
		0.332979, 0.938260, -0.093776,
		43.429333, 33.528881, 27.542305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746239, 32.919334, 28.121296>,  <43.196247, 32.872097, 27.607948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746239, 32.919334, 28.121296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.638855, 33.292912, 28.026913>,  <43.574425, 33.517059, 27.970284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.638855, 33.292912, 28.026913>,  <43.746239, 32.919334, 28.121296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638855, 33.292912, 28.026913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070718, 0.225181, 0.971747,
		0.960692, 0.277561, 0.005595,
		-0.268459, 0.933945, -0.235958,
		43.558319, 33.573093, 27.956125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121811, 33.238682, 28.628563>,  <43.746239, 32.919334, 28.121296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121811, 33.238682, 28.628563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824741, 33.472599, 28.498058>,  <43.646500, 33.612949, 28.419756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824741, 33.472599, 28.498058>,  <44.121811, 33.238682, 28.628563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824741, 33.472599, 28.498058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212355, 0.256395, 0.942956,
		0.635087, 0.769596, -0.066234,
		-0.742677, 0.584794, -0.326261,
		43.601936, 33.648037, 28.400181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290375, 33.958336, 28.907984>,  <44.121811, 33.238682, 28.628563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290375, 33.958336, 28.907984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.900021, 33.930817, 28.825123>,  <43.665806, 33.914307, 28.775406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.900021, 33.930817, 28.825123>,  <44.290375, 33.958336, 28.907984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900021, 33.930817, 28.825123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217780, 0.242987, 0.945267,
		-0.014693, 0.967587, -0.252110,
		-0.975887, -0.068793, -0.207150,
		43.607254, 33.910179, 28.762978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998608, 34.482189, 29.202471>,  <44.290375, 33.958336, 28.907984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998608, 34.482189, 29.202471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669956, 34.257504, 29.163694>,  <43.472763, 34.122692, 29.140429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669956, 34.257504, 29.163694>,  <43.998608, 34.482189, 29.202471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669956, 34.257504, 29.163694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170442, 0.079809, 0.982130,
		-0.543941, 0.823472, -0.161314,
		-0.821631, -0.561716, -0.096942,
		43.423466, 34.088989, 29.134611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347820, 34.957317, 29.426680>,  <43.998608, 34.482189, 29.202471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347820, 34.957317, 29.426680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.245522, 34.570702, 29.434631>,  <43.184143, 34.338734, 29.439404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.245522, 34.570702, 29.434631>,  <43.347820, 34.957317, 29.426680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245522, 34.570702, 29.434631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438139, 0.134213, 0.888832,
		-0.861760, 0.218602, -0.457803,
		-0.255743, -0.966540, 0.019881,
		43.168800, 34.280739, 29.440596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735023, 34.942387, 29.777977>,  <43.347820, 34.957317, 29.426680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735023, 34.942387, 29.777977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839603, 34.556923, 29.799902>,  <42.902351, 34.325645, 29.813057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839603, 34.556923, 29.799902>,  <42.735023, 34.942387, 29.777977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839603, 34.556923, 29.799902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261374, -0.016016, 0.965105,
		-0.929155, -0.266649, -0.256063,
		0.261445, -0.963661, 0.054814,
		42.918037, 34.267826, 29.816347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265018, 34.621189, 30.107853>,  <42.735023, 34.942387, 29.777977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265018, 34.621189, 30.107853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565460, 34.362377, 30.160295>,  <42.745724, 34.207088, 30.191761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565460, 34.362377, 30.160295>,  <42.265018, 34.621189, 30.107853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565460, 34.362377, 30.160295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176561, -0.005520, 0.984274,
		-0.636135, -0.762441, -0.118387,
		0.751104, -0.647034, 0.131105,
		42.790791, 34.168266, 30.199627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013084, 34.124866, 30.446493>,  <42.265018, 34.621189, 30.107853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013084, 34.124866, 30.446493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.405972, 34.124588, 30.521593>,  <42.641705, 34.124420, 30.566652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.405972, 34.124588, 30.521593>,  <42.013084, 34.124866, 30.446493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405972, 34.124588, 30.521593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186352, -0.125374, 0.974451,
		0.022864, -0.992109, -0.123274,
		0.982217, -0.000692, 0.187748,
		42.700638, 34.124382, 30.577917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028130, 33.930061, 31.090183>,  <42.013084, 34.124866, 30.446493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028130, 33.930061, 31.090183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.416294, 34.022263, 31.061409>,  <42.649193, 34.077583, 31.044144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.416294, 34.022263, 31.061409>,  <42.028130, 33.930061, 31.090183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416294, 34.022263, 31.061409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078182, -0.018061, 0.996776,
		0.228464, -0.972903, -0.035548,
		0.970408, 0.230507, -0.071937,
		42.707417, 34.091415, 31.039827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374355, 33.437897, 31.532171>,  <42.028130, 33.930061, 31.090183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374355, 33.437897, 31.532171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613670, 33.757893, 31.514023>,  <42.757259, 33.949890, 31.503134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613670, 33.757893, 31.514023>,  <42.374355, 33.437897, 31.532171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613670, 33.757893, 31.514023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179081, -0.078311, 0.980713,
		0.781011, -0.594877, -0.190116,
		0.598291, 0.799993, -0.045369,
		42.793159, 33.997890, 31.500412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985546, 33.340874, 32.032887>,  <42.374355, 33.437897, 31.532171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985546, 33.340874, 32.032887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970825, 33.734009, 31.960571>,  <42.961994, 33.969891, 31.917183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970825, 33.734009, 31.960571>,  <42.985546, 33.340874, 32.032887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970825, 33.734009, 31.960571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129495, 0.184072, 0.974345,
		0.990897, 0.012446, -0.134046,
		-0.036801, 0.982834, -0.180785,
		42.959785, 34.028858, 31.906336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541553, 33.598343, 32.338200>,  <42.985546, 33.340874, 32.032887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541553, 33.598343, 32.338200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303432, 33.916199, 32.290604>,  <43.160561, 34.106911, 32.262047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303432, 33.916199, 32.290604>,  <43.541553, 33.598343, 32.338200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303432, 33.916199, 32.290604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184267, 0.279164, 0.942398,
		0.782084, 0.539089, -0.312613,
		-0.595307, 0.794639, -0.118993,
		43.124840, 34.154591, 32.254906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971661, 34.211243, 32.410831>,  <43.541553, 33.598343, 32.338200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971661, 34.211243, 32.410831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587509, 34.247513, 32.516243>,  <43.357018, 34.269276, 32.579491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587509, 34.247513, 32.516243>,  <43.971661, 34.211243, 32.410831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587509, 34.247513, 32.516243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278153, 0.370858, 0.886056,
		-0.017389, 0.924252, -0.381386,
		-0.960379, 0.090676, 0.263532,
		43.299397, 34.274715, 32.595303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670910, 34.139809, 32.904705>,  <43.971661, 34.211243, 32.410831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670910, 34.139809, 32.904705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027782, 34.312000, 32.959396>,  <45.241905, 34.415318, 32.992210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027782, 34.312000, 32.959396>,  <44.670910, 34.139809, 32.904705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027782, 34.312000, 32.959396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005209, 0.312504, -0.949902,
		-0.451644, 0.846775, 0.281053,
		0.892183, 0.430481, 0.136730,
		45.295437, 34.441143, 33.000416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671860, 34.819908, 32.693192>,  <44.670910, 34.139809, 32.904705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671860, 34.819908, 32.693192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062084, 34.733547, 32.709496>,  <45.296219, 34.681732, 32.719276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062084, 34.733547, 32.709496>,  <44.671860, 34.819908, 32.693192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062084, 34.733547, 32.709496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122879, 0.382341, -0.915815,
		0.182143, 0.898444, 0.399528,
		0.975564, -0.215903, 0.040759,
		45.354752, 34.668777, 32.721722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929882, 35.372032, 32.317055>,  <44.671860, 34.819908, 32.693192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929882, 35.372032, 32.317055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222038, 35.100002, 32.291653>,  <45.397331, 34.936783, 32.276413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222038, 35.100002, 32.291653>,  <44.929882, 35.372032, 32.317055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222038, 35.100002, 32.291653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169889, 0.270931, -0.947488,
		0.661567, 0.681246, 0.313421,
		0.730388, -0.680074, -0.063503,
		45.441154, 34.895981, 32.272602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432781, 35.650742, 31.891045>,  <44.929882, 35.372032, 32.317055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432781, 35.650742, 31.891045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523808, 35.261303, 31.883762>,  <45.578423, 35.027641, 31.879393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523808, 35.261303, 31.883762>,  <45.432781, 35.650742, 31.891045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523808, 35.261303, 31.883762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127107, 0.048237, -0.990715,
		0.965431, 0.223140, 0.134727,
		0.227567, -0.973592, -0.018207,
		45.592079, 34.969227, 31.878300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030525, 35.649940, 31.534439>,  <45.432781, 35.650742, 31.891045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030525, 35.649940, 31.534439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.907387, 35.270390, 31.506535>,  <45.833504, 35.042660, 31.489792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.907387, 35.270390, 31.506535>,  <46.030525, 35.649940, 31.534439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907387, 35.270390, 31.506535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080832, 0.046974, -0.995620,
		0.947997, -0.312134, 0.062239,
		-0.307844, -0.948876, -0.069762,
		45.815033, 34.985725, 31.485605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486309, 35.403397, 30.981758>,  <46.030525, 35.649940, 31.534439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486309, 35.403397, 30.981758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.182537, 35.143669, 30.998047>,  <46.000275, 34.987831, 31.007820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.182537, 35.143669, 30.998047>,  <46.486309, 35.403397, 30.981758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182537, 35.143669, 30.998047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092065, 0.045296, -0.994722,
		0.644048, -0.759166, -0.094178,
		-0.759425, -0.649319, 0.040720,
		45.954708, 34.948872, 31.010263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695995, 34.873745, 30.574202>,  <46.486309, 35.403397, 30.981758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695995, 34.873745, 30.574202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.296371, 34.861061, 30.586012>,  <46.056599, 34.853451, 30.593098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.296371, 34.861061, 30.586012>,  <46.695995, 34.873745, 30.574202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296371, 34.861061, 30.586012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027413, -0.065137, -0.997500,
		0.033556, -0.997372, 0.064206,
		-0.999061, -0.031712, 0.029527,
		45.996655, 34.851547, 30.594870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.521347, 34.423470, 30.071072>,  <46.695995, 34.873745, 30.574202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.521347, 34.423470, 30.071072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168182, 34.602196, 30.128784>,  <45.956284, 34.709431, 30.163412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168182, 34.602196, 30.128784>,  <46.521347, 34.423470, 30.071072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168182, 34.602196, 30.128784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189538, -0.058031, -0.980157,
		-0.429577, -0.892742, 0.135925,
		-0.882915, 0.446816, 0.144280,
		45.903309, 34.736240, 30.172068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038311, 33.974007, 29.803358>,  <46.521347, 34.423470, 30.071072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038311, 33.974007, 29.803358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.883011, 34.342003, 29.781908>,  <45.789829, 34.562801, 29.769039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.883011, 34.342003, 29.781908>,  <46.038311, 33.974007, 29.803358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883011, 34.342003, 29.781908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147510, -0.119479, -0.981817,
		-0.909671, -0.373281, 0.182097,
		-0.388251, 0.919992, -0.053624,
		45.766537, 34.618000, 29.765821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775124, 33.967480, 29.150412>,  <46.038311, 33.974007, 29.803358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775124, 33.967480, 29.150412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711250, 34.352371, 29.238607>,  <45.672924, 34.583305, 29.291525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711250, 34.352371, 29.238607>,  <45.775124, 33.967480, 29.150412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711250, 34.352371, 29.238607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213690, 0.184364, -0.959347,
		-0.963762, -0.200309, 0.176179,
		-0.159685, 0.962230, 0.220488,
		45.663345, 34.641041, 29.304754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117252, 34.180717, 28.807417>,  <45.775124, 33.967480, 29.150412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117252, 34.180717, 28.807417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322983, 34.517979, 28.870110>,  <45.446423, 34.720333, 28.907724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322983, 34.517979, 28.870110>,  <45.117252, 34.180717, 28.807417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322983, 34.517979, 28.870110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226501, 0.309819, -0.923423,
		-0.827141, 0.439444, 0.350323,
		0.514329, 0.843149, 0.156729,
		45.477283, 34.770924, 28.917128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711777, 34.786068, 28.468145>,  <45.117252, 34.180717, 28.807417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711777, 34.786068, 28.468145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089127, 34.915573, 28.497053>,  <45.315536, 34.993275, 28.514399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089127, 34.915573, 28.497053>,  <44.711777, 34.786068, 28.468145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089127, 34.915573, 28.497053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003571, 0.207933, -0.978136,
		-0.331713, 0.923006, 0.195002,
		0.943374, 0.323764, 0.072270,
		45.372139, 35.012703, 28.518734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785812, 35.292023, 27.929382>,  <44.711777, 34.786068, 28.468145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785812, 35.292023, 27.929382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.167622, 35.215359, 28.020725>,  <45.396709, 35.169361, 28.075531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.167622, 35.215359, 28.020725>,  <44.785812, 35.292023, 27.929382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167622, 35.215359, 28.020725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254224, 0.123159, -0.959272,
		0.155730, 0.973703, 0.166283,
		0.954525, -0.191661, 0.228359,
		45.453979, 35.157860, 28.089233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103931, 35.828663, 27.635660>,  <44.785812, 35.292023, 27.929382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103931, 35.828663, 27.635660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381195, 35.542912, 27.674006>,  <45.547554, 35.371460, 27.697014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381195, 35.542912, 27.674006>,  <45.103931, 35.828663, 27.635660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381195, 35.542912, 27.674006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320484, 0.186336, -0.928746,
		0.645613, 0.674494, 0.358108,
		0.693162, -0.714378, 0.095864,
		45.589142, 35.328598, 27.702765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784000, 36.102673, 27.445463>,  <45.103931, 35.828663, 27.635660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784000, 36.102673, 27.445463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817528, 35.708050, 27.389343>,  <45.837646, 35.471275, 27.355671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817528, 35.708050, 27.389343>,  <45.784000, 36.102673, 27.445463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817528, 35.708050, 27.389343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313222, 0.159746, -0.936148,
		0.945973, 0.034524, 0.322401,
		0.083822, -0.986554, -0.140301,
		45.842674, 35.412083, 27.347254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.343975, 36.043983, 26.984531>,  <45.784000, 36.102673, 27.445463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.343975, 36.043983, 26.984531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.192074, 35.673985, 26.979340>,  <46.100933, 35.451984, 26.976225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.192074, 35.673985, 26.979340>,  <46.343975, 36.043983, 26.984531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192074, 35.673985, 26.979340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086213, -0.021419, -0.996046,
		0.921060, -0.379374, 0.087881,
		-0.379757, -0.924995, -0.012979,
		46.078148, 35.396484, 26.975447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874954, 35.499908, 26.679483>,  <46.343975, 36.043983, 26.984531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874954, 35.499908, 26.679483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518429, 35.328213, 26.621086>,  <46.304512, 35.225193, 26.586048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518429, 35.328213, 26.621086>,  <46.874954, 35.499908, 26.679483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518429, 35.328213, 26.621086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184353, -0.048931, -0.981641,
		0.414218, -0.901863, 0.122745,
		-0.891312, -0.429242, -0.145993,
		46.251034, 35.199440, 26.577288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042477, 34.997887, 26.203344>,  <46.874954, 35.499908, 26.679483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042477, 34.997887, 26.203344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.649029, 35.068356, 26.188084>,  <46.412960, 35.110638, 26.178928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.649029, 35.068356, 26.188084>,  <47.042477, 34.997887, 26.203344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649029, 35.068356, 26.188084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036853, -0.010630, -0.999264,
		-0.176449, -0.984302, 0.003963,
		-0.983620, 0.176173, -0.038150,
		46.353943, 35.121208, 26.176640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808754, 34.503193, 25.713284>,  <47.042477, 34.997887, 26.203344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808754, 34.503193, 25.713284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.522552, 34.779785, 25.753101>,  <46.350834, 34.945740, 25.776993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.522552, 34.779785, 25.753101>,  <46.808754, 34.503193, 25.713284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522552, 34.779785, 25.753101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118554, 0.020241, -0.992741,
		-0.688480, -0.722108, 0.067496,
		-0.715500, 0.691485, 0.099545,
		46.307903, 34.987232, 25.782965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260033, 34.261909, 25.312401>,  <46.808754, 34.503193, 25.713284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260033, 34.261909, 25.312401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223824, 34.659569, 25.335957>,  <46.202099, 34.898167, 25.350090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223824, 34.659569, 25.335957>,  <46.260033, 34.261909, 25.312401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223824, 34.659569, 25.335957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083800, 0.051320, -0.995160,
		-0.992363, -0.095018, 0.078664,
		-0.090521, 0.994152, 0.058891,
		46.196667, 34.957813, 25.353624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.038578, 36.645931, 38.626835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645988, 36.603046, 38.690353>,  <40.410435, 36.577316, 38.728466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645988, 36.603046, 38.690353>,  <41.038578, 36.645931, 38.626835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645988, 36.603046, 38.690353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160601, 0.008366, -0.986984,
		0.104489, -0.994201, -0.025429,
		-0.981473, -0.107213, 0.158795,
		40.351547, 36.570885, 38.737991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932835, 36.203255, 38.131390>,  <41.038578, 36.645931, 38.626835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932835, 36.203255, 38.131390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580067, 36.353760, 38.244984>,  <40.368408, 36.444065, 38.313141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580067, 36.353760, 38.244984>,  <40.932835, 36.203255, 38.131390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580067, 36.353760, 38.244984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270005, 0.090631, -0.958584,
		-0.386420, -0.922069, 0.021665,
		-0.881917, 0.376265, 0.283984,
		40.315491, 36.466640, 38.330177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460575, 35.809254, 37.855995>,  <40.932835, 36.203255, 38.131390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460575, 35.809254, 37.855995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278275, 36.155697, 37.938110>,  <40.168896, 36.363564, 37.987381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278275, 36.155697, 37.938110>,  <40.460575, 35.809254, 37.855995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278275, 36.155697, 37.938110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461645, -0.032807, -0.886458,
		-0.761037, -0.498772, 0.414788,
		-0.455748, 0.866112, 0.205288,
		40.141548, 36.415531, 37.999699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023716, 35.708595, 37.450005>,  <40.460575, 35.809254, 37.855995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023716, 35.708595, 37.450005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956924, 36.087559, 37.559208>,  <39.916847, 36.314938, 37.624729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956924, 36.087559, 37.559208>,  <40.023716, 35.708595, 37.450005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956924, 36.087559, 37.559208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462832, 0.169169, -0.870154,
		-0.870576, -0.271657, 0.410243,
		-0.166983, 0.947409, 0.273006,
		39.906830, 36.371780, 37.641109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237869, 35.890591, 37.440994>,  <40.023716, 35.708595, 37.450005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237869, 35.890591, 37.440994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478550, 36.201527, 37.367561>,  <39.622959, 36.388088, 37.323502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478550, 36.201527, 37.367561>,  <39.237869, 35.890591, 37.440994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478550, 36.201527, 37.367561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513952, 0.200872, -0.833969,
		-0.611400, 0.596151, 0.520379,
		0.601701, 0.777338, -0.183579,
		39.659061, 36.434727, 37.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822571, 36.476200, 37.160019>,  <39.237869, 35.890591, 37.440994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822571, 36.476200, 37.160019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183231, 36.598976, 37.038162>,  <39.399628, 36.672642, 36.965050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183231, 36.598976, 37.038162>,  <38.822571, 36.476200, 37.160019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183231, 36.598976, 37.038162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405303, 0.354108, -0.842815,
		-0.150818, 0.883400, 0.443687,
		0.901656, 0.306940, -0.304638,
		39.453728, 36.691059, 36.946770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743473, 37.131012, 36.877449>,  <38.822571, 36.476200, 37.160019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743473, 37.131012, 36.877449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092659, 37.051003, 36.699497>,  <39.302170, 37.002998, 36.592724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092659, 37.051003, 36.699497>,  <38.743473, 37.131012, 36.877449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092659, 37.051003, 36.699497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302582, 0.493306, -0.815532,
		0.382588, 0.846546, 0.370117,
		0.872966, -0.200022, -0.444883,
		39.354549, 36.990997, 36.566032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934196, 37.689838, 36.518517>,  <38.743473, 37.131012, 36.877449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934196, 37.689838, 36.518517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118050, 37.375332, 36.353340>,  <39.228363, 37.186626, 36.254234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118050, 37.375332, 36.353340>,  <38.934196, 37.689838, 36.518517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118050, 37.375332, 36.353340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399021, 0.232566, -0.886958,
		0.793424, 0.572447, -0.206843,
		0.459631, -0.786269, -0.412942,
		39.255939, 37.139450, 36.229458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163048, 37.996170, 36.010674>,  <38.934196, 37.689838, 36.518517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163048, 37.996170, 36.010674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153625, 37.604401, 35.930504>,  <39.147972, 37.369339, 35.882404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153625, 37.604401, 35.930504>,  <39.163048, 37.996170, 36.010674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153625, 37.604401, 35.930504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334805, 0.196629, -0.921543,
		0.941993, 0.045396, -0.332549,
		-0.023555, -0.979426, -0.200422,
		39.146561, 37.310574, 35.870377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178146, 37.946060, 35.336426>,  <39.163048, 37.996170, 36.010674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178146, 37.946060, 35.336426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077721, 37.566505, 35.412922>,  <39.017464, 37.338772, 35.458820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077721, 37.566505, 35.412922>,  <39.178146, 37.946060, 35.336426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077721, 37.566505, 35.412922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324821, -0.103522, -0.940093,
		0.911842, -0.298147, -0.282229,
		-0.251069, -0.948890, 0.191240,
		39.002399, 37.281837, 35.470295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336487, 37.523548, 34.705017>,  <39.178146, 37.946060, 35.336426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336487, 37.523548, 34.705017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057751, 37.343811, 34.928627>,  <38.890511, 37.235970, 35.062794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057751, 37.343811, 34.928627>,  <39.336487, 37.523548, 34.705017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057751, 37.343811, 34.928627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594974, -0.073106, -0.800413,
		0.400526, -0.890365, -0.216402,
		-0.696839, -0.449340, 0.559025,
		38.848698, 37.209011, 35.096336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067318, 37.082172, 34.228737>,  <39.336487, 37.523548, 34.705017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067318, 37.082172, 34.228737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796364, 37.044006, 34.520500>,  <38.633789, 37.021107, 34.695560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796364, 37.044006, 34.520500>,  <39.067318, 37.082172, 34.228737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796364, 37.044006, 34.520500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734677, 0.037374, -0.677387,
		0.037374, -0.994735, -0.095418,
		0.677387, 0.095418, -0.729412,
		38.593147, 37.015381, 34.739323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550724, 36.704498, 33.891666>,  <39.067318, 37.082172, 34.228737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550724, 36.704498, 33.891666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385441, 36.874226, 34.213963>,  <38.286270, 36.976063, 34.407341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385441, 36.874226, 34.213963>,  <38.550724, 36.704498, 33.891666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385441, 36.874226, 34.213963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795771, 0.261916, -0.546029,
		-0.442727, -0.866805, 0.229438,
		-0.413207, 0.424323, 0.805736,
		38.261478, 37.001522, 34.455685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114773, 36.272663, 33.639580>,  <38.550724, 36.704498, 33.891666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114773, 36.272663, 33.639580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245110, 36.211300, 33.266422>,  <39.323311, 36.174480, 33.042526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245110, 36.211300, 33.266422>,  <39.114773, 36.272663, 33.639580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245110, 36.211300, 33.266422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532737, -0.785381, 0.315226,
		-0.781033, -0.599703, -0.174193,
		0.325850, -0.153403, -0.932893,
		39.342861, 36.165279, 32.986553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025837, 35.453434, 33.386753>,  <39.114773, 36.272663, 33.639580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025837, 35.453434, 33.386753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340965, 35.209923, 33.424126>,  <39.530041, 35.063816, 33.446548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340965, 35.209923, 33.424126>,  <39.025837, 35.453434, 33.386753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340965, 35.209923, 33.424126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328278, -0.286698, 0.900021,
		-0.521127, -0.739726, -0.425715,
		0.787820, -0.608778, 0.093430,
		39.577312, 35.027290, 33.452156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738640, 34.924511, 33.706352>,  <39.025837, 35.453434, 33.386753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738640, 34.924511, 33.706352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128216, 34.863667, 33.773655>,  <39.361961, 34.827160, 33.814037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128216, 34.863667, 33.773655>,  <38.738640, 34.924511, 33.706352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128216, 34.863667, 33.773655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220649, -0.463486, 0.858193,
		-0.052550, -0.872952, -0.484968,
		0.973936, -0.152106, 0.168260,
		39.420395, 34.818035, 33.824131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684719, 34.264629, 33.938560>,  <38.738640, 34.924511, 33.706352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684719, 34.264629, 33.938560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019161, 34.426090, 34.087147>,  <39.219826, 34.522968, 34.176300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019161, 34.426090, 34.087147>,  <38.684719, 34.264629, 33.938560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019161, 34.426090, 34.087147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120451, -0.525541, 0.842199,
		0.535179, -0.748911, -0.390788,
		0.836107, 0.403657, 0.371465,
		39.269993, 34.547188, 34.198586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080761, 33.703014, 34.274731>,  <38.684719, 34.264629, 33.938560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080761, 33.703014, 34.274731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234512, 34.042526, 34.419956>,  <39.326763, 34.246235, 34.507092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234512, 34.042526, 34.419956>,  <39.080761, 33.703014, 34.274731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234512, 34.042526, 34.419956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103879, -0.351017, 0.930589,
		0.917311, -0.395417, -0.046754,
		0.384382, 0.848783, 0.363067,
		39.349827, 34.297161, 34.528877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563004, 33.473957, 34.720932>,  <39.080761, 33.703014, 34.274731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563004, 33.473957, 34.720932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479359, 33.848438, 34.833931>,  <39.429173, 34.073128, 34.901730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479359, 33.848438, 34.833931>,  <39.563004, 33.473957, 34.720932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479359, 33.848438, 34.833931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086277, -0.305417, 0.948302,
		0.974078, 0.173928, 0.144639,
		-0.209111, 0.936200, 0.282494,
		39.416626, 34.129299, 34.918678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027538, 33.615593, 35.261074>,  <39.563004, 33.473957, 34.720932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027538, 33.615593, 35.261074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699455, 33.840210, 35.304760>,  <39.502605, 33.974979, 35.330971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699455, 33.840210, 35.304760>,  <40.027538, 33.615593, 35.261074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699455, 33.840210, 35.304760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100517, -0.329409, 0.938821,
		0.563165, 0.759051, 0.326629,
		-0.820208, 0.561543, 0.109215,
		39.453392, 34.008675, 35.337524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094299, 33.724003, 35.918804>,  <40.027538, 33.615593, 35.261074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094299, 33.724003, 35.918804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724487, 33.848160, 35.830349>,  <39.502602, 33.922653, 35.777275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724487, 33.848160, 35.830349>,  <40.094299, 33.724003, 35.918804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724487, 33.848160, 35.830349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276178, -0.145793, 0.949984,
		0.262630, 0.939361, 0.220514,
		-0.924528, 0.310395, -0.221141,
		39.447128, 33.941277, 35.764008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935543, 34.224724, 36.472179>,  <40.094299, 33.724003, 35.918804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935543, 34.224724, 36.472179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601326, 34.073414, 36.312790>,  <39.400795, 33.982628, 36.217155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601326, 34.073414, 36.312790>,  <39.935543, 34.224724, 36.472179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601326, 34.073414, 36.312790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394787, -0.091066, 0.914249,
		-0.382124, 0.921204, -0.073248,
		-0.835539, -0.378273, -0.398477,
		39.350666, 33.959930, 36.193245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336704, 34.416168, 36.878494>,  <39.935543, 34.224724, 36.472179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336704, 34.416168, 36.878494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154152, 34.130520, 36.666176>,  <39.044621, 33.959129, 36.538784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154152, 34.130520, 36.666176>,  <39.336704, 34.416168, 36.878494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154152, 34.130520, 36.666176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602382, -0.191069, 0.775002,
		-0.654865, 0.673440, -0.342974,
		-0.456385, -0.714123, -0.530793,
		39.017235, 33.916283, 36.506939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695324, 34.488991, 36.965965>,  <39.336704, 34.416168, 36.878494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695324, 34.488991, 36.965965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679932, 34.103291, 36.861092>,  <38.670696, 33.871872, 36.798168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679932, 34.103291, 36.861092>,  <38.695324, 34.488991, 36.965965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679932, 34.103291, 36.861092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493026, -0.209900, 0.844314,
		-0.869163, 0.161753, -0.467324,
		-0.038479, -0.964250, -0.262186,
		38.668388, 33.814014, 36.782436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151634, 34.255669, 37.120609>,  <38.695324, 34.488991, 36.965965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151634, 34.255669, 37.120609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349018, 33.907959, 37.108932>,  <38.467449, 33.699333, 37.101925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349018, 33.907959, 37.108932>,  <38.151634, 34.255669, 37.120609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349018, 33.907959, 37.108932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275782, -0.188212, 0.942614,
		-0.824887, -0.457095, -0.332606,
		0.493464, -0.869276, -0.029195,
		38.497059, 33.647175, 37.100174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691582, 33.732231, 37.305084>,  <38.151634, 34.255669, 37.120609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691582, 33.732231, 37.305084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065418, 33.600819, 37.359653>,  <38.289719, 33.521973, 37.392395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065418, 33.600819, 37.359653>,  <37.691582, 33.732231, 37.305084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065418, 33.600819, 37.359653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220060, -0.232618, 0.947345,
		-0.279494, -0.915400, -0.289698,
		0.934589, -0.328528, 0.136427,
		38.345795, 33.502262, 37.400581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595718, 33.120258, 37.700352>,  <37.691582, 33.732231, 37.305084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595718, 33.120258, 37.700352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978973, 33.224854, 37.746979>,  <38.208927, 33.287609, 37.774956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978973, 33.224854, 37.746979>,  <37.595718, 33.120258, 37.700352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978973, 33.224854, 37.746979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063851, -0.201737, 0.977356,
		0.279085, -0.943888, -0.176596,
		0.958141, 0.261489, 0.116570,
		38.266415, 33.303299, 37.781948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940926, 32.557404, 38.101429>,  <37.595718, 33.120258, 37.700352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940926, 32.557404, 38.101429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161972, 32.887360, 38.149055>,  <38.294598, 33.085331, 38.177631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161972, 32.887360, 38.149055>,  <37.940926, 32.557404, 38.101429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161972, 32.887360, 38.149055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096782, -0.078385, 0.992214,
		0.827799, -0.559835, 0.036517,
		0.552614, 0.824888, 0.119069,
		38.327755, 33.134827, 38.184776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127163, 31.847376, 38.067692>,  <37.940926, 32.557404, 38.101429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127163, 31.847376, 38.067692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826927, 31.655003, 38.248943>,  <37.646786, 31.539577, 38.357693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826927, 31.655003, 38.248943>,  <38.127163, 31.847376, 38.067692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826927, 31.655003, 38.248943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616640, 0.263407, -0.741870,
		0.237420, -0.836262, -0.494264,
		-0.750591, -0.480918, 0.453135,
		37.601753, 31.510723, 38.384880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858658, 31.397099, 37.504726>,  <38.127163, 31.847376, 38.067692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858658, 31.397099, 37.504726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588024, 31.436413, 37.796638>,  <37.425644, 31.460001, 37.971786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588024, 31.436413, 37.796638>,  <37.858658, 31.397099, 37.504726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588024, 31.436413, 37.796638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691616, 0.255415, -0.675596,
		-0.252798, -0.961823, -0.104833,
		-0.676580, 0.098286, 0.729781,
		37.385052, 31.465899, 38.015572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325348, 30.989723, 37.264927>,  <37.858658, 31.397099, 37.504726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325348, 30.989723, 37.264927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159466, 31.235640, 37.533268>,  <37.059937, 31.383190, 37.694275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159466, 31.235640, 37.533268>,  <37.325348, 30.989723, 37.264927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159466, 31.235640, 37.533268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798948, 0.106870, -0.591828,
		-0.435546, -0.781414, 0.446868,
		-0.414706, 0.614793, 0.670856,
		37.035053, 31.420078, 37.734524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589317, 30.780344, 37.309345>,  <37.325348, 30.989723, 37.264927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589317, 30.780344, 37.309345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627949, 31.156435, 37.439968>,  <36.651127, 31.382090, 37.518341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627949, 31.156435, 37.439968>,  <36.589317, 30.780344, 37.309345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627949, 31.156435, 37.439968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752635, 0.283686, -0.594191,
		-0.651315, -0.188392, 0.735049,
		0.096582, 0.940229, 0.326559,
		36.656925, 31.438503, 37.537937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890785, 31.123598, 37.391224>,  <36.589317, 30.780344, 37.309345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890785, 31.123598, 37.391224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146622, 31.427555, 37.344765>,  <36.300121, 31.609930, 37.316891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146622, 31.427555, 37.344765>,  <35.890785, 31.123598, 37.391224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146622, 31.427555, 37.344765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667764, 0.474366, -0.573645,
		-0.380814, 0.444454, 0.810828,
		0.639587, 0.759894, -0.116145,
		36.338497, 31.655523, 37.309921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415104, 31.765625, 37.364082>,  <35.890785, 31.123598, 37.391224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415104, 31.765625, 37.364082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744720, 31.919851, 37.198051>,  <35.942490, 32.012386, 37.098434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744720, 31.919851, 37.198051>,  <35.415104, 31.765625, 37.364082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744720, 31.919851, 37.198051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545428, 0.341861, -0.765271,
		-0.153165, 0.857012, 0.492008,
		0.824044, 0.385568, -0.415077,
		35.991932, 32.035522, 37.073528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209373, 32.503021, 37.212196>,  <35.415104, 31.765625, 37.364082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209373, 32.503021, 37.212196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546028, 32.447987, 37.003307>,  <35.748020, 32.414967, 36.877975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546028, 32.447987, 37.003307>,  <35.209373, 32.503021, 37.212196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546028, 32.447987, 37.003307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355813, 0.586165, -0.727879,
		0.406259, 0.798423, 0.444381,
		0.841636, -0.137590, -0.522224,
		35.798519, 32.406708, 36.846642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551895, 33.059895, 37.065796>,  <35.209373, 32.503021, 37.212196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551895, 33.059895, 37.065796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670055, 32.825516, 36.763962>,  <35.740952, 32.684887, 36.582863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670055, 32.825516, 36.763962>,  <35.551895, 33.059895, 37.065796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670055, 32.825516, 36.763962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347415, 0.669876, -0.656177,
		0.889967, 0.455990, -0.005686,
		0.295401, -0.585951, -0.754585,
		35.758675, 32.649731, 36.537586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710270, 33.491364, 36.578735>,  <35.551895, 33.059895, 37.065796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710270, 33.491364, 36.578735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720203, 33.172184, 36.337849>,  <35.726162, 32.980679, 36.193317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720203, 33.172184, 36.337849>,  <35.710270, 33.491364, 36.578735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720203, 33.172184, 36.337849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340751, 0.559573, -0.755491,
		0.939826, 0.223968, -0.258005,
		0.024833, -0.797945, -0.602219,
		35.727654, 32.932800, 36.157185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007080, 33.678490, 35.825104>,  <35.710270, 33.491364, 36.578735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007080, 33.678490, 35.825104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831398, 33.321556, 35.783451>,  <35.725990, 33.107395, 35.758457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831398, 33.321556, 35.783451>,  <36.007080, 33.678490, 35.825104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831398, 33.321556, 35.783451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296903, 0.253572, -0.920625,
		0.847909, -0.373423, -0.376306,
		-0.439203, -0.892332, -0.104135,
		35.699638, 33.053856, 35.752209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302170, 33.353333, 35.214302>,  <36.007080, 33.678490, 35.825104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302170, 33.353333, 35.214302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929001, 33.233974, 35.294926>,  <35.705101, 33.162361, 35.343300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929001, 33.233974, 35.294926>,  <36.302170, 33.353333, 35.214302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929001, 33.233974, 35.294926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333838, 0.506908, -0.794731,
		0.134971, -0.808706, -0.572518,
		-0.932918, -0.298393, 0.201559,
		35.649124, 33.144455, 35.355392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087002, 32.917812, 34.735889>,  <36.302170, 33.353333, 35.214302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087002, 32.917812, 34.735889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756874, 33.068352, 34.904278>,  <35.558800, 33.158676, 35.005310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756874, 33.068352, 34.904278>,  <36.087002, 32.917812, 34.735889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756874, 33.068352, 34.904278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298571, 0.341918, -0.891037,
		-0.479282, -0.861075, -0.169822,
		-0.825315, 0.376354, 0.420967,
		35.509281, 33.181259, 35.030567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.942932, 30.178228, 41.080505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616985, 30.287968, 41.284748>,  <39.421417, 30.353811, 41.407295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616985, 30.287968, 41.284748>,  <39.942932, 30.178228, 41.080505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616985, 30.287968, 41.284748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548555, -0.080362, -0.832243,
		-0.187292, -0.958266, 0.215981,
		-0.814867, 0.274350, 0.510611,
		39.372524, 30.370272, 41.437931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496632, 29.735334, 40.814133>,  <39.942932, 30.178228, 41.080505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496632, 29.735334, 40.814133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.284931, 30.030897, 40.980946>,  <39.157913, 30.208235, 41.081032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.284931, 30.030897, 40.980946>,  <39.496632, 29.735334, 40.814133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284931, 30.030897, 40.980946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677138, -0.071670, -0.732358,
		-0.511256, -0.669984, 0.538274,
		-0.529247, 0.738908, 0.417030,
		39.126156, 30.252569, 41.106056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762154, 29.618444, 40.748650>,  <39.496632, 29.735334, 40.814133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762154, 29.618444, 40.748650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813747, 30.009642, 40.814247>,  <38.844704, 30.244360, 40.853603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813747, 30.009642, 40.814247>,  <38.762154, 29.618444, 40.748650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813747, 30.009642, 40.814247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721654, 0.205996, -0.660895,
		-0.680132, -0.033101, 0.732342,
		0.128984, 0.977993, 0.163992,
		38.852444, 30.303040, 40.863445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110569, 29.736835, 40.694542>,  <38.762154, 29.618444, 40.748650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110569, 29.736835, 40.694542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273582, 30.101685, 40.676891>,  <38.371391, 30.320595, 40.666302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273582, 30.101685, 40.676891>,  <38.110569, 29.736835, 40.694542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273582, 30.101685, 40.676891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791400, 0.328657, -0.515432,
		-0.455635, 0.244977, 0.855794,
		0.407531, 0.912124, -0.044127,
		38.395844, 30.375322, 40.663654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550381, 30.228321, 40.562401>,  <38.110569, 29.736835, 40.694542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550381, 30.228321, 40.562401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873768, 30.426136, 40.434772>,  <38.067802, 30.544825, 40.358196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873768, 30.426136, 40.434772>,  <37.550381, 30.228321, 40.562401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873768, 30.426136, 40.434772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551394, 0.446929, -0.704429,
		-0.205762, 0.745445, 0.634014,
		0.808472, 0.494536, -0.319072,
		38.116310, 30.574497, 40.339050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268414, 30.885082, 40.389393>,  <37.550381, 30.228321, 40.562401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268414, 30.885082, 40.389393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.612362, 30.858025, 40.186989>,  <37.818729, 30.841791, 40.065544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.612362, 30.858025, 40.186989>,  <37.268414, 30.885082, 40.389393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612362, 30.858025, 40.186989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442505, 0.395537, -0.804823,
		0.254587, 0.915956, 0.310178,
		0.859869, -0.067642, -0.506013,
		37.870323, 30.837732, 40.035183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355858, 31.450481, 40.147858>,  <37.268414, 30.885082, 40.389393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355858, 31.450481, 40.147858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603634, 31.258970, 39.899002>,  <37.752300, 31.144064, 39.749687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603634, 31.258970, 39.899002>,  <37.355858, 31.450481, 40.147858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603634, 31.258970, 39.899002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433232, 0.452410, -0.779509,
		0.654674, 0.752396, 0.072822,
		0.619445, -0.478776, -0.622143,
		37.789467, 31.115337, 39.712360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617790, 31.968964, 39.711273>,  <37.355858, 31.450481, 40.147858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617790, 31.968964, 39.711273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.713329, 31.635962, 39.511318>,  <37.770653, 31.436161, 39.391346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.713329, 31.635962, 39.511318>,  <37.617790, 31.968964, 39.711273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713329, 31.635962, 39.511318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194687, 0.463283, -0.864561,
		0.951342, 0.303817, -0.051425,
		0.238844, -0.832505, -0.499890,
		37.784981, 31.386209, 39.361351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963028, 32.188469, 39.068371>,  <37.617790, 31.968964, 39.711273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963028, 32.188469, 39.068371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792606, 31.832867, 39.001263>,  <37.690353, 31.619505, 38.960999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792606, 31.832867, 39.001263>,  <37.963028, 32.188469, 39.068371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792606, 31.832867, 39.001263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402963, 0.352508, -0.844606,
		0.810000, -0.292243, -0.508423,
		-0.426053, -0.889007, -0.167768,
		37.664791, 31.566164, 38.950932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489910, 32.328918, 38.550674>,  <37.963028, 32.188469, 39.068371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489910, 32.328918, 38.550674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527222, 32.726528, 38.573372>,  <38.549610, 32.965092, 38.586990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527222, 32.726528, 38.573372>,  <38.489910, 32.328918, 38.550674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527222, 32.726528, 38.573372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300439, -0.082435, 0.950232,
		0.949229, -0.071589, -0.306333,
		0.093279, 0.994022, 0.056741,
		38.555206, 33.024734, 38.590393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144569, 32.553238, 38.883698>,  <38.489910, 32.328918, 38.550674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144569, 32.553238, 38.883698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.937294, 32.892757, 38.925674>,  <38.812927, 33.096470, 38.950859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.937294, 32.892757, 38.925674>,  <39.144569, 32.553238, 38.883698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937294, 32.892757, 38.925674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427901, 0.151061, 0.891113,
		0.740525, 0.506673, -0.441481,
		-0.518193, 0.848801, 0.104942,
		38.781837, 33.147396, 38.957157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599613, 33.045200, 39.141060>,  <39.144569, 32.553238, 38.883698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599613, 33.045200, 39.141060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.235149, 33.178497, 39.238003>,  <39.016472, 33.258476, 39.296169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.235149, 33.178497, 39.238003>,  <39.599613, 33.045200, 39.141060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235149, 33.178497, 39.238003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307440, 0.158191, 0.938326,
		0.274348, 0.929477, -0.246588,
		-0.911161, 0.333239, 0.242359,
		38.961800, 33.278469, 39.310711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695679, 33.662277, 39.487709>,  <39.599613, 33.045200, 39.141060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695679, 33.662277, 39.487709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334290, 33.542252, 39.610146>,  <39.117455, 33.470238, 39.683609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334290, 33.542252, 39.610146>,  <39.695679, 33.662277, 39.487709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334290, 33.542252, 39.610146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189132, 0.361767, 0.912882,
		-0.384658, 0.882659, -0.270095,
		-0.903475, -0.300064, 0.306096,
		39.063248, 33.452232, 39.701973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441250, 34.160828, 39.804317>,  <39.695679, 33.662277, 39.487709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441250, 34.160828, 39.804317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.223721, 33.863911, 39.960911>,  <39.093201, 33.685760, 40.054867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.223721, 33.863911, 39.960911>,  <39.441250, 34.160828, 39.804317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223721, 33.863911, 39.960911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307623, 0.257700, 0.915947,
		-0.780782, 0.618546, 0.088201,
		-0.543826, -0.742288, 0.391487,
		39.060574, 33.641224, 40.078358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129803, 34.510040, 40.429241>,  <39.441250, 34.160828, 39.804317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129803, 34.510040, 40.429241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049076, 34.119678, 40.462402>,  <39.000641, 33.885460, 40.482300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049076, 34.119678, 40.462402>,  <39.129803, 34.510040, 40.429241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049076, 34.119678, 40.462402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015375, 0.087793, 0.996020,
		-0.979302, 0.199741, -0.032723,
		-0.201819, -0.975908, 0.082904,
		38.988529, 33.826904, 40.487274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424484, 34.343979, 40.803223>,  <39.129803, 34.510040, 40.429241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424484, 34.343979, 40.803223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704861, 34.065086, 40.863289>,  <38.873089, 33.897751, 40.899330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704861, 34.065086, 40.863289>,  <38.424484, 34.343979, 40.803223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704861, 34.065086, 40.863289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086219, 0.126168, 0.988255,
		-0.707986, -0.705659, 0.028323,
		0.700944, -0.697228, 0.150166,
		38.915146, 33.855919, 40.908340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094341, 33.964699, 41.327217>,  <38.424484, 34.343979, 40.803223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094341, 33.964699, 41.327217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478352, 33.852730, 41.326630>,  <38.708755, 33.785549, 41.326279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478352, 33.852730, 41.326630>,  <38.094341, 33.964699, 41.327217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478352, 33.852730, 41.326630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034760, -0.124420, 0.991621,
		-0.277757, -0.951927, -0.129176,
		0.960022, -0.279920, -0.001470,
		38.766357, 33.768753, 41.326187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098885, 33.413078, 41.671501>,  <38.094341, 33.964699, 41.327217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098885, 33.413078, 41.671501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476681, 33.542118, 41.696392>,  <38.703358, 33.619541, 41.711327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476681, 33.542118, 41.696392>,  <38.098885, 33.413078, 41.671501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476681, 33.542118, 41.696392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026441, -0.263421, 0.964319,
		0.327480, -0.909142, -0.257328,
		0.944488, 0.322599, 0.062226,
		38.760029, 33.638897, 41.715061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454132, 32.871239, 41.970364>,  <38.098885, 33.413078, 41.671501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454132, 32.871239, 41.970364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656521, 33.208473, 42.043247>,  <38.777954, 33.410812, 42.086979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656521, 33.208473, 42.043247>,  <38.454132, 32.871239, 41.970364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656521, 33.208473, 42.043247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022964, -0.224335, 0.974241,
		0.862244, -0.488755, -0.132868,
		0.505972, 0.843085, 0.182207,
		38.808311, 33.461399, 42.097908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063377, 32.642612, 42.504036>,  <38.454132, 32.871239, 41.970364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063377, 32.642612, 42.504036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.040848, 33.040783, 42.534904>,  <39.027328, 33.279686, 42.553425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.040848, 33.040783, 42.534904>,  <39.063377, 32.642612, 42.504036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040848, 33.040783, 42.534904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250956, -0.060695, 0.966094,
		0.966359, 0.073781, -0.246389,
		-0.056325, 0.995426, 0.077169,
		39.023949, 33.339409, 42.558056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738083, 32.876076, 42.899227>,  <39.063377, 32.642612, 42.504036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738083, 32.876076, 42.899227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447681, 33.150013, 42.924213>,  <39.273441, 33.314377, 42.939205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447681, 33.150013, 42.924213>,  <39.738083, 32.876076, 42.899227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447681, 33.150013, 42.924213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211663, 0.136112, 0.967818,
		0.654304, 0.715863, -0.243775,
		-0.726006, 0.684846, 0.062463,
		39.229881, 33.355465, 42.942951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027100, 33.490406, 43.276337>,  <39.738083, 32.876076, 42.899227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027100, 33.490406, 43.276337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628407, 33.503189, 43.305992>,  <39.389191, 33.510860, 43.323784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628407, 33.503189, 43.305992>,  <40.027100, 33.490406, 43.276337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628407, 33.503189, 43.305992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078125, 0.150334, 0.985544,
		0.020352, 0.988119, -0.152341,
		-0.996736, 0.031959, 0.074137,
		39.329384, 33.512775, 43.328232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873936, 34.069279, 43.748615>,  <40.027100, 33.490406, 43.276337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873936, 34.069279, 43.748615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535152, 33.856884, 43.737923>,  <39.331882, 33.729446, 43.731506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535152, 33.856884, 43.737923>,  <39.873936, 34.069279, 43.748615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535152, 33.856884, 43.737923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127495, 0.154030, 0.979806,
		-0.516145, 0.833264, -0.198155,
		-0.846959, -0.530986, -0.026736,
		39.281063, 33.697590, 43.729900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.309010, 34.505795, 44.990604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681030, 34.430508, 44.864376>,  <34.904243, 34.385338, 44.788639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681030, 34.430508, 44.864376>,  <34.309010, 34.505795, 44.990604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681030, 34.430508, 44.864376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281226, 0.188109, -0.941024,
		0.236476, 0.963945, 0.122020,
		0.930049, -0.188215, -0.315570,
		34.960045, 34.374043, 44.769707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476067, 35.067818, 44.510159>,  <34.309010, 34.505795, 44.990604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476067, 35.067818, 44.510159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693104, 34.736702, 44.453087>,  <34.823326, 34.538033, 44.418842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693104, 34.736702, 44.453087>,  <34.476067, 35.067818, 44.510159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693104, 34.736702, 44.453087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010194, 0.176340, -0.984277,
		0.839931, 0.532611, 0.104120,
		0.542597, -0.827786, -0.142684,
		34.855885, 34.488365, 44.410282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664558, 35.223576, 43.912144>,  <34.476067, 35.067818, 44.510159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664558, 35.223576, 43.912144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839367, 34.864330, 43.892517>,  <34.944252, 34.648785, 43.880741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839367, 34.864330, 43.892517>,  <34.664558, 35.223576, 43.912144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839367, 34.864330, 43.892517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068184, 0.021312, -0.997445,
		0.896863, 0.439251, -0.051923,
		0.437022, -0.898111, -0.049064,
		34.970474, 34.594898, 43.877796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232586, 35.329330, 43.480289>,  <34.664558, 35.223576, 43.912144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232586, 35.329330, 43.480289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.160313, 34.936199, 43.495251>,  <35.116951, 34.700321, 43.504227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.160313, 34.936199, 43.495251>,  <35.232586, 35.329330, 43.480289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160313, 34.936199, 43.495251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059259, -0.027083, -0.997875,
		0.981755, -0.182512, -0.053348,
		-0.180679, -0.982831, 0.037404,
		35.106110, 34.641350, 43.506474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791191, 35.008343, 43.180298>,  <35.232586, 35.329330, 43.480289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791191, 35.008343, 43.180298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491653, 34.748100, 43.129780>,  <35.311932, 34.591957, 43.099468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491653, 34.748100, 43.129780>,  <35.791191, 35.008343, 43.180298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491653, 34.748100, 43.129780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036978, 0.149248, -0.988108,
		0.661716, -0.744607, -0.087705,
		-0.748842, -0.650604, -0.126294,
		35.267002, 34.552917, 43.091892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951580, 34.458515, 42.659149>,  <35.791191, 35.008343, 43.180298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951580, 34.458515, 42.659149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552212, 34.452049, 42.680672>,  <35.312592, 34.448170, 42.693584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552212, 34.452049, 42.680672>,  <35.951580, 34.458515, 42.659149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552212, 34.452049, 42.680672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054473, 0.043808, -0.997554,
		0.013756, -0.998909, -0.044619,
		-0.998420, -0.016153, 0.053811,
		35.252686, 34.447201, 42.696815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748005, 33.955185, 42.145847>,  <35.951580, 34.458515, 42.659149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748005, 33.955185, 42.145847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407871, 34.159336, 42.197151>,  <35.203793, 34.281826, 42.227936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407871, 34.159336, 42.197151>,  <35.748005, 33.955185, 42.145847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407871, 34.159336, 42.197151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188302, -0.067497, -0.979789,
		-0.491403, -0.857299, 0.153500,
		-0.850333, 0.510375, 0.128263,
		35.152771, 34.312447, 42.235630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101330, 33.601250, 41.754566>,  <35.748005, 33.955185, 42.145847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101330, 33.601250, 41.754566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031719, 33.991085, 41.810989>,  <34.989952, 34.224987, 41.844841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031719, 33.991085, 41.810989>,  <35.101330, 33.601250, 41.754566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031719, 33.991085, 41.810989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350779, 0.072492, -0.933648,
		-0.920146, -0.211957, 0.329249,
		-0.174025, 0.974587, 0.141054,
		34.979511, 34.283463, 41.853306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446320, 33.738110, 41.406948>,  <35.101330, 33.601250, 41.754566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446320, 33.738110, 41.406948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654781, 34.075008, 41.462128>,  <34.779858, 34.277145, 41.495235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654781, 34.075008, 41.462128>,  <34.446320, 33.738110, 41.406948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654781, 34.075008, 41.462128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138298, 0.242835, -0.960159,
		-0.842185, 0.481309, 0.243034,
		0.521151, 0.842242, 0.137948,
		34.811127, 34.327682, 41.503513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150597, 34.147583, 40.930756>,  <34.446320, 33.738110, 41.406948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150597, 34.147583, 40.930756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482990, 34.346878, 41.029728>,  <34.682426, 34.466454, 41.089111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482990, 34.346878, 41.029728>,  <34.150597, 34.147583, 40.930756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482990, 34.346878, 41.029728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016609, 0.422371, -0.906271,
		-0.556048, 0.757207, 0.342708,
		0.830984, 0.498238, 0.247435,
		34.732285, 34.496349, 41.103958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016716, 34.830917, 40.917553>,  <34.150597, 34.147583, 40.930756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016716, 34.830917, 40.917553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415691, 34.819279, 40.891403>,  <34.655075, 34.812298, 40.875713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415691, 34.819279, 40.891403>,  <34.016716, 34.830917, 40.917553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415691, 34.819279, 40.891403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040273, 0.526916, -0.848963,
		0.059147, 0.849419, 0.524393,
		0.997437, -0.029095, -0.065374,
		34.714924, 34.810551, 40.871792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395813, 35.557705, 40.898830>,  <34.016716, 34.830917, 40.917553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395813, 35.557705, 40.898830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631004, 35.283394, 40.727257>,  <34.772118, 35.118805, 40.624313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631004, 35.283394, 40.727257>,  <34.395813, 35.557705, 40.898830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631004, 35.283394, 40.727257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032231, 0.510003, -0.859568,
		0.808236, 0.519230, 0.277766,
		0.587976, -0.685782, -0.428938,
		34.807396, 35.077660, 40.598576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685417, 35.929073, 40.401711>,  <34.395813, 35.557705, 40.898830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685417, 35.929073, 40.401711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788540, 35.561844, 40.281261>,  <34.850414, 35.341507, 40.208992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788540, 35.561844, 40.281261>,  <34.685417, 35.929073, 40.401711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788540, 35.561844, 40.281261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163517, 0.348620, -0.922890,
		0.952258, 0.188693, 0.239998,
		0.257811, -0.918074, -0.301121,
		34.865883, 35.286423, 40.190926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173306, 36.112804, 39.855850>,  <34.685417, 35.929073, 40.401711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173306, 36.112804, 39.855850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.092659, 35.726353, 39.791412>,  <35.044270, 35.494484, 39.752750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.092659, 35.726353, 39.791412>,  <35.173306, 36.112804, 39.855850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092659, 35.726353, 39.791412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078161, 0.179816, -0.980590,
		0.976340, -0.185116, -0.111768,
		-0.201620, -0.966125, -0.161093,
		35.032173, 35.436516, 39.743084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856461, 36.155388, 39.684177>,  <35.173306, 36.112804, 39.855850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856461, 36.155388, 39.684177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.976021, 36.535568, 39.649982>,  <36.047756, 36.763676, 39.629467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.976021, 36.535568, 39.649982>,  <35.856461, 36.155388, 39.684177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976021, 36.535568, 39.649982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240114, 0.011790, 0.970673,
		0.923581, -0.310662, -0.224692,
		0.298902, 0.950447, -0.085484,
		36.065693, 36.820702, 39.624336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516918, 36.099472, 39.898613>,  <35.856461, 36.155388, 39.684177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516918, 36.099472, 39.898613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.373898, 36.472225, 39.923107>,  <36.288086, 36.695877, 39.937805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.373898, 36.472225, 39.923107>,  <36.516918, 36.099472, 39.898613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373898, 36.472225, 39.923107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321359, 0.061207, 0.944977,
		0.876860, 0.357558, -0.321354,
		-0.357553, 0.931883, 0.061234,
		36.266632, 36.751789, 39.941479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098877, 36.394325, 40.160591>,  <36.516918, 36.099472, 39.898613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098877, 36.394325, 40.160591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792042, 36.639114, 40.237602>,  <36.607941, 36.785988, 40.283810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792042, 36.639114, 40.237602>,  <37.098877, 36.394325, 40.160591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792042, 36.639114, 40.237602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332540, 0.122653, 0.935079,
		0.548631, 0.781309, -0.297591,
		-0.767086, 0.611974, 0.192525,
		36.561916, 36.822708, 40.295361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398701, 36.991409, 40.454678>,  <37.098877, 36.394325, 40.160591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398701, 36.991409, 40.454678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.014191, 37.006454, 40.563877>,  <36.783485, 37.015480, 40.629398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.014191, 37.006454, 40.563877>,  <37.398701, 36.991409, 40.454678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014191, 37.006454, 40.563877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275374, 0.169292, 0.946314,
		-0.010623, 0.984848, -0.173094,
		-0.961278, 0.037613, 0.273000,
		36.725807, 37.017738, 40.645779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370651, 37.553997, 40.896782>,  <37.398701, 36.991409, 40.454678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370651, 37.553997, 40.896782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.039539, 37.346714, 40.982800>,  <36.840874, 37.222343, 41.034409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.039539, 37.346714, 40.982800>,  <37.370651, 37.553997, 40.896782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039539, 37.346714, 40.982800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205920, 0.075927, 0.975619,
		-0.521897, 0.851881, 0.043857,
		-0.827781, -0.518203, 0.215045,
		36.791206, 37.191254, 41.047314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938362, 37.929726, 41.479744>,  <37.370651, 37.553997, 40.896782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938362, 37.929726, 41.479744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817577, 37.548435, 41.485035>,  <36.745106, 37.319660, 41.488209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817577, 37.548435, 41.485035>,  <36.938362, 37.929726, 41.479744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817577, 37.548435, 41.485035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185711, -0.045211, 0.981564,
		-0.935056, 0.298851, 0.190677,
		-0.301962, -0.953228, 0.013225,
		36.726990, 37.262466, 41.489002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507122, 37.924587, 42.076168>,  <36.938362, 37.929726, 41.479744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507122, 37.924587, 42.076168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602947, 37.539452, 42.026283>,  <36.660442, 37.308369, 41.996353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602947, 37.539452, 42.026283>,  <36.507122, 37.924587, 42.076168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602947, 37.539452, 42.026283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185017, -0.080827, 0.979406,
		-0.953090, -0.257701, 0.158778,
		0.239560, -0.962838, -0.124714,
		36.674816, 37.250599, 41.988869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083416, 37.601547, 42.566868>,  <36.507122, 37.924587, 42.076168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083416, 37.601547, 42.566868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371971, 37.338352, 42.480465>,  <36.545105, 37.180435, 42.428623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371971, 37.338352, 42.480465>,  <36.083416, 37.601547, 42.566868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371971, 37.338352, 42.480465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106431, -0.202869, 0.973405,
		-0.684309, -0.725188, -0.076316,
		0.721383, -0.657987, -0.216007,
		36.588387, 37.140957, 42.415661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824589, 36.967323, 42.853535>,  <36.083416, 37.601547, 42.566868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824589, 36.967323, 42.853535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222610, 36.937542, 42.827232>,  <36.461422, 36.919674, 42.811451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222610, 36.937542, 42.827232>,  <35.824589, 36.967323, 42.853535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222610, 36.937542, 42.827232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038417, -0.322041, 0.945946,
		-0.091602, -0.943794, -0.317588,
		0.995055, -0.074450, -0.065757,
		36.521126, 36.915207, 42.807507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030079, 36.363892, 43.285503>,  <35.824589, 36.967323, 42.853535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030079, 36.363892, 43.285503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.381592, 36.547497, 43.233273>,  <36.592499, 36.657661, 43.201935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.381592, 36.547497, 43.233273>,  <36.030079, 36.363892, 43.285503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381592, 36.547497, 43.233273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210800, -0.127874, 0.969129,
		0.428149, -0.879177, -0.209134,
		0.878779, 0.459017, -0.130581,
		36.645226, 36.685204, 43.194099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572083, 35.846653, 43.341564>,  <36.030079, 36.363892, 43.285503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572083, 35.846653, 43.341564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758808, 36.195171, 43.402130>,  <36.870842, 36.404282, 43.438469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758808, 36.195171, 43.402130>,  <36.572083, 35.846653, 43.341564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758808, 36.195171, 43.402130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326733, -0.329020, 0.885997,
		0.821787, -0.364120, -0.438272,
		0.466810, 0.871299, 0.151414,
		36.898849, 36.456562, 43.447556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332787, 35.664658, 43.592579>,  <36.572083, 35.846653, 43.341564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332787, 35.664658, 43.592579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218967, 36.026596, 43.719246>,  <37.150677, 36.243759, 43.795246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218967, 36.026596, 43.719246>,  <37.332787, 35.664658, 43.592579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218967, 36.026596, 43.719246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292401, -0.232666, 0.927560,
		0.912979, 0.356534, -0.198373,
		-0.284552, 0.904848, 0.316670,
		37.133602, 36.298050, 43.814247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846809, 35.882572, 44.042248>,  <37.332787, 35.664658, 43.592579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846809, 35.882572, 44.042248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.556938, 36.145458, 44.125099>,  <37.383015, 36.303188, 44.174809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.556938, 36.145458, 44.125099>,  <37.846809, 35.882572, 44.042248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556938, 36.145458, 44.125099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272795, -0.002408, 0.962069,
		0.632786, 0.753699, -0.177540,
		-0.724683, 0.657216, 0.207129,
		37.339535, 36.342625, 44.187237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186016, 36.428383, 44.510288>,  <37.846809, 35.882572, 44.042248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186016, 36.428383, 44.510288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789673, 36.439205, 44.563145>,  <37.551865, 36.445698, 44.594856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789673, 36.439205, 44.563145>,  <38.186016, 36.428383, 44.510288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789673, 36.439205, 44.563145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129872, -0.073080, 0.988834,
		0.036412, 0.996959, 0.068899,
		-0.990862, 0.027057, 0.132138,
		37.492413, 36.447323, 44.602787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863720, 36.875298, 44.538181>,  <38.186016, 36.428383, 44.510288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863720, 36.875298, 44.538181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.203735, 36.666672, 44.508781>,  <39.407745, 36.541496, 44.491142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.203735, 36.666672, 44.508781>,  <38.863720, 36.875298, 44.538181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203735, 36.666672, 44.508781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025775, 0.098187, -0.994834,
		0.526090, 0.847542, 0.070019,
		0.850038, -0.521567, -0.073501,
		39.458748, 36.510201, 44.486732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341152, 37.263256, 44.266861>,  <38.863720, 36.875298, 44.538181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341152, 37.263256, 44.266861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465866, 36.892300, 44.184177>,  <39.540695, 36.669724, 44.134567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465866, 36.892300, 44.184177>,  <39.341152, 37.263256, 44.266861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465866, 36.892300, 44.184177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026642, 0.225997, -0.973764,
		0.949778, 0.298100, 0.095171,
		0.311787, -0.927395, -0.206705,
		39.559402, 36.614082, 44.122166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934200, 37.398964, 43.797688>,  <39.341152, 37.263256, 44.266861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934200, 37.398964, 43.797688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.827049, 37.018715, 43.735008>,  <39.762756, 36.790565, 43.697399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.827049, 37.018715, 43.735008>,  <39.934200, 37.398964, 43.797688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827049, 37.018715, 43.735008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234290, 0.093487, -0.967661,
		0.934531, -0.295929, 0.197679,
		-0.267879, -0.950624, -0.156700,
		39.746685, 36.733528, 43.688000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422932, 37.136730, 43.273422>,  <39.934200, 37.398964, 43.797688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422932, 37.136730, 43.273422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112873, 36.884029, 43.271030>,  <39.926838, 36.732410, 43.269596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112873, 36.884029, 43.271030>,  <40.422932, 37.136730, 43.273422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112873, 36.884029, 43.271030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010789, 0.022697, -0.999684,
		0.631686, -0.774840, -0.024410,
		-0.775149, -0.631750, -0.005978,
		39.880329, 36.694504, 43.269238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671162, 36.675243, 42.790714>,  <40.422932, 37.136730, 43.273422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671162, 36.675243, 42.790714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.279526, 36.597813, 42.815712>,  <40.044544, 36.551353, 42.830711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.279526, 36.597813, 42.815712>,  <40.671162, 36.675243, 42.790714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279526, 36.597813, 42.815712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018403, -0.221674, -0.974947,
		0.202585, -0.955713, 0.213477,
		-0.979092, -0.193581, 0.062495,
		39.985798, 36.539738, 42.834461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585030, 35.969437, 42.464550>,  <40.671162, 36.675243, 42.790714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585030, 35.969437, 42.464550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.250935, 36.189377, 42.462116>,  <40.050476, 36.321342, 42.460655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.250935, 36.189377, 42.462116>,  <40.585030, 35.969437, 42.464550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250935, 36.189377, 42.462116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093629, -0.153117, -0.983763,
		-0.541857, -0.821107, 0.179372,
		-0.835240, 0.549853, -0.006088,
		40.000362, 36.354332, 42.460289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159542, 35.632942, 42.055809>,  <40.585030, 35.969437, 42.464550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159542, 35.632942, 42.055809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011784, 36.004650, 42.054642>,  <39.923130, 36.227676, 42.053940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011784, 36.004650, 42.054642>,  <40.159542, 35.632942, 42.055809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011784, 36.004650, 42.054642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111760, -0.047546, -0.992597,
		-0.922528, -0.366332, 0.121419,
		-0.369393, 0.929269, -0.002921,
		39.900967, 36.283432, 42.053764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720615, 35.544369, 41.613651>,  <40.159542, 35.632942, 42.055809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720615, 35.544369, 41.613651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736084, 35.944023, 41.619694>,  <39.745365, 36.183815, 41.623318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736084, 35.944023, 41.619694>,  <39.720615, 35.544369, 41.613651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736084, 35.944023, 41.619694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245948, 0.024168, -0.968982,
		-0.968511, 0.033756, 0.246671,
		0.038670, 0.999138, 0.015104,
		39.747684, 36.243763, 41.624226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265007, 35.796631, 41.152000>,  <39.720615, 35.544369, 41.613651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265007, 35.796631, 41.152000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.482342, 36.131187, 41.180943>,  <39.612743, 36.331921, 41.198307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.482342, 36.131187, 41.180943>,  <39.265007, 35.796631, 41.152000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482342, 36.131187, 41.180943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087347, 0.142042, -0.985999,
		-0.834956, 0.529414, 0.150233,
		0.543341, 0.836388, 0.072356,
		39.645344, 36.382103, 41.202648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949921, 36.281815, 40.817513>,  <39.265007, 35.796631, 41.152000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949921, 36.281815, 40.817513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.317749, 36.438843, 40.810852>,  <39.538445, 36.533062, 40.806854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.317749, 36.438843, 40.810852>,  <38.949921, 36.281815, 40.817513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317749, 36.438843, 40.810852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107978, 0.211731, -0.971345,
		-0.377800, 0.895017, 0.237091,
		0.919569, 0.392574, -0.016651,
		39.593620, 36.556614, 40.805859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922680, 36.998898, 40.450890>,  <38.949921, 36.281815, 40.817513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922680, 36.998898, 40.450890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.294201, 36.855305, 40.414124>,  <39.517113, 36.769150, 40.392063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.294201, 36.855305, 40.414124>,  <38.922680, 36.998898, 40.450890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294201, 36.855305, 40.414124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021621, 0.195130, -0.980539,
		0.369935, 0.912718, 0.173477,
		0.928806, -0.358985, -0.091919,
		39.572842, 36.747608, 40.386547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142189, 37.431541, 39.989624>,  <38.922680, 36.998898, 40.450890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142189, 37.431541, 39.989624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.410500, 37.134914, 39.994293>,  <39.571487, 36.956940, 39.997097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.410500, 37.134914, 39.994293>,  <39.142189, 37.431541, 39.989624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410500, 37.134914, 39.994293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156686, 0.126306, -0.979539,
		0.724919, 0.658882, 0.200916,
		0.670777, -0.741567, 0.011676,
		39.611732, 36.912445, 39.997795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713692, 37.681755, 39.614815>,  <39.142189, 37.431541, 39.989624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713692, 37.681755, 39.614815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.780407, 37.287502, 39.604164>,  <39.820435, 37.050949, 39.597775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.780407, 37.287502, 39.604164>,  <39.713692, 37.681755, 39.614815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780407, 37.287502, 39.604164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182990, 0.057474, -0.981433,
		0.968864, 0.158818, 0.189947,
		0.166786, -0.985634, -0.026622,
		39.830444, 36.991814, 39.596176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417782, 37.526527, 39.361862>,  <39.713692, 37.681755, 39.614815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417782, 37.526527, 39.361862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.189568, 37.204105, 39.298916>,  <40.052639, 37.010651, 39.261150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.189568, 37.204105, 39.298916>,  <40.417782, 37.526527, 39.361862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189568, 37.204105, 39.298916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192299, 0.055170, -0.979784,
		0.798443, -0.589262, 0.123527,
		-0.570535, -0.806056, -0.157364,
		40.018406, 36.962288, 39.251705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.094830, 26.836067, 33.387054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279236, 26.687071, 33.709225>,  <27.389879, 26.597673, 33.902527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279236, 26.687071, 33.709225>,  <27.094830, 26.836067, 33.387054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279236, 26.687071, 33.709225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354282, 0.754905, 0.551908,
		-0.813604, -0.539787, 0.216055,
		0.461013, -0.372490, 0.805430,
		27.417540, 26.575323, 33.950855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632427, 26.871820, 33.842922>,  <27.094830, 26.836067, 33.387054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632427, 26.871820, 33.842922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961195, 26.849398, 34.069660>,  <27.158455, 26.835945, 34.205704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961195, 26.849398, 34.069660>,  <26.632427, 26.871820, 33.842922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961195, 26.849398, 34.069660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300884, 0.802253, 0.515615,
		-0.483653, -0.594347, 0.642520,
		0.821918, -0.056055, 0.566841,
		27.207769, 26.832581, 34.239712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445738, 26.981947, 34.588589>,  <26.632427, 26.871820, 33.842922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445738, 26.981947, 34.588589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839773, 27.014288, 34.649338>,  <27.076195, 27.033691, 34.685787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839773, 27.014288, 34.649338>,  <26.445738, 26.981947, 34.588589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839773, 27.014288, 34.649338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163442, 0.715482, 0.679244,
		-0.053744, -0.693937, 0.718027,
		0.985088, 0.080850, 0.151872,
		27.135300, 27.038544, 34.694901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515982, 27.195654, 35.256428>,  <26.445738, 26.981947, 34.588589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515982, 27.195654, 35.256428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877869, 27.282328, 35.109711>,  <27.095001, 27.334332, 35.021683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877869, 27.282328, 35.109711>,  <26.515982, 27.195654, 35.256428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877869, 27.282328, 35.109711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057619, 0.790834, 0.609313,
		0.422096, -0.572391, 0.702997,
		0.904718, 0.216682, -0.366788,
		27.149284, 27.347332, 34.999676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927315, 27.309607, 35.871983>,  <26.515982, 27.195654, 35.256428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927315, 27.309607, 35.871983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.079315, 27.499311, 35.554321>,  <27.170515, 27.613134, 35.363724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.079315, 27.499311, 35.554321>,  <26.927315, 27.309607, 35.871983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079315, 27.499311, 35.554321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087345, 0.836320, 0.541239,
		0.920852, -0.275038, 0.276380,
		0.380003, 0.474261, -0.794150,
		27.193316, 27.641590, 35.316074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475487, 27.614786, 36.109043>,  <26.927315, 27.309607, 35.871983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475487, 27.614786, 36.109043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.385174, 27.829306, 35.783737>,  <27.330986, 27.958017, 35.588554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.385174, 27.829306, 35.783737>,  <27.475487, 27.614786, 36.109043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385174, 27.829306, 35.783737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019594, 0.837157, 0.546611,
		0.973980, 0.107481, -0.199526,
		-0.225784, 0.536298, -0.813268,
		27.317438, 27.990194, 35.539757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916937, 28.196701, 36.201420>,  <27.475487, 27.614786, 36.109043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916937, 28.196701, 36.201420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615927, 28.284107, 35.952919>,  <27.435320, 28.336552, 35.803818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615927, 28.284107, 35.952919>,  <27.916937, 28.196701, 36.201420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615927, 28.284107, 35.952919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143443, 0.866312, 0.478464,
		0.642750, 0.449172, -0.620579,
		-0.752527, 0.218515, -0.621252,
		27.390169, 28.349661, 35.766544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009960, 28.848930, 36.189022>,  <27.916937, 28.196701, 36.201420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009960, 28.848930, 36.189022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661583, 28.799568, 35.998768>,  <27.452557, 28.769951, 35.884617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661583, 28.799568, 35.998768>,  <28.009960, 28.848930, 36.189022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661583, 28.799568, 35.998768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311480, 0.887290, 0.340142,
		0.380050, 0.444396, -0.811218,
		-0.870943, -0.123407, -0.475635,
		27.400299, 28.762547, 35.856079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893723, 29.512718, 35.843861>,  <28.009960, 28.848930, 36.189022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893723, 29.512718, 35.843861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524845, 29.358252, 35.852226>,  <27.303518, 29.265572, 35.857246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524845, 29.358252, 35.852226>,  <27.893723, 29.512718, 35.843861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524845, 29.358252, 35.852226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369221, 0.895238, 0.249448,
		-0.115055, 0.222316, -0.968162,
		-0.922192, -0.386166, 0.020918,
		27.248188, 29.242401, 35.858501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474220, 29.977633, 35.468952>,  <27.893723, 29.512718, 35.843861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474220, 29.977633, 35.468952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.213264, 29.780197, 35.698997>,  <27.056692, 29.661736, 35.837025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.213264, 29.780197, 35.698997>,  <27.474220, 29.977633, 35.468952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213264, 29.780197, 35.698997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519217, 0.843870, 0.135268,
		-0.552090, -0.210362, -0.806811,
		-0.652388, -0.493591, 0.575115,
		27.017548, 29.632120, 35.871532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859409, 30.116081, 35.176716>,  <27.474220, 29.977633, 35.468952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859409, 30.116081, 35.176716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772556, 30.017328, 35.554478>,  <26.720446, 29.958076, 35.781136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772556, 30.017328, 35.554478>,  <26.859409, 30.116081, 35.176716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772556, 30.017328, 35.554478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413505, 0.899657, 0.140114,
		-0.884233, -0.360094, -0.297429,
		-0.217130, -0.246882, 0.944407,
		26.707417, 29.943264, 35.837799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151466, 30.285316, 35.315594>,  <26.859409, 30.116081, 35.176716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151466, 30.285316, 35.315594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321123, 30.305159, 35.677288>,  <26.422918, 30.317064, 35.894306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321123, 30.305159, 35.677288>,  <26.151466, 30.285316, 35.315594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321123, 30.305159, 35.677288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434573, 0.887168, 0.155173,
		-0.794511, -0.458772, 0.397844,
		0.424143, 0.049606, 0.904235,
		26.448366, 30.320040, 35.948559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599785, 30.229818, 35.730373>,  <26.151466, 30.285316, 35.315594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599785, 30.229818, 35.730373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.908478, 30.430170, 35.887112>,  <26.093695, 30.550381, 35.981155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.908478, 30.430170, 35.887112>,  <25.599785, 30.229818, 35.730373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908478, 30.430170, 35.887112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500271, 0.858569, -0.112194,
		-0.392626, -0.109447, 0.913163,
		0.771734, 0.500880, 0.391849,
		26.139997, 30.580435, 36.004665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333897, 30.724159, 35.973454>,  <25.599785, 30.229818, 35.730373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333897, 30.724159, 35.973454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.707792, 30.862173, 36.007423>,  <25.932131, 30.944981, 36.027805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.707792, 30.862173, 36.007423>,  <25.333897, 30.724159, 35.973454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707792, 30.862173, 36.007423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345427, 0.938387, -0.010470,
		-0.083306, -0.019549, 0.996332,
		0.934741, 0.345033, 0.084926,
		25.988214, 30.965683, 36.032902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210646, 31.421225, 36.283081>,  <25.333897, 30.724159, 35.973454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210646, 31.421225, 36.283081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.592533, 31.430977, 36.164474>,  <25.821665, 31.436829, 36.093311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.592533, 31.430977, 36.164474>,  <25.210646, 31.421225, 36.283081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592533, 31.430977, 36.164474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015546, 0.999363, 0.032125,
		0.297111, -0.026060, 0.954487,
		0.954716, 0.024383, -0.296517,
		25.878948, 31.438292, 36.075520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478893, 31.881300, 36.724300>,  <25.210646, 31.421225, 36.283081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478893, 31.881300, 36.724300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.707499, 31.859421, 36.396793>,  <25.844662, 31.846292, 36.200291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.707499, 31.859421, 36.396793>,  <25.478893, 31.881300, 36.724300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707499, 31.859421, 36.396793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008873, 0.997306, -0.072820,
		0.820544, 0.048883, 0.569489,
		0.571515, -0.054699, -0.818767,
		25.878952, 31.843012, 36.151165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097965, 32.383583, 36.820992>,  <25.478893, 31.881300, 36.724300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097965, 32.383583, 36.820992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.057119, 32.302101, 36.431515>,  <26.032612, 32.253212, 36.197830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.057119, 32.302101, 36.431515>,  <26.097965, 32.383583, 36.820992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057119, 32.302101, 36.431515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140771, 0.966000, -0.216856,
		0.984762, -0.159212, -0.069966,
		-0.102113, -0.203703, -0.973693,
		26.026485, 32.240990, 36.139408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401266, 33.022438, 36.591942>,  <26.097965, 32.383583, 36.820992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401266, 33.022438, 36.591942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.237663, 32.871304, 36.259689>,  <26.139502, 32.780624, 36.060337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.237663, 32.871304, 36.259689>,  <26.401266, 33.022438, 36.591942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237663, 32.871304, 36.259689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185031, 0.925683, -0.329961,
		0.893575, 0.018736, -0.448522,
		-0.409007, -0.377835, -0.830634,
		26.114962, 32.757954, 36.010498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658342, 33.403214, 36.107929>,  <26.401266, 33.022438, 36.591942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658342, 33.403214, 36.107929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.342121, 33.237133, 35.927868>,  <26.152388, 33.137486, 35.819832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.342121, 33.237133, 35.927868>,  <26.658342, 33.403214, 36.107929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342121, 33.237133, 35.927868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183475, 0.861887, -0.472745,
		0.584262, -0.291139, -0.757546,
		-0.790554, -0.415197, -0.450151,
		26.104956, 33.112576, 35.792824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756006, 33.525646, 35.370945>,  <26.658342, 33.403214, 36.107929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756006, 33.525646, 35.370945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.371901, 33.484394, 35.474682>,  <26.141438, 33.459641, 35.536922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.371901, 33.484394, 35.474682>,  <26.756006, 33.525646, 35.370945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371901, 33.484394, 35.474682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232104, 0.811124, -0.536848,
		-0.154989, -0.575710, -0.802830,
		-0.960263, -0.103135, 0.259340,
		26.083822, 33.453453, 35.552483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314415, 34.108498, 35.418903>,  <26.756006, 33.525646, 35.370945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314415, 34.108498, 35.418903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677980, 34.263813, 35.358105>,  <27.896120, 34.357002, 35.321625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677980, 34.263813, 35.358105>,  <27.314415, 34.108498, 35.418903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677980, 34.263813, 35.358105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225519, -0.764360, -0.604065,
		-0.350735, 0.514765, -0.782305,
		0.908915, 0.388292, -0.151998,
		27.950655, 34.380299, 35.312504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434645, 33.875050, 34.774860>,  <27.314415, 34.108498, 35.418903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434645, 33.875050, 34.774860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801611, 33.928062, 34.924942>,  <28.021791, 33.959869, 35.014992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801611, 33.928062, 34.924942>,  <27.434645, 33.875050, 34.774860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801611, 33.928062, 34.924942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357090, -0.690271, -0.629296,
		0.175591, 0.711309, -0.680593,
		0.917417, 0.132534, 0.375207,
		28.076836, 33.967823, 35.037506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928499, 33.886826, 34.150852>,  <27.434645, 33.875050, 34.774860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928499, 33.886826, 34.150852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.116997, 33.783028, 34.488037>,  <28.230095, 33.720749, 34.690350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.116997, 33.783028, 34.488037>,  <27.928499, 33.886826, 34.150852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116997, 33.783028, 34.488037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380096, -0.802689, -0.459584,
		0.795898, 0.536984, -0.279631,
		0.471246, -0.259495, 0.842965,
		28.258371, 33.705177, 34.740925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535208, 33.676361, 33.917122>,  <27.928499, 33.886826, 34.150852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535208, 33.676361, 33.917122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536259, 33.529522, 34.289192>,  <28.536890, 33.441418, 34.512436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536259, 33.529522, 34.289192>,  <28.535208, 33.676361, 33.917122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536259, 33.529522, 34.289192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487859, -0.811504, -0.321644,
		0.872918, 0.454642, 0.176959,
		0.002630, -0.367100, 0.930178,
		28.537048, 33.419392, 34.568245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219702, 33.312450, 34.035866>,  <28.535208, 33.676361, 33.917122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219702, 33.312450, 34.035866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970758, 33.173615, 34.316494>,  <28.821392, 33.090313, 34.484871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970758, 33.173615, 34.316494>,  <29.219702, 33.312450, 34.035866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970758, 33.173615, 34.316494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300643, -0.933556, -0.195157,
		0.722693, 0.089466, 0.685354,
		-0.622357, -0.347085, 0.701572,
		28.784052, 33.069489, 34.526966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599943, 32.936634, 34.450466>,  <29.219702, 33.312450, 34.035866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599943, 32.936634, 34.450466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253407, 32.793304, 34.589642>,  <29.045485, 32.707306, 34.673145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253407, 32.793304, 34.589642>,  <29.599943, 32.936634, 34.450466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253407, 32.793304, 34.589642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299777, -0.930248, -0.211593,
		0.399486, -0.079008, 0.913328,
		-0.866340, -0.358324, 0.347937,
		28.993505, 32.685806, 34.694023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708839, 32.444664, 35.013878>,  <29.599943, 32.936634, 34.450466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708839, 32.444664, 35.013878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356634, 32.357922, 34.845272>,  <29.145311, 32.305874, 34.744110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356634, 32.357922, 34.845272>,  <29.708839, 32.444664, 35.013878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356634, 32.357922, 34.845272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280398, -0.955243, -0.094280,
		-0.382200, -0.201206, 0.901909,
		-0.880511, -0.216860, -0.421512,
		29.092482, 32.292862, 34.718819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367634, 31.792004, 35.349686>,  <29.708839, 32.444664, 35.013878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367634, 31.792004, 35.349686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189053, 31.836483, 34.994537>,  <29.081903, 31.863171, 34.781448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189053, 31.836483, 34.994537>,  <29.367634, 31.792004, 35.349686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189053, 31.836483, 34.994537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177800, -0.961438, -0.209819,
		-0.876965, -0.251538, 0.409465,
		-0.446453, 0.111201, -0.887871,
		29.055117, 31.869843, 34.728176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900602, 31.176647, 35.345631>,  <29.367634, 31.792004, 35.349686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900602, 31.176647, 35.345631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.957550, 31.302921, 34.970383>,  <28.991718, 31.378685, 34.745232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.957550, 31.302921, 34.970383>,  <28.900602, 31.176647, 35.345631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957550, 31.302921, 34.970383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126335, -0.945821, -0.299103,
		-0.981718, -0.075934, -0.174538,
		0.142370, 0.315685, -0.938123,
		29.000261, 31.397627, 34.688946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660206, 30.654613, 34.975788>,  <28.900602, 31.176647, 35.345631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660206, 30.654613, 34.975788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880880, 30.864588, 34.716534>,  <29.013285, 30.990572, 34.560982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880880, 30.864588, 34.716534>,  <28.660206, 30.654613, 34.975788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880880, 30.864588, 34.716534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279345, -0.848509, -0.449443,
		-0.785880, 0.066898, -0.614749,
		0.551687, 0.524936, -0.648139,
		29.046387, 31.022068, 34.522091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446800, 30.348370, 34.288170>,  <28.660206, 30.654613, 34.975788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446800, 30.348370, 34.288170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790071, 30.537651, 34.208565>,  <28.996035, 30.651220, 34.160801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790071, 30.537651, 34.208565>,  <28.446800, 30.348370, 34.288170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790071, 30.537651, 34.208565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394872, -0.856221, -0.333111,
		-0.328029, 0.207284, -0.921646,
		0.858180, 0.473202, -0.199015,
		29.047525, 30.679611, 34.148861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558435, 30.092474, 33.694782>,  <28.446800, 30.348370, 34.288170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558435, 30.092474, 33.694782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916267, 30.237541, 33.799244>,  <29.130966, 30.324581, 33.861919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916267, 30.237541, 33.799244>,  <28.558435, 30.092474, 33.694782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916267, 30.237541, 33.799244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443963, -0.788170, -0.426246,
		0.051248, 0.497254, -0.866090,
		0.894579, 0.362667, 0.261154,
		29.184641, 30.346342, 33.877590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970802, 30.111858, 33.098125>,  <28.558435, 30.092474, 33.694782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970802, 30.111858, 33.098125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225163, 30.105228, 33.406761>,  <29.377779, 30.101252, 33.591942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225163, 30.105228, 33.406761>,  <28.970802, 30.111858, 33.098125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225163, 30.105228, 33.406761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478910, -0.775524, -0.411349,
		0.605205, 0.631101, -0.485220,
		0.635902, -0.016574, 0.771592,
		29.415934, 30.100256, 33.638237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622837, 29.900152, 32.789886>,  <28.970802, 30.111858, 33.098125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622837, 29.900152, 32.789886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658228, 29.836121, 33.183140>,  <29.679462, 29.797701, 33.419090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658228, 29.836121, 33.183140>,  <29.622837, 29.900152, 32.789886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658228, 29.836121, 33.183140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274529, -0.944856, -0.178554,
		0.957500, 0.285695, -0.039650,
		0.088476, -0.160080, 0.983131,
		29.684771, 29.788097, 33.478081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306164, 29.612574, 32.868835>,  <29.622837, 29.900152, 32.789886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306164, 29.612574, 32.868835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099380, 29.515591, 33.197220>,  <29.975311, 29.457401, 33.394249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099380, 29.515591, 33.197220>,  <30.306164, 29.612574, 32.868835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099380, 29.515591, 33.197220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364485, -0.930113, -0.045179,
		0.774536, 0.275871, 0.569200,
		-0.516957, -0.242458, 0.820957,
		29.944294, 29.442854, 33.443508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716505, 29.164276, 33.407684>,  <30.306164, 29.612574, 32.868835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716505, 29.164276, 33.407684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327112, 29.085663, 33.454510>,  <30.093475, 29.038494, 33.482605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327112, 29.085663, 33.454510>,  <30.716505, 29.164276, 33.407684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327112, 29.085663, 33.454510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193009, -0.980347, -0.040825,
		0.122785, -0.017148, 0.992285,
		-0.973484, -0.196533, 0.117063,
		30.035067, 29.026703, 33.489628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654188, 28.649416, 33.986835>,  <30.716505, 29.164276, 33.407684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654188, 28.649416, 33.986835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315996, 28.641705, 33.773373>,  <30.113081, 28.637077, 33.645294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315996, 28.641705, 33.773373>,  <30.654188, 28.649416, 33.986835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315996, 28.641705, 33.773373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095366, -0.988734, -0.115371,
		-0.525422, -0.148437, 0.837793,
		-0.845480, -0.019278, -0.533659,
		30.062351, 28.635921, 33.613274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466085, 28.115089, 34.289856>,  <30.654188, 28.649416, 33.986835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466085, 28.115089, 34.289856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226894, 28.133928, 33.969807>,  <30.083380, 28.145231, 33.777775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226894, 28.133928, 33.969807>,  <30.466085, 28.115089, 34.289856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226894, 28.133928, 33.969807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008139, -0.998578, -0.052695,
		-0.801471, -0.024998, 0.597511,
		-0.597978, 0.047097, -0.800128,
		30.047501, 28.148058, 33.729767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058769, 27.623230, 34.399815>,  <30.466085, 28.115089, 34.289856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058769, 27.623230, 34.399815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971838, 27.685919, 34.014439>,  <29.919680, 27.723532, 33.783215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971838, 27.685919, 34.014439>,  <30.058769, 27.623230, 34.399815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971838, 27.685919, 34.014439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129167, -0.982964, -0.130760,
		-0.967515, 0.096026, 0.233868,
		-0.217328, 0.156720, -0.963435,
		29.906639, 27.732935, 33.725407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597738, 27.168009, 34.300632>,  <30.058769, 27.623230, 34.399815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597738, 27.168009, 34.300632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733168, 27.250616, 33.933434>,  <29.814425, 27.300180, 33.713116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733168, 27.250616, 33.933434>,  <29.597738, 27.168009, 34.300632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733168, 27.250616, 33.933434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025049, -0.973293, -0.228197,
		-0.940606, 0.100256, -0.324359,
		0.338574, 0.206519, -0.917996,
		29.834740, 27.312572, 33.658035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226377, 26.739704, 33.891373>,  <29.597738, 27.168009, 34.300632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226377, 26.739704, 33.891373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553829, 26.828375, 33.679447>,  <29.750299, 26.881577, 33.552292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553829, 26.828375, 33.679447>,  <29.226377, 26.739704, 33.891373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553829, 26.828375, 33.679447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035750, -0.940387, -0.338222,
		-0.573209, 0.257937, -0.777753,
		0.818629, 0.221677, -0.529817,
		29.799417, 26.894878, 33.520500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159777, 26.381088, 33.214191>,  <29.226377, 26.739704, 33.891373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159777, 26.381088, 33.214191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542511, 26.451117, 33.306984>,  <29.772152, 26.493134, 33.362659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542511, 26.451117, 33.306984>,  <29.159777, 26.381088, 33.214191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542511, 26.451117, 33.306984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243598, -0.918445, -0.311639,
		0.158500, 0.354697, -0.921449,
		0.956837, 0.175069, 0.231978,
		29.829561, 26.503637, 33.376575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.393150, 34.445553, 44.126305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257809, 34.069263, 44.135818>,  <39.176605, 33.843491, 44.141525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257809, 34.069263, 44.135818>,  <39.393150, 34.445553, 44.126305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257809, 34.069263, 44.135818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031888, 0.036723, 0.998817,
		-0.940479, 0.337194, -0.042423,
		-0.338353, -0.940719, 0.023785,
		39.156303, 33.787048, 44.142956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802193, 34.396946, 44.572575>,  <39.393150, 34.445553, 44.126305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802193, 34.396946, 44.572575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.948883, 34.024815, 44.571888>,  <39.036896, 33.801537, 44.571476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.948883, 34.024815, 44.571888>,  <38.802193, 34.396946, 44.572575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948883, 34.024815, 44.571888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158508, -0.064296, 0.985262,
		-0.916727, -0.361049, -0.171044,
		0.366725, -0.930328, -0.001713,
		39.058899, 33.745716, 44.571373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537579, 34.285988, 45.144753>,  <38.802193, 34.396946, 44.572575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537579, 34.285988, 45.144753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788010, 33.981491, 45.077183>,  <38.938267, 33.798794, 45.036640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788010, 33.981491, 45.077183>,  <38.537579, 34.285988, 45.144753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788010, 33.981491, 45.077183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094617, -0.140866, 0.985497,
		-0.773999, -0.632980, -0.016166,
		0.626078, -0.761244, -0.168921,
		38.975834, 33.753117, 45.026505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377304, 33.808601, 45.614773>,  <38.537579, 34.285988, 45.144753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377304, 33.808601, 45.614773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748600, 33.704880, 45.508095>,  <38.971378, 33.642647, 45.444088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748600, 33.704880, 45.508095>,  <38.377304, 33.808601, 45.614773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748600, 33.704880, 45.508095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251243, -0.091667, 0.963574,
		-0.274310, -0.961434, -0.019940,
		0.928241, -0.259308, -0.266699,
		39.027073, 33.627087, 45.428085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503277, 33.212120, 46.010517>,  <38.377304, 33.808601, 45.614773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503277, 33.212120, 46.010517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881268, 33.294697, 45.909008>,  <39.108063, 33.344242, 45.848103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881268, 33.294697, 45.909008>,  <38.503277, 33.212120, 46.010517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881268, 33.294697, 45.909008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320404, -0.427517, 0.845322,
		0.066020, -0.880120, -0.470139,
		0.944978, 0.206442, -0.253770,
		39.164761, 33.356628, 45.832878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892456, 32.592400, 46.074768>,  <38.503277, 33.212120, 46.010517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892456, 32.592400, 46.074768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134777, 32.910507, 46.084095>,  <39.280170, 33.101372, 46.089691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134777, 32.910507, 46.084095>,  <38.892456, 32.592400, 46.074768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134777, 32.910507, 46.084095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265404, -0.229630, 0.936393,
		0.750039, -0.561084, -0.350179,
		0.605807, 0.795270, 0.023318,
		39.316521, 33.149090, 46.091091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490818, 32.407272, 46.429390>,  <38.892456, 32.592400, 46.074768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490818, 32.407272, 46.429390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.527435, 32.803688, 46.468288>,  <39.549404, 33.041538, 46.491627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.527435, 32.803688, 46.468288>,  <39.490818, 32.407272, 46.429390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527435, 32.803688, 46.468288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641633, -0.133384, 0.755325,
		0.761529, -0.006746, -0.648095,
		0.091541, 0.991041, 0.097247,
		39.554897, 33.101002, 46.497463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077511, 32.432533, 46.664764>,  <39.490818, 32.407272, 46.429390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077511, 32.432533, 46.664764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.967403, 32.800770, 46.775570>,  <39.901340, 33.021713, 46.842052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.967403, 32.800770, 46.775570>,  <40.077511, 32.432533, 46.664764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967403, 32.800770, 46.775570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647380, -0.035522, 0.761339,
		0.710724, 0.388904, -0.586196,
		-0.275265, 0.920593, 0.277015,
		39.884823, 33.076946, 46.858673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710239, 32.736687, 46.812660>,  <40.077511, 32.432533, 46.664764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710239, 32.736687, 46.812660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.420280, 32.931152, 47.007870>,  <40.246304, 33.047832, 47.124996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.420280, 32.931152, 47.007870>,  <40.710239, 32.736687, 46.812660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420280, 32.931152, 47.007870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502394, -0.111590, 0.857407,
		0.471301, 0.866712, -0.163356,
		-0.724897, 0.486166, 0.488024,
		40.202812, 33.077003, 47.154278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030754, 33.361458, 47.154858>,  <40.710239, 32.736687, 46.812660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030754, 33.361458, 47.154858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.707176, 33.239021, 47.355625>,  <40.513031, 33.165558, 47.476086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.707176, 33.239021, 47.355625>,  <41.030754, 33.361458, 47.154858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707176, 33.239021, 47.355625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466254, 0.185975, 0.864882,
		-0.358080, 0.933659, -0.007725,
		-0.808941, -0.306094, 0.501916,
		40.464493, 33.147194, 47.506199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144718, 33.682343, 47.682968>,  <41.030754, 33.361458, 47.154858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144718, 33.682343, 47.682968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.842850, 33.453796, 47.811970>,  <40.661728, 33.316669, 47.889370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.842850, 33.453796, 47.811970>,  <41.144718, 33.682343, 47.682968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842850, 33.453796, 47.811970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349703, 0.065617, 0.934560,
		-0.555133, 0.818071, 0.150288,
		-0.754675, -0.571361, 0.322508,
		40.616447, 33.282387, 47.908722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999123, 33.976631, 48.247158>,  <41.144718, 33.682343, 47.682968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999123, 33.976631, 48.247158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.856030, 33.605331, 48.287926>,  <40.770172, 33.382553, 48.312386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.856030, 33.605331, 48.287926>,  <40.999123, 33.976631, 48.247158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856030, 33.605331, 48.287926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475657, -0.087205, 0.875298,
		-0.803602, 0.361604, 0.472722,
		-0.357735, -0.928245, 0.101921,
		40.748711, 33.326859, 48.318501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644592, 33.986073, 48.926651>,  <40.999123, 33.976631, 48.247158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644592, 33.986073, 48.926651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.752834, 33.615295, 48.822685>,  <40.817780, 33.392830, 48.760303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.752834, 33.615295, 48.822685>,  <40.644592, 33.986073, 48.926651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752834, 33.615295, 48.822685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625844, -0.035767, 0.779127,
		-0.731500, -0.373503, 0.570441,
		0.270604, -0.926939, -0.259919,
		40.834015, 33.337215, 48.744709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668976, 33.649448, 49.545811>,  <40.644592, 33.986073, 48.926651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668976, 33.649448, 49.545811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.888042, 33.441170, 49.283840>,  <41.019482, 33.316200, 49.126659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.888042, 33.441170, 49.283840>,  <40.668976, 33.649448, 49.545811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888042, 33.441170, 49.283840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664266, -0.205343, 0.718738,
		-0.508732, -0.828677, 0.233424,
		0.547670, -0.520701, -0.654926,
		41.052345, 33.284958, 49.087360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335838, 34.357227, 49.559284>,  <40.668976, 33.649448, 49.545811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335838, 34.357227, 49.559284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.346478, 34.741047, 49.671398>,  <40.352859, 34.971340, 49.738667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.346478, 34.741047, 49.671398>,  <40.335838, 34.357227, 49.559284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346478, 34.741047, 49.671398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113609, 0.281470, -0.952821,
		-0.993169, -0.006502, 0.116500,
		0.026596, 0.959548, 0.280286,
		40.354458, 35.028912, 49.755486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799374, 34.688190, 49.261742>,  <40.335838, 34.357227, 49.559284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799374, 34.688190, 49.261742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.021591, 35.010883, 49.342289>,  <40.154922, 35.204498, 49.390617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.021591, 35.010883, 49.342289>,  <39.799374, 34.688190, 49.261742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021591, 35.010883, 49.342289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214414, 0.372979, -0.902725,
		-0.803365, 0.458330, 0.380182,
		0.555546, 0.806734, 0.201366,
		40.188255, 35.252903, 49.402699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403774, 35.381859, 49.189434>,  <39.799374, 34.688190, 49.261742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403774, 35.381859, 49.189434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.784542, 35.470676, 49.105011>,  <40.013004, 35.523968, 49.054356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.784542, 35.470676, 49.105011>,  <39.403774, 35.381859, 49.189434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784542, 35.470676, 49.105011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302756, 0.576722, -0.758769,
		-0.046754, 0.786187, 0.616217,
		0.951921, 0.222039, -0.211059,
		40.070118, 35.537289, 49.041695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455429, 35.969475, 48.775879>,  <39.403774, 35.381859, 49.189434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455429, 35.969475, 48.775879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.838596, 35.866764, 48.724567>,  <40.068497, 35.805138, 48.693783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.838596, 35.866764, 48.724567>,  <39.455429, 35.969475, 48.775879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838596, 35.866764, 48.724567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009602, 0.417976, -0.908407,
		0.286876, 0.871413, 0.397922,
		0.957920, -0.256779, -0.128275,
		40.125973, 35.789730, 48.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665691, 36.528625, 48.444977>,  <39.455429, 35.969475, 48.775879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665691, 36.528625, 48.444977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.924324, 36.228405, 48.390415>,  <40.079502, 36.048271, 48.357677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.924324, 36.228405, 48.390415>,  <39.665691, 36.528625, 48.444977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924324, 36.228405, 48.390415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103569, 0.263517, -0.959079,
		0.755783, 0.605995, 0.248119,
		0.646580, -0.750553, -0.136400,
		40.118298, 36.003239, 48.349495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286774, 36.849888, 48.122879>,  <39.665691, 36.528625, 48.444977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286774, 36.849888, 48.122879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.299252, 36.457874, 48.044331>,  <40.306740, 36.222668, 47.997200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.299252, 36.457874, 48.044331>,  <40.286774, 36.849888, 48.122879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299252, 36.457874, 48.044331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062406, 0.194173, -0.978980,
		0.997563, 0.042794, -0.055103,
		0.031195, -0.980033, -0.196371,
		40.308609, 36.163864, 47.985420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833675, 36.705494, 47.767616>,  <40.286774, 36.849888, 48.122879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833675, 36.705494, 47.767616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579784, 36.406223, 47.690308>,  <40.427452, 36.226662, 47.643921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579784, 36.406223, 47.690308>,  <40.833675, 36.705494, 47.767616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579784, 36.406223, 47.690308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093933, 0.173556, -0.980334,
		0.767009, -0.640396, -0.039881,
		-0.634724, -0.748178, -0.193273,
		40.389366, 36.181770, 47.632324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095005, 36.448421, 47.201138>,  <40.833675, 36.705494, 47.767616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095005, 36.448421, 47.201138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.731579, 36.281433, 47.207127>,  <40.513523, 36.181240, 47.210720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.731579, 36.281433, 47.207127>,  <41.095005, 36.448421, 47.201138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731579, 36.281433, 47.207127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037816, 0.046490, -0.998203,
		0.416027, -0.907499, -0.058026,
		-0.908566, -0.417474, 0.014977,
		40.459007, 36.156193, 47.211620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115784, 35.899857, 46.796551>,  <41.095005, 36.448421, 47.201138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115784, 35.899857, 46.796551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.719200, 35.951820, 46.801144>,  <40.481251, 35.982998, 46.803902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.719200, 35.951820, 46.801144>,  <41.115784, 35.899857, 46.796551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719200, 35.951820, 46.801144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009081, 0.156629, -0.987616,
		-0.130100, -0.979077, -0.156471,
		-0.991459, 0.129910, 0.011486,
		40.421761, 35.990791, 46.804588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852528, 35.562016, 46.192451>,  <41.115784, 35.899857, 46.796551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852528, 35.562016, 46.192451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.541809, 35.791740, 46.295799>,  <40.355377, 35.929573, 46.357807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.541809, 35.791740, 46.295799>,  <40.852528, 35.562016, 46.192451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541809, 35.791740, 46.295799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263085, 0.076806, -0.961710,
		-0.572164, -0.815027, 0.091430,
		-0.776798, 0.574310, 0.258367,
		40.308769, 35.964035, 46.373310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157040, 35.296734, 45.821186>,  <40.852528, 35.562016, 46.192451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157040, 35.296734, 45.821186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.065113, 35.675003, 45.913185>,  <40.009956, 35.901962, 45.968384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.065113, 35.675003, 45.913185>,  <40.157040, 35.296734, 45.821186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065113, 35.675003, 45.913185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448732, 0.106740, -0.887269,
		-0.863611, -0.307112, 0.399822,
		-0.229814, 0.945668, 0.229993,
		39.996170, 35.958702, 45.982182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467407, 35.376575, 45.682003>,  <40.157040, 35.296734, 45.821186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467407, 35.376575, 45.682003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618233, 35.746952, 45.673450>,  <39.708729, 35.969177, 45.668320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618233, 35.746952, 45.673450>,  <39.467407, 35.376575, 45.682003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618233, 35.746952, 45.673450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392296, 0.138756, -0.909313,
		-0.839005, 0.351253, 0.415563,
		0.377061, 0.925941, -0.021378,
		39.731350, 36.024734, 45.667038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946404, 35.823837, 45.550137>,  <39.467407, 35.376575, 45.682003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946404, 35.823837, 45.550137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280739, 36.004860, 45.425835>,  <39.481339, 36.113472, 45.351254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280739, 36.004860, 45.425835>,  <38.946404, 35.823837, 45.550137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280739, 36.004860, 45.425835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321830, -0.054663, -0.945218,
		-0.444749, 0.890060, 0.099956,
		0.835837, 0.452553, -0.310759,
		39.531490, 36.140625, 45.332607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745586, 36.289574, 44.957905>,  <38.946404, 35.823837, 45.550137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745586, 36.289574, 44.957905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.143318, 36.285309, 44.915577>,  <39.381958, 36.282749, 44.890182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.143318, 36.285309, 44.915577>,  <38.745586, 36.289574, 44.957905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143318, 36.285309, 44.915577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102269, 0.177193, -0.978848,
		0.029185, 0.984118, 0.175098,
		0.994328, -0.010661, -0.105817,
		39.441616, 36.282112, 44.883831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145439, 36.899807, 45.121189>,  <38.745586, 36.289574, 44.957905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145439, 36.899807, 45.121189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.792786, 36.716160, 45.077488>,  <37.581192, 36.605972, 45.051266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.792786, 36.716160, 45.077488>,  <38.145439, 36.899807, 45.121189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792786, 36.716160, 45.077488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204782, 0.163591, 0.965040,
		-0.425191, 0.873185, -0.238246,
		-0.881633, -0.459115, -0.109255,
		37.528297, 36.578426, 45.044712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690617, 37.196934, 45.539677>,  <38.145439, 36.899807, 45.121189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690617, 37.196934, 45.539677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488983, 36.856476, 45.481087>,  <37.368004, 36.652203, 45.445930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488983, 36.856476, 45.481087>,  <37.690617, 37.196934, 45.539677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488983, 36.856476, 45.481087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196105, -0.052370, 0.979183,
		-0.841094, 0.522319, -0.140514,
		-0.504087, -0.851141, -0.146478,
		37.337757, 36.601135, 45.437145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124268, 37.301182, 46.001305>,  <37.690617, 37.196934, 45.539677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124268, 37.301182, 46.001305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155514, 36.909477, 45.926525>,  <37.174263, 36.674454, 45.881657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155514, 36.909477, 45.926525>,  <37.124268, 37.301182, 46.001305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155514, 36.909477, 45.926525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098829, -0.194202, 0.975971,
		-0.992033, -0.057765, -0.111950,
		0.078118, -0.979259, -0.186946,
		37.178947, 36.615700, 45.870441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504246, 37.025890, 46.330437>,  <37.124268, 37.301182, 46.001305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504246, 37.025890, 46.330437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786079, 36.743366, 46.303043>,  <36.955177, 36.573853, 46.286606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786079, 36.743366, 46.303043>,  <36.504246, 37.025890, 46.330437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786079, 36.743366, 46.303043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263898, -0.350387, 0.898658,
		-0.658730, -0.615103, -0.433270,
		0.704580, -0.706312, -0.068486,
		36.997452, 36.531471, 46.282497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166817, 36.344135, 46.701603>,  <36.504246, 37.025890, 46.330437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166817, 36.344135, 46.701603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562103, 36.290489, 46.672100>,  <36.799274, 36.258301, 46.654400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562103, 36.290489, 46.672100>,  <36.166817, 36.344135, 46.701603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562103, 36.290489, 46.672100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040472, -0.235752, 0.970970,
		-0.147610, -0.962514, -0.227547,
		0.988217, -0.134116, -0.073754,
		36.858570, 36.250252, 46.649975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342251, 35.696758, 47.024593>,  <36.166817, 36.344135, 46.701603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342251, 35.696758, 47.024593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690052, 35.893398, 47.005436>,  <36.898731, 36.011383, 46.993942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690052, 35.893398, 47.005436>,  <36.342251, 35.696758, 47.024593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690052, 35.893398, 47.005436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236442, -0.329126, 0.914205,
		0.433661, -0.806228, -0.402411,
		0.869502, 0.491602, -0.047898,
		36.950901, 36.040878, 46.991066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809566, 35.248413, 47.361271>,  <36.342251, 35.696758, 47.024593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809566, 35.248413, 47.361271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.971313, 35.614170, 47.368889>,  <37.068363, 35.833626, 47.373459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.971313, 35.614170, 47.368889>,  <36.809566, 35.248413, 47.361271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971313, 35.614170, 47.368889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210092, -0.113134, 0.971114,
		0.890138, -0.388688, -0.237856,
		0.404370, 0.914397, 0.019045,
		37.092625, 35.888489, 47.374603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182644, 34.930981, 46.786140>,  <36.809566, 35.248413, 47.361271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182644, 34.930981, 46.786140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.036194, 34.583481, 46.919540>,  <36.948326, 34.374981, 46.999580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.036194, 34.583481, 46.919540>,  <37.182644, 34.930981, 46.786140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036194, 34.583481, 46.919540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446473, -0.150450, -0.882058,
		0.816466, -0.471840, -0.332792,
		-0.366122, -0.868753, 0.333501,
		36.926357, 34.322853, 47.019592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234356, 34.371113, 46.271114>,  <37.182644, 34.930981, 46.786140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234356, 34.371113, 46.271114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924320, 34.315056, 46.517559>,  <36.738300, 34.281422, 46.665428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924320, 34.315056, 46.517559>,  <37.234356, 34.371113, 46.271114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924320, 34.315056, 46.517559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614636, -0.058839, -0.786613,
		0.146494, -0.988381, -0.040534,
		-0.775088, -0.140148, 0.616114,
		36.691795, 34.273010, 46.702393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859032, 33.879360, 46.006466>,  <37.234356, 34.371113, 46.271114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859032, 33.879360, 46.006466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561970, 33.974449, 46.256889>,  <36.383732, 34.031502, 46.407143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561970, 33.974449, 46.256889>,  <36.859032, 33.879360, 46.006466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561970, 33.974449, 46.256889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669564, -0.246541, -0.700643,
		-0.012207, -0.939525, 0.342263,
		-0.742654, 0.237720, 0.626063,
		36.339172, 34.045765, 46.444710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394852, 33.416126, 46.043858>,  <36.859032, 33.879360, 46.006466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394852, 33.416126, 46.043858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183647, 33.749790, 46.107582>,  <36.056923, 33.949989, 46.145817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183647, 33.749790, 46.107582>,  <36.394852, 33.416126, 46.043858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183647, 33.749790, 46.107582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434510, -0.104187, -0.894621,
		-0.729659, -0.541593, 0.417463,
		-0.528014, 0.834160, 0.159307,
		36.025242, 34.000038, 46.155373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760979, 33.261097, 45.704781>,  <36.394852, 33.416126, 46.043858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760979, 33.261097, 45.704781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758957, 33.657040, 45.761581>,  <35.757744, 33.894604, 45.795662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758957, 33.657040, 45.761581>,  <35.760979, 33.261097, 45.704781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758957, 33.657040, 45.761581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646325, 0.105125, -0.755786,
		-0.763045, -0.095602, 0.639235,
		-0.005055, 0.989853, 0.142005,
		35.757439, 33.953995, 45.804184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063351, 33.396748, 45.509056>,  <35.760979, 33.261097, 45.704781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063351, 33.396748, 45.509056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252655, 33.748272, 45.484661>,  <35.366238, 33.959187, 45.470024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252655, 33.748272, 45.484661>,  <35.063351, 33.396748, 45.509056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252655, 33.748272, 45.484661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606198, 0.274653, -0.746385,
		-0.639178, 0.390206, 0.662714,
		0.473260, 0.878809, -0.060990,
		35.394634, 34.011913, 45.466366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504898, 33.881054, 45.484703>,  <35.063351, 33.396748, 45.509056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504898, 33.881054, 45.484703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840797, 34.031979, 45.328526>,  <35.042339, 34.122532, 45.234818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840797, 34.031979, 45.328526>,  <34.504898, 33.881054, 45.484703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840797, 34.031979, 45.328526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502340, 0.266956, -0.822428,
		-0.206080, 0.886775, 0.413717,
		0.839753, 0.377313, -0.390449,
		35.092724, 34.145172, 45.211391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.466061, 30.128496, 48.236423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.601517, 30.501913, 48.283455>,  <39.682793, 30.725964, 48.311672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.601517, 30.501913, 48.283455>,  <39.466061, 30.128496, 48.236423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601517, 30.501913, 48.283455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333664, -0.002309, -0.942689,
		-0.879767, 0.358465, -0.312271,
		0.338642, 0.933540, 0.117575,
		39.703110, 30.781975, 48.318726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113808, 30.607718, 47.790424>,  <39.466061, 30.128496, 48.236423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113808, 30.607718, 47.790424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.501652, 30.681732, 47.854454>,  <39.734356, 30.726141, 47.892872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.501652, 30.681732, 47.854454>,  <39.113808, 30.607718, 47.790424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501652, 30.681732, 47.854454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187905, -0.144156, -0.971551,
		-0.156695, 0.972101, -0.174544,
		0.969607, 0.185035, 0.160074,
		39.792534, 30.737242, 47.902477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285999, 31.171995, 47.275482>,  <39.113808, 30.607718, 47.790424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285999, 31.171995, 47.275482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.623726, 30.993198, 47.393688>,  <39.826363, 30.885920, 47.464611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.623726, 30.993198, 47.393688>,  <39.285999, 31.171995, 47.275482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623726, 30.993198, 47.393688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293556, -0.075520, -0.952954,
		0.448281, 0.891344, 0.067455,
		0.844316, -0.446993, 0.295513,
		39.877022, 30.859100, 47.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861401, 31.644466, 47.015621>,  <39.285999, 31.171995, 47.275482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861401, 31.644466, 47.015621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.964970, 31.260101, 47.054813>,  <40.027111, 31.029482, 47.078327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.964970, 31.260101, 47.054813>,  <39.861401, 31.644466, 47.015621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964970, 31.260101, 47.054813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320852, -0.010110, -0.947075,
		0.911049, 0.276660, 0.305694,
		0.258927, -0.960915, 0.097978,
		40.042648, 30.971827, 47.084206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455093, 31.578909, 46.573761>,  <39.861401, 31.644466, 47.015621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455093, 31.578909, 46.573761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.354862, 31.199497, 46.651218>,  <40.294724, 30.971849, 46.697693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.354862, 31.199497, 46.651218>,  <40.455093, 31.578909, 46.573761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354862, 31.199497, 46.651218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073132, -0.218000, -0.973205,
		0.965329, -0.229706, 0.123995,
		-0.250582, -0.948531, 0.193643,
		40.279686, 30.914938, 46.709312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972633, 31.200766, 46.150707>,  <40.455093, 31.578909, 46.573761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972633, 31.200766, 46.150707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.659397, 30.970516, 46.244884>,  <40.471455, 30.832367, 46.301392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.659397, 30.970516, 46.244884>,  <40.972633, 31.200766, 46.150707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659397, 30.970516, 46.244884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127323, -0.222171, -0.966659,
		0.608739, -0.786955, 0.100690,
		-0.783087, -0.575623, 0.235442,
		40.424473, 30.797829, 46.315517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127167, 30.609715, 45.684322>,  <40.972633, 31.200766, 46.150707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127167, 30.609715, 45.684322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.739964, 30.566479, 45.774895>,  <40.507641, 30.540537, 45.829239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.739964, 30.566479, 45.774895>,  <41.127167, 30.609715, 45.684322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739964, 30.566479, 45.774895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207277, -0.164029, -0.964433,
		0.141388, -0.980515, 0.136377,
		-0.968011, -0.108091, 0.226431,
		40.449558, 30.534052, 45.842823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918079, 30.099300, 45.192520>,  <41.127167, 30.609715, 45.684322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918079, 30.099300, 45.192520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.569740, 30.246977, 45.322334>,  <40.360737, 30.335583, 45.400223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.569740, 30.246977, 45.322334>,  <40.918079, 30.099300, 45.192520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569740, 30.246977, 45.322334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384843, -0.101325, -0.917404,
		-0.305817, -0.923812, 0.230320,
		-0.870845, 0.369195, 0.324536,
		40.308487, 30.357735, 45.419697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366131, 29.600815, 45.076954>,  <40.918079, 30.099300, 45.192520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366131, 29.600815, 45.076954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.175446, 29.951139, 45.107143>,  <40.061035, 30.161335, 45.125256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.175446, 29.951139, 45.107143>,  <40.366131, 29.600815, 45.076954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175446, 29.951139, 45.107143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268616, -0.063386, -0.961160,
		-0.837012, -0.478470, 0.265474,
		-0.476714, 0.875813, 0.075470,
		40.032433, 30.213882, 45.129784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731255, 29.444279, 44.894943>,  <40.366131, 29.600815, 45.076954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731255, 29.444279, 44.894943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.759708, 29.837275, 44.826061>,  <39.776779, 30.073072, 44.784733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.759708, 29.837275, 44.826061>,  <39.731255, 29.444279, 44.894943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759708, 29.837275, 44.826061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441656, -0.123777, -0.888605,
		-0.894360, 0.139265, 0.425117,
		0.071132, 0.982489, -0.172208,
		39.781048, 30.132021, 44.774399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108322, 29.731165, 44.604271>,  <39.731255, 29.444279, 44.894943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108322, 29.731165, 44.604271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.358654, 30.025059, 44.499577>,  <39.508854, 30.201395, 44.436760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.358654, 30.025059, 44.499577>,  <39.108322, 29.731165, 44.604271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358654, 30.025059, 44.499577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396140, 0.010348, -0.918132,
		-0.671874, 0.678277, 0.297534,
		0.625826, 0.734734, -0.261740,
		39.546402, 30.245480, 44.421055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687912, 30.075296, 44.258266>,  <39.108322, 29.731165, 44.604271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687912, 30.075296, 44.258266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.044094, 30.202007, 44.127583>,  <39.257805, 30.278034, 44.049171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.044094, 30.202007, 44.127583>,  <38.687912, 30.075296, 44.258266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044094, 30.202007, 44.127583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317802, -0.080983, -0.944692,
		-0.325713, 0.945037, 0.028560,
		0.890457, 0.316775, -0.326712,
		39.311230, 30.297039, 44.029568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996082, 30.215908, 44.536427>,  <38.687912, 30.075296, 44.258266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996082, 30.215908, 44.536427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.660534, 30.430164, 44.497681>,  <37.459206, 30.558718, 44.474434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.660534, 30.430164, 44.497681>,  <37.996082, 30.215908, 44.536427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660534, 30.430164, 44.497681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110095, 0.007311, 0.993894,
		0.533076, 0.844416, 0.052838,
		-0.838874, 0.535639, -0.096863,
		37.408871, 30.590857, 44.468620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102543, 30.716843, 45.028088>,  <37.996082, 30.215908, 44.536427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102543, 30.716843, 45.028088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.710434, 30.720865, 44.949131>,  <37.475170, 30.723280, 44.901756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.710434, 30.720865, 44.949131>,  <38.102543, 30.716843, 45.028088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710434, 30.720865, 44.949131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197504, -0.011610, 0.980233,
		0.007568, 0.999882, 0.013367,
		-0.980273, 0.010059, -0.197393,
		37.416351, 30.723883, 44.889912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849480, 31.377768, 45.403858>,  <38.102543, 30.716843, 45.028088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849480, 31.377768, 45.403858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.578430, 31.094412, 45.324848>,  <37.415802, 30.924398, 45.277443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.578430, 31.094412, 45.324848>,  <37.849480, 31.377768, 45.403858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578430, 31.094412, 45.324848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485675, 0.229374, 0.843509,
		-0.552224, 0.667513, -0.499475,
		-0.677619, -0.708389, -0.197529,
		37.375145, 30.881895, 45.265591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216927, 31.725933, 45.518463>,  <37.849480, 31.377768, 45.403858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216927, 31.725933, 45.518463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.128075, 31.338043, 45.559048>,  <37.074764, 31.105310, 45.583397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.128075, 31.338043, 45.559048>,  <37.216927, 31.725933, 45.518463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128075, 31.338043, 45.559048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288095, 0.164691, 0.943334,
		-0.931482, 0.180313, -0.315955,
		-0.222131, -0.969724, 0.101459,
		37.061436, 31.047127, 45.589485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833473, 31.738499, 46.084988>,  <37.216927, 31.725933, 45.518463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833473, 31.738499, 46.084988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.909847, 31.347054, 46.054356>,  <36.955669, 31.112186, 46.035976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.909847, 31.347054, 46.054356>,  <36.833473, 31.738499, 46.084988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909847, 31.347054, 46.054356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178403, -0.111311, 0.977641,
		-0.965255, -0.172999, -0.195840,
		0.190930, -0.978612, -0.076580,
		36.967125, 31.053471, 46.031380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208725, 31.438419, 46.377567>,  <36.833473, 31.738499, 46.084988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208725, 31.438419, 46.377567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525814, 31.197571, 46.415604>,  <36.716068, 31.053062, 46.438427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525814, 31.197571, 46.415604>,  <36.208725, 31.438419, 46.377567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525814, 31.197571, 46.415604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106007, 0.017447, 0.994212,
		-0.600295, -0.798214, -0.049998,
		0.792722, -0.602121, 0.095089,
		36.763630, 31.016935, 46.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025421, 30.917387, 46.833214>,  <36.208725, 31.438419, 46.377567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025421, 30.917387, 46.833214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.425182, 30.922277, 46.846188>,  <36.665039, 30.925211, 46.853970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.425182, 30.922277, 46.846188>,  <36.025421, 30.917387, 46.833214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425182, 30.922277, 46.846188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031395, -0.077074, 0.996531,
		0.014688, -0.996950, -0.076644,
		0.999399, 0.012230, 0.032431,
		36.725002, 30.925945, 46.855915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277439, 30.474257, 47.399822>,  <36.025421, 30.917387, 46.833214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277439, 30.474257, 47.399822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.585419, 30.718725, 47.326450>,  <36.770206, 30.865406, 47.282429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.585419, 30.718725, 47.326450>,  <36.277439, 30.474257, 47.399822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585419, 30.718725, 47.326450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353629, -0.169412, 0.919916,
		0.531153, -0.773154, -0.346568,
		0.769949, 0.611173, -0.183426,
		36.816402, 30.902077, 47.271423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839653, 30.165192, 47.686211>,  <36.277439, 30.474257, 47.399822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839653, 30.165192, 47.686211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989243, 30.531412, 47.626999>,  <37.078995, 30.751144, 47.591473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989243, 30.531412, 47.626999>,  <36.839653, 30.165192, 47.686211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989243, 30.531412, 47.626999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182773, 0.083721, 0.979584,
		0.909251, -0.393395, -0.136028,
		0.373975, 0.915550, -0.148025,
		37.101437, 30.806078, 47.582592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531521, 30.149553, 47.960938>,  <36.839653, 30.165192, 47.686211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531521, 30.149553, 47.960938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407799, 30.528189, 47.924484>,  <37.333565, 30.755369, 47.902615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407799, 30.528189, 47.924484>,  <37.531521, 30.149553, 47.960938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407799, 30.528189, 47.924484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249478, 0.173244, 0.952757,
		0.917655, 0.271958, -0.289738,
		-0.309305, 0.946586, -0.091131,
		37.315006, 30.812164, 47.897144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072655, 30.538795, 48.315723>,  <37.531521, 30.149553, 47.960938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072655, 30.538795, 48.315723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751900, 30.777245, 48.299664>,  <37.559448, 30.920315, 48.290028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751900, 30.777245, 48.299664>,  <38.072655, 30.538795, 48.315723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751900, 30.777245, 48.299664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078590, 0.171855, 0.981982,
		0.592284, 0.784283, -0.184658,
		-0.801887, 0.596125, -0.040150,
		37.511333, 30.956081, 48.287617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310059, 31.269855, 48.459740>,  <38.072655, 30.538795, 48.315723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310059, 31.269855, 48.459740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.925198, 31.220661, 48.557018>,  <37.694283, 31.191145, 48.615383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.925198, 31.220661, 48.557018>,  <38.310059, 31.269855, 48.459740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925198, 31.220661, 48.557018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191786, 0.328426, 0.924854,
		-0.193614, 0.936489, -0.292408,
		-0.962150, -0.122985, 0.243193,
		37.636551, 31.183765, 48.629974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120007, 31.917826, 48.897369>,  <38.310059, 31.269855, 48.459740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120007, 31.917826, 48.897369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.860016, 31.622114, 48.967796>,  <37.704021, 31.444687, 49.010052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.860016, 31.622114, 48.967796>,  <38.120007, 31.917826, 48.897369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860016, 31.622114, 48.967796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010580, 0.222856, 0.974794,
		-0.759881, 0.635456, -0.137030,
		-0.649977, -0.739277, 0.176067,
		37.665024, 31.400331, 49.020615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692513, 32.242596, 49.341587>,  <38.120007, 31.917826, 48.897369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692513, 32.242596, 49.341587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.651901, 31.844919, 49.355858>,  <37.627537, 31.606314, 49.364422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.651901, 31.844919, 49.355858>,  <37.692513, 32.242596, 49.341587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651901, 31.844919, 49.355858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039153, 0.039832, 0.998439,
		-0.994062, 0.099971, -0.042970,
		-0.101526, -0.994193, 0.035681,
		37.621445, 31.546661, 49.366562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960793, 31.849350, 49.390697>,  <37.692513, 32.242596, 49.341587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960793, 31.849350, 49.390697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.856567, 32.187206, 49.577755>,  <36.794033, 32.389919, 49.689987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.856567, 32.187206, 49.577755>,  <36.960793, 31.849350, 49.390697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856567, 32.187206, 49.577755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151394, 0.442634, -0.883830,
		-0.953514, -0.301088, 0.012541,
		-0.260559, 0.844642, 0.467640,
		36.778400, 32.440598, 49.718048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378624, 32.058685, 49.040119>,  <36.960793, 31.849350, 49.390697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378624, 32.058685, 49.040119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.505352, 32.384403, 49.234661>,  <36.581390, 32.579834, 49.351387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.505352, 32.384403, 49.234661>,  <36.378624, 32.058685, 49.040119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505352, 32.384403, 49.234661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158984, 0.551107, -0.819149,
		-0.935065, 0.182204, 0.304065,
		0.316824, 0.814299, 0.486353,
		36.600399, 32.628693, 49.380566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939205, 32.558239, 48.918446>,  <36.378624, 32.058685, 49.040119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939205, 32.558239, 48.918446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282234, 32.735508, 49.022877>,  <36.488052, 32.841869, 49.085537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282234, 32.735508, 49.022877>,  <35.939205, 32.558239, 48.918446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282234, 32.735508, 49.022877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071762, 0.605708, -0.792445,
		-0.509330, 0.660844, 0.551242,
		0.857574, 0.443174, 0.261081,
		36.539505, 32.868462, 49.101200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753872, 33.264786, 48.966560>,  <35.939205, 32.558239, 48.918446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753872, 33.264786, 48.966560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.149723, 33.241306, 48.914112>,  <36.387234, 33.227219, 48.882641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.149723, 33.241306, 48.914112>,  <35.753872, 33.264786, 48.966560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149723, 33.241306, 48.914112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068142, 0.611723, -0.788132,
		0.126474, 0.788891, 0.601377,
		0.989627, -0.058700, -0.131124,
		36.446609, 33.223698, 48.874775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975517, 34.006641, 48.854828>,  <35.753872, 33.264786, 48.966560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975517, 34.006641, 48.854828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.275505, 33.774910, 48.727123>,  <36.455498, 33.635872, 48.650501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.275505, 33.774910, 48.727123>,  <35.975517, 34.006641, 48.854828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275505, 33.774910, 48.727123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123342, 0.596661, -0.792958,
		0.649874, 0.555314, 0.518931,
		0.749967, -0.579329, -0.319260,
		36.500496, 33.601112, 48.631344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637100, 34.485512, 48.733231>,  <35.975517, 34.006641, 48.854828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637100, 34.485512, 48.733231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644829, 34.145569, 48.522568>,  <36.649464, 33.941605, 48.396172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644829, 34.145569, 48.522568>,  <36.637100, 34.485512, 48.733231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644829, 34.145569, 48.522568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152535, 0.523094, -0.838514,
		0.988109, -0.064133, 0.139739,
		0.019320, -0.849859, -0.526657,
		36.650623, 33.890610, 48.364571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139812, 34.667545, 48.267670>,  <36.637100, 34.485512, 48.733231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139812, 34.667545, 48.267670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.918667, 34.372459, 48.112690>,  <36.785980, 34.195408, 48.019703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.918667, 34.372459, 48.112690>,  <37.139812, 34.667545, 48.267670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918667, 34.372459, 48.112690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082575, 0.511193, -0.855490,
		0.829171, -0.440975, -0.343536,
		-0.552863, -0.737715, -0.387453,
		36.752808, 34.151146, 47.996452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488373, 35.181095, 47.678150>,  <37.139812, 34.667545, 48.267670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488373, 35.181095, 47.678150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.452858, 35.579468, 47.684330>,  <37.431549, 35.818493, 47.688038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.452858, 35.579468, 47.684330>,  <37.488373, 35.181095, 47.678150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452858, 35.579468, 47.684330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219926, 0.004471, 0.975506,
		0.971468, 0.090011, -0.219428,
		-0.088787, 0.995931, 0.015453,
		37.426220, 35.878246, 47.688965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101616, 35.483456, 48.004910>,  <37.488373, 35.181095, 47.678150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101616, 35.483456, 48.004910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.816860, 35.761894, 48.042145>,  <37.646008, 35.928955, 48.064487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.816860, 35.761894, 48.042145>,  <38.101616, 35.483456, 48.004910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816860, 35.761894, 48.042145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270603, 0.149566, 0.951002,
		0.648063, 0.702200, -0.294839,
		-0.711891, 0.696093, 0.093089,
		37.603294, 35.970722, 48.070072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449139, 36.165146, 48.109692>,  <38.101616, 35.483456, 48.004910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449139, 36.165146, 48.109692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.084309, 36.121971, 48.267918>,  <37.865410, 36.096066, 48.362854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.084309, 36.121971, 48.267918>,  <38.449139, 36.165146, 48.109692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084309, 36.121971, 48.267918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384619, 0.109075, 0.916608,
		-0.142084, 0.988156, -0.057969,
		-0.912075, -0.107939, 0.395562,
		37.810688, 36.089588, 48.386585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593575, 36.107117, 48.776894>,  <38.449139, 36.165146, 48.109692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593575, 36.107117, 48.776894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.196712, 36.123093, 48.824291>,  <37.958595, 36.132679, 48.852730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.196712, 36.123093, 48.824291>,  <38.593575, 36.107117, 48.776894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196712, 36.123093, 48.824291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114882, -0.083110, 0.989896,
		0.049385, 0.995740, 0.077869,
		-0.992151, 0.039940, 0.118497,
		37.899067, 36.135075, 48.859840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494442, 36.567627, 49.233795>,  <38.593575, 36.107117, 48.776894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494442, 36.567627, 49.233795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.163082, 36.344357, 49.252506>,  <37.964264, 36.210392, 49.263733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.163082, 36.344357, 49.252506>,  <38.494442, 36.567627, 49.233795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163082, 36.344357, 49.252506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132393, -0.113974, 0.984623,
		-0.544264, 0.821856, 0.168315,
		-0.828401, -0.558178, 0.046776,
		37.914562, 36.176903, 49.266541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131332, 36.765503, 49.871223>,  <38.494442, 36.567627, 49.233795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131332, 36.765503, 49.871223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.973522, 36.415752, 49.758217>,  <37.878838, 36.205902, 49.690414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.973522, 36.415752, 49.758217>,  <38.131332, 36.765503, 49.871223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973522, 36.415752, 49.758217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206909, -0.384089, 0.899813,
		-0.895288, 0.296543, 0.332449,
		-0.394524, -0.874378, -0.282513,
		37.855164, 36.153439, 49.673462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746677, 36.538628, 50.489403>,  <38.131332, 36.765503, 49.871223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746677, 36.538628, 50.489403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.830112, 36.210690, 50.276108>,  <37.880173, 36.013927, 50.148132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.830112, 36.210690, 50.276108>,  <37.746677, 36.538628, 50.489403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830112, 36.210690, 50.276108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215701, -0.493240, 0.842726,
		-0.953921, -0.290800, 0.073960,
		0.208585, -0.819847, -0.533238,
		37.892689, 35.964737, 50.116135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279934, 35.965687, 50.717072>,  <37.746677, 36.538628, 50.489403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279934, 35.965687, 50.717072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.628792, 35.823761, 50.582333>,  <37.838108, 35.738605, 50.501488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.628792, 35.823761, 50.582333>,  <37.279934, 35.965687, 50.717072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628792, 35.823761, 50.582333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162904, -0.438617, 0.883786,
		-0.461338, -0.825661, -0.324733,
		0.872140, -0.354823, -0.336854,
		37.890434, 35.717316, 50.481277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246769, 35.240025, 50.730282>,  <37.279934, 35.965687, 50.717072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246769, 35.240025, 50.730282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.639996, 35.312561, 50.719711>,  <37.875931, 35.356083, 50.713367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.639996, 35.312561, 50.719711>,  <37.246769, 35.240025, 50.730282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639996, 35.312561, 50.719711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133460, -0.609620, 0.781378,
		0.125589, -0.771672, -0.623498,
		0.983065, 0.181345, -0.026426,
		37.934914, 35.366966, 50.711784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.492195, 37.851357, 34.915367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887604, 37.901596, 34.948944>,  <36.124851, 37.931740, 34.969090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887604, 37.901596, 34.948944>,  <35.492195, 37.851357, 34.915367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887604, 37.901596, 34.948944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021818, -0.668560, 0.743338,
		0.149482, -0.732976, -0.663628,
		0.988523, 0.125595, 0.083946,
		36.184162, 37.939274, 34.974129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732471, 37.249458, 35.197109>,  <35.492195, 37.851357, 34.915367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732471, 37.249458, 35.197109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021866, 37.516418, 35.267704>,  <36.195503, 37.676594, 35.310062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021866, 37.516418, 35.267704>,  <35.732471, 37.249458, 35.197109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021866, 37.516418, 35.267704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133338, -0.385936, 0.912839,
		0.677343, -0.636891, -0.368208,
		0.723483, 0.667401, 0.176489,
		36.238911, 37.716640, 35.320652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136467, 36.852795, 35.499825>,  <35.732471, 37.249458, 35.197109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136467, 36.852795, 35.499825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229469, 37.225544, 35.611217>,  <36.285271, 37.449192, 35.678051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229469, 37.225544, 35.611217>,  <36.136467, 36.852795, 35.499825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229469, 37.225544, 35.611217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199284, -0.325898, 0.924163,
		0.951959, -0.159379, -0.261481,
		0.232508, 0.931874, 0.278480,
		36.299221, 37.505108, 35.694763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646477, 36.721062, 35.928905>,  <36.136467, 36.852795, 35.499825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646477, 36.721062, 35.928905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533978, 37.093731, 36.020893>,  <36.466476, 37.317333, 36.076084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533978, 37.093731, 36.020893>,  <36.646477, 36.721062, 35.928905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533978, 37.093731, 36.020893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149737, -0.194101, 0.969486,
		0.947880, 0.307103, -0.084915,
		-0.281250, 0.931672, 0.229969,
		36.449604, 37.373234, 36.089882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121265, 36.889500, 36.403591>,  <36.646477, 36.721062, 35.928905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121265, 36.889500, 36.403591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816818, 37.145496, 36.445751>,  <36.634151, 37.299095, 36.471046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816818, 37.145496, 36.445751>,  <37.121265, 36.889500, 36.403591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816818, 37.145496, 36.445751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016852, -0.142935, 0.989589,
		0.648396, 0.754969, 0.098004,
		-0.761117, 0.639994, 0.105401,
		36.588482, 37.337494, 36.477371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328644, 37.490437, 36.834156>,  <37.121265, 36.889500, 36.403591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328644, 37.490437, 36.834156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932560, 37.436104, 36.847031>,  <36.694908, 37.403503, 36.854755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932560, 37.436104, 36.847031>,  <37.328644, 37.490437, 36.834156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932560, 37.436104, 36.847031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029940, 0.018537, 0.999380,
		-0.136347, 0.990558, -0.014289,
		-0.990209, -0.135834, 0.032185,
		36.635498, 37.395355, 36.856686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112747, 37.920090, 37.303493>,  <37.328644, 37.490437, 36.834156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112747, 37.920090, 37.303493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807640, 37.661518, 37.296337>,  <36.624577, 37.506374, 37.292042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807640, 37.661518, 37.296337>,  <37.112747, 37.920090, 37.303493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807640, 37.661518, 37.296337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008817, -0.017271, 0.999812,
		-0.646612, 0.762782, 0.007474,
		-0.762768, -0.646425, -0.017893,
		36.578808, 37.467590, 37.290970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543758, 38.149471, 37.799099>,  <37.112747, 37.920090, 37.303493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543758, 38.149471, 37.799099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480133, 37.756969, 37.755569>,  <36.441959, 37.521469, 37.729450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480133, 37.756969, 37.755569>,  <36.543758, 38.149471, 37.799099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480133, 37.756969, 37.755569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317155, -0.053602, 0.946858,
		-0.934940, 0.185122, -0.302683,
		-0.159060, -0.981253, -0.108827,
		36.432415, 37.462593, 37.722919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961792, 38.117126, 38.230072>,  <36.543758, 38.149471, 37.799099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961792, 38.117126, 38.230072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089409, 37.742805, 38.170086>,  <36.165981, 37.518215, 38.134094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089409, 37.742805, 38.170086>,  <35.961792, 38.117126, 38.230072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089409, 37.742805, 38.170086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227441, -0.229207, 0.946432,
		-0.920044, -0.267848, -0.285967,
		0.319046, -0.935800, -0.149961,
		36.185123, 37.462067, 38.125099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474674, 37.726967, 38.525562>,  <35.961792, 38.117126, 38.230072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474674, 37.726967, 38.525562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782467, 37.471996, 38.509682>,  <35.967144, 37.319012, 38.500153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782467, 37.471996, 38.509682>,  <35.474674, 37.726967, 38.525562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782467, 37.471996, 38.509682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114239, -0.198527, 0.973415,
		-0.628366, -0.744492, -0.225582,
		0.769484, -0.637431, -0.039698,
		36.013313, 37.280766, 38.497772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264698, 37.000160, 38.814053>,  <35.474674, 37.726967, 38.525562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264698, 37.000160, 38.814053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664680, 37.001965, 38.810638>,  <35.904671, 37.003048, 38.808590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664680, 37.001965, 38.810638>,  <35.264698, 37.000160, 38.814053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664680, 37.001965, 38.810638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009461, -0.280880, 0.959696,
		0.001933, -0.959732, -0.280910,
		0.999954, 0.004512, -0.008537,
		35.964668, 37.003319, 38.808079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447048, 36.407669, 39.013458>,  <35.264698, 37.000160, 38.814053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447048, 36.407669, 39.013458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741005, 36.663795, 39.102840>,  <35.917377, 36.817471, 39.156471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741005, 36.663795, 39.102840>,  <35.447048, 36.407669, 39.013458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741005, 36.663795, 39.102840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040465, -0.287510, 0.956922,
		0.676975, -0.712277, -0.185378,
		0.734892, 0.640312, 0.223460,
		35.961472, 36.855888, 39.169880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727558, 35.683941, 38.861774>,  <35.447048, 36.407669, 39.013458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727558, 35.683941, 38.861774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431396, 35.428368, 38.945274>,  <35.253700, 35.275024, 38.995377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431396, 35.428368, 38.945274>,  <35.727558, 35.683941, 38.861774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431396, 35.428368, 38.945274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474538, 0.276910, -0.835544,
		0.476049, -0.717697, -0.508221,
		-0.740399, -0.638930, 0.208752,
		35.209278, 35.236691, 39.007900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616592, 35.221161, 38.264408>,  <35.727558, 35.683941, 38.861774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616592, 35.221161, 38.264408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281609, 35.253181, 38.480652>,  <35.080620, 35.272392, 38.610397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281609, 35.253181, 38.480652>,  <35.616592, 35.221161, 38.264408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281609, 35.253181, 38.480652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544771, -0.043515, -0.837455,
		-0.043515, -0.995841, 0.080051,
		0.837455, -0.080051, -0.540611,
		35.030373, 35.277195, 38.642834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180744, 34.802979, 37.981548>,  <35.616592, 35.221161, 38.264408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180744, 34.802979, 37.981548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951778, 35.058632, 38.187012>,  <34.814400, 35.212025, 38.310287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951778, 35.058632, 38.187012>,  <35.180744, 34.802979, 37.981548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951778, 35.058632, 38.187012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650424, 0.027515, -0.759072,
		-0.499286, -0.768599, 0.399961,
		-0.572417, 0.639138, 0.513653,
		34.780052, 35.250374, 38.341106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423389, 34.570789, 38.040665>,  <35.180744, 34.802979, 37.981548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423389, 34.570789, 38.040665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400311, 34.966442, 38.094757>,  <34.386463, 35.203835, 38.127213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400311, 34.966442, 38.094757>,  <34.423389, 34.570789, 38.040665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400311, 34.966442, 38.094757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763024, 0.043662, -0.644894,
		-0.643791, -0.140390, 0.752213,
		-0.057694, 0.989133, 0.135230,
		34.383003, 35.263184, 38.135326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676018, 34.647995, 38.010654>,  <34.423389, 34.570789, 38.040665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676018, 34.647995, 38.010654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834023, 35.012272, 37.962315>,  <33.928825, 35.230839, 37.933311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834023, 35.012272, 37.962315>,  <33.676018, 34.647995, 38.010654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834023, 35.012272, 37.962315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663873, 0.192043, -0.722767,
		-0.635012, 0.365727, 0.680444,
		0.395010, 0.910694, -0.120846,
		33.952526, 35.285480, 37.926060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127071, 35.281048, 38.166920>,  <33.676018, 34.647995, 38.010654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127071, 35.281048, 38.166920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407436, 35.451031, 37.937786>,  <33.575653, 35.553020, 37.800308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407436, 35.451031, 37.937786>,  <33.127071, 35.281048, 38.166920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407436, 35.451031, 37.937786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713191, 0.407156, -0.570598,
		-0.009249, 0.808476, 0.588457,
		0.700909, 0.424960, -0.572831,
		33.617710, 35.578518, 37.765938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805286, 35.882919, 37.940090>,  <33.127071, 35.281048, 38.166920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805286, 35.882919, 37.940090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120361, 35.840145, 37.697399>,  <33.309406, 35.814480, 37.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120361, 35.840145, 37.697399>,  <32.805286, 35.882919, 37.940090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120361, 35.840145, 37.697399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561485, 0.280705, -0.778421,
		0.253555, 0.953818, 0.161062,
		0.787683, -0.106938, -0.606729,
		33.356667, 35.808064, 37.515381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636894, 36.354572, 37.431347>,  <32.805286, 35.882919, 37.940090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636894, 36.354572, 37.431347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900642, 36.104904, 37.263710>,  <33.058891, 35.955105, 37.163128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900642, 36.104904, 37.263710>,  <32.636894, 36.354572, 37.431347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900642, 36.104904, 37.263710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471279, 0.091167, -0.877260,
		0.585766, 0.775952, -0.234045,
		0.659374, -0.624170, -0.419093,
		33.098454, 35.917652, 37.137981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907681, 36.650105, 36.855087>,  <32.636894, 36.354572, 37.431347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907681, 36.650105, 36.855087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951714, 36.258003, 36.789383>,  <32.978134, 36.022743, 36.749958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951714, 36.258003, 36.789383>,  <32.907681, 36.650105, 36.855087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951714, 36.258003, 36.789383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599075, 0.066438, -0.797932,
		0.793090, 0.186244, -0.579932,
		0.110081, -0.980255, -0.164265,
		32.984737, 35.963928, 36.740105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767345, 36.658783, 36.170013>,  <32.907681, 36.650105, 36.855087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767345, 36.658783, 36.170013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746376, 36.268440, 36.254829>,  <32.733795, 36.034237, 36.305721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746376, 36.268440, 36.254829>,  <32.767345, 36.658783, 36.170013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746376, 36.268440, 36.254829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662669, -0.124855, -0.738432,
		0.747076, -0.179224, -0.640122,
		-0.052422, -0.975854, 0.212042,
		32.730648, 35.975685, 36.318443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837906, 36.361320, 35.473705>,  <32.767345, 36.658783, 36.170013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837906, 36.361320, 35.473705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649776, 36.127209, 35.737900>,  <32.536900, 35.986744, 35.896416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649776, 36.127209, 35.737900>,  <32.837906, 36.361320, 35.473705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649776, 36.127209, 35.737900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635597, -0.294564, -0.713617,
		0.612220, -0.755436, -0.233460,
		-0.470323, -0.585277, 0.660491,
		32.508678, 35.951626, 35.936047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701904, 35.725365, 35.127598>,  <32.837906, 36.361320, 35.473705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701904, 35.725365, 35.127598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442173, 35.687447, 35.429428>,  <32.286335, 35.664696, 35.610527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442173, 35.687447, 35.429428>,  <32.701904, 35.725365, 35.127598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442173, 35.687447, 35.429428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612523, -0.522898, -0.592784,
		0.450761, -0.847108, 0.281466,
		-0.649330, -0.094799, 0.754575,
		32.247375, 35.659008, 35.655800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415627, 34.981316, 35.157341>,  <32.701904, 35.725365, 35.127598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415627, 34.981316, 35.157341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173588, 35.259102, 35.313076>,  <32.028366, 35.425774, 35.406517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173588, 35.259102, 35.313076>,  <32.415627, 34.981316, 35.157341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173588, 35.259102, 35.313076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728473, -0.285631, -0.622689,
		-0.321235, -0.660398, 0.678735,
		-0.605091, 0.694470, 0.389328,
		31.992060, 35.467442, 35.429878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705444, 34.592548, 35.257694>,  <32.415627, 34.981316, 35.157341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705444, 34.592548, 35.257694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684357, 34.990410, 35.222168>,  <31.671703, 35.229126, 35.200851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684357, 34.990410, 35.222168>,  <31.705444, 34.592548, 35.257694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684357, 34.990410, 35.222168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845059, -0.091822, -0.526730,
		-0.532068, 0.047285, 0.845380,
		-0.052718, 0.994652, -0.088814,
		31.668541, 35.288807, 35.195522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021618, 34.629326, 35.961456>,  <31.705444, 34.592548, 35.257694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021618, 34.629326, 35.961456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766495, 34.340008, 35.855591>,  <31.613422, 34.166416, 35.792072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766495, 34.340008, 35.855591>,  <32.021618, 34.629326, 35.961456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766495, 34.340008, 35.855591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767864, -0.570422, -0.291554,
		0.059908, -0.389181, 0.919211,
		-0.637805, -0.723296, -0.264665,
		31.575153, 34.123020, 35.776192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956354, 34.184361, 36.550400>,  <32.021618, 34.629326, 35.961456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956354, 34.184361, 36.550400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713402, 34.238529, 36.863514>,  <31.567631, 34.271030, 37.051384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713402, 34.238529, 36.863514>,  <31.956354, 34.184361, 36.550400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713402, 34.238529, 36.863514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636936, 0.671899, 0.377975,
		-0.474767, 0.728157, -0.494352,
		-0.607379, 0.135421, 0.782785,
		31.531187, 34.279156, 37.098351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466097, 33.618027, 36.705791>,  <31.956354, 34.184361, 36.550400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466097, 33.618027, 36.705791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725456, 33.446262, 36.454334>,  <31.881071, 33.343204, 36.303459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725456, 33.446262, 36.454334>,  <31.466097, 33.618027, 36.705791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725456, 33.446262, 36.454334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411828, -0.496652, 0.764026,
		-0.640297, -0.754282, -0.145183,
		0.648396, -0.429413, -0.628639,
		31.919975, 33.317440, 36.265743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658239, 32.964111, 36.864929>,  <31.466097, 33.618027, 36.705791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658239, 32.964111, 36.864929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982197, 33.050034, 36.646595>,  <32.176571, 33.101585, 36.515594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982197, 33.050034, 36.646595>,  <31.658239, 32.964111, 36.864929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982197, 33.050034, 36.646595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565889, -0.531076, 0.630657,
		-0.154413, -0.819645, -0.551668,
		0.809893, 0.214801, -0.545833,
		32.225166, 33.114475, 36.482845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032684, 32.346359, 36.655281>,  <31.658239, 32.964111, 36.864929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032684, 32.346359, 36.655281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247723, 32.679089, 36.710510>,  <32.376747, 32.878727, 36.743649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247723, 32.679089, 36.710510>,  <32.032684, 32.346359, 36.655281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247723, 32.679089, 36.710510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628692, -0.504542, 0.591763,
		0.561902, -0.231329, -0.794200,
		0.537599, 0.831820, 0.138068,
		32.409000, 32.928635, 36.751930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672306, 32.075981, 36.788643>,  <32.032684, 32.346359, 36.655281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672306, 32.075981, 36.788643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720139, 32.448414, 36.926510>,  <32.748840, 32.671871, 37.009232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720139, 32.448414, 36.926510>,  <32.672306, 32.075981, 36.788643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720139, 32.448414, 36.926510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708132, -0.323315, 0.627707,
		0.695880, 0.169006, -0.697989,
		0.119584, 0.931077, 0.344667,
		32.756012, 32.727737, 37.029911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362076, 31.991932, 37.046650>,  <32.672306, 32.075981, 36.788643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362076, 31.991932, 37.046650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228363, 32.345097, 37.178543>,  <33.148136, 32.556995, 37.257679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228363, 32.345097, 37.178543>,  <33.362076, 31.991932, 37.046650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228363, 32.345097, 37.178543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667974, -0.024869, 0.743769,
		0.664881, 0.468884, -0.581447,
		-0.334281, 0.882910, 0.329737,
		33.128078, 32.609970, 37.277466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918545, 32.473534, 37.025070>,  <33.362076, 31.991932, 37.046650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918545, 32.473534, 37.025070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663658, 32.593307, 37.309124>,  <33.510727, 32.665173, 37.479557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663658, 32.593307, 37.309124>,  <33.918545, 32.473534, 37.025070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663658, 32.593307, 37.309124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740727, -0.016440, 0.671605,
		0.212775, 0.953976, -0.211322,
		-0.637221, 0.299433, 0.710134,
		33.472492, 32.683136, 37.522163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277004, 32.987915, 37.371082>,  <33.918545, 32.473534, 37.025070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277004, 32.987915, 37.371082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983234, 32.841644, 37.599785>,  <33.806973, 32.753883, 37.737007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983234, 32.841644, 37.599785>,  <34.277004, 32.987915, 37.371082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983234, 32.841644, 37.599785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606999, 0.022951, 0.794371,
		-0.303602, 0.930461, 0.205107,
		-0.734424, -0.365673, 0.571756,
		33.762909, 32.731941, 37.771313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246246, 33.319271, 37.988369>,  <34.277004, 32.987915, 37.371082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246246, 33.319271, 37.988369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055164, 32.976700, 38.066677>,  <33.940517, 32.771156, 38.113663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055164, 32.976700, 38.066677>,  <34.246246, 33.319271, 37.988369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055164, 32.976700, 38.066677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470695, -0.061347, 0.880161,
		-0.741786, 0.512605, 0.432423,
		-0.477702, -0.856430, 0.195775,
		33.911854, 32.719772, 38.125408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925968, 33.363720, 38.740276>,  <34.246246, 33.319271, 37.988369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925968, 33.363720, 38.740276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955994, 32.978500, 38.636810>,  <33.974007, 32.747368, 38.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955994, 32.978500, 38.636810>,  <33.925968, 33.363720, 38.740276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955994, 32.978500, 38.636810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576458, -0.169755, 0.799300,
		-0.813672, -0.209107, 0.542413,
		0.075062, -0.963046, -0.258666,
		33.978512, 32.689587, 38.559212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794788, 33.025963, 39.374470>,  <33.925968, 33.363720, 38.740276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794788, 33.025963, 39.374470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965496, 32.719761, 39.181854>,  <34.067921, 32.536041, 39.066284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965496, 32.719761, 39.181854>,  <33.794788, 33.025963, 39.374470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965496, 32.719761, 39.181854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659240, -0.101177, 0.745095,
		-0.619091, -0.635431, 0.461469,
		0.426766, -0.765500, -0.481539,
		34.093525, 32.490112, 39.037392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872044, 32.536304, 39.848969>,  <33.794788, 33.025963, 39.374470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872044, 32.536304, 39.848969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132633, 32.435791, 39.562630>,  <34.288986, 32.375484, 39.390827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132633, 32.435791, 39.562630>,  <33.872044, 32.536304, 39.848969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132633, 32.435791, 39.562630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689251, -0.198267, 0.696867,
		-0.317041, -0.947389, 0.044033,
		0.651473, -0.251286, -0.715848,
		34.328075, 32.360405, 39.347874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031914, 31.903151, 40.153709>,  <33.872044, 32.536304, 39.848969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031914, 31.903151, 40.153709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301331, 31.968159, 39.865284>,  <34.462982, 32.007164, 39.692230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301331, 31.968159, 39.865284>,  <34.031914, 31.903151, 40.153709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301331, 31.968159, 39.865284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727352, -0.319324, 0.607447,
		-0.131530, -0.933606, -0.333287,
		0.673542, 0.162520, -0.721060,
		34.503395, 32.016914, 39.648968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541424, 31.336420, 40.038036>,  <34.031914, 31.903151, 40.153709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541424, 31.336420, 40.038036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733498, 31.662622, 39.908810>,  <34.848743, 31.858343, 39.831276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733498, 31.662622, 39.908810>,  <34.541424, 31.336420, 40.038036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733498, 31.662622, 39.908810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749048, -0.189574, 0.634814,
		0.456451, -0.546819, -0.701885,
		0.480188, 0.815506, -0.323063,
		34.877552, 31.907274, 39.811890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329636, 31.182388, 39.870865>,  <34.541424, 31.336420, 40.038036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329636, 31.182388, 39.870865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317989, 31.579018, 39.921360>,  <35.311001, 31.816996, 39.951656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317989, 31.579018, 39.921360>,  <35.329636, 31.182388, 39.870865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317989, 31.579018, 39.921360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687860, -0.071759, 0.722288,
		0.725259, 0.107864, -0.679974,
		-0.029115, 0.991572, 0.126239,
		35.309254, 31.876490, 39.959232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988224, 31.409237, 39.833111>,  <35.329636, 31.182388, 39.870865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988224, 31.409237, 39.833111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772961, 31.676329, 40.038837>,  <35.643803, 31.836584, 40.162273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772961, 31.676329, 40.038837>,  <35.988224, 31.409237, 39.833111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772961, 31.676329, 40.038837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660266, -0.045280, 0.749666,
		0.523862, 0.743026, -0.416511,
		-0.538162, 0.667729, 0.514315,
		35.611511, 31.876648, 40.193130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533123, 31.903202, 40.063931>,  <35.988224, 31.409237, 39.833111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533123, 31.903202, 40.063931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206730, 31.955654, 40.289135>,  <36.010895, 31.987125, 40.424255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206730, 31.955654, 40.289135>,  <36.533123, 31.903202, 40.063931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206730, 31.955654, 40.289135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569548, 0.015669, 0.821809,
		0.098942, 0.991241, -0.087470,
		-0.815981, 0.131130, 0.563010,
		35.961937, 31.994993, 40.458038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796494, 32.304878, 40.579758>,  <36.533123, 31.903202, 40.063931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796494, 32.304878, 40.579758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455585, 32.165760, 40.736050>,  <36.251041, 32.082287, 40.829826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455585, 32.165760, 40.736050>,  <36.796494, 32.304878, 40.579758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455585, 32.165760, 40.736050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465090, -0.161933, 0.870327,
		-0.239425, 0.923480, 0.299768,
		-0.852272, -0.347797, 0.390730,
		36.199905, 32.061420, 40.853268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740967, 32.536072, 41.276432>,  <36.796494, 32.304878, 40.579758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740967, 32.536072, 41.276432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508663, 32.210663, 41.288425>,  <36.369282, 32.015419, 41.295620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508663, 32.210663, 41.288425>,  <36.740967, 32.536072, 41.276432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508663, 32.210663, 41.288425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269691, -0.157517, 0.949977,
		-0.768106, 0.559793, 0.310879,
		-0.580758, -0.813524, 0.029981,
		36.334435, 31.966606, 41.297421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348328, 32.568676, 41.896683>,  <36.740967, 32.536072, 41.276432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348328, 32.568676, 41.896683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289787, 32.187305, 41.791187>,  <36.254662, 31.958483, 41.727890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289787, 32.187305, 41.791187>,  <36.348328, 32.568676, 41.896683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289787, 32.187305, 41.791187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217432, -0.291091, 0.931659,
		-0.965041, 0.079003, 0.249907,
		-0.146350, -0.953428, -0.263737,
		36.245884, 31.901278, 41.712067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850941, 32.296009, 42.334080>,  <36.348328, 32.568676, 41.896683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850941, 32.296009, 42.334080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050343, 31.983727, 42.183350>,  <36.169983, 31.796358, 42.092911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050343, 31.983727, 42.183350>,  <35.850941, 32.296009, 42.334080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050343, 31.983727, 42.183350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117171, -0.370013, 0.921608,
		-0.858930, -0.503581, -0.092979,
		0.498507, -0.780703, -0.376821,
		36.199894, 31.749516, 42.070305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648113, 31.740244, 42.845974>,  <35.850941, 32.296009, 42.334080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648113, 31.740244, 42.845974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931583, 31.566929, 42.623253>,  <36.101665, 31.462940, 42.489620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931583, 31.566929, 42.623253>,  <35.648113, 31.740244, 42.845974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931583, 31.566929, 42.623253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361614, -0.454589, 0.813993,
		-0.605812, -0.778209, -0.165474,
		0.708679, -0.433289, -0.556807,
		36.144188, 31.436941, 42.456211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627537, 30.944939, 42.939365>,  <35.648113, 31.740244, 42.845974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627537, 30.944939, 42.939365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999344, 31.067513, 42.857292>,  <36.222427, 31.141056, 42.808048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999344, 31.067513, 42.857292>,  <35.627537, 30.944939, 42.939365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999344, 31.067513, 42.857292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335394, -0.471104, 0.815826,
		0.153336, -0.827139, -0.540675,
		0.929515, 0.306435, -0.205181,
		36.278198, 31.159443, 42.795738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976799, 30.582674, 43.342266>,  <35.627537, 30.944939, 42.939365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976799, 30.582674, 43.342266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313946, 30.782984, 43.263477>,  <36.516235, 30.903170, 43.216206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313946, 30.782984, 43.263477>,  <35.976799, 30.582674, 43.342266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313946, 30.782984, 43.263477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424977, -0.394918, 0.814515,
		0.330102, -0.770236, -0.545682,
		0.842868, 0.500776, -0.196969,
		36.566807, 30.933216, 43.204388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587212, 30.107635, 43.309483>,  <35.976799, 30.582674, 43.342266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587212, 30.107635, 43.309483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749020, 30.463785, 43.393002>,  <36.846104, 30.677475, 43.443115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749020, 30.463785, 43.393002>,  <36.587212, 30.107635, 43.309483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749020, 30.463785, 43.393002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395516, -0.376183, 0.837886,
		0.824580, -0.256355, -0.504330,
		0.404517, 0.890375, 0.208801,
		36.870377, 30.730898, 43.455643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286491, 29.944271, 43.512180>,  <36.587212, 30.107635, 43.309483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286491, 29.944271, 43.512180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201237, 30.302305, 43.668846>,  <37.150085, 30.517126, 43.762844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201237, 30.302305, 43.668846>,  <37.286491, 29.944271, 43.512180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201237, 30.302305, 43.668846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261708, -0.333919, 0.905542,
		0.941319, 0.295506, -0.163079,
		-0.213138, 0.895083, 0.391661,
		37.137295, 30.570829, 43.786343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845821, 30.352942, 43.852234>,  <37.286491, 29.944271, 43.512180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845821, 30.352942, 43.852234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498219, 30.474163, 44.008686>,  <37.289658, 30.546896, 44.102558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498219, 30.474163, 44.008686>,  <37.845821, 30.352942, 43.852234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498219, 30.474163, 44.008686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339562, -0.209699, 0.916910,
		0.359893, 0.929615, 0.079324,
		-0.869008, 0.303054, 0.391131,
		37.237514, 30.565079, 44.126026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568695, 30.653761, 43.721382>,  <37.845821, 30.352942, 43.852234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568695, 30.653761, 43.721382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935589, 30.507072, 43.659157>,  <39.155724, 30.419060, 43.621822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935589, 30.507072, 43.659157>,  <38.568695, 30.653761, 43.721382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935589, 30.507072, 43.659157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217980, -0.135183, -0.966545,
		0.333424, 0.920456, -0.203932,
		0.917231, -0.366723, -0.155568,
		39.210758, 30.397057, 43.612488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815468, 30.977917, 43.149609>,  <38.568695, 30.653761, 43.721382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815468, 30.977917, 43.149609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099693, 30.697412, 43.126537>,  <39.270229, 30.529110, 43.112694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099693, 30.697412, 43.126537>,  <38.815468, 30.977917, 43.149609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099693, 30.697412, 43.126537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037654, 0.119755, -0.992089,
		0.702622, 0.702774, 0.111500,
		0.710567, -0.701262, -0.057680,
		39.312862, 30.487034, 43.109234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447063, 31.326229, 42.842770>,  <38.815468, 30.977917, 43.149609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447063, 31.326229, 42.842770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479866, 30.932459, 42.780563>,  <39.499546, 30.696198, 42.743240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479866, 30.932459, 42.780563>,  <39.447063, 31.326229, 42.842770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479866, 30.932459, 42.780563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033737, 0.153211, -0.987617,
		0.996061, 0.086239, -0.020647,
		0.082007, -0.984423, -0.155517,
		39.504467, 30.637133, 42.733910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960091, 31.221025, 42.220940>,  <39.447063, 31.326229, 42.842770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960091, 31.221025, 42.220940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765251, 30.873453, 42.256039>,  <39.648346, 30.664909, 42.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765251, 30.873453, 42.256039>,  <39.960091, 31.221025, 42.220940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765251, 30.873453, 42.256039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145473, -0.018344, -0.989192,
		0.861147, -0.494597, -0.117470,
		-0.487097, -0.868929, 0.087748,
		39.619122, 30.612774, 42.282364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150120, 30.821962, 41.687180>,  <39.960091, 31.221025, 42.220940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150120, 30.821962, 41.687180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812519, 30.635059, 41.792500>,  <39.609959, 30.522919, 41.855690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812519, 30.635059, 41.792500>,  <40.150120, 30.821962, 41.687180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812519, 30.635059, 41.792500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132968, -0.293301, -0.946728,
		0.519591, -0.834054, 0.185417,
		-0.844005, -0.467257, 0.263299,
		39.559319, 30.494883, 41.871490>
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
