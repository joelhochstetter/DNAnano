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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.445187, 31.978891, 23.095312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078209, 32.049431, 22.952652>,  <42.858021, 32.091755, 22.867056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078209, 32.049431, 22.952652>,  <43.445187, 31.978891, 23.095312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078209, 32.049431, 22.952652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273527, 0.371412, 0.887263,
		0.288931, 0.911567, -0.292514,
		-0.917443, 0.176347, -0.356651,
		42.802975, 32.102337, 22.845657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241135, 32.638477, 23.378910>,  <43.445187, 31.978891, 23.095312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241135, 32.638477, 23.378910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903458, 32.440666, 23.296181>,  <42.700851, 32.321980, 23.246544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903458, 32.440666, 23.296181>,  <43.241135, 32.638477, 23.378910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903458, 32.440666, 23.296181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332605, 0.180680, 0.925596,
		-0.420363, 0.850175, -0.317012,
		-0.844197, -0.494526, -0.206821,
		42.650200, 32.292309, 23.234135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555107, 33.027134, 23.528439>,  <43.241135, 32.638477, 23.378910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555107, 33.027134, 23.528439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529167, 32.631969, 23.584755>,  <42.513603, 32.394871, 23.618546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529167, 32.631969, 23.584755>,  <42.555107, 33.027134, 23.528439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529167, 32.631969, 23.584755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452791, 0.154860, 0.878066,
		-0.889255, -0.006804, -0.457361,
		-0.064853, -0.987913, 0.140791,
		42.509712, 32.335594, 23.626991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888149, 33.394863, 23.533596>,  <42.555107, 33.027134, 23.528439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888149, 33.394863, 23.533596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612778, 33.105270, 23.551117>,  <41.447556, 32.931515, 23.561630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612778, 33.105270, 23.551117>,  <41.888149, 33.394863, 23.533596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612778, 33.105270, 23.551117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212568, 0.259132, 0.942160,
		-0.693456, 0.639299, -0.332289,
		-0.688428, -0.723981, 0.043802,
		41.406250, 32.888077, 23.564257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237232, 33.815918, 23.687914>,  <41.888149, 33.394863, 23.533596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237232, 33.815918, 23.687914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252693, 33.424923, 23.770878>,  <41.261971, 33.190327, 23.820656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252693, 33.424923, 23.770878>,  <41.237232, 33.815918, 23.687914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252693, 33.424923, 23.770878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051115, 0.205358, 0.977351,
		-0.997944, -0.048378, -0.042027,
		0.038651, -0.977490, 0.207409,
		41.264290, 33.131676, 23.833101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555832, 34.213200, 23.999989>,  <41.237232, 33.815918, 23.687914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555832, 34.213200, 23.999989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181389, 34.281830, 24.122795>,  <39.956722, 34.323006, 24.196480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181389, 34.281830, 24.122795>,  <40.555832, 34.213200, 23.999989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181389, 34.281830, 24.122795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127034, 0.978951, -0.159739,
		-0.327963, -0.110532, -0.938202,
		-0.936111, 0.171572, 0.307018,
		39.900555, 34.333302, 24.214901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313240, 34.599030, 23.585571>,  <40.555832, 34.213200, 23.999989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313240, 34.599030, 23.585571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081455, 34.669472, 23.903870>,  <39.942383, 34.711739, 24.094849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081455, 34.669472, 23.903870>,  <40.313240, 34.599030, 23.585571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081455, 34.669472, 23.903870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013050, 0.974245, -0.225114,
		-0.814896, -0.140829, -0.562238,
		-0.579460, 0.176108, 0.795746,
		39.907616, 34.722305, 24.142593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834316, 35.055531, 23.385427>,  <40.313240, 34.599030, 23.585571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834316, 35.055531, 23.385427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851425, 35.069824, 23.784805>,  <39.861691, 35.078400, 24.024433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851425, 35.069824, 23.784805>,  <39.834316, 35.055531, 23.385427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851425, 35.069824, 23.784805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015821, 0.999259, -0.035081,
		-0.998960, -0.014296, 0.043305,
		0.042771, 0.035730, 0.998446,
		39.864258, 35.080544, 24.084339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291969, 35.556965, 23.614037>,  <39.834316, 35.055531, 23.385427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291969, 35.556965, 23.614037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535835, 35.537529, 23.930504>,  <39.682156, 35.525867, 24.120384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535835, 35.537529, 23.930504>,  <39.291969, 35.556965, 23.614037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535835, 35.537529, 23.930504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092049, 0.987027, 0.131546,
		-0.787294, -0.153025, 0.597287,
		0.609668, -0.048586, 0.791166,
		39.718735, 35.522953, 24.167854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955650, 35.968197, 24.094296>,  <39.291969, 35.556965, 23.614037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955650, 35.968197, 24.094296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331772, 35.942005, 24.227882>,  <39.557446, 35.926289, 24.308035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331772, 35.942005, 24.227882>,  <38.955650, 35.968197, 24.094296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331772, 35.942005, 24.227882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006658, 0.984666, 0.174323,
		-0.340259, -0.161694, 0.926326,
		0.940308, -0.065482, 0.333965,
		39.613865, 35.922359, 24.328072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959949, 36.248947, 24.725483>,  <38.955650, 35.968197, 24.094296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959949, 36.248947, 24.725483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337681, 36.284542, 24.598785>,  <39.564320, 36.305897, 24.522766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337681, 36.284542, 24.598785>,  <38.959949, 36.248947, 24.725483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337681, 36.284542, 24.598785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036685, 0.985204, 0.167411,
		0.326954, -0.146472, 0.933621,
		0.944328, 0.088985, -0.316743,
		39.620979, 36.311237, 24.503763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272602, 36.511219, 25.296013>,  <38.959949, 36.248947, 24.725483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272602, 36.511219, 25.296013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529621, 36.607632, 25.005074>,  <39.683834, 36.665478, 24.830509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529621, 36.607632, 25.005074>,  <39.272602, 36.511219, 25.296013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529621, 36.607632, 25.005074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132903, 0.969908, 0.204000,
		0.754632, -0.034413, 0.655246,
		0.642548, 0.241029, -0.727349,
		39.722385, 36.679939, 24.786869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604595, 36.951656, 25.675184>,  <39.272602, 36.511219, 25.296013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604595, 36.951656, 25.675184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720188, 37.003914, 25.295834>,  <39.789543, 37.035271, 25.068222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720188, 37.003914, 25.295834>,  <39.604595, 36.951656, 25.675184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720188, 37.003914, 25.295834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079026, 0.990519, 0.112371,
		0.954067, 0.042473, 0.296565,
		0.288981, 0.130646, -0.948378,
		39.806881, 37.043106, 25.011320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985249, 37.546406, 25.696121>,  <39.604595, 36.951656, 25.675184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985249, 37.546406, 25.696121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873550, 37.507481, 25.314011>,  <39.806534, 37.484127, 25.084743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873550, 37.507481, 25.314011>,  <39.985249, 37.546406, 25.696121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873550, 37.507481, 25.314011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082457, 0.988747, -0.124823,
		0.956674, -0.113625, -0.268076,
		-0.279243, -0.097310, -0.955277,
		39.789776, 37.478287, 25.027428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470764, 37.972015, 25.231577>,  <39.985249, 37.546406, 25.696121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470764, 37.972015, 25.231577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122173, 37.939865, 25.038055>,  <39.913017, 37.920574, 24.921942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122173, 37.939865, 25.038055>,  <40.470764, 37.972015, 25.231577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122173, 37.939865, 25.038055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021431, 0.991779, -0.126154,
		0.489967, -0.099572, -0.866036,
		-0.871478, -0.080371, -0.483805,
		39.860729, 37.915752, 24.892914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649162, 38.371132, 24.714037>,  <40.470764, 37.972015, 25.231577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649162, 38.371132, 24.714037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251846, 38.328499, 24.732021>,  <40.013458, 38.302917, 24.742813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251846, 38.328499, 24.732021>,  <40.649162, 38.371132, 24.714037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251846, 38.328499, 24.732021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111591, 0.985269, -0.129584,
		-0.030489, -0.133732, -0.990548,
		-0.993286, -0.106585, 0.044963,
		39.953861, 38.296524, 24.745510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389980, 38.900414, 24.203266>,  <40.649162, 38.371132, 24.714037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389980, 38.900414, 24.203266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059326, 38.796520, 24.402950>,  <39.860931, 38.734184, 24.522760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059326, 38.796520, 24.402950>,  <40.389980, 38.900414, 24.203266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059326, 38.796520, 24.402950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333420, 0.940693, -0.062677,
		-0.453322, -0.218257, -0.864212,
		-0.826638, -0.259733, 0.499208,
		39.811337, 38.718601, 24.552713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882538, 39.171921, 23.856903>,  <40.389980, 38.900414, 24.203266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882538, 39.171921, 23.856903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738350, 39.132866, 24.227962>,  <39.651836, 39.109432, 24.450598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738350, 39.132866, 24.227962>,  <39.882538, 39.171921, 23.856903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738350, 39.132866, 24.227962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403481, 0.912973, -0.060692,
		-0.840991, -0.396165, -0.368494,
		-0.360469, -0.097638, 0.927647,
		39.630211, 39.103573, 24.506256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121094, 39.496597, 23.843382>,  <39.882538, 39.171921, 23.856903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121094, 39.496597, 23.843382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261536, 39.472679, 24.217152>,  <39.345802, 39.458328, 24.441414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261536, 39.472679, 24.217152>,  <39.121094, 39.496597, 23.843382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261536, 39.472679, 24.217152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372804, 0.906520, 0.198088,
		-0.858919, -0.417908, 0.295994,
		0.351107, -0.059794, 0.934424,
		39.366867, 39.454742, 24.497478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505684, 39.637939, 24.264721>,  <39.121094, 39.496597, 23.843382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505684, 39.637939, 24.264721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834545, 39.719601, 24.477283>,  <39.031860, 39.768597, 24.604820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834545, 39.719601, 24.477283>,  <38.505684, 39.637939, 24.264721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834545, 39.719601, 24.477283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380844, 0.891070, 0.246886,
		-0.423118, -0.405360, 0.810342,
		0.822149, 0.204152, 0.531406,
		39.081188, 39.780846, 24.636705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231430, 39.937622, 24.829983>,  <38.505684, 39.637939, 24.264721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231430, 39.937622, 24.829983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621586, 40.025803, 24.828812>,  <38.855679, 40.078712, 24.828110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621586, 40.025803, 24.828812>,  <38.231430, 39.937622, 24.829983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621586, 40.025803, 24.828812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179302, 0.800904, 0.571318,
		0.128294, -0.556735, 0.820724,
		0.975393, 0.220454, -0.002928,
		38.914204, 40.091938, 24.827932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259682, 40.132561, 25.436314>,  <38.231430, 39.937622, 24.829983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259682, 40.132561, 25.436314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569504, 40.285908, 25.235081>,  <38.755398, 40.377918, 25.114342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569504, 40.285908, 25.235081>,  <38.259682, 40.132561, 25.436314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569504, 40.285908, 25.235081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160335, 0.888405, 0.430150,
		0.611847, -0.252513, 0.749586,
		0.774555, 0.383371, -0.503082,
		38.801872, 40.400921, 25.084156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538227, 40.576294, 25.872669>,  <38.259682, 40.132561, 25.436314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538227, 40.576294, 25.872669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688828, 40.705578, 25.525387>,  <38.779186, 40.783150, 25.317017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688828, 40.705578, 25.525387>,  <38.538227, 40.576294, 25.872669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688828, 40.705578, 25.525387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122591, 0.946307, 0.299123,
		0.918270, -0.006184, 0.395907,
		0.376499, 0.323210, -0.868207,
		38.801777, 40.802540, 25.264925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186314, 41.058304, 26.028378>,  <38.538227, 40.576294, 25.872669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186314, 41.058304, 26.028378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014847, 41.130035, 25.674183>,  <38.911968, 41.173073, 25.461666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014847, 41.130035, 25.674183>,  <39.186314, 41.058304, 26.028378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014847, 41.130035, 25.674183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064414, 0.983675, 0.168030,
		0.901164, 0.014991, -0.433218,
		-0.428665, 0.179328, -0.885487,
		38.886246, 41.183834, 25.408537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587154, 41.647476, 25.772217>,  <39.186314, 41.058304, 26.028378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587154, 41.647476, 25.772217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264816, 41.652061, 25.535408>,  <39.071415, 41.654812, 25.393324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264816, 41.652061, 25.535408>,  <39.587154, 41.647476, 25.772217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264816, 41.652061, 25.535408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120452, 0.975734, 0.182849,
		0.579751, 0.218657, -0.784906,
		-0.805841, 0.011464, -0.592021,
		39.023064, 41.655502, 25.357801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799938, 42.110924, 25.356470>,  <39.587154, 41.647476, 25.772217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799938, 42.110924, 25.356470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402157, 42.078850, 25.329262>,  <39.163486, 42.059605, 25.312937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402157, 42.078850, 25.329262>,  <39.799938, 42.110924, 25.356470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402157, 42.078850, 25.329262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086675, 0.991347, 0.098585,
		0.059528, 0.103934, -0.992801,
		-0.994456, -0.080182, -0.068021,
		39.103821, 42.054794, 25.308855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492283, 42.681694, 25.011059>,  <39.799938, 42.110924, 25.356470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492283, 42.681694, 25.011059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218700, 42.523350, 25.256172>,  <39.054550, 42.428345, 25.403240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218700, 42.523350, 25.256172>,  <39.492283, 42.681694, 25.011059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218700, 42.523350, 25.256172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050541, 0.863670, 0.501518,
		-0.727770, 0.312046, -0.610719,
		-0.683956, -0.395857, 0.612782,
		39.013512, 42.404594, 25.440006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867794, 43.159760, 25.138416>,  <39.492283, 42.681694, 25.011059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867794, 43.159760, 25.138416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993809, 42.925362, 25.437042>,  <39.069420, 42.784721, 25.616219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993809, 42.925362, 25.437042>,  <38.867794, 43.159760, 25.138416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993809, 42.925362, 25.437042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045515, 0.776388, 0.628610,
		-0.947987, -0.232016, 0.217920,
		0.315038, -0.585996, 0.746565,
		39.088322, 42.749561, 25.661013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425499, 43.467358, 25.596300>,  <38.867794, 43.159760, 25.138416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425499, 43.467358, 25.596300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755440, 43.284245, 25.729000>,  <38.953403, 43.174377, 25.808620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755440, 43.284245, 25.729000>,  <38.425499, 43.467358, 25.596300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755440, 43.284245, 25.729000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324991, 0.864105, 0.384323,
		-0.462604, -0.209193, 0.861531,
		0.824851, -0.457779, 0.331752,
		39.002895, 43.146912, 25.828526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451931, 43.391701, 26.295387>,  <38.425499, 43.467358, 25.596300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451931, 43.391701, 26.295387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813126, 43.451488, 26.134254>,  <39.029842, 43.487362, 26.037575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813126, 43.451488, 26.134254>,  <38.451931, 43.391701, 26.295387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813126, 43.451488, 26.134254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127447, 0.802180, 0.583322,
		0.410330, -0.578072, 0.705310,
		0.902988, 0.149465, -0.402832,
		39.084023, 43.496326, 26.013405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895428, 43.439384, 26.799046>,  <38.451931, 43.391701, 26.295387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895428, 43.439384, 26.799046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063396, 43.640110, 26.496563>,  <39.164177, 43.760544, 26.315073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063396, 43.640110, 26.496563>,  <38.895428, 43.439384, 26.799046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063396, 43.640110, 26.496563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338721, 0.686368, 0.643557,
		0.841982, -0.526388, 0.118247,
		0.419922, 0.501811, -0.756208,
		39.189373, 43.790653, 26.269701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236137, 43.182888, 27.342804>,  <38.895428, 43.439384, 26.799046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236137, 43.182888, 27.342804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890152, 42.983635, 27.367126>,  <38.682560, 42.864082, 27.381720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890152, 42.983635, 27.367126>,  <39.236137, 43.182888, 27.342804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890152, 42.983635, 27.367126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392508, -0.596053, 0.700470,
		-0.312685, 0.629749, 0.711087,
		-0.864966, -0.498133, 0.060804,
		38.630661, 42.834194, 27.385368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801853, 43.314415, 27.949650>,  <39.236137, 43.182888, 27.342804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801853, 43.314415, 27.949650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771423, 42.930664, 27.840977>,  <38.753166, 42.700413, 27.775774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771423, 42.930664, 27.840977>,  <38.801853, 43.314415, 27.949650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771423, 42.930664, 27.840977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509542, -0.271614, 0.816451,
		-0.857076, -0.076319, 0.509506,
		-0.076079, -0.959376, -0.271681,
		38.748600, 42.642853, 27.759472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772907, 42.934761, 28.541992>,  <38.801853, 43.314415, 27.949650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772907, 42.934761, 28.541992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856747, 42.657333, 28.266304>,  <38.907051, 42.490875, 28.100891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856747, 42.657333, 28.266304>,  <38.772907, 42.934761, 28.541992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856747, 42.657333, 28.266304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541719, -0.504442, 0.672368,
		-0.814008, -0.514294, 0.269989,
		0.209601, -0.693571, -0.689222,
		38.919628, 42.449261, 28.059538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519611, 42.277084, 28.787807>,  <38.772907, 42.934761, 28.541992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519611, 42.277084, 28.787807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790188, 42.167545, 28.514332>,  <38.952534, 42.101822, 28.350246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790188, 42.167545, 28.514332>,  <38.519611, 42.277084, 28.787807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790188, 42.167545, 28.514332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353894, -0.693252, 0.627822,
		-0.645898, -0.666640, -0.372031,
		0.676442, -0.273849, -0.683690,
		38.993122, 42.085392, 28.309225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154308, 41.834339, 28.792109>,  <38.519611, 42.277084, 28.787807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154308, 41.834339, 28.792109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451153, 41.566700, 28.808025>,  <39.629257, 41.406116, 28.817575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451153, 41.566700, 28.808025>,  <39.154308, 41.834339, 28.792109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451153, 41.566700, 28.808025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654974, -0.736499, -0.169053,
		0.142418, 0.099395, -0.984803,
		0.742110, -0.669097, 0.039790,
		39.673786, 41.365971, 28.819962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902721, 41.175301, 28.497002>,  <39.154308, 41.834339, 28.792109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902721, 41.175301, 28.497002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246140, 41.032227, 28.643951>,  <39.452190, 40.946381, 28.732122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246140, 41.032227, 28.643951>,  <38.902721, 41.175301, 28.497002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246140, 41.032227, 28.643951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282157, -0.927827, -0.243975,
		0.428129, 0.105805, -0.897503,
		0.858541, -0.357689, 0.367376,
		39.503700, 40.924919, 28.754164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089886, 40.654194, 28.124302>,  <38.902721, 41.175301, 28.497002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089886, 40.654194, 28.124302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333038, 40.565769, 28.429356>,  <39.478931, 40.512714, 28.612387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333038, 40.565769, 28.429356>,  <39.089886, 40.654194, 28.124302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333038, 40.565769, 28.429356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155827, -0.975000, -0.158409,
		0.778585, -0.022544, -0.627134,
		0.607885, -0.221060, 0.762633,
		39.515404, 40.499451, 28.658146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533398, 40.186825, 27.924089>,  <39.089886, 40.654194, 28.124302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533398, 40.186825, 27.924089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553398, 40.115788, 28.317223>,  <39.565399, 40.073166, 28.553102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553398, 40.115788, 28.317223>,  <39.533398, 40.186825, 27.924089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553398, 40.115788, 28.317223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161565, -0.972541, -0.167514,
		0.985595, -0.150415, -0.077321,
		0.050001, -0.177594, 0.982833,
		39.568398, 40.062508, 28.612072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848389, 39.622631, 27.963484>,  <39.533398, 40.186825, 27.924089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848389, 39.622631, 27.963484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672577, 39.649719, 28.321751>,  <39.567089, 39.665974, 28.536711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672577, 39.649719, 28.321751>,  <39.848389, 39.622631, 27.963484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672577, 39.649719, 28.321751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252013, -0.966400, -0.050598,
		0.862148, -0.247960, 0.441833,
		-0.439533, 0.067724, 0.895670,
		39.540718, 39.670036, 28.590452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226658, 39.110447, 28.271511>,  <39.848389, 39.622631, 27.963484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226658, 39.110447, 28.271511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877186, 39.194889, 28.446838>,  <39.667503, 39.245556, 28.552034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877186, 39.194889, 28.446838>,  <40.226658, 39.110447, 28.271511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877186, 39.194889, 28.446838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263154, -0.962836, -0.060801,
		0.409192, -0.168465, 0.896761,
		-0.873677, 0.211107, 0.438317,
		39.615082, 39.258221, 28.578333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118011, 38.679066, 28.829414>,  <40.226658, 39.110447, 28.271511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118011, 38.679066, 28.829414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752117, 38.795162, 28.716972>,  <39.532581, 38.864819, 28.649508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752117, 38.795162, 28.716972>,  <40.118011, 38.679066, 28.829414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752117, 38.795162, 28.716972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242825, -0.950943, -0.191685,
		-0.322948, -0.107082, 0.940339,
		-0.914735, 0.290242, -0.281103,
		39.477695, 38.882236, 28.632641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624271, 38.210175, 29.130344>,  <40.118011, 38.679066, 28.829414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624271, 38.210175, 29.130344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414215, 38.387653, 28.839867>,  <39.288181, 38.494141, 28.665581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414215, 38.387653, 28.839867>,  <39.624271, 38.210175, 29.130344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414215, 38.387653, 28.839867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319167, -0.893726, -0.315256,
		-0.788897, 0.066223, 0.610947,
		-0.525142, 0.443699, -0.726194,
		39.256672, 38.520763, 28.622009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954655, 37.823181, 29.094971>,  <39.624271, 38.210175, 29.130344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954655, 37.823181, 29.094971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950817, 38.013531, 28.743187>,  <38.948513, 38.127739, 28.532116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950817, 38.013531, 28.743187>,  <38.954655, 37.823181, 29.094971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950817, 38.013531, 28.743187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468497, -0.779138, -0.416479,
		-0.883413, 0.408029, 0.230421,
		-0.009594, 0.475875, -0.879461,
		38.947937, 38.156292, 28.479349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210590, 37.767189, 28.872278>,  <38.954655, 37.823181, 29.094971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210590, 37.767189, 28.872278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446270, 37.836235, 28.556545>,  <38.587677, 37.877663, 28.367105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446270, 37.836235, 28.556545>,  <38.210590, 37.767189, 28.872278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446270, 37.836235, 28.556545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461962, -0.729524, -0.504367,
		-0.662898, 0.661816, -0.350095,
		0.589201, 0.172613, -0.789333,
		38.623032, 37.888020, 28.319746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793766, 37.606960, 28.281944>,  <38.210590, 37.767189, 28.872278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793766, 37.606960, 28.281944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156090, 37.579041, 28.114784>,  <38.373482, 37.562286, 28.014488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156090, 37.579041, 28.114784>,  <37.793766, 37.606960, 28.281944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156090, 37.579041, 28.114784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309869, -0.781815, -0.541059,
		-0.288954, 0.619590, -0.729804,
		0.905807, -0.069803, -0.417901,
		38.427834, 37.558098, 27.989414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524033, 37.472557, 27.694147>,  <37.793766, 37.606960, 28.281944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524033, 37.472557, 27.694147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914215, 37.392403, 27.657654>,  <38.148327, 37.344311, 27.635757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914215, 37.392403, 27.657654>,  <37.524033, 37.472557, 27.694147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914215, 37.392403, 27.657654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206979, -0.693288, -0.690298,
		0.075073, 0.692242, -0.717750,
		0.975461, -0.200382, -0.091232,
		38.206852, 37.332287, 27.630283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748356, 37.645817, 26.962172>,  <37.524033, 37.472557, 27.694147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748356, 37.645817, 26.962172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977661, 37.365387, 27.131813>,  <38.115242, 37.197128, 27.233599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977661, 37.365387, 27.131813>,  <37.748356, 37.645817, 26.962172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977661, 37.365387, 27.131813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186221, -0.615528, -0.765798,
		0.797932, 0.360023, -0.483412,
		0.573259, -0.701076, 0.424106,
		38.149639, 37.155064, 27.259045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131481, 37.395191, 26.405754>,  <37.748356, 37.645817, 26.962172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131481, 37.395191, 26.405754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149139, 37.116501, 26.692146>,  <38.159737, 36.949287, 26.863981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149139, 37.116501, 26.692146>,  <38.131481, 37.395191, 26.405754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149139, 37.116501, 26.692146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137232, -0.714116, -0.686444,
		0.989555, -0.067950, -0.127139,
		0.044148, -0.696722, 0.715982,
		38.162384, 36.907486, 26.906940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410343, 36.880344, 26.037106>,  <38.131481, 37.395191, 26.405754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410343, 36.880344, 26.037106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254353, 36.704132, 26.360550>,  <38.160759, 36.598404, 26.554617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254353, 36.704132, 26.360550>,  <38.410343, 36.880344, 26.037106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254353, 36.704132, 26.360550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373572, -0.726938, -0.576199,
		0.841643, -0.526779, 0.118919,
		-0.389976, -0.440529, 0.808612,
		38.137360, 36.571972, 26.603134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628456, 36.297329, 25.952124>,  <38.410343, 36.880344, 26.037106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628456, 36.297329, 25.952124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320919, 36.233055, 26.199692>,  <38.136398, 36.194492, 26.348232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320919, 36.233055, 26.199692>,  <38.628456, 36.297329, 25.952124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320919, 36.233055, 26.199692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391389, -0.647164, -0.654212,
		0.505664, -0.745224, 0.434677,
		-0.768842, -0.160684, 0.618920,
		38.090267, 36.184849, 26.385368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593857, 35.606651, 25.905331>,  <38.628456, 36.297329, 25.952124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593857, 35.606651, 25.905331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234520, 35.707268, 26.049393>,  <38.018917, 35.767639, 26.135830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234520, 35.707268, 26.049393>,  <38.593857, 35.606651, 25.905331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234520, 35.707268, 26.049393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422199, -0.720884, -0.549613,
		0.121380, -0.645797, 0.753799,
		-0.898340, 0.251541, 0.360156,
		37.965019, 35.782730, 26.157440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304916, 35.001987, 26.179821>,  <38.593857, 35.606651, 25.905331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304916, 35.001987, 26.179821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993793, 35.230721, 26.075497>,  <37.807121, 35.367962, 26.012901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993793, 35.230721, 26.075497>,  <38.304916, 35.001987, 26.179821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993793, 35.230721, 26.075497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404300, -0.772948, -0.488972,
		-0.481204, -0.274880, 0.832396,
		-0.777807, 0.571833, -0.260812,
		37.760452, 35.402271, 25.997253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747616, 34.606567, 26.288624>,  <38.304916, 35.001987, 26.179821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747616, 34.606567, 26.288624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609615, 34.873936, 26.025051>,  <37.526814, 35.034355, 25.866907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609615, 34.873936, 26.025051>,  <37.747616, 34.606567, 26.288624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609615, 34.873936, 26.025051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270531, -0.743056, -0.612112,
		-0.898769, -0.032919, 0.437184,
		-0.345002, 0.668419, -0.658930,
		37.506115, 35.074463, 25.827372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089153, 34.416130, 26.129448>,  <37.747616, 34.606567, 26.288624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089153, 34.416130, 26.129448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194336, 34.640263, 25.815281>,  <37.257446, 34.774742, 25.626780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194336, 34.640263, 25.815281>,  <37.089153, 34.416130, 26.129448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194336, 34.640263, 25.815281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276701, -0.736072, -0.617765,
		-0.924279, 0.379771, -0.038509,
		0.262954, 0.560332, -0.785419,
		37.273224, 34.808361, 25.579655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513359, 34.365192, 25.682486>,  <37.089153, 34.416130, 26.129448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513359, 34.365192, 25.682486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826168, 34.483810, 25.463215>,  <37.013855, 34.554981, 25.331652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826168, 34.483810, 25.463215>,  <36.513359, 34.365192, 25.682486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826168, 34.483810, 25.463215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265113, -0.637729, -0.723199,
		-0.564052, 0.710888, -0.420101,
		0.782024, 0.296547, -0.548177,
		37.060776, 34.572773, 25.298761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259098, 34.412052, 25.012165>,  <36.513359, 34.365192, 25.682486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259098, 34.412052, 25.012165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656010, 34.383247, 24.971771>,  <36.894157, 34.365967, 24.947535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656010, 34.383247, 24.971771>,  <36.259098, 34.412052, 25.012165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656010, 34.383247, 24.971771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122749, -0.686761, -0.716444,
		-0.017760, 0.723308, -0.690297,
		0.992279, -0.072009, -0.100982,
		36.953693, 34.361645, 24.941477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437393, 34.527622, 24.325478>,  <36.259098, 34.412052, 25.012165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437393, 34.527622, 24.325478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710163, 34.279926, 24.481178>,  <36.873825, 34.131310, 24.574598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710163, 34.279926, 24.481178>,  <36.437393, 34.527622, 24.325478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710163, 34.279926, 24.481178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318460, -0.730466, -0.604154,
		0.658449, 0.288030, -0.695330,
		0.681929, -0.619239, 0.389249,
		36.914742, 34.094154, 24.597954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004650, 34.804531, 23.900570>,  <36.437393, 34.527622, 24.325478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004650, 34.804531, 23.900570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736115, 34.703247, 23.621948>,  <35.574993, 34.642479, 23.454775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736115, 34.703247, 23.621948>,  <36.004650, 34.804531, 23.900570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736115, 34.703247, 23.621948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553545, -0.453651, 0.698419,
		-0.492836, 0.854451, 0.164395,
		-0.671343, -0.253206, -0.696553,
		35.534710, 34.627285, 23.412983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315315, 34.814556, 24.257273>,  <36.004650, 34.804531, 23.900570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315315, 34.814556, 24.257273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254967, 34.590103, 23.931728>,  <35.218758, 34.455433, 23.736401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254967, 34.590103, 23.931728>,  <35.315315, 34.814556, 24.257273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254967, 34.590103, 23.931728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738886, -0.482920, 0.469932,
		-0.656722, 0.672252, -0.341750,
		-0.150874, -0.561129, -0.813862,
		35.209705, 34.421764, 23.687571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602196, 34.909805, 24.035448>,  <35.315315, 34.814556, 24.257273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602196, 34.909805, 24.035448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761303, 34.545040, 23.995052>,  <34.856770, 34.326183, 23.970816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761303, 34.545040, 23.995052>,  <34.602196, 34.909805, 24.035448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761303, 34.545040, 23.995052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798607, -0.398315, 0.451191,
		-0.451671, -0.098819, -0.886695,
		0.397770, -0.911911, -0.100989,
		34.880634, 34.271465, 23.964756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137711, 34.808361, 24.622309>,  <34.602196, 34.909805, 24.035448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137711, 34.808361, 24.622309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421429, 34.940968, 24.871143>,  <34.591660, 35.020531, 25.020445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421429, 34.940968, 24.871143>,  <34.137711, 34.808361, 24.622309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421429, 34.940968, 24.871143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088151, -0.917296, 0.388327,
		0.699375, -0.220602, -0.679860,
		0.709298, 0.331516, 0.622088,
		34.634220, 35.040421, 25.057770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972656, 35.500523, 24.616476>,  <34.137711, 34.808361, 24.622309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972656, 35.500523, 24.616476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301933, 35.677681, 24.758568>,  <34.499500, 35.783978, 24.843822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301933, 35.677681, 24.758568>,  <33.972656, 35.500523, 24.616476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301933, 35.677681, 24.758568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567537, -0.659281, -0.493205,
		0.015757, 0.607611, -0.794078,
		0.823197, 0.442897, 0.355230,
		34.548893, 35.810551, 24.865137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625286, 35.506496, 23.939833>,  <33.972656, 35.500523, 24.616476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625286, 35.506496, 23.939833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350597, 35.366753, 24.194820>,  <33.185783, 35.282906, 24.347813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350597, 35.366753, 24.194820>,  <33.625286, 35.506496, 23.939833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350597, 35.366753, 24.194820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225423, -0.731365, -0.643654,
		0.691087, -0.585709, 0.423489,
		-0.686719, -0.349357, 0.637469,
		33.144581, 35.261944, 24.386061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802979, 34.825706, 23.873915>,  <33.625286, 35.506496, 23.939833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802979, 34.825706, 23.873915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436356, 34.847557, 24.032375>,  <33.216381, 34.860668, 24.127451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436356, 34.847557, 24.032375>,  <33.802979, 34.825706, 23.873915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436356, 34.847557, 24.032375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318553, -0.698599, -0.640689,
		0.241750, -0.713425, 0.657710,
		-0.916559, 0.054629, 0.396150,
		33.161388, 34.863945, 24.151220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671371, 34.190041, 23.865244>,  <33.802979, 34.825706, 23.873915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671371, 34.190041, 23.865244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315113, 34.361004, 23.927307>,  <33.101357, 34.463581, 23.964546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315113, 34.361004, 23.927307>,  <33.671371, 34.190041, 23.865244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315113, 34.361004, 23.927307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438025, -0.714924, -0.544994,
		-0.122008, -0.553359, 0.823958,
		-0.890644, 0.427408, 0.155159,
		33.047920, 34.489227, 23.973854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283501, 33.651829, 23.937830>,  <33.671371, 34.190041, 23.865244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283501, 33.651829, 23.937830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061619, 33.962471, 23.818371>,  <32.928490, 34.148857, 23.746696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061619, 33.962471, 23.818371>,  <33.283501, 33.651829, 23.937830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061619, 33.962471, 23.818371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467612, -0.587853, -0.660127,
		-0.688219, -0.226522, 0.689233,
		-0.554701, 0.776606, -0.298647,
		32.895206, 34.195454, 23.728777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545433, 33.382542, 23.967325>,  <33.283501, 33.651829, 23.937830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545433, 33.382542, 23.967325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572479, 33.695068, 23.719143>,  <32.588707, 33.882584, 23.570232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572479, 33.695068, 23.719143>,  <32.545433, 33.382542, 23.967325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572479, 33.695068, 23.719143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653592, -0.435174, -0.619226,
		-0.753820, 0.447396, 0.481239,
		0.067617, 0.781319, -0.620458,
		32.592766, 33.929462, 23.533005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845661, 33.450832, 23.601851>,  <32.545433, 33.382542, 23.967325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845661, 33.450832, 23.601851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100922, 33.659801, 23.375633>,  <32.254078, 33.785183, 23.239902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100922, 33.659801, 23.375633>,  <31.845661, 33.450832, 23.601851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100922, 33.659801, 23.375633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436702, -0.359348, -0.824718,
		-0.634077, 0.773269, -0.001176,
		0.638152, 0.522421, -0.565543,
		32.292366, 33.816528, 23.205971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460907, 33.846909, 22.968128>,  <31.845661, 33.450832, 23.601851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460907, 33.846909, 22.968128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838591, 33.779747, 22.854797>,  <32.065201, 33.739449, 22.786798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838591, 33.779747, 22.854797>,  <31.460907, 33.846909, 22.968128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838591, 33.779747, 22.854797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326405, -0.362386, -0.873004,
		0.043910, 0.916779, -0.396974,
		0.944210, -0.167908, -0.283329,
		32.121853, 33.729374, 22.769798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362547, 33.991440, 22.249559>,  <31.460907, 33.846909, 22.968128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362547, 33.991440, 22.249559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718374, 33.812187, 22.285000>,  <31.931870, 33.704636, 22.306265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718374, 33.812187, 22.285000>,  <31.362547, 33.991440, 22.249559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718374, 33.812187, 22.285000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120025, -0.416439, -0.901206,
		0.440754, 0.791049, -0.424237,
		0.889567, -0.448129, 0.088601,
		31.985245, 33.677750, 22.311581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680721, 33.984207, 21.547869>,  <31.362547, 33.991440, 22.249559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680721, 33.984207, 21.547869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857874, 33.700802, 21.767639>,  <31.964165, 33.530758, 21.899502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857874, 33.700802, 21.767639>,  <31.680721, 33.984207, 21.547869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857874, 33.700802, 21.767639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101846, -0.648589, -0.754294,
		0.890777, 0.278106, -0.359407,
		0.442881, -0.708512, 0.549425,
		31.990738, 33.488247, 21.932467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067059, 33.510056, 21.078897>,  <31.680721, 33.984207, 21.547869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067059, 33.510056, 21.078897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060810, 33.271828, 21.400158>,  <32.057060, 33.128891, 21.592915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060810, 33.271828, 21.400158>,  <32.067059, 33.510056, 21.078897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060810, 33.271828, 21.400158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076975, -0.801581, -0.592910,
		0.996911, 0.052561, 0.058365,
		-0.015620, -0.595571, 0.803151,
		32.056126, 33.093155, 21.641104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597126, 32.893078, 20.942154>,  <32.067059, 33.510056, 21.078897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597126, 32.893078, 20.942154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358341, 32.784874, 21.244270>,  <32.215073, 32.719952, 21.425541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358341, 32.784874, 21.244270>,  <32.597126, 32.893078, 20.942154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358341, 32.784874, 21.244270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059295, -0.923989, -0.377793,
		0.800078, -0.270312, 0.535544,
		-0.596959, -0.270509, 0.755292,
		32.179253, 32.703720, 21.470858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838085, 32.307671, 21.165388>,  <32.597126, 32.893078, 20.942154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838085, 32.307671, 21.165388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460617, 32.291164, 21.296711>,  <32.234138, 32.281261, 21.375505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460617, 32.291164, 21.296711>,  <32.838085, 32.307671, 21.165388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460617, 32.291164, 21.296711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062670, -0.951946, -0.299785,
		0.324903, -0.303473, 0.895736,
		-0.943669, -0.041266, 0.328309,
		32.177517, 32.278786, 21.395205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800850, 31.718498, 21.415607>,  <32.838085, 32.307671, 21.165388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800850, 31.718498, 21.415607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406361, 31.775742, 21.382404>,  <32.169666, 31.810087, 21.362482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406361, 31.775742, 21.382404>,  <32.800850, 31.718498, 21.415607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406361, 31.775742, 21.382404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118585, -0.961352, -0.248476,
		-0.115358, -0.235209, 0.965074,
		-0.986220, 0.143107, -0.083008,
		32.110493, 31.818674, 21.357502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472752, 31.271784, 21.830284>,  <32.800850, 31.718498, 21.415607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472752, 31.271784, 21.830284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192436, 31.368305, 21.561756>,  <32.024246, 31.426218, 21.400639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192436, 31.368305, 21.561756>,  <32.472752, 31.271784, 21.830284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192436, 31.368305, 21.561756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214797, -0.968756, -0.123988,
		-0.680264, 0.057308, 0.730723,
		-0.700787, 0.241302, -0.671320,
		31.982201, 31.440697, 21.360359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920349, 31.004450, 22.097687>,  <32.472752, 31.271784, 21.830284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920349, 31.004450, 22.097687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857561, 31.048641, 21.705124>,  <31.819889, 31.075155, 21.469587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857561, 31.048641, 21.705124>,  <31.920349, 31.004450, 22.097687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857561, 31.048641, 21.705124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328701, -0.942914, -0.053571,
		-0.931298, 0.314180, 0.184322,
		-0.156969, 0.110477, -0.981405,
		31.810471, 31.081785, 21.410702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260210, 30.740259, 21.981886>,  <31.920349, 31.004450, 22.097687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260210, 30.740259, 21.981886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468670, 30.729305, 21.640675>,  <31.593746, 30.722733, 21.435947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468670, 30.729305, 21.640675>,  <31.260210, 30.740259, 21.981886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468670, 30.729305, 21.640675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253888, -0.959211, -0.124316,
		-0.814828, 0.281360, -0.506845,
		0.521149, -0.027385, -0.853026,
		31.625015, 30.721090, 21.384768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818512, 30.440083, 21.506723>,  <31.260210, 30.740259, 21.981886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818512, 30.440083, 21.506723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182018, 30.394234, 21.346222>,  <31.400122, 30.366724, 21.249920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182018, 30.394234, 21.346222>,  <30.818512, 30.440083, 21.506723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182018, 30.394234, 21.346222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143154, -0.988819, -0.041756,
		-0.391984, 0.095388, -0.915014,
		0.908766, -0.114620, -0.401256,
		31.454649, 30.359848, 21.225845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720619, 29.858938, 21.107899>,  <30.818512, 30.440083, 21.506723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720619, 29.858938, 21.107899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120329, 29.873196, 21.102554>,  <31.360155, 29.881750, 21.099348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120329, 29.873196, 21.102554>,  <30.720619, 29.858938, 21.107899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120329, 29.873196, 21.102554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034187, -0.994725, -0.096708,
		-0.016735, 0.096182, -0.995223,
		0.999275, 0.035642, -0.013359,
		31.420111, 29.883888, 21.098547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894026, 29.266289, 20.667810>,  <30.720619, 29.858938, 21.107899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894026, 29.266289, 20.667810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228035, 29.348942, 20.871788>,  <31.428440, 29.398533, 20.994175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228035, 29.348942, 20.871788>,  <30.894026, 29.266289, 20.667810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228035, 29.348942, 20.871788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267067, -0.962516, -0.047300,
		0.481055, 0.175686, -0.858906,
		0.835021, 0.206632, 0.509944,
		31.478542, 29.410931, 21.024771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501726, 29.230148, 20.221096>,  <30.894026, 29.266289, 20.667810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501726, 29.230148, 20.221096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632944, 29.165100, 20.593319>,  <31.711676, 29.126072, 20.816652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632944, 29.165100, 20.593319>,  <31.501726, 29.230148, 20.221096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632944, 29.165100, 20.593319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332761, -0.902040, -0.274944,
		0.884113, 0.399848, -0.241797,
		0.328046, -0.162621, 0.930559,
		31.731358, 29.116314, 20.872486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230400, 28.889084, 20.099985>,  <31.501726, 29.230148, 20.221096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230400, 28.889084, 20.099985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151524, 28.839584, 20.488995>,  <32.104198, 28.809885, 20.722401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151524, 28.839584, 20.488995>,  <32.230400, 28.889084, 20.099985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151524, 28.839584, 20.488995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421860, -0.906172, -0.029768,
		0.884957, 0.404398, 0.230897,
		-0.197194, -0.123750, 0.972523,
		32.092365, 28.802460, 20.780752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873127, 28.633753, 20.446892>,  <32.230400, 28.889084, 20.099985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873127, 28.633753, 20.446892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561035, 28.514545, 20.666866>,  <32.373779, 28.443020, 20.798851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561035, 28.514545, 20.666866>,  <32.873127, 28.633753, 20.446892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561035, 28.514545, 20.666866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358072, -0.933692, 0.002035,
		0.512862, 0.198504, 0.835206,
		-0.780229, -0.298020, 0.549934,
		32.326965, 28.425140, 20.831846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163887, 28.229637, 20.960571>,  <32.873127, 28.633753, 20.446892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163887, 28.229637, 20.960571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772644, 28.146561, 20.955429>,  <32.537899, 28.096714, 20.952343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772644, 28.146561, 20.955429>,  <33.163887, 28.229637, 20.960571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772644, 28.146561, 20.955429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207444, -0.978075, 0.018335,
		-0.016383, 0.015267, 0.999749,
		-0.978110, -0.207693, -0.012857,
		32.479210, 28.084253, 20.951572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158817, 27.675598, 21.301308>,  <33.163887, 28.229637, 20.960571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158817, 27.675598, 21.301308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788712, 27.660065, 21.150372>,  <32.566650, 27.650743, 21.059811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788712, 27.660065, 21.150372>,  <33.158817, 27.675598, 21.301308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788712, 27.660065, 21.150372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032747, -0.999209, 0.022538,
		-0.377917, 0.008497, 0.925800,
		-0.925260, -0.038835, -0.377340,
		32.511135, 27.648415, 21.037169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751854, 27.272430, 21.760544>,  <33.158817, 27.675598, 21.301308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751854, 27.272430, 21.760544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613953, 27.257389, 21.385368>,  <32.531212, 27.248363, 21.160263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613953, 27.257389, 21.385368>,  <32.751854, 27.272430, 21.760544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613953, 27.257389, 21.385368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075940, -0.994805, 0.067798,
		-0.935615, 0.094601, 0.340110,
		-0.344757, -0.037605, -0.937939,
		32.510525, 27.246107, 21.103987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074409, 26.951382, 21.820543>,  <32.751854, 27.272430, 21.760544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074409, 26.951382, 21.820543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196598, 26.904819, 21.442520>,  <32.269913, 26.876883, 21.215706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196598, 26.904819, 21.442520>,  <32.074409, 26.951382, 21.820543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196598, 26.904819, 21.442520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032847, -0.993197, 0.111716,
		-0.951634, -0.003084, -0.307219,
		0.305474, -0.116404, -0.945059,
		32.288239, 26.869898, 21.159002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783888, 26.377043, 21.607685>,  <32.074409, 26.951382, 21.820543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783888, 26.377043, 21.607685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066578, 26.423679, 21.328560>,  <32.236191, 26.451662, 21.161085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066578, 26.423679, 21.328560>,  <31.783888, 26.377043, 21.607685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066578, 26.423679, 21.328560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142719, -0.989545, -0.020796,
		-0.692943, -0.084894, -0.715977,
		0.706726, 0.116594, -0.697814,
		32.278595, 26.458658, 21.119215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614279, 25.936863, 21.072313>,  <31.783888, 26.377043, 21.607685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614279, 25.936863, 21.072313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007965, 25.981846, 21.017658>,  <32.244179, 26.008837, 20.984865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007965, 25.981846, 21.017658>,  <31.614279, 25.936863, 21.072313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007965, 25.981846, 21.017658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101409, -0.991179, -0.085329,
		-0.145028, 0.070126, -0.986939,
		0.984217, 0.112460, -0.136637,
		32.303230, 26.015583, 20.976667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772291, 25.684509, 20.453796>,  <31.614279, 25.936863, 21.072313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772291, 25.684509, 20.453796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132637, 25.704918, 20.626232>,  <32.348846, 25.717163, 20.729694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132637, 25.704918, 20.626232>,  <31.772291, 25.684509, 20.453796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132637, 25.704918, 20.626232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263553, -0.853379, -0.449760,
		0.344936, 0.518788, -0.782227,
		0.900866, 0.051020, 0.431089,
		32.402897, 25.720224, 20.755558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310253, 25.548843, 19.978321>,  <31.772291, 25.684509, 20.453796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310253, 25.548843, 19.978321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456169, 25.463451, 20.340836>,  <32.543720, 25.412216, 20.558344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456169, 25.463451, 20.340836>,  <32.310253, 25.548843, 19.978321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456169, 25.463451, 20.340836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329388, -0.880829, -0.340064,
		0.870880, 0.422572, -0.251000,
		0.364790, -0.213478, 0.906287,
		32.565605, 25.399408, 20.612722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947464, 25.350788, 19.799921>,  <32.310253, 25.548843, 19.978321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947464, 25.350788, 19.799921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920761, 25.236130, 20.182205>,  <32.904739, 25.167336, 20.411575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920761, 25.236130, 20.182205>,  <32.947464, 25.350788, 19.799921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920761, 25.236130, 20.182205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275616, -0.925874, -0.258444,
		0.958947, 0.246156, 0.140810,
		-0.066755, -0.286644, 0.955709,
		32.900734, 25.150137, 20.468918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583836, 24.940683, 19.962450>,  <32.947464, 25.350788, 19.799921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583836, 24.940683, 19.962450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318054, 24.824074, 20.237701>,  <33.158585, 24.754108, 20.402851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318054, 24.824074, 20.237701>,  <33.583836, 24.940683, 19.962450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318054, 24.824074, 20.237701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232926, -0.955698, -0.179967,
		0.710106, 0.040703, 0.702917,
		-0.664451, -0.291523, 0.688127,
		33.118717, 24.736616, 20.444139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914532, 24.496582, 20.428349>,  <33.583836, 24.940683, 19.962450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914532, 24.496582, 20.428349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525471, 24.415909, 20.474434>,  <33.292034, 24.367504, 20.502085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525471, 24.415909, 20.474434>,  <33.914532, 24.496582, 20.428349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525471, 24.415909, 20.474434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183673, -0.971477, -0.149991,
		0.142176, -0.124727, 0.981951,
		-0.972651, -0.201683, 0.115212,
		33.233677, 24.355404, 20.508997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873486, 23.890684, 20.868250>,  <33.914532, 24.496582, 20.428349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873486, 23.890684, 20.868250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508888, 23.886127, 20.703785>,  <33.290131, 23.883394, 20.605106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508888, 23.886127, 20.703785>,  <33.873486, 23.890684, 20.868250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508888, 23.886127, 20.703785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009617, -0.998753, 0.048986,
		-0.411207, 0.048605, 0.910245,
		-0.911491, -0.011389, -0.411162,
		33.235439, 23.882711, 20.580437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453186, 23.471970, 21.320520>,  <33.873486, 23.890684, 20.868250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453186, 23.471970, 21.320520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280178, 23.468765, 20.959885>,  <33.176373, 23.466843, 20.743504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280178, 23.468765, 20.959885>,  <33.453186, 23.471970, 21.320520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280178, 23.468765, 20.959885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086852, -0.994940, 0.050509,
		-0.897431, 0.100151, 0.429636,
		-0.432521, -0.008013, -0.901588,
		33.150421, 23.466362, 20.689407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809395, 23.041361, 21.389322>,  <33.453186, 23.471970, 21.320520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809395, 23.041361, 21.389322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873955, 23.055626, 20.994823>,  <32.912689, 23.064186, 20.758125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873955, 23.055626, 20.994823>,  <32.809395, 23.041361, 21.389322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873955, 23.055626, 20.994823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023733, -0.999198, -0.032248,
		-0.986604, -0.018202, -0.162115,
		0.161398, 0.035664, -0.986245,
		32.922375, 23.066324, 20.698950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512104, 22.507772, 21.179483>,  <32.809395, 23.041361, 21.389322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512104, 22.507772, 21.179483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707520, 22.575611, 20.837124>,  <32.824768, 22.616314, 20.631708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707520, 22.575611, 20.837124>,  <32.512104, 22.507772, 21.179483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707520, 22.575611, 20.837124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030665, -0.976985, -0.211092,
		-0.872002, 0.129373, -0.472096,
		0.488541, 0.169595, -0.855901,
		32.854080, 22.626490, 20.580353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083725, 22.259031, 20.555647>,  <32.512104, 22.507772, 21.179483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083725, 22.259031, 20.555647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475639, 22.271477, 20.476601>,  <32.710789, 22.278944, 20.429173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475639, 22.271477, 20.476601>,  <32.083725, 22.259031, 20.555647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475639, 22.271477, 20.476601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026327, -0.999294, -0.026804,
		-0.198308, 0.021059, -0.979914,
		0.979786, 0.031114, -0.197614,
		32.769577, 22.280811, 20.417316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182098, 21.718290, 20.104013>,  <32.083725, 22.259031, 20.555647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182098, 21.718290, 20.104013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554108, 21.772125, 20.240807>,  <32.777313, 21.804426, 20.322882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554108, 21.772125, 20.240807>,  <32.182098, 21.718290, 20.104013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554108, 21.772125, 20.240807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082411, -0.983206, 0.162831,
		0.358153, -0.123253, -0.925492,
		0.930019, 0.134590, 0.341981,
		32.833115, 21.812502, 20.343401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573120, 21.242876, 19.673653>,  <32.182098, 21.718290, 20.104013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573120, 21.242876, 19.673653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755230, 21.319530, 20.021446>,  <32.864494, 21.365522, 20.230122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755230, 21.319530, 20.021446>,  <32.573120, 21.242876, 19.673653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755230, 21.319530, 20.021446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056851, -0.968312, 0.243185,
		0.888534, -0.160147, -0.429953,
		0.455274, 0.191636, 0.869483,
		32.891811, 21.377022, 20.282291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938992, 20.670399, 19.745947>,  <32.573120, 21.242876, 19.673653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938992, 20.670399, 19.745947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015766, 20.816814, 20.110184>,  <33.061832, 20.904665, 20.328726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015766, 20.816814, 20.110184>,  <32.938992, 20.670399, 19.745947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015766, 20.816814, 20.110184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060982, -0.930497, 0.361189,
		0.979511, -0.013796, -0.200918,
		0.191937, 0.366041, 0.910590,
		33.073349, 20.926626, 20.383360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558289, 20.316332, 20.047449>,  <32.938992, 20.670399, 19.745947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558289, 20.316332, 20.047449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349838, 20.467804, 20.353397>,  <33.224766, 20.558687, 20.536966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349838, 20.467804, 20.353397>,  <33.558289, 20.316332, 20.047449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349838, 20.467804, 20.353397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091844, -0.915857, 0.390859,
		0.848521, 0.133440, 0.512060,
		-0.521130, 0.378682, 0.764869,
		33.193501, 20.581409, 20.582857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886818, 20.045023, 20.615971>,  <33.558289, 20.316332, 20.047449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886818, 20.045023, 20.615971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521507, 20.140976, 20.747654>,  <33.302319, 20.198547, 20.826664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521507, 20.140976, 20.747654>,  <33.886818, 20.045023, 20.615971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521507, 20.140976, 20.747654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166744, -0.957548, 0.235155,
		0.371644, 0.159868, 0.914507,
		-0.913278, 0.239882, 0.329210,
		33.247524, 20.212940, 20.846416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796970, 19.716866, 21.269814>,  <33.886818, 20.045023, 20.615971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796970, 19.716866, 21.269814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464634, 19.790012, 21.059570>,  <33.265232, 19.833900, 20.933424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464634, 19.790012, 21.059570>,  <33.796970, 19.716866, 21.269814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464634, 19.790012, 21.059570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273230, -0.956841, 0.099004,
		-0.484818, 0.225868, 0.844947,
		-0.830841, 0.182866, -0.525608,
		33.215382, 19.844872, 20.901888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329277, 19.610920, 21.753372>,  <33.796970, 19.716866, 21.269814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329277, 19.610920, 21.753372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228207, 19.537937, 21.373295>,  <33.167564, 19.494148, 21.145248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228207, 19.537937, 21.373295>,  <33.329277, 19.610920, 21.753372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228207, 19.537937, 21.373295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305471, -0.916787, 0.257274,
		-0.918064, 0.355263, 0.175917,
		-0.252678, -0.182456, -0.950191,
		33.152405, 19.483200, 21.088238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646984, 19.295368, 21.738665>,  <33.329277, 19.610920, 21.753372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646984, 19.295368, 21.738665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799641, 19.221584, 21.376377>,  <32.891235, 19.177313, 21.159004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799641, 19.221584, 21.376377>,  <32.646984, 19.295368, 21.738665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799641, 19.221584, 21.376377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484462, -0.874425, -0.026047,
		-0.787178, 0.448727, -0.423078,
		0.381637, -0.184461, -0.905719,
		32.914131, 19.166246, 21.104662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140823, 18.851059, 21.307076>,  <32.646984, 19.295368, 21.738665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140823, 18.851059, 21.307076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505207, 18.801392, 21.149731>,  <32.723839, 18.771591, 21.055323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505207, 18.801392, 21.149731>,  <32.140823, 18.851059, 21.307076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505207, 18.801392, 21.149731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194857, -0.970047, -0.145049,
		-0.363571, 0.208784, -0.907869,
		0.910959, -0.124169, -0.393364,
		32.778496, 18.764141, 21.031721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097584, 18.539661, 20.617426>,  <32.140823, 18.851059, 21.307076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097584, 18.539661, 20.617426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455994, 18.442467, 20.766075>,  <32.671040, 18.384150, 20.855265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455994, 18.442467, 20.766075>,  <32.097584, 18.539661, 20.617426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455994, 18.442467, 20.766075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188881, -0.966055, -0.176244,
		0.401834, 0.087725, -0.911501,
		0.896021, -0.242986, 0.371624,
		32.724800, 18.369572, 20.877562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913347, 18.119127, 19.994827>,  <32.097584, 18.539661, 20.617426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913347, 18.119127, 19.994827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584557, 18.143070, 19.768280>,  <31.387283, 18.157436, 19.632351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584557, 18.143070, 19.768280>,  <31.913347, 18.119127, 19.994827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584557, 18.143070, 19.768280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051472, 0.982584, 0.178550,
		0.567192, 0.175915, -0.804578,
		-0.821975, 0.059859, -0.566368,
		31.337963, 18.161028, 19.598370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059704, 18.681725, 19.500435>,  <31.913347, 18.119127, 19.994827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059704, 18.681725, 19.500435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676888, 18.606518, 19.588722>,  <31.447197, 18.561394, 19.641695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676888, 18.606518, 19.588722>,  <32.059704, 18.681725, 19.500435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676888, 18.606518, 19.588722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106549, 0.936047, 0.335355,
		-0.269654, 0.297432, -0.915872,
		-0.957044, -0.188015, 0.220718,
		31.389774, 18.550114, 19.654938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672682, 19.222059, 19.333572>,  <32.059704, 18.681725, 19.500435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672682, 19.222059, 19.333572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460571, 19.048183, 19.624737>,  <31.333305, 18.943857, 19.799435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460571, 19.048183, 19.624737>,  <31.672682, 19.222059, 19.333572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460571, 19.048183, 19.624737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232451, 0.900203, 0.368241,
		-0.815337, 0.026065, -0.578399,
		-0.530275, -0.434690, 0.727910,
		31.301489, 18.917776, 19.843109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033827, 19.583502, 19.304420>,  <31.672682, 19.222059, 19.333572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033827, 19.583502, 19.304420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075220, 19.414726, 19.664700>,  <31.100056, 19.313461, 19.880867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075220, 19.414726, 19.664700>,  <31.033827, 19.583502, 19.304420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075220, 19.414726, 19.664700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128795, 0.892252, 0.432780,
		-0.986257, -0.160791, 0.037989,
		0.103483, -0.421940, 0.900699,
		31.106264, 19.288145, 19.934910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470289, 19.703096, 19.840788>,  <31.033827, 19.583502, 19.304420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470289, 19.703096, 19.840788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784510, 19.604557, 20.067848>,  <30.973042, 19.545433, 20.204084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784510, 19.604557, 20.067848>,  <30.470289, 19.703096, 19.840788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784510, 19.604557, 20.067848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145315, 0.818246, 0.556199,
		-0.601495, -0.519410, 0.606974,
		0.785549, -0.246348, 0.567649,
		31.020174, 19.530653, 20.238142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165524, 19.554695, 20.532593>,  <30.470289, 19.703096, 19.840788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165524, 19.554695, 20.532593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554396, 19.638386, 20.574722>,  <30.787718, 19.688601, 20.600000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554396, 19.638386, 20.574722>,  <30.165524, 19.554695, 20.532593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554396, 19.638386, 20.574722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230055, 0.768232, 0.597407,
		0.044078, -0.605017, 0.794991,
		0.972179, 0.209224, 0.105325,
		30.846050, 19.701153, 20.606319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367146, 19.640514, 21.295452>,  <30.165524, 19.554695, 20.532593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367146, 19.640514, 21.295452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629433, 19.832497, 21.062325>,  <30.786804, 19.947685, 20.922447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629433, 19.832497, 21.062325>,  <30.367146, 19.640514, 21.295452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629433, 19.832497, 21.062325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167986, 0.845335, 0.507138,
		0.736081, -0.234633, 0.634927,
		0.655717, 0.479954, -0.582820,
		30.826147, 19.976482, 20.887478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675629, 20.012442, 21.821033>,  <30.367146, 19.640514, 21.295452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675629, 20.012442, 21.821033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779810, 20.197449, 21.482037>,  <30.842319, 20.308453, 21.278639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779810, 20.197449, 21.482037>,  <30.675629, 20.012442, 21.821033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779810, 20.197449, 21.482037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124934, 0.886553, 0.445439,
		0.957369, -0.010135, 0.288690,
		0.260454, 0.462517, -0.847492,
		30.857946, 20.336205, 21.227789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281885, 20.446756, 21.945353>,  <30.675629, 20.012442, 21.821033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281885, 20.446756, 21.945353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081635, 20.617474, 21.644096>,  <30.961485, 20.719904, 21.463343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081635, 20.617474, 21.644096>,  <31.281885, 20.446756, 21.945353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081635, 20.617474, 21.644096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010048, 0.872821, 0.487937,
		0.865606, 0.236706, -0.441245,
		-0.500625, 0.426794, -0.753141,
		30.931446, 20.745512, 21.418154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493433, 21.048042, 22.037525>,  <31.281885, 20.446756, 21.945353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493433, 21.048042, 22.037525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200504, 21.128304, 21.777237>,  <31.024746, 21.176460, 21.621063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200504, 21.128304, 21.777237>,  <31.493433, 21.048042, 22.037525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200504, 21.128304, 21.777237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229455, 0.827004, 0.513240,
		0.641134, 0.525169, -0.559593,
		-0.732323, 0.200654, -0.650723,
		30.980806, 21.188499, 21.582020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644039, 21.638557, 21.918468>,  <31.493433, 21.048042, 22.037525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644039, 21.638557, 21.918468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264915, 21.607662, 21.794735>,  <31.037441, 21.589125, 21.720495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264915, 21.607662, 21.794735>,  <31.644039, 21.638557, 21.918468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264915, 21.607662, 21.794735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201332, 0.897295, 0.392845,
		0.247223, 0.434622, -0.866017,
		-0.947812, -0.077236, -0.309335,
		30.980572, 21.584492, 21.701935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433544, 22.202730, 21.459629>,  <31.644039, 21.638557, 21.918468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433544, 22.202730, 21.459629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081005, 22.078613, 21.602146>,  <30.869482, 22.004143, 21.687656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081005, 22.078613, 21.602146>,  <31.433544, 22.202730, 21.459629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081005, 22.078613, 21.602146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209270, 0.932479, 0.294429,
		-0.423597, 0.184932, -0.886772,
		-0.881346, -0.310294, 0.356295,
		30.816601, 21.985525, 21.709034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000534, 22.754910, 21.320684>,  <31.433544, 22.202730, 21.459629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000534, 22.754910, 21.320684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783779, 22.555794, 21.591553>,  <30.653727, 22.436323, 21.754074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783779, 22.555794, 21.591553>,  <31.000534, 22.754910, 21.320684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783779, 22.555794, 21.591553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375668, 0.864216, 0.334671,
		-0.751818, -0.073037, -0.655313,
		-0.541888, -0.497791, 0.677171,
		30.621212, 22.406456, 21.794704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368765, 23.120243, 21.390862>,  <31.000534, 22.754910, 21.320684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368765, 23.120243, 21.390862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389875, 22.892761, 21.719200>,  <30.402542, 22.756271, 21.916203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389875, 22.892761, 21.719200>,  <30.368765, 23.120243, 21.390862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389875, 22.892761, 21.719200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423726, 0.731572, 0.534096,
		-0.904252, -0.376001, -0.202367,
		0.052774, -0.568706, 0.820846,
		30.405708, 22.722149, 21.965454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804771, 23.291796, 21.789305>,  <30.368765, 23.120243, 21.390862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804771, 23.291796, 21.789305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068914, 23.147640, 22.052834>,  <30.227400, 23.061146, 22.210951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068914, 23.147640, 22.052834>,  <29.804771, 23.291796, 21.789305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068914, 23.147640, 22.052834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358587, 0.619502, 0.698307,
		-0.659804, -0.697378, 0.279862,
		0.660360, -0.360391, 0.658821,
		30.267023, 23.039522, 22.250479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494440, 22.983171, 22.435701>,  <29.804771, 23.291796, 21.789305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494440, 22.983171, 22.435701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855566, 23.134411, 22.517643>,  <30.072241, 23.225155, 22.566809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855566, 23.134411, 22.517643>,  <29.494440, 22.983171, 22.435701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855566, 23.134411, 22.517643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408691, 0.606209, 0.682263,
		0.133778, -0.699680, 0.701820,
		0.902815, 0.378100, 0.204856,
		30.126411, 23.247841, 22.579100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434298, 23.076315, 23.142010>,  <29.494440, 22.983171, 22.435701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434298, 23.076315, 23.142010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749088, 23.300438, 23.038685>,  <29.937962, 23.434912, 22.976690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749088, 23.300438, 23.038685>,  <29.434298, 23.076315, 23.142010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749088, 23.300438, 23.038685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281355, 0.698512, 0.657967,
		0.549098, -0.445127, 0.707357,
		0.786976, 0.560306, -0.258313,
		29.985180, 23.468531, 22.961191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559536, 23.566233, 23.723238>,  <29.434298, 23.076315, 23.142010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559536, 23.566233, 23.723238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805729, 23.729584, 23.453598>,  <29.953444, 23.827595, 23.291815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805729, 23.729584, 23.453598>,  <29.559536, 23.566233, 23.723238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805729, 23.729584, 23.453598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075585, 0.881934, 0.465274,
		0.784518, -0.235416, 0.573682,
		0.615483, 0.408378, -0.674098,
		29.990374, 23.852097, 23.251368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928738, 23.905233, 24.158730>,  <29.559536, 23.566233, 23.723238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928738, 23.905233, 24.158730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983809, 24.043251, 23.787357>,  <30.016851, 24.126062, 23.564533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983809, 24.043251, 23.787357>,  <29.928738, 23.905233, 24.158730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983809, 24.043251, 23.787357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163086, 0.932463, 0.322360,
		0.976958, 0.107032, 0.184652,
		0.137678, 0.345046, -0.928433,
		30.025112, 24.146765, 23.508827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460400, 24.320919, 24.157686>,  <29.928738, 23.905233, 24.158730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460400, 24.320919, 24.157686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196337, 24.431843, 23.878460>,  <30.037899, 24.498396, 23.710924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196337, 24.431843, 23.878460>,  <30.460400, 24.320919, 24.157686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196337, 24.431843, 23.878460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024936, 0.920751, 0.389353,
		0.750714, 0.274440, -0.600926,
		-0.660157, 0.277308, -0.698064,
		29.998289, 24.515036, 23.669041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632572, 24.968040, 24.083908>,  <30.460400, 24.320919, 24.157686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632572, 24.968040, 24.083908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256416, 24.955315, 23.948467>,  <30.030722, 24.947680, 23.867203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256416, 24.955315, 23.948467>,  <30.632572, 24.968040, 24.083908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256416, 24.955315, 23.948467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111448, 0.969468, 0.218430,
		0.321316, 0.243146, -0.915225,
		-0.940391, -0.031815, -0.338604,
		29.974298, 24.945770, 23.846886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545534, 25.598600, 23.692848>,  <30.632572, 24.968040, 24.083908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545534, 25.598600, 23.692848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184917, 25.453365, 23.786991>,  <29.968548, 25.366224, 23.843477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184917, 25.453365, 23.786991>,  <30.545534, 25.598600, 23.692848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184917, 25.453365, 23.786991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272404, 0.898871, 0.343260,
		-0.336188, 0.245351, -0.909275,
		-0.901540, -0.363090, 0.235355,
		29.914455, 25.344439, 23.857597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104195, 26.181225, 23.578161>,  <30.545534, 25.598600, 23.692848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104195, 26.181225, 23.578161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855547, 25.942120, 23.780655>,  <29.706358, 25.798656, 23.902151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855547, 25.942120, 23.780655>,  <30.104195, 26.181225, 23.578161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855547, 25.942120, 23.780655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455022, 0.801603, 0.387798,
		-0.637609, 0.010714, -0.770285,
		-0.621618, -0.597761, 0.506234,
		29.669062, 25.762791, 23.932526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510553, 26.505405, 23.508654>,  <30.104195, 26.181225, 23.578161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510553, 26.505405, 23.508654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447929, 26.260399, 23.818573>,  <29.410355, 26.113394, 24.004524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447929, 26.260399, 23.818573>,  <29.510553, 26.505405, 23.508654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447929, 26.260399, 23.818573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237484, 0.784802, 0.572439,
		-0.958692, -0.094381, -0.268332,
		-0.156560, -0.612517, 0.774798,
		29.400961, 26.076643, 24.051012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794731, 26.617451, 23.779318>,  <29.510553, 26.505405, 23.508654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794731, 26.617451, 23.779318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043940, 26.475712, 24.058254>,  <29.193466, 26.390669, 24.225616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043940, 26.475712, 24.058254>,  <28.794731, 26.617451, 23.779318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043940, 26.475712, 24.058254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014035, 0.886298, 0.462902,
		-0.782077, -0.298186, 0.547211,
		0.623023, -0.354345, 0.697339,
		29.230846, 26.369408, 24.267456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531246, 26.838804, 24.375803>,  <28.794731, 26.617451, 23.779318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531246, 26.838804, 24.375803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907003, 26.749527, 24.479900>,  <29.132458, 26.695961, 24.542358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907003, 26.749527, 24.479900>,  <28.531246, 26.838804, 24.375803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907003, 26.749527, 24.479900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073409, 0.872411, 0.483229,
		-0.334894, -0.434837, 0.835920,
		0.939391, -0.223195, 0.260245,
		29.188822, 26.682570, 24.557974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555689, 27.206076, 24.975681>,  <28.531246, 26.838804, 24.375803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555689, 27.206076, 24.975681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935469, 27.137520, 24.870480>,  <29.163336, 27.096386, 24.807360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935469, 27.137520, 24.870480>,  <28.555689, 27.206076, 24.975681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935469, 27.137520, 24.870480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264614, 0.887703, 0.376779,
		0.168892, -0.427327, 0.888182,
		0.949450, -0.171390, -0.263003,
		29.220304, 27.086103, 24.791578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974171, 27.371439, 25.532839>,  <28.555689, 27.206076, 24.975681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974171, 27.371439, 25.532839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208471, 27.419003, 25.212151>,  <29.349051, 27.447540, 25.019737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208471, 27.419003, 25.212151>,  <28.974171, 27.371439, 25.532839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208471, 27.419003, 25.212151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284489, 0.896076, 0.340754,
		0.758922, -0.427678, 0.491050,
		0.585751, 0.118907, -0.801721,
		29.384197, 27.454674, 24.971634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670839, 27.632120, 25.792023>,  <28.974171, 27.371439, 25.532839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670839, 27.632120, 25.792023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689991, 27.708595, 25.399868>,  <29.701481, 27.754480, 25.164576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689991, 27.708595, 25.399868>,  <29.670839, 27.632120, 25.792023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689991, 27.708595, 25.399868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465415, 0.864182, 0.191255,
		0.883796, -0.465443, -0.047607,
		0.047877, 0.191187, -0.980385,
		29.704355, 27.765951, 25.105753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349279, 28.012249, 25.643019>,  <29.670839, 27.632120, 25.792023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349279, 28.012249, 25.643019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109655, 28.082512, 25.330540>,  <29.965881, 28.124670, 25.143053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109655, 28.082512, 25.330540>,  <30.349279, 28.012249, 25.643019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109655, 28.082512, 25.330540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225995, 0.973066, 0.045492,
		0.768148, -0.149294, -0.622624,
		-0.599062, 0.175655, -0.781198,
		29.929937, 28.135208, 25.096180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723928, 28.453825, 25.404882>,  <30.349279, 28.012249, 25.643019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723928, 28.453825, 25.404882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365110, 28.495838, 25.233170>,  <30.149820, 28.521046, 25.130142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365110, 28.495838, 25.233170>,  <30.723928, 28.453825, 25.404882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365110, 28.495838, 25.233170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080462, 0.993928, 0.075051,
		0.434557, 0.032783, -0.900047,
		-0.897043, 0.105033, -0.429281,
		30.095997, 28.527348, 25.104385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827009, 28.974232, 24.882626>,  <30.723928, 28.453825, 25.404882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827009, 28.974232, 24.882626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436115, 28.954239, 24.965099>,  <30.201578, 28.942244, 25.014584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436115, 28.954239, 24.965099>,  <30.827009, 28.974232, 24.882626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436115, 28.954239, 24.965099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058473, 0.997665, -0.035293,
		-0.203940, -0.046546, -0.977876,
		-0.977235, -0.049981, 0.206185,
		30.142944, 28.939245, 25.026955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511560, 29.458954, 24.351904>,  <30.827009, 28.974232, 24.882626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511560, 29.458954, 24.351904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270451, 29.426350, 24.669399>,  <30.125784, 29.406788, 24.859896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270451, 29.426350, 24.669399>,  <30.511560, 29.458954, 24.351904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270451, 29.426350, 24.669399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236080, 0.968449, -0.079833,
		-0.762186, -0.235507, -0.603000,
		-0.602775, -0.081509, 0.793737,
		30.089619, 29.401897, 24.907520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905474, 29.866528, 24.157568>,  <30.511560, 29.458954, 24.351904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905474, 29.866528, 24.157568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840162, 29.835045, 24.550941>,  <29.800976, 29.816154, 24.786966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840162, 29.835045, 24.550941>,  <29.905474, 29.866528, 24.157568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840162, 29.835045, 24.550941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115529, 0.991480, 0.060169,
		-0.979793, -0.103791, -0.170979,
		-0.163278, -0.078707, 0.983436,
		29.791180, 29.811434, 24.845972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460220, 30.381395, 24.302460>,  <29.905474, 29.866528, 24.157568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460220, 30.381395, 24.302460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623766, 30.287289, 24.655159>,  <29.721893, 30.230825, 24.866779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623766, 30.287289, 24.655159>,  <29.460220, 30.381395, 24.302460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623766, 30.287289, 24.655159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051183, 0.970590, 0.235236,
		-0.911159, -0.051049, 0.408881,
		0.408864, -0.235265, 0.881749,
		29.746426, 30.216709, 24.919683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106617, 30.826483, 24.797443>,  <29.460220, 30.381395, 24.302460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106617, 30.826483, 24.797443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456026, 30.700508, 24.945915>,  <29.665672, 30.624924, 25.034998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456026, 30.700508, 24.945915>,  <29.106617, 30.826483, 24.797443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456026, 30.700508, 24.945915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260821, 0.946630, 0.189378,
		-0.411011, -0.068615, 0.909044,
		0.873523, -0.314934, 0.371180,
		29.718082, 30.606028, 25.057270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090927, 31.075914, 25.471184>,  <29.106617, 30.826483, 24.797443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090927, 31.075914, 25.471184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484341, 31.016972, 25.429337>,  <29.720388, 30.981606, 25.404228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484341, 31.016972, 25.429337>,  <29.090927, 31.075914, 25.471184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484341, 31.016972, 25.429337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172958, 0.935353, 0.308545,
		0.052390, -0.321559, 0.945439,
		0.983535, -0.147357, -0.104620,
		29.779402, 30.972765, 25.397951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404825, 31.294525, 26.110331>,  <29.090927, 31.075914, 25.471184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404825, 31.294525, 26.110331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674957, 31.314003, 25.815968>,  <29.837036, 31.325689, 25.639349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674957, 31.314003, 25.815968>,  <29.404825, 31.294525, 26.110331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674957, 31.314003, 25.815968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272450, 0.910765, 0.310288,
		0.685349, -0.410044, 0.601798,
		0.675328, 0.048695, -0.735908,
		29.877556, 31.328611, 25.595196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916151, 31.635895, 26.354847>,  <29.404825, 31.294525, 26.110331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916151, 31.635895, 26.354847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002932, 31.682865, 25.967209>,  <30.055000, 31.711046, 25.734627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002932, 31.682865, 25.967209>,  <29.916151, 31.635895, 26.354847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002932, 31.682865, 25.967209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372719, 0.907565, 0.193409,
		0.902227, -0.403160, 0.153128,
		0.216949, 0.117425, -0.969095,
		30.068016, 31.718092, 25.676481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549114, 31.911898, 26.336540>,  <29.916151, 31.635895, 26.354847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549114, 31.911898, 26.336540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391706, 32.017689, 25.984360>,  <30.297262, 32.081161, 25.773052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391706, 32.017689, 25.984360>,  <30.549114, 31.911898, 26.336540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391706, 32.017689, 25.984360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377245, 0.919830, 0.107695,
		0.838348, -0.289765, -0.461746,
		-0.393521, 0.264478, -0.880450,
		30.273649, 32.097031, 25.720224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050205, 32.196682, 26.005560>,  <30.549114, 31.911898, 26.336540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050205, 32.196682, 26.005560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740705, 32.322365, 25.785530>,  <30.555006, 32.397774, 25.653511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740705, 32.322365, 25.785530>,  <31.050205, 32.196682, 26.005560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740705, 32.322365, 25.785530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422306, 0.903076, -0.078179,
		0.472196, -0.292792, -0.831447,
		-0.773749, 0.314210, -0.550076,
		30.508581, 32.416626, 25.620506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332258, 32.650661, 25.402613>,  <31.050205, 32.196682, 26.005560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332258, 32.650661, 25.402613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944277, 32.747974, 25.402283>,  <30.711487, 32.806362, 25.402084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944277, 32.747974, 25.402283>,  <31.332258, 32.650661, 25.402613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944277, 32.747974, 25.402283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235592, 0.938449, -0.252605,
		-0.060682, -0.245210, -0.967569,
		-0.969956, 0.243280, -0.000822,
		30.653290, 32.820957, 25.402037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127333, 33.152225, 24.821098>,  <31.332258, 32.650661, 25.402613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127333, 33.152225, 24.821098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828777, 33.211876, 25.080532>,  <30.649643, 33.247665, 25.236193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828777, 33.211876, 25.080532>,  <31.127333, 33.152225, 24.821098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828777, 33.211876, 25.080532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012185, 0.971346, -0.237360,
		-0.665398, -0.185066, -0.723185,
		-0.746390, 0.149127, 0.648586,
		30.604860, 33.256615, 25.275108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602022, 33.635658, 24.532444>,  <31.127333, 33.152225, 24.821098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602022, 33.635658, 24.532444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577339, 33.675884, 24.929649>,  <30.562529, 33.700020, 25.167973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577339, 33.675884, 24.929649>,  <30.602022, 33.635658, 24.532444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577339, 33.675884, 24.929649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130814, 0.985514, -0.107937,
		-0.989485, -0.136561, -0.047659,
		-0.061709, 0.100568, 0.993015,
		30.558826, 33.706055, 25.227554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050709, 34.077629, 24.562611>,  <30.602022, 33.635658, 24.532444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050709, 34.077629, 24.562611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262907, 34.082531, 24.901649>,  <30.390226, 34.085472, 25.105072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262907, 34.082531, 24.901649>,  <30.050709, 34.077629, 24.562611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262907, 34.082531, 24.901649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007038, 0.999925, -0.010047,
		-0.847657, -0.000635, 0.530544,
		0.530498, 0.012250, 0.847598,
		30.422056, 34.086205, 25.155930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443209, 33.787052, 24.202515>,  <30.050709, 34.077629, 24.562611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443209, 33.787052, 24.202515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130444, 33.908833, 23.984921>,  <28.942783, 33.981899, 23.854364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130444, 33.908833, 23.984921>,  <29.443209, 33.787052, 24.202515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130444, 33.908833, 23.984921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379959, -0.924558, 0.028707,
		-0.494207, 0.229139, 0.838603,
		-0.781915, 0.304447, -0.543986,
		28.895868, 34.000168, 23.821724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824905, 33.579426, 24.569963>,  <29.443209, 33.787052, 24.202515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824905, 33.579426, 24.569963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697218, 33.643620, 24.196365>,  <28.620605, 33.682137, 23.972206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697218, 33.643620, 24.196365>,  <28.824905, 33.579426, 24.569963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697218, 33.643620, 24.196365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524970, -0.850469, 0.033290,
		-0.788990, 0.500946, 0.355735,
		-0.319218, 0.160484, -0.933994,
		28.601452, 33.691765, 23.916166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178766, 33.243378, 24.541952>,  <28.824905, 33.579426, 24.569963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178766, 33.243378, 24.541952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260921, 33.297531, 24.154243>,  <28.310215, 33.330025, 23.921618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260921, 33.297531, 24.154243>,  <28.178766, 33.243378, 24.541952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260921, 33.297531, 24.154243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409485, -0.887641, -0.210752,
		-0.888897, 0.440188, -0.126874,
		0.205389, 0.135384, -0.969271,
		28.322538, 33.338146, 23.863462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503523, 33.159813, 24.189436>,  <28.178766, 33.243378, 24.541952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503523, 33.159813, 24.189436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799404, 33.099453, 23.927116>,  <27.976933, 33.063236, 23.769726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799404, 33.099453, 23.927116>,  <27.503523, 33.159813, 24.189436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799404, 33.099453, 23.927116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482720, -0.797970, -0.360866,
		-0.468852, 0.583500, -0.663103,
		0.739702, -0.150900, -0.655797,
		28.021315, 33.054184, 23.730377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180691, 32.859486, 23.628973>,  <27.503523, 33.159813, 24.189436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180691, 32.859486, 23.628973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562510, 32.769032, 23.551304>,  <27.791601, 32.714760, 23.504702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562510, 32.769032, 23.551304>,  <27.180691, 32.859486, 23.628973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562510, 32.769032, 23.551304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288999, -0.861591, -0.417302,
		-0.072932, 0.454450, -0.887781,
		0.954547, -0.226133, -0.194173,
		27.848873, 32.701191, 23.493052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146036, 32.432934, 23.042784>,  <27.180691, 32.859486, 23.628973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146036, 32.432934, 23.042784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502363, 32.336075, 23.196564>,  <27.716160, 32.277958, 23.288832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502363, 32.336075, 23.196564>,  <27.146036, 32.432934, 23.042784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502363, 32.336075, 23.196564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070608, -0.909644, -0.409343,
		0.448837, 0.337506, -0.827427,
		0.890820, -0.242152, 0.384451,
		27.769609, 32.263428, 23.311899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419224, 32.166111, 22.465197>,  <27.146036, 32.432934, 23.042784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419224, 32.166111, 22.465197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608114, 32.013416, 22.783009>,  <27.721449, 31.921799, 22.973696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608114, 32.013416, 22.783009>,  <27.419224, 32.166111, 22.465197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608114, 32.013416, 22.783009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027237, -0.894614, -0.446009,
		0.881057, 0.232257, -0.412062,
		0.472225, -0.381736, 0.794531,
		27.749783, 31.898895, 23.021368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802347, 31.671490, 22.163107>,  <27.419224, 32.166111, 22.465197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802347, 31.671490, 22.163107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796627, 31.584614, 22.553516>,  <27.793196, 31.532488, 22.787762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796627, 31.584614, 22.553516>,  <27.802347, 31.671490, 22.163107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796627, 31.584614, 22.553516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006077, -0.976125, -0.217123,
		0.999879, 0.002827, 0.015278,
		-0.014300, -0.217190, 0.976025,
		27.792337, 31.519457, 22.846323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399515, 31.266548, 22.223440>,  <27.802347, 31.671490, 22.163107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399515, 31.266548, 22.223440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140888, 31.202042, 22.521687>,  <27.985712, 31.163338, 22.700634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140888, 31.202042, 22.521687>,  <28.399515, 31.266548, 22.223440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140888, 31.202042, 22.521687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171004, -0.983166, -0.064357,
		0.743444, 0.085892, 0.663260,
		-0.646567, -0.161266, 0.745617,
		27.946918, 31.153662, 22.745371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693813, 30.648346, 22.548582>,  <28.399515, 31.266548, 22.223440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693813, 30.648346, 22.548582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302118, 30.659588, 22.628887>,  <28.067102, 30.666334, 22.677071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302118, 30.659588, 22.628887>,  <28.693813, 30.648346, 22.548582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302118, 30.659588, 22.628887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036840, -0.998524, -0.039896,
		0.199346, -0.046464, 0.978827,
		-0.979236, 0.028106, 0.200764,
		28.008347, 30.668020, 22.689116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492872, 30.031744, 22.876564>,  <28.693813, 30.648346, 22.548582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492872, 30.031744, 22.876564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121302, 30.169903, 22.823200>,  <27.898359, 30.252798, 22.791182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121302, 30.169903, 22.823200>,  <28.492872, 30.031744, 22.876564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121302, 30.169903, 22.823200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368295, -0.899037, 0.236836,
		-0.038139, 0.269137, 0.962346,
		-0.928926, 0.345395, -0.133410,
		27.842625, 30.273521, 22.783176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078241, 29.795059, 23.457417>,  <28.492872, 30.031744, 22.876564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078241, 29.795059, 23.457417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856958, 29.854942, 23.129623>,  <27.724188, 29.890873, 22.932947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856958, 29.854942, 23.129623>,  <28.078241, 29.795059, 23.457417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856958, 29.854942, 23.129623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316084, -0.947878, 0.040216,
		-0.770747, 0.281273, 0.571694,
		-0.553208, 0.149708, -0.819480,
		27.690996, 29.899855, 22.883780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589630, 29.463646, 23.554188>,  <28.078241, 29.795059, 23.457417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589630, 29.463646, 23.554188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565746, 29.504650, 23.157013>,  <27.551416, 29.529253, 22.918707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565746, 29.504650, 23.157013>,  <27.589630, 29.463646, 23.554188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565746, 29.504650, 23.157013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361690, -0.929341, -0.074195,
		-0.930384, 0.354706, 0.092568,
		-0.059710, 0.102511, -0.992938,
		27.547832, 29.535404, 22.859131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962145, 29.250051, 23.366129>,  <27.589630, 29.463646, 23.554188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962145, 29.250051, 23.366129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192415, 29.213093, 23.041153>,  <27.330578, 29.190918, 22.846167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192415, 29.213093, 23.041153>,  <26.962145, 29.250051, 23.366129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192415, 29.213093, 23.041153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235780, -0.970149, -0.056734,
		-0.782945, 0.224217, -0.580278,
		0.575677, -0.092398, -0.812440,
		27.365118, 29.185373, 22.797421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542978, 28.724806, 22.868765>,  <26.962145, 29.250051, 23.366129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542978, 28.724806, 22.868765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924768, 28.740959, 22.750549>,  <27.153843, 28.750650, 22.679619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924768, 28.740959, 22.750549>,  <26.542978, 28.724806, 22.868765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924768, 28.740959, 22.750549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027802, -0.974437, -0.222936,
		-0.296988, 0.221004, -0.928954,
		0.954477, 0.040383, -0.295540,
		27.211111, 28.753075, 22.661888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604944, 28.228630, 22.273252>,  <26.542978, 28.724806, 22.868765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604944, 28.228630, 22.273252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985704, 28.294922, 22.376339>,  <27.214161, 28.334698, 22.438190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985704, 28.294922, 22.376339>,  <26.604944, 28.228630, 22.273252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985704, 28.294922, 22.376339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255644, -0.893233, -0.369839,
		0.168907, 0.417934, -0.892637,
		0.951902, 0.165729, 0.257715,
		27.271275, 28.344641, 22.453653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977377, 27.883179, 21.733263>,  <26.604944, 28.228630, 22.273252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977377, 27.883179, 21.733263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254333, 27.958126, 22.011971>,  <27.420507, 28.003094, 22.179195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254333, 27.958126, 22.011971>,  <26.977377, 27.883179, 21.733263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254333, 27.958126, 22.011971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440689, -0.874459, -0.202768,
		0.571305, 0.447454, -0.688037,
		0.692389, 0.187368, 0.696771,
		27.462049, 28.014338, 22.221003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665697, 27.890930, 21.436985>,  <26.977377, 27.883179, 21.733263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665697, 27.890930, 21.436985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712263, 27.824001, 21.828587>,  <27.740202, 27.783844, 22.063547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712263, 27.824001, 21.828587>,  <27.665697, 27.890930, 21.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712263, 27.824001, 21.828587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401419, -0.893685, -0.200471,
		0.908466, 0.416330, -0.036873,
		0.116415, -0.167320, 0.979005,
		27.747187, 27.773806, 22.122288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466892, 27.753836, 21.670528>,  <27.665697, 27.890930, 21.436985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466892, 27.753836, 21.670528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235973, 27.584766, 21.949978>,  <28.097422, 27.483324, 22.117647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235973, 27.584766, 21.949978>,  <28.466892, 27.753836, 21.670528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235973, 27.584766, 21.949978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479506, -0.868016, -0.128928,
		0.660911, 0.260564, 0.703778,
		-0.577296, -0.422675, 0.698623,
		28.062784, 27.457964, 22.159565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874121, 27.257797, 22.031542>,  <28.466892, 27.753836, 21.670528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874121, 27.257797, 22.031542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495949, 27.150093, 22.104931>,  <28.269045, 27.085470, 22.148964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495949, 27.150093, 22.104931>,  <28.874121, 27.257797, 22.031542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495949, 27.150093, 22.104931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281383, -0.958627, 0.043114,
		0.164271, 0.092387, 0.982079,
		-0.945430, -0.269258, 0.183471,
		28.212320, 27.069315, 22.159971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975758, 26.828617, 22.482929>,  <28.874121, 27.257797, 22.031542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975758, 26.828617, 22.482929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627831, 26.722771, 22.316364>,  <28.419075, 26.659264, 22.216425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627831, 26.722771, 22.316364>,  <28.975758, 26.828617, 22.482929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627831, 26.722771, 22.316364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304813, -0.951880, -0.031820,
		-0.387956, -0.154605, 0.908618,
		-0.869815, -0.264614, -0.416413,
		28.366886, 26.643387, 22.191441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755196, 26.269026, 22.855129>,  <28.975758, 26.828617, 22.482929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755196, 26.269026, 22.855129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546341, 26.260956, 22.514080>,  <28.421028, 26.256115, 22.309450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546341, 26.260956, 22.514080>,  <28.755196, 26.269026, 22.855129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546341, 26.260956, 22.514080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191027, -0.977087, -0.093864,
		-0.831194, -0.211884, 0.514025,
		-0.522136, -0.020173, -0.852624,
		28.389700, 26.254904, 22.258293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272453, 25.645418, 22.864616>,  <28.755196, 26.269026, 22.855129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272453, 25.645418, 22.864616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327272, 25.775543, 22.490368>,  <28.360163, 25.853619, 22.265818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327272, 25.775543, 22.490368>,  <28.272453, 25.645418, 22.864616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327272, 25.775543, 22.490368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001941, -0.944445, -0.328664,
		-0.990563, 0.046859, -0.128802,
		0.137047, 0.325312, -0.935623,
		28.368387, 25.873137, 22.209681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936852, 25.061583, 22.510998>,  <28.272453, 25.645418, 22.864616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936852, 25.061583, 22.510998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145306, 25.252136, 22.227737>,  <28.270378, 25.366468, 22.057781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145306, 25.252136, 22.227737>,  <27.936852, 25.061583, 22.510998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145306, 25.252136, 22.227737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340201, -0.876908, -0.339552,
		-0.782739, -0.063959, -0.619055,
		0.521137, 0.476384, -0.708149,
		28.301647, 25.395052, 22.015293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634354, 24.926792, 21.907896>,  <27.936852, 25.061583, 22.510998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634354, 24.926792, 21.907896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008963, 25.028156, 21.810974>,  <28.233728, 25.088974, 21.752821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008963, 25.028156, 21.810974>,  <27.634354, 24.926792, 21.907896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008963, 25.028156, 21.810974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137532, -0.901221, -0.410958,
		-0.322511, 0.351546, -0.878864,
		0.936521, 0.253410, -0.242305,
		28.289919, 25.104179, 21.738283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826006, 24.734665, 21.147629>,  <27.634354, 24.926792, 21.907896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826006, 24.734665, 21.147629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193945, 24.770508, 21.300392>,  <28.414707, 24.792013, 21.392050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193945, 24.770508, 21.300392>,  <27.826006, 24.734665, 21.147629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193945, 24.770508, 21.300392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265693, -0.858566, -0.438489,
		0.288602, 0.504812, -0.813556,
		0.919846, 0.089607, 0.381908,
		28.469898, 24.797390, 21.414965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248863, 24.637802, 20.550640>,  <27.826006, 24.734665, 21.147629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248863, 24.637802, 20.550640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484945, 24.574860, 20.867348>,  <28.626595, 24.537094, 21.057373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484945, 24.574860, 20.867348>,  <28.248863, 24.637802, 20.550640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484945, 24.574860, 20.867348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411536, -0.785143, -0.462806,
		0.694476, 0.598992, -0.398638,
		0.590205, -0.157354, 0.791769,
		28.662006, 24.527653, 21.104879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787619, 24.370115, 20.246428>,  <28.248863, 24.637802, 20.550640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787619, 24.370115, 20.246428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848076, 24.255875, 20.624969>,  <28.884350, 24.187330, 20.852095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848076, 24.255875, 20.624969>,  <28.787619, 24.370115, 20.246428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848076, 24.255875, 20.624969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360580, -0.875460, -0.321794,
		0.920401, 0.389875, -0.029340,
		0.151145, -0.285600, 0.946355,
		28.893419, 24.170195, 20.908876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510155, 24.064095, 20.268950>,  <28.787619, 24.370115, 20.246428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510155, 24.064095, 20.268950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280313, 23.903629, 20.554298>,  <29.142408, 23.807350, 20.725508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280313, 23.903629, 20.554298>,  <29.510155, 24.064095, 20.268950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280313, 23.903629, 20.554298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365611, -0.905644, -0.214796,
		0.732231, 0.137394, 0.667054,
		-0.574602, -0.401162, 0.713374,
		29.107933, 23.783281, 20.768311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858704, 23.595400, 20.651840>,  <29.510155, 24.064095, 20.268950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858704, 23.595400, 20.651840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478067, 23.484524, 20.704971>,  <29.249685, 23.417997, 20.736849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478067, 23.484524, 20.704971>,  <29.858704, 23.595400, 20.651840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478067, 23.484524, 20.704971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227940, -0.926290, -0.300051,
		0.206208, -0.255249, 0.944630,
		-0.951589, -0.277192, 0.132827,
		29.192591, 23.401367, 20.744820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867863, 22.949194, 20.877893>,  <29.858704, 23.595400, 20.651840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867863, 22.949194, 20.877893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482582, 22.971279, 20.772678>,  <29.251413, 22.984531, 20.709549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482582, 22.971279, 20.772678>,  <29.867863, 22.949194, 20.877893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482582, 22.971279, 20.772678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001937, -0.980072, -0.198632,
		-0.268765, -0.190814, 0.944117,
		-0.963204, 0.055214, -0.263039,
		29.193621, 22.987843, 20.693766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532738, 22.251328, 21.143656>,  <29.867863, 22.949194, 20.877893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532738, 22.251328, 21.143656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304073, 22.414268, 20.858765>,  <29.166874, 22.512033, 20.687830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304073, 22.414268, 20.858765>,  <29.532738, 22.251328, 21.143656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304073, 22.414268, 20.858765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084539, -0.892673, -0.442704,
		-0.816123, -0.192866, 0.544744,
		-0.571661, 0.407353, -0.712227,
		29.132576, 22.536474, 20.645096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958158, 21.760088, 21.028700>,  <29.532738, 22.251328, 21.143656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958158, 21.760088, 21.028700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941631, 21.984882, 20.698254>,  <28.931715, 22.119759, 20.499987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941631, 21.984882, 20.698254>,  <28.958158, 21.760088, 21.028700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941631, 21.984882, 20.698254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472800, -0.739386, -0.479342,
		-0.880201, 0.370781, 0.296257,
		-0.041317, 0.561987, -0.826113,
		28.929235, 22.153479, 20.450420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324986, 21.687933, 20.822239>,  <28.958158, 21.760088, 21.028700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324986, 21.687933, 20.822239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530203, 21.800941, 20.498024>,  <28.653334, 21.868746, 20.303495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530203, 21.800941, 20.498024>,  <28.324986, 21.687933, 20.822239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530203, 21.800941, 20.498024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255420, -0.851258, -0.458388,
		-0.819480, 0.442200, -0.364571,
		0.513043, 0.282521, -0.810536,
		28.684116, 21.885698, 20.254864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823778, 21.787500, 20.251516>,  <28.324986, 21.687933, 20.822239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823778, 21.787500, 20.251516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188940, 21.710831, 20.107368>,  <28.408037, 21.664829, 20.020880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188940, 21.710831, 20.107368>,  <27.823778, 21.787500, 20.251516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188940, 21.710831, 20.107368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348054, -0.826759, -0.441960,
		-0.213226, 0.528895, -0.821465,
		0.912904, -0.191676, -0.360370,
		28.462811, 21.653328, 19.999258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629465, 21.450392, 19.666924>,  <27.823778, 21.787500, 20.251516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629465, 21.450392, 19.666924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018534, 21.357578, 19.670250>,  <28.251974, 21.301889, 19.672245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018534, 21.357578, 19.670250>,  <27.629465, 21.450392, 19.666924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018534, 21.357578, 19.670250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225621, -0.953030, -0.202065,
		0.054810, 0.194667, -0.979337,
		0.972672, -0.232034, 0.008315,
		28.310335, 21.287968, 19.672745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766527, 21.030920, 19.049129>,  <27.629465, 21.450392, 19.666924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766527, 21.030920, 19.049129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041748, 20.962906, 19.331314>,  <28.206881, 20.922098, 19.500624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041748, 20.962906, 19.331314>,  <27.766527, 21.030920, 19.049129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041748, 20.962906, 19.331314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150869, -0.984436, -0.090131,
		0.709805, -0.044417, -0.702996,
		0.688051, -0.170036, 0.705459,
		28.248163, 20.911896, 19.542952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179585, 20.470091, 18.783895>,  <27.766527, 21.030920, 19.049129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179585, 20.470091, 18.783895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263334, 20.490589, 19.174492>,  <28.313585, 20.502888, 19.408850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263334, 20.490589, 19.174492>,  <28.179585, 20.470091, 18.783895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263334, 20.490589, 19.174492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135167, -0.987522, 0.080809,
		0.968448, -0.148908, -0.199836,
		0.209375, 0.051248, 0.976492,
		28.326147, 20.505964, 19.467440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013582, 20.758427, 18.857832>,  <28.179585, 20.470091, 18.783895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013582, 20.758427, 18.857832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966171, 20.654495, 18.474491>,  <28.937725, 20.592136, 18.244486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966171, 20.654495, 18.474491>,  <29.013582, 20.758427, 18.857832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966171, 20.654495, 18.474491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051769, 0.965462, -0.255351,
		0.991600, 0.019346, -0.127886,
		-0.118529, -0.259826, -0.958353,
		28.930613, 20.576548, 18.186985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400084, 21.177933, 18.383121>,  <29.013582, 20.758427, 18.857832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400084, 21.177933, 18.383121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098753, 21.060066, 18.147945>,  <28.917955, 20.989346, 18.006840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098753, 21.060066, 18.147945>,  <29.400084, 21.177933, 18.383121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098753, 21.060066, 18.147945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315223, 0.946401, -0.070427,
		0.577180, 0.132278, -0.805833,
		-0.753325, -0.294666, -0.587941,
		28.872755, 20.971666, 17.971563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378527, 21.650547, 17.906731>,  <29.400084, 21.177933, 18.383121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378527, 21.650547, 17.906731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020014, 21.487984, 17.835728>,  <28.804907, 21.390446, 17.793125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020014, 21.487984, 17.835728>,  <29.378527, 21.650547, 17.906731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020014, 21.487984, 17.835728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401082, 0.913618, -0.066593,
		0.189239, 0.011509, -0.981864,
		-0.896282, -0.406410, -0.177509,
		28.751129, 21.366060, 17.782475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165258, 21.999756, 17.343220>,  <29.378527, 21.650547, 17.906731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165258, 21.999756, 17.343220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825981, 21.873753, 17.513554>,  <28.622414, 21.798151, 17.615753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825981, 21.873753, 17.513554>,  <29.165258, 21.999756, 17.343220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825981, 21.873753, 17.513554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418461, 0.891390, -0.174107,
		-0.324739, -0.325872, -0.887892,
		-0.848195, -0.315009, 0.425833,
		28.571522, 21.779249, 17.641304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656700, 22.408510, 17.005537>,  <29.165258, 21.999756, 17.343220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656700, 22.408510, 17.005537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485792, 22.264973, 17.337482>,  <28.383247, 22.178850, 17.536650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485792, 22.264973, 17.337482>,  <28.656700, 22.408510, 17.005537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485792, 22.264973, 17.337482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428146, 0.888730, 0.163859,
		-0.796323, -0.285290, -0.533366,
		-0.427271, -0.358844, 0.829862,
		28.357611, 22.157320, 17.586441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844669, 22.413410, 16.929419>,  <28.656700, 22.408510, 17.005537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844669, 22.413410, 16.929419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949310, 22.421577, 17.315403>,  <28.012094, 22.426477, 17.546993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949310, 22.421577, 17.315403>,  <27.844669, 22.413410, 16.929419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949310, 22.421577, 17.315403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529615, 0.838853, 0.125828,
		-0.806891, -0.543974, 0.230259,
		0.261601, 0.020419, 0.964960,
		28.027790, 22.427704, 17.604891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239382, 22.692059, 17.217001>,  <27.844669, 22.413410, 16.929419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239382, 22.692059, 17.217001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526266, 22.726398, 17.493622>,  <27.698397, 22.747002, 17.659594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526266, 22.726398, 17.493622>,  <27.239382, 22.692059, 17.217001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526266, 22.726398, 17.493622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463609, 0.799685, 0.381537,
		-0.520268, -0.594250, 0.613342,
		0.717209, 0.085850, 0.691550,
		27.741428, 22.752153, 17.701086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004644, 22.946045, 17.875549>,  <27.239382, 22.692059, 17.217001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004644, 22.946045, 17.875549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384329, 23.061928, 17.924656>,  <27.612139, 23.131456, 17.954121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384329, 23.061928, 17.924656>,  <27.004644, 22.946045, 17.875549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384329, 23.061928, 17.924656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311429, 0.809404, 0.497872,
		0.044868, -0.510818, 0.858517,
		0.949210, 0.289706, 0.122767,
		27.669092, 23.148840, 17.961487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869761, 23.315510, 18.469616>,  <27.004644, 22.946045, 17.875549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869761, 23.315510, 18.469616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228428, 23.421452, 18.327721>,  <27.443628, 23.485016, 18.242584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228428, 23.421452, 18.327721>,  <26.869761, 23.315510, 18.469616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228428, 23.421452, 18.327721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087537, 0.891552, 0.444379,
		0.433963, -0.367408, 0.822611,
		0.896668, 0.264853, -0.354739,
		27.497429, 23.500908, 18.221298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244032, 23.491777, 19.027266>,  <26.869761, 23.315510, 18.469616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244032, 23.491777, 19.027266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404745, 23.674519, 18.709812>,  <27.501173, 23.784163, 18.519341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404745, 23.674519, 18.709812>,  <27.244032, 23.491777, 19.027266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404745, 23.674519, 18.709812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135476, 0.886782, 0.441886,
		0.905657, -0.070024, 0.418188,
		0.401784, 0.456852, -0.793634,
		27.525280, 23.811575, 18.471722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718338, 23.839746, 19.373148>,  <27.244032, 23.491777, 19.027266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718338, 23.839746, 19.373148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670778, 24.027351, 19.023087>,  <27.642242, 24.139914, 18.813049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670778, 24.027351, 19.023087>,  <27.718338, 23.839746, 19.373148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670778, 24.027351, 19.023087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030644, 0.879252, 0.475372,
		0.992434, 0.083339, -0.090168,
		-0.118897, 0.469012, -0.875152,
		27.635109, 24.168055, 18.760540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135527, 24.443014, 19.380484>,  <27.718338, 23.839746, 19.373148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135527, 24.443014, 19.380484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874346, 24.540733, 19.093716>,  <27.717638, 24.599365, 18.921656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874346, 24.540733, 19.093716>,  <28.135527, 24.443014, 19.380484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874346, 24.540733, 19.093716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099011, 0.910898, 0.400576,
		0.750902, 0.332539, -0.570583,
		-0.652950, 0.244299, -0.716920,
		27.678461, 24.614023, 18.878639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374807, 25.094847, 18.922281>,  <28.135527, 24.443014, 19.380484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374807, 25.094847, 18.922281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975838, 25.071358, 18.905804>,  <27.736456, 25.057264, 18.895918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975838, 25.071358, 18.905804>,  <28.374807, 25.094847, 18.922281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975838, 25.071358, 18.905804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067600, 0.961569, 0.266113,
		0.023983, 0.268213, -0.963061,
		-0.997424, -0.058721, -0.041193,
		27.676611, 25.053741, 18.893446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157740, 25.766409, 18.707104>,  <28.374807, 25.094847, 18.922281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157740, 25.766409, 18.707104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806240, 25.615318, 18.823811>,  <27.595341, 25.524664, 18.893835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806240, 25.615318, 18.823811>,  <28.157740, 25.766409, 18.707104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806240, 25.615318, 18.823811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298099, 0.911756, 0.282556,
		-0.372747, 0.161320, -0.913803,
		-0.878747, -0.377726, 0.291765,
		27.542616, 25.502001, 18.911341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589216, 26.193777, 18.281607>,  <28.157740, 25.766409, 18.707104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589216, 26.193777, 18.281607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424839, 26.024509, 18.604607>,  <27.326214, 25.922949, 18.798407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424839, 26.024509, 18.604607>,  <27.589216, 26.193777, 18.281607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424839, 26.024509, 18.604607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284598, 0.901026, 0.327346,
		-0.866101, -0.095293, -0.490702,
		-0.410942, -0.423168, 0.807500,
		27.301556, 25.897558, 18.846857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855555, 26.460247, 18.384333>,  <27.589216, 26.193777, 18.281607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855555, 26.460247, 18.384333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946131, 26.319389, 18.747589>,  <27.000477, 26.234875, 18.965544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946131, 26.319389, 18.747589>,  <26.855555, 26.460247, 18.384333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946131, 26.319389, 18.747589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362694, 0.834825, 0.414149,
		-0.903979, -0.423158, 0.061318,
		0.226440, -0.352142, 0.908141,
		27.014063, 26.213747, 19.020031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261396, 26.545742, 18.818188>,  <26.855555, 26.460247, 18.384333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261396, 26.545742, 18.818188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564114, 26.501518, 19.075882>,  <26.745745, 26.474985, 19.230499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564114, 26.501518, 19.075882>,  <26.261396, 26.545742, 18.818188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564114, 26.501518, 19.075882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233696, 0.874685, 0.424631,
		-0.610451, -0.471914, 0.636119,
		0.756793, -0.110558, 0.644237,
		26.791151, 26.468351, 19.269154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962286, 26.786650, 19.461090>,  <26.261396, 26.545742, 18.818188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962286, 26.786650, 19.461090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360727, 26.813725, 19.483696>,  <26.599792, 26.829969, 19.497259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360727, 26.813725, 19.483696>,  <25.962286, 26.786650, 19.461090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360727, 26.813725, 19.483696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084506, 0.915814, 0.392611,
		-0.025182, -0.395857, 0.917966,
		0.996105, 0.067687, 0.056514,
		26.659559, 26.834030, 19.500650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097153, 27.112320, 20.096561>,  <25.962286, 26.786650, 19.461090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097153, 27.112320, 20.096561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428282, 27.185947, 19.884590>,  <26.626959, 27.230124, 19.757408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428282, 27.185947, 19.884590>,  <26.097153, 27.112320, 20.096561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428282, 27.185947, 19.884590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134395, 0.852055, 0.505905,
		0.544650, -0.490021, 0.680614,
		0.827825, 0.184070, -0.529928,
		26.676630, 27.241169, 19.725611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459038, 27.586554, 20.470592>,  <26.097153, 27.112320, 20.096561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459038, 27.586554, 20.470592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655411, 27.628296, 20.124622>,  <26.773235, 27.653341, 19.917040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655411, 27.628296, 20.124622>,  <26.459038, 27.586554, 20.470592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655411, 27.628296, 20.124622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386148, 0.863885, 0.323407,
		0.780944, -0.492761, 0.383814,
		0.490934, 0.104353, -0.864925,
		26.802691, 27.659601, 19.865145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109114, 27.925028, 20.648830>,  <26.459038, 27.586554, 20.470592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109114, 27.925028, 20.648830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061758, 27.983723, 20.256004>,  <27.033344, 28.018940, 20.020309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061758, 27.983723, 20.256004>,  <27.109114, 27.925028, 20.648830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061758, 27.983723, 20.256004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202912, 0.971726, 0.120731,
		0.972014, -0.184979, -0.144818,
		-0.118391, 0.146738, -0.982065,
		27.026241, 28.027744, 19.961386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617167, 28.302401, 20.493849>,  <27.109114, 27.925028, 20.648830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617167, 28.302401, 20.493849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370815, 28.375618, 20.187336>,  <27.223003, 28.419548, 20.003429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370815, 28.375618, 20.187336>,  <27.617167, 28.302401, 20.493849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370815, 28.375618, 20.187336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223293, 0.973308, 0.053033,
		0.755535, -0.138443, -0.640313,
		-0.615880, 0.183045, -0.766281,
		27.186050, 28.430532, 19.957451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912989, 28.755507, 20.043999>,  <27.617167, 28.302401, 20.493849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912989, 28.755507, 20.043999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523104, 28.783451, 19.959095>,  <27.289173, 28.800219, 19.908152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523104, 28.783451, 19.959095>,  <27.912989, 28.755507, 20.043999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523104, 28.783451, 19.959095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079863, 0.996046, -0.038902,
		0.208703, -0.054870, -0.976438,
		-0.974713, 0.069862, -0.212260,
		27.230690, 28.804409, 19.895416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724432, 29.335373, 19.473215>,  <27.912989, 28.755507, 20.043999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724432, 29.335373, 19.473215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382866, 29.301197, 19.678555>,  <27.177925, 29.280691, 19.801758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382866, 29.301197, 19.678555>,  <27.724432, 29.335373, 19.473215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382866, 29.301197, 19.678555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063622, 0.996171, 0.059969,
		-0.516507, 0.018548, -0.856082,
		-0.853916, -0.085441, 0.513349,
		27.126692, 29.275564, 19.832560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387669, 29.830904, 19.179947>,  <27.724432, 29.335373, 19.473215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387669, 29.830904, 19.179947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189947, 29.752018, 19.518597>,  <27.071314, 29.704687, 19.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189947, 29.752018, 19.518597>,  <27.387669, 29.830904, 19.179947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189947, 29.752018, 19.518597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168517, 0.977189, 0.129240,
		-0.852798, -0.078786, -0.516263,
		-0.494305, -0.197215, 0.846622,
		27.041656, 29.692854, 19.772583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815928, 30.266829, 19.209560>,  <27.387669, 29.830904, 19.179947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815928, 30.266829, 19.209560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794292, 30.160141, 19.594463>,  <26.781311, 30.096128, 19.825405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794292, 30.160141, 19.594463>,  <26.815928, 30.266829, 19.209560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794292, 30.160141, 19.594463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302175, 0.922854, 0.238811,
		-0.951717, -0.277853, -0.130512,
		-0.054089, -0.266718, 0.962256,
		26.778065, 30.080126, 19.883141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216158, 30.624268, 19.465982>,  <26.815928, 30.266829, 19.209560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216158, 30.624268, 19.465982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434885, 30.522991, 19.785202>,  <26.566120, 30.462225, 19.976734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434885, 30.522991, 19.785202>,  <26.216158, 30.624268, 19.465982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434885, 30.522991, 19.785202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336532, 0.806322, 0.486405,
		-0.766641, -0.534544, 0.355702,
		0.546816, -0.253193, 0.798051,
		26.598930, 30.447033, 20.024618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790403, 30.581957, 20.017822>,  <26.216158, 30.624268, 19.465982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790403, 30.581957, 20.017822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158398, 30.654861, 20.156624>,  <26.379194, 30.698605, 20.239904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158398, 30.654861, 20.156624>,  <25.790403, 30.581957, 20.017822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158398, 30.654861, 20.156624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328411, 0.841696, 0.428596,
		-0.213954, -0.508261, 0.834203,
		0.919983, 0.182262, 0.347003,
		26.434393, 30.709539, 20.260725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724934, 30.666681, 20.790503>,  <25.790403, 30.581957, 20.017822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724934, 30.666681, 20.790503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065714, 30.846828, 20.683659>,  <26.270182, 30.954916, 20.619553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065714, 30.846828, 20.683659>,  <25.724934, 30.666681, 20.790503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065714, 30.846828, 20.683659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398673, 0.888627, 0.226720,
		0.339470, -0.086665, 0.936616,
		0.851951, 0.450369, -0.267111,
		26.321299, 30.981939, 20.603525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849228, 31.032646, 21.424721>,  <25.724934, 30.666681, 20.790503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849228, 31.032646, 21.424721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098976, 31.173977, 21.146061>,  <26.248825, 31.258776, 20.978865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098976, 31.173977, 21.146061>,  <25.849228, 31.032646, 21.424721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098976, 31.173977, 21.146061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274711, 0.934201, 0.227602,
		0.731230, 0.049270, 0.680350,
		0.624370, 0.353328, -0.696650,
		26.286287, 31.279976, 20.937065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199356, 31.532188, 21.744915>,  <25.849228, 31.032646, 21.424721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199356, 31.532188, 21.744915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223103, 31.611328, 21.353542>,  <26.237350, 31.658812, 21.118719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223103, 31.611328, 21.353542>,  <26.199356, 31.532188, 21.744915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223103, 31.611328, 21.353542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358518, 0.918991, 0.164076,
		0.931633, 0.341045, 0.125491,
		0.059368, 0.197850, -0.978433,
		26.240913, 31.670683, 21.060013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552076, 32.185730, 21.696898>,  <26.199356, 31.532188, 21.744915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552076, 32.185730, 21.696898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371544, 32.148994, 21.341850>,  <26.263224, 32.126953, 21.128822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371544, 32.148994, 21.341850>,  <26.552076, 32.185730, 21.696898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371544, 32.148994, 21.341850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302659, 0.951485, 0.055449,
		0.839462, 0.293671, -0.457231,
		-0.451332, -0.091838, -0.887618,
		26.236145, 32.121445, 21.075565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730633, 32.778362, 21.234131>,  <26.552076, 32.185730, 21.696898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730633, 32.778362, 21.234131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383451, 32.639339, 21.092220>,  <26.175142, 32.555927, 21.007074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383451, 32.639339, 21.092220>,  <26.730633, 32.778362, 21.234131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383451, 32.639339, 21.092220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371581, 0.928401, -0.000436,
		0.329527, 0.131450, -0.934951,
		-0.867951, -0.347554, -0.354777,
		26.123066, 32.535072, 20.985786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515316, 33.176418, 20.655403>,  <26.730633, 32.778362, 21.234131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515316, 33.176418, 20.655403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167440, 32.997494, 20.738880>,  <25.958715, 32.890137, 20.788967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167440, 32.997494, 20.738880>,  <26.515316, 33.176418, 20.655403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167440, 32.997494, 20.738880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493568, 0.782978, -0.378597,
		0.005950, -0.432266, -0.901727,
		-0.869687, -0.447316, 0.208694,
		25.906534, 32.863300, 20.801489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079357, 33.332741, 20.150450>,  <26.515316, 33.176418, 20.655403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079357, 33.332741, 20.150450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842554, 33.233013, 20.457008>,  <25.700472, 33.173176, 20.640944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842554, 33.233013, 20.457008>,  <26.079357, 33.332741, 20.150450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842554, 33.233013, 20.457008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576040, 0.795973, -0.186023,
		-0.563652, -0.551603, -0.614842,
		-0.592008, -0.249321, 0.766397,
		25.664951, 33.158218, 20.686928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447834, 33.654530, 20.036531>,  <26.079357, 33.332741, 20.150450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447834, 33.654530, 20.036531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379055, 33.549438, 20.416302>,  <25.337788, 33.486385, 20.644163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379055, 33.549438, 20.416302>,  <25.447834, 33.654530, 20.036531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379055, 33.549438, 20.416302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675330, 0.733103, 0.080559,
		-0.717192, -0.627323, -0.303483,
		-0.171947, -0.262727, 0.949425,
		25.327471, 33.470619, 20.701130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772579, 33.554558, 20.072800>,  <25.447834, 33.654530, 20.036531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772579, 33.554558, 20.072800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890135, 33.633545, 20.446888>,  <24.960669, 33.680939, 20.671341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890135, 33.633545, 20.446888>,  <24.772579, 33.554558, 20.072800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890135, 33.633545, 20.446888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708414, 0.701862, 0.074420,
		-0.641700, -0.684394, 0.346159,
		0.293889, 0.197468, 0.935220,
		24.978302, 33.692787, 20.727453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.106220, 33.594604, 20.490908>,  <24.772579, 33.554558, 20.072800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.106220, 33.594604, 20.490908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387886, 33.786827, 20.699986>,  <24.556887, 33.902161, 20.825432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387886, 33.786827, 20.699986>,  <24.106220, 33.594604, 20.490908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.387886, 33.786827, 20.699986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659494, 0.715434, 0.230698,
		-0.263091, -0.507165, 0.820711,
		0.704167, 0.480560, 0.522697,
		24.599136, 33.930996, 20.856794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.713690, 33.837196, 21.015488>,  <24.106220, 33.594604, 20.490908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.713690, 33.837196, 21.015488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053251, 34.048218, 21.002548>,  <24.256989, 34.174831, 20.994785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053251, 34.048218, 21.002548>,  <23.713690, 33.837196, 21.015488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.053251, 34.048218, 21.002548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524177, 0.848159, 0.076580,
		0.067835, -0.048054, 0.996539,
		0.848904, 0.527557, -0.032347,
		24.307922, 34.206486, 20.992844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.848392, 34.162971, 21.697491>,  <23.713690, 33.837196, 21.015488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.848392, 34.162971, 21.697491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.045834, 34.382549, 21.427670>,  <24.164297, 34.514294, 21.265778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.045834, 34.382549, 21.427670>,  <23.848392, 34.162971, 21.697491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.045834, 34.382549, 21.427670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619540, 0.766281, 0.170245,
		0.610352, 0.333879, 0.718328,
		0.493600, 0.548943, -0.674552,
		24.193914, 34.547234, 21.225304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.136879, 34.862843, 22.072363>,  <23.848392, 34.162971, 21.697491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.136879, 34.862843, 22.072363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.034744, 34.818184, 21.688210>,  <23.973463, 34.791389, 21.457718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.034744, 34.818184, 21.688210>,  <24.136879, 34.862843, 22.072363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.034744, 34.818184, 21.688210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679955, 0.726906, 0.096271,
		0.687361, 0.677600, -0.261521,
		-0.255334, -0.111650, -0.960385,
		23.958143, 34.784691, 21.400095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.362041, 35.418293, 21.722027>,  <24.136879, 34.862843, 22.072363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.362041, 35.418293, 21.722027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.020275, 35.275616, 21.570904>,  <23.815216, 35.190010, 21.480230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.020275, 35.275616, 21.570904>,  <24.362041, 35.418293, 21.722027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.020275, 35.275616, 21.570904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403071, 0.913869, 0.048744,
		0.327881, 0.193931, -0.924599,
		-0.854416, -0.356697, -0.377809,
		23.763950, 35.168606, 21.457561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010958, 35.884701, 21.287254>,  <24.362041, 35.418293, 21.722027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010958, 35.884701, 21.287254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.734968, 35.655930, 21.464718>,  <23.569374, 35.518665, 21.571196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.734968, 35.655930, 21.464718>,  <24.010958, 35.884701, 21.287254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.734968, 35.655930, 21.464718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444816, 0.818563, 0.363448,
		-0.571027, 0.053424, -0.819191,
		-0.689976, -0.571927, 0.443657,
		23.527975, 35.484352, 21.597815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.452854, 36.240032, 21.209656>,  <24.010958, 35.884701, 21.287254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.452854, 36.240032, 21.209656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.325642, 36.006516, 21.508465>,  <23.249313, 35.866405, 21.687750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.325642, 36.006516, 21.508465>,  <23.452854, 36.240032, 21.209656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.325642, 36.006516, 21.508465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263669, 0.811309, 0.521782,
		-0.910678, -0.031023, -0.411951,
		-0.318032, -0.583794, 0.747021,
		23.230232, 35.831379, 21.732571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.721050, 36.535278, 21.491209>,  <23.452854, 36.240032, 21.209656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.721050, 36.535278, 21.491209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.966160, 36.348732, 21.746399>,  <23.113226, 36.236805, 21.899513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.966160, 36.348732, 21.746399>,  <22.721050, 36.535278, 21.491209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.966160, 36.348732, 21.746399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097779, 0.756350, 0.646818,
		-0.784185, -0.458735, 0.417872,
		0.612775, -0.466365, 0.637973,
		23.149992, 36.208824, 21.937790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.573772, 36.991360, 20.834963>,  <22.721050, 36.535278, 21.491209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.573772, 36.991360, 20.834963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.910830, 37.066029, 21.036995>,  <23.113064, 37.110828, 21.158215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.910830, 37.066029, 21.036995>,  <22.573772, 36.991360, 20.834963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.910830, 37.066029, 21.036995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501989, -0.611711, -0.611406,
		0.194833, 0.768742, -0.609160,
		0.842643, 0.186670, 0.505081,
		23.163622, 37.122028, 21.188519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413429, 36.311771, 20.537413>,  <22.573772, 36.991360, 20.834963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413429, 36.311771, 20.537413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.235901, 36.022770, 20.749454>,  <22.129385, 35.849369, 20.876680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.235901, 36.022770, 20.749454>,  <22.413429, 36.311771, 20.537413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.235901, 36.022770, 20.749454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545862, -0.251169, -0.799343,
		0.710675, -0.644127, -0.282915,
		-0.443819, -0.722506, 0.530104,
		22.102755, 35.806019, 20.908485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507164, 35.509636, 20.338863>,  <22.413429, 36.311771, 20.537413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507164, 35.509636, 20.338863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.153864, 35.633381, 20.479813>,  <21.941885, 35.707626, 20.564383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.153864, 35.633381, 20.479813>,  <22.507164, 35.509636, 20.338863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.153864, 35.633381, 20.479813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428493, -0.227305, -0.874487,
		-0.190431, -0.923380, 0.333323,
		-0.883250, 0.309356, 0.352376,
		21.888889, 35.726189, 20.585524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.024393, 34.990334, 20.264006>,  <22.507164, 35.509636, 20.338863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.024393, 34.990334, 20.264006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.801632, 35.322262, 20.278229>,  <21.667976, 35.521420, 20.286762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.801632, 35.322262, 20.278229>,  <22.024393, 34.990334, 20.264006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.801632, 35.322262, 20.278229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526672, -0.319702, -0.787660,
		-0.642245, -0.457376, 0.615084,
		-0.556900, 0.829818, 0.035560,
		21.634562, 35.571209, 20.288897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319166, 34.738049, 20.225151>,  <22.024393, 34.990334, 20.264006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319166, 34.738049, 20.225151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.289944, 35.126190, 20.132996>,  <21.272409, 35.359074, 20.077702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.289944, 35.126190, 20.132996>,  <21.319166, 34.738049, 20.225151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.289944, 35.126190, 20.132996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680762, -0.217339, -0.699519,
		-0.728852, 0.105735, 0.676457,
		-0.073057, 0.970352, -0.230388,
		21.268026, 35.417297, 20.063879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617722, 34.996216, 20.106012>,  <21.319166, 34.738049, 20.225151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617722, 34.996216, 20.106012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.805458, 35.267651, 19.880009>,  <20.918100, 35.430511, 19.744406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.805458, 35.267651, 19.880009>,  <20.617722, 34.996216, 20.106012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.805458, 35.267651, 19.880009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727916, -0.064882, -0.682590,
		-0.499858, 0.731646, 0.463505,
		0.469341, 0.678590, -0.565009,
		20.946260, 35.471226, 19.710506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.131079, 35.466976, 19.776667>,  <20.617722, 34.996216, 20.106012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.131079, 35.466976, 19.776667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.460356, 35.521385, 19.556175>,  <20.657923, 35.554031, 19.423880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.460356, 35.521385, 19.556175>,  <20.131079, 35.466976, 19.776667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.460356, 35.521385, 19.556175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532203, -0.153330, -0.832616,
		-0.197771, 0.978769, -0.053831,
		0.823193, 0.136018, -0.551228,
		20.707314, 35.562191, 19.390806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836094, 35.790512, 19.137238>,  <20.131079, 35.466976, 19.776667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836094, 35.790512, 19.137238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207363, 35.687176, 19.030090>,  <20.430124, 35.625175, 18.965801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207363, 35.687176, 19.030090>,  <19.836094, 35.790512, 19.137238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207363, 35.687176, 19.030090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342418, -0.310964, -0.886595,
		0.145743, 0.914638, -0.377089,
		0.928175, -0.258337, -0.267868,
		20.485815, 35.609676, 18.949730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840652, 36.105366, 18.525351>,  <19.836094, 35.790512, 19.137238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840652, 36.105366, 18.525351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.106695, 35.806679, 18.522789>,  <20.266321, 35.627468, 18.521252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.106695, 35.806679, 18.522789>,  <19.840652, 36.105366, 18.525351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.106695, 35.806679, 18.522789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201599, -0.171294, -0.964373,
		0.719019, 0.642705, -0.264467,
		0.665109, -0.746719, -0.006405,
		20.306229, 35.582664, 18.520868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.177668, 36.203197, 17.917730>,  <19.840652, 36.105366, 18.525351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.177668, 36.203197, 17.917730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.274202, 35.827911, 18.016933>,  <20.332123, 35.602741, 18.076454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.274202, 35.827911, 18.016933>,  <20.177668, 36.203197, 17.917730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.274202, 35.827911, 18.016933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325840, -0.319065, -0.889958,
		0.914104, 0.133969, -0.382710,
		0.241336, -0.938216, 0.248006,
		20.346603, 35.546448, 18.091335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.515728, 35.963657, 17.379469>,  <20.177668, 36.203197, 17.917730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.515728, 35.963657, 17.379469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379932, 35.630737, 17.554749>,  <20.298456, 35.430984, 17.659916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379932, 35.630737, 17.554749>,  <20.515728, 35.963657, 17.379469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379932, 35.630737, 17.554749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393573, -0.297430, -0.869848,
		0.854312, -0.467765, -0.226599,
		-0.339487, -0.832305, 0.438198,
		20.278086, 35.381046, 17.686209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682400, 35.387226, 16.891939>,  <20.515728, 35.963657, 17.379469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682400, 35.387226, 16.891939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.401642, 35.261909, 17.147812>,  <20.233187, 35.186722, 17.301336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.401642, 35.261909, 17.147812>,  <20.682400, 35.387226, 16.891939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.401642, 35.261909, 17.147812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522800, -0.383351, -0.761395,
		0.483758, -0.868846, 0.105285,
		-0.701896, -0.313288, 0.639682,
		20.191072, 35.167923, 17.339716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.553486, 34.697250, 16.674059>,  <20.682400, 35.387226, 16.891939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.553486, 34.697250, 16.674059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243204, 34.855087, 16.871067>,  <20.057035, 34.949791, 16.989273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243204, 34.855087, 16.871067>,  <20.553486, 34.697250, 16.674059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243204, 34.855087, 16.871067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607308, -0.254482, -0.752606,
		-0.171633, -0.882914, 0.437041,
		-0.775706, 0.394590, 0.492523,
		20.010492, 34.973465, 17.018824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.038036, 34.138378, 16.511887>,  <20.553486, 34.697250, 16.674059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.038036, 34.138378, 16.511887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841125, 34.453129, 16.660744>,  <19.722979, 34.641979, 16.750057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841125, 34.453129, 16.660744>,  <20.038036, 34.138378, 16.511887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841125, 34.453129, 16.660744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710558, -0.116334, -0.693955,
		-0.502765, -0.606045, 0.616391,
		-0.492275, 0.786878, 0.372141,
		19.693443, 34.689194, 16.772387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.351824, 34.024471, 16.388075>,  <20.038036, 34.138378, 16.511887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.351824, 34.024471, 16.388075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335260, 34.420483, 16.441933>,  <19.325321, 34.658089, 16.474247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335260, 34.420483, 16.441933>,  <19.351824, 34.024471, 16.388075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335260, 34.420483, 16.441933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824732, 0.042202, -0.563947,
		-0.564005, -0.134401, 0.814760,
		-0.041410, 0.990028, 0.134647,
		19.322838, 34.717491, 16.482327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.653021, 34.242535, 16.577332>,  <19.351824, 34.024471, 16.388075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.653021, 34.242535, 16.577332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845024, 34.562096, 16.432362>,  <18.960226, 34.753830, 16.345379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845024, 34.562096, 16.432362>,  <18.653021, 34.242535, 16.577332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845024, 34.562096, 16.432362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706547, 0.107188, -0.699501,
		-0.519984, 0.591836, 0.615912,
		0.480008, 0.798900, -0.362424,
		18.989027, 34.801765, 16.323635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074860, 34.743782, 16.345303>,  <18.653021, 34.242535, 16.577332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074860, 34.743782, 16.345303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.380428, 34.918320, 16.155132>,  <18.563770, 35.023041, 16.041031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.380428, 34.918320, 16.155132>,  <18.074860, 34.743782, 16.345303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380428, 34.918320, 16.155132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605353, 0.229346, -0.762200,
		-0.223545, 0.870060, 0.439345,
		0.763921, 0.436344, -0.475424,
		18.609604, 35.049225, 16.012505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867813, 35.440048, 16.121639>,  <18.074860, 34.743782, 16.345303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867813, 35.440048, 16.121639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148661, 35.278187, 15.887277>,  <18.317169, 35.181072, 15.746658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148661, 35.278187, 15.887277>,  <17.867813, 35.440048, 16.121639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148661, 35.278187, 15.887277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584475, 0.142482, -0.798804,
		0.406717, 0.903304, -0.136468,
		0.702119, -0.404650, -0.585908,
		18.359297, 35.156792, 15.711504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880810, 35.803810, 15.482003>,  <17.867813, 35.440048, 16.121639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880810, 35.803810, 15.482003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.051594, 35.456013, 15.382653>,  <18.154064, 35.247334, 15.323044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.051594, 35.456013, 15.382653>,  <17.880810, 35.803810, 15.482003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051594, 35.456013, 15.382653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401354, 0.063917, -0.913690,
		0.810322, 0.489793, -0.321684,
		0.426958, -0.869492, -0.248374,
		18.179682, 35.195164, 15.308141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002005, 35.989391, 14.766890>,  <17.880810, 35.803810, 15.482003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002005, 35.989391, 14.766890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.037386, 35.591877, 14.793933>,  <18.058615, 35.353371, 14.810159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.037386, 35.591877, 14.793933>,  <18.002005, 35.989391, 14.766890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.037386, 35.591877, 14.793933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301522, -0.091403, -0.949068,
		0.949347, 0.063563, -0.307733,
		0.088454, -0.993783, 0.067607,
		18.063923, 35.293743, 14.814215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181105, 35.800564, 13.970308>,  <18.002005, 35.989391, 14.766890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181105, 35.800564, 13.970308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059858, 35.479668, 14.176036>,  <17.987110, 35.287128, 14.299473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059858, 35.479668, 14.176036>,  <18.181105, 35.800564, 13.970308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059858, 35.479668, 14.176036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518967, -0.313691, -0.795155,
		0.799246, -0.507938, -0.321254,
		-0.303115, -0.802245, 0.514319,
		17.968924, 35.238995, 14.330332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.259674, 35.202789, 13.559790>,  <18.181105, 35.800564, 13.970308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.259674, 35.202789, 13.559790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969387, 35.118652, 13.821809>,  <17.795214, 35.068169, 13.979020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969387, 35.118652, 13.821809>,  <18.259674, 35.202789, 13.559790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.969387, 35.118652, 13.821809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623742, -0.200598, -0.755451,
		0.290306, -0.956826, 0.014378,
		-0.725720, -0.210344, 0.655047,
		17.751671, 35.055550, 14.018323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915960, 34.662376, 13.294428>,  <18.259674, 35.202789, 13.559790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915960, 34.662376, 13.294428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662682, 34.794682, 13.574330>,  <17.510715, 34.874065, 13.742271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662682, 34.794682, 13.574330>,  <17.915960, 34.662376, 13.294428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662682, 34.794682, 13.574330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761541, -0.104735, -0.639598,
		-0.138269, -0.937883, 0.318210,
		-0.633196, 0.330766, 0.699755,
		17.472723, 34.893909, 13.784257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.444544, 34.121513, 13.367102>,  <17.915960, 34.662376, 13.294428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.444544, 34.121513, 13.367102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.291969, 34.479862, 13.458247>,  <17.200424, 34.694870, 13.512935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.291969, 34.479862, 13.458247>,  <17.444544, 34.121513, 13.367102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291969, 34.479862, 13.458247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654699, -0.087792, -0.750774,
		-0.652592, -0.435554, 0.620013,
		-0.381435, 0.895871, 0.227865,
		17.177538, 34.748623, 13.526607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711937, 34.077930, 13.146430>,  <17.444544, 34.121513, 13.367102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711937, 34.077930, 13.146430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.826078, 34.459621, 13.182248>,  <16.894564, 34.688637, 13.203739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.826078, 34.459621, 13.182248>,  <16.711937, 34.077930, 13.146430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826078, 34.459621, 13.182248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591998, 0.248962, -0.766522,
		-0.753732, 0.165719, 0.635944,
		0.285354, 0.954230, 0.089545,
		16.911684, 34.745892, 13.209111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109201, 34.538769, 13.243394>,  <16.711937, 34.077930, 13.146430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109201, 34.538769, 13.243394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.423317, 34.742668, 13.102836>,  <16.611786, 34.865005, 13.018500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.423317, 34.742668, 13.102836>,  <16.109201, 34.538769, 13.243394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.423317, 34.742668, 13.102836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591169, 0.448715, -0.670205,
		-0.183958, 0.734039, 0.653717,
		0.785289, 0.509746, -0.351396,
		16.658903, 34.895592, 12.997416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964391, 35.313499, 13.250236>,  <16.109201, 34.538769, 13.243394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964391, 35.313499, 13.250236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263418, 35.231499, 12.997533>,  <16.442835, 35.182301, 12.845911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263418, 35.231499, 12.997533>,  <15.964391, 35.313499, 13.250236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263418, 35.231499, 12.997533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395908, 0.626187, -0.671674,
		0.533290, 0.752240, 0.386958,
		0.747568, -0.204997, -0.631758,
		16.487688, 35.169998, 12.808005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339558, 35.891510, 13.028308>,  <15.964391, 35.313499, 13.250236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339558, 35.891510, 13.028308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327757, 35.618290, 12.736400>,  <16.320677, 35.454357, 12.561255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327757, 35.618290, 12.736400>,  <16.339558, 35.891510, 13.028308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327757, 35.618290, 12.736400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404711, 0.675732, -0.616113,
		0.913969, 0.277169, -0.296376,
		-0.029503, -0.683054, -0.729772,
		16.318907, 35.413372, 12.517468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.653954, 36.189625, 12.324754>,  <16.339558, 35.891510, 13.028308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.653954, 36.189625, 12.324754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392393, 35.894260, 12.258830>,  <16.235456, 35.717041, 12.219275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392393, 35.894260, 12.258830>,  <16.653954, 36.189625, 12.324754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392393, 35.894260, 12.258830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416333, 0.533078, -0.736543,
		0.631727, -0.413011, -0.656005,
		-0.653902, -0.738411, -0.164810,
		16.196222, 35.672737, 12.209387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920707, 36.524879, 12.340344>,  <16.653954, 36.189625, 12.324754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920707, 36.524879, 12.340344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.601373, 36.356506, 12.512610>,  <15.409772, 36.255482, 12.615971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.601373, 36.356506, 12.512610>,  <15.920707, 36.524879, 12.340344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.601373, 36.356506, 12.512610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338244, 0.278255, 0.898980,
		-0.498249, 0.863358, -0.079762,
		-0.798336, -0.420936, 0.430666,
		15.361872, 36.230225, 12.641810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622286, 37.122208, 12.778850>,  <15.920707, 36.524879, 12.340344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622286, 37.122208, 12.778850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577685, 36.740826, 12.890914>,  <15.550925, 36.511997, 12.958153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577685, 36.740826, 12.890914>,  <15.622286, 37.122208, 12.778850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577685, 36.740826, 12.890914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455753, 0.201461, 0.867008,
		-0.883095, 0.224356, 0.412077,
		-0.111501, -0.953456, 0.280160,
		15.544235, 36.454788, 12.974962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.229170, 37.115784, 13.359580>,  <15.622286, 37.122208, 12.778850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.229170, 37.115784, 13.359580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.453559, 36.785133, 13.377437>,  <15.588192, 36.586742, 13.388150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.453559, 36.785133, 13.377437>,  <15.229170, 37.115784, 13.359580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.453559, 36.785133, 13.377437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315562, 0.263378, 0.911621,
		-0.765331, -0.497306, 0.408601,
		0.560972, -0.826631, 0.044641,
		15.621850, 36.537144, 13.390829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998465, 36.750767, 13.970454>,  <15.229170, 37.115784, 13.359580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998465, 36.750767, 13.970454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374806, 36.689648, 13.849494>,  <15.600612, 36.652977, 13.776918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374806, 36.689648, 13.849494>,  <14.998465, 36.750767, 13.970454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374806, 36.689648, 13.849494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327085, 0.176857, 0.928298,
		-0.088358, -0.972304, 0.216374,
		0.940855, -0.152796, -0.302399,
		15.657063, 36.643810, 13.758774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301244, 36.264503, 14.464952>,  <14.998465, 36.750767, 13.970454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301244, 36.264503, 14.464952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.593250, 36.475140, 14.290696>,  <15.768454, 36.601521, 14.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.593250, 36.475140, 14.290696>,  <15.301244, 36.264503, 14.464952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.593250, 36.475140, 14.290696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540421, -0.054581, 0.839622,
		0.418356, -0.848367, -0.324423,
		0.730016, 0.526586, -0.435642,
		15.812255, 36.633114, 14.160004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876144, 36.048382, 14.742442>,  <15.301244, 36.264503, 14.464952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876144, 36.048382, 14.742442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.018599, 36.391808, 14.594909>,  <16.104071, 36.597862, 14.506389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.018599, 36.391808, 14.594909>,  <15.876144, 36.048382, 14.742442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.018599, 36.391808, 14.594909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626490, 0.073476, 0.775959,
		0.693310, -0.507416, -0.511713,
		0.356135, 0.858563, -0.368832,
		16.125439, 36.649376, 14.484259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577362, 36.010681, 14.790657>,  <15.876144, 36.048382, 14.742442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577362, 36.010681, 14.790657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494045, 36.401672, 14.777146>,  <16.444056, 36.636269, 14.769040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494045, 36.401672, 14.777146>,  <16.577362, 36.010681, 14.790657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494045, 36.401672, 14.777146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650334, 0.164210, 0.741688,
		0.730533, 0.132523, -0.669894,
		-0.208294, 0.977483, -0.033776,
		16.431557, 36.694916, 14.767014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250175, 36.334679, 14.786306>,  <16.577362, 36.010681, 14.790657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250175, 36.334679, 14.786306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000153, 36.635468, 14.870057>,  <16.850140, 36.815941, 14.920307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000153, 36.635468, 14.870057>,  <17.250175, 36.334679, 14.786306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000153, 36.635468, 14.870057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643061, 0.344021, 0.684195,
		0.442468, 0.562302, -0.698598,
		-0.625056, 0.751975, 0.209376,
		16.812635, 36.861061, 14.932870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662020, 36.942421, 14.841794>,  <17.250175, 36.334679, 14.786306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662020, 36.942421, 14.841794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.322643, 37.019176, 15.039105>,  <17.119017, 37.065231, 15.157493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.322643, 37.019176, 15.039105>,  <17.662020, 36.942421, 14.841794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322643, 37.019176, 15.039105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529270, 0.299749, 0.793740,
		0.004453, 0.934520, -0.355883,
		-0.848442, 0.191893, 0.493279,
		17.068111, 37.076744, 15.187089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774078, 37.617180, 15.074882>,  <17.662020, 36.942421, 14.841794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.774078, 37.617180, 15.074882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518152, 37.406689, 15.298924>,  <17.364597, 37.280392, 15.433351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518152, 37.406689, 15.298924>,  <17.774078, 37.617180, 15.074882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518152, 37.406689, 15.298924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558117, 0.182880, 0.809358,
		-0.528342, 0.830443, 0.176689,
		-0.639813, -0.526231, 0.560107,
		17.326208, 37.248821, 15.466956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.606838, 38.130444, 15.649782>,  <17.774078, 37.617180, 15.074882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.606838, 38.130444, 15.649782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.483126, 37.776276, 15.788568>,  <17.408897, 37.563774, 15.871839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.483126, 37.776276, 15.788568>,  <17.606838, 38.130444, 15.649782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483126, 37.776276, 15.788568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439599, 0.190416, 0.877778,
		-0.843265, 0.424007, 0.330335,
		-0.309283, -0.885415, 0.346964,
		17.390341, 37.510651, 15.892656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414440, 38.330540, 16.288506>,  <17.606838, 38.130444, 15.649782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414440, 38.330540, 16.288506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.453255, 37.933643, 16.319576>,  <17.476543, 37.695503, 16.338219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.453255, 37.933643, 16.319576>,  <17.414440, 38.330540, 16.288506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453255, 37.933643, 16.319576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417988, 0.111458, 0.901590,
		-0.903256, -0.055017, 0.425562,
		0.097035, -0.992245, 0.077679,
		17.482365, 37.635971, 16.342880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118910, 38.072449, 16.949869>,  <17.414440, 38.330540, 16.288506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118910, 38.072449, 16.949869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400028, 37.809338, 16.841499>,  <17.568699, 37.651470, 16.776478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400028, 37.809338, 16.841499>,  <17.118910, 38.072449, 16.949869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400028, 37.809338, 16.841499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391923, 0.040178, 0.919120,
		-0.593695, -0.752137, 0.286037,
		0.702796, -0.657781, -0.270927,
		17.610867, 37.612003, 16.760221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123121, 37.814888, 17.557550>,  <17.118910, 38.072449, 16.949869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123121, 37.814888, 17.557550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439878, 37.655094, 17.372807>,  <17.629932, 37.559216, 17.261959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439878, 37.655094, 17.372807>,  <17.123121, 37.814888, 17.557550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439878, 37.655094, 17.372807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515978, 0.033205, 0.855958,
		-0.326609, -0.916137, 0.232421,
		0.791892, -0.399488, -0.461862,
		17.677446, 37.535248, 17.234247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355679, 37.255337, 18.000711>,  <17.123121, 37.814888, 17.557550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355679, 37.255337, 18.000711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.669983, 37.351372, 17.772697>,  <17.858564, 37.408993, 17.635889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.669983, 37.351372, 17.772697>,  <17.355679, 37.255337, 18.000711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669983, 37.351372, 17.772697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609009, -0.139203, 0.780853,
		0.108125, -0.960718, -0.255597,
		0.785759, 0.240091, -0.570034,
		17.905710, 37.423397, 17.601686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737036, 36.626907, 17.871662>,  <17.355679, 37.255337, 18.000711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737036, 36.626907, 17.871662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975109, 36.947365, 17.846603>,  <18.117952, 37.139641, 17.831568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975109, 36.947365, 17.846603>,  <17.737036, 36.626907, 17.871662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975109, 36.947365, 17.846603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462151, -0.277479, 0.842272,
		0.657398, -0.530258, -0.535401,
		0.595184, 0.801144, -0.062645,
		18.153664, 37.187710, 17.827810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285416, 36.456219, 18.226011>,  <17.737036, 36.626907, 17.871662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285416, 36.456219, 18.226011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.326336, 36.853336, 18.201031>,  <18.350887, 37.091606, 18.186043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.326336, 36.853336, 18.201031>,  <18.285416, 36.456219, 18.226011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.326336, 36.853336, 18.201031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332985, 0.024983, 0.942601,
		0.937366, -0.117225, -0.328028,
		0.102301, 0.992791, -0.062452,
		18.357027, 37.151173, 18.182295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967209, 36.448349, 18.266731>,  <18.285416, 36.456219, 18.226011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967209, 36.448349, 18.266731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.816521, 36.802170, 18.376743>,  <18.726109, 37.014462, 18.442751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.816521, 36.802170, 18.376743>,  <18.967209, 36.448349, 18.266731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.816521, 36.802170, 18.376743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413650, -0.105021, 0.904359,
		0.828840, 0.454458, -0.326333,
		-0.376721, 0.884556, 0.275032,
		18.703505, 37.067535, 18.459253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589867, 36.773354, 18.509842>,  <18.967209, 36.448349, 18.266731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589867, 36.773354, 18.509842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284632, 36.975239, 18.671314>,  <19.101490, 37.096371, 18.768198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284632, 36.975239, 18.671314>,  <19.589867, 36.773354, 18.509842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.284632, 36.975239, 18.671314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487854, 0.040147, 0.872002,
		0.423907, 0.862351, -0.276863,
		-0.763087, 0.504717, 0.403683,
		19.055706, 37.126656, 18.792419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.806080, 37.294178, 18.897589>,  <19.589867, 36.773354, 18.509842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.806080, 37.294178, 18.897589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445141, 37.256878, 19.065910>,  <19.228579, 37.234497, 19.166904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445141, 37.256878, 19.065910>,  <19.806080, 37.294178, 18.897589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.445141, 37.256878, 19.065910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424350, -0.021197, 0.905250,
		-0.075496, 0.995417, 0.058698,
		-0.902345, -0.093251, 0.420805,
		19.174437, 37.228901, 19.192152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.896044, 37.699577, 19.444460>,  <19.806080, 37.294178, 18.897589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.896044, 37.699577, 19.444460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.573580, 37.482872, 19.539623>,  <19.380102, 37.352848, 19.596722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.573580, 37.482872, 19.539623>,  <19.896044, 37.699577, 19.444460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.573580, 37.482872, 19.539623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213685, 0.108375, 0.970873,
		-0.551765, 0.833516, 0.028399,
		-0.806160, -0.541761, 0.237908,
		19.331732, 37.320343, 19.610996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.559544, 38.124607, 19.898918>,  <19.896044, 37.699577, 19.444460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.559544, 38.124607, 19.898918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.435947, 37.751163, 19.971478>,  <19.361790, 37.527100, 20.015013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.435947, 37.751163, 19.971478>,  <19.559544, 38.124607, 19.898918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.435947, 37.751163, 19.971478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218619, 0.115900, 0.968903,
		-0.925598, 0.339037, 0.168292,
		-0.308989, -0.933606, 0.181397,
		19.343250, 37.471081, 20.025896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092621, 38.168690, 20.579668>,  <19.559544, 38.124607, 19.898918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092621, 38.168690, 20.579668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156574, 37.774685, 20.553783>,  <19.194946, 37.538280, 20.538254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156574, 37.774685, 20.553783>,  <19.092621, 38.168690, 20.579668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156574, 37.774685, 20.553783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088112, -0.051051, 0.994801,
		-0.983195, -0.164755, 0.078629,
		0.159884, -0.985013, -0.064710,
		19.204540, 37.479179, 20.534370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708076, 37.892715, 21.119287>,  <19.092621, 38.168690, 20.579668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708076, 37.892715, 21.119287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960516, 37.594666, 21.033024>,  <19.111979, 37.415836, 20.981266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960516, 37.594666, 21.033024>,  <18.708076, 37.892715, 21.119287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960516, 37.594666, 21.033024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366278, 0.041174, 0.929594,
		-0.683782, -0.665655, 0.298907,
		0.631096, -0.745122, -0.215661,
		19.149845, 37.371128, 20.968325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.713011, 37.317890, 21.615189>,  <18.708076, 37.892715, 21.119287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.713011, 37.317890, 21.615189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.069687, 37.308163, 21.434391>,  <19.283693, 37.302326, 21.325912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.069687, 37.308163, 21.434391>,  <18.713011, 37.317890, 21.615189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.069687, 37.308163, 21.434391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446796, -0.112760, 0.887501,
		-0.072542, -0.993325, -0.089686,
		0.891690, -0.024310, -0.451993,
		19.337194, 37.300869, 21.298794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087969, 36.669746, 21.856569>,  <18.713011, 37.317890, 21.615189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087969, 36.669746, 21.856569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376623, 36.937939, 21.787647>,  <19.549816, 37.098854, 21.746294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376623, 36.937939, 21.787647>,  <19.087969, 36.669746, 21.856569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376623, 36.937939, 21.787647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382530, -0.178756, 0.906486,
		0.576985, -0.720067, -0.385478,
		0.721637, 0.670485, -0.172307,
		19.593115, 37.139084, 21.735954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009809, 36.710857, 22.666138>,  <19.087969, 36.669746, 21.856569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009809, 36.710857, 22.666138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.973345, 37.072086, 22.834019>,  <18.951466, 37.288822, 22.934748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.973345, 37.072086, 22.834019>,  <19.009809, 36.710857, 22.666138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973345, 37.072086, 22.834019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994146, -0.057988, -0.091163,
		-0.057988, -0.425558, 0.903071,
		0.091163, -0.903071, -0.419704,
		18.945995, 37.343006, 22.959930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554127, 36.703465, 23.166584>,  <19.009809, 36.710857, 22.666138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554127, 36.703465, 23.166584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.522020, 37.089634, 23.067375>,  <18.502756, 37.321335, 23.007849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.522020, 37.089634, 23.067375>,  <18.554127, 36.703465, 23.166584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.522020, 37.089634, 23.067375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995059, -0.092194, -0.036845,
		-0.058437, 0.243840, 0.968053,
		-0.080264, 0.965424, -0.248022,
		18.497942, 37.379261, 22.992968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076214, 37.145638, 23.604361>,  <18.554127, 36.703465, 23.166584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076214, 37.145638, 23.604361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.089727, 37.263809, 23.222454>,  <18.097836, 37.334713, 22.993311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.089727, 37.263809, 23.222454>,  <18.076214, 37.145638, 23.604361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089727, 37.263809, 23.222454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932723, -0.333840, -0.136303,
		-0.359008, 0.895138, 0.264276,
		0.033784, 0.295430, -0.954767,
		18.099863, 37.352440, 22.936024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.531839, 37.574230, 23.418045>,  <18.076214, 37.145638, 23.604361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.531839, 37.574230, 23.418045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.632372, 37.400196, 23.072205>,  <17.692692, 37.295776, 22.864700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.632372, 37.400196, 23.072205>,  <17.531839, 37.574230, 23.418045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632372, 37.400196, 23.072205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879274, -0.476047, -0.016040,
		-0.404611, 0.764251, -0.502206,
		0.251332, -0.435087, -0.864599,
		17.707771, 37.269669, 22.812824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.000896, 27.841343, 17.420578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.239857, 27.815403, 17.740303>,  <32.383232, 27.799839, 17.932138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.239857, 27.815403, 17.740303>,  <32.000896, 27.841343, 17.420578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239857, 27.815403, 17.740303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005010, 0.996404, 0.084582,
		-0.801924, -0.054535, 0.594932,
		0.597405, -0.064848, 0.799313,
		32.419079, 27.795948, 17.980097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731726, 28.205353, 17.933657>,  <32.000896, 27.841343, 17.420578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731726, 28.205353, 17.933657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.114578, 28.199623, 18.049374>,  <32.344292, 28.196184, 18.118803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.114578, 28.199623, 18.049374>,  <31.731726, 28.205353, 17.933657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114578, 28.199623, 18.049374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077224, 0.950002, 0.302545,
		-0.279163, -0.311916, 0.908172,
		0.957133, -0.014327, 0.289293,
		32.401718, 28.195326, 18.136162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639153, 28.305565, 18.618422>,  <31.731726, 28.205353, 17.933657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639153, 28.305565, 18.618422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.010105, 28.413433, 18.514698>,  <32.232677, 28.478153, 18.452463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.010105, 28.413433, 18.514698>,  <31.639153, 28.305565, 18.618422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010105, 28.413433, 18.514698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206325, 0.946850, 0.246787,
		0.312076, -0.175364, 0.933732,
		0.927382, 0.269669, -0.259308,
		32.288319, 28.494333, 18.436905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974613, 28.633615, 19.182434>,  <31.639153, 28.305565, 18.618422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974613, 28.633615, 19.182434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.146606, 28.760223, 18.844219>,  <32.249802, 28.836187, 18.641291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.146606, 28.760223, 18.844219>,  <31.974613, 28.633615, 19.182434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146606, 28.760223, 18.844219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125227, 0.948388, 0.291339,
		0.894110, -0.019387, 0.447427,
		0.429983, 0.316519, -0.845536,
		32.275600, 28.855179, 18.590559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006222, 29.276964, 19.330557>,  <31.974613, 28.633615, 19.182434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006222, 29.276964, 19.330557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.161953, 29.318207, 18.964432>,  <32.255390, 29.342953, 18.744757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.161953, 29.318207, 18.964432>,  <32.006222, 29.276964, 19.330557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161953, 29.318207, 18.964432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087382, 0.993368, 0.074733,
		0.916947, 0.050886, 0.395751,
		0.389324, 0.103108, -0.915312,
		32.278751, 29.349138, 18.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669674, 29.675606, 19.284479>,  <32.006222, 29.276964, 19.330557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669674, 29.675606, 19.284479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.467052, 29.695110, 18.940147>,  <32.345478, 29.706814, 18.733549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.467052, 29.695110, 18.940147>,  <32.669674, 29.675606, 19.284479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467052, 29.695110, 18.940147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151850, 0.977748, 0.144740,
		0.848732, 0.204036, -0.487878,
		-0.506554, 0.048761, -0.860829,
		32.315086, 29.709738, 18.681898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981628, 30.320478, 18.927835>,  <32.669674, 29.675606, 19.284479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981628, 30.320478, 18.927835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630634, 30.218445, 18.765377>,  <32.420036, 30.157225, 18.667902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630634, 30.218445, 18.765377>,  <32.981628, 30.320478, 18.927835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630634, 30.218445, 18.765377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287326, 0.957638, 0.019317,
		0.384012, 0.133646, -0.913604,
		-0.877484, -0.255084, -0.406145,
		32.367390, 30.141920, 18.643534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963318, 30.831478, 18.353624>,  <32.981628, 30.320478, 18.927835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963318, 30.831478, 18.353624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595413, 30.684330, 18.408325>,  <32.374668, 30.596041, 18.441147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595413, 30.684330, 18.408325>,  <32.963318, 30.831478, 18.353624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595413, 30.684330, 18.408325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362654, 0.929846, 0.062198,
		-0.150041, 0.007613, -0.988651,
		-0.919766, -0.367870, 0.136754,
		32.319485, 30.573969, 18.449352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598587, 31.330143, 17.948284>,  <32.963318, 30.831478, 18.353624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598587, 31.330143, 17.948284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.325241, 31.141098, 18.170868>,  <32.161232, 31.027670, 18.304419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.325241, 31.141098, 18.170868>,  <32.598587, 31.330143, 17.948284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325241, 31.141098, 18.170868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547800, 0.835785, 0.037119,
		-0.482623, -0.279463, -0.830046,
		-0.683366, -0.472614, 0.556459,
		32.120232, 30.999313, 18.337805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991985, 31.584894, 17.668024>,  <32.598587, 31.330143, 17.948284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991985, 31.584894, 17.668024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.885237, 31.438217, 18.024521>,  <31.821188, 31.350210, 18.238419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.885237, 31.438217, 18.024521>,  <31.991985, 31.584894, 17.668024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885237, 31.438217, 18.024521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598835, 0.787679, 0.144769,
		-0.755100, -0.495074, -0.429798,
		-0.266871, -0.366693, 0.891244,
		31.805176, 31.328209, 18.291895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203880, 31.517218, 17.681257>,  <31.991985, 31.584894, 17.668024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203880, 31.517218, 17.681257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.362686, 31.542805, 18.047489>,  <31.457970, 31.558157, 18.267229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.362686, 31.542805, 18.047489>,  <31.203880, 31.517218, 17.681257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362686, 31.542805, 18.047489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675194, 0.696066, 0.244144,
		-0.621687, -0.715123, 0.319538,
		0.397013, 0.063969, 0.915581,
		31.481791, 31.561995, 18.322163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628546, 31.467234, 18.130653>,  <31.203880, 31.517218, 17.681257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628546, 31.467234, 18.130653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.915121, 31.624893, 18.360909>,  <31.087067, 31.719488, 18.499062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.915121, 31.624893, 18.360909>,  <30.628546, 31.467234, 18.130653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915121, 31.624893, 18.360909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639385, 0.701062, 0.315751,
		-0.279106, -0.594272, 0.754281,
		0.716440, 0.394148, 0.575640,
		31.130053, 31.743137, 18.533600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339342, 31.622660, 18.809124>,  <30.628546, 31.467234, 18.130653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339342, 31.622660, 18.809124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.653725, 31.866833, 18.769844>,  <30.842354, 32.013336, 18.746277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.653725, 31.866833, 18.769844>,  <30.339342, 31.622660, 18.809124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653725, 31.866833, 18.769844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578628, 0.782175, 0.231064,
		0.217858, -0.124786, 0.967970,
		0.785956, 0.610434, -0.098199,
		30.889511, 32.049965, 18.740385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403950, 31.955643, 19.448011>,  <30.339342, 31.622660, 18.809124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403950, 31.955643, 19.448011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.583961, 32.200424, 19.187862>,  <30.691969, 32.347294, 19.031773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.583961, 32.200424, 19.187862>,  <30.403950, 31.955643, 19.448011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583961, 32.200424, 19.187862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522205, 0.771127, 0.364233,
		0.724411, 0.175709, 0.666599,
		0.450033, 0.611956, -0.650369,
		30.718971, 32.384010, 18.992752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620829, 32.528389, 19.881788>,  <30.403950, 31.955643, 19.448011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620829, 32.528389, 19.881788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.638527, 32.656208, 19.503174>,  <30.649145, 32.732899, 19.276005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.638527, 32.656208, 19.503174>,  <30.620829, 32.528389, 19.881788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638527, 32.656208, 19.503174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536325, 0.806953, 0.247352,
		0.842851, 0.496707, 0.207085,
		0.044246, 0.319546, -0.946537,
		30.651800, 32.752071, 19.219213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842621, 33.279751, 19.874615>,  <30.620829, 32.528389, 19.881788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842621, 33.279751, 19.874615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.667818, 33.208519, 19.521954>,  <30.562937, 33.165779, 19.310356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.667818, 33.208519, 19.521954>,  <30.842621, 33.279751, 19.874615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667818, 33.208519, 19.521954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629672, 0.760521, 0.158493,
		0.642293, 0.624416, -0.444484,
		-0.437005, -0.178080, -0.881655,
		30.536716, 33.155094, 19.257458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770071, 33.945965, 19.664600>,  <30.842621, 33.279751, 19.874615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770071, 33.945965, 19.664600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.516569, 33.748135, 19.426693>,  <30.364468, 33.629436, 19.283949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.516569, 33.748135, 19.426693>,  <30.770071, 33.945965, 19.664600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516569, 33.748135, 19.426693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670358, 0.734816, 0.103272,
		0.385969, 0.464157, -0.797236,
		-0.633756, -0.494574, -0.594768,
		30.326443, 33.599762, 19.248262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667532, 34.423923, 19.129049>,  <30.770071, 33.945965, 19.664600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667532, 34.423923, 19.129049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.373205, 34.153912, 19.150627>,  <30.196609, 33.991905, 19.163574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.373205, 34.153912, 19.150627>,  <30.667532, 34.423923, 19.129049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373205, 34.153912, 19.150627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671222, 0.737569, 0.073842,
		-0.089634, 0.018125, -0.995810,
		-0.735817, -0.675029, 0.053945,
		30.152460, 33.951405, 19.166811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134264, 34.743351, 18.823166>,  <30.667532, 34.423923, 19.129049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134264, 34.743351, 18.823166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.946058, 34.443268, 19.008987>,  <29.833136, 34.263218, 19.120481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.946058, 34.443268, 19.008987>,  <30.134264, 34.743351, 18.823166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946058, 34.443268, 19.008987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679723, 0.643858, 0.351317,
		-0.562667, -0.150469, -0.812874,
		-0.470513, -0.750204, 0.464555,
		29.804905, 34.218208, 19.148354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505207, 34.622253, 18.446430>,  <30.134264, 34.743351, 18.823166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505207, 34.622253, 18.446430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.482521, 34.502628, 18.827450>,  <29.468908, 34.430855, 19.056061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.482521, 34.502628, 18.827450>,  <29.505207, 34.622253, 18.446430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482521, 34.502628, 18.827450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528064, 0.818692, 0.225592,
		-0.847308, -0.490211, -0.204356,
		-0.056717, -0.299059, 0.952548,
		29.465506, 34.412910, 19.113214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804474, 34.794628, 18.624357>,  <29.505207, 34.622253, 18.446430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804474, 34.794628, 18.624357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.005569, 34.738731, 18.965584>,  <29.126226, 34.705193, 19.170321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.005569, 34.738731, 18.965584>,  <28.804474, 34.794628, 18.624357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005569, 34.738731, 18.965584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498620, 0.759253, 0.418226,
		-0.706139, -0.635615, 0.312028,
		0.502739, -0.139743, 0.853069,
		29.156391, 34.696808, 19.221504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383278, 34.722988, 19.102285>,  <28.804474, 34.794628, 18.624357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383278, 34.722988, 19.102285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.715561, 34.852276, 19.283596>,  <28.914930, 34.929848, 19.392382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.715561, 34.852276, 19.283596>,  <28.383278, 34.722988, 19.102285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715561, 34.852276, 19.283596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535192, 0.687837, 0.490356,
		-0.153290, -0.649932, 0.744373,
		0.830705, 0.323216, 0.453277,
		28.964773, 34.949242, 19.419579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045593, 35.067326, 19.647156>,  <28.383278, 34.722988, 19.102285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045593, 35.067326, 19.647156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.386909, 35.275742, 19.639023>,  <28.591700, 35.400791, 19.634144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.386909, 35.275742, 19.639023>,  <28.045593, 35.067326, 19.647156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386909, 35.275742, 19.639023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348938, 0.599553, 0.720263,
		0.387472, -0.607501, 0.693403,
		0.853292, 0.521036, -0.020330,
		28.642897, 35.432053, 19.632923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400370, 34.907051, 20.032192>,  <28.045593, 35.067326, 19.647156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400370, 34.907051, 20.032192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.150673, 34.742477, 19.766548>,  <27.000854, 34.643734, 19.607162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.150673, 34.742477, 19.766548>,  <27.400370, 34.907051, 20.032192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150673, 34.742477, 19.766548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583624, -0.810701, -0.046331,
		-0.519331, -0.416511, 0.746199,
		-0.624243, -0.411438, -0.664108,
		26.963400, 34.619045, 19.567316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188364, 34.191010, 20.134010>,  <27.400370, 34.907051, 20.032192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188364, 34.191010, 20.134010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.126324, 34.243866, 19.742401>,  <27.089100, 34.275581, 19.507437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.126324, 34.243866, 19.742401>,  <27.188364, 34.191010, 20.134010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126324, 34.243866, 19.742401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599527, -0.775068, -0.199592,
		-0.785182, -0.617906, 0.040989,
		-0.155098, 0.132142, -0.979021,
		27.079794, 34.283508, 19.448694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942650, 33.592911, 19.859797>,  <27.188364, 34.191010, 20.134010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942650, 33.592911, 19.859797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.086288, 33.785404, 19.539932>,  <27.172472, 33.900902, 19.348013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.086288, 33.785404, 19.539932>,  <26.942650, 33.592911, 19.859797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086288, 33.785404, 19.539932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468729, -0.833908, -0.291359,
		-0.807057, -0.270198, -0.525025,
		0.359098, 0.481238, -0.799662,
		27.194017, 33.929775, 19.300034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631325, 33.179173, 19.357019>,  <26.942650, 33.592911, 19.859797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631325, 33.179173, 19.357019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.951200, 33.367867, 19.208443>,  <27.143126, 33.481083, 19.119297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.951200, 33.367867, 19.208443>,  <26.631325, 33.179173, 19.357019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951200, 33.367867, 19.208443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378427, -0.876293, -0.298167,
		-0.466146, 0.097878, -0.879277,
		0.799688, 0.471732, -0.371441,
		27.191107, 33.509384, 19.097010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638777, 32.911465, 18.686216>,  <26.631325, 33.179173, 19.357019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638777, 32.911465, 18.686216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.003500, 33.048096, 18.777370>,  <27.222334, 33.130074, 18.832062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.003500, 33.048096, 18.777370>,  <26.638777, 32.911465, 18.686216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003500, 33.048096, 18.777370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403531, -0.848082, -0.343395,
		0.075967, 0.405068, -0.911125,
		0.911807, 0.341581, 0.227884,
		27.277042, 33.150570, 18.845736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064993, 32.716942, 18.114660>,  <26.638777, 32.911465, 18.686216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064993, 32.716942, 18.114660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.370611, 32.805782, 18.356953>,  <27.553982, 32.859085, 18.502327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.370611, 32.805782, 18.356953>,  <27.064993, 32.716942, 18.114660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370611, 32.805782, 18.356953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438118, -0.867810, -0.234431,
		0.473592, 0.444496, -0.760351,
		0.764044, 0.222099, 0.605730,
		27.599825, 32.872414, 18.538671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598215, 32.613373, 17.708336>,  <27.064993, 32.716942, 18.114660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598215, 32.613373, 17.708336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.743212, 32.605503, 18.081047>,  <27.830210, 32.600780, 18.304674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.743212, 32.605503, 18.081047>,  <27.598215, 32.613373, 17.708336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743212, 32.605503, 18.081047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500925, -0.838974, -0.212594,
		0.785921, 0.543816, -0.294266,
		0.362494, -0.019677, 0.931779,
		27.851959, 32.599602, 18.360580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376577, 32.730404, 17.620781>,  <27.598215, 32.613373, 17.708336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376577, 32.730404, 17.620781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.290571, 32.547092, 17.965744>,  <28.238968, 32.437107, 18.172722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.290571, 32.547092, 17.965744>,  <28.376577, 32.730404, 17.620781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290571, 32.547092, 17.965744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629455, -0.740203, -0.236404,
		0.746696, 0.492017, 0.447620,
		-0.215015, -0.458279, 0.862409,
		28.226067, 32.409607, 18.224466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943474, 32.550228, 17.807108>,  <28.376577, 32.730404, 17.620781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943474, 32.550228, 17.807108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.718143, 32.314182, 18.038425>,  <28.582945, 32.172554, 18.177216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.718143, 32.314182, 18.038425>,  <28.943474, 32.550228, 17.807108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718143, 32.314182, 18.038425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664501, -0.739536, -0.107355,
		0.491023, 0.323803, 0.808733,
		-0.563325, -0.590117, 0.578296,
		28.549147, 32.137146, 18.211914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389355, 32.242107, 18.375147>,  <28.943474, 32.550228, 17.807108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389355, 32.242107, 18.375147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.079109, 31.997334, 18.313229>,  <28.892962, 31.850470, 18.276077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.079109, 31.997334, 18.313229>,  <29.389355, 32.242107, 18.375147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079109, 31.997334, 18.313229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611393, -0.789289, 0.056763,
		-0.156912, -0.050613, 0.986315,
		-0.775614, -0.611933, -0.154793,
		28.846424, 31.813753, 18.266790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621590, 31.547909, 18.609039>,  <29.389355, 32.242107, 18.375147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621590, 31.547909, 18.609039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.290190, 31.483658, 18.394455>,  <29.091351, 31.445108, 18.265705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.290190, 31.483658, 18.394455>,  <29.621590, 31.547909, 18.609039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290190, 31.483658, 18.394455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308212, -0.930622, -0.197352,
		-0.467541, -0.328850, 0.820526,
		-0.828499, -0.160626, -0.536459,
		29.041639, 31.435471, 18.233517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417566, 30.843889, 18.780226>,  <29.621590, 31.547909, 18.609039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417566, 30.843889, 18.780226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.238091, 30.919819, 18.430908>,  <29.130405, 30.965376, 18.221317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.238091, 30.919819, 18.430908>,  <29.417566, 30.843889, 18.780226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238091, 30.919819, 18.430908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293959, -0.891458, -0.344805,
		-0.843958, -0.411423, 0.344188,
		-0.448690, 0.189823, -0.873295,
		29.103483, 30.976767, 18.168921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944595, 30.300669, 18.561417>,  <29.417566, 30.843889, 18.780226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944595, 30.300669, 18.561417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.079571, 30.448212, 18.214989>,  <29.160557, 30.536737, 18.007132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.079571, 30.448212, 18.214989>,  <28.944595, 30.300669, 18.561417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079571, 30.448212, 18.214989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219543, -0.925499, -0.308628,
		-0.915389, -0.085997, -0.393279,
		0.337438, 0.368857, -0.866072,
		29.180801, 30.558868, 17.955168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606171, 29.988026, 18.062532>,  <28.944595, 30.300669, 18.561417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606171, 29.988026, 18.062532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.936104, 30.133915, 17.889729>,  <29.134064, 30.221449, 17.786047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.936104, 30.133915, 17.889729>,  <28.606171, 29.988026, 18.062532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936104, 30.133915, 17.889729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192060, -0.899418, -0.392634,
		-0.531759, 0.240885, -0.811916,
		0.824831, 0.364723, -0.432009,
		29.183554, 30.243332, 17.760126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643396, 29.589258, 17.388124>,  <28.606171, 29.988026, 18.062532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643396, 29.589258, 17.388124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.002623, 29.752045, 17.454891>,  <29.218159, 29.849716, 17.494951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.002623, 29.752045, 17.454891>,  <28.643396, 29.589258, 17.388124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002623, 29.752045, 17.454891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429197, -0.893809, -0.129984,
		0.096291, 0.188373, -0.977366,
		0.898064, 0.406966, 0.166915,
		29.272041, 29.874134, 17.504965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050337, 29.428522, 16.853521>,  <28.643396, 29.589258, 17.388124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050337, 29.428522, 16.853521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.326788, 29.519226, 17.128017>,  <29.492659, 29.573648, 17.292715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.326788, 29.519226, 17.128017>,  <29.050337, 29.428522, 16.853521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326788, 29.519226, 17.128017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418452, -0.899716, -0.124133,
		0.589273, 0.372950, -0.716704,
		0.691126, 0.226758, 0.686240,
		29.534126, 29.587254, 17.333889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754719, 29.216141, 16.536467>,  <29.050337, 29.428522, 16.853521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754719, 29.216141, 16.536467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.809130, 29.204319, 16.932571>,  <29.841776, 29.197226, 17.170235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.809130, 29.204319, 16.932571>,  <29.754719, 29.216141, 16.536467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809130, 29.204319, 16.932571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243360, -0.967932, -0.062316,
		0.960350, 0.249467, -0.124471,
		0.136026, -0.029554, 0.990264,
		29.849937, 29.195454, 17.229650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.352127, 28.826935, 16.605536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.181423, 28.863464, 16.965431>,  <30.079000, 28.885382, 17.181370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.181423, 28.863464, 16.965431>,  <30.352127, 28.826935, 16.605536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181423, 28.863464, 16.965431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083055, -0.986726, 0.139545,
		0.900542, 0.134280, 0.413512,
		-0.426762, 0.091322, 0.899741,
		30.053394, 28.890862, 17.235353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811588, 28.577938, 17.047352>,  <30.352127, 28.826935, 16.605536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811588, 28.577938, 17.047352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.478670, 28.563820, 17.268635>,  <30.278919, 28.555349, 17.401405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.478670, 28.563820, 17.268635>,  <30.811588, 28.577938, 17.047352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478670, 28.563820, 17.268635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156750, -0.972226, 0.173799,
		0.531710, 0.231368, 0.814711,
		-0.832294, -0.035296, 0.553209,
		30.228981, 28.553230, 17.434597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974564, 28.248264, 17.622206>,  <30.811588, 28.577938, 17.047352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974564, 28.248264, 17.622206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582113, 28.180256, 17.585358>,  <30.346643, 28.139450, 17.563250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582113, 28.180256, 17.585358>,  <30.974564, 28.248264, 17.622206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582113, 28.180256, 17.585358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172327, -0.984882, -0.017622,
		-0.087730, -0.033164, 0.995592,
		-0.981125, -0.170021, -0.092119,
		30.287775, 28.129250, 17.557722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870331, 27.676319, 18.061028>,  <30.974564, 28.248264, 17.622206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870331, 27.676319, 18.061028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544842, 27.685802, 17.828720>,  <30.349548, 27.691492, 17.689335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544842, 27.685802, 17.828720>,  <30.870331, 27.676319, 18.061028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544842, 27.685802, 17.828720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015636, -0.999699, -0.018905,
		-0.581043, -0.006303, 0.813848,
		-0.813722, 0.023709, -0.580770,
		30.300726, 27.692915, 17.654490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459711, 27.138205, 18.292620>,  <30.870331, 27.676319, 18.061028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459711, 27.138205, 18.292620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.357170, 27.238678, 17.919270>,  <30.295645, 27.298962, 17.695259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.357170, 27.238678, 17.919270>,  <30.459711, 27.138205, 18.292620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357170, 27.238678, 17.919270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116518, -0.966634, -0.228129,
		-0.959533, 0.050272, 0.277072,
		-0.256358, 0.251181, -0.933375,
		30.280264, 27.314032, 17.639257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941114, 26.655493, 18.170584>,  <30.459711, 27.138205, 18.292620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941114, 26.655493, 18.170584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096098, 26.776161, 17.822132>,  <30.189089, 26.848562, 17.613060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096098, 26.776161, 17.822132>,  <29.941114, 26.655493, 18.170584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096098, 26.776161, 17.822132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113545, -0.953365, -0.279646,
		-0.914868, 0.009440, -0.403644,
		0.387460, 0.301671, -0.871131,
		30.212336, 26.866663, 17.560793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656475, 26.223383, 17.699673>,  <29.941114, 26.655493, 18.170584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656475, 26.223383, 17.699673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966862, 26.357777, 17.486134>,  <30.153093, 26.438412, 17.358009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966862, 26.357777, 17.486134>,  <29.656475, 26.223383, 17.699673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966862, 26.357777, 17.486134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129679, -0.913229, -0.386259,
		-0.617302, 0.230495, -0.752204,
		0.775965, 0.335983, -0.533848,
		30.199652, 26.458572, 17.325979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563156, 25.950188, 17.069307>,  <29.656475, 26.223383, 17.699673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563156, 25.950188, 17.069307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954273, 26.033474, 17.078838>,  <30.188944, 26.083445, 17.084557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954273, 26.033474, 17.078838>,  <29.563156, 25.950188, 17.069307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954273, 26.033474, 17.078838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198366, -0.882827, -0.425754,
		-0.067612, 0.421026, -0.904525,
		0.977793, 0.208214, 0.023827,
		30.247612, 26.095938, 17.085987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852451, 25.847637, 16.400547>,  <29.563156, 25.950188, 17.069307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852451, 25.847637, 16.400547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143459, 25.802876, 16.671307>,  <30.318064, 25.776018, 16.833763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143459, 25.802876, 16.671307>,  <29.852451, 25.847637, 16.400547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143459, 25.802876, 16.671307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212420, -0.901393, -0.377319,
		0.652375, 0.418294, -0.632010,
		0.727520, -0.111902, 0.676900,
		30.361715, 25.769304, 16.874376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411638, 25.606405, 15.991660>,  <29.852451, 25.847637, 16.400547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411638, 25.606405, 15.991660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.497173, 25.520031, 16.372742>,  <30.548494, 25.468206, 16.601391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.497173, 25.520031, 16.372742>,  <30.411638, 25.606405, 15.991660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497173, 25.520031, 16.372742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397055, -0.871855, -0.286733,
		0.892536, 0.439591, -0.100699,
		0.213840, -0.215937, 0.952703,
		30.561325, 25.455250, 16.658552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039486, 25.230921, 15.917967>,  <30.411638, 25.606405, 15.991660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039486, 25.230921, 15.917967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.908899, 25.166599, 16.290539>,  <30.830547, 25.128006, 16.514082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.908899, 25.166599, 16.290539>,  <31.039486, 25.230921, 15.917967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908899, 25.166599, 16.290539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366581, -0.929834, -0.032041,
		0.871227, 0.330984, 0.362509,
		-0.326469, -0.160804, 0.931429,
		30.810959, 25.118359, 16.569967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598921, 24.933016, 16.263783>,  <31.039486, 25.230921, 15.917967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598921, 24.933016, 16.263783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264168, 24.810154, 16.445015>,  <31.063316, 24.736437, 16.553755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264168, 24.810154, 16.445015>,  <31.598921, 24.933016, 16.263783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264168, 24.810154, 16.445015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392065, -0.913974, 0.104579,
		0.381981, 0.265157, 0.885315,
		-0.836884, -0.307154, 0.453080,
		31.013102, 24.718008, 16.580938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760851, 24.428007, 16.733871>,  <31.598921, 24.933016, 16.263783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760851, 24.428007, 16.733871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374290, 24.351555, 16.665131>,  <31.142353, 24.305683, 16.623886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374290, 24.351555, 16.665131>,  <31.760851, 24.428007, 16.733871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374290, 24.351555, 16.665131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188464, -0.981563, 0.031857,
		-0.174774, -0.001602, 0.984607,
		-0.966403, -0.191131, -0.171853,
		31.084370, 24.294216, 16.613575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628382, 23.795998, 17.068085>,  <31.760851, 24.428007, 16.733871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628382, 23.795998, 17.068085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284082, 23.814911, 16.865353>,  <31.077503, 23.826258, 16.743713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284082, 23.814911, 16.865353>,  <31.628382, 23.795998, 17.068085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284082, 23.814911, 16.865353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070505, -0.997154, 0.026716,
		-0.504126, 0.058730, 0.861631,
		-0.860748, 0.047281, -0.506832,
		31.025858, 23.829096, 16.713303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220789, 23.376534, 17.563526>,  <31.628382, 23.795998, 17.068085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220789, 23.376534, 17.563526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037895, 23.395767, 17.208309>,  <30.928158, 23.407307, 16.995178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037895, 23.395767, 17.208309>,  <31.220789, 23.376534, 17.563526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037895, 23.395767, 17.208309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122177, -0.992466, 0.009169,
		-0.880913, 0.112691, 0.459666,
		-0.457236, 0.048083, -0.888044,
		30.900724, 23.410192, 16.941896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614185, 23.003157, 17.687721>,  <31.220789, 23.376534, 17.563526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614185, 23.003157, 17.687721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681541, 23.001087, 17.293438>,  <30.721954, 22.999846, 17.056868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681541, 23.001087, 17.293438>,  <30.614185, 23.003157, 17.687721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681541, 23.001087, 17.293438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155528, -0.987600, -0.021384,
		-0.973373, 0.156906, -0.167108,
		0.168391, -0.005176, -0.985707,
		30.732059, 22.999535, 16.997726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127937, 22.553297, 17.396700>,  <30.614185, 23.003157, 17.687721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127937, 22.553297, 17.396700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418188, 22.548344, 17.121510>,  <30.592339, 22.545372, 16.956394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418188, 22.548344, 17.121510>,  <30.127937, 22.553297, 17.396700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418188, 22.548344, 17.121510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178782, -0.968893, -0.171123,
		-0.664457, 0.247169, -0.705269,
		0.725627, -0.012385, -0.687977,
		30.635876, 22.544628, 16.915117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800964, 22.258406, 16.856985>,  <30.127937, 22.553297, 17.396700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800964, 22.258406, 16.856985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.194565, 22.195660, 16.823196>,  <30.430725, 22.158012, 16.802923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.194565, 22.195660, 16.823196>,  <29.800964, 22.258406, 16.856985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194565, 22.195660, 16.823196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175659, -0.933419, -0.312846,
		-0.029772, 0.322679, -0.946040,
		0.984001, -0.156866, -0.084471,
		30.489765, 22.148600, 16.797855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911152, 21.835796, 16.230309>,  <29.800964, 22.258406, 16.856985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911152, 21.835796, 16.230309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255711, 21.789215, 16.428070>,  <30.462446, 21.761267, 16.546728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255711, 21.789215, 16.428070>,  <29.911152, 21.835796, 16.230309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255711, 21.789215, 16.428070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023550, -0.981474, -0.190144,
		0.507389, 0.152145, -0.848179,
		0.861395, -0.116451, 0.494406,
		30.514130, 21.754280, 16.576391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305878, 21.388725, 15.744097>,  <29.911152, 21.835796, 16.230309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305878, 21.388725, 15.744097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485283, 21.365997, 16.100883>,  <30.592926, 21.352360, 16.314957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485283, 21.365997, 16.100883>,  <30.305878, 21.388725, 15.744097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485283, 21.365997, 16.100883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208313, -0.963847, -0.166148,
		0.869161, 0.260328, -0.420462,
		0.448514, -0.056822, 0.891968,
		30.619837, 21.348951, 16.368473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978336, 21.016787, 15.694775>,  <30.305878, 21.388725, 15.744097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978336, 21.016787, 15.694775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.834476, 20.980976, 16.066288>,  <30.748161, 20.959490, 16.289196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.834476, 20.980976, 16.066288>,  <30.978336, 21.016787, 15.694775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834476, 20.980976, 16.066288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240356, -0.970685, -0.000494,
		0.901599, 0.223060, 0.370625,
		-0.359650, -0.089527, 0.928783,
		30.726582, 20.954119, 16.344923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486036, 20.475208, 15.974899>,  <30.978336, 21.016787, 15.694775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486036, 20.475208, 15.974899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162411, 20.501949, 16.208462>,  <30.968235, 20.517994, 16.348598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162411, 20.501949, 16.208462>,  <31.486036, 20.475208, 15.974899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162411, 20.501949, 16.208462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066703, -0.997535, 0.021784,
		0.583923, -0.021324, 0.811529,
		-0.809064, 0.066852, 0.583906,
		30.919691, 20.522005, 16.383633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719440, 20.194790, 16.592039>,  <31.486036, 20.475208, 15.974899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719440, 20.194790, 16.592039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323051, 20.154575, 16.556568>,  <31.085218, 20.130445, 16.535286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323051, 20.154575, 16.556568>,  <31.719440, 20.194790, 16.592039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323051, 20.154575, 16.556568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094262, -0.992915, 0.072346,
		-0.095321, 0.063335, 0.993430,
		-0.990974, -0.100538, -0.088676,
		31.025759, 20.124414, 16.529964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337326, 19.977806, 17.101545>,  <31.719440, 20.194790, 16.592039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337326, 19.977806, 17.101545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.196270, 19.820549, 16.761879>,  <31.111637, 19.726194, 16.558079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.196270, 19.820549, 16.761879>,  <31.337326, 19.977806, 17.101545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196270, 19.820549, 16.761879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300976, -0.906894, 0.294883,
		-0.886036, -0.151592, 0.438133,
		-0.352638, -0.393145, -0.849166,
		31.090479, 19.702606, 16.507130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878954, 20.304672, 17.561995>,  <31.337326, 19.977806, 17.101545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878954, 20.304672, 17.561995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141647, 20.052662, 17.727776>,  <32.299263, 19.901457, 17.827244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141647, 20.052662, 17.727776>,  <31.878954, 20.304672, 17.561995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141647, 20.052662, 17.727776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635605, 0.758199, 0.145396,
		-0.405839, 0.167941, 0.898382,
		0.656735, -0.630024, 0.414451,
		32.338669, 19.863655, 17.852112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945732, 20.579861, 18.221897>,  <31.878954, 20.304672, 17.561995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945732, 20.579861, 18.221897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.250237, 20.368866, 18.071037>,  <32.432938, 20.242270, 17.980522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.250237, 20.368866, 18.071037>,  <31.945732, 20.579861, 18.221897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250237, 20.368866, 18.071037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560650, 0.827648, -0.025908,
		0.325812, -0.191725, 0.925790,
		0.761261, -0.527485, -0.377148,
		32.478615, 20.210621, 17.957893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528603, 20.746330, 18.652994>,  <31.945732, 20.579861, 18.221897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528603, 20.746330, 18.652994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696762, 20.637997, 18.306602>,  <32.797657, 20.572996, 18.098768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696762, 20.637997, 18.306602>,  <32.528603, 20.746330, 18.652994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696762, 20.637997, 18.306602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598744, 0.799916, 0.040492,
		0.681743, -0.535522, 0.498441,
		0.420395, -0.270833, -0.865978,
		32.822880, 20.556747, 18.046808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278667, 20.809677, 18.795700>,  <32.528603, 20.746330, 18.652994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278667, 20.809677, 18.795700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238430, 20.850998, 18.399879>,  <33.214287, 20.875790, 18.162388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238430, 20.850998, 18.399879>,  <33.278667, 20.809677, 18.795700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238430, 20.850998, 18.399879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523891, 0.851042, 0.035584,
		0.845825, -0.514837, -0.139727,
		-0.100594, 0.103300, -0.989550,
		33.208252, 20.881989, 18.103014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918964, 21.096325, 18.638540>,  <33.278667, 20.809677, 18.795700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918964, 21.096325, 18.638540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709526, 21.188232, 18.310383>,  <33.583862, 21.243378, 18.113487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709526, 21.188232, 18.310383>,  <33.918964, 21.096325, 18.638540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709526, 21.188232, 18.310383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273168, 0.957383, 0.093794,
		0.806983, -0.174995, -0.564051,
		-0.523600, 0.229771, -0.820395,
		33.552444, 21.257164, 18.064264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224377, 21.735939, 18.292732>,  <33.918964, 21.096325, 18.638540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224377, 21.735939, 18.292732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879147, 21.720589, 18.091286>,  <33.672009, 21.711378, 17.970419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879147, 21.720589, 18.091286>,  <34.224377, 21.735939, 18.292732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879147, 21.720589, 18.091286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086572, 0.971114, -0.222359,
		0.497600, -0.235512, -0.834823,
		-0.863076, -0.038374, -0.503615,
		33.620224, 21.709076, 17.940201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280666, 22.159893, 17.681013>,  <34.224377, 21.735939, 18.292732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280666, 22.159893, 17.681013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886753, 22.145782, 17.749077>,  <33.650406, 22.137316, 17.789915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886753, 22.145782, 17.749077>,  <34.280666, 22.159893, 17.681013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886753, 22.145782, 17.749077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081333, 0.958880, -0.271907,
		-0.153572, -0.281609, -0.947160,
		-0.984785, -0.035278, 0.170161,
		33.591316, 22.135199, 17.800125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015110, 22.507942, 17.108627>,  <34.280666, 22.159893, 17.681013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015110, 22.507942, 17.108627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.748093, 22.511230, 17.406437>,  <33.587883, 22.513203, 17.585123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.748093, 22.511230, 17.406437>,  <34.015110, 22.507942, 17.108627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748093, 22.511230, 17.406437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110993, 0.987668, -0.110422,
		-0.736248, -0.156349, -0.658403,
		-0.667547, 0.008220, 0.744522,
		33.547829, 22.513697, 17.629793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546021, 23.053562, 16.979275>,  <34.015110, 22.507942, 17.108627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546021, 23.053562, 16.979275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467602, 22.985245, 17.365517>,  <33.420551, 22.944254, 17.597261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467602, 22.985245, 17.365517>,  <33.546021, 23.053562, 16.979275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467602, 22.985245, 17.365517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022237, 0.985236, 0.169749,
		-0.980342, 0.011807, -0.196953,
		-0.196049, -0.170791, 0.965606,
		33.408787, 22.934008, 17.655199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004406, 23.401356, 17.103683>,  <33.546021, 23.053562, 16.979275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004406, 23.401356, 17.103683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184879, 23.354195, 17.457527>,  <33.293163, 23.325899, 17.669832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184879, 23.354195, 17.457527>,  <33.004406, 23.401356, 17.103683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184879, 23.354195, 17.457527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155051, 0.965803, 0.207806,
		-0.878857, -0.230918, 0.417477,
		0.451187, -0.117901, 0.884607,
		33.320236, 23.318825, 17.722910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540001, 23.457922, 17.495436>,  <33.004406, 23.401356, 17.103683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540001, 23.457922, 17.495436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855103, 23.545609, 17.725704>,  <33.044163, 23.598221, 17.863865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855103, 23.545609, 17.725704>,  <32.540001, 23.457922, 17.495436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855103, 23.545609, 17.725704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365829, 0.918369, 0.150888,
		-0.495601, -0.329458, 0.803640,
		0.787749, 0.219215, 0.575670,
		33.091427, 23.611374, 17.898405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228329, 23.903608, 18.053822>,  <32.540001, 23.457922, 17.495436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228329, 23.903608, 18.053822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.617802, 23.994205, 18.043720>,  <32.851486, 24.048563, 18.037659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.617802, 23.994205, 18.043720>,  <32.228329, 23.903608, 18.053822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617802, 23.994205, 18.043720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224110, 0.971727, 0.074312,
		0.041372, -0.066696, 0.996915,
		0.973685, 0.226493, -0.025255,
		32.909908, 24.062153, 18.036144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250561, 24.497139, 18.503244>,  <32.228329, 23.903608, 18.053822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250561, 24.497139, 18.503244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599789, 24.507393, 18.308479>,  <32.809326, 24.513546, 18.191620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599789, 24.507393, 18.308479>,  <32.250561, 24.497139, 18.503244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599789, 24.507393, 18.308479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013698, 0.999512, 0.028063,
		0.487397, -0.017831, 0.872998,
		0.873073, 0.025637, -0.486915,
		32.861710, 24.515083, 18.162405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685097, 24.906145, 18.928106>,  <32.250561, 24.497139, 18.503244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685097, 24.906145, 18.928106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.789852, 24.915623, 18.542183>,  <32.852707, 24.921309, 18.310629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.789852, 24.915623, 18.542183>,  <32.685097, 24.906145, 18.928106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789852, 24.915623, 18.542183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023858, 0.999552, 0.018071,
		0.964802, 0.018285, 0.262340,
		0.261892, 0.023694, -0.964806,
		32.868420, 24.922731, 18.252741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092609, 25.488218, 18.955509>,  <32.685097, 24.906145, 18.928106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092609, 25.488218, 18.955509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026360, 25.435341, 18.564594>,  <32.986610, 25.403614, 18.330046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026360, 25.435341, 18.564594>,  <33.092609, 25.488218, 18.955509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026360, 25.435341, 18.564594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112845, 0.981926, -0.151946,
		0.979711, -0.135449, -0.147716,
		-0.165627, -0.132194, -0.977288,
		32.976669, 25.395683, 18.271408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581234, 25.889565, 18.686178>,  <33.092609, 25.488218, 18.955509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581234, 25.889565, 18.686178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311119, 25.847954, 18.394104>,  <33.149052, 25.822987, 18.218861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311119, 25.847954, 18.394104>,  <33.581234, 25.889565, 18.686178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311119, 25.847954, 18.394104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014175, 0.991651, -0.128169,
		0.737420, -0.076200, -0.671122,
		-0.675286, -0.104028, -0.730183,
		33.108532, 25.816746, 18.175049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781490, 26.457655, 18.311073>,  <33.581234, 25.889565, 18.686178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781490, 26.457655, 18.311073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414333, 26.361118, 18.185074>,  <33.194038, 26.303196, 18.109474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414333, 26.361118, 18.185074>,  <33.781490, 26.457655, 18.311073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414333, 26.361118, 18.185074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174783, 0.958535, -0.225080,
		0.356260, -0.151543, -0.922016,
		-0.917894, -0.241340, -0.315000,
		33.138966, 26.288717, 18.090574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669846, 26.942011, 17.784374>,  <33.781490, 26.457655, 18.311073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669846, 26.942011, 17.784374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309135, 26.796715, 17.878056>,  <33.092709, 26.709538, 17.934265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309135, 26.796715, 17.878056>,  <33.669846, 26.942011, 17.784374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309135, 26.796715, 17.878056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375745, 0.926674, -0.009533,
		-0.213567, -0.096597, -0.972141,
		-0.901779, -0.363241, 0.234203,
		33.038601, 26.687742, 17.948317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217175, 27.064310, 17.258492>,  <33.669846, 26.942011, 17.784374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217175, 27.064310, 17.258492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030590, 27.026001, 17.610229>,  <32.918640, 27.003016, 17.821272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030590, 27.026001, 17.610229>,  <33.217175, 27.064310, 17.258492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030590, 27.026001, 17.610229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298943, 0.952695, -0.054815,
		-0.832497, -0.288443, -0.473022,
		-0.466457, -0.095773, 0.879344,
		32.890652, 26.997269, 17.874033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591091, 27.463490, 17.133392>,  <33.217175, 27.064310, 17.258492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591091, 27.463490, 17.133392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639351, 27.424122, 17.528515>,  <32.668304, 27.400501, 17.765589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639351, 27.424122, 17.528515>,  <32.591091, 27.463490, 17.133392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639351, 27.424122, 17.528515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229532, 0.965342, 0.124213,
		-0.965795, -0.241719, 0.093875,
		0.120646, -0.098417, 0.987805,
		32.675545, 27.394596, 17.824856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.625444, 35.188602, 14.706414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.887333, 35.075287, 14.426103>,  <17.044466, 35.007298, 14.257915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.887333, 35.075287, 14.426103>,  <16.625444, 35.188602, 14.706414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887333, 35.075287, 14.426103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731128, 0.002075, 0.682237,
		-0.191814, -0.959033, 0.208477,
		0.654721, -0.283286, -0.700778,
		17.083750, 34.990303, 14.215869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908150, 34.601612, 14.989669>,  <16.625444, 35.188602, 14.706414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908150, 34.601612, 14.989669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.155634, 34.745621, 14.710361>,  <17.304125, 34.832027, 14.542775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.155634, 34.745621, 14.710361>,  <16.908150, 34.601612, 14.989669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155634, 34.745621, 14.710361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713833, 0.113558, 0.691047,
		0.328088, -0.926006, -0.186738,
		0.618709, 0.360025, -0.698271,
		17.341246, 34.853626, 14.500879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.547552, 34.225349, 15.101692>,  <16.908150, 34.601612, 14.989669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.547552, 34.225349, 15.101692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.678656, 34.510529, 14.853730>,  <17.757318, 34.681637, 14.704953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.678656, 34.510529, 14.853730>,  <17.547552, 34.225349, 15.101692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678656, 34.510529, 14.853730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862044, 0.042812, 0.505022,
		0.386593, -0.699911, -0.600558,
		0.327759, 0.712946, -0.619905,
		17.776983, 34.724411, 14.667759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240185, 34.053635, 14.794936>,  <17.547552, 34.225349, 15.101692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240185, 34.053635, 14.794936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.177345, 34.448189, 14.814401>,  <18.139643, 34.684921, 14.826079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.177345, 34.448189, 14.814401>,  <18.240185, 34.053635, 14.794936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.177345, 34.448189, 14.814401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798490, 0.097868, 0.594000,
		0.581149, 0.132171, -0.802992,
		-0.157097, 0.986383, 0.048661,
		18.130217, 34.744102, 14.828999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846233, 34.354862, 14.606302>,  <18.240185, 34.053635, 14.794936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846233, 34.354862, 14.606302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.625151, 34.576717, 14.855103>,  <18.492500, 34.709831, 15.004384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.625151, 34.576717, 14.855103>,  <18.846233, 34.354862, 14.606302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.625151, 34.576717, 14.855103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764085, 0.039298, 0.643918,
		0.332699, 0.831162, -0.445513,
		-0.552708, 0.554640, 0.622003,
		18.459339, 34.743111, 15.041704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.416382, 34.670498, 15.004733>,  <18.846233, 34.354862, 14.606302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.416382, 34.670498, 15.004733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.107365, 34.822617, 15.208127>,  <18.921955, 34.913887, 15.330163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.107365, 34.822617, 15.208127>,  <19.416382, 34.670498, 15.004733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107365, 34.822617, 15.208127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612624, 0.235860, 0.754362,
		0.166947, 0.894286, -0.415188,
		-0.772542, 0.380293, 0.508484,
		18.875603, 34.936703, 15.360672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.769674, 35.168255, 15.431291>,  <19.416382, 34.670498, 15.004733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.769674, 35.168255, 15.431291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.410084, 35.134102, 15.603129>,  <19.194330, 35.113609, 15.706233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.410084, 35.134102, 15.603129>,  <19.769674, 35.168255, 15.431291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410084, 35.134102, 15.603129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398123, 0.249596, 0.882723,
		-0.182597, 0.964578, -0.190387,
		-0.898975, -0.085385, 0.429597,
		19.140390, 35.108486, 15.732008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.720499, 35.758904, 15.810025>,  <19.769674, 35.168255, 15.431291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.720499, 35.758904, 15.810025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.480129, 35.481174, 15.968423>,  <19.335907, 35.314537, 16.063461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.480129, 35.481174, 15.968423>,  <19.720499, 35.758904, 15.810025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480129, 35.481174, 15.968423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414312, 0.153103, 0.897165,
		-0.683548, 0.703192, 0.195662,
		-0.600923, -0.694320, 0.395995,
		19.299852, 35.272877, 16.087221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.483585, 35.993027, 16.508379>,  <19.720499, 35.758904, 15.810025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.483585, 35.993027, 16.508379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.390064, 35.604187, 16.515980>,  <19.333952, 35.370884, 16.520540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.390064, 35.604187, 16.515980>,  <19.483585, 35.993027, 16.508379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.390064, 35.604187, 16.515980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376097, -0.072401, 0.923747,
		-0.896597, 0.223122, 0.382531,
		-0.233804, -0.972098, 0.019001,
		19.319923, 35.312557, 16.521681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999540, 35.735100, 17.101137>,  <19.483585, 35.993027, 16.508379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999540, 35.735100, 17.101137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.247843, 35.439423, 16.996635>,  <19.396824, 35.262016, 16.933935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.247843, 35.439423, 16.996635>,  <18.999540, 35.735100, 17.101137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.247843, 35.439423, 16.996635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430342, 0.042720, 0.901654,
		-0.655336, -0.672137, 0.344625,
		0.620758, -0.739193, -0.261253,
		19.434071, 35.217663, 16.918261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077604, 35.309948, 17.753143>,  <18.999540, 35.735100, 17.101137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077604, 35.309948, 17.753143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.365063, 35.214233, 17.491978>,  <19.537537, 35.156803, 17.335279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.365063, 35.214233, 17.491978>,  <19.077604, 35.309948, 17.753143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.365063, 35.214233, 17.491978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662307, -0.050584, 0.747523,
		-0.211898, -0.969631, 0.122129,
		0.718644, -0.239286, -0.652912,
		19.580656, 35.142448, 17.296104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.253923, 34.714645, 18.063839>,  <19.077604, 35.309948, 17.753143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.253923, 34.714645, 18.063839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.559294, 34.844055, 17.840229>,  <19.742516, 34.921703, 17.706062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.559294, 34.844055, 17.840229>,  <19.253923, 34.714645, 18.063839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559294, 34.844055, 17.840229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622961, -0.140241, 0.769579,
		0.170583, -0.935768, -0.308609,
		0.763427, 0.323529, -0.559025,
		19.788322, 34.941113, 17.672522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882555, 34.335678, 18.347490>,  <19.253923, 34.714645, 18.063839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882555, 34.335678, 18.347490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.053768, 34.630749, 18.138638>,  <20.156496, 34.807793, 18.013327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.053768, 34.630749, 18.138638>,  <19.882555, 34.335678, 18.347490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.053768, 34.630749, 18.138638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428849, 0.342763, 0.835824,
		0.795535, -0.581677, -0.169637,
		0.428034, 0.737676, -0.522131,
		20.182178, 34.852051, 17.981998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610027, 34.404156, 18.570776>,  <19.882555, 34.335678, 18.347490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610027, 34.404156, 18.570776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.545134, 34.759087, 18.398113>,  <20.506197, 34.972046, 18.294516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.545134, 34.759087, 18.398113>,  <20.610027, 34.404156, 18.570776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.545134, 34.759087, 18.398113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597651, 0.436446, 0.672554,
		0.785171, -0.148866, -0.601120,
		-0.162236, 0.887330, -0.431655,
		20.496464, 35.025284, 18.268618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.256933, 34.687424, 18.561466>,  <20.610027, 34.404156, 18.570776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.256933, 34.687424, 18.561466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.970167, 34.965237, 18.537289>,  <20.798107, 35.131924, 18.522781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.970167, 34.965237, 18.537289>,  <21.256933, 34.687424, 18.561466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.970167, 34.965237, 18.537289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485159, 0.559293, 0.672170,
		0.500650, 0.452565, -0.737926,
		-0.716917, 0.694533, -0.060445,
		20.755093, 35.173595, 18.519156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.679377, 35.245731, 18.587795>,  <21.256933, 34.687424, 18.561466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.679377, 35.245731, 18.587795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.315195, 35.381817, 18.681877>,  <21.096685, 35.463470, 18.738327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.315195, 35.381817, 18.681877>,  <21.679377, 35.245731, 18.587795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315195, 35.381817, 18.681877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369573, 0.413855, 0.831949,
		0.185703, 0.844379, -0.502532,
		-0.910456, 0.340218, 0.235205,
		21.042059, 35.483883, 18.752439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.762632, 35.980576, 18.748241>,  <21.679377, 35.245731, 18.587795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.762632, 35.980576, 18.748241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.439150, 35.838661, 18.935913>,  <21.245060, 35.753513, 19.048515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.439150, 35.838661, 18.935913>,  <21.762632, 35.980576, 18.748241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.439150, 35.838661, 18.935913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295093, 0.445291, 0.845362,
		-0.508839, 0.822098, -0.255415,
		-0.808704, -0.354782, 0.469177,
		21.196539, 35.732227, 19.076666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.680470, 36.402687, 19.200661>,  <21.762632, 35.980576, 18.748241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.680470, 36.402687, 19.200661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.438885, 36.114258, 19.336475>,  <21.293934, 35.941200, 19.417963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.438885, 36.114258, 19.336475>,  <21.680470, 36.402687, 19.200661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.438885, 36.114258, 19.336475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295645, 0.192930, 0.935613,
		-0.740153, 0.665455, 0.096660,
		-0.603960, -0.721074, 0.339536,
		21.257696, 35.897934, 19.438335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.250761, 36.684383, 19.628290>,  <21.680470, 36.402687, 19.200661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.250761, 36.684383, 19.628290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.285110, 36.304195, 19.747776>,  <21.305719, 36.076084, 19.819468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.285110, 36.304195, 19.747776>,  <21.250761, 36.684383, 19.628290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.285110, 36.304195, 19.747776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128100, 0.307866, 0.942767,
		-0.988036, -0.042694, 0.148193,
		0.085874, -0.950471, 0.298714,
		21.310873, 36.019054, 19.837391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004154, 36.679173, 20.293118>,  <21.250761, 36.684383, 19.628290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004154, 36.679173, 20.293118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.184654, 36.322498, 20.278896>,  <21.292955, 36.108494, 20.270363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.184654, 36.322498, 20.278896>,  <21.004154, 36.679173, 20.293118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184654, 36.322498, 20.278896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262934, 0.094777, 0.960147,
		-0.852782, -0.442617, 0.277224,
		0.451252, -0.891688, -0.035555,
		21.320030, 36.054993, 20.268230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.759642, 36.305882, 20.817152>,  <21.004154, 36.679173, 20.293118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.759642, 36.305882, 20.817152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.115772, 36.152424, 20.719059>,  <21.329451, 36.060349, 20.660204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.115772, 36.152424, 20.719059>,  <20.759642, 36.305882, 20.817152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115772, 36.152424, 20.719059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266914, 0.003406, 0.963714,
		-0.368885, -0.923476, 0.105432,
		0.890326, -0.383641, -0.245232,
		21.382870, 36.037331, 20.645489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.307268, 36.828682, 21.141901>,  <20.759642, 36.305882, 20.817152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.307268, 36.828682, 21.141901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.913664, 36.877941, 21.193375>,  <19.677502, 36.907497, 21.224258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.913664, 36.877941, 21.193375>,  <20.307268, 36.828682, 21.141901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.913664, 36.877941, 21.193375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146771, -0.151289, -0.977533,
		-0.100905, -0.980790, 0.166943,
		-0.984010, 0.123140, 0.128686,
		19.618462, 36.914886, 21.231979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002825, 36.426487, 20.766705>,  <20.307268, 36.828682, 21.141901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002825, 36.426487, 20.766705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.741901, 36.723049, 20.829700>,  <19.585346, 36.900986, 20.867498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.741901, 36.723049, 20.829700>,  <20.002825, 36.426487, 20.766705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741901, 36.723049, 20.829700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207997, 0.024705, -0.977817,
		-0.728854, -0.670597, 0.138095,
		-0.652310, 0.741410, 0.157488,
		19.546207, 36.945473, 20.876947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545439, 36.229034, 20.360727>,  <20.002825, 36.426487, 20.766705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545439, 36.229034, 20.360727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.438692, 36.610229, 20.418125>,  <19.374643, 36.838947, 20.452564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.438692, 36.610229, 20.418125>,  <19.545439, 36.229034, 20.360727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.438692, 36.610229, 20.418125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317810, 0.053541, -0.946642,
		-0.909824, -0.298231, 0.288582,
		-0.266867, 0.952991, 0.143494,
		19.358631, 36.896126, 20.461174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.833881, 36.297905, 20.103891>,  <19.545439, 36.229034, 20.360727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.833881, 36.297905, 20.103891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.994453, 36.664204, 20.097439>,  <19.090797, 36.883984, 20.093567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.994453, 36.664204, 20.097439>,  <18.833881, 36.297905, 20.103891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.994453, 36.664204, 20.097439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561725, 0.232255, -0.794054,
		-0.723406, 0.327819, 0.607633,
		0.401432, 0.915747, -0.016129,
		19.114883, 36.938927, 20.092600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.286392, 36.673111, 20.040947>,  <18.833881, 36.297905, 20.103891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.286392, 36.673111, 20.040947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.604080, 36.876217, 19.907448>,  <18.794693, 36.998081, 19.827349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.604080, 36.876217, 19.907448>,  <18.286392, 36.673111, 20.040947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604080, 36.876217, 19.907448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471001, 0.167440, -0.866096,
		-0.383888, 0.845069, 0.372141,
		0.794222, 0.507763, -0.333750,
		18.842346, 37.028545, 19.807323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976814, 37.199287, 19.649343>,  <18.286392, 36.673111, 20.040947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.976814, 37.199287, 19.649343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.350517, 37.198254, 19.506706>,  <18.574739, 37.197636, 19.421124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.350517, 37.198254, 19.506706>,  <17.976814, 37.199287, 19.649343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350517, 37.198254, 19.506706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350672, 0.174991, -0.920004,
		0.064775, 0.984567, 0.162581,
		0.934255, -0.002581, -0.356595,
		18.630795, 37.197479, 19.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088816, 37.855316, 19.349411>,  <17.976814, 37.199287, 19.649343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088816, 37.855316, 19.349411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.377771, 37.636822, 19.179810>,  <18.551144, 37.505726, 19.078049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.377771, 37.636822, 19.179810>,  <18.088816, 37.855316, 19.349411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377771, 37.636822, 19.179810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336553, 0.257911, -0.905657,
		0.604059, 0.796936, 0.002474,
		0.722388, -0.546237, -0.424005,
		18.594488, 37.472950, 19.052608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.519365, 38.264263, 18.862728>,  <18.088816, 37.855316, 19.349411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.519365, 38.264263, 18.862728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.545349, 37.885334, 18.737278>,  <18.560940, 37.657978, 18.662008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.545349, 37.885334, 18.737278>,  <18.519365, 38.264263, 18.862728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545349, 37.885334, 18.737278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331385, 0.275974, -0.902232,
		0.941257, 0.162537, -0.296002,
		0.064957, -0.947323, -0.313625,
		18.564837, 37.601139, 18.643190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623598, 38.417366, 18.175211>,  <18.519365, 38.264263, 18.862728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623598, 38.417366, 18.175211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.555113, 38.023590, 18.159412>,  <18.514023, 37.787323, 18.149933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.555113, 38.023590, 18.159412>,  <18.623598, 38.417366, 18.175211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.555113, 38.023590, 18.159412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321018, 0.093641, -0.942432,
		0.931469, -0.148676, -0.332056,
		-0.171211, -0.984442, -0.039496,
		18.503750, 37.728256, 18.147564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101234, 38.098885, 17.550570>,  <18.623598, 38.417366, 18.175211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101234, 38.098885, 17.550570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.798744, 37.856571, 17.649487>,  <18.617250, 37.711185, 17.708838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.798744, 37.856571, 17.649487>,  <19.101234, 38.098885, 17.550570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.798744, 37.856571, 17.649487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247347, -0.085232, -0.965171,
		0.605760, -0.791053, -0.085383,
		-0.756224, -0.605781, 0.247295,
		18.571877, 37.674835, 17.723675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929480, 37.816589, 16.939011>,  <19.101234, 38.098885, 17.550570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929480, 37.816589, 16.939011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.610601, 37.678947, 17.137432>,  <18.419273, 37.596363, 17.256485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.610601, 37.678947, 17.137432>,  <18.929480, 37.816589, 16.939011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.610601, 37.678947, 17.137432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435145, -0.242041, -0.867217,
		0.418479, -0.907197, 0.043219,
		-0.797197, -0.344106, 0.496052,
		18.371443, 37.575714, 17.286247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.757563, 37.158211, 16.633438>,  <18.929480, 37.816589, 16.939011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.757563, 37.158211, 16.633438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.421581, 37.255440, 16.827511>,  <18.219994, 37.313778, 16.943954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.421581, 37.255440, 16.827511>,  <18.757563, 37.158211, 16.633438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.421581, 37.255440, 16.827511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538801, -0.267082, -0.798975,
		-0.064621, -0.932516, 0.355300,
		-0.839951, 0.243066, 0.485181,
		18.169596, 37.328362, 16.973064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.338871, 36.548855, 16.551062>,  <18.757563, 37.158211, 16.633438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.338871, 36.548855, 16.551062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.098728, 36.862732, 16.612808>,  <17.954643, 37.051060, 16.649857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.098728, 36.862732, 16.612808>,  <18.338871, 36.548855, 16.551062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098728, 36.862732, 16.612808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540300, -0.255664, -0.801693,
		-0.589617, -0.564706, 0.577459,
		-0.600357, 0.784693, 0.154367,
		17.918621, 37.098141, 16.659119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752308, 36.378025, 16.283253>,  <18.338871, 36.548855, 16.551062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752308, 36.378025, 16.283253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.658224, 36.765968, 16.308723>,  <17.601774, 36.998734, 16.324005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.658224, 36.765968, 16.308723>,  <17.752308, 36.378025, 16.283253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.658224, 36.765968, 16.308723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763234, -0.143740, -0.629930,
		-0.601790, -0.196765, 0.774037,
		-0.235208, 0.969857, 0.063676,
		17.587662, 37.056927, 16.327826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021233, 36.365646, 16.403156>,  <17.752308, 36.378025, 16.283253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021233, 36.365646, 16.403156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.125532, 36.715466, 16.239605>,  <17.188112, 36.925358, 16.141474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.125532, 36.715466, 16.239605>,  <17.021233, 36.365646, 16.403156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125532, 36.715466, 16.239605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673495, -0.138658, -0.726070,
		-0.691674, 0.464701, 0.552846,
		0.260749, 0.874543, -0.408881,
		17.203756, 36.977829, 16.116941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434420, 36.651695, 16.168989>,  <17.021233, 36.365646, 16.403156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434420, 36.651695, 16.168989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.702675, 36.855751, 15.953582>,  <16.863628, 36.978184, 15.824338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.702675, 36.855751, 15.953582>,  <16.434420, 36.651695, 16.168989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702675, 36.855751, 15.953582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634023, 0.017369, -0.773119,
		-0.385046, 0.859915, 0.335090,
		0.670637, 0.510141, -0.538518,
		16.903866, 37.008793, 15.792027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002159, 37.221954, 15.887504>,  <16.434420, 36.651695, 16.168989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002159, 37.221954, 15.887504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.328136, 37.134624, 15.672767>,  <16.523724, 37.082226, 15.543924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.328136, 37.134624, 15.672767>,  <16.002159, 37.221954, 15.887504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328136, 37.134624, 15.672767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561399, -0.067446, -0.824792,
		0.143867, 0.973542, -0.177534,
		0.814944, -0.218327, -0.536842,
		16.572620, 37.069126, 15.511714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136942, 37.870941, 15.333202>,  <16.002159, 37.221954, 15.887504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136942, 37.870941, 15.333202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.302021, 37.531891, 15.199807>,  <16.401070, 37.328461, 15.119770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.302021, 37.531891, 15.199807>,  <16.136942, 37.870941, 15.333202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.302021, 37.531891, 15.199807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544749, 0.063750, -0.836172,
		0.730019, 0.526755, -0.435433,
		0.412700, -0.847623, -0.333488,
		16.425831, 37.277603, 15.099761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224392, 37.999802, 14.631498>,  <16.136942, 37.870941, 15.333202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224392, 37.999802, 14.631498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.270006, 37.605000, 14.676784>,  <16.297375, 37.368118, 14.703955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.270006, 37.605000, 14.676784>,  <16.224392, 37.999802, 14.631498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270006, 37.605000, 14.676784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365922, -0.147672, -0.918855,
		0.923633, 0.063355, -0.378006,
		0.114035, -0.987005, 0.113212,
		16.304216, 37.308899, 14.710747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.602674, 37.817009, 14.102162>,  <16.224392, 37.999802, 14.631498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.602674, 37.817009, 14.102162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.418098, 37.479832, 14.212806>,  <16.307352, 37.277523, 14.279192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.418098, 37.479832, 14.212806>,  <16.602674, 37.817009, 14.102162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.418098, 37.479832, 14.212806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404130, -0.077841, -0.911384,
		0.789780, -0.532335, -0.304741,
		-0.461440, -0.842948, 0.276610,
		16.279667, 37.226948, 14.295789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782503, 37.339363, 13.694460>,  <16.602674, 37.817009, 14.102162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782503, 37.339363, 13.694460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.468712, 37.128563, 13.825219>,  <16.280437, 37.002083, 13.903675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.468712, 37.128563, 13.825219>,  <16.782503, 37.339363, 13.694460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.468712, 37.128563, 13.825219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311464, -0.121009, -0.942522,
		0.536266, -0.841206, -0.069212,
		-0.784480, -0.527000, 0.326898,
		16.233368, 36.970463, 13.923288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.957090, 31.155170, 17.615925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285820, 31.219711, 17.834492>,  <28.483057, 31.258436, 17.965631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285820, 31.219711, 17.834492>,  <27.957090, 31.155170, 17.615925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285820, 31.219711, 17.834492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463707, 0.746659, 0.476944,
		-0.331032, -0.645342, 0.688442,
		0.821823, 0.161352, 0.546417,
		28.532368, 31.268116, 17.998417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734013, 31.066282, 18.329472>,  <27.957090, 31.155170, 17.615925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734013, 31.066282, 18.329472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074196, 31.275459, 18.306667>,  <28.278307, 31.400965, 18.292984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074196, 31.275459, 18.306667>,  <27.734013, 31.066282, 18.329472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074196, 31.275459, 18.306667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460728, 0.792785, 0.399026,
		0.253863, -0.313090, 0.915165,
		0.850460, 0.522940, -0.057010,
		28.329334, 31.432341, 18.289564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732304, 31.389685, 18.913462>,  <27.734013, 31.066282, 18.329472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732304, 31.389685, 18.913462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001173, 31.602013, 18.707001>,  <28.162495, 31.729410, 18.583124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001173, 31.602013, 18.707001>,  <27.732304, 31.389685, 18.913462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001173, 31.602013, 18.707001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426876, 0.847445, 0.315617,
		0.604947, 0.008183, 0.796224,
		0.672173, 0.530820, -0.516152,
		28.202826, 31.761259, 18.552155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004078, 31.823011, 19.357574>,  <27.732304, 31.389685, 18.913462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004078, 31.823011, 19.357574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055021, 31.996861, 19.000950>,  <28.085587, 32.101170, 18.786976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055021, 31.996861, 19.000950>,  <28.004078, 31.823011, 19.357574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055021, 31.996861, 19.000950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276518, 0.878802, 0.388903,
		0.952533, 0.197004, 0.232102,
		0.127356, 0.434623, -0.891563,
		28.093227, 32.127247, 18.733480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242348, 32.603867, 19.600658>,  <28.004078, 31.823011, 19.357574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242348, 32.603867, 19.600658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130804, 32.579556, 19.217297>,  <28.063877, 32.564968, 18.987280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130804, 32.579556, 19.217297>,  <28.242348, 32.603867, 19.600658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130804, 32.579556, 19.217297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393758, 0.917483, 0.056391,
		0.875894, 0.393106, -0.279780,
		-0.278861, -0.060773, -0.958407,
		28.047146, 32.561325, 18.929775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549454, 33.219444, 19.296034>,  <28.242348, 32.603867, 19.600658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549454, 33.219444, 19.296034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235680, 33.105228, 19.075806>,  <28.047415, 33.036701, 18.943668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235680, 33.105228, 19.075806>,  <28.549454, 33.219444, 19.296034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235680, 33.105228, 19.075806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415166, 0.901239, 0.124115,
		0.460758, 0.325939, -0.825509,
		-0.784436, -0.285537, -0.550572,
		28.000349, 33.019566, 18.910633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476460, 33.679447, 18.823524>,  <28.549454, 33.219444, 19.296034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476460, 33.679447, 18.823524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107325, 33.525864, 18.835838>,  <27.885843, 33.433712, 18.843227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107325, 33.525864, 18.835838>,  <28.476460, 33.679447, 18.823524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107325, 33.525864, 18.835838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385178, 0.920475, -0.066054,
		-0.002976, -0.072815, -0.997341,
		-0.922837, -0.383957, 0.030787,
		27.830473, 33.410675, 18.845074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168905, 34.181335, 18.569284>,  <28.476460, 33.679447, 18.823524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168905, 34.181335, 18.569284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877270, 33.968964, 18.742046>,  <27.702288, 33.841541, 18.845703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877270, 33.968964, 18.742046>,  <28.168905, 34.181335, 18.569284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877270, 33.968964, 18.742046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626613, 0.771640, -0.109218,
		-0.275287, -0.350266, -0.895282,
		-0.729091, -0.530929, 0.431904,
		27.658543, 33.809685, 18.871618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518990, 34.455654, 18.165831>,  <28.168905, 34.181335, 18.569284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518990, 34.455654, 18.165831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442722, 34.300335, 18.526466>,  <27.396961, 34.207142, 18.742847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442722, 34.300335, 18.526466>,  <27.518990, 34.455654, 18.165831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442722, 34.300335, 18.526466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674948, 0.718760, 0.166820,
		-0.712804, -0.576720, -0.399129,
		-0.190670, -0.388301, 0.901592,
		27.385521, 34.183846, 18.796944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894073, 34.410736, 18.169724>,  <27.518990, 34.455654, 18.165831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894073, 34.410736, 18.169724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945122, 34.373184, 18.564671>,  <26.975752, 34.350655, 18.801640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945122, 34.373184, 18.564671>,  <26.894073, 34.410736, 18.169724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945122, 34.373184, 18.564671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803699, 0.573562, 0.158415,
		-0.581190, -0.813765, -0.002252,
		0.127621, -0.093879, 0.987370,
		26.983408, 34.345020, 18.860882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300623, 34.155258, 18.554661>,  <26.894073, 34.410736, 18.169724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300623, 34.155258, 18.554661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502190, 34.399170, 18.799362>,  <26.623129, 34.545517, 18.946184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502190, 34.399170, 18.799362>,  <26.300623, 34.155258, 18.554661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502190, 34.399170, 18.799362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831123, 0.535137, 0.151207,
		-0.235170, -0.584639, 0.776461,
		0.503915, 0.609775, 0.611755,
		26.653364, 34.582104, 18.982889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044538, 34.122322, 19.152719>,  <26.300623, 34.155258, 18.554661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044538, 34.122322, 19.152719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192997, 34.492451, 19.121677>,  <26.282072, 34.714527, 19.103052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192997, 34.492451, 19.121677>,  <26.044538, 34.122322, 19.152719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192997, 34.492451, 19.121677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903200, 0.379145, 0.201191,
		0.215591, -0.004580, 0.976473,
		0.371147, 0.925326, -0.077603,
		26.304340, 34.770050, 19.098396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875813, 34.602798, 19.785641>,  <26.044538, 34.122322, 19.152719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875813, 34.602798, 19.785641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902088, 34.762722, 19.419945>,  <25.917854, 34.858677, 19.200527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902088, 34.762722, 19.419945>,  <25.875813, 34.602798, 19.785641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902088, 34.762722, 19.419945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968311, 0.246785, 0.038347,
		0.240952, 0.882750, 0.403354,
		0.065691, 0.399812, -0.914240,
		25.921795, 34.882668, 19.145672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599821, 35.249199, 19.900156>,  <25.875813, 34.602798, 19.785641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599821, 35.249199, 19.900156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547060, 35.128334, 19.522522>,  <25.515404, 35.055817, 19.295940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547060, 35.128334, 19.522522>,  <25.599821, 35.249199, 19.900156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547060, 35.128334, 19.522522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991228, 0.048179, 0.123070,
		0.008298, 0.952039, -0.305865,
		-0.131904, -0.302161, -0.944087,
		25.507488, 35.037685, 19.239296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971222, 35.258228, 20.394417>,  <25.599821, 35.249199, 19.900156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971222, 35.258228, 20.394417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719070, 35.054726, 20.628952>,  <24.567780, 34.932625, 20.769672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719070, 35.054726, 20.628952>,  <24.971222, 35.258228, 20.394417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719070, 35.054726, 20.628952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620662, -0.783971, -0.012957,
		0.466263, 0.355750, 0.809964,
		-0.630379, -0.508755, 0.586337,
		24.529957, 34.902100, 20.804853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326777, 35.020836, 20.969028>,  <24.971222, 35.258228, 20.394417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326777, 35.020836, 20.969028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024294, 34.759106, 20.968277>,  <24.842804, 34.602066, 20.967825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024294, 34.759106, 20.968277>,  <25.326777, 35.020836, 20.969028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024294, 34.759106, 20.968277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642676, -0.743272, 0.185780,
		-0.122959, 0.139280, 0.982589,
		-0.756207, -0.654330, -0.001880,
		24.797432, 34.562805, 20.967712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598948, 34.528267, 21.435392>,  <25.326777, 35.020836, 20.969028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598948, 34.528267, 21.435392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287743, 34.347336, 21.260994>,  <25.101019, 34.238777, 21.156355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287743, 34.347336, 21.260994>,  <25.598948, 34.528267, 21.435392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287743, 34.347336, 21.260994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473864, -0.878161, 0.065475,
		-0.412489, -0.155662, 0.897564,
		-0.778014, -0.452331, -0.435994,
		25.054338, 34.211636, 21.130196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551737, 33.961411, 21.884598>,  <25.598948, 34.528267, 21.435392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551737, 33.961411, 21.884598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369259, 33.895069, 21.534882>,  <25.259773, 33.855267, 21.325052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369259, 33.895069, 21.534882>,  <25.551737, 33.961411, 21.884598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369259, 33.895069, 21.534882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339151, -0.940731, 0.001490,
		-0.822717, -0.295836, 0.485404,
		-0.456194, -0.165851, -0.874288,
		25.232401, 33.845314, 21.272594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162611, 33.365753, 21.951799>,  <25.551737, 33.961411, 21.884598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162611, 33.365753, 21.951799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207235, 33.385105, 21.554768>,  <25.234009, 33.396717, 21.316549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207235, 33.385105, 21.554768>,  <25.162611, 33.365753, 21.951799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207235, 33.385105, 21.554768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373206, -0.927743, -0.003271,
		-0.921017, -0.370072, -0.121553,
		0.111559, 0.048377, -0.992580,
		25.240704, 33.399616, 21.256994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923483, 32.739677, 21.686863>,  <25.162611, 33.365753, 21.951799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923483, 32.739677, 21.686863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.138039, 32.881409, 21.380466>,  <25.266771, 32.966446, 21.196629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.138039, 32.881409, 21.380466>,  <24.923483, 32.739677, 21.686863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138039, 32.881409, 21.380466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332445, -0.922928, -0.194124,
		-0.775736, -0.150523, -0.612843,
		0.536390, 0.354326, -0.765989,
		25.298956, 32.987705, 21.150669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820896, 32.293255, 20.998413>,  <24.923483, 32.739677, 21.686863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820896, 32.293255, 20.998413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166712, 32.491325, 20.964073>,  <25.374201, 32.610168, 20.943468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166712, 32.491325, 20.964073>,  <24.820896, 32.293255, 20.998413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166712, 32.491325, 20.964073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460973, -0.849378, -0.257022,
		-0.200192, 0.182630, -0.962585,
		0.864539, 0.495179, -0.085851,
		25.426073, 32.639877, 20.938318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067932, 31.967686, 20.447933>,  <24.820896, 32.293255, 20.998413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067932, 31.967686, 20.447933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390516, 32.127991, 20.621834>,  <25.584066, 32.224174, 20.726173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390516, 32.127991, 20.621834>,  <25.067932, 31.967686, 20.447933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.390516, 32.127991, 20.621834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480372, -0.872785, -0.086538,
		0.344762, 0.278631, -0.896384,
		0.806463, 0.400763, 0.434749,
		25.632456, 32.248219, 20.752258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565392, 31.881479, 20.035212>,  <25.067932, 31.967686, 20.447933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565392, 31.881479, 20.035212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791304, 31.982597, 20.349438>,  <25.926851, 32.043270, 20.537973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791304, 31.982597, 20.349438>,  <25.565392, 31.881479, 20.035212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791304, 31.982597, 20.349438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576858, -0.801663, -0.156755,
		0.590132, 0.541693, -0.598592,
		0.564782, 0.252796, 0.785567,
		25.960739, 32.058437, 20.585108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221302, 31.899748, 19.758352>,  <25.565392, 31.881479, 20.035212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221302, 31.899748, 19.758352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255209, 31.837856, 20.152077>,  <26.275553, 31.800720, 20.388311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255209, 31.837856, 20.152077>,  <26.221302, 31.899748, 19.758352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255209, 31.837856, 20.152077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647158, -0.742591, -0.172465,
		0.757628, 0.651626, 0.037187,
		0.084768, -0.154730, 0.984313,
		26.280640, 31.791437, 20.447371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972336, 31.717804, 19.902859>,  <26.221302, 31.899748, 19.758352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972336, 31.717804, 19.902859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783319, 31.595665, 20.233547>,  <26.669910, 31.522381, 20.431961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783319, 31.595665, 20.233547>,  <26.972336, 31.717804, 19.902859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783319, 31.595665, 20.233547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527023, -0.849757, -0.012619,
		0.706366, 0.429739, 0.562469,
		-0.472539, -0.305347, 0.826722,
		26.641558, 31.504061, 20.481564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495949, 31.417459, 20.304241>,  <26.972336, 31.717804, 19.902859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495949, 31.417459, 20.304241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139515, 31.280079, 20.422909>,  <26.925655, 31.197651, 20.494108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139515, 31.280079, 20.422909>,  <27.495949, 31.417459, 20.304241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139515, 31.280079, 20.422909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333754, -0.938869, -0.084456,
		0.307538, 0.023757, 0.951239,
		-0.891083, -0.343453, 0.296667,
		26.872190, 31.177042, 20.511909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632820, 30.844168, 20.757017>,  <27.495949, 31.417459, 20.304241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632820, 30.844168, 20.757017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262636, 30.807648, 20.609943>,  <27.040525, 30.785736, 20.521700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262636, 30.807648, 20.609943>,  <27.632820, 30.844168, 20.757017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262636, 30.807648, 20.609943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206735, -0.934990, -0.288190,
		-0.317468, -0.342721, 0.884170,
		-0.925459, -0.091298, -0.367682,
		26.984999, 30.780258, 20.499640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354027, 30.236824, 21.035154>,  <27.632820, 30.844168, 20.757017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354027, 30.236824, 21.035154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129416, 30.310452, 20.712463>,  <26.994650, 30.354628, 20.518848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129416, 30.310452, 20.712463>,  <27.354027, 30.236824, 21.035154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129416, 30.310452, 20.712463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012567, -0.972934, -0.230741,
		-0.827363, -0.139706, 0.544016,
		-0.561527, 0.184070, -0.806725,
		26.960958, 30.365673, 20.470446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059093, 30.235445, 21.820215>,  <27.354027, 30.236824, 21.035154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059093, 30.235445, 21.820215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242056, 30.120377, 22.156792>,  <27.351833, 30.051334, 22.358738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242056, 30.120377, 22.156792>,  <27.059093, 30.235445, 21.820215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242056, 30.120377, 22.156792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077972, 0.955559, 0.284301,
		-0.885832, -0.064432, 0.459510,
		0.457407, -0.287672, 0.841441,
		27.379278, 30.034075, 22.409224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759401, 30.641811, 22.324665>,  <27.059093, 30.235445, 21.820215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759401, 30.641811, 22.324665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114908, 30.529858, 22.469860>,  <27.328213, 30.462687, 22.556976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114908, 30.529858, 22.469860>,  <26.759401, 30.641811, 22.324665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114908, 30.529858, 22.469860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076813, 0.871672, 0.484034,
		-0.451877, -0.402312, 0.796212,
		0.888767, -0.279883, 0.362985,
		27.381538, 30.445892, 22.578756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760935, 30.714600, 23.078402>,  <26.759401, 30.641811, 22.324665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760935, 30.714600, 23.078402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152763, 30.711864, 22.998013>,  <27.387861, 30.710224, 22.949780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152763, 30.711864, 22.998013>,  <26.760935, 30.714600, 23.078402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152763, 30.711864, 22.998013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112328, 0.847557, 0.518681,
		0.166789, -0.530660, 0.831012,
		0.979573, -0.006836, -0.200971,
		27.446636, 30.709814, 22.937721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063650, 30.951561, 23.713144>,  <26.760935, 30.714600, 23.078402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063650, 30.951561, 23.713144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351381, 30.992702, 23.438339>,  <27.524021, 31.017387, 23.273457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351381, 30.992702, 23.438339>,  <27.063650, 30.951561, 23.713144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351381, 30.992702, 23.438339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152591, 0.941428, 0.300713,
		0.677703, -0.321144, 0.661502,
		0.719329, 0.102855, -0.687013,
		27.567181, 31.023560, 23.232235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702372, 31.228680, 24.114475>,  <27.063650, 30.951561, 23.713144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702372, 31.228680, 24.114475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764612, 31.322956, 23.730759>,  <27.801956, 31.379522, 23.500528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764612, 31.322956, 23.730759>,  <27.702372, 31.228680, 24.114475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764612, 31.322956, 23.730759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364230, 0.889005, 0.277502,
		0.918218, -0.392582, 0.052485,
		0.155602, 0.235691, -0.959291,
		27.811293, 31.393663, 23.442972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450163, 31.445250, 24.112543>,  <27.702372, 31.228680, 24.114475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450163, 31.445250, 24.112543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256092, 31.585922, 23.792313>,  <28.139648, 31.670326, 23.600174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256092, 31.585922, 23.792313>,  <28.450163, 31.445250, 24.112543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256092, 31.585922, 23.792313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260071, 0.932160, 0.251873,
		0.834844, -0.086003, -0.543726,
		-0.485178, 0.351682, -0.800576,
		28.110538, 31.691427, 23.552139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908621, 31.873932, 23.768885>,  <28.450163, 31.445250, 24.112543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908621, 31.873932, 23.768885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547205, 31.998825, 23.651493>,  <28.330357, 32.073761, 23.581059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547205, 31.998825, 23.651493>,  <28.908621, 31.873932, 23.768885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547205, 31.998825, 23.651493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276188, 0.947985, 0.158258,
		0.327625, 0.061937, -0.942776,
		-0.903539, 0.312232, -0.293478,
		28.276144, 32.092495, 23.563450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079069, 32.573967, 23.518463>,  <28.908621, 31.873932, 23.768885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079069, 32.573967, 23.518463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687204, 32.601986, 23.443253>,  <28.452085, 32.618797, 23.398127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687204, 32.601986, 23.443253>,  <29.079069, 32.573967, 23.518463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687204, 32.601986, 23.443253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092570, 0.989184, -0.113777,
		0.178021, -0.128868, -0.975552,
		-0.979663, 0.070052, -0.188025,
		28.393305, 32.623001, 23.386845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980482, 32.975288, 22.862780>,  <29.079069, 32.573967, 23.518463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980482, 32.975288, 22.862780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678314, 32.983730, 23.124741>,  <28.497013, 32.988796, 23.281918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678314, 32.983730, 23.124741>,  <28.980482, 32.975288, 22.862780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678314, 32.983730, 23.124741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095971, 0.992266, 0.078727,
		-0.648174, 0.122323, -0.751603,
		-0.755421, 0.021103, 0.654900,
		28.451689, 32.990063, 23.321211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624372, 33.443378, 22.593622>,  <28.980482, 32.975288, 22.862780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624372, 33.443378, 22.593622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522148, 33.416599, 22.979412>,  <28.460814, 33.400532, 23.210886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522148, 33.416599, 22.979412>,  <28.624372, 33.443378, 22.593622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522148, 33.416599, 22.979412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148694, 0.983008, 0.107633,
		-0.955290, 0.170918, -0.241262,
		-0.255559, -0.066947, 0.964473,
		28.445480, 33.396515, 23.268753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181883, 33.973888, 22.732002>,  <28.624372, 33.443378, 22.593622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181883, 33.973888, 22.732002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336876, 33.876839, 23.087753>,  <28.429871, 33.818607, 23.301205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336876, 33.876839, 23.087753>,  <28.181883, 33.973888, 22.732002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336876, 33.876839, 23.087753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173768, 0.966674, 0.188004,
		-0.905353, 0.081697, 0.416728,
		0.387480, -0.242623, 0.889378,
		28.453119, 33.804050, 23.354567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864687, 34.448616, 23.188137>,  <28.181883, 33.973888, 22.732002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864687, 34.448616, 23.188137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193563, 34.308315, 23.367458>,  <28.390890, 34.224136, 23.475050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193563, 34.308315, 23.367458>,  <27.864687, 34.448616, 23.188137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193563, 34.308315, 23.367458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127681, 0.881162, 0.455248,
		-0.554704, -0.317062, 0.769269,
		0.822193, -0.350749, 0.448301,
		28.440222, 34.203091, 23.501949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.153391, 26.372763, 21.919790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.534327, 26.466446, 21.997967>,  <27.762888, 26.522655, 22.044872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.534327, 26.466446, 21.997967>,  <27.153391, 26.372763, 21.919790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534327, 26.466446, 21.997967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303067, 0.799230, 0.519020,
		-0.034644, -0.553515, 0.832118,
		0.952339, 0.234206, 0.195441,
		27.820028, 26.536709, 22.056599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093849, 26.612196, 22.620399>,  <27.153391, 26.372763, 21.919790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093849, 26.612196, 22.620399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.432358, 26.768188, 22.475216>,  <27.635464, 26.861784, 22.388105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.432358, 26.768188, 22.475216>,  <27.093849, 26.612196, 22.620399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432358, 26.768188, 22.475216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240768, 0.887710, 0.392432,
		0.475241, -0.244716, 0.845139,
		0.846272, 0.389982, -0.362957,
		27.686239, 26.885183, 22.366329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423260, 26.951214, 23.172510>,  <27.093849, 26.612196, 22.620399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423260, 26.951214, 23.172510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.611954, 27.098763, 22.852161>,  <27.725170, 27.187292, 22.659952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.611954, 27.098763, 22.852161>,  <27.423260, 26.951214, 23.172510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611954, 27.098763, 22.852161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085096, 0.923094, 0.375041,
		0.877624, -0.108769, 0.466846,
		0.471736, 0.368871, -0.800874,
		27.753475, 27.209423, 22.611898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954792, 27.469746, 23.378521>,  <27.423260, 26.951214, 23.172510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954792, 27.469746, 23.378521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.865740, 27.556950, 22.998436>,  <27.812307, 27.609272, 22.770384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.865740, 27.556950, 22.998436>,  <27.954792, 27.469746, 23.378521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865740, 27.556950, 22.998436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115142, 0.961974, 0.247686,
		0.968079, 0.164552, -0.189064,
		-0.222632, 0.218011, -0.950214,
		27.798950, 27.622353, 22.713371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230047, 28.168011, 23.205166>,  <27.954792, 27.469746, 23.378521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230047, 28.168011, 23.205166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.986668, 28.127533, 22.890320>,  <27.840641, 28.103247, 22.701412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.986668, 28.127533, 22.890320>,  <28.230047, 28.168011, 23.205166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986668, 28.127533, 22.890320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109489, 0.993056, -0.043032,
		0.786005, 0.059998, -0.615301,
		-0.608447, -0.101192, -0.787117,
		27.804134, 28.097176, 22.654184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491642, 28.575682, 22.819304>,  <28.230047, 28.168011, 23.205166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491642, 28.575682, 22.819304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.110807, 28.502861, 22.721008>,  <27.882307, 28.459169, 22.662031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.110807, 28.502861, 22.721008>,  <28.491642, 28.575682, 22.819304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110807, 28.502861, 22.721008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138152, 0.972886, -0.185492,
		0.272842, -0.142656, -0.951423,
		-0.952088, -0.182051, -0.245736,
		27.825182, 28.448246, 22.647287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378935, 28.825666, 22.102755>,  <28.491642, 28.575682, 22.819304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378935, 28.825666, 22.102755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.037226, 28.811573, 22.310207>,  <27.832201, 28.803116, 22.434679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.037226, 28.811573, 22.310207>,  <28.378935, 28.825666, 22.102755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037226, 28.811573, 22.310207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069211, 0.996527, -0.046298,
		-0.515200, -0.075446, -0.853742,
		-0.854271, -0.035236, 0.518633,
		27.780945, 28.801003, 22.465797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014875, 29.142918, 21.674780>,  <28.378935, 28.825666, 22.102755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014875, 29.142918, 21.674780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.818289, 29.147675, 22.023106>,  <27.700336, 29.150528, 22.232101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.818289, 29.147675, 22.023106>,  <28.014875, 29.142918, 21.674780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818289, 29.147675, 22.023106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028627, 0.999587, 0.002506,
		-0.870426, 0.026161, -0.491603,
		-0.491466, 0.011891, 0.870816,
		27.670849, 29.151241, 22.284349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466370, 29.614403, 21.549673>,  <28.014875, 29.142918, 21.674780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466370, 29.614403, 21.549673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.546078, 29.561863, 21.938114>,  <27.593903, 29.530340, 22.171179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.546078, 29.561863, 21.938114>,  <27.466370, 29.614403, 21.549673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546078, 29.561863, 21.938114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151202, 0.983230, 0.101962,
		-0.968209, 0.126515, 0.215790,
		0.199271, -0.131348, 0.971102,
		27.605860, 29.522459, 22.229445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833923, 29.699860, 21.093874>,  <27.466370, 29.614403, 21.549673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833923, 29.699860, 21.093874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.815065, 29.834023, 20.717518>,  <26.803751, 29.914520, 20.491703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.815065, 29.834023, 20.717518>,  <26.833923, 29.699860, 21.093874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815065, 29.834023, 20.717518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082112, -0.937450, -0.338296,
		-0.995507, -0.093208, 0.016656,
		-0.047146, 0.335409, -0.940892,
		26.800922, 29.934645, 20.435249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146629, 29.551498, 20.797886>,  <26.833923, 29.699860, 21.093874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146629, 29.551498, 20.797886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.409361, 29.594509, 20.499352>,  <26.566999, 29.620316, 20.320230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.409361, 29.594509, 20.499352>,  <26.146629, 29.551498, 20.797886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409361, 29.594509, 20.499352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049463, -0.981504, -0.184939,
		-0.752417, 0.158389, -0.639360,
		0.656827, 0.107526, -0.746335,
		26.606409, 29.626766, 20.275452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950939, 29.090784, 20.352034>,  <26.146629, 29.551498, 20.797886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950939, 29.090784, 20.352034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.307167, 29.154522, 20.181625>,  <26.520905, 29.192764, 20.079380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.307167, 29.154522, 20.181625>,  <25.950939, 29.090784, 20.352034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307167, 29.154522, 20.181625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042178, -0.961521, -0.271473,
		-0.452884, 0.223798, -0.863024,
		0.890571, 0.159346, -0.426018,
		26.574339, 29.202326, 20.053820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949299, 28.935871, 19.605385>,  <25.950939, 29.090784, 20.352034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949299, 28.935871, 19.605385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.337999, 28.906216, 19.695007>,  <26.571220, 28.888422, 19.748781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.337999, 28.906216, 19.695007>,  <25.949299, 28.935871, 19.605385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337999, 28.906216, 19.695007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025256, -0.911259, -0.411059,
		0.234650, 0.405106, -0.883645,
		0.971752, -0.074138, 0.224058,
		26.629524, 28.883974, 19.762224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224239, 28.587755, 19.078247>,  <25.949299, 28.935871, 19.605385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224239, 28.587755, 19.078247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.514780, 28.556873, 19.351437>,  <26.689104, 28.538343, 19.515350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.514780, 28.556873, 19.351437>,  <26.224239, 28.587755, 19.078247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514780, 28.556873, 19.351437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170105, -0.942566, -0.287461,
		0.665941, 0.324975, -0.671501,
		0.726352, -0.077206, 0.682973,
		26.732685, 28.533710, 19.556328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888840, 28.281534, 18.730083>,  <26.224239, 28.587755, 19.078247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888840, 28.281534, 18.730083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.965244, 28.193363, 19.112690>,  <27.011087, 28.140461, 19.342255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.965244, 28.193363, 19.112690>,  <26.888840, 28.281534, 18.730083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965244, 28.193363, 19.112690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040163, -0.971889, -0.231989,
		0.980765, 0.082729, -0.176791,
		0.191014, -0.220426, 0.956518,
		27.022549, 28.127235, 19.399645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358265, 27.770561, 18.727802>,  <26.888840, 28.281534, 18.730083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358265, 27.770561, 18.727802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.227587, 27.718868, 19.102303>,  <27.149179, 27.687853, 19.327003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.227587, 27.718868, 19.102303>,  <27.358265, 27.770561, 18.727802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227587, 27.718868, 19.102303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051417, -0.991571, -0.118925,
		0.943730, 0.009287, 0.330586,
		-0.326695, -0.129231, 0.936253,
		27.129578, 27.680099, 19.383179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792379, 27.379446, 19.119715>,  <27.358265, 27.770561, 18.727802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792379, 27.379446, 19.119715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.433767, 27.321808, 19.287270>,  <27.218599, 27.287224, 19.387802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.433767, 27.321808, 19.287270>,  <27.792379, 27.379446, 19.119715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433767, 27.321808, 19.287270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118342, -0.989155, -0.086985,
		0.426878, -0.028413, 0.903863,
		-0.896532, -0.144097, 0.418886,
		27.164808, 27.278578, 19.412935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898460, 27.007181, 19.743597>,  <27.792379, 27.379446, 19.119715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898460, 27.007181, 19.743597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.516220, 26.941383, 19.645809>,  <27.286875, 26.901905, 19.587137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.516220, 26.941383, 19.645809>,  <27.898460, 27.007181, 19.743597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516220, 26.941383, 19.645809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168481, -0.985694, 0.004665,
		-0.241738, -0.036730, 0.969646,
		-0.955603, -0.164495, -0.244468,
		27.229540, 26.892035, 19.572468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793146, 26.414412, 20.067661>,  <27.898460, 27.007181, 19.743597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793146, 26.414412, 20.067661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.488779, 26.438675, 19.809258>,  <27.306160, 26.453232, 19.654215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.488779, 26.438675, 19.809258>,  <27.793146, 26.414412, 20.067661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488779, 26.438675, 19.809258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030910, -0.997879, -0.057287,
		-0.648113, -0.023623, 0.761178,
		-0.760917, 0.060656, -0.646008,
		27.260504, 26.456871, 19.615456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408510, 25.734726, 20.199589>,  <27.793146, 26.414412, 20.067661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408510, 25.734726, 20.199589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.281065, 25.874336, 19.847073>,  <27.204597, 25.958101, 19.635563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.281065, 25.874336, 19.847073>,  <27.408510, 25.734726, 20.199589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281065, 25.874336, 19.847073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025172, -0.932529, -0.360217,
		-0.947552, -0.092585, 0.305899,
		-0.318610, 0.349024, -0.881289,
		27.185482, 25.979044, 19.582685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744120, 25.386728, 19.982697>,  <27.408510, 25.734726, 20.199589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744120, 25.386728, 19.982697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.952147, 25.510674, 19.664322>,  <27.076963, 25.585041, 19.473297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.952147, 25.510674, 19.664322>,  <26.744120, 25.386728, 19.982697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952147, 25.510674, 19.664322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046489, -0.920224, -0.388622,
		-0.852860, 0.239112, -0.464172,
		0.520066, 0.309861, -0.795938,
		27.108166, 25.603632, 19.425541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408796, 25.141716, 19.458292>,  <26.744120, 25.386728, 19.982697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408796, 25.141716, 19.458292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.756945, 25.227894, 19.281185>,  <26.965834, 25.279600, 19.174921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.756945, 25.227894, 19.281185>,  <26.408796, 25.141716, 19.458292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756945, 25.227894, 19.281185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001457, -0.900323, -0.435220,
		-0.492396, 0.378157, -0.783928,
		0.870370, 0.215443, -0.442765,
		27.018055, 25.292526, 19.148355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388222, 25.093344, 18.760368>,  <26.408796, 25.141716, 19.458292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388222, 25.093344, 18.760368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.786669, 25.066544, 18.783222>,  <27.025736, 25.050465, 18.796934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.786669, 25.066544, 18.783222>,  <26.388222, 25.093344, 18.760368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786669, 25.066544, 18.783222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024650, -0.835105, -0.549539,
		0.084530, 0.545996, -0.833512,
		0.996116, -0.066998, 0.057133,
		27.085505, 25.046444, 18.800362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.642773, 25.827860, 21.307819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278961, 25.786148, 21.146877>,  <33.060677, 25.761122, 21.050312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278961, 25.786148, 21.146877>,  <33.642773, 25.827860, 21.307819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278961, 25.786148, 21.146877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036448, 0.984298, -0.172710,
		0.414046, -0.142419, -0.899046,
		-0.909526, -0.104278, -0.402354,
		33.006104, 25.754866, 21.026171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561508, 26.296671, 20.765362>,  <33.642773, 25.827860, 21.307819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561508, 26.296671, 20.765362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177761, 26.189354, 20.800327>,  <32.947514, 26.124964, 20.821306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177761, 26.189354, 20.800327>,  <33.561508, 26.296671, 20.765362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177761, 26.189354, 20.800327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281231, 0.883827, -0.373844,
		0.023038, -0.383236, -0.923363,
		-0.959364, -0.268291, 0.087416,
		32.889954, 26.108868, 20.826551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214355, 26.533243, 20.207718>,  <33.561508, 26.296671, 20.765362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214355, 26.533243, 20.207718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916534, 26.502945, 20.473019>,  <32.737843, 26.484766, 20.632198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916534, 26.502945, 20.473019>,  <33.214355, 26.533243, 20.207718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916534, 26.502945, 20.473019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307799, 0.920581, -0.240397,
		-0.592366, -0.383137, -0.708738,
		-0.744555, -0.075746, 0.663249,
		32.693169, 26.480221, 20.671993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613712, 26.816416, 19.918379>,  <33.214355, 26.533243, 20.207718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613712, 26.816416, 19.918379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.492771, 26.817070, 20.299656>,  <32.420208, 26.817463, 20.528423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.492771, 26.817070, 20.299656>,  <32.613712, 26.816416, 19.918379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492771, 26.817070, 20.299656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336521, 0.935422, -0.108351,
		-0.891816, -0.353530, -0.282277,
		-0.302353, 0.001637, 0.953195,
		32.402065, 26.817560, 20.585615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970652, 27.189453, 19.921530>,  <32.613712, 26.816416, 19.918379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970652, 27.189453, 19.921530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139198, 27.210808, 20.283657>,  <32.240326, 27.223621, 20.500933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139198, 27.210808, 20.283657>,  <31.970652, 27.189453, 19.921530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139198, 27.210808, 20.283657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286011, 0.955144, 0.076792,
		-0.860609, -0.291288, 0.417736,
		0.421367, 0.053389, 0.905317,
		32.265610, 27.226824, 20.555252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489983, 27.539236, 20.293732>,  <31.970652, 27.189453, 19.921530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489983, 27.539236, 20.293732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.797476, 27.575584, 20.546963>,  <31.981972, 27.597393, 20.698902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.797476, 27.575584, 20.546963>,  <31.489983, 27.539236, 20.293732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797476, 27.575584, 20.546963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333233, 0.901789, 0.275196,
		-0.545897, -0.422515, 0.723517,
		0.768735, 0.090871, 0.633079,
		32.028095, 27.602846, 20.736887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260498, 27.733828, 20.877748>,  <31.489983, 27.539236, 20.293732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260498, 27.733828, 20.877748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647308, 27.829590, 20.912498>,  <31.879395, 27.887047, 20.933350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647308, 27.829590, 20.912498>,  <31.260498, 27.733828, 20.877748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647308, 27.829590, 20.912498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253300, 0.868643, 0.425791,
		0.026472, -0.433756, 0.900641,
		0.967025, 0.239404, 0.086876,
		31.937416, 27.901411, 20.938560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298626, 28.094994, 21.516674>,  <31.260498, 27.733828, 20.877748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298626, 28.094994, 21.516674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615341, 28.203190, 21.297619>,  <31.805370, 28.268108, 21.166185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615341, 28.203190, 21.297619>,  <31.298626, 28.094994, 21.516674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615341, 28.203190, 21.297619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093666, 0.939761, 0.328748,
		0.603571, -0.209004, 0.769428,
		0.791788, 0.270492, -0.547636,
		31.852877, 28.284338, 21.133327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714699, 28.501806, 22.001038>,  <31.298626, 28.094994, 21.516674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714699, 28.501806, 22.001038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.845343, 28.594639, 21.634548>,  <31.923729, 28.650339, 21.414654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.845343, 28.594639, 21.634548>,  <31.714699, 28.501806, 22.001038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845343, 28.594639, 21.634548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266083, 0.952755, 0.146484,
		0.906932, 0.195948, 0.372931,
		0.326609, 0.232082, -0.916223,
		31.943325, 28.664263, 21.359682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136410, 29.079700, 22.092491>,  <31.714699, 28.501806, 22.001038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136410, 29.079700, 22.092491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006905, 29.081753, 21.714043>,  <31.929201, 29.082985, 21.486973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006905, 29.081753, 21.714043>,  <32.136410, 29.079700, 22.092491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006905, 29.081753, 21.714043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254265, 0.962727, 0.092232,
		0.911331, 0.270428, -0.310392,
		-0.323765, 0.005132, -0.946123,
		31.909775, 29.083292, 21.430206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510422, 29.614853, 21.785433>,  <32.136410, 29.079700, 22.092491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510422, 29.614853, 21.785433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185150, 29.550919, 21.561581>,  <31.989986, 29.512558, 21.427269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185150, 29.550919, 21.561581>,  <32.510422, 29.614853, 21.785433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185150, 29.550919, 21.561581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113769, 0.986655, -0.116481,
		0.570782, -0.031052, -0.820515,
		-0.813182, -0.159834, -0.559632,
		31.941196, 29.502968, 21.393690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684944, 29.937315, 21.224823>,  <32.510422, 29.614853, 21.785433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684944, 29.937315, 21.224823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285255, 29.922611, 21.219173>,  <32.045441, 29.913790, 21.215784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285255, 29.922611, 21.219173>,  <32.684944, 29.937315, 21.224823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285255, 29.922611, 21.219173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035227, 0.994701, -0.096589,
		0.017599, -0.096017, -0.995224,
		-0.999224, -0.036759, -0.014123,
		31.985489, 29.911583, 21.214937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478653, 30.238945, 20.522879>,  <32.684944, 29.937315, 21.224823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478653, 30.238945, 20.522879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143902, 30.266346, 20.740112>,  <31.943050, 30.282787, 20.870453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143902, 30.266346, 20.740112>,  <32.478653, 30.238945, 20.522879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143902, 30.266346, 20.740112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099614, 0.956512, -0.274155,
		-0.538247, -0.283534, -0.793661,
		-0.836879, 0.068504, 0.543084,
		31.892838, 30.286898, 20.903038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950397, 30.679077, 20.083233>,  <32.478653, 30.238945, 20.522879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950397, 30.679077, 20.083233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.840261, 30.688103, 20.467667>,  <31.774179, 30.693518, 20.698326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.840261, 30.688103, 20.467667>,  <31.950397, 30.679077, 20.083233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840261, 30.688103, 20.467667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098118, 0.993844, -0.051444,
		-0.956327, -0.108464, -0.271430,
		-0.275339, 0.022565, 0.961083,
		31.757660, 30.694872, 20.755991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596210, 30.928595, 19.488810>,  <31.950397, 30.679077, 20.083233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596210, 30.928595, 19.488810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.657036, 31.058262, 19.115330>,  <31.693531, 31.136063, 18.891243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.657036, 31.058262, 19.115330>,  <31.596210, 30.928595, 19.488810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657036, 31.058262, 19.115330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155305, -0.940786, -0.301334,
		-0.976092, -0.099186, -0.193405,
		0.152065, 0.324167, -0.933698,
		31.702656, 31.155512, 18.835220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205976, 30.483585, 19.081749>,  <31.596210, 30.928595, 19.488810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205976, 30.483585, 19.081749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485819, 30.648685, 18.848446>,  <31.653725, 30.747746, 18.708464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485819, 30.648685, 18.848446>,  <31.205976, 30.483585, 19.081749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485819, 30.648685, 18.848446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160763, -0.886280, -0.434354,
		-0.696210, 0.210109, -0.686401,
		0.699605, 0.412749, -0.583259,
		31.695700, 30.772511, 18.673468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059099, 30.280985, 18.397104>,  <31.205976, 30.483585, 19.081749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059099, 30.280985, 18.397104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.450342, 30.357189, 18.430592>,  <31.685089, 30.402912, 18.450684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.450342, 30.357189, 18.430592>,  <31.059099, 30.280985, 18.397104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450342, 30.357189, 18.430592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206766, -0.935121, -0.287744,
		0.023467, 0.298755, -0.954041,
		0.978109, 0.190510, 0.083717,
		31.743774, 30.414343, 18.455708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310144, 30.001938, 17.893578>,  <31.059099, 30.280985, 18.397104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310144, 30.001938, 17.893578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608658, 30.042362, 18.156742>,  <31.787766, 30.066618, 18.314640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608658, 30.042362, 18.156742>,  <31.310144, 30.001938, 17.893578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608658, 30.042362, 18.156742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352335, -0.898559, -0.261633,
		0.564730, 0.427057, -0.706188,
		0.746284, 0.101063, 0.657911,
		31.832542, 30.072681, 18.354115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779522, 29.603361, 17.497171>,  <31.310144, 30.001938, 17.893578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779522, 29.603361, 17.497171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922331, 29.655479, 17.867157>,  <32.008015, 29.686750, 18.089148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922331, 29.655479, 17.867157>,  <31.779522, 29.603361, 17.497171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922331, 29.655479, 17.867157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319837, -0.947420, 0.010007,
		0.877633, 0.292265, -0.379923,
		0.357022, 0.130296, 0.924964,
		32.029438, 29.694569, 18.144646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477421, 29.523470, 17.405655>,  <31.779522, 29.603361, 17.497171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477421, 29.523470, 17.405655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421864, 29.451340, 17.795155>,  <32.388531, 29.408062, 18.028854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421864, 29.451340, 17.795155>,  <32.477421, 29.523470, 17.405655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421864, 29.451340, 17.795155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552996, -0.829820, -0.074794,
		0.821526, 0.528092, 0.214974,
		-0.138891, -0.180325, 0.973752,
		32.380196, 29.397242, 18.087280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045277, 29.282572, 17.643927>,  <32.477421, 29.523470, 17.405655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045277, 29.282572, 17.643927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.806637, 29.152939, 17.937603>,  <32.663452, 29.075159, 18.113810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.806637, 29.152939, 17.937603>,  <33.045277, 29.282572, 17.643927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806637, 29.152939, 17.937603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392045, -0.915942, -0.085736,
		0.700262, 0.236686, 0.673508,
		-0.596601, -0.324083, 0.734191,
		32.627655, 29.055714, 18.157860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465458, 28.758047, 17.919094>,  <33.045277, 29.282572, 17.643927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465458, 28.758047, 17.919094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.121685, 28.676167, 18.106487>,  <32.915421, 28.627037, 18.218924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.121685, 28.676167, 18.106487>,  <33.465458, 28.758047, 17.919094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121685, 28.676167, 18.106487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219563, -0.975318, -0.023376,
		0.461704, 0.082771, 0.883164,
		-0.859431, -0.204703, 0.468481,
		32.863857, 28.614756, 18.247032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639614, 28.240477, 18.455236>,  <33.465458, 28.758047, 17.919094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639614, 28.240477, 18.455236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250839, 28.212044, 18.365536>,  <33.017574, 28.194984, 18.311714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250839, 28.212044, 18.365536>,  <33.639614, 28.240477, 18.455236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250839, 28.212044, 18.365536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100871, -0.987105, -0.124293,
		-0.212526, -0.143425, 0.966572,
		-0.971935, -0.071083, -0.224253,
		32.959259, 28.190720, 18.298260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340420, 27.713322, 18.913351>,  <33.639614, 28.240477, 18.455236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340420, 27.713322, 18.913351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050934, 27.738636, 18.638474>,  <32.877243, 27.753824, 18.473547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050934, 27.738636, 18.638474>,  <33.340420, 27.713322, 18.913351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050934, 27.738636, 18.638474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082423, -0.996585, -0.004973,
		-0.685161, 0.053041, 0.726458,
		-0.723714, 0.063284, -0.687193,
		32.833820, 27.757622, 18.432316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769592, 27.178907, 19.085762>,  <33.340420, 27.713322, 18.913351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769592, 27.178907, 19.085762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767277, 27.262665, 18.694637>,  <32.765888, 27.312920, 18.459961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767277, 27.262665, 18.694637>,  <32.769592, 27.178907, 19.085762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767277, 27.262665, 18.694637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055505, -0.976391, -0.208761,
		-0.998442, 0.053064, 0.017278,
		-0.005792, 0.209394, -0.977814,
		32.765537, 27.325483, 18.401293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154160, 26.820801, 18.881245>,  <32.769592, 27.178907, 19.085762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154160, 26.820801, 18.881245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370686, 26.887333, 18.551563>,  <32.500603, 26.927252, 18.353754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370686, 26.887333, 18.551563>,  <32.154160, 26.820801, 18.881245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370686, 26.887333, 18.551563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178714, -0.935081, -0.306080,
		-0.821607, 0.312983, -0.476449,
		0.541316, 0.166330, -0.824203,
		32.533081, 26.937231, 18.304302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800812, 26.566551, 18.256046>,  <32.154160, 26.820801, 18.881245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800812, 26.566551, 18.256046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.194027, 26.583206, 18.184605>,  <32.429955, 26.593199, 18.141739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.194027, 26.583206, 18.184605>,  <31.800812, 26.566551, 18.256046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194027, 26.583206, 18.184605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027250, -0.929916, -0.366761,
		-0.181358, 0.365407, -0.913010,
		0.983039, 0.041636, -0.178605,
		32.488937, 26.595697, 18.131023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899458, 26.121119, 17.710981>,  <31.800812, 26.566551, 18.256046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899458, 26.121119, 17.710981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.279724, 26.148041, 17.832115>,  <32.507885, 26.164194, 17.904795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.279724, 26.148041, 17.832115>,  <31.899458, 26.121119, 17.710981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279724, 26.148041, 17.832115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117595, -0.981512, -0.151016,
		0.287071, 0.179177, -0.941003,
		0.950664, 0.067305, 0.302833,
		32.564922, 26.168232, 17.922966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471804, 26.444599, 17.221050>,  <31.899458, 26.121119, 17.710981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471804, 26.444599, 17.221050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.091948, 26.366425, 17.123081>,  <30.864033, 26.319521, 17.064301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.091948, 26.366425, 17.123081>,  <31.471804, 26.444599, 17.221050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091948, 26.366425, 17.123081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273567, 0.898255, 0.343946,
		0.152785, 0.393628, -0.906484,
		-0.949641, -0.195434, -0.244923,
		30.807055, 26.307795, 17.049604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194885, 27.030962, 16.782694>,  <31.471804, 26.444599, 17.221050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194885, 27.030962, 16.782694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.861301, 26.857010, 16.918571>,  <30.661152, 26.752640, 17.000099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.861301, 26.857010, 16.918571>,  <31.194885, 27.030962, 16.782694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861301, 26.857010, 16.918571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380602, 0.899027, 0.216547,
		-0.399567, 0.051303, -0.915267,
		-0.833959, -0.434878, 0.339695,
		30.611115, 26.726547, 17.020479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636141, 27.220198, 16.386570>,  <31.194885, 27.030962, 16.782694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636141, 27.220198, 16.386570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528332, 27.113792, 16.756779>,  <30.463646, 27.049950, 16.978905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528332, 27.113792, 16.756779>,  <30.636141, 27.220198, 16.386570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528332, 27.113792, 16.756779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380067, 0.912455, 0.151577,
		-0.884820, -0.310907, -0.347031,
		-0.269524, -0.266013, 0.925523,
		30.447475, 27.033989, 17.034435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991392, 27.471834, 16.382559>,  <30.636141, 27.220198, 16.386570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991392, 27.471834, 16.382559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.097872, 27.437534, 16.766598>,  <30.161758, 27.416954, 16.997021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.097872, 27.437534, 16.766598>,  <29.991392, 27.471834, 16.382559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097872, 27.437534, 16.766598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414326, 0.889149, 0.194289,
		-0.870329, -0.449513, 0.201161,
		0.266198, -0.085749, 0.960097,
		30.177731, 27.411810, 17.054626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368187, 27.606363, 16.752758>,  <29.991392, 27.471834, 16.382559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368187, 27.606363, 16.752758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.650499, 27.644794, 17.033512>,  <29.819887, 27.667852, 17.201965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.650499, 27.644794, 17.033512>,  <29.368187, 27.606363, 16.752758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650499, 27.644794, 17.033512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468063, 0.806953, 0.360199,
		-0.531782, -0.582748, 0.614501,
		0.705779, 0.096078, 0.701886,
		29.862234, 27.673618, 17.244078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002987, 27.948076, 17.467363>,  <29.368187, 27.606363, 16.752758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002987, 27.948076, 17.467363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.399553, 27.997173, 17.485359>,  <29.637493, 28.026630, 17.496157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.399553, 27.997173, 17.485359>,  <29.002987, 27.948076, 17.467363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399553, 27.997173, 17.485359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130406, 0.952680, 0.274582,
		-0.009159, -0.278093, 0.960510,
		0.991418, 0.122742, 0.044991,
		29.696980, 28.033997, 17.498856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049206, 28.448748, 17.999025>,  <29.002987, 27.948076, 17.467363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049206, 28.448748, 17.999025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.411112, 28.480022, 17.831558>,  <29.628256, 28.498787, 17.731077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.411112, 28.480022, 17.831558>,  <29.049206, 28.448748, 17.999025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411112, 28.480022, 17.831558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062592, 0.947922, 0.312293,
		0.421282, -0.308757, 0.852754,
		0.904767, 0.078188, -0.418668,
		29.682543, 28.503479, 17.705957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323946, 28.935089, 18.345648>,  <29.049206, 28.448748, 17.999025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323946, 28.935089, 18.345648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.549541, 28.916714, 18.015846>,  <29.684898, 28.905689, 17.817965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.549541, 28.916714, 18.015846>,  <29.323946, 28.935089, 18.345648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549541, 28.916714, 18.015846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103696, 0.994488, 0.015523,
		0.819246, -0.094253, 0.565643,
		0.563989, -0.045938, -0.824504,
		29.718739, 28.902933, 17.768496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948990, 29.279284, 18.507856>,  <29.323946, 28.935089, 18.345648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948990, 29.279284, 18.507856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.897945, 29.265297, 18.111374>,  <29.867319, 29.256905, 17.873484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.897945, 29.265297, 18.111374>,  <29.948990, 29.279284, 18.507856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897945, 29.265297, 18.111374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307639, 0.948693, -0.073076,
		0.942907, -0.314259, -0.110308,
		-0.127613, -0.034969, -0.991208,
		29.859661, 29.254807, 17.814013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424919, 29.821785, 18.237007>,  <29.948990, 29.279284, 18.507856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424919, 29.821785, 18.237007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.138290, 29.756748, 17.965687>,  <29.966314, 29.717726, 17.802895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.138290, 29.756748, 17.965687>,  <30.424919, 29.821785, 18.237007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138290, 29.756748, 17.965687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100069, 0.986356, -0.130722,
		0.690299, -0.025795, -0.723064,
		-0.716571, -0.162593, -0.678299,
		29.923319, 29.707970, 17.762197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501637, 30.295147, 17.715635>,  <30.424919, 29.821785, 18.237007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501637, 30.295147, 17.715635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.128901, 30.181103, 17.625843>,  <29.905260, 30.112677, 17.571968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.128901, 30.181103, 17.625843>,  <30.501637, 30.295147, 17.715635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128901, 30.181103, 17.625843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279918, 0.958428, -0.055327,
		0.230921, 0.011280, -0.972907,
		-0.931838, -0.285110, -0.224479,
		29.849350, 30.095570, 17.558500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186502, 30.881821, 17.307098>,  <30.501637, 30.295147, 17.715635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186502, 30.881821, 17.307098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870497, 30.672077, 17.434174>,  <29.680893, 30.546230, 17.510418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870497, 30.672077, 17.434174>,  <30.186502, 30.881821, 17.307098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870497, 30.672077, 17.434174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483383, 0.851468, 0.203328,
		-0.377116, 0.007068, -0.926139,
		-0.790015, -0.524358, 0.317686,
		29.633492, 30.514771, 17.529480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596727, 31.088671, 16.869818>,  <30.186502, 30.881821, 17.307098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596727, 31.088671, 16.869818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.460854, 30.926346, 17.209213>,  <29.379330, 30.828951, 17.412849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.460854, 30.926346, 17.209213>,  <29.596727, 31.088671, 16.869818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460854, 30.926346, 17.209213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645659, 0.756596, 0.103381,
		-0.683915, -0.512716, -0.519021,
		-0.339684, -0.405814, 0.848487,
		29.358948, 30.804602, 17.463758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888773, 31.300720, 16.911966>,  <29.596727, 31.088671, 16.869818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888773, 31.300720, 16.911966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.995533, 31.223297, 17.289600>,  <29.059589, 31.176844, 17.516182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.995533, 31.223297, 17.289600>,  <28.888773, 31.300720, 16.911966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995533, 31.223297, 17.289600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608961, 0.725398, 0.320880,
		-0.746947, -0.660555, 0.075740,
		0.266900, -0.193557, 0.944087,
		29.075603, 31.165230, 17.572826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.772392, 41.863293, 25.448095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160118, 41.935005, 25.380829>,  <38.392754, 41.978031, 25.340469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160118, 41.935005, 25.380829>,  <37.772392, 41.863293, 25.448095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160118, 41.935005, 25.380829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151861, -0.974735, -0.163799,
		-0.193283, 0.133235, -0.972055,
		0.969319, 0.179277, -0.168167,
		38.450912, 41.988789, 25.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949615, 41.573948, 24.702240>,  <37.772392, 41.863293, 25.448095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949615, 41.573948, 24.702240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290100, 41.605377, 24.909801>,  <38.494392, 41.624237, 25.034338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290100, 41.605377, 24.909801>,  <37.949615, 41.573948, 24.702240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290100, 41.605377, 24.909801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335568, -0.841694, -0.423018,
		0.403518, 0.534206, -0.742830,
		0.851215, 0.078575, 0.518901,
		38.545464, 41.628948, 25.065472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482056, 41.478863, 24.203812>,  <37.949615, 41.573948, 24.702240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482056, 41.478863, 24.203812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.604153, 41.373394, 24.569828>,  <38.677410, 41.310112, 24.789438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.604153, 41.373394, 24.569828>,  <38.482056, 41.478863, 24.203812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604153, 41.373394, 24.569828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340023, -0.867382, -0.363363,
		0.889499, 0.422051, -0.175112,
		0.305246, -0.263669, 0.915043,
		38.695728, 41.294292, 24.844341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166851, 41.210384, 24.076807>,  <38.482056, 41.478863, 24.203812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166851, 41.210384, 24.076807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071388, 41.088253, 24.445549>,  <39.014111, 41.014977, 24.666794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071388, 41.088253, 24.445549>,  <39.166851, 41.210384, 24.076807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071388, 41.088253, 24.445549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385855, -0.900949, -0.198510,
		0.891157, 0.308328, 0.332826,
		-0.238653, -0.305326, 0.921857,
		38.999794, 40.996655, 24.722107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819740, 40.901951, 24.454113>,  <39.166851, 41.210384, 24.076807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819740, 40.901951, 24.454113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.492218, 40.753574, 24.629364>,  <39.295704, 40.664547, 24.734514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.492218, 40.753574, 24.629364>,  <39.819740, 40.901951, 24.454113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492218, 40.753574, 24.629364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401081, -0.915682, -0.025688,
		0.410714, 0.154690, 0.898546,
		-0.818809, -0.370940, 0.438127,
		39.246574, 40.642292, 24.760801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185699, 40.487926, 24.885843>,  <39.819740, 40.901951, 24.454113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185699, 40.487926, 24.885843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802475, 40.376564, 24.858677>,  <39.572540, 40.309746, 24.842377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802475, 40.376564, 24.858677>,  <40.185699, 40.487926, 24.885843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802475, 40.376564, 24.858677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275688, -0.960108, 0.046782,
		-0.078230, 0.026097, 0.996594,
		-0.958059, -0.278408, -0.067915,
		39.515057, 40.293041, 24.838303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121334, 39.992783, 25.388693>,  <40.185699, 40.487926, 24.885843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121334, 39.992783, 25.388693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.808300, 39.935783, 25.146286>,  <39.620480, 39.901585, 25.000843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.808300, 39.935783, 25.146286>,  <40.121334, 39.992783, 25.388693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808300, 39.935783, 25.146286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175167, -0.984524, 0.005303,
		-0.597393, -0.102004, 0.795435,
		-0.782584, -0.142502, -0.606015,
		39.573524, 39.893032, 24.964481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771812, 39.448734, 25.715378>,  <40.121334, 39.992783, 25.388693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771812, 39.448734, 25.715378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.659569, 39.440235, 25.331543>,  <39.592224, 39.435135, 25.101242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.659569, 39.440235, 25.331543>,  <39.771812, 39.448734, 25.715378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659569, 39.440235, 25.331543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077361, -0.996002, 0.044678,
		-0.956700, 0.086772, 0.277841,
		-0.280607, -0.021250, -0.959588,
		39.575386, 39.433861, 25.043667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196854, 38.907772, 25.697145>,  <39.771812, 39.448734, 25.715378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196854, 38.907772, 25.697145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.323284, 38.973778, 25.323437>,  <39.399143, 39.013382, 25.099211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.323284, 38.973778, 25.323437>,  <39.196854, 38.907772, 25.697145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323284, 38.973778, 25.323437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164929, -0.960207, -0.225391,
		-0.934289, 0.225329, -0.276282,
		0.316075, 0.165014, -0.934274,
		39.418106, 39.023281, 25.043154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749584, 38.491741, 25.244850>,  <39.196854, 38.907772, 25.697145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749584, 38.491741, 25.244850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071106, 38.563892, 25.018097>,  <39.264019, 38.607185, 24.882046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071106, 38.563892, 25.018097>,  <38.749584, 38.491741, 25.244850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071106, 38.563892, 25.018097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076225, -0.976296, -0.202574,
		-0.589986, 0.119620, -0.798504,
		0.803808, 0.180382, -0.566882,
		39.312248, 38.618008, 24.848032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650997, 38.201485, 24.626230>,  <38.749584, 38.491741, 25.244850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650997, 38.201485, 24.626230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.047050, 38.225285, 24.676987>,  <39.284683, 38.239563, 24.707439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.047050, 38.225285, 24.676987>,  <38.650997, 38.201485, 24.626230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047050, 38.225285, 24.676987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092161, -0.958524, -0.269701,
		0.105580, 0.278733, -0.954547,
		0.990131, 0.059497, 0.126889,
		39.344090, 38.243134, 24.715054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992374, 37.916908, 24.001858>,  <38.650997, 38.201485, 24.626230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992374, 37.916908, 24.001858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.260521, 37.887398, 24.297199>,  <39.421410, 37.869694, 24.474405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.260521, 37.887398, 24.297199>,  <38.992374, 37.916908, 24.001858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260521, 37.887398, 24.297199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170734, -0.953013, -0.250232,
		0.722123, 0.293809, -0.626271,
		0.670365, -0.073773, 0.738356,
		39.461632, 37.865265, 24.518705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469482, 37.450645, 23.823689>,  <38.992374, 37.916908, 24.001858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469482, 37.450645, 23.823689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552830, 37.450268, 24.214909>,  <39.602840, 37.450043, 24.449640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552830, 37.450268, 24.214909>,  <39.469482, 37.450645, 23.823689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552830, 37.450268, 24.214909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391556, -0.916284, -0.084304,
		0.896251, 0.400528, -0.190558,
		0.208371, -0.000943, 0.978050,
		39.615341, 37.449986, 24.508324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176788, 37.339302, 23.784620>,  <39.469482, 37.450645, 23.823689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176788, 37.339302, 23.784620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.039616, 37.236053, 24.145901>,  <39.957314, 37.174103, 24.362669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.039616, 37.236053, 24.145901>,  <40.176788, 37.339302, 23.784620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039616, 37.236053, 24.145901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438657, -0.894235, -0.089013,
		0.830650, 0.365669, 0.419889,
		-0.342930, -0.258126, 0.903200,
		39.936737, 37.158615, 24.416861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663193, 36.964443, 23.953220>,  <40.176788, 37.339302, 23.784620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663193, 36.964443, 23.953220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.366817, 36.876919, 24.207191>,  <40.188992, 36.824402, 24.359573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.366817, 36.876919, 24.207191>,  <40.663193, 36.964443, 23.953220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366817, 36.876919, 24.207191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201731, -0.974286, -0.100352,
		0.640559, 0.053730, 0.766027,
		-0.740937, -0.218813, 0.634927,
		40.144535, 36.811275, 24.397669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940414, 36.445778, 24.364693>,  <40.663193, 36.964443, 23.953220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940414, 36.445778, 24.364693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544559, 36.405117, 24.405266>,  <40.307049, 36.380718, 24.429609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544559, 36.405117, 24.405266>,  <40.940414, 36.445778, 24.364693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544559, 36.405117, 24.405266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114176, -0.985384, 0.126419,
		0.087101, 0.136690, 0.986777,
		-0.989635, -0.101655, 0.101435,
		40.247669, 36.374619, 24.435696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860020, 35.861561, 24.760798>,  <40.940414, 36.445778, 24.364693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860020, 35.861561, 24.760798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481297, 35.895393, 24.636608>,  <40.254063, 35.915695, 24.562094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481297, 35.895393, 24.636608>,  <40.860020, 35.861561, 24.760798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481297, 35.895393, 24.636608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120166, -0.987975, 0.097293,
		-0.298512, 0.129426, 0.945590,
		-0.946811, 0.084585, -0.310475,
		40.197254, 35.920769, 24.543467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433041, 35.475876, 25.271431>,  <40.860020, 35.861561, 24.760798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433041, 35.475876, 25.271431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200684, 35.476437, 24.945839>,  <40.061268, 35.476772, 24.750484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200684, 35.476437, 24.945839>,  <40.433041, 35.475876, 25.271431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200684, 35.476437, 24.945839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220777, -0.962784, 0.155898,
		-0.783469, 0.270268, 0.559582,
		-0.580891, 0.001402, -0.813980,
		40.026417, 35.476856, 24.701645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913074, 35.028950, 25.443506>,  <40.433041, 35.475876, 25.271431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913074, 35.028950, 25.443506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.864922, 35.068455, 25.048386>,  <39.836029, 35.092159, 24.811314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.864922, 35.068455, 25.048386>,  <39.913074, 35.028950, 25.443506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864922, 35.068455, 25.048386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390803, -0.919408, -0.044297,
		-0.912568, 0.380704, 0.149275,
		-0.120380, 0.098761, -0.987803,
		39.828808, 35.098083, 24.752045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199715, 34.972454, 25.220375>,  <39.913074, 35.028950, 25.443506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199715, 34.972454, 25.220375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415882, 34.880501, 24.896622>,  <39.545582, 34.825329, 24.702370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415882, 34.880501, 24.896622>,  <39.199715, 34.972454, 25.220375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415882, 34.880501, 24.896622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488510, -0.868941, -0.079373,
		-0.685057, 0.438286, -0.581895,
		0.540421, -0.229887, -0.809381,
		39.578007, 34.811535, 24.653807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758747, 34.623440, 24.752241>,  <39.199715, 34.972454, 25.220375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758747, 34.623440, 24.752241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.127274, 34.547749, 24.616379>,  <39.348389, 34.502335, 24.534861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.127274, 34.547749, 24.616379>,  <38.758747, 34.623440, 24.752241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127274, 34.547749, 24.616379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244294, -0.961338, -0.127080,
		-0.302479, 0.200057, -0.931925,
		0.921318, -0.189224, -0.339657,
		39.403667, 34.490982, 24.514482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195450, 34.268551, 24.652060>,  <38.758747, 34.623440, 24.752241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195450, 34.268551, 24.652060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810272, 34.297249, 24.756058>,  <37.579166, 34.314468, 24.818457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810272, 34.297249, 24.756058>,  <38.195450, 34.268551, 24.652060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810272, 34.297249, 24.756058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169861, 0.910093, 0.377993,
		-0.209501, 0.408148, -0.888552,
		-0.962942, 0.071740, 0.259994,
		37.521389, 34.318771, 24.834055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044682, 34.988598, 24.537104>,  <38.195450, 34.268551, 24.652060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044682, 34.988598, 24.537104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.767838, 34.851376, 24.791126>,  <37.601730, 34.769043, 24.943541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.767838, 34.851376, 24.791126>,  <38.044682, 34.988598, 24.537104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767838, 34.851376, 24.791126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003592, 0.878186, 0.478306,
		-0.721783, 0.333322, -0.606569,
		-0.692111, -0.343054, 0.635057,
		37.560204, 34.748459, 24.981644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552223, 35.546421, 24.545782>,  <38.044682, 34.988598, 24.537104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552223, 35.546421, 24.545782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.462658, 35.329746, 24.869865>,  <37.408916, 35.199741, 25.064316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.462658, 35.329746, 24.869865>,  <37.552223, 35.546421, 24.545782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462658, 35.329746, 24.869865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163199, 0.840420, 0.516778,
		-0.960847, -0.016509, -0.276587,
		-0.223918, -0.541684, 0.810209,
		37.395481, 35.167240, 25.112928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120361, 35.981991, 25.043850>,  <37.552223, 35.546421, 24.545782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120361, 35.981991, 25.043850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226791, 35.687428, 25.292656>,  <37.290649, 35.510689, 25.441940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226791, 35.687428, 25.292656>,  <37.120361, 35.981991, 25.043850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226791, 35.687428, 25.292656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193312, 0.672933, 0.713997,
		-0.944370, -0.069732, 0.321407,
		0.266074, -0.736410, 0.622017,
		37.306614, 35.466503, 25.479261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724113, 36.114479, 25.725328>,  <37.120361, 35.981991, 25.043850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724113, 36.114479, 25.725328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.049061, 35.901936, 25.821426>,  <37.244030, 35.774410, 25.879086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.049061, 35.901936, 25.821426>,  <36.724113, 36.114479, 25.725328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049061, 35.901936, 25.821426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249218, 0.688806, 0.680762,
		-0.527211, -0.493156, 0.691987,
		0.812367, -0.531360, 0.240243,
		37.292770, 35.742527, 25.893499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735008, 35.961884, 26.492643>,  <36.724113, 36.114479, 25.725328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735008, 35.961884, 26.492643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.122570, 35.912811, 26.406689>,  <37.355106, 35.883369, 26.355116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.122570, 35.912811, 26.406689>,  <36.735008, 35.961884, 26.492643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122570, 35.912811, 26.406689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246410, 0.557565, 0.792719,
		0.022565, -0.821018, 0.570456,
		0.968903, -0.122679, -0.214888,
		37.413242, 35.876007, 26.342222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104534, 36.005749, 27.205877>,  <36.735008, 35.961884, 26.492643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104534, 36.005749, 27.205877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.398373, 36.071537, 26.942570>,  <37.574677, 36.111012, 26.784586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.398373, 36.071537, 26.942570>,  <37.104534, 36.005749, 27.205877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398373, 36.071537, 26.942570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562890, 0.393974, 0.726595,
		0.378837, -0.904288, 0.196840,
		0.734600, 0.164462, -0.658266,
		37.618752, 36.120880, 26.745089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502068, 36.246593, 27.645872>,  <37.104534, 36.005749, 27.205877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502068, 36.246593, 27.645872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.720890, 36.333965, 27.322636>,  <37.852184, 36.386391, 27.128695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.720890, 36.333965, 27.322636>,  <37.502068, 36.246593, 27.645872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720890, 36.333965, 27.322636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653303, 0.492157, 0.575306,
		0.523375, -0.842655, 0.126535,
		0.547059, 0.218435, -0.808092,
		37.885010, 36.399494, 27.080208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261383, 35.984932, 27.789907>,  <37.502068, 36.246593, 27.645872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261383, 35.984932, 27.789907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.229939, 36.279640, 27.521286>,  <38.211071, 36.456467, 27.360113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.229939, 36.279640, 27.521286>,  <38.261383, 35.984932, 27.789907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229939, 36.279640, 27.521286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667444, 0.539275, 0.513517,
		0.740499, -0.407857, -0.534148,
		-0.078611, 0.736773, -0.671555,
		38.206356, 36.500671, 27.319820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992485, 36.265015, 27.687807>,  <38.261383, 35.984932, 27.789907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992485, 36.265015, 27.687807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715340, 36.535675, 27.588139>,  <38.549053, 36.698071, 27.528337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715340, 36.535675, 27.588139>,  <38.992485, 36.265015, 27.687807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715340, 36.535675, 27.588139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496807, 0.698418, 0.515166,
		0.522610, 0.233151, -0.820072,
		-0.692865, 0.676649, -0.249169,
		38.507481, 36.738670, 27.513388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400146, 36.875935, 27.593538>,  <38.992485, 36.265015, 27.687807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400146, 36.875935, 27.593538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033577, 37.036015, 27.594982>,  <38.813637, 37.132065, 27.595848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033577, 37.036015, 27.594982>,  <39.400146, 36.875935, 27.593538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033577, 37.036015, 27.594982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352646, 0.803189, 0.480133,
		0.189249, 0.441277, -0.877188,
		-0.916420, 0.400201, 0.003611,
		38.758652, 37.156075, 27.596066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496845, 37.568588, 27.326876>,  <39.400146, 36.875935, 27.593538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496845, 37.568588, 27.326876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155144, 37.568645, 27.534817>,  <38.950123, 37.568680, 27.659580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155144, 37.568645, 27.534817>,  <39.496845, 37.568588, 27.326876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155144, 37.568645, 27.534817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288487, 0.832021, 0.473831,
		-0.432457, 0.554744, -0.710802,
		-0.854257, 0.000146, 0.519850,
		38.898865, 37.568687, 27.690771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345890, 38.286488, 27.340298>,  <39.496845, 37.568588, 27.326876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345890, 38.286488, 27.340298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115009, 38.141384, 27.632938>,  <38.976482, 38.054321, 27.808523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115009, 38.141384, 27.632938>,  <39.345890, 38.286488, 27.340298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115009, 38.141384, 27.632938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138546, 0.839420, 0.525528,
		-0.804762, 0.404696, -0.434256,
		-0.577202, -0.362761, 0.731602,
		38.941849, 38.032555, 27.852419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898430, 38.813789, 27.378687>,  <39.345890, 38.286488, 27.340298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898430, 38.813789, 27.378687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900627, 38.606812, 27.720966>,  <38.901947, 38.482624, 27.926334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900627, 38.606812, 27.720966>,  <38.898430, 38.813789, 27.378687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900627, 38.606812, 27.720966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184519, 0.841543, 0.507699,
		-0.982814, 0.155102, 0.100105,
		0.005497, -0.517445, 0.855699,
		38.902275, 38.451576, 27.977676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404346, 39.026161, 27.803560>,  <38.898430, 38.813789, 27.378687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404346, 39.026161, 27.803560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686127, 38.868813, 28.039867>,  <38.855194, 38.774403, 28.181652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686127, 38.868813, 28.039867>,  <38.404346, 39.026161, 27.803560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686127, 38.868813, 28.039867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012727, 0.839225, 0.543635,
		-0.709640, -0.375445, 0.596198,
		0.704449, -0.393373, 0.590770,
		38.897461, 38.750801, 28.217098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222240, 39.275795, 28.439178>,  <38.404346, 39.026161, 27.803560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222240, 39.275795, 28.439178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598118, 39.155392, 28.504139>,  <38.823643, 39.083149, 28.543116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598118, 39.155392, 28.504139>,  <38.222240, 39.275795, 28.439178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598118, 39.155392, 28.504139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171144, 0.824927, 0.538707,
		-0.296126, -0.478424, 0.826692,
		0.939691, -0.301009, 0.162403,
		38.880024, 39.065090, 28.552860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411659, 39.388836, 29.119661>,  <38.222240, 39.275795, 28.439178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411659, 39.388836, 29.119661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777557, 39.348206, 28.963242>,  <38.997097, 39.323826, 28.869390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777557, 39.348206, 28.963242>,  <38.411659, 39.388836, 29.119661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777557, 39.348206, 28.963242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307011, 0.803938, 0.509341,
		0.262640, -0.585974, 0.766586,
		0.914748, -0.101577, -0.391047,
		39.051983, 39.317734, 28.845928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814404, 39.785782, 29.628887>,  <38.411659, 39.388836, 29.119661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814404, 39.785782, 29.628887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051414, 39.739658, 29.309986>,  <39.193623, 39.711983, 29.118645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051414, 39.739658, 29.309986>,  <38.814404, 39.785782, 29.628887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051414, 39.739658, 29.309986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513743, 0.816401, 0.263738,
		0.620467, -0.565856, 0.542980,
		0.592527, -0.115311, -0.797254,
		39.229172, 39.705067, 29.070810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449257, 39.921921, 29.862972>,  <38.814404, 39.785782, 29.628887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449257, 39.921921, 29.862972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487923, 39.962063, 29.466873>,  <39.511120, 39.986149, 29.229214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487923, 39.962063, 29.466873>,  <39.449257, 39.921921, 29.862972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487923, 39.962063, 29.466873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462162, 0.876620, 0.133950,
		0.881511, -0.470602, 0.038358,
		0.096662, 0.100351, -0.990245,
		39.516922, 39.992168, 29.169800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110886, 40.315346, 29.826982>,  <39.449257, 39.921921, 29.862972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110886, 40.315346, 29.826982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.935059, 40.357910, 29.470230>,  <39.829563, 40.383450, 29.256178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.935059, 40.357910, 29.470230>,  <40.110886, 40.315346, 29.826982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935059, 40.357910, 29.470230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332957, 0.941520, -0.051762,
		0.834218, -0.319712, -0.449294,
		-0.439569, 0.106414, -0.891883,
		39.803188, 40.389835, 29.202665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599102, 40.455376, 29.275126>,  <40.110886, 40.315346, 29.826982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599102, 40.455376, 29.275126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.250729, 40.619495, 29.166954>,  <40.041706, 40.717968, 29.102051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.250729, 40.619495, 29.166954>,  <40.599102, 40.455376, 29.275126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250729, 40.619495, 29.166954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411826, 0.909669, 0.053858,
		0.268098, -0.064463, -0.961232,
		-0.870932, 0.410300, -0.270428,
		39.989449, 40.742584, 29.085825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.793114, 24.848629, 17.979103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.073833, 24.796825, 18.259304>,  <27.242266, 24.765743, 18.427425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.073833, 24.796825, 18.259304>,  <26.793114, 24.848629, 17.979103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073833, 24.796825, 18.259304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339229, -0.803931, -0.488487,
		0.626419, 0.580451, -0.520265,
		0.701800, -0.129508, 0.700503,
		27.284374, 24.757973, 18.469456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419249, 24.763365, 17.525309>,  <26.793114, 24.848629, 17.979103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419249, 24.763365, 17.525309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.510326, 24.594868, 17.876469>,  <27.564974, 24.493771, 18.087166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.510326, 24.594868, 17.876469>,  <27.419249, 24.763365, 17.525309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510326, 24.594868, 17.876469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405717, -0.778553, -0.478800,
		0.885183, 0.465200, -0.006369,
		0.227696, -0.421241, 0.877901,
		27.578636, 24.468494, 18.139839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048496, 24.466246, 17.473400>,  <27.419249, 24.763365, 17.525309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048496, 24.466246, 17.473400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.901426, 24.259686, 17.782761>,  <27.813185, 24.135750, 17.968376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.901426, 24.259686, 17.782761>,  <28.048496, 24.466246, 17.473400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901426, 24.259686, 17.782761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393306, -0.839962, -0.373863,
		0.842689, 0.166723, 0.511936,
		-0.367676, -0.516398, 0.773400,
		27.791124, 24.104767, 18.014780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600674, 24.013041, 17.752024>,  <28.048496, 24.466246, 17.473400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600674, 24.013041, 17.752024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.267418, 23.843948, 17.894672>,  <28.067465, 23.742493, 17.980263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.267418, 23.843948, 17.894672>,  <28.600674, 24.013041, 17.752024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267418, 23.843948, 17.894672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358363, -0.903759, -0.234084,
		0.421256, -0.067224, 0.904447,
		-0.833138, -0.422729, 0.356623,
		28.017477, 23.717129, 18.001659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885717, 23.483776, 18.258108>,  <28.600674, 24.013041, 17.752024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885717, 23.483776, 18.258108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.520756, 23.373035, 18.137531>,  <28.301779, 23.306591, 18.065186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.520756, 23.373035, 18.137531>,  <28.885717, 23.483776, 18.258108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520756, 23.373035, 18.137531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284248, -0.958542, 0.019987,
		-0.294479, -0.067449, 0.953275,
		-0.912406, -0.276853, -0.301443,
		28.247034, 23.289980, 18.047098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666670, 22.995028, 18.658501>,  <28.885717, 23.483776, 18.258108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666670, 22.995028, 18.658501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.421247, 22.910458, 18.354172>,  <28.273994, 22.859716, 18.171576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.421247, 22.910458, 18.354172>,  <28.666670, 22.995028, 18.658501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421247, 22.910458, 18.354172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159975, -0.976791, 0.142432,
		-0.773276, -0.034322, 0.633139,
		-0.613557, -0.211425, -0.760820,
		28.237181, 22.847031, 18.125925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384018, 22.326090, 18.871855>,  <28.666670, 22.995028, 18.658501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384018, 22.326090, 18.871855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.267929, 22.351658, 18.489925>,  <28.198275, 22.366999, 18.260769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.267929, 22.351658, 18.489925>,  <28.384018, 22.326090, 18.871855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267929, 22.351658, 18.489925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107725, -0.989243, -0.098967,
		-0.950876, -0.131580, 0.280216,
		-0.290224, 0.063919, -0.954822,
		28.180862, 22.370834, 18.203480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811197, 21.849886, 18.776501>,  <28.384018, 22.326090, 18.871855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811197, 21.849886, 18.776501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.004604, 21.924873, 18.434490>,  <28.120649, 21.969866, 18.229284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.004604, 21.924873, 18.434490>,  <27.811197, 21.849886, 18.776501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004604, 21.924873, 18.434490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042211, -0.980655, -0.191141,
		-0.874316, 0.056328, -0.482077,
		0.483518, 0.187467, -0.855024,
		28.149660, 21.981113, 18.177982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443842, 21.495222, 18.166653>,  <27.811197, 21.849886, 18.776501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443842, 21.495222, 18.166653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.808874, 21.565063, 18.018757>,  <28.027893, 21.606968, 17.930019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.808874, 21.565063, 18.018757>,  <27.443842, 21.495222, 18.166653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808874, 21.565063, 18.018757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042719, -0.940007, -0.338469,
		-0.406655, 0.293086, -0.865293,
		0.912582, 0.174605, -0.369739,
		28.082649, 21.617445, 17.907835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541115, 20.937078, 17.769346>,  <27.443842, 21.495222, 18.166653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541115, 20.937078, 17.769346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.919451, 21.066483, 17.780109>,  <28.146452, 21.144125, 17.786568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.919451, 21.066483, 17.780109>,  <27.541115, 20.937078, 17.769346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919451, 21.066483, 17.780109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323726, -0.933786, -0.152462,
		-0.024199, 0.152915, -0.987943,
		0.945841, 0.323513, 0.026906,
		28.203203, 21.163536, 17.788181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878271, 20.506611, 17.269291>,  <27.541115, 20.937078, 17.769346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878271, 20.506611, 17.269291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.192122, 20.647907, 17.473087>,  <28.380432, 20.732685, 17.595366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.192122, 20.647907, 17.473087>,  <27.878271, 20.506611, 17.269291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192122, 20.647907, 17.473087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462242, -0.880976, -0.101065,
		0.413151, 0.314807, -0.854519,
		0.784627, 0.353240, 0.509493,
		28.427509, 20.753880, 17.625935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521553, 20.290930, 16.995127>,  <27.878271, 20.506611, 17.269291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521553, 20.290930, 16.995127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.625265, 20.358543, 17.375484>,  <28.687492, 20.399113, 17.603699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.625265, 20.358543, 17.375484>,  <28.521553, 20.290930, 16.995127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625265, 20.358543, 17.375484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500290, -0.865682, 0.017474,
		0.826126, 0.471193, -0.309021,
		0.259280, 0.169035, 0.950895,
		28.703049, 20.409254, 17.660753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153563, 20.252768, 17.191553>,  <28.521553, 20.290930, 16.995127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153563, 20.252768, 17.191553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.953096, 20.131302, 17.515682>,  <28.832817, 20.058422, 17.710159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.953096, 20.131302, 17.515682>,  <29.153563, 20.252768, 17.191553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953096, 20.131302, 17.515682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378244, -0.919089, -0.110487,
		0.778309, 0.251128, 0.575473,
		-0.501165, -0.303662, 0.810323,
		28.802748, 20.040203, 17.758780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681274, 20.205679, 16.676157>,  <29.153563, 20.252768, 17.191553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681274, 20.205679, 16.676157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079239, 20.165466, 16.678726>,  <30.318018, 20.141338, 16.680267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079239, 20.165466, 16.678726>,  <29.681274, 20.205679, 16.676157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079239, 20.165466, 16.678726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093676, 0.946743, 0.308063,
		-0.037053, -0.305894, 0.951344,
		0.994913, -0.100533, 0.006425,
		30.377712, 20.135307, 16.680655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908730, 20.594496, 17.210850>,  <29.681274, 20.205679, 16.676157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908730, 20.594496, 17.210850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.248976, 20.555687, 17.004147>,  <30.453123, 20.532402, 16.880125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.248976, 20.555687, 17.004147>,  <29.908730, 20.594496, 17.210850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248976, 20.555687, 17.004147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258901, 0.932707, 0.251054,
		0.457624, -0.347340, 0.818496,
		0.850618, -0.097021, -0.516756,
		30.504162, 20.526581, 16.849119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500498, 20.970808, 17.626324>,  <29.908730, 20.594496, 17.210850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500498, 20.970808, 17.626324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.554913, 20.953953, 17.230400>,  <30.587561, 20.943840, 16.992846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.554913, 20.953953, 17.230400>,  <30.500498, 20.970808, 17.626324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554913, 20.953953, 17.230400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395620, 0.918287, 0.015278,
		0.908284, -0.393666, 0.141590,
		0.136035, -0.042139, -0.989807,
		30.595724, 20.941311, 16.933458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215641, 21.158926, 17.557610>,  <30.500498, 20.970808, 17.626324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215641, 21.158926, 17.557610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.011387, 21.237850, 17.222870>,  <30.888834, 21.285206, 17.022026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.011387, 21.237850, 17.222870>,  <31.215641, 21.158926, 17.557610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011387, 21.237850, 17.222870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283293, 0.957573, 0.052913,
		0.811786, -0.210055, -0.544868,
		-0.510636, 0.197311, -0.836851,
		30.858196, 21.297043, 16.971815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642319, 21.676264, 17.205311>,  <31.215641, 21.158926, 17.557610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642319, 21.676264, 17.205311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.293489, 21.706985, 17.011986>,  <31.084192, 21.725418, 16.895990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.293489, 21.706985, 17.011986>,  <31.642319, 21.676264, 17.205311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293489, 21.706985, 17.011986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262310, 0.907113, -0.329149,
		0.413140, -0.413820, -0.811214,
		-0.872072, 0.076805, -0.483314,
		31.031868, 21.730026, 16.866991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764204, 22.162050, 16.781757>,  <31.642319, 21.676264, 17.205311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764204, 22.162050, 16.781757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370222, 22.115849, 16.730339>,  <31.133833, 22.088127, 16.699488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370222, 22.115849, 16.730339>,  <31.764204, 22.162050, 16.781757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370222, 22.115849, 16.730339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061594, 0.929614, -0.363351,
		0.161464, -0.349967, -0.922742,
		-0.984955, -0.115503, -0.128544,
		31.074736, 22.081198, 16.691776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547449, 22.503933, 16.035843>,  <31.764204, 22.162050, 16.781757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547449, 22.503933, 16.035843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.244221, 22.517803, 16.296345>,  <31.062284, 22.526125, 16.452644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.244221, 22.517803, 16.296345>,  <31.547449, 22.503933, 16.035843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244221, 22.517803, 16.296345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157473, 0.959307, -0.234376,
		-0.632878, -0.280228, -0.721760,
		-0.758069, 0.034674, 0.651252,
		31.016800, 22.528206, 16.491720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939320, 22.866247, 15.717024>,  <31.547449, 22.503933, 16.035843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939320, 22.866247, 15.717024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.866203, 22.907883, 16.108074>,  <30.822332, 22.932863, 16.342705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.866203, 22.907883, 16.108074>,  <30.939320, 22.866247, 15.717024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866203, 22.907883, 16.108074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242988, 0.958748, -0.147511,
		-0.952651, -0.264516, -0.149960,
		-0.182792, 0.104088, 0.977626,
		30.811365, 22.939110, 16.401361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404701, 23.307760, 15.776573>,  <30.939320, 22.866247, 15.717024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404701, 23.307760, 15.776573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.554487, 23.349888, 16.145069>,  <30.644360, 23.375164, 16.366167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.554487, 23.349888, 16.145069>,  <30.404701, 23.307760, 15.776573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554487, 23.349888, 16.145069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167135, 0.984922, -0.044664,
		-0.912053, -0.137247, 0.386422,
		0.374466, 0.105321, 0.921240,
		30.666826, 23.381485, 16.421442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034878, 23.955807, 15.856599>,  <30.404701, 23.307760, 15.776573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034878, 23.955807, 15.856599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.306244, 23.911526, 16.147114>,  <30.469065, 23.884956, 16.321423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.306244, 23.911526, 16.147114>,  <30.034878, 23.955807, 15.856599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306244, 23.911526, 16.147114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165638, 0.940081, 0.298013,
		-0.715761, -0.322479, 0.619430,
		0.678418, -0.110705, 0.726288,
		30.509769, 23.878315, 16.365000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781864, 24.270361, 16.447601>,  <30.034878, 23.955807, 15.856599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781864, 24.270361, 16.447601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.177864, 24.248371, 16.499565>,  <30.415464, 24.235176, 16.530743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.177864, 24.248371, 16.499565>,  <29.781864, 24.270361, 16.447601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177864, 24.248371, 16.499565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003114, 0.929219, 0.369517,
		-0.141027, -0.365418, 0.920098,
		0.990001, -0.054977, 0.129907,
		30.474865, 24.231878, 16.538538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882038, 24.445553, 17.148252>,  <29.781864, 24.270361, 16.447601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882038, 24.445553, 17.148252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228895, 24.515167, 16.961586>,  <30.437010, 24.556936, 16.849586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228895, 24.515167, 16.961586>,  <29.882038, 24.445553, 17.148252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228895, 24.515167, 16.961586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091097, 0.865739, 0.492136,
		0.489659, -0.469263, 0.734864,
		0.867142, 0.174035, -0.466665,
		30.489038, 24.567377, 16.821587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230299, 24.713701, 17.693140>,  <29.882038, 24.445553, 17.148252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230299, 24.713701, 17.693140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406887, 24.808964, 17.347103>,  <30.512840, 24.866121, 17.139481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406887, 24.808964, 17.347103>,  <30.230299, 24.713701, 17.693140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406887, 24.808964, 17.347103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096138, 0.946028, 0.309498,
		0.892109, -0.219803, 0.394750,
		0.441474, 0.238156, -0.865091,
		30.539330, 24.880411, 17.087576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855433, 25.004177, 17.852028>,  <30.230299, 24.713701, 17.693140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855433, 25.004177, 17.852028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.745846, 25.130310, 17.488598>,  <30.680094, 25.205990, 17.270540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.745846, 25.130310, 17.488598>,  <30.855433, 25.004177, 17.852028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745846, 25.130310, 17.488598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198387, 0.942932, 0.267435,
		0.941055, -0.106981, -0.320890,
		-0.273967, 0.315332, -0.908575,
		30.663656, 25.224909, 17.216026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342838, 25.434576, 17.600391>,  <30.855433, 25.004177, 17.852028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342838, 25.434576, 17.600391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.001377, 25.532326, 17.416409>,  <30.796501, 25.590977, 17.306019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.001377, 25.532326, 17.416409>,  <31.342838, 25.434576, 17.600391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001377, 25.532326, 17.416409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022691, 0.899707, 0.435905,
		0.520349, 0.361674, -0.773582,
		-0.853652, 0.244376, -0.459955,
		30.745281, 25.605639, 17.278421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151230, 25.547056, 17.304981>,  <31.342838, 25.434576, 17.600391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151230, 25.547056, 17.304981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451694, 25.629066, 17.555969>,  <32.631973, 25.678272, 17.706562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451694, 25.629066, 17.555969>,  <32.151230, 25.547056, 17.304981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451694, 25.629066, 17.555969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331302, -0.939250, -0.089712,
		0.570958, 0.275271, -0.773455,
		0.751163, 0.205026, 0.627470,
		32.677044, 25.690575, 17.744209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753170, 25.288105, 16.998425>,  <32.151230, 25.547056, 17.304981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753170, 25.288105, 16.998425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827316, 25.317337, 17.390404>,  <32.871803, 25.334877, 17.625591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827316, 25.317337, 17.390404>,  <32.753170, 25.288105, 16.998425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827316, 25.317337, 17.390404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176626, -0.983468, 0.039933,
		0.966666, 0.165683, -0.195207,
		0.185363, 0.073081, 0.979949,
		32.882927, 25.339262, 17.684389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425289, 24.978600, 17.079571>,  <32.753170, 25.288105, 16.998425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425289, 24.978600, 17.079571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234863, 24.970932, 17.431252>,  <33.120609, 24.966331, 17.642260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234863, 24.970932, 17.431252>,  <33.425289, 24.978600, 17.079571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234863, 24.970932, 17.431252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320562, -0.934758, 0.153193,
		0.818905, 0.354768, 0.451149,
		-0.476063, -0.019171, 0.879203,
		33.092045, 24.965181, 17.695013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942368, 24.712049, 17.472776>,  <33.425289, 24.978600, 17.079571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942368, 24.712049, 17.472776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593395, 24.643135, 17.655724>,  <33.384014, 24.601786, 17.765491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593395, 24.643135, 17.655724>,  <33.942368, 24.712049, 17.472776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593395, 24.643135, 17.655724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310158, -0.918395, 0.245669,
		0.377720, 0.356185, 0.854670,
		-0.872428, -0.172288, 0.457369,
		33.331665, 24.591448, 17.792934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195171, 24.379522, 18.088940>,  <33.942368, 24.712049, 17.472776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195171, 24.379522, 18.088940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807575, 24.285896, 18.057278>,  <33.575016, 24.229721, 18.038280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807575, 24.285896, 18.057278>,  <34.195171, 24.379522, 18.088940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807575, 24.285896, 18.057278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220034, -0.963169, 0.154567,
		-0.112420, 0.132357, 0.984806,
		-0.968993, -0.234067, -0.079157,
		33.516876, 24.215675, 18.033531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141224, 23.843754, 18.585110>,  <34.195171, 24.379522, 18.088940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141224, 23.843754, 18.585110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801414, 23.797977, 18.379116>,  <33.597530, 23.770512, 18.255520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801414, 23.797977, 18.379116>,  <34.141224, 23.843754, 18.585110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801414, 23.797977, 18.379116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123834, -0.992171, 0.016208,
		-0.512808, -0.050004, 0.857046,
		-0.849525, -0.114443, -0.514986,
		33.546558, 23.763645, 18.224621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808434, 23.285812, 18.944241>,  <34.141224, 23.843754, 18.585110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808434, 23.285812, 18.944241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658001, 23.296101, 18.573750>,  <33.567741, 23.302273, 18.351454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658001, 23.296101, 18.573750>,  <33.808434, 23.285812, 18.944241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658001, 23.296101, 18.573750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032211, -0.998648, -0.040808,
		-0.926026, -0.045182, 0.374745,
		-0.376082, 0.025718, -0.926229,
		33.545177, 23.303816, 18.295881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158340, 23.195562, 19.407207>,  <33.808434, 23.285812, 18.944241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158340, 23.195562, 19.407207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125607, 23.146736, 19.802864>,  <33.105965, 23.117439, 20.040258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125607, 23.146736, 19.802864>,  <33.158340, 23.195562, 19.407207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125607, 23.146736, 19.802864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288635, 0.952843, 0.093707,
		-0.953935, -0.277832, -0.113211,
		-0.081838, -0.122067, 0.989142,
		33.101055, 23.110115, 20.099607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471336, 23.391306, 19.528198>,  <33.158340, 23.195562, 19.407207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471336, 23.391306, 19.528198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680332, 23.422085, 19.867867>,  <32.805729, 23.440552, 20.071667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680332, 23.422085, 19.867867>,  <32.471336, 23.391306, 19.528198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680332, 23.422085, 19.867867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358274, 0.923546, 0.136758,
		-0.773724, -0.375689, 0.510107,
		0.522485, 0.076945, 0.849169,
		32.837078, 23.445168, 20.122618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015671, 23.782284, 20.024366>,  <32.471336, 23.391306, 19.528198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015671, 23.782284, 20.024366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384830, 23.829140, 20.171078>,  <32.606327, 23.857254, 20.259104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384830, 23.829140, 20.171078>,  <32.015671, 23.782284, 20.024366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384830, 23.829140, 20.171078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276032, 0.865412, 0.418174,
		-0.268430, -0.487177, 0.831026,
		0.922904, 0.117140, 0.366778,
		32.661701, 23.864281, 20.281111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962620, 24.136124, 20.714436>,  <32.015671, 23.782284, 20.024366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962620, 24.136124, 20.714436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348103, 24.203819, 20.631851>,  <32.579391, 24.244436, 20.582300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348103, 24.203819, 20.631851>,  <31.962620, 24.136124, 20.714436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348103, 24.203819, 20.631851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069190, 0.905289, 0.419124,
		0.257838, -0.389628, 0.884143,
		0.963708, 0.169240, -0.206459,
		32.637215, 24.254591, 20.569914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329052, 24.273197, 21.330416>,  <31.962620, 24.136124, 20.714436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329052, 24.273197, 21.330416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535694, 24.447472, 21.035580>,  <32.659679, 24.552036, 20.858679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535694, 24.447472, 21.035580>,  <32.329052, 24.273197, 21.330416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535694, 24.447472, 21.035580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015087, 0.856093, 0.516602,
		0.856093, -0.277998, 0.435686,
		-0.516602, -0.435686, 0.737089,
		32.690674, 24.578176, 20.814453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849331, 24.679588, 21.699234>,  <32.329052, 24.273197, 21.330416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849331, 24.679588, 21.699234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848763, 24.824001, 21.326214>,  <32.848423, 24.910648, 21.102402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848763, 24.824001, 21.326214>,  <32.849331, 24.679588, 21.699234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848763, 24.824001, 21.326214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044912, 0.931635, 0.360608,
		0.998990, -0.041370, -0.017538,
		-0.001420, 0.361031, -0.932552,
		32.848335, 24.932310, 21.046448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305576, 25.246883, 21.682838>,  <32.849331, 24.679588, 21.699234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305576, 25.246883, 21.682838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067612, 25.290039, 21.364231>,  <32.924835, 25.315933, 21.173067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067612, 25.290039, 21.364231>,  <33.305576, 25.246883, 21.682838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067612, 25.290039, 21.364231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076326, 0.994056, 0.077639,
		0.800160, -0.014607, -0.599608,
		-0.594910, 0.107889, -0.796519,
		32.889137, 25.322407, 21.125275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.530411, 20.548193, 20.713209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.482737, 20.538422, 20.316181>,  <28.454132, 20.532558, 20.077965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.482737, 20.538422, 20.316181>,  <28.530411, 20.548193, 20.713209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482737, 20.538422, 20.316181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418787, 0.905180, -0.072566,
		0.900229, -0.424325, -0.097654,
		-0.119186, -0.024430, -0.992572,
		28.446981, 20.531092, 20.018410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162712, 20.716377, 20.508606>,  <28.530411, 20.548193, 20.713209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162712, 20.716377, 20.508606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.900679, 20.774071, 20.211941>,  <28.743458, 20.808687, 20.033941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.900679, 20.774071, 20.211941>,  <29.162712, 20.716377, 20.508606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900679, 20.774071, 20.211941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335865, 0.934882, -0.114850,
		0.676801, -0.324334, -0.660869,
		-0.655084, 0.144232, -0.741662,
		28.704153, 20.817341, 19.989443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554956, 21.029701, 19.883104>,  <29.162712, 20.716377, 20.508606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554956, 21.029701, 19.883104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.172422, 21.129559, 19.822304>,  <28.942902, 21.189472, 19.785824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.172422, 21.129559, 19.822304>,  <29.554956, 21.029701, 19.883104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172422, 21.129559, 19.822304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267748, 0.956827, -0.113104,
		0.117202, -0.148863, -0.981888,
		-0.956334, 0.249643, -0.152000,
		28.885523, 21.204451, 19.776703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593124, 21.602308, 19.376787>,  <29.554956, 21.029701, 19.883104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593124, 21.602308, 19.376787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.235762, 21.608082, 19.556393>,  <29.021343, 21.611546, 19.664156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.235762, 21.608082, 19.556393>,  <29.593124, 21.602308, 19.376787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235762, 21.608082, 19.556393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109131, 0.976519, 0.185743,
		-0.435791, 0.214946, -0.874005,
		-0.893408, 0.014435, 0.449015,
		28.967739, 21.612411, 19.691097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173901, 22.247869, 19.096315>,  <29.593124, 21.602308, 19.376787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173901, 22.247869, 19.096315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.065592, 22.131474, 19.463360>,  <29.000607, 22.061636, 19.683586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.065592, 22.131474, 19.463360>,  <29.173901, 22.247869, 19.096315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065592, 22.131474, 19.463360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029916, 0.955301, 0.294116,
		-0.962179, 0.052187, -0.267374,
		-0.270772, -0.290991, 0.917610,
		28.984360, 22.044176, 19.738644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952047, 22.870815, 19.386433>,  <29.173901, 22.247869, 19.096315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952047, 22.870815, 19.386433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.912249, 22.640694, 19.711178>,  <28.888369, 22.502621, 19.906025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.912249, 22.640694, 19.711178>,  <28.952047, 22.870815, 19.386433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912249, 22.640694, 19.711178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175907, 0.813232, 0.554716,
		-0.979366, -0.087619, -0.182116,
		-0.099499, -0.575305, 0.811864,
		28.882399, 22.468102, 19.954737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303104, 23.070244, 19.784672>,  <28.952047, 22.870815, 19.386433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303104, 23.070244, 19.784672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.563318, 22.905476, 20.039898>,  <28.719446, 22.806614, 20.193033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.563318, 22.905476, 20.039898>,  <28.303104, 23.070244, 19.784672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563318, 22.905476, 20.039898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194120, 0.722047, 0.664052,
		-0.734250, -0.555850, 0.389754,
		0.650534, -0.411921, 0.638065,
		28.758478, 22.781900, 20.231318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958012, 23.092638, 20.336264>,  <28.303104, 23.070244, 19.784672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958012, 23.092638, 20.336264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.337177, 23.068626, 20.461391>,  <28.564676, 23.054220, 20.536469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.337177, 23.068626, 20.461391>,  <27.958012, 23.092638, 20.336264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337177, 23.068626, 20.461391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194372, 0.669026, 0.717373,
		-0.252347, -0.740811, 0.622511,
		0.947914, -0.060029, 0.312820,
		28.621552, 23.050617, 20.555237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971329, 23.073376, 21.178370>,  <27.958012, 23.092638, 20.336264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971329, 23.073376, 21.178370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.333302, 23.171936, 21.039585>,  <28.550486, 23.231071, 20.956314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.333302, 23.171936, 21.039585>,  <27.971329, 23.073376, 21.178370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333302, 23.171936, 21.039585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024734, 0.844393, 0.535152,
		0.424834, -0.475695, 0.770214,
		0.904933, 0.246401, -0.346962,
		28.604782, 23.245857, 20.935497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270304, 23.320696, 21.763987>,  <27.971329, 23.073376, 21.178370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270304, 23.320696, 21.763987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.522093, 23.469463, 21.491093>,  <28.673166, 23.558723, 21.327356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.522093, 23.469463, 21.491093>,  <28.270304, 23.320696, 21.763987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522093, 23.469463, 21.491093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150278, 0.803162, 0.576496,
		0.762352, -0.465413, 0.449677,
		0.629472, 0.371917, -0.682234,
		28.710934, 23.581039, 21.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939903, 23.704918, 22.112906>,  <28.270304, 23.320696, 21.763987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939903, 23.704918, 22.112906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.932766, 23.841679, 21.737080>,  <28.928484, 23.923735, 21.511583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.932766, 23.841679, 21.737080>,  <28.939903, 23.704918, 22.112906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932766, 23.841679, 21.737080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085122, 0.936824, 0.339287,
		0.996211, -0.073924, -0.045819,
		-0.017843, 0.341902, -0.939566,
		28.927414, 23.944248, 21.455210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508652, 24.322956, 22.036749>,  <28.939903, 23.704918, 22.112906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508652, 24.322956, 22.036749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.240168, 24.389355, 21.747772>,  <29.079077, 24.429193, 21.574387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.240168, 24.389355, 21.747772>,  <29.508652, 24.322956, 22.036749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240168, 24.389355, 21.747772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050546, 0.962086, 0.268022,
		0.739540, 0.216416, -0.637373,
		-0.671212, 0.165996, -0.722440,
		29.038805, 24.439154, 21.531040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035786, 24.771902, 22.428864>,  <29.508652, 24.322956, 22.036749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035786, 24.771902, 22.428864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.002436, 24.551041, 22.760689>,  <29.982426, 24.418524, 22.959784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.002436, 24.551041, 22.760689>,  <30.035786, 24.771902, 22.428864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002436, 24.551041, 22.760689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371436, -0.789693, -0.488283,
		0.924707, 0.267419, 0.270930,
		-0.083376, -0.552152, 0.829564,
		29.977423, 24.385395, 23.009558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616909, 24.388351, 22.280432>,  <30.035786, 24.771902, 22.428864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616909, 24.388351, 22.280432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.424013, 24.223587, 22.589695>,  <30.308275, 24.124729, 22.775253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.424013, 24.223587, 22.589695>,  <30.616909, 24.388351, 22.280432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424013, 24.223587, 22.589695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482264, -0.861616, -0.158237,
		0.731346, 0.296559, 0.614154,
		-0.482239, -0.411910, 0.773160,
		30.279341, 24.100014, 22.821644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161936, 23.988794, 22.560612>,  <30.616909, 24.388351, 22.280432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161936, 23.988794, 22.560612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.814352, 23.845264, 22.696938>,  <30.605803, 23.759146, 22.778734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.814352, 23.845264, 22.696938>,  <31.161936, 23.988794, 22.560612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814352, 23.845264, 22.696938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282531, -0.925116, -0.253645,
		0.406309, -0.124116, 0.905267,
		-0.868958, -0.358825, 0.340817,
		30.553665, 23.737617, 22.799183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343008, 23.364578, 23.027477>,  <31.161936, 23.988794, 22.560612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343008, 23.364578, 23.027477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.978689, 23.365261, 22.862335>,  <30.760098, 23.365671, 22.763250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.978689, 23.365261, 22.862335>,  <31.343008, 23.364578, 23.027477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978689, 23.365261, 22.862335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147064, -0.933055, -0.328298,
		-0.385775, -0.359728, 0.849572,
		-0.910796, 0.001708, -0.412853,
		30.705450, 23.365774, 22.738480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209919, 22.660957, 23.032854>,  <31.343008, 23.364578, 23.027477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209919, 22.660957, 23.032854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.921083, 22.787144, 22.786579>,  <30.747782, 22.862856, 22.638815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.921083, 22.787144, 22.786579>,  <31.209919, 22.660957, 23.032854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921083, 22.787144, 22.786579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064473, -0.916790, -0.394131,
		-0.688790, -0.244903, 0.682342,
		-0.722088, 0.315466, -0.615686,
		30.704456, 22.881784, 22.601873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593540, 22.076141, 23.052263>,  <31.209919, 22.660957, 23.032854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593540, 22.076141, 23.052263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519096, 22.279106, 22.715717>,  <30.474430, 22.400885, 22.513790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519096, 22.279106, 22.715717>,  <30.593540, 22.076141, 23.052263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519096, 22.279106, 22.715717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014910, -0.857687, -0.513957,
		-0.982416, -0.083109, 0.167191,
		-0.186111, 0.507412, -0.841365,
		30.463263, 22.431330, 22.463308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971533, 21.833641, 22.785202>,  <30.593540, 22.076141, 23.052263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971533, 21.833641, 22.785202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.193199, 21.990910, 22.491722>,  <30.326199, 22.085272, 22.315634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.193199, 21.990910, 22.491722>,  <29.971533, 21.833641, 22.785202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193199, 21.990910, 22.491722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025454, -0.889011, -0.457177,
		-0.832016, 0.234677, -0.502669,
		0.554167, 0.393174, -0.733698,
		30.359449, 22.108862, 22.271612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685963, 21.567480, 22.156954>,  <29.971533, 21.833641, 22.785202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685963, 21.567480, 22.156954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.051334, 21.683060, 22.042301>,  <30.270557, 21.752407, 21.973509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.051334, 21.683060, 22.042301>,  <29.685963, 21.567480, 22.156954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051334, 21.683060, 22.042301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048796, -0.776924, -0.627701,
		-0.404066, 0.559373, -0.723763,
		0.913428, 0.288949, -0.286633,
		30.325363, 21.769745, 21.956312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717396, 21.418530, 21.490767>,  <29.685963, 21.567480, 22.156954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717396, 21.418530, 21.490767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.107231, 21.450066, 21.574635>,  <30.341133, 21.468987, 21.624956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.107231, 21.450066, 21.574635>,  <29.717396, 21.418530, 21.490767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107231, 21.450066, 21.574635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212434, -0.622217, -0.753471,
		0.071057, 0.778865, -0.623154,
		0.974589, 0.078840, 0.209670,
		30.399609, 21.473717, 21.637535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906586, 21.341499, 20.872545>,  <29.717396, 21.418530, 21.490767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906586, 21.341499, 20.872545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.240225, 21.293171, 21.087833>,  <30.440409, 21.264174, 21.217007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.240225, 21.293171, 21.087833>,  <29.906586, 21.341499, 20.872545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240225, 21.293171, 21.087833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354711, -0.629758, -0.691075,
		0.422445, 0.767338, -0.482424,
		0.834098, -0.120820, 0.538222,
		30.490454, 21.256926, 21.249300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436043, 21.368568, 20.400974>,  <29.906586, 21.341499, 20.872545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436043, 21.368568, 20.400974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.572535, 21.156952, 20.711761>,  <30.654430, 21.029982, 20.898233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.572535, 21.156952, 20.711761>,  <30.436043, 21.368568, 20.400974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572535, 21.156952, 20.711761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267304, -0.737839, -0.619792,
		0.901172, 0.419178, -0.110358,
		0.341230, -0.529041, 0.776968,
		30.674904, 20.998240, 20.944851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097614, 21.029020, 20.190649>,  <30.436043, 21.368568, 20.400974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097614, 21.029020, 20.190649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.052393, 20.805714, 20.519417>,  <31.025259, 20.671730, 20.716679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.052393, 20.805714, 20.519417>,  <31.097614, 21.029020, 20.190649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052393, 20.805714, 20.519417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533459, -0.731989, -0.423808,
		0.838236, 0.390548, 0.380568,
		-0.113054, -0.558269, 0.821921,
		31.018476, 20.638233, 20.765993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754446, 20.601078, 20.264778>,  <31.097614, 21.029020, 20.190649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754446, 20.601078, 20.264778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.474535, 20.414257, 20.480991>,  <31.306589, 20.302164, 20.610720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.474535, 20.414257, 20.480991>,  <31.754446, 20.601078, 20.264778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474535, 20.414257, 20.480991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305801, -0.879682, -0.364206,
		0.645600, -0.089567, 0.758405,
		-0.699776, -0.467052, 0.540533,
		31.264603, 20.274141, 20.643152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127106, 20.136219, 20.608873>,  <31.754446, 20.601078, 20.264778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127106, 20.136219, 20.608873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750963, 20.000397, 20.617214>,  <31.525278, 19.918903, 20.622219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750963, 20.000397, 20.617214>,  <32.127106, 20.136219, 20.608873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750963, 20.000397, 20.617214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305249, -0.869229, -0.388926,
		0.150188, -0.359364, 0.921033,
		-0.940355, -0.339557, 0.020852,
		31.468857, 19.898529, 20.623470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086571, 20.645842, 21.169434>,  <32.127106, 20.136219, 20.608873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086571, 20.645842, 21.169434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.454128, 20.506153, 21.096020>,  <32.674664, 20.422340, 21.051971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.454128, 20.506153, 21.096020>,  <32.086571, 20.645842, 21.169434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454128, 20.506153, 21.096020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322401, 0.932840, -0.160833,
		0.227376, 0.088616, 0.969767,
		0.918890, -0.349223, -0.183535,
		32.729794, 20.401386, 21.040958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564732, 20.977514, 21.585142>,  <32.086571, 20.645842, 21.169434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564732, 20.977514, 21.585142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751099, 20.850368, 21.254837>,  <32.862919, 20.774080, 21.056654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751099, 20.850368, 21.254837>,  <32.564732, 20.977514, 21.585142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751099, 20.850368, 21.254837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208185, 0.946427, -0.246850,
		0.859988, -0.056900, 0.507132,
		0.465917, -0.317865, -0.825762,
		32.890873, 20.755009, 21.007109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077061, 21.471512, 21.533438>,  <32.564732, 20.977514, 21.585142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077061, 21.471512, 21.533438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.107910, 21.295181, 21.175728>,  <33.126419, 21.189383, 20.961102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.107910, 21.295181, 21.175728>,  <33.077061, 21.471512, 21.533438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107910, 21.295181, 21.175728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141906, 0.892667, -0.427795,
		0.986871, -0.093910, 0.131402,
		0.077124, -0.440826, -0.894273,
		33.131046, 21.162933, 20.907446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712326, 21.672205, 21.253342>,  <33.077061, 21.471512, 21.533438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712326, 21.672205, 21.253342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.443264, 21.591072, 20.968697>,  <33.281826, 21.542393, 20.797911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.443264, 21.591072, 20.968697>,  <33.712326, 21.672205, 21.253342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443264, 21.591072, 20.968697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158119, 0.900083, -0.406015,
		0.722862, -0.385629, -0.573377,
		-0.672659, -0.202831, -0.711611,
		33.241467, 21.530222, 20.755213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055813, 21.881704, 20.569950>,  <33.712326, 21.672205, 21.253342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055813, 21.881704, 20.569950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656399, 21.883335, 20.548367>,  <33.416752, 21.884314, 20.535418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656399, 21.883335, 20.548367>,  <34.055813, 21.881704, 20.569950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656399, 21.883335, 20.548367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018365, 0.963494, -0.267100,
		0.050900, -0.267700, -0.962157,
		-0.998535, 0.004075, -0.053958,
		33.356838, 21.884558, 20.532179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013947, 22.325521, 20.048122>,  <34.055813, 21.881704, 20.569950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013947, 22.325521, 20.048122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.639023, 22.322758, 20.187492>,  <33.414066, 22.321098, 20.271114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.639023, 22.322758, 20.187492>,  <34.013947, 22.325521, 20.048122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639023, 22.322758, 20.187492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122521, 0.942512, -0.310903,
		-0.326245, -0.334102, -0.884274,
		-0.937312, -0.006911, 0.348424,
		33.357830, 22.320684, 20.292019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583244, 22.582600, 19.498688>,  <34.013947, 22.325521, 20.048122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583244, 22.582600, 19.498688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.370392, 22.625988, 19.834560>,  <33.242680, 22.652021, 20.036083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.370392, 22.625988, 19.834560>,  <33.583244, 22.582600, 19.498688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370392, 22.625988, 19.834560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231239, 0.935433, -0.267384,
		-0.814470, -0.336452, -0.472694,
		-0.532135, 0.108471, 0.839682,
		33.210751, 22.658529, 20.086466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326576, 22.655193, 18.860243>,  <33.583244, 22.582600, 19.498688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326576, 22.655193, 18.860243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.363178, 22.754097, 18.474396>,  <33.385139, 22.813438, 18.242887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.363178, 22.754097, 18.474396>,  <33.326576, 22.655193, 18.860243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363178, 22.754097, 18.474396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152321, -0.953808, -0.258937,
		-0.984086, 0.170627, -0.049620,
		0.091510, 0.247258, -0.964619,
		33.390633, 22.828274, 18.185011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706497, 22.450693, 18.563564>,  <33.326576, 22.655193, 18.860243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706497, 22.450693, 18.563564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963844, 22.478077, 18.258568>,  <33.118252, 22.494507, 18.075571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963844, 22.478077, 18.258568>,  <32.706497, 22.450693, 18.563564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963844, 22.478077, 18.258568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226540, -0.934362, -0.275041,
		-0.731270, 0.349688, -0.585630,
		0.643369, 0.068461, -0.762489,
		33.156857, 22.498615, 18.029821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368103, 22.178104, 18.085712>,  <32.706497, 22.450693, 18.563564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368103, 22.178104, 18.085712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748497, 22.161018, 17.963207>,  <32.976734, 22.150766, 17.889704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748497, 22.161018, 17.963207>,  <32.368103, 22.178104, 18.085712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748497, 22.161018, 17.963207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105766, -0.975612, -0.192341,
		-0.290579, 0.215306, -0.932313,
		0.950988, -0.042717, -0.306264,
		33.033794, 22.148203, 17.871328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381401, 21.608648, 17.687504>,  <32.368103, 22.178104, 18.085712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381401, 21.608648, 17.687504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.773190, 21.673290, 17.735710>,  <33.008263, 21.712074, 17.764633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.773190, 21.673290, 17.735710>,  <32.381401, 21.608648, 17.687504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773190, 21.673290, 17.735710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187356, -0.950399, -0.248274,
		0.074416, 0.265757, -0.961164,
		0.979469, 0.161604, 0.120516,
		33.067032, 21.721771, 17.771866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700188, 21.472319, 17.093000>,  <32.381401, 21.608648, 17.687504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700188, 21.472319, 17.093000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.957844, 21.402184, 17.390816>,  <33.112438, 21.360102, 17.569504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.957844, 21.402184, 17.390816>,  <32.700188, 21.472319, 17.093000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957844, 21.402184, 17.390816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035739, -0.965410, -0.258274,
		0.764069, 0.192975, -0.615597,
		0.644144, -0.175339, 0.744537,
		33.151089, 21.349583, 17.614178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103237, 20.928387, 16.819183>,  <32.700188, 21.472319, 17.093000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103237, 20.928387, 16.819183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.128414, 20.910431, 17.217987>,  <33.143520, 20.899658, 17.457270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.128414, 20.910431, 17.217987>,  <33.103237, 20.928387, 16.819183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128414, 20.910431, 17.217987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172207, -0.984493, -0.033455,
		0.983048, -0.169586, -0.069696,
		0.062942, -0.044890, 0.997007,
		33.147297, 20.896963, 17.517090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412060, 20.260653, 16.973686>,  <33.103237, 20.928387, 16.819183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412060, 20.260653, 16.973686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.230625, 20.319191, 17.325333>,  <33.121765, 20.354315, 17.536320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.230625, 20.319191, 17.325333>,  <33.412060, 20.260653, 16.973686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230625, 20.319191, 17.325333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424109, -0.903017, -0.068495,
		0.783832, -0.403909, 0.471662,
		-0.453585, 0.146348, 0.879115,
		33.094551, 20.363096, 17.589067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519497, 19.635889, 17.358009>,  <33.412060, 20.260653, 16.973686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519497, 19.635889, 17.358009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.205738, 19.813679, 17.531063>,  <33.017483, 19.920353, 17.634895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.205738, 19.813679, 17.531063>,  <33.519497, 19.635889, 17.358009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205738, 19.813679, 17.531063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437541, -0.890887, 0.121975,
		0.439641, -0.093619, 0.893281,
		-0.784393, 0.444472, 0.432633,
		32.970421, 19.947020, 17.660852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487049, 19.421566, 18.065657>,  <33.519497, 19.635889, 17.358009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487049, 19.421566, 18.065657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.119030, 19.491268, 17.925285>,  <32.898220, 19.533089, 17.841063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.119030, 19.491268, 17.925285>,  <33.487049, 19.421566, 18.065657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119030, 19.491268, 17.925285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240597, -0.958169, 0.154999,
		-0.309240, 0.227038, 0.923485,
		-0.920045, 0.174256, -0.350929,
		32.843018, 19.543545, 17.820007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.006384, 35.188381, 20.078865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667116, 35.114235, 19.880371>,  <29.463556, 35.069748, 19.761274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667116, 35.114235, 19.880371>,  <30.006384, 35.188381, 20.078865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667116, 35.114235, 19.880371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411748, -0.820072, -0.397423,
		-0.333278, -0.541405, 0.771885,
		-0.848168, -0.185370, -0.496235,
		29.412666, 35.058624, 19.731501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826839, 34.490326, 20.334829>,  <30.006384, 35.188381, 20.078865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826839, 34.490326, 20.334829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636017, 34.570324, 19.992504>,  <29.521523, 34.618320, 19.787109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636017, 34.570324, 19.992504>,  <29.826839, 34.490326, 20.334829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636017, 34.570324, 19.992504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251059, -0.902179, -0.350775,
		-0.842249, -0.382200, 0.380183,
		-0.477059, 0.199991, -0.855814,
		29.492899, 34.630322, 19.735760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381184, 33.907459, 20.293814>,  <29.826839, 34.490326, 20.334829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381184, 33.907459, 20.293814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401899, 34.068012, 19.928036>,  <29.414330, 34.164345, 19.708569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401899, 34.068012, 19.928036>,  <29.381184, 33.907459, 20.293814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401899, 34.068012, 19.928036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566892, -0.765659, -0.303973,
		-0.822163, -0.502648, -0.267196,
		0.051790, 0.401387, -0.914443,
		29.417437, 34.188427, 19.653702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273640, 33.268425, 19.820250>,  <29.381184, 33.907459, 20.293814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273640, 33.268425, 19.820250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418943, 33.558315, 19.586048>,  <29.506126, 33.732250, 19.445528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418943, 33.558315, 19.586048>,  <29.273640, 33.268425, 19.820250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418943, 33.558315, 19.586048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522778, -0.678731, -0.515779,
		-0.771198, -0.118727, -0.625426,
		0.363260, 0.724726, -0.585503,
		29.527922, 33.775734, 19.410397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242996, 33.014797, 19.117476>,  <29.273640, 33.268425, 19.820250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242996, 33.014797, 19.117476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516233, 33.306931, 19.118458>,  <29.680176, 33.482208, 19.119047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516233, 33.306931, 19.118458>,  <29.242996, 33.014797, 19.117476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516233, 33.306931, 19.118458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635231, -0.592479, -0.495430,
		-0.360373, 0.339983, -0.868644,
		0.683091, 0.730329, 0.002454,
		29.721161, 33.526028, 19.119194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524530, 33.067066, 18.438833>,  <29.242996, 33.014797, 19.117476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524530, 33.067066, 18.438833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792513, 33.215359, 18.696117>,  <29.953302, 33.304333, 18.850489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792513, 33.215359, 18.696117>,  <29.524530, 33.067066, 18.438833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792513, 33.215359, 18.696117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725683, -0.509847, -0.461995,
		0.156666, 0.776284, -0.610605,
		0.669955, 0.370727, 0.643213,
		29.993500, 33.326576, 18.889082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035519, 33.073135, 18.041788>,  <29.524530, 33.067066, 18.438833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035519, 33.073135, 18.041788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202089, 33.103722, 18.404167>,  <30.302032, 33.122074, 18.621595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202089, 33.103722, 18.404167>,  <30.035519, 33.073135, 18.041788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202089, 33.103722, 18.404167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772087, -0.555909, -0.307973,
		0.480073, 0.827719, -0.290537,
		0.416427, 0.076470, 0.905947,
		30.327017, 33.126663, 18.675951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727337, 33.096088, 17.946478>,  <30.035519, 33.073135, 18.041788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727337, 33.096088, 17.946478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707981, 32.987503, 18.330971>,  <30.696367, 32.922352, 18.561666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707981, 32.987503, 18.330971>,  <30.727337, 33.096088, 17.946478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707981, 32.987503, 18.330971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676478, -0.716947, -0.168419,
		0.734872, 0.642101, 0.218334,
		-0.048392, -0.271465, 0.961231,
		30.693464, 32.906063, 18.619341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477715, 33.098141, 18.236959>,  <30.727337, 33.096088, 17.946478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477715, 33.098141, 18.236959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253323, 32.896904, 18.499928>,  <31.118687, 32.776161, 18.657709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253323, 32.896904, 18.499928>,  <31.477715, 33.098141, 18.236959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253323, 32.896904, 18.499928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659614, -0.751505, -0.012236,
		0.500211, 0.426780, 0.753424,
		-0.560980, -0.503090, 0.657421,
		31.085028, 32.745975, 18.697153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897408, 32.833641, 18.814888>,  <31.477715, 33.098141, 18.236959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897408, 32.833641, 18.814888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578297, 32.597748, 18.764656>,  <31.386831, 32.456211, 18.734516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578297, 32.597748, 18.764656>,  <31.897408, 32.833641, 18.814888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578297, 32.597748, 18.764656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602954, -0.780053, -0.167222,
		0.000656, -0.209126, 0.977889,
		-0.797775, -0.589732, -0.125582,
		31.338964, 32.420830, 18.726982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030155, 32.281666, 19.360935>,  <31.897408, 32.833641, 18.814888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030155, 32.281666, 19.360935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774313, 32.137554, 19.089317>,  <31.620808, 32.051086, 18.926346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774313, 32.137554, 19.089317>,  <32.030155, 32.281666, 19.360935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774313, 32.137554, 19.089317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498384, -0.866905, -0.009488,
		-0.585249, -0.344494, 0.734035,
		-0.639607, -0.360278, -0.679045,
		31.582432, 32.029472, 18.885603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952946, 31.555075, 19.570089>,  <32.030155, 32.281666, 19.360935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952946, 31.555075, 19.570089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805201, 31.560471, 19.198414>,  <31.716553, 31.563707, 18.975409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805201, 31.560471, 19.198414>,  <31.952946, 31.555075, 19.570089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805201, 31.560471, 19.198414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179939, -0.979933, -0.085752,
		-0.911698, -0.198870, 0.359524,
		-0.369363, 0.013488, -0.929187,
		31.694391, 31.564516, 18.919657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522676, 31.304466, 20.183857>,  <31.952946, 31.555075, 19.570089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522676, 31.304466, 20.183857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591534, 31.219788, 20.568680>,  <31.632849, 31.168980, 20.799574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591534, 31.219788, 20.568680>,  <31.522676, 31.304466, 20.183857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591534, 31.219788, 20.568680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195722, 0.964514, 0.177218,
		-0.965432, 0.157789, 0.207468,
		0.172142, -0.211698, 0.962055,
		31.643177, 31.156279, 20.857296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030340, 31.736069, 20.505249>,  <31.522676, 31.304466, 20.183857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030340, 31.736069, 20.505249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317799, 31.643887, 20.767681>,  <31.490273, 31.588577, 20.925140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317799, 31.643887, 20.767681>,  <31.030340, 31.736069, 20.505249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317799, 31.643887, 20.767681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172319, 0.973078, 0.153054,
		-0.673688, 0.003063, 0.739009,
		0.718645, -0.230456, 0.656079,
		31.533392, 31.574749, 20.964504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915960, 32.214474, 21.019707>,  <31.030340, 31.736069, 20.505249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915960, 32.214474, 21.019707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274216, 32.071674, 21.125824>,  <31.489170, 31.985994, 21.189495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274216, 32.071674, 21.125824>,  <30.915960, 32.214474, 21.019707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274216, 32.071674, 21.125824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204230, 0.859954, 0.467728,
		-0.395118, -0.364736, 0.843119,
		0.895640, -0.356998, 0.265293,
		31.542908, 31.964575, 21.205412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951700, 32.280441, 21.808918>,  <30.915960, 32.214474, 21.019707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951700, 32.280441, 21.808918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329914, 32.274872, 21.678829>,  <31.556843, 32.271530, 21.600777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329914, 32.274872, 21.678829>,  <30.951700, 32.280441, 21.808918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329914, 32.274872, 21.678829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220673, 0.761887, 0.608960,
		0.239303, -0.647561, 0.723464,
		0.945536, -0.013923, -0.325221,
		31.613575, 32.270695, 21.581263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439085, 32.101715, 22.308283>,  <30.951700, 32.280441, 21.808918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439085, 32.101715, 22.308283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647383, 32.328777, 22.053223>,  <31.772362, 32.465015, 21.900187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647383, 32.328777, 22.053223>,  <31.439085, 32.101715, 22.308283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647383, 32.328777, 22.053223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205584, 0.641549, 0.739019,
		0.828590, -0.515930, 0.217382,
		0.520744, 0.567653, -0.637648,
		31.803606, 32.499073, 21.861929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068981, 32.245117, 22.602964>,  <31.439085, 32.101715, 22.308283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068981, 32.245117, 22.602964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095654, 32.529030, 22.322460>,  <32.111656, 32.699375, 22.154158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095654, 32.529030, 22.322460>,  <32.068981, 32.245117, 22.602964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095654, 32.529030, 22.322460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361691, 0.637828, 0.679967,
		0.929910, -0.298979, -0.214192,
		0.066679, 0.709780, -0.701261,
		32.115658, 32.741962, 22.112082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679756, 32.595505, 22.618896>,  <32.068981, 32.245117, 22.602964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679756, 32.595505, 22.618896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465305, 32.864498, 22.414803>,  <32.336636, 33.025894, 22.292347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465305, 32.864498, 22.414803>,  <32.679756, 32.595505, 22.618896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465305, 32.864498, 22.414803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441965, 0.738595, 0.509063,
		0.719191, 0.047416, -0.693192,
		-0.536126, 0.672480, -0.510235,
		32.304466, 33.066242, 22.261732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125923, 33.076366, 22.511776>,  <32.679756, 32.595505, 22.618896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125923, 33.076366, 22.511776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776730, 33.253113, 22.429173>,  <32.567211, 33.359161, 22.379610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776730, 33.253113, 22.429173>,  <33.125923, 33.076366, 22.511776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776730, 33.253113, 22.429173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242638, 0.760727, 0.602014,
		0.423108, 0.475443, -0.771319,
		-0.872987, 0.441868, -0.206509,
		32.514832, 33.385674, 22.367220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314430, 33.750847, 22.351414>,  <33.125923, 33.076366, 22.511776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314430, 33.750847, 22.351414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934944, 33.756310, 22.477749>,  <32.707253, 33.759586, 22.553551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934944, 33.756310, 22.477749>,  <33.314430, 33.750847, 22.351414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934944, 33.756310, 22.477749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232983, 0.705484, 0.669336,
		-0.213681, 0.708594, -0.672484,
		-0.948715, 0.013653, 0.315839,
		32.650330, 33.760406, 22.572500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201488, 34.514385, 22.454599>,  <33.314430, 33.750847, 22.351414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201488, 34.514385, 22.454599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930561, 34.314369, 22.670452>,  <32.768005, 34.194359, 22.799963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930561, 34.314369, 22.670452>,  <33.201488, 34.514385, 22.454599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930561, 34.314369, 22.670452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153470, 0.621327, 0.768375,
		-0.719507, 0.603249, -0.344093,
		-0.677316, -0.500043, 0.539630,
		32.727367, 34.164356, 22.832340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572479, 35.001919, 22.755867>,  <33.201488, 34.514385, 22.454599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572479, 35.001919, 22.755867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591854, 34.671810, 22.980930>,  <32.603477, 34.473743, 23.115969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591854, 34.671810, 22.980930>,  <32.572479, 35.001919, 22.755867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591854, 34.671810, 22.980930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046010, 0.564563, 0.824107,
		-0.997766, -0.014028, 0.065316,
		0.048435, -0.825271, 0.562656,
		32.606384, 34.424229, 23.149727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119038, 35.202896, 23.423624>,  <32.572479, 35.001919, 22.755867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119038, 35.202896, 23.423624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338264, 34.880703, 23.513798>,  <32.469799, 34.687386, 23.567902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338264, 34.880703, 23.513798>,  <32.119038, 35.202896, 23.423624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338264, 34.880703, 23.513798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020300, 0.282250, 0.959126,
		-0.836189, -0.521088, 0.171043,
		0.548066, -0.805483, 0.225436,
		32.502686, 34.639057, 23.581429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811918, 34.858864, 24.086935>,  <32.119038, 35.202896, 23.423624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811918, 34.858864, 24.086935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198105, 34.762253, 24.047874>,  <32.429817, 34.704285, 24.024437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198105, 34.762253, 24.047874>,  <31.811918, 34.858864, 24.086935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198105, 34.762253, 24.047874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181590, 0.355115, 0.917016,
		-0.186807, -0.903082, 0.386712,
		0.965468, -0.241528, -0.097653,
		32.487743, 34.689793, 24.018579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101494, 34.809456, 24.855392>,  <31.811918, 34.858864, 24.086935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101494, 34.809456, 24.855392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433430, 34.830044, 24.633144>,  <32.632591, 34.842396, 24.499796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433430, 34.830044, 24.633144>,  <32.101494, 34.809456, 24.855392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433430, 34.830044, 24.633144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487409, 0.417895, 0.766679,
		0.271651, -0.907036, 0.321699,
		0.829842, 0.051470, -0.555620,
		32.682381, 34.845486, 24.466459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439825, 34.550503, 25.199146>,  <32.101494, 34.809456, 24.855392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439825, 34.550503, 25.199146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154423, 34.706665, 25.431866>,  <30.983181, 34.800362, 25.571497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154423, 34.706665, 25.431866>,  <31.439825, 34.550503, 25.199146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154423, 34.706665, 25.431866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344476, -0.918548, 0.193921,
		0.610118, -0.062051, 0.789877,
		-0.713507, 0.390408, 0.581798,
		30.940371, 34.823788, 25.606405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414755, 34.470856, 25.984381>,  <31.439825, 34.550503, 25.199146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414755, 34.470856, 25.984381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036591, 34.499584, 25.857235>,  <30.809692, 34.516823, 25.780949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036591, 34.499584, 25.857235>,  <31.414755, 34.470856, 25.984381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036591, 34.499584, 25.857235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201637, -0.895200, 0.397441,
		-0.256004, 0.439838, 0.860816,
		-0.945412, 0.071826, -0.317862,
		30.752966, 34.521133, 25.761877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997187, 34.111988, 26.387564>,  <31.414755, 34.470856, 25.984381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997187, 34.111988, 26.387564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816465, 34.115479, 26.030735>,  <30.708033, 34.117573, 25.816637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816465, 34.115479, 26.030735>,  <30.997187, 34.111988, 26.387564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816465, 34.115479, 26.030735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363678, -0.914894, 0.175238,
		-0.814623, 0.403601, 0.416529,
		-0.451805, 0.008730, -0.892074,
		30.680923, 34.118099, 25.763113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426435, 33.796200, 26.469488>,  <30.997187, 34.111988, 26.387564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426435, 33.796200, 26.469488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438772, 33.771065, 26.070469>,  <30.446175, 33.755985, 25.831059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438772, 33.771065, 26.070469>,  <30.426435, 33.796200, 26.469488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438772, 33.771065, 26.070469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341892, -0.938484, 0.048547,
		-0.939233, 0.339557, -0.050426,
		0.030840, -0.062838, -0.997547,
		30.448025, 33.752213, 25.771204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845942, 33.435555, 26.317774>,  <30.426435, 33.796200, 26.469488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845942, 33.435555, 26.317774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051170, 33.398300, 25.976463>,  <30.174309, 33.375946, 25.771677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051170, 33.398300, 25.976463>,  <29.845942, 33.435555, 26.317774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051170, 33.398300, 25.976463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282821, -0.956927, -0.065606,
		-0.810413, 0.274985, -0.517315,
		0.513073, -0.093140, -0.853277,
		30.205091, 33.370358, 25.720480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389244, 33.173588, 25.703604>,  <29.845942, 33.435555, 26.317774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389244, 33.173588, 25.703604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758909, 33.062611, 25.598576>,  <29.980709, 32.996025, 25.535559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758909, 33.062611, 25.598576>,  <29.389244, 33.173588, 25.703604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758909, 33.062611, 25.598576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320863, -0.936800, -0.139474,
		-0.207281, 0.213147, -0.954779,
		0.924165, -0.277443, -0.262572,
		30.036160, 32.979378, 25.519804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411131, 32.799950, 25.102533>,  <29.389244, 33.173588, 25.703604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411131, 32.799950, 25.102533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769720, 32.689014, 25.240765>,  <29.984873, 32.622452, 25.323704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769720, 32.689014, 25.240765>,  <29.411131, 32.799950, 25.102533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769720, 32.689014, 25.240765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136122, -0.914562, -0.380850,
		0.421677, 0.294380, -0.857630,
		0.896471, -0.277337, 0.345578,
		30.038662, 32.605812, 25.344439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814962, 32.338886, 24.555361>,  <29.411131, 32.799950, 25.102533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814962, 32.338886, 24.555361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977192, 32.260250, 24.912430>,  <30.074530, 32.213070, 25.126671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977192, 32.260250, 24.912430>,  <29.814962, 32.338886, 24.555361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977192, 32.260250, 24.912430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107065, -0.980093, -0.167194,
		0.907770, -0.027764, -0.418550,
		0.405576, -0.196586, 0.892672,
		30.098866, 32.201275, 25.180231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423172, 31.847330, 24.464340>,  <29.814962, 32.338886, 24.555361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423172, 31.847330, 24.464340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314703, 31.803947, 24.846901>,  <30.249622, 31.777918, 25.076437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314703, 31.803947, 24.846901>,  <30.423172, 31.847330, 24.464340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314703, 31.803947, 24.846901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027056, -0.992380, -0.120206,
		0.962151, -0.058472, 0.266171,
		-0.271172, -0.108455, 0.956401,
		30.233351, 31.771412, 25.133821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892036, 31.333900, 24.711828>,  <30.423172, 31.847330, 24.464340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892036, 31.333900, 24.711828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593115, 31.340343, 24.977543>,  <30.413761, 31.344210, 25.136972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593115, 31.340343, 24.977543>,  <30.892036, 31.333900, 24.711828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593115, 31.340343, 24.977543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092939, -0.992413, -0.080487,
		0.657951, -0.121886, 0.743132,
		-0.747304, 0.016109, 0.664287,
		30.368923, 31.345177, 25.176828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043556, 30.867527, 25.158396>,  <30.892036, 31.333900, 24.711828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043556, 30.867527, 25.158396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647425, 30.900188, 25.203266>,  <30.409746, 30.919786, 25.230188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647425, 30.900188, 25.203266>,  <31.043556, 30.867527, 25.158396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647425, 30.900188, 25.203266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080816, -0.996657, 0.012008,
		0.112780, 0.002826, 0.993616,
		-0.990328, 0.081655, 0.112174,
		30.350327, 30.924685, 25.236917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877073, 30.364622, 25.612707>,  <31.043556, 30.867527, 25.158396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877073, 30.364622, 25.612707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527660, 30.429382, 25.429085>,  <30.318012, 30.468239, 25.318911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527660, 30.429382, 25.429085>,  <30.877073, 30.364622, 25.612707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527660, 30.429382, 25.429085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155360, -0.986474, -0.052274,
		-0.461312, 0.025656, 0.886867,
		-0.873530, 0.161898, -0.459058,
		30.265602, 30.477951, 25.291367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367760, 29.920290, 25.994669>,  <30.877073, 30.364622, 25.612707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367760, 29.920290, 25.994669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193340, 30.004848, 25.644772>,  <30.088688, 30.055584, 25.434834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193340, 30.004848, 25.644772>,  <30.367760, 29.920290, 25.994669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193340, 30.004848, 25.644772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249255, -0.962361, -0.108318,
		-0.864716, 0.170802, 0.472327,
		-0.436049, 0.211394, -0.874743,
		30.062527, 30.068266, 25.382349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799625, 29.555458, 26.087925>,  <30.367760, 29.920290, 25.994669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799625, 29.555458, 26.087925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842909, 29.649734, 25.701611>,  <29.868879, 29.706301, 25.469822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842909, 29.649734, 25.701611>,  <29.799625, 29.555458, 26.087925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842909, 29.649734, 25.701611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242920, -0.935771, -0.255585,
		-0.963992, 0.262264, -0.044004,
		0.108208, 0.235692, -0.965785,
		29.875372, 29.720442, 25.411875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248463, 29.326376, 25.867163>,  <29.799625, 29.555458, 26.087925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248463, 29.326376, 25.867163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507740, 29.340919, 25.562920>,  <29.663307, 29.349646, 25.380375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507740, 29.340919, 25.562920>,  <29.248463, 29.326376, 25.867163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507740, 29.340919, 25.562920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147981, -0.973801, -0.172663,
		-0.746957, 0.224474, -0.625831,
		0.648194, 0.036360, -0.760606,
		29.702198, 29.351828, 25.334738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850220, 28.987408, 25.272863>,  <29.248463, 29.326376, 25.867163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850220, 28.987408, 25.272863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240744, 28.978680, 25.186756>,  <29.475058, 28.973444, 25.135092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240744, 28.978680, 25.186756>,  <28.850220, 28.987408, 25.272863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240744, 28.978680, 25.186756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106609, -0.914264, -0.390841,
		-0.188283, 0.404531, -0.894932,
		0.976311, -0.021819, -0.215267,
		29.533638, 28.972134, 25.122175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906494, 28.717474, 24.624849>,  <28.850220, 28.987408, 25.272863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906494, 28.717474, 24.624849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275747, 28.657032, 24.766270>,  <29.497299, 28.620768, 24.851122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275747, 28.657032, 24.766270>,  <28.906494, 28.717474, 24.624849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275747, 28.657032, 24.766270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026200, -0.942120, -0.334250,
		0.383592, 0.299294, -0.873659,
		0.923131, -0.151105, 0.353549,
		29.552687, 28.611700, 24.872334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193911, 28.323027, 24.083464>,  <28.906494, 28.717474, 24.624849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193911, 28.323027, 24.083464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417721, 28.273735, 24.411304>,  <29.552008, 28.244160, 24.608009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417721, 28.273735, 24.411304>,  <29.193911, 28.323027, 24.083464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417721, 28.273735, 24.411304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126660, -0.964557, -0.231491,
		0.819077, 0.233335, -0.524087,
		0.559527, -0.123228, 0.819600,
		29.585579, 28.236767, 24.657185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790699, 28.080256, 23.868767>,  <29.193911, 28.323027, 24.083464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790699, 28.080256, 23.868767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735649, 27.964474, 24.247665>,  <29.702620, 27.895004, 24.475004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735649, 27.964474, 24.247665>,  <29.790699, 28.080256, 23.868767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735649, 27.964474, 24.247665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010458, -0.956718, -0.290828,
		0.990429, -0.030118, 0.134694,
		-0.137624, -0.289453, 0.947247,
		29.694363, 27.877638, 24.531839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219316, 27.433254, 23.983305>,  <29.790699, 28.080256, 23.868767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219316, 27.433254, 23.983305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986208, 27.437283, 24.308334>,  <29.846342, 27.439699, 24.503351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986208, 27.437283, 24.308334>,  <30.219316, 27.433254, 23.983305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986208, 27.437283, 24.308334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268628, -0.946099, -0.180931,
		0.766952, -0.323721, 0.554067,
		-0.582773, 0.010072, 0.812573,
		29.811377, 27.440304, 24.552107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483349, 26.955116, 24.453909>,  <30.219316, 27.433254, 23.983305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483349, 26.955116, 24.453909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099051, 26.986488, 24.560356>,  <29.868471, 27.005312, 24.624226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099051, 26.986488, 24.560356>,  <30.483349, 26.955116, 24.453909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099051, 26.986488, 24.560356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146212, -0.958327, -0.245420,
		0.235781, -0.274696, 0.932175,
		-0.960744, 0.078430, 0.266119,
		29.810827, 27.010017, 24.640192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401762, 26.423073, 24.878389>,  <30.483349, 26.955116, 24.453909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401762, 26.423073, 24.878389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020670, 26.489334, 24.776516>,  <29.792015, 26.529091, 24.715391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020670, 26.489334, 24.776516>,  <30.401762, 26.423073, 24.878389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020670, 26.489334, 24.776516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141386, -0.983719, -0.110939,
		-0.268915, -0.069687, 0.960640,
		-0.952730, 0.165654, -0.254684,
		29.734850, 26.539030, 24.700111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012383, 25.889540, 25.162951>,  <30.401762, 26.423073, 24.878389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012383, 25.889540, 25.162951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751507, 26.040314, 24.899872>,  <29.594980, 26.130779, 24.742025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751507, 26.040314, 24.899872>,  <30.012383, 25.889540, 25.162951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751507, 26.040314, 24.899872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159127, -0.916356, -0.367383,
		-0.741165, -0.134947, 0.657620,
		-0.652191, 0.376936, -0.657697,
		29.555849, 26.153395, 24.702562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426199, 25.345131, 25.086967>,  <30.012383, 25.889540, 25.162951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426199, 25.345131, 25.086967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433584, 25.585945, 24.767666>,  <29.438015, 25.730434, 24.576084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433584, 25.585945, 24.767666>,  <29.426199, 25.345131, 25.086967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433584, 25.585945, 24.767666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197202, -0.780515, -0.593218,
		-0.980189, 0.168371, 0.104311,
		0.018465, 0.602036, -0.798255,
		29.439123, 25.766556, 24.528189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788084, 25.267021, 24.704193>,  <29.426199, 25.345131, 25.086967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788084, 25.267021, 24.704193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103014, 25.371162, 24.480644>,  <29.291971, 25.433647, 24.346514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103014, 25.371162, 24.480644>,  <28.788084, 25.267021, 24.704193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103014, 25.371162, 24.480644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131198, -0.814956, -0.564476,
		-0.602420, 0.517748, -0.607476,
		0.787323, 0.260352, -0.558873,
		29.339211, 25.449268, 24.312983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694305, 24.945339, 23.994438>,  <28.788084, 25.267021, 24.704193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694305, 24.945339, 23.994438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073555, 25.071045, 23.975266>,  <29.301105, 25.146467, 23.963762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073555, 25.071045, 23.975266>,  <28.694305, 24.945339, 23.994438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073555, 25.071045, 23.975266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221360, -0.760874, -0.609976,
		-0.228164, 0.567723, -0.790969,
		0.948125, 0.314263, -0.047933,
		29.357992, 25.165323, 23.960886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834076, 24.914707, 23.236561>,  <28.694305, 24.945339, 23.994438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834076, 24.914707, 23.236561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198565, 24.943710, 23.398754>,  <29.417257, 24.961113, 23.496069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198565, 24.943710, 23.398754>,  <28.834076, 24.914707, 23.236561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198565, 24.943710, 23.398754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315883, -0.754792, -0.574897,
		0.264369, 0.651944, -0.710688,
		0.911223, 0.072510, 0.405482,
		29.471931, 24.965464, 23.520399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192713, 24.887804, 22.700500>,  <28.834076, 24.914707, 23.236561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192713, 24.887804, 22.700500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454687, 24.777111, 22.981777>,  <29.611872, 24.710695, 23.150543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454687, 24.777111, 22.981777>,  <29.192713, 24.887804, 22.700500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454687, 24.777111, 22.981777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311981, -0.748519, -0.585138,
		0.688280, 0.602610, -0.403896,
		0.654934, -0.276731, 0.703194,
		29.651167, 24.694092, 23.192736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520636, 25.058510, 22.015413>,  <29.192713, 24.887804, 22.700500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520636, 25.058510, 22.015413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191774, 24.968521, 21.806244>,  <28.994457, 24.914528, 21.680742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191774, 24.968521, 21.806244>,  <29.520636, 25.058510, 22.015413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191774, 24.968521, 21.806244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344436, 0.927962, 0.142307,
		0.453239, 0.297112, -0.840416,
		-0.822155, -0.224970, -0.522925,
		28.945127, 24.901030, 21.649366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442577, 25.590500, 21.500917>,  <29.520636, 25.058510, 22.015413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442577, 25.590500, 21.500917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081249, 25.430099, 21.561859>,  <28.864452, 25.333858, 21.598425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081249, 25.430099, 21.561859>,  <29.442577, 25.590500, 21.500917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081249, 25.430099, 21.561859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380249, 0.912916, 0.148309,
		-0.198559, 0.076038, -0.977135,
		-0.903319, -0.401003, 0.152355,
		28.810253, 25.309799, 21.607565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982040, 25.985653, 21.078066>,  <29.442577, 25.590500, 21.500917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982040, 25.985653, 21.078066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777325, 25.813602, 21.375538>,  <28.654495, 25.710371, 21.554022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777325, 25.813602, 21.375538>,  <28.982040, 25.985653, 21.078066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777325, 25.813602, 21.375538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518220, 0.844986, 0.132088,
		-0.685214, -0.317788, -0.655356,
		-0.511790, -0.430128, 0.743680,
		28.623787, 25.684565, 21.598642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276075, 26.222792, 20.952705>,  <28.982040, 25.985653, 21.078066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276075, 26.222792, 20.952705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285866, 26.079941, 21.326199>,  <28.291740, 25.994230, 21.550295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285866, 26.079941, 21.326199>,  <28.276075, 26.222792, 20.952705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285866, 26.079941, 21.326199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515862, 0.795545, 0.317795,
		-0.856322, -0.489457, -0.164758,
		0.024475, -0.357127, 0.933735,
		28.293209, 25.972803, 21.606319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631348, 26.301214, 21.211824>,  <28.276075, 26.222792, 20.952705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631348, 26.301214, 21.211824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861715, 26.292114, 21.538700>,  <27.999937, 26.286654, 21.734825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861715, 26.292114, 21.538700>,  <27.631348, 26.301214, 21.211824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861715, 26.292114, 21.538700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437083, 0.836175, 0.331315,
		-0.690850, -0.547991, 0.471626,
		0.575920, -0.022749, 0.817189,
		28.034491, 26.285290, 21.783857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
