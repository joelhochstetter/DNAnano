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
	<42.899445, 32.402042, 22.515821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711094, 32.600243, 22.807781>,  <42.598083, 32.719162, 22.982958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711094, 32.600243, 22.807781>,  <42.899445, 32.402042, 22.515821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711094, 32.600243, 22.807781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743817, 0.221881, -0.630480,
		-0.474352, -0.839793, 0.264079,
		-0.470879, 0.495496, 0.729902,
		42.569832, 32.748890, 23.026752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151028, 32.237843, 22.603258>,  <42.899445, 32.402042, 22.515821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151028, 32.237843, 22.603258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206318, 32.613613, 22.728718>,  <42.239491, 32.839073, 22.803993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206318, 32.613613, 22.728718>,  <42.151028, 32.237843, 22.603258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206318, 32.613613, 22.728718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775072, 0.299759, -0.556245,
		-0.616569, -0.166212, 0.769556,
		0.138227, 0.939424, 0.313648,
		42.247787, 32.895439, 22.822813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577785, 32.485870, 22.668648>,  <42.151028, 32.237843, 22.603258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577785, 32.485870, 22.668648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783318, 32.828506, 22.649712>,  <41.906635, 33.034088, 22.638350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783318, 32.828506, 22.649712>,  <41.577785, 32.485870, 22.668648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783318, 32.828506, 22.649712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704729, 0.389981, -0.592682,
		-0.489222, 0.337897, 0.804044,
		0.513827, 0.856586, -0.047338,
		41.937466, 33.085484, 22.635509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977589, 32.909218, 22.691553>,  <41.577785, 32.485870, 22.668648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977589, 32.909218, 22.691553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294041, 33.113789, 22.557358>,  <41.483913, 33.236530, 22.476841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294041, 33.113789, 22.557358>,  <40.977589, 32.909218, 22.691553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294041, 33.113789, 22.557358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611490, 0.649042, -0.452575,
		-0.013712, 0.563195, 0.826210,
		0.791134, 0.511425, -0.335488,
		41.531380, 33.267216, 22.456711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991161, 33.649094, 22.951151>,  <40.977589, 32.909218, 22.691553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991161, 33.649094, 22.951151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171066, 33.576054, 22.601437>,  <41.279007, 33.532230, 22.391607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171066, 33.576054, 22.601437>,  <40.991161, 33.649094, 22.951151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171066, 33.576054, 22.601437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714647, 0.513568, -0.474897,
		0.535719, 0.838395, 0.100490,
		0.449760, -0.182597, -0.874285,
		41.305996, 33.521275, 22.339151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067055, 34.220596, 22.542276>,  <40.991161, 33.649094, 22.951151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067055, 34.220596, 22.542276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078064, 33.917469, 22.281521>,  <41.084667, 33.735592, 22.125067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078064, 33.917469, 22.281521>,  <41.067055, 34.220596, 22.542276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078064, 33.917469, 22.281521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696277, 0.453388, -0.556451,
		0.717245, 0.469210, -0.515171,
		0.027521, -0.757814, -0.651891,
		41.086319, 33.690125, 22.085953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333591, 34.522724, 22.669165>,  <41.067055, 34.220596, 22.542276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333591, 34.522724, 22.669165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949509, 34.633636, 22.682514>,  <39.719059, 34.700184, 22.690523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949509, 34.633636, 22.682514>,  <40.333591, 34.522724, 22.669165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949509, 34.633636, 22.682514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102323, -0.238088, -0.965839,
		-0.259871, -0.930819, 0.256987,
		-0.960207, 0.277289, 0.033372,
		39.661446, 34.716824, 22.692526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933212, 34.067993, 22.350805>,  <40.333591, 34.522724, 22.669165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933212, 34.067993, 22.350805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714188, 34.400673, 22.314007>,  <39.582775, 34.600281, 22.291927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714188, 34.400673, 22.314007>,  <39.933212, 34.067993, 22.350805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714188, 34.400673, 22.314007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240276, -0.261588, -0.934794,
		-0.801528, -0.489750, 0.343071,
		-0.547558, 0.831695, -0.091995,
		39.549919, 34.650181, 22.286409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301834, 33.839138, 22.089029>,  <39.933212, 34.067993, 22.350805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301834, 33.839138, 22.089029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344723, 34.227985, 22.005615>,  <39.370457, 34.461292, 21.955566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344723, 34.227985, 22.005615>,  <39.301834, 33.839138, 22.089029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344723, 34.227985, 22.005615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335276, -0.162107, -0.928068,
		-0.935998, 0.169427, 0.308547,
		0.107222, 0.972119, -0.208537,
		39.376888, 34.519623, 21.943054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684559, 34.176159, 21.641809>,  <39.301834, 33.839138, 22.089029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684559, 34.176159, 21.641809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997452, 34.417206, 21.578609>,  <39.185188, 34.561832, 21.540689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997452, 34.417206, 21.578609>,  <38.684559, 34.176159, 21.641809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997452, 34.417206, 21.578609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236812, 0.053048, -0.970106,
		-0.576221, 0.796265, 0.184203,
		0.782234, 0.602617, -0.157998,
		39.232121, 34.597992, 21.531210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369022, 34.672577, 21.133896>,  <38.684559, 34.176159, 21.641809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369022, 34.672577, 21.133896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761555, 34.740791, 21.098335>,  <38.997074, 34.781719, 21.077000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761555, 34.740791, 21.098335>,  <38.369022, 34.672577, 21.133896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761555, 34.740791, 21.098335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133944, 0.274359, -0.952253,
		-0.138004, 0.946385, 0.292080,
		0.981333, 0.170537, -0.088900,
		39.055954, 34.791954, 21.071665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320625, 35.153828, 20.676514>,  <38.369022, 34.672577, 21.133896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320625, 35.153828, 20.676514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716034, 35.094154, 20.686008>,  <38.953281, 35.058350, 20.691706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716034, 35.094154, 20.686008>,  <38.320625, 35.153828, 20.676514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716034, 35.094154, 20.686008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089242, 0.449934, -0.888592,
		0.121884, 0.880513, 0.458085,
		0.988524, -0.149185, 0.023739,
		39.012592, 35.049400, 20.693130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608372, 35.870319, 20.578842>,  <38.320625, 35.153828, 20.676514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608372, 35.870319, 20.578842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858158, 35.579468, 20.464767>,  <39.008030, 35.404957, 20.396322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858158, 35.579468, 20.464767>,  <38.608372, 35.870319, 20.578842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858158, 35.579468, 20.464767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214024, 0.510455, -0.832844,
		0.751156, 0.459047, 0.474384,
		0.624467, -0.727125, -0.285185,
		39.045498, 35.361332, 20.379211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225754, 36.143448, 20.321951>,  <38.608372, 35.870319, 20.578842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225754, 36.143448, 20.321951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200874, 35.780773, 20.155075>,  <39.185947, 35.563168, 20.054951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200874, 35.780773, 20.155075>,  <39.225754, 36.143448, 20.321951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200874, 35.780773, 20.155075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003887, 0.418214, -0.908340,
		0.998056, -0.054876, -0.029537,
		-0.062199, -0.906689, -0.417187,
		39.182213, 35.508766, 20.029919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699017, 36.149998, 19.738855>,  <39.225754, 36.143448, 20.321951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699017, 36.149998, 19.738855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476028, 35.826843, 19.662384>,  <39.342236, 35.632950, 19.616501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476028, 35.826843, 19.662384>,  <39.699017, 36.149998, 19.738855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476028, 35.826843, 19.662384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056791, 0.266851, -0.962063,
		0.828253, -0.525463, -0.194642,
		-0.557469, -0.807886, -0.191178,
		39.308788, 35.584476, 19.605030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067173, 35.742760, 19.212469>,  <39.699017, 36.149998, 19.738855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067173, 35.742760, 19.212469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676079, 35.662132, 19.189159>,  <39.441422, 35.613754, 19.175175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676079, 35.662132, 19.189159>,  <40.067173, 35.742760, 19.212469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676079, 35.662132, 19.189159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012576, 0.220924, -0.975210,
		0.209422, -0.954239, -0.213473,
		-0.977744, -0.201546, -0.058267,
		39.382755, 35.601662, 19.171677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979019, 35.228626, 18.625866>,  <40.067173, 35.742760, 19.212469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979019, 35.228626, 18.625866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621338, 35.399338, 18.679920>,  <39.406731, 35.501766, 18.712353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621338, 35.399338, 18.679920>,  <39.979019, 35.228626, 18.625866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621338, 35.399338, 18.679920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052164, 0.200476, -0.978309,
		-0.444616, -0.881854, -0.157004,
		-0.894201, 0.426782, 0.135136,
		39.353077, 35.527370, 18.720461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705441, 35.117371, 18.034700>,  <39.979019, 35.228626, 18.625866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705441, 35.117371, 18.034700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453060, 35.384724, 18.192265>,  <39.301632, 35.545135, 18.286804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453060, 35.384724, 18.192265>,  <39.705441, 35.117371, 18.034700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453060, 35.384724, 18.192265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089669, 0.441506, -0.892767,
		-0.770626, -0.598610, -0.218634,
		-0.630947, 0.668385, 0.393913,
		39.263775, 35.585239, 18.310438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185986, 35.135155, 17.620283>,  <39.705441, 35.117371, 18.034700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185986, 35.135155, 17.620283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213097, 35.485455, 17.811474>,  <39.229362, 35.695637, 17.926188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213097, 35.485455, 17.811474>,  <39.185986, 35.135155, 17.620283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213097, 35.485455, 17.811474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004506, 0.478805, -0.877910,
		-0.997690, 0.061655, 0.028505,
		0.067776, 0.875753, 0.477977,
		39.233429, 35.748180, 17.954866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743977, 35.481220, 17.310165>,  <39.185986, 35.135155, 17.620283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743977, 35.481220, 17.310165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980587, 35.748665, 17.490414>,  <39.122555, 35.909130, 17.598562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980587, 35.748665, 17.490414>,  <38.743977, 35.481220, 17.310165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980587, 35.748665, 17.490414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082704, 0.606252, -0.790961,
		-0.802032, 0.430606, 0.413911,
		0.591527, 0.668608, 0.450620,
		39.158047, 35.949245, 17.625599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497097, 36.107758, 17.192329>,  <38.743977, 35.481220, 17.310165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497097, 36.107758, 17.192329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873566, 36.206177, 17.284992>,  <39.099445, 36.265228, 17.340590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873566, 36.206177, 17.284992>,  <38.497097, 36.107758, 17.192329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873566, 36.206177, 17.284992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030246, 0.621416, -0.782897,
		-0.336583, 0.743844, 0.577415,
		0.941168, 0.246045, 0.231656,
		39.155914, 36.279991, 17.354488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583279, 36.744270, 16.811985>,  <38.497097, 36.107758, 17.192329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583279, 36.744270, 16.811985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950680, 36.661358, 16.946678>,  <39.171120, 36.611610, 17.027494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950680, 36.661358, 16.946678>,  <38.583279, 36.744270, 16.811985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950680, 36.661358, 16.946678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384500, 0.666909, -0.638273,
		-0.092266, 0.715728, 0.692257,
		0.918502, -0.207282, 0.336731,
		39.226231, 36.599174, 17.047697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854252, 37.441826, 16.837595>,  <38.583279, 36.744270, 16.811985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854252, 37.441826, 16.837595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121349, 37.144852, 16.816006>,  <39.281609, 36.966667, 16.803051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121349, 37.144852, 16.816006>,  <38.854252, 37.441826, 16.837595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121349, 37.144852, 16.816006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473413, 0.479504, -0.738889,
		0.574456, 0.467836, 0.671663,
		0.667743, -0.742432, -0.053975,
		39.321671, 36.922123, 16.799814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456558, 37.824806, 16.597088>,  <38.854252, 37.441826, 16.837595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456558, 37.824806, 16.597088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495380, 37.439346, 16.497517>,  <39.518673, 37.208073, 16.437775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495380, 37.439346, 16.497517>,  <39.456558, 37.824806, 16.597088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495380, 37.439346, 16.497517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448395, 0.265624, -0.853455,
		0.888551, -0.028788, 0.457874,
		0.097053, -0.963647, -0.248928,
		39.524498, 37.150253, 16.422838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090649, 37.859596, 16.266357>,  <39.456558, 37.824806, 16.597088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090649, 37.859596, 16.266357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922264, 37.509747, 16.170166>,  <39.821232, 37.299839, 16.112452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922264, 37.509747, 16.170166>,  <40.090649, 37.859596, 16.266357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922264, 37.509747, 16.170166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238970, 0.148811, -0.959556,
		0.875033, -0.461405, 0.146365,
		-0.420963, -0.874620, -0.240477,
		39.795975, 37.247360, 16.098022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538498, 37.623055, 15.767735>,  <40.090649, 37.859596, 16.266357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538498, 37.623055, 15.767735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207287, 37.401321, 15.734067>,  <40.008560, 37.268280, 15.713866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207287, 37.401321, 15.734067>,  <40.538498, 37.623055, 15.767735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207287, 37.401321, 15.734067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104904, -0.005700, -0.994466,
		0.550788, -0.832274, 0.062872,
		-0.828026, -0.554335, -0.084169,
		39.958878, 37.235020, 15.708817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767044, 37.112957, 15.315639>,  <40.538498, 37.623055, 15.767735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767044, 37.112957, 15.315639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373772, 37.181549, 15.340806>,  <40.137810, 37.222706, 15.355906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373772, 37.181549, 15.340806>,  <40.767044, 37.112957, 15.315639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373772, 37.181549, 15.340806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000683, 0.347907, -0.937529,
		-0.182657, -0.921713, -0.342171,
		-0.983177, 0.171480, 0.062919,
		40.078819, 37.232994, 15.359681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648613, 37.263458, 14.635210>,  <40.767044, 37.112957, 15.315639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648613, 37.263458, 14.635210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299168, 37.347904, 14.810588>,  <40.089500, 37.398571, 14.915814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299168, 37.347904, 14.810588>,  <40.648613, 37.263458, 14.635210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299168, 37.347904, 14.810588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239942, 0.596972, -0.765540,
		-0.423360, -0.773985, -0.470864,
		-0.873610, 0.211119, 0.438446,
		40.037086, 37.411240, 14.942122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112350, 37.148682, 14.166415>,  <40.648613, 37.263458, 14.635210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112350, 37.148682, 14.166415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010502, 37.429741, 14.432181>,  <39.949390, 37.598377, 14.591641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010502, 37.429741, 14.432181>,  <40.112350, 37.148682, 14.166415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010502, 37.429741, 14.432181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024692, 0.682113, -0.730830,
		-0.966725, -0.202494, -0.156333,
		-0.254625, 0.702651, 0.664415,
		39.934113, 37.640537, 14.631506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871845, 36.573162, 13.697719>,  <40.112350, 37.148682, 14.166415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871845, 36.573162, 13.697719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140968, 36.330074, 13.528953>,  <40.302441, 36.184223, 13.427692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140968, 36.330074, 13.528953>,  <39.871845, 36.573162, 13.697719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140968, 36.330074, 13.528953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177535, -0.686255, 0.705362,
		-0.718206, -0.399663, -0.569605,
		0.672801, -0.607720, -0.421919,
		40.342812, 36.147758, 13.402378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486954, 35.877689, 13.495837>,  <39.871845, 36.573162, 13.697719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486954, 35.877689, 13.495837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875038, 35.842308, 13.586045>,  <40.107891, 35.821079, 13.640170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875038, 35.842308, 13.586045>,  <39.486954, 35.877689, 13.495837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875038, 35.842308, 13.586045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229321, -0.635398, 0.737347,
		0.078072, -0.767101, -0.636758,
		0.970215, -0.088456, 0.225520,
		40.166103, 35.815773, 13.653701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719002, 35.769886, 13.441095>,  <39.486954, 35.877689, 13.495837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719002, 35.769886, 13.441095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606026, 36.096363, 13.642713>,  <38.538242, 36.292248, 13.763683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606026, 36.096363, 13.642713>,  <38.719002, 35.769886, 13.441095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606026, 36.096363, 13.642713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287391, -0.573296, 0.767293,
		0.915224, 0.071854, 0.396487,
		-0.282437, 0.816192, 0.504044,
		38.521294, 36.341221, 13.793925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758980, 35.642483, 14.223635>,  <38.719002, 35.769886, 13.441095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758980, 35.642483, 14.223635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462357, 35.910828, 14.226043>,  <38.284382, 36.071835, 14.227488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462357, 35.910828, 14.226043>,  <38.758980, 35.642483, 14.223635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462357, 35.910828, 14.226043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378960, -0.426265, 0.821393,
		0.553608, 0.606829, 0.570331,
		-0.741557, 0.670862, 0.006020,
		38.239891, 36.112087, 14.227849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659222, 35.944469, 14.849380>,  <38.758980, 35.642483, 14.223635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659222, 35.944469, 14.849380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314049, 35.920200, 14.648715>,  <38.106945, 35.905640, 14.528316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314049, 35.920200, 14.648715>,  <38.659222, 35.944469, 14.849380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314049, 35.920200, 14.648715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394373, -0.539843, 0.743666,
		-0.315940, 0.839576, 0.441921,
		-0.862932, -0.060672, -0.501664,
		38.055168, 35.902000, 14.498216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126934, 36.152737, 15.321265>,  <38.659222, 35.944469, 14.849380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126934, 36.152737, 15.321265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966763, 35.899723, 15.056069>,  <37.870659, 35.747913, 14.896952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966763, 35.899723, 15.056069>,  <38.126934, 36.152737, 15.321265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966763, 35.899723, 15.056069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519287, -0.439487, 0.732934,
		-0.754983, 0.637769, -0.152485,
		-0.400427, -0.632537, -0.662990,
		37.846634, 35.709961, 14.857172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324921, 36.186756, 15.247101>,  <38.126934, 36.152737, 15.321265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324921, 36.186756, 15.247101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480774, 35.825775, 15.173598>,  <37.574287, 35.609188, 15.129497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480774, 35.825775, 15.173598>,  <37.324921, 36.186756, 15.247101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480774, 35.825775, 15.173598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556439, -0.389668, 0.733849,
		-0.733867, -0.183683, -0.653988,
		0.389634, -0.902452, -0.183756,
		37.597664, 35.555038, 15.118472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891357, 35.740128, 15.390757>,  <37.324921, 36.186756, 15.247101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891357, 35.740128, 15.390757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214844, 35.505402, 15.406882>,  <37.408936, 35.364567, 15.416557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214844, 35.505402, 15.406882>,  <36.891357, 35.740128, 15.390757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214844, 35.505402, 15.406882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399115, -0.497107, 0.770449,
		-0.432069, -0.639165, -0.636226,
		0.808717, -0.586815, 0.040316,
		37.457458, 35.329357, 15.418977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739391, 35.064751, 15.391143>,  <36.891357, 35.740128, 15.390757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739391, 35.064751, 15.391143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092609, 35.079750, 15.578259>,  <37.304539, 35.088749, 15.690530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092609, 35.079750, 15.578259>,  <36.739391, 35.064751, 15.391143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092609, 35.079750, 15.578259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303780, -0.714110, 0.630686,
		0.357707, -0.699029, -0.619197,
		0.883043, 0.037501, 0.467793,
		37.357521, 35.091000, 15.718597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811497, 34.378273, 15.690398>,  <36.739391, 35.064751, 15.391143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811497, 34.378273, 15.690398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104519, 34.576569, 15.876990>,  <37.280334, 34.695545, 15.988945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104519, 34.576569, 15.876990>,  <36.811497, 34.378273, 15.690398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104519, 34.576569, 15.876990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147955, -0.552945, 0.819976,
		0.664431, -0.669697, -0.331717,
		0.732557, 0.495739, 0.466479,
		37.324287, 34.725288, 16.016933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092606, 33.932407, 16.178368>,  <36.811497, 34.378273, 15.690398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092606, 33.932407, 16.178368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205776, 34.282646, 16.334972>,  <37.273678, 34.492790, 16.428936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205776, 34.282646, 16.334972>,  <37.092606, 33.932407, 16.178368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205776, 34.282646, 16.334972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169504, -0.356121, 0.918938,
		0.944044, -0.326357, 0.047660,
		0.282929, 0.875596, 0.391512,
		37.290653, 34.545326, 16.452427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402626, 33.723530, 16.771002>,  <37.092606, 33.932407, 16.178368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402626, 33.723530, 16.771002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336464, 34.110783, 16.846218>,  <37.296764, 34.343136, 16.891348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336464, 34.110783, 16.846218>,  <37.402626, 33.723530, 16.771002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336464, 34.110783, 16.846218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196613, -0.219211, 0.955662,
		0.966428, 0.121105, 0.226607,
		-0.165410, 0.968132, 0.188041,
		37.286842, 34.401222, 16.902630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708359, 33.870209, 17.470524>,  <37.402626, 33.723530, 16.771002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708359, 33.870209, 17.470524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476204, 34.189774, 17.407413>,  <37.336910, 34.381512, 17.369547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476204, 34.189774, 17.407413>,  <37.708359, 33.870209, 17.470524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476204, 34.189774, 17.407413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264373, -0.001599, 0.964419,
		0.770234, 0.601445, 0.212139,
		-0.580384, 0.798913, -0.157774,
		37.302090, 34.429447, 17.360081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857033, 34.440289, 17.921598>,  <37.708359, 33.870209, 17.470524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857033, 34.440289, 17.921598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480247, 34.488464, 17.796249>,  <37.254177, 34.517372, 17.721041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480247, 34.488464, 17.796249>,  <37.857033, 34.440289, 17.921598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480247, 34.488464, 17.796249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295341, 0.146536, 0.944087,
		0.159628, 0.981845, -0.102460,
		-0.941962, 0.120442, -0.313371,
		37.197659, 34.524597, 17.702238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646114, 35.026081, 18.184059>,  <37.857033, 34.440289, 17.921598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646114, 35.026081, 18.184059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296955, 34.849613, 18.100716>,  <37.087460, 34.743732, 18.050709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296955, 34.849613, 18.100716>,  <37.646114, 35.026081, 18.184059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296955, 34.849613, 18.100716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302417, 0.154113, 0.940635,
		-0.382869, 0.884092, -0.267942,
		-0.872901, -0.441170, -0.208359,
		37.035084, 34.717262, 18.038208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235149, 35.403679, 18.621590>,  <37.646114, 35.026081, 18.184059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235149, 35.403679, 18.621590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019836, 35.089664, 18.498966>,  <36.890648, 34.901257, 18.425392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019836, 35.089664, 18.498966>,  <37.235149, 35.403679, 18.621590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019836, 35.089664, 18.498966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300461, -0.161089, 0.940092,
		-0.787385, 0.598144, -0.149160,
		-0.538282, -0.785031, -0.306558,
		36.858353, 34.854156, 18.407000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589241, 35.487553, 18.887371>,  <37.235149, 35.403679, 18.621590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589241, 35.487553, 18.887371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641491, 35.100037, 18.803101>,  <36.672840, 34.867527, 18.752539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641491, 35.100037, 18.803101>,  <36.589241, 35.487553, 18.887371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641491, 35.100037, 18.803101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162057, -0.230505, 0.959481,
		-0.978097, -0.091193, -0.187110,
		0.130627, -0.968789, -0.210678,
		36.680679, 34.809399, 18.739897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087662, 35.189705, 19.339617>,  <36.589241, 35.487553, 18.887371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087662, 35.189705, 19.339617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357056, 34.903278, 19.266224>,  <36.518692, 34.731422, 19.222189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357056, 34.903278, 19.266224>,  <36.087662, 35.189705, 19.339617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357056, 34.903278, 19.266224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056626, -0.297466, 0.953052,
		-0.737026, -0.631479, -0.240888,
		0.673488, -0.716064, -0.183482,
		36.559101, 34.688457, 19.211180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784416, 34.486450, 19.555195>,  <36.087662, 35.189705, 19.339617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784416, 34.486450, 19.555195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184380, 34.483212, 19.559536>,  <36.424358, 34.481270, 19.562141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184380, 34.483212, 19.559536>,  <35.784416, 34.486450, 19.555195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184380, 34.483212, 19.559536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013122, -0.381368, 0.924330,
		-0.003345, -0.924388, -0.381439,
		0.999908, -0.008097, 0.010854,
		36.484352, 34.480782, 19.562792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855206, 33.784176, 19.853138>,  <35.784416, 34.486450, 19.555195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855206, 33.784176, 19.853138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185234, 34.009029, 19.875992>,  <36.383251, 34.143944, 19.889704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185234, 34.009029, 19.875992>,  <35.855206, 33.784176, 19.853138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185234, 34.009029, 19.875992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087877, -0.227548, 0.969794,
		0.558159, -0.795124, -0.237141,
		0.825067, 0.562139, 0.057135,
		36.432755, 34.177670, 19.893133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344952, 33.342007, 20.094530>,  <35.855206, 33.784176, 19.853138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344952, 33.342007, 20.094530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482899, 33.705353, 20.189129>,  <36.565666, 33.923363, 20.245888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482899, 33.705353, 20.189129>,  <36.344952, 33.342007, 20.094530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482899, 33.705353, 20.189129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211437, -0.320657, 0.923295,
		0.914528, -0.268408, -0.302647,
		0.344865, 0.908370, 0.236499,
		36.586357, 33.977863, 20.260078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873726, 33.304111, 20.635983>,  <36.344952, 33.342007, 20.094530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873726, 33.304111, 20.635983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803448, 33.697197, 20.659306>,  <36.761280, 33.933048, 20.673300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803448, 33.697197, 20.659306>,  <36.873726, 33.304111, 20.635983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803448, 33.697197, 20.659306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205389, -0.021334, 0.978448,
		0.962781, 0.183882, -0.198091,
		-0.175693, 0.982717, 0.058307,
		36.750740, 33.992012, 20.676798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388130, 33.552799, 21.069599>,  <36.873726, 33.304111, 20.635983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388130, 33.552799, 21.069599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105598, 33.835949, 21.071053>,  <36.936081, 34.005840, 21.071924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105598, 33.835949, 21.071053>,  <37.388130, 33.552799, 21.069599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105598, 33.835949, 21.071053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207453, 0.202087, 0.957144,
		0.676804, 0.676812, -0.289591,
		-0.706328, 0.707875, 0.003634,
		36.893700, 34.048313, 21.072144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695335, 34.218372, 21.420399>,  <37.388130, 33.552799, 21.069599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695335, 34.218372, 21.420399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303402, 34.297897, 21.412376>,  <37.068241, 34.345612, 21.407564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303402, 34.297897, 21.412376>,  <37.695335, 34.218372, 21.420399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303402, 34.297897, 21.412376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044395, 0.314438, 0.948239,
		0.194831, 0.928225, -0.316922,
		-0.979832, 0.198816, -0.020054,
		37.009453, 34.357544, 21.406361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720924, 34.852982, 21.760067>,  <37.695335, 34.218372, 21.420399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720924, 34.852982, 21.760067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370697, 34.666512, 21.810768>,  <37.160561, 34.554630, 21.841188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370697, 34.666512, 21.810768>,  <37.720924, 34.852982, 21.760067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370697, 34.666512, 21.810768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045099, 0.182357, 0.982198,
		-0.480993, 0.865693, -0.138641,
		-0.875564, -0.466178, 0.126754,
		37.108028, 34.526657, 21.848795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254307, 35.281158, 22.182709>,  <37.720924, 34.852982, 21.760067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254307, 35.281158, 22.182709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077225, 34.926052, 22.233120>,  <36.970974, 34.712990, 22.263367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077225, 34.926052, 22.233120>,  <37.254307, 35.281158, 22.182709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077225, 34.926052, 22.233120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012517, 0.134418, 0.990846,
		-0.896580, 0.440229, -0.048395,
		-0.442705, -0.887767, 0.126027,
		36.944412, 34.659721, 22.270927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634304, 35.415092, 22.604919>,  <37.254307, 35.281158, 22.182709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634304, 35.415092, 22.604919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736851, 35.029408, 22.631958>,  <36.798378, 34.797997, 22.648180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736851, 35.029408, 22.631958>,  <36.634304, 35.415092, 22.604919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736851, 35.029408, 22.631958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042555, 0.058605, 0.997374,
		-0.965643, -0.258569, -0.026008,
		0.256366, -0.964213, 0.067595,
		36.813759, 34.740143, 22.652237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210052, 35.102985, 23.045948>,  <36.634304, 35.415092, 22.604919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210052, 35.102985, 23.045948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539799, 34.877003, 23.060108>,  <36.737644, 34.741413, 23.068605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539799, 34.877003, 23.060108>,  <36.210052, 35.102985, 23.045948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539799, 34.877003, 23.060108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006685, 0.052821, 0.998582,
		-0.566022, -0.823430, 0.039767,
		0.824363, -0.564954, 0.035402,
		36.787109, 34.707516, 23.070728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870205, 35.121838, 23.609104>,  <36.210052, 35.102985, 23.045948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870205, 35.121838, 23.609104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536041, 35.099918, 23.827862>,  <36.335545, 35.086769, 23.959116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536041, 35.099918, 23.827862>,  <36.870205, 35.121838, 23.609104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536041, 35.099918, 23.827862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423549, -0.569958, -0.704098,
		0.350287, -0.819845, 0.452938,
		-0.835407, -0.054795, 0.546893,
		36.285419, 35.083481, 23.991930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589714, 34.469742, 23.519289>,  <36.870205, 35.121838, 23.609104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589714, 34.469742, 23.519289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284306, 34.710655, 23.612488>,  <36.101059, 34.855202, 23.668407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284306, 34.710655, 23.612488>,  <36.589714, 34.469742, 23.519289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284306, 34.710655, 23.612488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538294, -0.394250, -0.744853,
		-0.356752, -0.694135, 0.625224,
		-0.763523, 0.602282, 0.232999,
		36.055248, 34.891342, 23.682386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959637, 34.049484, 23.519953>,  <36.589714, 34.469742, 23.519289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959637, 34.049484, 23.519953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845329, 34.429714, 23.471378>,  <35.776745, 34.657852, 23.442234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845329, 34.429714, 23.471378>,  <35.959637, 34.049484, 23.519953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845329, 34.429714, 23.471378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687879, -0.291702, -0.664630,
		-0.667202, -0.106397, 0.737239,
		-0.285769, 0.950573, -0.121435,
		35.759598, 34.714886, 23.434948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245285, 34.198853, 23.667463>,  <35.959637, 34.049484, 23.519953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245285, 34.198853, 23.667463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378033, 34.454227, 23.389683>,  <35.457680, 34.607452, 23.223015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378033, 34.454227, 23.389683>,  <35.245285, 34.198853, 23.667463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378033, 34.454227, 23.389683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704540, -0.321785, -0.632517,
		-0.627286, 0.699181, 0.343013,
		0.331868, 0.638436, -0.694452,
		35.477592, 34.645760, 23.181347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552910, 34.385509, 23.606888>,  <35.245285, 34.198853, 23.667463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552910, 34.385509, 23.606888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670414, 34.551281, 23.262341>,  <34.740917, 34.650742, 23.055613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670414, 34.551281, 23.262341>,  <34.552910, 34.385509, 23.606888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670414, 34.551281, 23.262341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862037, -0.274516, -0.426067,
		-0.413032, 0.867694, 0.276607,
		0.293762, 0.414424, -0.861369,
		34.758541, 34.675610, 23.003929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984413, 34.928799, 23.288464>,  <34.552910, 34.385509, 23.606888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984413, 34.928799, 23.288464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224365, 34.692707, 23.072399>,  <34.368336, 34.551052, 22.942760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224365, 34.692707, 23.072399>,  <33.984413, 34.928799, 23.288464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224365, 34.692707, 23.072399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797991, -0.490234, -0.350543,
		-0.057907, 0.641329, -0.765077,
		0.599881, -0.590226, -0.540163,
		34.404331, 34.515640, 22.910351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520817, 35.335541, 23.521000>,  <33.984413, 34.928799, 23.288464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520817, 35.335541, 23.521000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437908, 35.713600, 23.621975>,  <34.388161, 35.940437, 23.682560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437908, 35.713600, 23.621975>,  <34.520817, 35.335541, 23.521000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437908, 35.713600, 23.621975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331713, -0.310658, 0.890762,
		0.920328, 0.100895, 0.377911,
		-0.207275, 0.945152, 0.252439,
		34.375725, 35.997147, 23.697706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858074, 35.446606, 24.143137>,  <34.520817, 35.335541, 23.521000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858074, 35.446606, 24.143137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528336, 35.672276, 24.124550>,  <34.330494, 35.807678, 24.113398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528336, 35.672276, 24.124550>,  <34.858074, 35.446606, 24.143137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528336, 35.672276, 24.124550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181086, -0.185042, 0.965902,
		0.536340, 0.804653, 0.254703,
		-0.824347, 0.564175, -0.046467,
		34.281033, 35.841530, 24.110609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918804, 35.882442, 24.642769>,  <34.858074, 35.446606, 24.143137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918804, 35.882442, 24.642769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526203, 35.910412, 24.571487>,  <34.290642, 35.927193, 24.528719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526203, 35.910412, 24.571487>,  <34.918804, 35.882442, 24.642769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526203, 35.910412, 24.571487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179683, -0.015419, 0.983604,
		0.066028, 0.997433, 0.027698,
		-0.981506, 0.069922, -0.178204,
		34.231750, 35.931389, 24.518026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673836, 36.364517, 25.105619>,  <34.918804, 35.882442, 24.642769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673836, 36.364517, 25.105619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362602, 36.132793, 25.008476>,  <34.175861, 35.993759, 24.950190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362602, 36.132793, 25.008476>,  <34.673836, 36.364517, 25.105619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362602, 36.132793, 25.008476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178695, -0.166513, 0.969712,
		-0.602204, 0.797917, 0.026042,
		-0.778086, -0.579311, -0.242859,
		34.129177, 35.959000, 24.935619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239140, 36.460609, 25.721769>,  <34.673836, 36.364517, 25.105619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239140, 36.460609, 25.721769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075115, 36.143047, 25.542183>,  <33.976700, 35.952511, 25.434431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075115, 36.143047, 25.542183>,  <34.239140, 36.460609, 25.721769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075115, 36.143047, 25.542183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285989, -0.355507, 0.889846,
		-0.866060, 0.493290, -0.081268,
		-0.410061, -0.793902, -0.448966,
		33.952095, 35.904877, 25.407494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466305, 36.472736, 25.908203>,  <34.239140, 36.460609, 25.721769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466305, 36.472736, 25.908203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552864, 36.100681, 25.789536>,  <33.604797, 35.877449, 25.718336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552864, 36.100681, 25.789536>,  <33.466305, 36.472736, 25.908203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552864, 36.100681, 25.789536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354855, -0.358018, 0.863655,
		-0.909533, -0.081617, -0.407539,
		0.216395, -0.930140, -0.296667,
		33.617783, 35.821640, 25.700535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916477, 36.180531, 26.004391>,  <33.466305, 36.472736, 25.908203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916477, 36.180531, 26.004391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152760, 35.857780, 26.006107>,  <33.294529, 35.664131, 26.007137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152760, 35.857780, 26.006107>,  <32.916477, 36.180531, 26.004391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152760, 35.857780, 26.006107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241492, -0.171712, 0.955090,
		-0.769903, -0.565213, -0.296285,
		0.590705, -0.806877, 0.004293,
		33.329971, 35.615719, 26.007395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485737, 35.543121, 26.125477>,  <32.916477, 36.180531, 26.004391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485737, 35.543121, 26.125477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859230, 35.458889, 26.241268>,  <33.083324, 35.408352, 26.310743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859230, 35.458889, 26.241268>,  <32.485737, 35.543121, 26.125477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859230, 35.458889, 26.241268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304704, -0.043139, 0.951470,
		-0.187873, -0.976624, -0.104445,
		0.933734, -0.210581, 0.289477,
		33.139351, 35.395714, 26.328112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415100, 34.881332, 26.463804>,  <32.485737, 35.543121, 26.125477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415100, 34.881332, 26.463804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770290, 35.027760, 26.575153>,  <32.983406, 35.115616, 26.641964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770290, 35.027760, 26.575153>,  <32.415100, 34.881332, 26.463804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770290, 35.027760, 26.575153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153947, -0.333780, 0.929995,
		0.433356, -0.868669, -0.240034,
		0.887977, 0.366066, 0.278375,
		33.036682, 35.137581, 26.658667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978722, 34.359978, 26.904388>,  <32.415100, 34.881332, 26.463804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978722, 34.359978, 26.904388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022038, 34.741959, 27.014908>,  <33.048027, 34.971146, 27.081219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022038, 34.741959, 27.014908>,  <32.978722, 34.359978, 26.904388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022038, 34.741959, 27.014908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115767, -0.263928, 0.957570,
		0.987355, -0.135685, 0.081970,
		0.108294, 0.954951, 0.276298,
		33.054527, 35.028442, 27.097797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295135, 34.310436, 27.585890>,  <32.978722, 34.359978, 26.904388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295135, 34.310436, 27.585890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182697, 34.694302, 27.583691>,  <33.115234, 34.924622, 27.582371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182697, 34.694302, 27.583691>,  <33.295135, 34.310436, 27.585890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182697, 34.694302, 27.583691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056051, 0.022136, 0.998183,
		0.958043, 0.280273, -0.060013,
		-0.281092, 0.959665, -0.005498,
		33.098370, 34.982201, 27.582041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483513, 34.456421, 28.170528>,  <33.295135, 34.310436, 27.585890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483513, 34.456421, 28.170528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293186, 34.802502, 28.107246>,  <33.178989, 35.010151, 28.069277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293186, 34.802502, 28.107246>,  <33.483513, 34.456421, 28.170528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293186, 34.802502, 28.107246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104307, 0.123092, 0.986898,
		0.873338, 0.486084, 0.031677,
		-0.475816, 0.865200, -0.158203,
		33.150440, 35.062061, 28.059786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801670, 34.817150, 28.701632>,  <33.483513, 34.456421, 28.170528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801670, 34.817150, 28.701632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476482, 35.031326, 28.610085>,  <33.281368, 35.159832, 28.555157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476482, 35.031326, 28.610085>,  <33.801670, 34.817150, 28.701632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476482, 35.031326, 28.610085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033428, 0.349474, 0.936350,
		0.581341, 0.768878, -0.266214,
		-0.812973, 0.535439, -0.228865,
		33.232590, 35.191959, 28.541426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959911, 35.417999, 28.932665>,  <33.801670, 34.817150, 28.701632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959911, 35.417999, 28.932665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562496, 35.421246, 28.887367>,  <33.324047, 35.423195, 28.860189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562496, 35.421246, 28.887367>,  <33.959911, 35.417999, 28.932665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562496, 35.421246, 28.887367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109020, 0.210271, 0.971546,
		0.031699, 0.977610, -0.208027,
		-0.993534, 0.008118, -0.113244,
		33.264435, 35.423679, 28.853394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657326, 36.060791, 29.183880>,  <33.959911, 35.417999, 28.932665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657326, 36.060791, 29.183880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387253, 35.767349, 29.214760>,  <33.225208, 35.591286, 29.233288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387253, 35.767349, 29.214760>,  <33.657326, 36.060791, 29.183880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387253, 35.767349, 29.214760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054369, 0.054883, 0.997011,
		-0.735647, 0.677359, 0.002829,
		-0.675180, -0.733602, 0.077202,
		33.184700, 35.547268, 29.237921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062061, 36.409649, 29.651749>,  <33.657326, 36.060791, 29.183880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062061, 36.409649, 29.651749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040485, 36.010235, 29.650455>,  <33.027538, 35.770584, 29.649679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040485, 36.010235, 29.650455>,  <33.062061, 36.409649, 29.651749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040485, 36.010235, 29.650455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055197, -0.006214, 0.998456,
		-0.997017, 0.053678, 0.055452,
		-0.053940, -0.998539, -0.003232,
		33.024303, 35.710674, 29.649487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734776, 36.323059, 30.266571>,  <33.062061, 36.409649, 29.651749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734776, 36.323059, 30.266571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899448, 35.966328, 30.191574>,  <32.998253, 35.752289, 30.146576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899448, 35.966328, 30.191574>,  <32.734776, 36.323059, 30.266571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899448, 35.966328, 30.191574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265504, -0.079440, 0.960831,
		-0.871795, -0.445335, 0.204082,
		0.411680, -0.891833, -0.187493,
		33.022953, 35.698776, 30.135326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379566, 35.893154, 30.702948>,  <32.734776, 36.323059, 30.266571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379566, 35.893154, 30.702948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718002, 35.708427, 30.596474>,  <32.921066, 35.597591, 30.532589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718002, 35.708427, 30.596474>,  <32.379566, 35.893154, 30.702948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718002, 35.708427, 30.596474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296664, -0.006901, 0.954957,
		-0.442852, -0.886949, 0.131165,
		0.846092, -0.461816, -0.266182,
		32.971828, 35.569881, 30.516619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326950, 35.326939, 31.041689>,  <32.379566, 35.893154, 30.702948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326950, 35.326939, 31.041689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714767, 35.393482, 30.969795>,  <32.947460, 35.433411, 30.926659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714767, 35.393482, 30.969795>,  <32.326950, 35.326939, 31.041689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714767, 35.393482, 30.969795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195657, -0.084729, 0.977005,
		0.147308, -0.982418, -0.114699,
		0.969546, 0.166363, -0.179735,
		33.005630, 35.443390, 30.915874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640163, 34.894970, 31.539198>,  <32.326950, 35.326939, 31.041689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640163, 34.894970, 31.539198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916409, 35.153538, 31.409458>,  <33.082157, 35.308678, 31.331615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916409, 35.153538, 31.409458>,  <32.640163, 34.894970, 31.539198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916409, 35.153538, 31.409458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293335, 0.159571, 0.942599,
		0.661068, -0.746112, -0.079415,
		0.690612, 0.646417, -0.324348,
		33.123592, 35.347462, 31.312155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294315, 34.662380, 31.872066>,  <32.640163, 34.894970, 31.539198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294315, 34.662380, 31.872066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308792, 35.046490, 31.761387>,  <33.317478, 35.276955, 31.694979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308792, 35.046490, 31.761387>,  <33.294315, 34.662380, 31.872066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308792, 35.046490, 31.761387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310342, 0.252391, 0.916508,
		0.949936, -0.119044, -0.288879,
		0.036195, 0.960275, -0.276700,
		33.319649, 35.334572, 31.678377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913586, 34.871296, 32.156605>,  <33.294315, 34.662380, 31.872066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913586, 34.871296, 32.156605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738052, 35.225475, 32.095406>,  <33.632732, 35.437984, 32.058685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738052, 35.225475, 32.095406>,  <33.913586, 34.871296, 32.156605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738052, 35.225475, 32.095406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164091, 0.246368, 0.955184,
		0.883461, 0.394058, -0.253408,
		-0.438830, 0.885450, -0.152995,
		33.606403, 35.491112, 32.049507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268257, 35.324013, 32.690529>,  <33.913586, 34.871296, 32.156605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268257, 35.324013, 32.690529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932297, 35.513149, 32.583958>,  <33.730721, 35.626629, 32.520016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932297, 35.513149, 32.583958>,  <34.268257, 35.324013, 32.690529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932297, 35.513149, 32.583958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074153, 0.386323, 0.919378,
		0.537646, 0.791946, -0.289411,
		-0.839904, 0.472839, -0.266430,
		33.680325, 35.655003, 32.504028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295670, 36.132034, 32.933392>,  <34.268257, 35.324013, 32.690529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295670, 36.132034, 32.933392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922997, 35.990307, 32.901337>,  <33.699390, 35.905270, 32.882103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922997, 35.990307, 32.901337>,  <34.295670, 36.132034, 32.933392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922997, 35.990307, 32.901337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182104, 0.264659, 0.946992,
		-0.314327, 0.896891, -0.311102,
		-0.931685, -0.354319, -0.080138,
		33.643490, 35.884010, 32.877296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815792, 36.666771, 33.058277>,  <34.295670, 36.132034, 32.933392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815792, 36.666771, 33.058277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635910, 36.318619, 33.138474>,  <33.527981, 36.109726, 33.186592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635910, 36.318619, 33.138474>,  <33.815792, 36.666771, 33.058277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635910, 36.318619, 33.138474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299682, 0.358490, 0.884124,
		-0.841400, 0.337515, -0.422054,
		-0.449707, -0.870384, 0.200487,
		33.500999, 36.057503, 33.198620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282017, 36.893951, 33.565815>,  <33.815792, 36.666771, 33.058277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282017, 36.893951, 33.565815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271347, 36.495193, 33.595451>,  <33.264946, 36.255939, 33.613235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271347, 36.495193, 33.595451>,  <33.282017, 36.893951, 33.565815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271347, 36.495193, 33.595451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363066, 0.078720, 0.928432,
		-0.931381, -0.002134, -0.364039,
		-0.026676, -0.996894, 0.074093,
		33.263344, 36.196125, 33.617680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575211, 36.662651, 33.962864>,  <33.282017, 36.893951, 33.565815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575211, 36.662651, 33.962864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792850, 36.329155, 34.000450>,  <32.923435, 36.129055, 34.023003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792850, 36.329155, 34.000450>,  <32.575211, 36.662651, 33.962864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792850, 36.329155, 34.000450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501512, -0.233395, 0.833074,
		-0.672638, -0.500400, -0.545122,
		0.544099, -0.833743, 0.093967,
		32.956081, 36.079033, 34.028641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089691, 36.122173, 34.142139>,  <32.575211, 36.662651, 33.962864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089691, 36.122173, 34.142139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467136, 36.049141, 34.252602>,  <32.693604, 36.005322, 34.318878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467136, 36.049141, 34.252602>,  <32.089691, 36.122173, 34.142139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467136, 36.049141, 34.252602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316154, -0.249544, 0.915300,
		-0.098203, -0.950995, -0.293196,
		0.943611, -0.182580, 0.276155,
		32.750221, 35.994366, 34.335449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053669, 35.467869, 34.520218>,  <32.089691, 36.122173, 34.142139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053669, 35.467869, 34.520218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398022, 35.628143, 34.645649>,  <32.604633, 35.724308, 34.720905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398022, 35.628143, 34.645649>,  <32.053669, 35.467869, 34.520218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398022, 35.628143, 34.645649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177833, -0.340477, 0.923283,
		0.476710, -0.850604, -0.221856,
		0.860885, 0.400684, 0.313574,
		32.656288, 35.748348, 34.739719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368790, 34.934067, 34.980087>,  <32.053669, 35.467869, 34.520218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368790, 34.934067, 34.980087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556099, 35.279026, 35.057022>,  <32.668484, 35.486000, 35.103184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556099, 35.279026, 35.057022>,  <32.368790, 34.934067, 34.980087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556099, 35.279026, 35.057022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193576, -0.112264, 0.974641,
		0.862117, -0.493633, 0.114368,
		0.468276, 0.862394, 0.192340,
		32.696583, 35.537743, 35.114723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757572, 34.744087, 35.528793>,  <32.368790, 34.934067, 34.980087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757572, 34.744087, 35.528793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760925, 35.143459, 35.550953>,  <32.762936, 35.383083, 35.564247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760925, 35.143459, 35.550953>,  <32.757572, 34.744087, 35.528793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760925, 35.143459, 35.550953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108861, -0.054157, 0.992581,
		0.994022, -0.014348, 0.108236,
		0.008380, 0.998429, 0.055396,
		32.763439, 35.442989, 35.567570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407627, 34.950008, 35.932384>,  <32.757572, 34.744087, 35.528793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407627, 34.950008, 35.932384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122074, 35.229919, 35.942856>,  <32.950741, 35.397865, 35.949139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122074, 35.229919, 35.942856>,  <33.407627, 34.950008, 35.932384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122074, 35.229919, 35.942856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088030, -0.126766, 0.988019,
		0.694708, 0.703027, 0.152098,
		-0.713884, 0.699774, 0.026178,
		32.907909, 35.439850, 35.950710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317070, 35.003521, 36.646038>,  <33.407627, 34.950008, 35.932384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317070, 35.003521, 36.646038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021786, 35.241539, 36.518936>,  <32.844616, 35.384350, 36.442677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021786, 35.241539, 36.518936>,  <33.317070, 35.003521, 36.646038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021786, 35.241539, 36.518936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371292, 0.034848, 0.927862,
		0.563190, 0.802939, 0.195209,
		-0.738214, 0.595042, -0.317751,
		32.800320, 35.420052, 36.423611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403835, 35.786499, 36.888626>,  <33.317070, 35.003521, 36.646038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403835, 35.786499, 36.888626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015285, 35.749134, 36.801254>,  <32.782158, 35.726715, 36.748833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015285, 35.749134, 36.801254>,  <33.403835, 35.786499, 36.888626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015285, 35.749134, 36.801254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232873, 0.192619, 0.953241,
		-0.046973, 0.976817, -0.208858,
		-0.971372, -0.093414, -0.218426,
		32.723873, 35.721111, 36.735725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019794, 36.397068, 37.159595>,  <33.403835, 35.786499, 36.888626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019794, 36.397068, 37.159595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742649, 36.112743, 37.111107>,  <32.576363, 35.942150, 37.082012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742649, 36.112743, 37.111107>,  <33.019794, 36.397068, 37.159595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742649, 36.112743, 37.111107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278871, 0.109115, 0.954109,
		-0.664960, 0.694872, -0.273825,
		-0.692863, -0.710807, -0.121223,
		32.534790, 35.899502, 37.074741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554226, 36.639961, 37.580902>,  <33.019794, 36.397068, 37.159595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554226, 36.639961, 37.580902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482269, 36.251431, 37.518723>,  <32.439095, 36.018311, 37.481415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482269, 36.251431, 37.518723>,  <32.554226, 36.639961, 37.580902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482269, 36.251431, 37.518723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210360, -0.116380, 0.970672,
		-0.960930, 0.207317, -0.183392,
		-0.179893, -0.971327, -0.155444,
		32.428303, 35.960033, 37.472088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955011, 36.631428, 37.870228>,  <32.554226, 36.639961, 37.580902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955011, 36.631428, 37.870228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089657, 36.255543, 37.846100>,  <32.170444, 36.030014, 37.831623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089657, 36.255543, 37.846100>,  <31.955011, 36.631428, 37.870228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089657, 36.255543, 37.846100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177563, -0.126254, 0.975977,
		-0.924751, -0.317815, -0.209356,
		0.336612, -0.939709, -0.060321,
		32.190639, 35.973629, 37.828003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462973, 36.306721, 38.356236>,  <31.955011, 36.631428, 37.870228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462973, 36.306721, 38.356236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795145, 36.089428, 38.306786>,  <31.994450, 35.959053, 38.277115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795145, 36.089428, 38.306786>,  <31.462973, 36.306721, 38.356236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795145, 36.089428, 38.306786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058570, -0.135546, 0.989038,
		-0.554033, -0.828569, -0.080745,
		0.830432, -0.543231, -0.123626,
		32.044273, 35.926460, 38.269699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382921, 35.721478, 38.840919>,  <31.462973, 36.306721, 38.356236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382921, 35.721478, 38.840919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771547, 35.713924, 38.746510>,  <32.004723, 35.709393, 38.689865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771547, 35.713924, 38.746510>,  <31.382921, 35.721478, 38.840919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771547, 35.713924, 38.746510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220627, -0.289624, 0.931365,
		-0.085940, -0.956954, -0.277224,
		0.971565, -0.018879, -0.236021,
		32.063015, 35.708260, 38.675705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614307, 35.328419, 39.312405>,  <31.382921, 35.721478, 38.840919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614307, 35.328419, 39.312405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930346, 35.541973, 39.191925>,  <32.119968, 35.670105, 39.119637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930346, 35.541973, 39.191925>,  <31.614307, 35.328419, 39.312405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930346, 35.541973, 39.191925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299803, 0.092020, 0.949553,
		0.534665, -0.840537, -0.087354,
		0.790096, 0.533882, -0.301195,
		32.167374, 35.702137, 39.101566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159584, 35.072990, 39.655407>,  <31.614307, 35.328419, 39.312405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159584, 35.072990, 39.655407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307594, 35.429668, 39.551132>,  <32.396400, 35.643677, 39.488567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307594, 35.429668, 39.551132>,  <32.159584, 35.072990, 39.655407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307594, 35.429668, 39.551132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280840, 0.160106, 0.946306,
		0.885555, -0.423369, -0.191180,
		0.370028, 0.891697, -0.260682,
		32.418602, 35.697178, 39.472927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861599, 35.085381, 39.802792>,  <32.159584, 35.072990, 39.655407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861599, 35.085381, 39.802792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747375, 35.468643, 39.810814>,  <32.678841, 35.698601, 39.815628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747375, 35.468643, 39.810814>,  <32.861599, 35.085381, 39.802792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747375, 35.468643, 39.810814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530677, 0.140657, 0.835822,
		0.798023, 0.249318, -0.548634,
		-0.285555, 0.958152, 0.020060,
		32.661709, 35.756088, 39.816833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481262, 35.426052, 40.111877>,  <32.861599, 35.085381, 39.802792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481262, 35.426052, 40.111877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163471, 35.664696, 40.157242>,  <32.972797, 35.807880, 40.184460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163471, 35.664696, 40.157242>,  <33.481262, 35.426052, 40.111877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163471, 35.664696, 40.157242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371429, 0.329622, 0.867980,
		0.480463, 0.731715, -0.483476,
		-0.794479, 0.596609, 0.113409,
		32.925129, 35.843678, 40.191265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672939, 36.077259, 40.423462>,  <33.481262, 35.426052, 40.111877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672939, 36.077259, 40.423462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295254, 35.986801, 40.519222>,  <33.068642, 35.932526, 40.576679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295254, 35.986801, 40.519222>,  <33.672939, 36.077259, 40.423462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295254, 35.986801, 40.519222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189286, 0.222210, 0.956448,
		-0.269495, 0.948409, -0.167008,
		-0.944216, -0.226146, 0.239405,
		33.011990, 35.918957, 40.591045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545670, 36.372231, 41.057320>,  <33.672939, 36.077259, 40.423462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545670, 36.372231, 41.057320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216709, 36.149475, 41.010799>,  <33.019333, 36.015820, 40.982887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216709, 36.149475, 41.010799>,  <33.545670, 36.372231, 41.057320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216709, 36.149475, 41.010799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153876, 0.020932, 0.987868,
		-0.547701, 0.830321, -0.102907,
		-0.822402, -0.556892, -0.116302,
		32.969990, 35.982407, 40.975910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797226, 36.731594, 41.125870>,  <33.545670, 36.372231, 41.057320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797226, 36.731594, 41.125870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817429, 36.348602, 41.239487>,  <32.829552, 36.118805, 41.307655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817429, 36.348602, 41.239487>,  <32.797226, 36.731594, 41.125870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817429, 36.348602, 41.239487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207250, 0.268162, 0.940817,
		-0.976983, -0.106386, -0.184894,
		0.050508, -0.957482, 0.284038,
		32.832581, 36.061359, 41.324699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180401, 36.640461, 41.490582>,  <32.797226, 36.731594, 41.125870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180401, 36.640461, 41.490582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478664, 36.391037, 41.584526>,  <32.657623, 36.241383, 41.640892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478664, 36.391037, 41.584526>,  <32.180401, 36.640461, 41.490582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478664, 36.391037, 41.584526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041638, 0.308183, 0.950415,
		-0.665024, -0.718466, 0.203837,
		0.745661, -0.623562, 0.234865,
		32.702362, 36.203968, 41.654984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819637, 36.157207, 41.156147>,  <32.180401, 36.640461, 41.490582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819637, 36.157207, 41.156147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620956, 36.143940, 41.503063>,  <31.501747, 36.135979, 41.711212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620956, 36.143940, 41.503063>,  <31.819637, 36.157207, 41.156147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620956, 36.143940, 41.503063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665134, 0.656498, -0.355819,
		-0.557568, -0.753599, -0.348148,
		-0.496703, -0.033171, 0.867287,
		31.471945, 36.133987, 41.763248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068714, 35.753002, 41.101334>,  <31.819637, 36.157207, 41.156147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068714, 35.753002, 41.101334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162966, 36.076851, 41.316368>,  <31.219517, 36.271160, 41.445389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162966, 36.076851, 41.316368>,  <31.068714, 35.753002, 41.101334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162966, 36.076851, 41.316368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558380, 0.565525, -0.606953,
		-0.795419, -0.157163, 0.585328,
		0.235627, 0.809618, 0.537587,
		31.233654, 36.319736, 41.477646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521997, 36.025288, 41.469582>,  <31.068714, 35.753002, 41.101334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521997, 36.025288, 41.469582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806656, 36.263966, 41.321251>,  <30.977451, 36.407173, 41.232254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806656, 36.263966, 41.321251>,  <30.521997, 36.025288, 41.469582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806656, 36.263966, 41.321251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616305, 0.276868, -0.737233,
		-0.337236, 0.753191, 0.564779,
		0.711646, 0.596698, -0.370825,
		31.020149, 36.442974, 41.210003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346739, 36.819832, 41.540997>,  <30.521997, 36.025288, 41.469582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346739, 36.819832, 41.540997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549503, 36.660526, 41.235203>,  <30.671162, 36.564945, 41.051727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549503, 36.660526, 41.235203>,  <30.346739, 36.819832, 41.540997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549503, 36.660526, 41.235203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728937, 0.275326, -0.626774,
		0.460101, 0.874976, -0.150742,
		0.506910, -0.398262, -0.764481,
		30.701576, 36.541046, 41.005859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444334, 37.367027, 40.936989>,  <30.346739, 36.819832, 41.540997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444334, 37.367027, 40.936989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511650, 37.001263, 40.789726>,  <30.552040, 36.781803, 40.701370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511650, 37.001263, 40.789726>,  <30.444334, 37.367027, 40.936989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511650, 37.001263, 40.789726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595198, 0.203451, -0.777398,
		0.785759, 0.349954, -0.510015,
		0.168290, -0.914407, -0.368155,
		30.562138, 36.726940, 40.679279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159000, 37.978157, 40.691837>,  <30.444334, 37.367027, 40.936989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159000, 37.978157, 40.691837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557295, 37.953575, 40.664310>,  <30.796270, 37.938828, 40.647793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557295, 37.953575, 40.664310>,  <30.159000, 37.978157, 40.691837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557295, 37.953575, 40.664310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053557, 0.222376, -0.973489,
		0.075131, 0.973022, 0.218136,
		0.995734, -0.061456, -0.068820,
		30.856014, 37.935139, 40.643665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356567, 38.628006, 40.390060>,  <30.159000, 37.978157, 40.691837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356567, 38.628006, 40.390060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589327, 38.307186, 40.336231>,  <30.728983, 38.114693, 40.303932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589327, 38.307186, 40.336231>,  <30.356567, 38.628006, 40.390060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589327, 38.307186, 40.336231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016593, 0.177147, -0.984045,
		0.813091, 0.570383, 0.116390,
		0.581900, -0.802049, -0.134572,
		30.763897, 38.066570, 40.295860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930346, 38.884708, 40.054951>,  <30.356567, 38.628006, 40.390060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930346, 38.884708, 40.054951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907454, 38.500332, 39.946644>,  <30.893719, 38.269707, 39.881660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907454, 38.500332, 39.946644>,  <30.930346, 38.884708, 40.054951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907454, 38.500332, 39.946644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113419, 0.263198, -0.958052,
		0.991898, -0.085538, 0.093927,
		-0.057229, -0.960942, -0.270767,
		30.890285, 38.212048, 39.865414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266745, 38.800991, 39.471321>,  <30.930346, 38.884708, 40.054951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266745, 38.800991, 39.471321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076906, 38.449574, 39.449707>,  <30.963003, 38.238724, 39.436741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076906, 38.449574, 39.449707>,  <31.266745, 38.800991, 39.471321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076906, 38.449574, 39.449707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046302, 0.036382, -0.998265,
		0.878985, -0.476275, 0.023412,
		-0.474597, -0.878544, -0.054031,
		30.934526, 38.186012, 39.433498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665377, 38.295197, 39.056744>,  <31.266745, 38.800991, 39.471321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665377, 38.295197, 39.056744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288742, 38.161396, 39.041145>,  <31.062761, 38.081116, 39.031784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288742, 38.161396, 39.041145>,  <31.665377, 38.295197, 39.056744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288742, 38.161396, 39.041145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071987, -0.086793, -0.993622,
		0.328982, -0.938390, 0.105803,
		-0.941588, -0.334500, -0.038998,
		31.006266, 38.061047, 39.029446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701998, 37.654949, 38.689346>,  <31.665377, 38.295197, 39.056744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701998, 37.654949, 38.689346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321730, 37.770588, 38.644352>,  <31.093569, 37.839970, 38.617355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321730, 37.770588, 38.644352>,  <31.701998, 37.654949, 38.689346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321730, 37.770588, 38.644352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044622, -0.231392, -0.971837,
		-0.306982, -0.928914, 0.207077,
		-0.950669, 0.289096, -0.112483,
		31.036530, 37.857315, 38.610607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360312, 37.223358, 38.204327>,  <31.701998, 37.654949, 38.689346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360312, 37.223358, 38.204327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118792, 37.542183, 38.200069>,  <30.973881, 37.733479, 38.197514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118792, 37.542183, 38.200069>,  <31.360312, 37.223358, 38.204327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118792, 37.542183, 38.200069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029151, 0.008730, -0.999537,
		-0.796604, -0.603829, -0.028506,
		-0.603799, 0.797066, -0.010647,
		30.937653, 37.781303, 38.196877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720787, 37.028057, 37.774616>,  <31.360312, 37.223358, 38.204327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720787, 37.028057, 37.774616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751968, 37.426250, 37.796299>,  <30.770678, 37.665165, 37.809307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751968, 37.426250, 37.796299>,  <30.720787, 37.028057, 37.774616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751968, 37.426250, 37.796299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323405, 0.076679, -0.943149,
		-0.943044, 0.055993, 0.327921,
		0.077954, 0.995482, 0.054204,
		30.775354, 37.724895, 37.812561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137438, 37.170918, 37.428791>,  <30.720787, 37.028057, 37.774616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137438, 37.170918, 37.428791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375721, 37.489487, 37.387127>,  <30.518690, 37.680626, 37.362129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375721, 37.489487, 37.387127>,  <30.137438, 37.170918, 37.428791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375721, 37.489487, 37.387127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259424, 0.068051, -0.963363,
		-0.760153, 0.600903, 0.247149,
		0.595707, 0.796420, -0.104159,
		30.554434, 37.728413, 37.355881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811327, 37.541149, 36.839973>,  <30.137438, 37.170918, 37.428791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811327, 37.541149, 36.839973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168745, 37.720070, 36.855450>,  <30.383196, 37.827423, 36.864735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168745, 37.720070, 36.855450>,  <29.811327, 37.541149, 36.839973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168745, 37.720070, 36.855450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025200, 0.136002, -0.990388,
		-0.448262, 0.883983, 0.132796,
		0.893547, 0.447300, 0.038688,
		30.436810, 37.854259, 36.867058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742830, 38.166363, 36.503674>,  <29.811327, 37.541149, 36.839973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742830, 38.166363, 36.503674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132524, 38.076439, 36.496479>,  <30.366341, 38.022484, 36.492161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132524, 38.076439, 36.496479>,  <29.742830, 38.166363, 36.503674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132524, 38.076439, 36.496479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015316, 0.145520, -0.989237,
		0.225011, 0.963474, 0.145214,
		0.974236, -0.224814, -0.017987,
		30.424795, 38.008995, 36.491081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892302, 38.528599, 35.985386>,  <29.742830, 38.166363, 36.503674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892302, 38.528599, 35.985386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218460, 38.301289, 36.029552>,  <30.414156, 38.164902, 36.056053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218460, 38.301289, 36.029552>,  <29.892302, 38.528599, 35.985386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218460, 38.301289, 36.029552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204564, 0.104412, -0.973269,
		0.541555, 0.816188, 0.201385,
		0.815397, -0.568274, 0.110418,
		30.463079, 38.130806, 36.062679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550447, 38.885761, 35.820698>,  <29.892302, 38.528599, 35.985386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550447, 38.885761, 35.820698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606909, 38.493805, 35.764286>,  <30.640785, 38.258633, 35.730438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606909, 38.493805, 35.764286>,  <30.550447, 38.885761, 35.820698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606909, 38.493805, 35.764286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132340, 0.159856, -0.978229,
		0.981103, 0.119415, 0.152242,
		0.141152, -0.979891, -0.141032,
		30.649254, 38.199837, 35.721977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143257, 38.803383, 35.333401>,  <30.550447, 38.885761, 35.820698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143257, 38.803383, 35.333401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955126, 38.450672, 35.319149>,  <30.842247, 38.239048, 35.310596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955126, 38.450672, 35.319149>,  <31.143257, 38.803383, 35.333401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955126, 38.450672, 35.319149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298084, -0.120735, -0.946873,
		0.830625, -0.455961, 0.319627,
		-0.470327, -0.881772, -0.035628,
		30.814028, 38.186142, 35.308460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528193, 38.388397, 34.830868>,  <31.143257, 38.803383, 35.333401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528193, 38.388397, 34.830868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179548, 38.197235, 34.874516>,  <30.970362, 38.082539, 34.900703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179548, 38.197235, 34.874516>,  <31.528193, 38.388397, 34.830868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179548, 38.197235, 34.874516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037627, -0.287174, -0.957139,
		0.488756, -0.830145, 0.268285,
		-0.871609, -0.477902, 0.109122,
		30.918066, 38.053864, 34.907253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590750, 37.665573, 34.579380>,  <31.528193, 38.388397, 34.830868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590750, 37.665573, 34.579380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207808, 37.776939, 34.548496>,  <30.978043, 37.843758, 34.529968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207808, 37.776939, 34.548496>,  <31.590750, 37.665573, 34.579380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207808, 37.776939, 34.548496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032661, -0.369800, -0.928537,
		-0.287063, -0.886417, 0.363123,
		-0.957355, 0.278409, -0.077205,
		30.920601, 37.860462, 34.525333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314848, 37.184261, 34.093517>,  <31.590750, 37.665573, 34.579380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314848, 37.184261, 34.093517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059544, 37.490543, 34.125336>,  <30.906361, 37.674313, 34.144424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059544, 37.490543, 34.125336>,  <31.314848, 37.184261, 34.093517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059544, 37.490543, 34.125336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375750, -0.219684, -0.900306,
		-0.671890, -0.604517, 0.427927,
		-0.638259, 0.765701, 0.079544,
		30.868065, 37.720253, 34.149200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690939, 36.936424, 33.749897>,  <31.314848, 37.184261, 34.093517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690939, 36.936424, 33.749897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657238, 37.335003, 33.749920>,  <30.637018, 37.574150, 33.749931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657238, 37.335003, 33.749920>,  <30.690939, 36.936424, 33.749897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657238, 37.335003, 33.749920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344899, -0.029110, -0.938188,
		-0.934851, -0.079063, 0.346125,
		-0.084252, 0.996445, 0.000055,
		30.631962, 37.633938, 33.749935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098934, 37.121330, 33.438549>,  <30.690939, 36.936424, 33.749897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098934, 37.121330, 33.438549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296715, 37.465523, 33.389404>,  <30.415382, 37.672039, 33.359917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296715, 37.465523, 33.389404>,  <30.098934, 37.121330, 33.438549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296715, 37.465523, 33.389404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311059, 0.043182, -0.949409,
		-0.811640, 0.507654, 0.289011,
		0.494452, 0.860478, -0.122862,
		30.445051, 37.723667, 33.352547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773663, 37.405937, 32.867641>,  <30.098934, 37.121330, 33.438549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773663, 37.405937, 32.867641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120941, 37.601929, 32.899029>,  <30.329308, 37.719524, 32.917862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120941, 37.601929, 32.899029>,  <29.773663, 37.405937, 32.867641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120941, 37.601929, 32.899029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009447, 0.141781, -0.989853,
		-0.496130, 0.860129, 0.118465,
		0.868197, 0.489976, 0.078468,
		30.381401, 37.748920, 32.922569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700680, 38.063477, 32.442905>,  <29.773663, 37.405937, 32.867641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700680, 38.063477, 32.442905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097336, 38.027424, 32.479836>,  <30.335329, 38.005791, 32.501995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097336, 38.027424, 32.479836>,  <29.700680, 38.063477, 32.442905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097336, 38.027424, 32.479836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112450, 0.252840, -0.960951,
		0.063269, 0.963301, 0.260862,
		0.991641, -0.090132, 0.092326,
		30.394829, 38.000385, 32.507534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937416, 38.579517, 31.997780>,  <29.700680, 38.063477, 32.442905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937416, 38.579517, 31.997780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250317, 38.341385, 32.071171>,  <30.438057, 38.198505, 32.115204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250317, 38.341385, 32.071171>,  <29.937416, 38.579517, 31.997780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250317, 38.341385, 32.071171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172643, -0.075819, -0.982062,
		0.598564, 0.799895, 0.043470,
		0.782251, -0.595332, 0.183479,
		30.484991, 38.162785, 32.126213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590235, 38.843178, 31.564550>,  <29.937416, 38.579517, 31.997780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590235, 38.843178, 31.564550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702003, 38.468285, 31.647999>,  <30.769064, 38.243351, 31.698069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702003, 38.468285, 31.647999>,  <30.590235, 38.843178, 31.564550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702003, 38.468285, 31.647999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305672, -0.119143, -0.944653,
		0.910213, 0.327727, 0.253194,
		0.279422, -0.937230, 0.208623,
		30.785830, 38.187115, 31.710587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326036, 38.763477, 31.440676>,  <30.590235, 38.843178, 31.564550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326036, 38.763477, 31.440676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183758, 38.389698, 31.433914>,  <31.098391, 38.165432, 31.429857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183758, 38.389698, 31.433914>,  <31.326036, 38.763477, 31.440676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183758, 38.389698, 31.433914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552883, -0.195803, -0.809927,
		0.753525, -0.297432, 0.586288,
		-0.355696, -0.934449, -0.016903,
		31.077049, 38.109364, 31.428843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906458, 38.410976, 31.286913>,  <31.326036, 38.763477, 31.440676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906458, 38.410976, 31.286913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597038, 38.170982, 31.205292>,  <31.411386, 38.026985, 31.156319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597038, 38.170982, 31.205292>,  <31.906458, 38.410976, 31.286913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597038, 38.170982, 31.205292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341266, -0.123060, -0.931877,
		0.534000, -0.790491, 0.299947,
		-0.773551, -0.599984, -0.204054,
		31.364973, 37.990986, 31.144075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207321, 37.816616, 31.047640>,  <31.906458, 38.410976, 31.286913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207321, 37.816616, 31.047640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830103, 37.821804, 30.914673>,  <31.603773, 37.824917, 30.834892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830103, 37.821804, 30.914673>,  <32.207321, 37.816616, 31.047640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830103, 37.821804, 30.914673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324485, -0.184418, -0.927739,
		-0.073337, -0.982762, 0.169705,
		-0.943043, 0.012971, -0.332416,
		31.547190, 37.825695, 30.814947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160126, 37.300026, 30.507238>,  <32.207321, 37.816616, 31.047640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160126, 37.300026, 30.507238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825048, 37.507484, 30.438805>,  <31.624002, 37.631962, 30.397745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825048, 37.507484, 30.438805>,  <32.160126, 37.300026, 30.507238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825048, 37.507484, 30.438805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141386, -0.096630, -0.985227,
		-0.527521, -0.849508, 0.007617,
		-0.837694, 0.518651, -0.171083,
		31.573740, 37.663078, 30.387480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931894, 37.004234, 29.979425>,  <32.160126, 37.300026, 30.507238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931894, 37.004234, 29.979425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744631, 37.356403, 29.949253>,  <31.632273, 37.567703, 29.931149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744631, 37.356403, 29.949253>,  <31.931894, 37.004234, 29.979425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744631, 37.356403, 29.949253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367511, 0.116366, -0.922711,
		-0.803595, -0.459695, -0.378042,
		-0.468157, 0.880420, -0.075432,
		31.604183, 37.620529, 29.926624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484213, 36.940441, 29.471720>,  <31.931894, 37.004234, 29.979425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484213, 36.940441, 29.471720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552744, 37.332996, 29.506409>,  <31.593863, 37.568531, 29.527222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552744, 37.332996, 29.506409>,  <31.484213, 36.940441, 29.471720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552744, 37.332996, 29.506409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055661, 0.078240, -0.995380,
		-0.983641, 0.175362, -0.041221,
		0.171327, 0.981390, 0.086721,
		31.604141, 37.627415, 29.532425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923212, 37.217655, 29.001978>,  <31.484213, 36.940441, 29.471720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923212, 37.217655, 29.001978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212643, 37.491577, 29.036564>,  <31.386301, 37.655930, 29.057316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212643, 37.491577, 29.036564>,  <30.923212, 37.217655, 29.001978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212643, 37.491577, 29.036564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174069, -0.059823, -0.982915,
		-0.667935, 0.726265, -0.162490,
		0.723577, 0.684807, 0.086463,
		31.429716, 37.697018, 29.062502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728146, 37.865475, 28.678020>,  <30.923212, 37.217655, 29.001978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728146, 37.865475, 28.678020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127989, 37.869987, 28.688236>,  <31.367895, 37.872696, 28.694366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127989, 37.869987, 28.688236>,  <30.728146, 37.865475, 28.678020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127989, 37.869987, 28.688236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024064, 0.115789, -0.992982,
		-0.014160, 0.993210, 0.115472,
		0.999610, 0.011282, 0.025541,
		31.427872, 37.873371, 28.695898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941631, 38.457424, 28.201273>,  <30.728146, 37.865475, 28.678020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941631, 38.457424, 28.201273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241835, 38.193851, 28.221458>,  <31.421957, 38.035709, 28.233570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241835, 38.193851, 28.221458>,  <30.941631, 38.457424, 28.201273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241835, 38.193851, 28.221458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040529, -0.030323, -0.998718,
		0.659615, 0.751593, 0.003948,
		0.750510, -0.658930, 0.050463,
		31.466988, 37.996174, 28.236597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293045, 38.620720, 27.572708>,  <30.941631, 38.457424, 28.201273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293045, 38.620720, 27.572708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463633, 38.274845, 27.678867>,  <31.565985, 38.067322, 27.742563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463633, 38.274845, 27.678867>,  <31.293045, 38.620720, 27.572708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463633, 38.274845, 27.678867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382533, -0.093464, -0.919202,
		0.819629, 0.493537, 0.290912,
		0.426470, -0.864688, 0.265400,
		31.591574, 38.015438, 27.758488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025478, 38.694351, 27.509855>,  <31.293045, 38.620720, 27.572708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025478, 38.694351, 27.509855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955492, 38.301430, 27.483097>,  <31.913500, 38.065678, 27.467043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955492, 38.301430, 27.483097>,  <32.025478, 38.694351, 27.509855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955492, 38.301430, 27.483097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353354, 0.000767, -0.935489,
		0.918982, -0.187317, 0.346965,
		-0.174967, -0.982299, -0.066894,
		31.903002, 38.006741, 27.463028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659264, 38.510303, 27.155298>,  <32.025478, 38.694351, 27.509855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659264, 38.510303, 27.155298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377483, 38.230526, 27.107094>,  <32.208416, 38.062660, 27.078171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377483, 38.230526, 27.107094>,  <32.659264, 38.510303, 27.155298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377483, 38.230526, 27.107094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294906, -0.134012, -0.946082,
		0.645583, -0.702009, 0.300676,
		-0.704452, -0.699445, -0.120510,
		32.166149, 38.020691, 27.070940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997894, 38.049000, 26.679609>,  <32.659264, 38.510303, 27.155298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997894, 38.049000, 26.679609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601334, 37.997334, 26.688057>,  <32.363400, 37.966331, 26.693127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601334, 37.997334, 26.688057>,  <32.997894, 38.049000, 26.679609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601334, 37.997334, 26.688057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001757, -0.174486, -0.984658,
		0.130873, -0.976151, 0.173212,
		-0.991398, -0.129170, 0.021121,
		32.303913, 37.958584, 26.694393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855759, 37.460091, 26.255844>,  <32.997894, 38.049000, 26.679609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855759, 37.460091, 26.255844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515686, 37.670315, 26.268425>,  <32.311642, 37.796448, 26.275974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515686, 37.670315, 26.268425>,  <32.855759, 37.460091, 26.255844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515686, 37.670315, 26.268425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198047, -0.263878, -0.944005,
		-0.487828, -0.808801, 0.328428,
		-0.850177, 0.525557, 0.031454,
		32.260632, 37.827980, 26.277861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459312, 37.137451, 25.861567>,  <32.855759, 37.460091, 26.255844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459312, 37.137451, 25.861567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274448, 37.492138, 25.866428>,  <32.163528, 37.704948, 25.869345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274448, 37.492138, 25.866428>,  <32.459312, 37.137451, 25.861567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274448, 37.492138, 25.866428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413102, -0.203145, -0.887738,
		-0.784700, -0.415299, 0.460188,
		-0.462162, 0.886712, 0.012153,
		32.135799, 37.758152, 25.870075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910725, 36.926926, 25.531809>,  <32.459312, 37.137451, 25.861567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910725, 36.926926, 25.531809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930380, 37.326305, 25.521347>,  <31.942173, 37.565933, 25.515070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930380, 37.326305, 25.521347>,  <31.910725, 36.926926, 25.531809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930380, 37.326305, 25.521347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399909, -0.004330, -0.916544,
		-0.915237, 0.055496, 0.399076,
		0.049136, 0.998449, -0.026157,
		31.945120, 37.625839, 25.513500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345070, 37.050095, 25.210981>,  <31.910725, 36.926926, 25.531809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345070, 37.050095, 25.210981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564354, 37.382259, 25.171207>,  <31.695925, 37.581558, 25.147343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564354, 37.382259, 25.171207>,  <31.345070, 37.050095, 25.210981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564354, 37.382259, 25.171207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219310, 0.028005, -0.975253,
		-0.807075, 0.556450, 0.197470,
		0.548209, 0.830409, -0.099433,
		31.728817, 37.631382, 25.141378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911541, 37.627834, 24.871258>,  <31.345070, 37.050095, 25.210981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911541, 37.627834, 24.871258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301628, 37.693298, 24.811710>,  <31.535681, 37.732578, 24.775982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301628, 37.693298, 24.811710>,  <30.911541, 37.627834, 24.871258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301628, 37.693298, 24.811710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171896, 0.136908, -0.975555,
		-0.139282, 0.976970, 0.161648,
		0.975219, 0.163664, -0.148868,
		31.594194, 37.742397, 24.767050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232765, 37.985321, 24.922678>,  <30.911541, 37.627834, 24.871258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232765, 37.985321, 24.922678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845881, 37.890137, 24.958172>,  <29.613750, 37.833027, 24.979469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845881, 37.890137, 24.958172>,  <30.232765, 37.985321, 24.922678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845881, 37.890137, 24.958172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032328, 0.461910, 0.886338,
		-0.251905, 0.854408, -0.454457,
		-0.967212, -0.237965, 0.088736,
		29.555717, 37.818748, 24.984793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975679, 38.572090, 25.256300>,  <30.232765, 37.985321, 24.922678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975679, 38.572090, 25.256300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674944, 38.315990, 25.319317>,  <29.494503, 38.162331, 25.357126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674944, 38.315990, 25.319317>,  <29.975679, 38.572090, 25.256300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674944, 38.315990, 25.319317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073427, 0.318748, 0.944991,
		-0.655248, 0.698912, -0.286658,
		-0.751837, -0.640252, 0.157540,
		29.449392, 38.123917, 25.366579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604002, 38.949104, 25.730331>,  <29.975679, 38.572090, 25.256300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604002, 38.949104, 25.730331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427343, 38.590813, 25.750774>,  <29.321348, 38.375835, 25.763041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427343, 38.590813, 25.750774>,  <29.604002, 38.949104, 25.730331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427343, 38.590813, 25.750774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380860, 0.238752, 0.893277,
		-0.812339, 0.375048, -0.446592,
		-0.441647, -0.895732, 0.051107,
		29.294849, 38.322094, 25.766106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886984, 39.065037, 25.915857>,  <29.604002, 38.949104, 25.730331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886984, 39.065037, 25.915857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940569, 38.684158, 26.025673>,  <28.972719, 38.455631, 26.091562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940569, 38.684158, 26.025673>,  <28.886984, 39.065037, 25.915857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940569, 38.684158, 26.025673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537255, 0.163006, 0.827518,
		-0.832714, -0.258352, -0.489737,
		0.133960, -0.952199, 0.274538,
		28.980757, 38.398499, 26.108034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141729, 38.722321, 26.103699>,  <28.886984, 39.065037, 25.915857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141729, 38.722321, 26.103699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445461, 38.543224, 26.292568>,  <28.627701, 38.435768, 26.405890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445461, 38.543224, 26.292568>,  <28.141729, 38.722321, 26.103699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445461, 38.543224, 26.292568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515237, 0.029482, 0.856541,
		-0.397426, -0.893679, -0.208304,
		0.759331, -0.447738, 0.472173,
		28.673260, 38.408901, 26.434219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808205, 38.401855, 26.596598>,  <28.141729, 38.722321, 26.103699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808205, 38.401855, 26.596598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191658, 38.377956, 26.707920>,  <28.421730, 38.363617, 26.774714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191658, 38.377956, 26.707920>,  <27.808205, 38.401855, 26.596598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191658, 38.377956, 26.707920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282361, -0.075920, 0.956299,
		-0.035995, -0.995323, -0.089647,
		0.958633, -0.059735, 0.278307,
		28.479248, 38.360035, 26.791412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768198, 37.734333, 27.004118>,  <27.808205, 38.401855, 26.596598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768198, 37.734333, 27.004118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066483, 37.978134, 27.111763>,  <28.245453, 38.124413, 27.176350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066483, 37.978134, 27.111763>,  <27.768198, 37.734333, 27.004118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066483, 37.978134, 27.111763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144804, -0.245991, 0.958394,
		0.650341, -0.753656, -0.095181,
		0.745713, 0.609501, 0.269111,
		28.290197, 38.160984, 27.192497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152069, 37.327980, 27.630081>,  <27.768198, 37.734333, 27.004118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152069, 37.327980, 27.630081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234571, 37.718792, 27.651539>,  <28.284073, 37.953278, 27.664413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234571, 37.718792, 27.651539>,  <28.152069, 37.327980, 27.630081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234571, 37.718792, 27.651539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158934, -0.020643, 0.987073,
		0.965504, -0.212116, 0.151025,
		0.206257, 0.977027, 0.053644,
		28.296448, 38.011898, 27.667631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601074, 37.355492, 28.220715>,  <28.152069, 37.327980, 27.630081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601074, 37.355492, 28.220715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514639, 37.742413, 28.167610>,  <28.462778, 37.974567, 28.135748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514639, 37.742413, 28.167610>,  <28.601074, 37.355492, 28.220715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514639, 37.742413, 28.167610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084418, 0.116955, 0.989543,
		0.972718, 0.225037, 0.056385,
		-0.216089, 0.967305, -0.132762,
		28.449812, 38.032604, 28.127781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981737, 37.748356, 28.659824>,  <28.601074, 37.355492, 28.220715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981737, 37.748356, 28.659824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676926, 37.993855, 28.577240>,  <28.494040, 38.141155, 28.527689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676926, 37.993855, 28.577240>,  <28.981737, 37.748356, 28.659824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676926, 37.993855, 28.577240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172271, 0.115203, 0.978290,
		0.624209, 0.781052, 0.017943,
		-0.762028, 0.613748, -0.206463,
		28.448317, 38.177979, 28.515301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156511, 38.405266, 29.112976>,  <28.981737, 37.748356, 28.659824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156511, 38.405266, 29.112976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765945, 38.382000, 29.029812>,  <28.531605, 38.368042, 28.979914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765945, 38.382000, 29.029812>,  <29.156511, 38.405266, 29.112976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765945, 38.382000, 29.029812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215803, 0.235142, 0.947701,
		-0.006235, 0.970219, -0.242149,
		-0.976417, -0.058165, -0.207910,
		28.473021, 38.364552, 28.967440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847202, 39.019142, 29.302757>,  <29.156511, 38.405266, 29.112976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847202, 39.019142, 29.302757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533600, 38.771019, 29.293324>,  <28.345438, 38.622147, 29.287664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533600, 38.771019, 29.293324>,  <28.847202, 39.019142, 29.302757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533600, 38.771019, 29.293324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267368, 0.303154, 0.914665,
		-0.560222, 0.723409, -0.403524,
		-0.784007, -0.620305, -0.023582,
		28.298397, 38.584927, 29.286249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300419, 39.367878, 29.498272>,  <28.847202, 39.019142, 29.302757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300419, 39.367878, 29.498272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191412, 38.989044, 29.566116>,  <28.126007, 38.761745, 29.606823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191412, 38.989044, 29.566116>,  <28.300419, 39.367878, 29.498272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191412, 38.989044, 29.566116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070803, 0.195543, 0.978136,
		-0.959542, 0.254553, -0.120345,
		-0.272520, -0.947083, 0.169609,
		28.109655, 38.704918, 29.616999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866343, 39.432327, 30.076490>,  <28.300419, 39.367878, 29.498272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866343, 39.432327, 30.076490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917252, 39.036034, 30.057556>,  <27.947796, 38.798256, 30.046196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917252, 39.036034, 30.057556>,  <27.866343, 39.432327, 30.076490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917252, 39.036034, 30.057556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050202, -0.041229, 0.997888,
		-0.990597, -0.129378, 0.044489,
		0.127271, -0.990738, -0.047337,
		27.955433, 38.738811, 30.043356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405685, 39.190418, 30.540665>,  <27.866343, 39.432327, 30.076490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405685, 39.190418, 30.540665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665573, 38.887993, 30.509083>,  <27.821507, 38.706539, 30.490133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665573, 38.887993, 30.509083>,  <27.405685, 39.190418, 30.540665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665573, 38.887993, 30.509083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066265, -0.047137, 0.996688,
		-0.757281, -0.652798, 0.019475,
		0.649718, -0.756064, -0.078953,
		27.860489, 38.661175, 30.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186169, 38.789322, 31.075340>,  <27.405685, 39.190418, 30.540665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186169, 38.789322, 31.075340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553808, 38.659248, 30.986332>,  <27.774391, 38.581203, 30.932926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553808, 38.659248, 30.986332>,  <27.186169, 38.789322, 31.075340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553808, 38.659248, 30.986332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176016, -0.166422, 0.970218,
		-0.352528, -0.930893, -0.095721,
		0.919099, -0.325181, -0.222520,
		27.829538, 38.561695, 30.919577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229546, 38.225384, 31.362967>,  <27.186169, 38.789322, 31.075340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229546, 38.225384, 31.362967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609135, 38.343704, 31.319244>,  <27.836889, 38.414696, 31.293011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609135, 38.343704, 31.319244>,  <27.229546, 38.225384, 31.362967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609135, 38.343704, 31.319244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155197, -0.136341, 0.978430,
		0.274519, -0.945469, -0.175292,
		0.948975, 0.295802, -0.109306,
		27.893827, 38.432446, 31.286453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670193, 37.740700, 31.758055>,  <27.229546, 38.225384, 31.362967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670193, 37.740700, 31.758055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885931, 38.075214, 31.718590>,  <28.015373, 38.275925, 31.694910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885931, 38.075214, 31.718590>,  <27.670193, 37.740700, 31.758055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885931, 38.075214, 31.718590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016595, 0.106586, 0.994165,
		0.841922, -0.537834, 0.043609,
		0.539344, 0.836286, -0.098662,
		28.047735, 38.326099, 31.688992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248220, 37.687946, 32.126938>,  <27.670193, 37.740700, 31.758055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248220, 37.687946, 32.126938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231018, 38.087402, 32.115139>,  <28.220697, 38.327076, 32.108059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231018, 38.087402, 32.115139>,  <28.248220, 37.687946, 32.126938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231018, 38.087402, 32.115139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059494, 0.026910, 0.997866,
		0.997302, 0.044668, 0.058255,
		-0.043005, 0.998639, -0.029495,
		28.218117, 38.386993, 32.106289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665075, 37.797050, 32.692402>,  <28.248220, 37.687946, 32.126938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665075, 37.797050, 32.692402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484268, 38.149433, 32.636417>,  <28.375784, 38.360863, 32.602825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484268, 38.149433, 32.636417>,  <28.665075, 37.797050, 32.692402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484268, 38.149433, 32.636417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049007, 0.181197, 0.982225,
		0.890661, 0.437125, -0.125078,
		-0.452019, 0.880959, -0.139963,
		28.348663, 38.413719, 32.594429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007648, 38.256512, 33.149078>,  <28.665075, 37.797050, 32.692402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007648, 38.256512, 33.149078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665604, 38.457748, 33.098988>,  <28.460377, 38.578491, 33.068932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665604, 38.457748, 33.098988>,  <29.007648, 38.256512, 33.149078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665604, 38.457748, 33.098988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082434, 0.106533, 0.990886,
		0.511849, 0.857641, -0.049625,
		-0.855111, 0.503093, -0.125228,
		28.409071, 38.608677, 33.061420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028646, 38.808216, 33.680779>,  <29.007648, 38.256512, 33.149078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028646, 38.808216, 33.680779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669811, 38.683472, 33.555573>,  <28.454510, 38.608627, 33.480450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669811, 38.683472, 33.555573>,  <29.028646, 38.808216, 33.680779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669811, 38.683472, 33.555573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248953, -0.228522, 0.941170,
		-0.365043, 0.922237, 0.127367,
		-0.897088, -0.311859, -0.313014,
		28.400684, 38.589912, 33.461670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610559, 39.048260, 34.105560>,  <29.028646, 38.808216, 33.680779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610559, 39.048260, 34.105560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396492, 38.742760, 33.961182>,  <28.268051, 38.559460, 33.874554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396492, 38.742760, 33.961182>,  <28.610559, 39.048260, 34.105560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396492, 38.742760, 33.961182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239507, -0.272565, 0.931850,
		-0.810081, 0.585146, -0.037055,
		-0.535168, -0.763749, -0.360946,
		28.235941, 38.513634, 33.852898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182652, 39.033997, 34.610283>,  <28.610559, 39.048260, 34.105560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182652, 39.033997, 34.610283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153404, 38.688232, 34.411304>,  <28.135855, 38.480774, 34.291920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153404, 38.688232, 34.411304>,  <28.182652, 39.033997, 34.610283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153404, 38.688232, 34.411304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096302, -0.490329, 0.866200,
		-0.992663, 0.111242, -0.047392,
		-0.073120, -0.864409, -0.497444,
		28.131468, 38.428909, 34.262070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641054, 38.669823, 34.932907>,  <28.182652, 39.033997, 34.610283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641054, 38.669823, 34.932907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849693, 38.377777, 34.756329>,  <27.974876, 38.202549, 34.650383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849693, 38.377777, 34.756329>,  <27.641054, 38.669823, 34.932907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849693, 38.377777, 34.756329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022727, -0.529111, 0.848248,
		-0.852890, -0.432410, -0.292575,
		0.521596, -0.730112, -0.441446,
		28.006172, 38.158745, 34.623894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271770, 38.047882, 35.022907>,  <27.641054, 38.669823, 34.932907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271770, 38.047882, 35.022907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641726, 37.905785, 34.968681>,  <27.863699, 37.820526, 34.936146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641726, 37.905785, 34.968681>,  <27.271770, 38.047882, 35.022907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641726, 37.905785, 34.968681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037974, -0.441052, 0.896678,
		-0.378332, -0.824181, -0.421415,
		0.924891, -0.355245, -0.135567,
		27.919193, 37.799210, 34.928013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269596, 37.267513, 35.189640>,  <27.271770, 38.047882, 35.022907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269596, 37.267513, 35.189640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643566, 37.406300, 35.219383>,  <27.867949, 37.489571, 35.237228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643566, 37.406300, 35.219383>,  <27.269596, 37.267513, 35.189640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643566, 37.406300, 35.219383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078616, -0.406871, 0.910097,
		0.346024, -0.845028, -0.407671,
		0.934926, 0.346964, 0.074355,
		27.924044, 37.510387, 35.241688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656042, 36.671947, 35.398563>,  <27.269596, 37.267513, 35.189640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656042, 36.671947, 35.398563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892996, 36.982704, 35.483898>,  <28.035168, 37.169159, 35.535099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892996, 36.982704, 35.483898>,  <27.656042, 36.671947, 35.398563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892996, 36.982704, 35.483898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278033, -0.445669, 0.850927,
		0.756159, -0.444762, -0.480010,
		0.592386, 0.776895, 0.213338,
		28.070711, 37.215775, 35.547901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287056, 36.413769, 35.594303>,  <27.656042, 36.671947, 35.398563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287056, 36.413769, 35.594303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273642, 36.782425, 35.748943>,  <28.265593, 37.003616, 35.841728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273642, 36.782425, 35.748943>,  <28.287056, 36.413769, 35.594303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273642, 36.782425, 35.748943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121842, -0.380160, 0.916860,
		0.991983, 0.077853, -0.099545,
		-0.033538, 0.921638, 0.386598,
		28.263580, 37.058918, 35.864922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879028, 36.403008, 35.901711>,  <28.287056, 36.413769, 35.594303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879028, 36.403008, 35.901711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633486, 36.675102, 36.061939>,  <28.486160, 36.838360, 36.158077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633486, 36.675102, 36.061939>,  <28.879028, 36.403008, 35.901711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633486, 36.675102, 36.061939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052862, -0.470864, 0.880621,
		0.787647, 0.561748, 0.253083,
		-0.613854, 0.680240, 0.400570,
		28.449329, 36.879173, 36.182110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220606, 36.649567, 36.604050>,  <28.879028, 36.403008, 35.901711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220606, 36.649567, 36.604050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829765, 36.732185, 36.624496>,  <28.595261, 36.781757, 36.636765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829765, 36.732185, 36.624496>,  <29.220606, 36.649567, 36.604050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829765, 36.732185, 36.624496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019046, -0.324180, 0.945804,
		0.211921, 0.923172, 0.320690,
		-0.977101, 0.206544, 0.051118,
		28.536634, 36.794147, 36.639832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138870, 36.914387, 37.293427>,  <29.220606, 36.649567, 36.604050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138870, 36.914387, 37.293427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776278, 36.784363, 37.185623>,  <28.558722, 36.706348, 37.120941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776278, 36.784363, 37.185623>,  <29.138870, 36.914387, 37.293427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776278, 36.784363, 37.185623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035638, -0.577089, 0.815903,
		-0.420743, 0.749204, 0.511535,
		-0.906479, -0.325056, -0.269506,
		28.504333, 36.686848, 37.104771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617022, 36.876225, 37.909657>,  <29.138870, 36.914387, 37.293427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617022, 36.876225, 37.909657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473156, 36.635429, 37.624489>,  <28.386837, 36.490952, 37.453388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473156, 36.635429, 37.624489>,  <28.617022, 36.876225, 37.909657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473156, 36.635429, 37.624489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257431, -0.670373, 0.695938,
		-0.896868, 0.433830, 0.086137,
		-0.359662, -0.601990, -0.712918,
		28.365257, 36.454834, 37.410614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029238, 36.671837, 38.214577>,  <28.617022, 36.876225, 37.909657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029238, 36.671837, 38.214577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102131, 36.409100, 37.921906>,  <28.145866, 36.251457, 37.746304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102131, 36.409100, 37.921906>,  <28.029238, 36.671837, 38.214577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102131, 36.409100, 37.921906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376573, -0.734021, 0.565160,
		-0.908286, 0.172537, -0.381113,
		0.182233, -0.656844, -0.731674,
		28.156801, 36.212048, 37.702404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394127, 36.236176, 38.127335>,  <28.029238, 36.671837, 38.214577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394127, 36.236176, 38.127335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696564, 36.037121, 37.957310>,  <27.878027, 35.917686, 37.855297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696564, 36.037121, 37.957310>,  <27.394127, 36.236176, 38.127335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696564, 36.037121, 37.957310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262946, -0.825740, 0.499011,
		-0.599317, -0.265531, -0.755190,
		0.756094, -0.497640, -0.425060,
		27.923391, 35.887829, 37.829792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152758, 35.686199, 37.885414>,  <27.394127, 36.236176, 38.127335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152758, 35.686199, 37.885414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536436, 35.588455, 37.942314>,  <27.766644, 35.529808, 37.976456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536436, 35.588455, 37.942314>,  <27.152758, 35.686199, 37.885414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536436, 35.588455, 37.942314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275068, -0.690005, 0.669500,
		-0.065444, -0.681309, -0.729064,
		0.959195, -0.244358, 0.142250,
		27.824194, 35.515148, 37.984989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127384, 34.960754, 38.053223>,  <27.152758, 35.686199, 37.885414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127384, 34.960754, 38.053223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497499, 35.055397, 38.171783>,  <27.719568, 35.112183, 38.242920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497499, 35.055397, 38.171783>,  <27.127384, 34.960754, 38.053223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497499, 35.055397, 38.171783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066704, -0.667829, 0.741320,
		0.373349, -0.705707, -0.602153,
		0.925290, 0.236605, 0.296407,
		27.775087, 35.126377, 38.260704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630821, 34.328735, 38.158470>,  <27.127384, 34.960754, 38.053223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630821, 34.328735, 38.158470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756725, 34.598701, 38.425430>,  <27.832268, 34.760681, 38.585606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756725, 34.598701, 38.425430>,  <27.630821, 34.328735, 38.158470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756725, 34.598701, 38.425430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015162, -0.699474, 0.714497,
		0.949051, -0.235014, -0.209932,
		0.314759, 0.674911, 0.667400,
		27.851152, 34.801174, 38.625648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342619, 34.304436, 38.503155>,  <27.630821, 34.328735, 38.158470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342619, 34.304436, 38.503155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189007, 33.947971, 38.599777>,  <28.096840, 33.734093, 38.657749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189007, 33.947971, 38.599777>,  <28.342619, 34.304436, 38.503155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189007, 33.947971, 38.599777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160849, -0.193042, -0.967917,
		0.909202, -0.410563, -0.069209,
		-0.384031, -0.891164, 0.241552,
		28.073797, 33.680622, 38.672241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721825, 33.718697, 38.194324>,  <28.342619, 34.304436, 38.503155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721825, 33.718697, 38.194324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346571, 33.596371, 38.259293>,  <28.121418, 33.522976, 38.298271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346571, 33.596371, 38.259293>,  <28.721825, 33.718697, 38.194324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346571, 33.596371, 38.259293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077482, -0.271758, -0.959241,
		0.337493, -0.912481, 0.231250,
		-0.938134, -0.305819, 0.162418,
		28.065130, 33.504623, 38.308018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766594, 33.065620, 38.014408>,  <28.721825, 33.718697, 38.194324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766594, 33.065620, 38.014408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378321, 33.160938, 38.001827>,  <28.145357, 33.218128, 37.994278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378321, 33.160938, 38.001827>,  <28.766594, 33.065620, 38.014408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378321, 33.160938, 38.001827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034242, -0.266621, -0.963193,
		-0.237901, -0.933881, 0.266965,
		-0.970686, 0.238286, -0.031451,
		28.087116, 33.232426, 37.992390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431740, 32.520046, 37.730404>,  <28.766594, 33.065620, 38.014408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431740, 32.520046, 37.730404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210794, 32.842037, 37.643772>,  <28.078228, 33.035233, 37.591793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210794, 32.842037, 37.643772>,  <28.431740, 32.520046, 37.730404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210794, 32.842037, 37.643772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037945, -0.283825, -0.958125,
		-0.832739, -0.521015, 0.187319,
		-0.552363, 0.804976, -0.216583,
		28.045086, 33.083530, 37.578796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069567, 32.255062, 37.154949>,  <28.431740, 32.520046, 37.730404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069567, 32.255062, 37.154949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970247, 32.642521, 37.151634>,  <27.910656, 32.874996, 37.149647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970247, 32.642521, 37.151634>,  <28.069567, 32.255062, 37.154949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970247, 32.642521, 37.151634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201888, -0.060110, -0.977562,
		-0.947412, -0.241054, 0.210484,
		-0.248297, 0.968648, -0.008283,
		27.895758, 32.933117, 37.149151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429737, 32.306072, 36.905716>,  <28.069567, 32.255062, 37.154949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429737, 32.306072, 36.905716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576590, 32.671604, 36.836281>,  <27.664701, 32.890923, 36.794621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576590, 32.671604, 36.836281>,  <27.429737, 32.306072, 36.905716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576590, 32.671604, 36.836281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364916, -0.030163, -0.930552,
		-0.855600, 0.404981, 0.322397,
		0.367132, 0.913827, -0.173592,
		27.686729, 32.945751, 36.784203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882137, 32.756073, 36.797638>,  <27.429737, 32.306072, 36.905716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882137, 32.756073, 36.797638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206112, 32.906448, 36.617558>,  <27.400496, 32.996674, 36.509510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206112, 32.906448, 36.617558>,  <26.882137, 32.756073, 36.797638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206112, 32.906448, 36.617558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446347, -0.102889, -0.888925,
		-0.380498, 0.920917, 0.084464,
		0.809936, 0.375934, -0.450198,
		27.449093, 33.019230, 36.482498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615982, 32.904255, 36.074223>,  <26.882137, 32.756073, 36.797638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615982, 32.904255, 36.074223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996395, 33.023705, 36.042320>,  <27.224642, 33.095375, 36.023178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996395, 33.023705, 36.042320>,  <26.615982, 32.904255, 36.074223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996395, 33.023705, 36.042320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112536, 0.094208, -0.989172,
		-0.287881, 0.949708, 0.123201,
		0.951031, 0.298628, -0.079755,
		27.281704, 33.113293, 36.018394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615891, 33.583057, 35.665504>,  <26.615982, 32.904255, 36.074223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615891, 33.583057, 35.665504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976892, 33.410789, 35.664314>,  <27.193493, 33.307426, 35.663601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976892, 33.410789, 35.664314>,  <26.615891, 33.583057, 35.665504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976892, 33.410789, 35.664314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095671, 0.207211, -0.973607,
		0.419922, 0.878399, 0.228212,
		0.902503, -0.430673, -0.002975,
		27.247643, 33.281590, 35.663422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066622, 34.128437, 35.450611>,  <26.615891, 33.583057, 35.665504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066622, 34.128437, 35.450611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215237, 33.764378, 35.377300>,  <27.304405, 33.545940, 35.333313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215237, 33.764378, 35.377300>,  <27.066622, 34.128437, 35.450611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215237, 33.764378, 35.377300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142733, 0.251058, -0.957391,
		0.917382, 0.329544, 0.223185,
		0.371535, -0.910148, -0.183279,
		27.326696, 33.491333, 35.322315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691471, 34.322201, 35.035831>,  <27.066622, 34.128437, 35.450611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691471, 34.322201, 35.035831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651285, 33.926331, 34.994953>,  <27.627174, 33.688808, 34.970425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651285, 33.926331, 34.994953>,  <27.691471, 34.322201, 35.035831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651285, 33.926331, 34.994953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284942, 0.069792, -0.956000,
		0.953265, -0.125163, 0.274990,
		-0.100464, -0.989678, -0.102195,
		27.621145, 33.629429, 34.964294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256447, 34.197609, 34.682465>,  <27.691471, 34.322201, 35.035831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256447, 34.197609, 34.682465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985542, 33.910610, 34.617332>,  <27.823000, 33.738411, 34.578255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985542, 33.910610, 34.617332>,  <28.256447, 34.197609, 34.682465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985542, 33.910610, 34.617332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079813, 0.291654, -0.953188,
		0.731403, -0.632559, -0.254791,
		-0.677259, -0.717501, -0.162830,
		27.782364, 33.695358, 34.568485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518641, 33.967495, 34.100517>,  <28.256447, 34.197609, 34.682465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518641, 33.967495, 34.100517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136415, 33.851761, 34.123108>,  <27.907082, 33.782322, 34.136662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136415, 33.851761, 34.123108>,  <28.518641, 33.967495, 34.100517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136415, 33.851761, 34.123108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114067, 0.186233, -0.975862,
		0.271831, -0.938938, -0.210960,
		-0.955561, -0.289333, 0.056478,
		27.849747, 33.764961, 34.140053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403986, 33.661705, 33.537613>,  <28.518641, 33.967495, 34.100517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403986, 33.661705, 33.537613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027514, 33.731422, 33.653408>,  <27.801630, 33.773254, 33.722885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027514, 33.731422, 33.653408>,  <28.403986, 33.661705, 33.537613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027514, 33.731422, 33.653408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256958, 0.187184, -0.948122,
		-0.219438, -0.966739, -0.131388,
		-0.941180, 0.174293, 0.289486,
		27.745159, 33.783710, 33.740253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915594, 33.466080, 32.965668>,  <28.403986, 33.661705, 33.537613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915594, 33.466080, 32.965668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692726, 33.700504, 33.200989>,  <27.559006, 33.841160, 33.342182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692726, 33.700504, 33.200989>,  <27.915594, 33.466080, 32.965668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692726, 33.700504, 33.200989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299640, 0.518836, -0.800640,
		-0.774454, -0.622370, -0.113473,
		-0.557168, 0.586058, 0.588302,
		27.525576, 33.876320, 33.377480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321077, 33.439270, 32.672943>,  <27.915594, 33.466080, 32.965668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321077, 33.439270, 32.672943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355087, 33.777046, 32.884487>,  <27.375492, 33.979713, 33.011414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355087, 33.777046, 32.884487>,  <27.321077, 33.439270, 32.672943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355087, 33.777046, 32.884487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212604, 0.533930, -0.818363,
		-0.973433, -0.042857, 0.224928,
		0.085023, 0.844442, 0.528857,
		27.380594, 34.030380, 33.043144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816917, 33.711597, 32.351288>,  <27.321077, 33.439270, 32.672943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816917, 33.711597, 32.351288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017387, 34.002235, 32.539276>,  <27.137669, 34.176620, 32.652069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017387, 34.002235, 32.539276>,  <26.816917, 33.711597, 32.351288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017387, 34.002235, 32.539276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047130, 0.519381, -0.853242,
		-0.864061, 0.449774, 0.226057,
		0.501175, 0.726599, 0.469975,
		27.167740, 34.220215, 32.680267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455791, 34.282890, 32.190441>,  <26.816917, 33.711597, 32.351288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455791, 34.282890, 32.190441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796534, 34.454727, 32.310307>,  <27.000978, 34.557831, 32.382225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796534, 34.454727, 32.310307>,  <26.455791, 34.282890, 32.190441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796534, 34.454727, 32.310307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037491, 0.620651, -0.783190,
		-0.522436, 0.655929, 0.544810,
		0.851853, 0.429592, 0.299659,
		27.052090, 34.583607, 32.400204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423218, 35.048443, 32.169933>,  <26.455791, 34.282890, 32.190441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423218, 35.048443, 32.169933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805994, 34.944225, 32.118744>,  <27.035660, 34.881695, 32.088028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805994, 34.944225, 32.118744>,  <26.423218, 35.048443, 32.169933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805994, 34.944225, 32.118744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034281, 0.539223, -0.841465,
		0.288247, 0.800846, 0.524937,
		0.956942, -0.260545, -0.127976,
		27.093077, 34.866062, 32.080353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684513, 35.611107, 31.969585>,  <26.423218, 35.048443, 32.169933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684513, 35.611107, 31.969585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974682, 35.365334, 31.845497>,  <27.148783, 35.217869, 31.771044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974682, 35.365334, 31.845497>,  <26.684513, 35.611107, 31.969585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974682, 35.365334, 31.845497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140389, 0.573307, -0.807223,
		0.673837, 0.542025, 0.502148,
		0.725420, -0.614433, -0.310221,
		27.192308, 35.181004, 31.752430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199286, 36.068954, 31.676016>,  <26.684513, 35.611107, 31.969585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199286, 36.068954, 31.676016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259289, 35.701771, 31.529129>,  <27.295290, 35.481461, 31.440998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259289, 35.701771, 31.529129>,  <27.199286, 36.068954, 31.676016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259289, 35.701771, 31.529129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221115, 0.393159, -0.892488,
		0.963642, 0.052683, 0.261951,
		0.150007, -0.917960, -0.367215,
		27.304291, 35.426384, 31.418964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648407, 36.255001, 31.247602>,  <27.199286, 36.068954, 31.676016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648407, 36.255001, 31.247602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517601, 35.900108, 31.117443>,  <27.439117, 35.687172, 31.039347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517601, 35.900108, 31.117443>,  <27.648407, 36.255001, 31.247602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517601, 35.900108, 31.117443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164044, 0.285810, -0.944141,
		0.930673, -0.362127, 0.052082,
		-0.327013, -0.887230, -0.325400,
		27.419497, 35.633938, 31.019823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208803, 36.005894, 30.880327>,  <27.648407, 36.255001, 31.247602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208803, 36.005894, 30.880327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860588, 35.855972, 30.752773>,  <27.651659, 35.766022, 30.676241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860588, 35.855972, 30.752773>,  <28.208803, 36.005894, 30.880327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860588, 35.855972, 30.752773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213237, 0.296706, -0.930857,
		0.443503, -0.878344, -0.178372,
		-0.870537, -0.374802, -0.318885,
		27.599426, 35.743530, 30.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309483, 35.711445, 30.247282>,  <28.208803, 36.005894, 30.880327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309483, 35.711445, 30.247282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911655, 35.710960, 30.205643>,  <27.672960, 35.710670, 30.180658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911655, 35.710960, 30.205643>,  <28.309483, 35.711445, 30.247282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911655, 35.710960, 30.205643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102200, 0.179175, -0.978494,
		0.019838, -0.983816, -0.178078,
		-0.994566, -0.001212, -0.104100,
		27.613285, 35.710598, 30.174412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310719, 35.302013, 29.703642>,  <28.309483, 35.711445, 30.247282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310719, 35.302013, 29.703642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966160, 35.503376, 29.730705>,  <27.759424, 35.624195, 29.746943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966160, 35.503376, 29.730705>,  <28.310719, 35.302013, 29.703642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966160, 35.503376, 29.730705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066074, 0.243128, -0.967741,
		-0.503617, -0.829139, -0.242692,
		-0.861397, 0.503406, 0.067659,
		27.707741, 35.654396, 29.751003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924650, 35.094307, 29.191891>,  <28.310719, 35.302013, 29.703642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924650, 35.094307, 29.191891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758041, 35.449955, 29.267765>,  <27.658075, 35.663342, 29.313290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758041, 35.449955, 29.267765>,  <27.924650, 35.094307, 29.191891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758041, 35.449955, 29.267765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117787, 0.154109, -0.981008,
		-0.901462, -0.430955, 0.040536,
		-0.416523, 0.889117, 0.189684,
		27.633085, 35.716690, 29.324671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362076, 35.139648, 28.737888>,  <27.924650, 35.094307, 29.191891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362076, 35.139648, 28.737888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431475, 35.520912, 28.836990>,  <27.473114, 35.749672, 28.896452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431475, 35.520912, 28.836990>,  <27.362076, 35.139648, 28.737888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431475, 35.520912, 28.836990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198423, 0.280245, -0.939197,
		-0.964638, 0.113787, 0.237750,
		0.173497, 0.953161, 0.247757,
		27.483524, 35.806862, 28.911318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768042, 35.486549, 28.452942>,  <27.362076, 35.139648, 28.737888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768042, 35.486549, 28.452942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027494, 35.787270, 28.500389>,  <27.183167, 35.967701, 28.528858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027494, 35.787270, 28.500389>,  <26.768042, 35.486549, 28.452942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027494, 35.787270, 28.500389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180818, 0.303604, -0.935483,
		-0.739310, 0.585338, 0.332867,
		0.648634, 0.751801, 0.118618,
		27.222084, 36.012810, 28.535975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397203, 36.150257, 28.264315>,  <26.768042, 35.486549, 28.452942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397203, 36.150257, 28.264315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786837, 36.240231, 28.254780>,  <27.020617, 36.294216, 28.249060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786837, 36.240231, 28.254780>,  <26.397203, 36.150257, 28.264315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786837, 36.240231, 28.254780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108742, 0.373269, -0.921328,
		-0.198341, 0.900041, 0.388055,
		0.974082, 0.224935, -0.023838,
		27.079062, 36.307713, 28.247629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339724, 36.776806, 27.967247>,  <26.397203, 36.150257, 28.264315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339724, 36.776806, 27.967247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708254, 36.628250, 27.921238>,  <26.929373, 36.539116, 27.893633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708254, 36.628250, 27.921238>,  <26.339724, 36.776806, 27.967247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708254, 36.628250, 27.921238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102179, 0.054155, -0.993291,
		0.375122, 0.926899, 0.011946,
		0.921327, -0.371385, -0.115024,
		26.984652, 36.516834, 27.886730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695185, 37.254204, 27.560696>,  <26.339724, 36.776806, 27.967247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695185, 37.254204, 27.560696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848934, 36.886147, 27.530792>,  <26.941183, 36.665310, 27.512850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848934, 36.886147, 27.530792>,  <26.695185, 37.254204, 27.560696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848934, 36.886147, 27.530792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167283, 0.010219, -0.985856,
		0.907895, 0.391442, -0.149997,
		0.384373, -0.920146, -0.074760,
		26.964247, 36.610104, 27.508364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154356, 37.265293, 26.930519>,  <26.695185, 37.254204, 27.560696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154356, 37.265293, 26.930519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129026, 36.872391, 27.001122>,  <27.113829, 36.636650, 27.043484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129026, 36.872391, 27.001122>,  <27.154356, 37.265293, 26.930519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129026, 36.872391, 27.001122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074480, -0.181020, -0.980655,
		0.995210, -0.048955, 0.084622,
		-0.063326, -0.982260, 0.176507,
		27.110029, 36.577713, 27.054073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623840, 36.898369, 26.409769>,  <27.154356, 37.265293, 26.930519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623840, 36.898369, 26.409769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355833, 36.625923, 26.527859>,  <27.195028, 36.462456, 26.598713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355833, 36.625923, 26.527859>,  <27.623840, 36.898369, 26.409769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355833, 36.625923, 26.527859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097663, -0.313358, -0.944600,
		0.735892, -0.661732, 0.143436,
		-0.670019, -0.681115, 0.295224,
		27.154827, 36.421589, 26.616426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821184, 36.422352, 26.006207>,  <27.623840, 36.898369, 26.409769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821184, 36.422352, 26.006207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443983, 36.344917, 26.114479>,  <27.217663, 36.298454, 26.179443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443983, 36.344917, 26.114479>,  <27.821184, 36.422352, 26.006207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443983, 36.344917, 26.114479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178903, -0.390938, -0.902863,
		0.280606, -0.899828, 0.334022,
		-0.943003, -0.193591, 0.270682,
		27.161081, 36.286839, 26.195684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575497, 35.681038, 25.955641>,  <27.821184, 36.422352, 26.006207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575497, 35.681038, 25.955641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223774, 35.870888, 25.939877>,  <27.012741, 35.984798, 25.930418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223774, 35.870888, 25.939877>,  <27.575497, 35.681038, 25.955641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223774, 35.870888, 25.939877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180425, -0.408563, -0.894720,
		-0.440759, -0.779621, 0.444886,
		-0.879305, 0.474624, -0.039415,
		26.959982, 36.013275, 25.928053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154329, 35.196323, 25.713394>,  <27.575497, 35.681038, 25.955641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154329, 35.196323, 25.713394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931244, 35.522636, 25.652145>,  <26.797392, 35.718426, 25.615396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931244, 35.522636, 25.652145>,  <27.154329, 35.196323, 25.713394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931244, 35.522636, 25.652145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355149, -0.401274, -0.844303,
		-0.750215, -0.416499, 0.513522,
		-0.557715, 0.815786, -0.153123,
		26.763929, 35.767372, 25.606209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594946, 34.905891, 25.371231>,  <27.154329, 35.196323, 25.713394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594946, 34.905891, 25.371231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556345, 35.301659, 25.327877>,  <26.533184, 35.539120, 25.301865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556345, 35.301659, 25.327877>,  <26.594946, 34.905891, 25.371231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556345, 35.301659, 25.327877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492648, -0.142100, -0.858549,
		-0.864861, -0.029458, 0.501146,
		-0.096504, 0.989414, -0.108385,
		26.527393, 35.598484, 25.295362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889708, 34.971642, 25.355019>,  <26.594946, 34.905891, 25.371231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889708, 34.971642, 25.355019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089302, 35.267967, 25.175148>,  <26.209059, 35.445763, 25.067225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089302, 35.267967, 25.175148>,  <25.889708, 34.971642, 25.355019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089302, 35.267967, 25.175148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526519, -0.152987, -0.836285,
		-0.688326, 0.654057, 0.313714,
		0.498984, 0.740813, -0.449678,
		26.238997, 35.490211, 25.040245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331646, 35.525440, 25.143414>,  <25.889708, 34.971642, 25.355019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331646, 35.525440, 25.143414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646391, 35.554092, 24.898232>,  <25.835238, 35.571285, 24.751122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646391, 35.554092, 24.898232>,  <25.331646, 35.525440, 25.143414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646391, 35.554092, 24.898232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615099, 0.010551, -0.788379,
		-0.050004, 0.997375, 0.052362,
		0.786863, 0.071630, -0.612957,
		25.882450, 35.575581, 24.714344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221645, 36.032440, 24.626429>,  <25.331646, 35.525440, 25.143414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221645, 36.032440, 24.626429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536919, 35.838318, 24.475037>,  <25.726082, 35.721844, 24.384201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536919, 35.838318, 24.475037>,  <25.221645, 36.032440, 24.626429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536919, 35.838318, 24.475037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536405, -0.240204, -0.809056,
		0.301726, 0.840703, -0.449644,
		0.788182, -0.485304, -0.378482,
		25.773373, 35.692726, 24.361492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300362, 36.195728, 23.869787>,  <25.221645, 36.032440, 24.626429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300362, 36.195728, 23.869787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429071, 35.822803, 23.935833>,  <25.506298, 35.599049, 23.975460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429071, 35.822803, 23.935833>,  <25.300362, 36.195728, 23.869787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429071, 35.822803, 23.935833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473154, -0.309388, -0.824866,
		0.820114, 0.187296, -0.540679,
		0.321774, -0.932308, 0.165113,
		25.525604, 35.543110, 23.985367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642052, 36.478279, 23.524075>,  <25.300362, 36.195728, 23.869787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642052, 36.478279, 23.524075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478346, 36.583488, 23.873547>,  <24.380123, 36.646614, 24.083231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478346, 36.583488, 23.873547>,  <24.642052, 36.478279, 23.524075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478346, 36.583488, 23.873547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601875, 0.641842, -0.475168,
		-0.685748, -0.720317, -0.104373,
		-0.409263, 0.263026, 0.873682,
		24.355566, 36.662395, 24.135651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.875156, 36.661777, 23.464142>,  <24.642052, 36.478279, 23.524075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.875156, 36.661777, 23.464142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980625, 36.862999, 23.793362>,  <24.043907, 36.983730, 23.990894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980625, 36.862999, 23.793362>,  <23.875156, 36.661777, 23.464142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.980625, 36.862999, 23.793362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662199, 0.714824, -0.224763,
		-0.701405, -0.485760, 0.521601,
		0.263672, 0.503054, 0.823051,
		24.059727, 37.013916, 24.040277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.390812, 36.688702, 23.846344>,  <23.875156, 36.661777, 23.464142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.390812, 36.688702, 23.846344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.607512, 37.013580, 23.932911>,  <23.737532, 37.208508, 23.984852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.607512, 37.013580, 23.932911>,  <23.390812, 36.688702, 23.846344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.607512, 37.013580, 23.932911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679656, 0.574778, -0.455739,
		-0.494544, 0.099807, 0.863403,
		0.541751, 0.812200, 0.216419,
		23.770037, 37.257240, 23.997837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.997763, 37.258877, 24.296204>,  <23.390812, 36.688702, 23.846344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.997763, 37.258877, 24.296204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.269911, 37.417717, 24.049820>,  <23.433199, 37.513020, 23.901989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.269911, 37.417717, 24.049820>,  <22.997763, 37.258877, 24.296204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.269911, 37.417717, 24.049820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730763, 0.431253, -0.529157,
		0.055507, 0.810144, 0.583597,
		0.680371, 0.397099, -0.615961,
		23.474022, 37.536846, 23.865032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.502125, 36.767334, 24.478361>,  <22.997763, 37.258877, 24.296204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.502125, 36.767334, 24.478361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.586510, 36.408421, 24.633472>,  <22.637140, 36.193073, 24.726540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.586510, 36.408421, 24.633472>,  <22.502125, 36.767334, 24.478361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.586510, 36.408421, 24.633472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970126, -0.143575, 0.195557,
		-0.119795, -0.417453, -0.900768,
		0.210963, -0.897285, 0.387782,
		22.649799, 36.139236, 24.749805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.951923, 36.216228, 24.319960>,  <22.502125, 36.767334, 24.478361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.951923, 36.216228, 24.319960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.132483, 36.142132, 24.669113>,  <22.240818, 36.097675, 24.878605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.132483, 36.142132, 24.669113>,  <21.951923, 36.216228, 24.319960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.132483, 36.142132, 24.669113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850427, -0.385529, 0.357967,
		0.270213, -0.903910, -0.331560,
		0.451396, -0.185241, 0.872885,
		22.267900, 36.086559, 24.930979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590441, 36.843853, 24.216663>,  <21.951923, 36.216228, 24.319960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590441, 36.843853, 24.216663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341089, 37.072269, 24.003006>,  <21.191479, 37.209320, 23.874811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341089, 37.072269, 24.003006>,  <21.590441, 36.843853, 24.216663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.341089, 37.072269, 24.003006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466962, 0.819803, 0.331466,
		0.627172, -0.042795, -0.777704,
		-0.623379, 0.571044, -0.534141,
		21.154076, 37.243584, 23.842764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090483, 37.354103, 23.861813>,  <21.590441, 36.843853, 24.216663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090483, 37.354103, 23.861813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714252, 37.488586, 23.842705>,  <21.488514, 37.569279, 23.831240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714252, 37.488586, 23.842705>,  <22.090483, 37.354103, 23.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714252, 37.488586, 23.842705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301734, 0.891957, 0.336702,
		0.155811, 0.302280, -0.940399,
		-0.940574, 0.336213, -0.047769,
		21.432081, 37.589451, 23.828375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127918, 37.928493, 23.354013>,  <22.090483, 37.354103, 23.861813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127918, 37.928493, 23.354013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.801390, 37.960800, 23.582783>,  <21.605473, 37.980183, 23.720045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.801390, 37.960800, 23.582783>,  <22.127918, 37.928493, 23.354013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.801390, 37.960800, 23.582783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239091, 0.948610, 0.207302,
		-0.525790, 0.305966, -0.793681,
		-0.816322, 0.080765, 0.571923,
		21.556494, 37.985031, 23.754360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935270, 38.564877, 23.263367>,  <22.127918, 37.928493, 23.354013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935270, 38.564877, 23.263367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.712311, 38.484127, 23.585499>,  <21.578535, 38.435677, 23.778778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.712311, 38.484127, 23.585499>,  <21.935270, 38.564877, 23.263367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.712311, 38.484127, 23.585499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078874, 0.952725, 0.293419,
		-0.826490, 0.227071, -0.515124,
		-0.557398, -0.201878, 0.805328,
		21.545092, 38.423565, 23.827097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.254728, 38.912636, 23.267006>,  <21.935270, 38.564877, 23.263367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.254728, 38.912636, 23.267006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372772, 38.846478, 23.643421>,  <21.443598, 38.806782, 23.869270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372772, 38.846478, 23.643421>,  <21.254728, 38.912636, 23.267006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372772, 38.846478, 23.643421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057410, 0.986194, 0.155324,
		-0.953737, 0.008187, 0.300530,
		0.295109, -0.165391, 0.941040,
		21.461306, 38.796860, 23.925734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.888386, 39.413914, 23.648085>,  <21.254728, 38.912636, 23.267006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.888386, 39.413914, 23.648085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168940, 39.300705, 23.909760>,  <21.337271, 39.232780, 24.066765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168940, 39.300705, 23.909760>,  <20.888386, 39.413914, 23.648085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168940, 39.300705, 23.909760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152618, 0.956137, 0.250020,
		-0.696253, -0.075519, 0.713812,
		0.701384, -0.283018, 0.654188,
		21.379354, 39.215801, 24.106016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.854458, 39.855579, 24.109980>,  <20.888386, 39.413914, 23.648085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.854458, 39.855579, 24.109980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.212601, 39.706879, 24.208069>,  <21.427486, 39.617657, 24.266922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.212601, 39.706879, 24.208069>,  <20.854458, 39.855579, 24.109980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.212601, 39.706879, 24.208069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215370, 0.843408, 0.492218,
		-0.389807, -0.387897, 0.835216,
		0.895358, -0.371751, 0.245225,
		21.481209, 39.595352, 24.281637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984539, 40.125164, 24.677282>,  <20.854458, 39.855579, 24.109980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984539, 40.125164, 24.677282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353676, 40.002739, 24.583740>,  <21.575159, 39.929283, 24.527615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353676, 40.002739, 24.583740>,  <20.984539, 40.125164, 24.677282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.353676, 40.002739, 24.583740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375614, 0.849529, 0.370425,
		0.085294, -0.429684, 0.898942,
		0.922843, -0.306060, -0.233855,
		21.630529, 39.910919, 24.513584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.317949, 40.375614, 25.246189>,  <20.984539, 40.125164, 24.677282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.317949, 40.375614, 25.246189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602587, 40.305878, 24.973942>,  <21.773369, 40.264034, 24.810593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602587, 40.305878, 24.973942>,  <21.317949, 40.375614, 25.246189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602587, 40.305878, 24.973942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229938, 0.973165, -0.008878,
		0.663902, -0.150183, 0.732584,
		0.711592, -0.174343, -0.680619,
		21.816065, 40.253574, 24.769756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.881155, 40.605751, 25.596493>,  <21.317949, 40.375614, 25.246189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.881155, 40.605751, 25.596493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971386, 40.602394, 25.206818>,  <22.025524, 40.600380, 24.973013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971386, 40.602394, 25.206818>,  <21.881155, 40.605751, 25.596493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971386, 40.602394, 25.206818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179823, 0.983140, 0.033173,
		0.957486, -0.182664, 0.223282,
		0.225577, -0.008388, -0.974189,
		22.039059, 40.599876, 24.914560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510883, 40.909370, 25.481188>,  <21.881155, 40.605751, 25.596493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510883, 40.909370, 25.481188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.328423, 40.952618, 25.127865>,  <22.218945, 40.978565, 24.915871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.328423, 40.952618, 25.127865>,  <22.510883, 40.909370, 25.481188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.328423, 40.952618, 25.127865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455076, 0.881330, -0.127137,
		0.764741, -0.459967, -0.451223,
		-0.456155, 0.108114, -0.883309,
		22.191576, 40.985050, 24.862873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.007904, 41.350777, 25.076330>,  <22.510883, 40.909370, 25.481188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.007904, 41.350777, 25.076330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.647873, 41.376804, 24.903996>,  <22.431854, 41.392422, 24.800594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.647873, 41.376804, 24.903996>,  <23.007904, 41.350777, 25.076330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.647873, 41.376804, 24.903996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161661, 0.968083, -0.191521,
		0.404625, -0.242034, -0.881872,
		-0.900080, 0.065070, -0.430838,
		22.377850, 41.396324, 24.774744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.201303, 41.602070, 24.411034>,  <23.007904, 41.350777, 25.076330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.201303, 41.602070, 24.411034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821297, 41.685936, 24.503563>,  <22.593292, 41.736256, 24.559080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821297, 41.685936, 24.503563>,  <23.201303, 41.602070, 24.411034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821297, 41.685936, 24.503563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162797, 0.964921, -0.205974,
		-0.266394, -0.158020, -0.950823,
		-0.950016, 0.209661, 0.231324,
		22.536291, 41.748833, 24.572960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.936930, 42.132458, 23.849211>,  <23.201303, 41.602070, 24.411034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.936930, 42.132458, 23.849211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.685041, 42.163517, 24.158382>,  <22.533909, 42.182152, 24.343885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.685041, 42.163517, 24.158382>,  <22.936930, 42.132458, 23.849211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.685041, 42.163517, 24.158382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108434, 0.976465, -0.186438,
		-0.769215, -0.201216, -0.606482,
		-0.629723, 0.077648, 0.772930,
		22.496124, 42.186810, 24.390261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.325859, 42.523697, 23.647156>,  <22.936930, 42.132458, 23.849211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.325859, 42.523697, 23.647156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.332739, 42.546146, 24.046467>,  <22.336866, 42.559616, 24.286053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.332739, 42.546146, 24.046467>,  <22.325859, 42.523697, 23.647156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332739, 42.546146, 24.046467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286202, 0.956922, -0.048868,
		-0.958015, -0.284868, 0.032520,
		0.017198, 0.056123, 0.998275,
		22.337898, 42.562984, 24.345949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.670723, 42.862492, 23.858917>,  <22.325859, 42.523697, 23.647156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.670723, 42.862492, 23.858917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.926891, 42.878197, 24.165726>,  <22.080591, 42.887619, 24.349812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.926891, 42.878197, 24.165726>,  <21.670723, 42.862492, 23.858917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.926891, 42.878197, 24.165726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273838, 0.944729, 0.180279,
		-0.717549, -0.325493, 0.615774,
		0.640419, 0.039264, 0.767021,
		22.119017, 42.889977, 24.395832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.382671, 43.316097, 24.326693>,  <21.670723, 42.862492, 23.858917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.382671, 43.316097, 24.326693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764196, 43.333103, 24.445644>,  <21.993111, 43.343307, 24.517015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764196, 43.333103, 24.445644>,  <21.382671, 43.316097, 24.326693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.764196, 43.333103, 24.445644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056785, 0.997604, 0.039527,
		-0.294985, -0.054588, 0.953941,
		0.953813, 0.042510, 0.297378,
		22.050341, 43.345856, 24.534859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395382, 43.771801, 24.959883>,  <21.382671, 43.316097, 24.326693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395382, 43.771801, 24.959883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.767122, 43.759632, 24.812706>,  <21.990166, 43.752331, 24.724400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.767122, 43.759632, 24.812706>,  <21.395382, 43.771801, 24.959883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767122, 43.759632, 24.812706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065244, 0.994447, 0.082576,
		0.363387, -0.100748, 0.926175,
		0.929351, -0.030420, -0.367942,
		22.045927, 43.750507, 24.702324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.925829, 44.100269, 25.476475>,  <21.395382, 43.771801, 24.959883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.925829, 44.100269, 25.476475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117220, 44.122356, 25.125931>,  <22.232054, 44.135609, 24.915604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117220, 44.122356, 25.125931>,  <21.925829, 44.100269, 25.476475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117220, 44.122356, 25.125931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306054, 0.924952, 0.225377,
		0.823037, -0.376053, 0.425670,
		0.478478, 0.055216, -0.876362,
		22.260763, 44.138920, 24.863022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.555244, 44.442204, 25.627146>,  <21.925829, 44.100269, 25.476475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.555244, 44.442204, 25.627146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488565, 44.514172, 25.239365>,  <22.448557, 44.557354, 25.006697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488565, 44.514172, 25.239365>,  <22.555244, 44.442204, 25.627146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.488565, 44.514172, 25.239365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186354, 0.971239, 0.148211,
		0.968237, -0.155955, -0.195434,
		-0.166699, 0.179923, -0.969453,
		22.438557, 44.568150, 24.948528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.064945, 44.971264, 25.569820>,  <22.555244, 44.442204, 25.627146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.064945, 44.971264, 25.569820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.839296, 44.982021, 25.239719>,  <22.703907, 44.988476, 25.041658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.839296, 44.982021, 25.239719>,  <23.064945, 44.971264, 25.569820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.839296, 44.982021, 25.239719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180397, 0.971309, 0.154968,
		0.805743, 0.236295, -0.543088,
		-0.564124, 0.026893, -0.825252,
		22.670059, 44.990089, 24.992144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.302757, 45.490612, 25.074995>,  <23.064945, 44.971264, 25.569820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.302757, 45.490612, 25.074995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.908630, 45.446430, 25.022915>,  <22.672155, 45.419922, 24.991667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.908630, 45.446430, 25.022915>,  <23.302757, 45.490612, 25.074995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.908630, 45.446430, 25.022915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156102, 0.891677, 0.424905,
		0.069167, 0.438991, -0.895825,
		-0.985316, -0.110451, -0.130202,
		22.613035, 45.413296, 24.983854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.811518, 45.717358, 24.536325>,  <23.302757, 45.490612, 25.074995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.811518, 45.717358, 24.536325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.606243, 45.946980, 24.281109>,  <23.483078, 46.084755, 24.127979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.606243, 45.946980, 24.281109>,  <23.811518, 45.717358, 24.536325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.606243, 45.946980, 24.281109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728440, 0.684456, 0.029925,
		0.453891, -0.449418, -0.769420,
		-0.513184, 0.574059, -0.638042,
		23.452288, 46.119198, 24.089697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.246532, 45.866241, 23.915791>,  <23.811518, 45.717358, 24.536325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.246532, 45.866241, 23.915791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.978386, 46.151630, 23.997341>,  <23.817497, 46.322865, 24.046270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.978386, 46.151630, 23.997341>,  <24.246532, 45.866241, 23.915791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.978386, 46.151630, 23.997341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715083, 0.694531, -0.079265,
		-0.198150, 0.092651, -0.975783,
		-0.670367, 0.713472, 0.203875,
		23.777275, 46.365673, 24.058504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858273, 45.584553, 23.813768>,  <24.246532, 45.866241, 23.915791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858273, 45.584553, 23.813768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207567, 45.535168, 23.625210>,  <25.417143, 45.505535, 23.512074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207567, 45.535168, 23.625210>,  <24.858273, 45.584553, 23.813768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207567, 45.535168, 23.625210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296091, -0.633881, 0.714511,
		-0.387027, -0.763513, -0.516970,
		0.873235, -0.123465, -0.471398,
		25.469538, 45.498127, 23.483789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054163, 44.924110, 23.557756>,  <24.858273, 45.584553, 23.813768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054163, 44.924110, 23.557756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402027, 45.091831, 23.661968>,  <25.610746, 45.192463, 23.724495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402027, 45.091831, 23.661968>,  <25.054163, 44.924110, 23.557756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402027, 45.091831, 23.661968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147583, -0.724462, 0.673330,
		0.471071, -0.547120, -0.691919,
		0.869661, 0.419302, 0.260528,
		25.662926, 45.217621, 23.740126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652243, 44.547352, 23.328785>,  <25.054163, 44.924110, 23.557756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652243, 44.547352, 23.328785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763708, 44.758442, 23.649746>,  <25.830587, 44.885098, 23.842323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763708, 44.758442, 23.649746>,  <25.652243, 44.547352, 23.328785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763708, 44.758442, 23.649746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025865, -0.839320, 0.543022,
		0.960040, -0.130567, -0.247538,
		0.278664, 0.527725, 0.802404,
		25.847307, 44.916759, 23.890467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997810, 44.510799, 22.610445>,  <25.652243, 44.547352, 23.328785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997810, 44.510799, 22.610445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000578, 44.767818, 22.303959>,  <26.002237, 44.922031, 22.120068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000578, 44.767818, 22.303959>,  <25.997810, 44.510799, 22.610445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000578, 44.767818, 22.303959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639212, 0.586406, 0.497530,
		0.768999, -0.493216, -0.406668,
		0.006917, 0.642547, -0.766215,
		26.002653, 44.960583, 22.074095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550804, 43.814453, 22.631649>,  <25.997810, 44.510799, 22.610445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550804, 43.814453, 22.631649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608049, 43.767132, 22.238605>,  <25.642397, 43.738739, 22.002779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608049, 43.767132, 22.238605>,  <25.550804, 43.814453, 22.631649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608049, 43.767132, 22.238605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457691, -0.888199, 0.040273,
		-0.877518, 0.443969, -0.181257,
		0.143112, -0.118300, -0.982611,
		25.650984, 43.731644, 21.943823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933609, 43.661415, 22.178747>,  <25.550804, 43.814453, 22.631649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933609, 43.661415, 22.178747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240664, 43.510838, 21.971279>,  <25.424896, 43.420490, 21.846798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240664, 43.510838, 21.971279>,  <24.933609, 43.661415, 22.178747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240664, 43.510838, 21.971279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461900, -0.886004, -0.040564,
		-0.444275, 0.270713, -0.854011,
		0.767638, -0.376446, -0.518672,
		25.470955, 43.397903, 21.815678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660618, 43.498615, 21.480619>,  <24.933609, 43.661415, 22.178747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660618, 43.498615, 21.480619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959785, 43.262730, 21.602512>,  <25.139286, 43.121201, 21.675648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959785, 43.262730, 21.602512>,  <24.660618, 43.498615, 21.480619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959785, 43.262730, 21.602512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604468, -0.794767, -0.054441,
		0.274297, -0.143485, -0.950880,
		0.747917, -0.589709, 0.304735,
		25.184160, 43.085815, 21.693933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760639, 42.857014, 21.027105>,  <24.660618, 43.498615, 21.480619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760639, 42.857014, 21.027105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896265, 42.768295, 21.392803>,  <24.977640, 42.715065, 21.612223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896265, 42.768295, 21.392803>,  <24.760639, 42.857014, 21.027105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896265, 42.768295, 21.392803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476720, -0.878306, -0.036276,
		0.811033, -0.423539, -0.403535,
		0.339063, -0.221794, 0.914245,
		24.997984, 42.701756, 21.667076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126890, 42.178566, 20.920643>,  <24.760639, 42.857014, 21.027105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126890, 42.178566, 20.920643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005527, 42.226185, 21.298801>,  <24.932711, 42.254757, 21.525696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005527, 42.226185, 21.298801>,  <25.126890, 42.178566, 20.920643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.005527, 42.226185, 21.298801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403741, -0.914760, -0.014380,
		0.863098, -0.386058, 0.325609,
		-0.303406, 0.119050, 0.945395,
		24.914505, 42.261898, 21.582420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345997, 41.629314, 21.308514>,  <25.126890, 42.178566, 20.920643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345997, 41.629314, 21.308514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041416, 41.757755, 21.533752>,  <24.858667, 41.834820, 21.668896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041416, 41.757755, 21.533752>,  <25.345997, 41.629314, 21.308514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041416, 41.757755, 21.533752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459382, -0.880195, -0.119271,
		0.457338, -0.349497, 0.817737,
		-0.761453, 0.321106, 0.563099,
		24.812981, 41.854088, 21.702682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187220, 41.024559, 21.871801>,  <25.345997, 41.629314, 21.308514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187220, 41.024559, 21.871801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867540, 41.260384, 21.824993>,  <24.675732, 41.401878, 21.796907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867540, 41.260384, 21.824993>,  <25.187220, 41.024559, 21.871801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.867540, 41.260384, 21.824993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572323, -0.805906, -0.151533,
		-0.183646, -0.054131, 0.981501,
		-0.799200, 0.589564, -0.117021,
		24.627781, 41.437252, 21.789886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.666027, 40.659237, 22.299147>,  <25.187220, 41.024559, 21.871801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.666027, 40.659237, 22.299147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466167, 40.935432, 22.089928>,  <24.346252, 41.101151, 21.964396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466167, 40.935432, 22.089928>,  <24.666027, 40.659237, 22.299147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466167, 40.935432, 22.089928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744470, -0.650994, -0.148229,
		-0.442851, 0.315331, 0.839315,
		-0.499648, 0.690488, -0.523048,
		24.316273, 41.142578, 21.933014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990280, 40.630840, 22.561642>,  <24.666027, 40.659237, 22.299147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990280, 40.630840, 22.561642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.943605, 40.804062, 22.204128>,  <23.915600, 40.907993, 21.989620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.943605, 40.804062, 22.204128>,  <23.990280, 40.630840, 22.561642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.943605, 40.804062, 22.204128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824989, -0.543323, -0.155541,
		-0.552970, 0.719213, 0.420662,
		-0.116688, 0.433051, -0.893785,
		23.908598, 40.933979, 21.935993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.319221, 40.944008, 22.514582>,  <23.990280, 40.630840, 22.561642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.319221, 40.944008, 22.514582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421421, 40.861450, 22.136772>,  <23.482740, 40.811916, 21.910088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421421, 40.861450, 22.136772>,  <23.319221, 40.944008, 22.514582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.421421, 40.861450, 22.136772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864928, -0.485321, -0.127921,
		-0.431994, 0.849627, -0.302513,
		0.255501, -0.206390, -0.944522,
		23.498072, 40.799534, 21.853415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.731619, 40.937572, 22.214062>,  <23.319221, 40.944008, 22.514582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.731619, 40.937572, 22.214062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.953754, 40.763794, 21.930412>,  <23.087036, 40.659527, 21.760223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.953754, 40.763794, 21.930412>,  <22.731619, 40.937572, 22.214062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.953754, 40.763794, 21.930412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785188, -0.554863, -0.274967,
		-0.274007, 0.709493, -0.649261,
		0.555338, -0.434449, -0.709122,
		23.120356, 40.633461, 21.717676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.314091, 40.961117, 21.554537>,  <22.731619, 40.937572, 22.214062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.314091, 40.961117, 21.554537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.586557, 40.671288, 21.512577>,  <22.750036, 40.497391, 21.487400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.586557, 40.671288, 21.512577>,  <22.314091, 40.961117, 21.554537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.586557, 40.671288, 21.512577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707767, -0.615049, -0.347535,
		0.187297, 0.310974, -0.931780,
		0.681165, -0.724576, -0.104901,
		22.790907, 40.453915, 21.481108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.392498, 40.779827, 20.778694>,  <22.314091, 40.961117, 21.554537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.392498, 40.779827, 20.778694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490950, 40.467533, 21.008434>,  <22.550020, 40.280159, 21.146278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490950, 40.467533, 21.008434>,  <22.392498, 40.779827, 20.778694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.490950, 40.467533, 21.008434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749730, -0.528915, -0.397686,
		0.614269, -0.332724, -0.715520,
		0.246129, -0.780733, 0.574349,
		22.564789, 40.233315, 21.180738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.392870, 40.277996, 20.248833>,  <22.392498, 40.779827, 20.778694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.392870, 40.277996, 20.248833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.397945, 40.101952, 20.607975>,  <22.400990, 39.996326, 20.823460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.397945, 40.101952, 20.607975>,  <22.392870, 40.277996, 20.248833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.397945, 40.101952, 20.607975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617595, -0.709630, -0.339119,
		0.786394, -0.550208, -0.280813,
		0.012688, -0.440110, 0.897855,
		22.401752, 39.969917, 20.877331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230873, 39.628357, 20.137245>,  <22.392870, 40.277996, 20.248833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230873, 39.628357, 20.137245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.163443, 39.642319, 20.531273>,  <22.122984, 39.650696, 20.767691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.163443, 39.642319, 20.531273>,  <22.230873, 39.628357, 20.137245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.163443, 39.642319, 20.531273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653399, -0.752208, -0.085161,
		0.738005, -0.658001, 0.149611,
		-0.168575, 0.034906, 0.985071,
		22.112869, 39.652790, 20.826794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215359, 38.943970, 20.377438>,  <22.230873, 39.628357, 20.137245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215359, 38.943970, 20.377438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032854, 39.137432, 20.676208>,  <21.923351, 39.253510, 20.855471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032854, 39.137432, 20.676208>,  <22.215359, 38.943970, 20.377438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032854, 39.137432, 20.676208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715094, -0.698852, 0.015713,
		0.529590, -0.526952, 0.664722,
		-0.456262, 0.483660, 0.746925,
		21.895975, 39.282532, 20.900286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.957371, 38.404591, 20.740788>,  <22.215359, 38.943970, 20.377438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.957371, 38.404591, 20.740788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763508, 38.718140, 20.896042>,  <21.647190, 38.906269, 20.989195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763508, 38.718140, 20.896042>,  <21.957371, 38.404591, 20.740788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763508, 38.718140, 20.896042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681040, -0.616622, 0.394919,
		0.548901, -0.072938, 0.832699,
		-0.484656, 0.783873, 0.388138,
		21.618111, 38.953300, 21.012484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745047, 38.253929, 21.487686>,  <21.957371, 38.404591, 20.740788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745047, 38.253929, 21.487686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.504993, 38.546558, 21.358292>,  <21.360962, 38.722137, 21.280655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.504993, 38.546558, 21.358292>,  <21.745047, 38.253929, 21.487686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504993, 38.546558, 21.358292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754635, -0.383698, 0.532261,
		0.265267, 0.563541, 0.782340,
		-0.600133, 0.731572, -0.323485,
		21.324953, 38.766029, 21.261246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.316990, 38.462219, 22.081781>,  <21.745047, 38.253929, 21.487686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.316990, 38.462219, 22.081781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115206, 38.620789, 21.774960>,  <20.994135, 38.715931, 21.590866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115206, 38.620789, 21.774960>,  <21.316990, 38.462219, 22.081781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115206, 38.620789, 21.774960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863161, -0.253926, 0.436434,
		-0.021763, 0.882254, 0.470270,
		-0.504460, 0.396421, -0.767053,
		20.963867, 38.739716, 21.544844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937733, 38.891525, 22.391775>,  <21.316990, 38.462219, 22.081781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937733, 38.891525, 22.391775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.758337, 38.854565, 22.036175>,  <20.650700, 38.832390, 21.822815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.758337, 38.854565, 22.036175>,  <20.937733, 38.891525, 22.391775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.758337, 38.854565, 22.036175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885955, -0.085434, 0.455834,
		-0.118068, 0.992050, -0.043543,
		-0.448490, -0.092397, -0.888999,
		20.623791, 38.826847, 21.769476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.345638, 39.263294, 22.477053>,  <20.937733, 38.891525, 22.391775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.345638, 39.263294, 22.477053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276134, 39.013767, 22.172249>,  <20.234432, 38.864052, 21.989367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276134, 39.013767, 22.172249>,  <20.345638, 39.263294, 22.477053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276134, 39.013767, 22.172249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972190, -0.014715, 0.233731,
		-0.157019, 0.781429, -0.603916,
		-0.173758, -0.623821, -0.762008,
		20.224007, 38.826622, 21.943647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.773159, 39.587368, 21.999292>,  <20.345638, 39.263294, 22.477053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.773159, 39.587368, 21.999292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.779308, 39.199223, 21.902821>,  <19.782997, 38.966335, 21.844938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.779308, 39.199223, 21.902821>,  <19.773159, 39.587368, 21.999292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.779308, 39.199223, 21.902821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990355, -0.047994, 0.129976,
		-0.137698, 0.236854, -0.961738,
		0.015373, -0.970359, -0.241178,
		19.783920, 38.908115, 21.830467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201267, 39.471951, 21.677940>,  <19.773159, 39.587368, 21.999292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201267, 39.471951, 21.677940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.274553, 39.090408, 21.773090>,  <19.318525, 38.861481, 21.830181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.274553, 39.090408, 21.773090>,  <19.201267, 39.471951, 21.677940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.274553, 39.090408, 21.773090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945741, -0.104974, 0.307499,
		-0.268340, -0.281307, -0.921336,
		0.183217, -0.953859, 0.237875,
		19.329519, 38.804249, 21.844452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.706776, 38.973347, 21.402321>,  <19.201267, 39.471951, 21.677940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.706776, 38.973347, 21.402321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.863758, 38.783802, 21.717644>,  <18.957947, 38.670074, 21.906837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.863758, 38.783802, 21.717644>,  <18.706776, 38.973347, 21.402321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.863758, 38.783802, 21.717644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913873, -0.103993, 0.392456,
		-0.103993, -0.874435, -0.473866,
		-0.392456, 0.473866, -0.788308,
		18.981495, 38.641644, 21.954136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.429222, 38.249882, 21.457901>,  <18.706776, 38.973347, 21.402321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.429222, 38.249882, 21.457901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535738, 38.392956, 21.815929>,  <18.599648, 38.478802, 22.030746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535738, 38.392956, 21.815929>,  <18.429222, 38.249882, 21.457901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535738, 38.392956, 21.815929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902176, -0.234446, 0.362096,
		0.339363, -0.903933, 0.260267,
		0.266292, 0.357688, 0.895069,
		18.615625, 38.500263, 22.084450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.963428, 37.975758, 21.986948>,  <18.429222, 38.249882, 21.457901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.963428, 37.975758, 21.986948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.165342, 38.236698, 22.213089>,  <18.286491, 38.393265, 22.348774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.165342, 38.236698, 22.213089>,  <17.963428, 37.975758, 21.986948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165342, 38.236698, 22.213089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792947, 0.091536, 0.602376,
		0.341213, -0.752365, 0.563490,
		0.504786, 0.652356, 0.565352,
		18.316778, 38.432404, 22.382694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151672, 37.754669, 22.681761>,  <17.963428, 37.975758, 21.986948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.151672, 37.754669, 22.681761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080460, 38.147861, 22.663639>,  <18.037733, 38.383778, 22.652765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080460, 38.147861, 22.663639>,  <18.151672, 37.754669, 22.681761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.080460, 38.147861, 22.663639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855687, -0.131912, 0.500399,
		0.485907, 0.127853, 0.864608,
		-0.178030, 0.982982, -0.045306,
		18.027050, 38.442757, 22.650047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932695, 37.971149, 23.386662>,  <18.151672, 37.754669, 22.681761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.932695, 37.971149, 23.386662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.806437, 38.208939, 23.090832>,  <17.730682, 38.351612, 22.913334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.806437, 38.208939, 23.090832>,  <17.932695, 37.971149, 23.386662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806437, 38.208939, 23.090832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936417, -0.069259, 0.343987,
		0.153269, 0.801126, 0.578537,
		-0.315646, 0.594474, -0.739573,
		17.711742, 38.387280, 22.868959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621737, 37.387253, 23.101789>,  <17.932695, 37.971149, 23.386662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621737, 37.387253, 23.101789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.578297, 36.998085, 23.183399>,  <17.552233, 36.764584, 23.232365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.578297, 36.998085, 23.183399>,  <17.621737, 37.387253, 23.101789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.578297, 36.998085, 23.183399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382193, -0.230329, -0.894917,
		0.917679, -0.019212, 0.396858,
		-0.108601, -0.972923, 0.204025,
		17.545717, 36.706207, 23.244606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.188351, 32.600815, 33.376137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.585102, 32.645123, 33.351143>,  <31.823153, 32.671707, 33.336147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.585102, 32.645123, 33.351143>,  <31.188351, 32.600815, 33.376137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585102, 32.645123, 33.351143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083670, 0.198369, -0.976549,
		-0.095781, 0.973848, 0.206027,
		0.991880, 0.110773, -0.062482,
		31.882666, 32.678356, 33.332397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262039, 33.246204, 33.003246>,  <31.188351, 32.600815, 33.376137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262039, 33.246204, 33.003246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.617235, 33.064674, 32.973545>,  <31.830353, 32.955757, 32.955723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.617235, 33.064674, 32.973545>,  <31.262039, 33.246204, 33.003246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617235, 33.064674, 32.973545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021468, 0.202208, -0.979107,
		0.459357, 0.867846, 0.189301,
		0.887992, -0.453824, -0.074255,
		31.883633, 32.928528, 32.951267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742476, 33.648975, 32.670853>,  <31.262039, 33.246204, 33.003246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742476, 33.648975, 32.670853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.896795, 33.284172, 32.615143>,  <31.989388, 33.065289, 32.581715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.896795, 33.284172, 32.615143>,  <31.742476, 33.648975, 32.670853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896795, 33.284172, 32.615143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044972, 0.132194, -0.990203,
		0.921486, 0.388282, 0.009985,
		0.385798, -0.912010, -0.139277,
		32.012535, 33.010571, 32.573360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197403, 33.855225, 32.090263>,  <31.742476, 33.648975, 32.670853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197403, 33.855225, 32.090263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.184757, 33.455475, 32.083939>,  <32.177170, 33.215626, 32.080143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.184757, 33.455475, 32.083939>,  <32.197403, 33.855225, 32.090263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184757, 33.455475, 32.083939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045417, 0.014363, -0.998865,
		0.998468, -0.032296, 0.044935,
		-0.031613, -0.999375, -0.015808,
		32.175274, 33.155663, 32.079197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765587, 33.606586, 31.632872>,  <32.197403, 33.855225, 32.090263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765587, 33.606586, 31.632872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481609, 33.326668, 31.664532>,  <32.311222, 33.158718, 31.683527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481609, 33.326668, 31.664532>,  <32.765587, 33.606586, 31.632872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481609, 33.326668, 31.664532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000884, -0.111502, -0.993764,
		0.704257, -0.705588, 0.078541,
		-0.709945, -0.699795, 0.079150,
		32.268627, 33.116730, 31.688276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990936, 33.193901, 31.179928>,  <32.765587, 33.606586, 31.632872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990936, 33.193901, 31.179928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.602005, 33.114025, 31.228413>,  <32.368645, 33.066097, 31.257504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.602005, 33.114025, 31.228413>,  <32.990936, 33.193901, 31.179928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602005, 33.114025, 31.228413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089677, -0.160050, -0.983027,
		0.215704, -0.966699, 0.137714,
		-0.972332, -0.199693, 0.121214,
		32.310307, 33.054119, 31.264776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876053, 32.738361, 30.678596>,  <32.990936, 33.193901, 31.179928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876053, 32.738361, 30.678596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.504551, 32.855343, 30.769718>,  <32.281651, 32.925529, 30.824390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.504551, 32.855343, 30.769718>,  <32.876053, 32.738361, 30.678596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504551, 32.855343, 30.769718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285260, -0.171360, -0.943007,
		-0.236750, -0.940801, 0.242576,
		-0.928750, 0.292454, 0.227803,
		32.225925, 32.943077, 30.838058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414627, 32.224388, 30.298002>,  <32.876053, 32.738361, 30.678596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414627, 32.224388, 30.298002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.189125, 32.540714, 30.393333>,  <32.053825, 32.730511, 30.450531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.189125, 32.540714, 30.393333>,  <32.414627, 32.224388, 30.298002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189125, 32.540714, 30.393333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208771, 0.142743, -0.967491,
		-0.799123, -0.595181, 0.084627,
		-0.563752, 0.790812, 0.238326,
		32.020000, 32.777958, 30.464830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670654, 32.240940, 29.934202>,  <32.414627, 32.224388, 30.298002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670654, 32.240940, 29.934202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713449, 32.626095, 30.033314>,  <31.739126, 32.857189, 30.092781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713449, 32.626095, 30.033314>,  <31.670654, 32.240940, 29.934202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713449, 32.626095, 30.033314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369112, 0.269864, -0.889342,
		-0.923206, 0.003690, 0.384287,
		0.106987, 0.962891, 0.247778,
		31.745546, 32.914963, 30.107647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985632, 32.567986, 29.805868>,  <31.670654, 32.240940, 29.934202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985632, 32.567986, 29.805868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.270157, 32.847816, 29.778667>,  <31.440872, 33.015717, 29.762346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.270157, 32.847816, 29.778667>,  <30.985632, 32.567986, 29.805868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270157, 32.847816, 29.778667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422394, 0.348125, -0.836894,
		-0.561801, 0.624016, 0.543124,
		0.711311, 0.699581, -0.068003,
		31.483549, 33.057690, 29.758266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625435, 33.087120, 29.521397>,  <30.985632, 32.567986, 29.805868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625435, 33.087120, 29.521397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.005445, 33.198280, 29.464520>,  <31.233452, 33.264977, 29.430393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.005445, 33.198280, 29.464520>,  <30.625435, 33.087120, 29.521397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005445, 33.198280, 29.464520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244405, 0.378790, -0.892628,
		-0.194205, 0.882772, 0.427782,
		0.950027, 0.277905, -0.142190,
		31.290453, 33.281651, 29.421862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608402, 33.805729, 29.438545>,  <30.625435, 33.087120, 29.521397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608402, 33.805729, 29.438545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.958340, 33.689869, 29.283241>,  <31.168303, 33.620354, 29.190060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.958340, 33.689869, 29.283241>,  <30.608402, 33.805729, 29.438545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958340, 33.689869, 29.283241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218400, 0.479576, -0.849887,
		0.432373, 0.828316, 0.356295,
		0.874846, -0.289654, -0.388260,
		31.220793, 33.602974, 29.166763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765755, 34.419125, 29.111652>,  <30.608402, 33.805729, 29.438545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765755, 34.419125, 29.111652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.965767, 34.116432, 28.943211>,  <31.085775, 33.934818, 28.842146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.965767, 34.116432, 28.943211>,  <30.765755, 34.419125, 29.111652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965767, 34.116432, 28.943211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224876, 0.356119, -0.906978,
		0.836300, 0.548215, 0.007901,
		0.500033, -0.756730, -0.421103,
		31.115776, 33.889412, 28.816879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199621, 34.767036, 28.540836>,  <30.765755, 34.419125, 29.111652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199621, 34.767036, 28.540836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.160021, 34.377563, 28.458729>,  <31.136261, 34.143879, 28.409464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.160021, 34.377563, 28.458729>,  <31.199621, 34.767036, 28.540836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160021, 34.377563, 28.458729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128006, 0.217028, -0.967736,
		0.986820, -0.069533, -0.146124,
		-0.099003, -0.973686, -0.205267,
		31.130320, 34.085457, 28.397148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492222, 34.701435, 27.881563>,  <31.199621, 34.767036, 28.540836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492222, 34.701435, 27.881563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.269527, 34.373920, 27.937599>,  <31.135910, 34.177410, 27.971222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.269527, 34.373920, 27.937599>,  <31.492222, 34.701435, 27.881563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269527, 34.373920, 27.937599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259522, 0.011240, -0.965672,
		0.789109, -0.573982, -0.218752,
		-0.556737, -0.818791, 0.140091,
		31.102507, 34.128284, 27.979626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717653, 34.163921, 27.357788>,  <31.492222, 34.701435, 27.881563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717653, 34.163921, 27.357788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.363338, 34.027435, 27.483616>,  <31.150749, 33.945545, 27.559113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.363338, 34.027435, 27.483616>,  <31.717653, 34.163921, 27.357788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363338, 34.027435, 27.483616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295051, -0.109161, -0.949225,
		0.358230, -0.933625, -0.003983,
		-0.885786, -0.341216, 0.314572,
		31.097603, 33.925072, 27.577988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552668, 33.597057, 26.929173>,  <31.717653, 34.163921, 27.357788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552668, 33.597057, 26.929173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.192497, 33.668266, 27.087940>,  <30.976395, 33.710991, 27.183201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.192497, 33.668266, 27.087940>,  <31.552668, 33.597057, 26.929173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192497, 33.668266, 27.087940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410166, -0.043484, -0.910974,
		-0.144913, -0.983065, 0.112172,
		-0.900424, 0.178021, 0.396918,
		30.922369, 33.721672, 27.207016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167980, 33.156078, 26.685053>,  <31.552668, 33.597057, 26.929173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167980, 33.156078, 26.685053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.918879, 33.453587, 26.782192>,  <30.769417, 33.632092, 26.840477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.918879, 33.453587, 26.782192>,  <31.167980, 33.156078, 26.685053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918879, 33.453587, 26.782192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385664, -0.021745, -0.922383,
		-0.680764, -0.668077, 0.300389,
		-0.622755, 0.743774, 0.242850,
		30.732052, 33.676720, 26.855047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507692, 33.003796, 26.383806>,  <31.167980, 33.156078, 26.685053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507692, 33.003796, 26.383806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.487812, 33.393585, 26.471378>,  <30.475883, 33.627460, 26.523922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.487812, 33.393585, 26.471378>,  <30.507692, 33.003796, 26.383806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487812, 33.393585, 26.471378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313729, 0.192873, -0.929717,
		-0.948211, -0.114894, 0.296135,
		-0.049702, 0.974474, 0.218930,
		30.472900, 33.685928, 26.537058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839510, 33.082653, 26.137224>,  <30.507692, 33.003796, 26.383806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839510, 33.082653, 26.137224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.012886, 33.442612, 26.156479>,  <30.116911, 33.658588, 26.168032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.012886, 33.442612, 26.156479>,  <29.839510, 33.082653, 26.137224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012886, 33.442612, 26.156479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392970, 0.236803, -0.888537,
		-0.810990, 0.366212, 0.456272,
		0.433439, 0.899896, 0.048135,
		30.142918, 33.712582, 26.170919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488867, 33.546646, 25.717756>,  <29.839510, 33.082653, 26.137224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488867, 33.546646, 25.717756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.828001, 33.758049, 25.734974>,  <30.031481, 33.884892, 25.745304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.828001, 33.758049, 25.734974>,  <29.488867, 33.546646, 25.717756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828001, 33.758049, 25.734974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169165, 0.346522, -0.922662,
		-0.502551, 0.774984, 0.383199,
		0.847836, 0.528509, 0.043045,
		30.082352, 33.916603, 25.747887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265495, 34.220421, 25.686199>,  <29.488867, 33.546646, 25.717756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265495, 34.220421, 25.686199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.646362, 34.208038, 25.564594>,  <29.874882, 34.200607, 25.491632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.646362, 34.208038, 25.564594>,  <29.265495, 34.220421, 25.686199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646362, 34.208038, 25.564594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226407, 0.596680, -0.769878,
		0.205233, 0.801882, 0.561128,
		0.952165, -0.030960, -0.304010,
		29.932013, 34.198750, 25.473391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857405, 34.633808, 25.163340>,  <29.265495, 34.220421, 25.686199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857405, 34.633808, 25.163340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.536972, 34.394943, 25.146976>,  <28.344713, 34.251625, 25.137157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.536972, 34.394943, 25.146976>,  <28.857405, 34.633808, 25.163340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536972, 34.394943, 25.146976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014725, -0.048666, 0.998706,
		-0.598377, 0.800646, 0.030192,
		-0.801080, -0.597158, -0.040910,
		28.296648, 34.215797, 25.134703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366835, 34.842625, 25.659733>,  <28.857405, 34.633808, 25.163340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366835, 34.842625, 25.659733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.282213, 34.456799, 25.596661>,  <28.231441, 34.225304, 25.558817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.282213, 34.456799, 25.596661>,  <28.366835, 34.842625, 25.659733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282213, 34.456799, 25.596661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123909, -0.133563, 0.983263,
		-0.969480, 0.227550, -0.091262,
		-0.211552, -0.964563, -0.157682,
		28.218748, 34.167431, 25.549356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748850, 34.715450, 26.065289>,  <28.366835, 34.842625, 25.659733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748850, 34.715450, 26.065289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.905024, 34.353786, 25.995949>,  <27.998728, 34.136787, 25.954344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.905024, 34.353786, 25.995949>,  <27.748850, 34.715450, 26.065289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905024, 34.353786, 25.995949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185164, -0.261572, 0.947256,
		-0.901817, -0.337745, -0.269545,
		0.390436, -0.904162, -0.173352,
		28.022154, 34.082539, 25.943943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281500, 34.194923, 26.537777>,  <27.748850, 34.715450, 26.065289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281500, 34.194923, 26.537777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.616962, 33.995934, 26.449070>,  <27.818239, 33.876541, 26.395845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.616962, 33.995934, 26.449070>,  <27.281500, 34.194923, 26.537777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616962, 33.995934, 26.449070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077901, -0.512533, 0.855127,
		-0.539071, -0.699876, -0.468589,
		0.838650, -0.497477, -0.221771,
		27.868559, 33.846691, 26.382540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136147, 33.395058, 26.546946>,  <27.281500, 34.194923, 26.537777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136147, 33.395058, 26.546946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.525499, 33.469543, 26.600384>,  <27.759111, 33.514236, 26.632446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.525499, 33.469543, 26.600384>,  <27.136147, 33.395058, 26.546946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525499, 33.469543, 26.600384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033553, -0.460853, 0.886842,
		0.226712, -0.867720, -0.442339,
		0.973384, 0.186216, 0.133595,
		27.817514, 33.525410, 26.640463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350513, 32.831486, 26.982206>,  <27.136147, 33.395058, 26.546946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350513, 32.831486, 26.982206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.676279, 33.063545, 26.987125>,  <27.871738, 33.202782, 26.990078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.676279, 33.063545, 26.987125>,  <27.350513, 32.831486, 26.982206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676279, 33.063545, 26.987125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237853, -0.353081, 0.904854,
		0.529294, -0.734002, -0.425545,
		0.814416, 0.580151, 0.012299,
		27.920605, 33.237591, 26.990814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807858, 32.330414, 27.137190>,  <27.350513, 32.831486, 26.982206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807858, 32.330414, 27.137190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.957552, 32.687569, 27.237347>,  <28.047369, 32.901863, 27.297441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.957552, 32.687569, 27.237347>,  <27.807858, 32.330414, 27.137190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957552, 32.687569, 27.237347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290279, -0.369238, 0.882837,
		0.880729, -0.257708, -0.397369,
		0.374238, 0.892889, 0.250391,
		28.069824, 32.955437, 27.312464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420919, 32.210373, 27.552975>,  <27.807858, 32.330414, 27.137190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420919, 32.210373, 27.552975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.288177, 32.578255, 27.636894>,  <28.208532, 32.798985, 27.687246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.288177, 32.578255, 27.636894>,  <28.420919, 32.210373, 27.552975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288177, 32.578255, 27.636894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374140, -0.075839, 0.924266,
		0.865962, 0.385217, -0.318931,
		-0.331856, 0.919704, 0.209799,
		28.188622, 32.854164, 27.699835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994829, 32.527733, 27.900583>,  <28.420919, 32.210373, 27.552975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994829, 32.527733, 27.900583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.660105, 32.729309, 27.986176>,  <28.459270, 32.850254, 28.037531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.660105, 32.729309, 27.986176>,  <28.994829, 32.527733, 27.900583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660105, 32.729309, 27.986176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303830, 0.102321, 0.947216,
		0.455447, 0.857655, -0.238736,
		-0.836812, 0.503942, 0.213980,
		28.409061, 32.880493, 28.050369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127758, 33.227097, 28.183260>,  <28.994829, 32.527733, 27.900583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127758, 33.227097, 28.183260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.765696, 33.150097, 28.334858>,  <28.548458, 33.103897, 28.425816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.765696, 33.150097, 28.334858>,  <29.127758, 33.227097, 28.183260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765696, 33.150097, 28.334858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323635, 0.265965, 0.908033,
		-0.275593, 0.944567, -0.178441,
		-0.905157, -0.192498, 0.378993,
		28.494148, 33.092346, 28.448555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046356, 33.799084, 28.717163>,  <29.127758, 33.227097, 28.183260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046356, 33.799084, 28.717163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.741041, 33.555553, 28.803627>,  <28.557852, 33.409435, 28.855505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.741041, 33.555553, 28.803627>,  <29.046356, 33.799084, 28.717163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741041, 33.555553, 28.803627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179653, 0.121368, 0.976214,
		-0.620578, 0.783966, 0.016738,
		-0.763287, -0.608825, 0.216160,
		28.512054, 33.372906, 28.868475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548998, 34.092396, 29.196552>,  <29.046356, 33.799084, 28.717163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548998, 34.092396, 29.196552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.473982, 33.708649, 29.280872>,  <28.428972, 33.478401, 29.331465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.473982, 33.708649, 29.280872>,  <28.548998, 34.092396, 29.196552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473982, 33.708649, 29.280872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127480, 0.189021, 0.973663,
		-0.973949, 0.209474, 0.086851,
		-0.187540, -0.959371, 0.210801,
		28.417721, 33.420837, 29.344112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178886, 34.186432, 29.836157>,  <28.548998, 34.092396, 29.196552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178886, 34.186432, 29.836157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.288843, 33.802773, 29.809433>,  <28.354816, 33.572575, 29.793398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.288843, 33.802773, 29.809433>,  <28.178886, 34.186432, 29.836157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288843, 33.802773, 29.809433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222822, -0.004045, 0.974851,
		-0.935300, -0.282864, 0.212608,
		0.274890, -0.959152, -0.066812,
		28.371309, 33.515026, 29.789389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038979, 33.931320, 30.485609>,  <28.178886, 34.186432, 29.836157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038979, 33.931320, 30.485609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.287514, 33.649593, 30.348278>,  <28.436634, 33.480556, 30.265879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.287514, 33.649593, 30.348278>,  <28.038979, 33.931320, 30.485609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287514, 33.649593, 30.348278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308571, -0.182812, 0.933468,
		-0.720225, -0.685940, 0.103745,
		0.621337, -0.704320, -0.343328,
		28.473915, 33.438297, 30.245279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856110, 33.279095, 30.673487>,  <28.038979, 33.931320, 30.485609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856110, 33.279095, 30.673487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.251823, 33.311840, 30.625126>,  <28.489252, 33.331486, 30.596109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.251823, 33.311840, 30.625126>,  <27.856110, 33.279095, 30.673487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251823, 33.311840, 30.625126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140385, -0.305749, 0.941706,
		0.040122, -0.948587, -0.313965,
		0.989284, 0.081859, -0.120900,
		28.548609, 33.336399, 30.588856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122784, 32.617382, 30.812399>,  <27.856110, 33.279095, 30.673487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122784, 32.617382, 30.812399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.460136, 32.828415, 30.853111>,  <28.662548, 32.955036, 30.877539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.460136, 32.828415, 30.853111>,  <28.122784, 32.617382, 30.812399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460136, 32.828415, 30.853111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276723, -0.588860, 0.759387,
		0.460575, -0.612289, -0.642629,
		0.843383, 0.527585, 0.101779,
		28.713152, 32.986691, 30.883644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502001, 32.161888, 31.189060>,  <28.122784, 32.617382, 30.812399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502001, 32.161888, 31.189060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.723852, 32.491673, 31.234062>,  <28.856962, 32.689541, 31.261065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.723852, 32.491673, 31.234062>,  <28.502001, 32.161888, 31.189060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723852, 32.491673, 31.234062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334210, -0.344541, 0.877266,
		0.762033, -0.448954, -0.466634,
		0.554626, 0.824459, 0.112507,
		28.890240, 32.739010, 31.267815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135778, 31.907028, 31.312160>,  <28.502001, 32.161888, 31.189060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135778, 31.907028, 31.312160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.155682, 32.272438, 31.473652>,  <29.167624, 32.491684, 31.570547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.155682, 32.272438, 31.473652>,  <29.135778, 31.907028, 31.312160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155682, 32.272438, 31.473652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442424, -0.382567, 0.811113,
		0.895425, 0.138263, -0.423199,
		0.049756, 0.913524, 0.403731,
		29.170609, 32.546494, 31.594770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.938263, 32.012970, 31.607742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716112, 32.304340, 31.768219>,  <29.582821, 32.479160, 31.864506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716112, 32.304340, 31.768219>,  <29.938263, 32.012970, 31.607742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716112, 32.304340, 31.768219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387042, -0.200584, 0.899981,
		0.736038, 0.655109, -0.170530,
		-0.555380, 0.728422, 0.401192,
		29.549498, 32.522865, 31.888577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438726, 32.387470, 32.000458>,  <29.938263, 32.012970, 31.607742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438726, 32.387470, 32.000458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.065430, 32.428337, 32.138226>,  <29.841452, 32.452858, 32.220886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.065430, 32.428337, 32.138226>,  <30.438726, 32.387470, 32.000458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065430, 32.428337, 32.138226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312379, -0.242744, 0.918420,
		0.177436, 0.964696, 0.194624,
		-0.933240, 0.102164, 0.344422,
		29.785458, 32.458988, 32.241550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520626, 32.699429, 32.687046>,  <30.438726, 32.387470, 32.000458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520626, 32.699429, 32.687046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137238, 32.589569, 32.717766>,  <29.907204, 32.523655, 32.736198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137238, 32.589569, 32.717766>,  <30.520626, 32.699429, 32.687046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137238, 32.589569, 32.717766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143461, -0.231606, 0.962173,
		-0.246473, 0.933234, 0.261390,
		-0.958473, -0.274649, 0.076798,
		29.849695, 32.507175, 32.740807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270634, 33.089943, 33.314453>,  <30.520626, 32.699429, 32.687046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270634, 33.089943, 33.314453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032053, 32.774479, 33.254772>,  <29.888905, 32.585201, 33.218964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032053, 32.774479, 33.254772>,  <30.270634, 33.089943, 33.314453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032053, 32.774479, 33.254772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119251, -0.270901, 0.955192,
		-0.793742, 0.551932, 0.255628,
		-0.596451, -0.788660, -0.149207,
		29.853117, 32.537880, 33.210011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708261, 33.096439, 33.856091>,  <30.270634, 33.089943, 33.314453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708261, 33.096439, 33.856091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722124, 32.718220, 33.726643>,  <29.730442, 32.491287, 33.648975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722124, 32.718220, 33.726643>,  <29.708261, 33.096439, 33.856091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722124, 32.718220, 33.726643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135279, -0.325269, 0.935895,
		-0.990201, 0.011345, -0.139186,
		0.034655, -0.945553, -0.323617,
		29.732521, 32.434555, 33.629559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233984, 32.743252, 34.241604>,  <29.708261, 33.096439, 33.856091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233984, 32.743252, 34.241604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484907, 32.465023, 34.101505>,  <29.635460, 32.298088, 34.017445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484907, 32.465023, 34.101505>,  <29.233984, 32.743252, 34.241604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484907, 32.465023, 34.101505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051552, -0.485844, 0.872524,
		-0.777065, -0.529283, -0.340631,
		0.627305, -0.695568, -0.350247,
		29.673100, 32.256351, 33.996429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901155, 32.056217, 34.458317>,  <29.233984, 32.743252, 34.241604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901155, 32.056217, 34.458317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.289953, 32.006115, 34.378780>,  <29.523232, 31.976053, 34.331059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.289953, 32.006115, 34.378780>,  <28.901155, 32.056217, 34.458317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289953, 32.006115, 34.378780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096264, -0.559656, 0.823115,
		-0.214384, -0.819205, -0.531924,
		0.971994, -0.125258, -0.198841,
		29.581551, 31.968538, 34.319126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057766, 31.459129, 34.708099>,  <28.901155, 32.056217, 34.458317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057766, 31.459129, 34.708099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.431622, 31.599606, 34.685795>,  <29.655935, 31.683891, 34.672413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.431622, 31.599606, 34.685795>,  <29.057766, 31.459129, 34.708099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431622, 31.599606, 34.685795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197081, -0.381067, 0.903298,
		0.295981, -0.855250, -0.425374,
		0.934641, 0.351192, -0.055765,
		29.712013, 31.704964, 34.669064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590822, 30.857500, 34.758125>,  <29.057766, 31.459129, 34.708099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590822, 30.857500, 34.758125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.759605, 31.207165, 34.854282>,  <29.860876, 31.416964, 34.911976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.759605, 31.207165, 34.854282>,  <29.590822, 30.857500, 34.758125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759605, 31.207165, 34.854282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283752, -0.379173, 0.880746,
		0.861067, -0.303426, -0.408041,
		0.421959, 0.874163, 0.240395,
		29.886192, 31.469414, 34.926399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294596, 30.668503, 35.118279>,  <29.590822, 30.857500, 34.758125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294596, 30.668503, 35.118279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170666, 31.033100, 35.226494>,  <30.096308, 31.251858, 35.291424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170666, 31.033100, 35.226494>,  <30.294596, 30.668503, 35.118279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170666, 31.033100, 35.226494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196674, -0.216950, 0.956165,
		0.930230, 0.349451, -0.112051,
		-0.309823, 0.911492, 0.270541,
		30.077719, 31.306547, 35.307655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832819, 31.049095, 35.554077>,  <30.294596, 30.668503, 35.118279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832819, 31.049095, 35.554077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.479181, 31.217705, 35.634769>,  <30.266998, 31.318871, 35.683186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.479181, 31.217705, 35.634769>,  <30.832819, 31.049095, 35.554077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479181, 31.217705, 35.634769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180629, -0.089882, 0.979436,
		0.430990, 0.902351, 0.003324,
		-0.884093, 0.421526, 0.201729,
		30.213953, 31.344162, 35.695290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987059, 31.391199, 36.130299>,  <30.832819, 31.049095, 35.554077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987059, 31.391199, 36.130299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587360, 31.375751, 36.128479>,  <30.347542, 31.366484, 36.127388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587360, 31.375751, 36.128479>,  <30.987059, 31.391199, 36.130299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587360, 31.375751, 36.128479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000472, -0.128982, 0.991647,
		-0.038881, 0.990895, 0.128903,
		-0.999244, -0.038617, -0.004548,
		30.287588, 31.364166, 36.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730726, 31.842239, 36.693455>,  <30.987059, 31.391199, 36.130299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730726, 31.842239, 36.693455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.387405, 31.657784, 36.603416>,  <30.181414, 31.547110, 36.549393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.387405, 31.657784, 36.603416>,  <30.730726, 31.842239, 36.693455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387405, 31.657784, 36.603416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291318, 0.076761, 0.953542,
		-0.422438, 0.884001, -0.200223,
		-0.858300, -0.461141, -0.225099,
		30.129915, 31.519442, 36.535889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141756, 32.243385, 36.970600>,  <30.730726, 31.842239, 36.693455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141756, 32.243385, 36.970600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.013649, 31.866833, 36.928223>,  <29.936785, 31.640902, 36.902798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.013649, 31.866833, 36.928223>,  <30.141756, 32.243385, 36.970600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013649, 31.866833, 36.928223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153540, -0.058773, 0.986393,
		-0.934801, 0.332178, -0.125717,
		-0.320270, -0.941384, -0.105944,
		29.917568, 31.584417, 36.896439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627842, 32.227333, 37.385338>,  <30.141756, 32.243385, 36.970600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627842, 32.227333, 37.385338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.714302, 31.838844, 37.345314>,  <29.766178, 31.605751, 37.321301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.714302, 31.838844, 37.345314>,  <29.627842, 32.227333, 37.385338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714302, 31.838844, 37.345314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258867, -0.155824, 0.953261,
		-0.941417, -0.180146, -0.285098,
		0.216152, -0.971219, -0.100062,
		29.779148, 31.547478, 37.315296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073538, 31.927912, 37.595089>,  <29.627842, 32.227333, 37.385338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073538, 31.927912, 37.595089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366537, 31.657249, 37.624969>,  <29.542337, 31.494852, 37.642899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366537, 31.657249, 37.624969>,  <29.073538, 31.927912, 37.595089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366537, 31.657249, 37.624969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244121, -0.158653, 0.956679,
		-0.635492, -0.719003, -0.281399,
		0.732500, -0.676657, 0.074701,
		29.586287, 31.454252, 37.647381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780811, 31.518112, 38.097767>,  <29.073538, 31.927912, 37.595089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780811, 31.518112, 38.097767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175491, 31.453953, 38.087204>,  <29.412298, 31.415457, 38.080864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175491, 31.453953, 38.087204>,  <28.780811, 31.518112, 38.097767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175491, 31.453953, 38.087204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015538, -0.254784, 0.966873,
		-0.161810, -0.953603, -0.253887,
		0.986700, -0.160395, -0.026410,
		29.471500, 31.405834, 38.079281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826937, 31.015997, 38.513603>,  <28.780811, 31.518112, 38.097767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826937, 31.015997, 38.513603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201971, 31.154949, 38.520058>,  <29.426992, 31.238321, 38.523930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201971, 31.154949, 38.520058>,  <28.826937, 31.015997, 38.513603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201971, 31.154949, 38.520058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037949, 0.056071, 0.997705,
		0.345680, -0.936046, 0.065754,
		0.937585, 0.347382, 0.016139,
		29.483246, 31.259163, 38.524899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210037, 30.650841, 39.028255>,  <28.826937, 31.015997, 38.513603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210037, 30.650841, 39.028255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.417843, 30.990623, 38.991302>,  <29.542526, 31.194492, 38.969131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.417843, 30.990623, 38.991302>,  <29.210037, 30.650841, 39.028255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417843, 30.990623, 38.991302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168853, 0.003924, 0.985633,
		0.837613, -0.527647, -0.141395,
		0.519512, 0.849455, -0.092382,
		29.573696, 31.245461, 38.963589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806341, 30.633093, 39.583965>,  <29.210037, 30.650841, 39.028255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806341, 30.633093, 39.583965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.800503, 31.022877, 39.494335>,  <29.796999, 31.256748, 39.440556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.800503, 31.022877, 39.494335>,  <29.806341, 30.633093, 39.583965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800503, 31.022877, 39.494335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049720, 0.223119, 0.973522,
		0.998657, 0.025351, 0.045193,
		-0.014596, 0.974462, -0.224079,
		29.796124, 31.315216, 39.427113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303904, 30.935120, 39.996731>,  <29.806341, 30.633093, 39.583965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303904, 30.935120, 39.996731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041334, 31.227318, 39.921375>,  <29.883793, 31.402636, 39.876163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041334, 31.227318, 39.921375>,  <30.303904, 30.935120, 39.996731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041334, 31.227318, 39.921375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075949, 0.184456, 0.979902,
		0.750561, 0.657536, -0.065600,
		-0.656422, 0.730494, -0.188385,
		29.844408, 31.446466, 39.864861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565887, 31.520113, 40.306908>,  <30.303904, 30.935120, 39.996731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565887, 31.520113, 40.306908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170202, 31.573479, 40.282719>,  <29.932791, 31.605497, 40.268208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170202, 31.573479, 40.282719>,  <30.565887, 31.520113, 40.306908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170202, 31.573479, 40.282719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007662, 0.365121, 0.930928,
		0.146278, 0.921351, -0.360160,
		-0.989214, 0.133415, -0.060468,
		29.873438, 31.613503, 40.264580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428753, 32.211411, 40.623238>,  <30.565887, 31.520113, 40.306908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428753, 32.211411, 40.623238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.084209, 32.008785, 40.607967>,  <29.877483, 31.887211, 40.598804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.084209, 32.008785, 40.607967>,  <30.428753, 32.211411, 40.623238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084209, 32.008785, 40.607967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151164, 0.183841, 0.971263,
		-0.484986, 0.842377, -0.234927,
		-0.861358, -0.506561, -0.038177,
		29.825802, 31.856817, 40.596516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113968, 32.609524, 41.111549>,  <30.428753, 32.211411, 40.623238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113968, 32.609524, 41.111549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.916990, 32.265846, 41.056015>,  <29.798803, 32.059639, 41.022694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.916990, 32.265846, 41.056015>,  <30.113968, 32.609524, 41.111549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916990, 32.265846, 41.056015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179348, -0.055915, 0.982195,
		-0.851664, 0.508578, -0.126560,
		-0.492446, -0.859198, -0.138833,
		29.769257, 32.008087, 41.014366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066935, 33.239140, 40.686085>,  <30.113968, 32.609524, 41.111549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066935, 33.239140, 40.686085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.398655, 33.360321, 40.873905>,  <30.597687, 33.433029, 40.986595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.398655, 33.360321, 40.873905>,  <30.066935, 33.239140, 40.686085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398655, 33.360321, 40.873905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389684, 0.288709, -0.874525,
		-0.400505, 0.908221, 0.121370,
		0.829302, 0.302956, 0.469549,
		30.647446, 33.451206, 41.014771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250402, 33.947945, 40.412022>,  <30.066935, 33.239140, 40.686085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250402, 33.947945, 40.412022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568489, 33.743645, 40.542721>,  <30.759342, 33.621067, 40.621140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568489, 33.743645, 40.542721>,  <30.250402, 33.947945, 40.412022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568489, 33.743645, 40.542721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476715, 0.193673, -0.857458,
		0.374662, 0.837633, 0.397493,
		0.795218, -0.510747, 0.326750,
		30.807055, 33.590420, 40.640747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815348, 34.261902, 40.095680>,  <30.250402, 33.947945, 40.412022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815348, 34.261902, 40.095680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976547, 33.917557, 40.219948>,  <31.073267, 33.710949, 40.294506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976547, 33.917557, 40.219948>,  <30.815348, 34.261902, 40.095680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976547, 33.917557, 40.219948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504639, -0.074166, -0.860139,
		0.763500, 0.503408, 0.404535,
		0.402998, -0.860860, 0.310665,
		31.097446, 33.659298, 40.313148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526541, 34.305862, 40.020473>,  <30.815348, 34.261902, 40.095680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526541, 34.305862, 40.020473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434324, 33.916660, 40.016190>,  <31.378994, 33.683140, 40.013618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434324, 33.916660, 40.016190>,  <31.526541, 34.305862, 40.020473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434324, 33.916660, 40.016190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470988, -0.101951, -0.876229,
		0.851482, -0.207050, 0.481777,
		-0.230541, -0.973004, -0.010709,
		31.365162, 33.624760, 40.012978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145103, 34.039646, 39.783371>,  <31.526541, 34.305862, 40.020473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145103, 34.039646, 39.783371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.859617, 33.767746, 39.715782>,  <31.688326, 33.604607, 39.675228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.859617, 33.767746, 39.715782>,  <32.145103, 34.039646, 39.783371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859617, 33.767746, 39.715782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394309, -0.190533, -0.899009,
		0.578906, -0.708264, 0.404017,
		-0.713715, -0.679749, -0.168974,
		31.645502, 33.563820, 39.665089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487766, 33.420425, 39.458412>,  <32.145103, 34.039646, 39.783371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487766, 33.420425, 39.458412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105469, 33.344330, 39.368637>,  <31.876091, 33.298672, 39.314774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105469, 33.344330, 39.368637>,  <32.487766, 33.420425, 39.458412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105469, 33.344330, 39.368637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253926, -0.148062, -0.955824,
		0.148601, -0.970509, 0.189815,
		-0.955740, -0.190235, -0.224435,
		31.818747, 33.287258, 39.301308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466129, 32.790928, 39.114788>,  <32.487766, 33.420425, 39.458412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466129, 32.790928, 39.114788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131683, 32.984612, 39.011669>,  <31.931017, 33.100822, 38.949799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131683, 32.984612, 39.011669>,  <32.466129, 32.790928, 39.114788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131683, 32.984612, 39.011669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287268, -0.013877, -0.957750,
		-0.467329, -0.874842, -0.127495,
		-0.836111, 0.484209, -0.257799,
		31.880850, 33.129875, 38.934330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179108, 32.360161, 38.581745>,  <32.466129, 32.790928, 39.114788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179108, 32.360161, 38.581745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021072, 32.726810, 38.557400>,  <31.926252, 32.946800, 38.542793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021072, 32.726810, 38.557400>,  <32.179108, 32.360161, 38.581745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021072, 32.726810, 38.557400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073313, -0.034578, -0.996709,
		-0.915715, -0.398246, -0.053540,
		-0.395084, 0.916627, -0.060860,
		31.902548, 33.001797, 38.539143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576326, 32.267998, 38.093746>,  <32.179108, 32.360161, 38.581745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576326, 32.267998, 38.093746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662991, 32.657833, 38.071022>,  <31.714989, 32.891735, 38.057388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662991, 32.657833, 38.071022>,  <31.576326, 32.267998, 38.093746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662991, 32.657833, 38.071022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033175, -0.050807, -0.998157,
		-0.975684, 0.218144, 0.021324,
		0.216659, 0.974593, -0.056808,
		31.727987, 32.950211, 38.053978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063652, 32.461639, 37.610672>,  <31.576326, 32.267998, 38.093746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063652, 32.461639, 37.610672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.327118, 32.762600, 37.613609>,  <31.485197, 32.943176, 37.615372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.327118, 32.762600, 37.613609>,  <31.063652, 32.461639, 37.610672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327118, 32.762600, 37.613609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066458, 0.067894, -0.995477,
		-0.749497, 0.655197, 0.094723,
		0.658664, 0.752401, 0.007343,
		31.524717, 32.988319, 37.615814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800268, 33.065624, 37.224758>,  <31.063652, 32.461639, 37.610672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800268, 33.065624, 37.224758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197411, 33.112556, 37.233456>,  <31.435696, 33.140717, 37.238674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197411, 33.112556, 37.233456>,  <30.800268, 33.065624, 37.224758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197411, 33.112556, 37.233456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028061, -0.052423, -0.998231,
		-0.115981, 0.991708, -0.055341,
		0.992855, 0.117329, 0.021748,
		31.495268, 33.147755, 37.239979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988165, 33.581532, 36.733242>,  <30.800268, 33.065624, 37.224758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988165, 33.581532, 36.733242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332951, 33.382023, 36.769569>,  <31.539822, 33.262318, 36.791367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332951, 33.382023, 36.769569>,  <30.988165, 33.581532, 36.733242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332951, 33.382023, 36.769569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061919, -0.074232, -0.995317,
		0.503174, 0.863551, -0.033102,
		0.861964, -0.498768, 0.090821,
		31.591539, 33.232391, 36.796814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362656, 33.813564, 36.140091>,  <30.988165, 33.581532, 36.733242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362656, 33.813564, 36.140091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.577295, 33.498829, 36.262035>,  <31.706079, 33.309986, 36.335201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.577295, 33.498829, 36.262035>,  <31.362656, 33.813564, 36.140091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577295, 33.498829, 36.262035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240746, -0.203511, -0.949013,
		0.808766, 0.582634, 0.080225,
		0.536600, -0.786843, 0.304859,
		31.738276, 33.262775, 36.353493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983757, 33.875710, 35.806759>,  <31.362656, 33.813564, 36.140091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983757, 33.875710, 35.806759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963072, 33.493061, 35.921440>,  <31.950661, 33.263474, 35.990250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963072, 33.493061, 35.921440>,  <31.983757, 33.875710, 35.806759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963072, 33.493061, 35.921440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186137, -0.291292, -0.938351,
		0.981162, 0.004842, 0.193127,
		-0.051713, -0.956622, 0.286706,
		31.947557, 33.206074, 36.007450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590172, 33.571972, 35.428532>,  <31.983757, 33.875710, 35.806759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590172, 33.571972, 35.428532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.364609, 33.258045, 35.531345>,  <32.229271, 33.069687, 35.593033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.364609, 33.258045, 35.531345>,  <32.590172, 33.571972, 35.428532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364609, 33.258045, 35.531345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093975, -0.370200, -0.924186,
		0.820475, -0.496998, 0.282511,
		-0.563905, -0.784821, 0.257035,
		32.195438, 33.022598, 35.608456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998241, 33.036636, 35.321701>,  <32.590172, 33.571972, 35.428532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998241, 33.036636, 35.321701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608723, 32.951015, 35.290962>,  <32.375011, 32.899643, 35.272518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608723, 32.951015, 35.290962>,  <32.998241, 33.036636, 35.321701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608723, 32.951015, 35.290962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125544, -0.224200, -0.966423,
		0.189638, -0.950745, 0.245198,
		-0.973795, -0.214054, -0.076843,
		32.316586, 32.886799, 35.267910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988670, 32.323566, 35.044014>,  <32.998241, 33.036636, 35.321701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988670, 32.323566, 35.044014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621365, 32.464134, 34.971039>,  <32.400982, 32.548477, 34.927254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621365, 32.464134, 34.971039>,  <32.988670, 32.323566, 35.044014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621365, 32.464134, 34.971039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075280, -0.297400, -0.951780,
		-0.388737, -0.887724, 0.246638,
		-0.918268, 0.351425, -0.182438,
		32.345882, 32.569561, 34.916306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647736, 31.780937, 34.622921>,  <32.988670, 32.323566, 35.044014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647736, 31.780937, 34.622921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436653, 32.115662, 34.564568>,  <32.310005, 32.316494, 34.529556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436653, 32.115662, 34.564568>,  <32.647736, 31.780937, 34.622921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436653, 32.115662, 34.564568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050754, -0.140374, -0.988797,
		-0.847912, -0.529194, 0.031604,
		-0.527701, 0.836809, -0.145884,
		32.278343, 32.366703, 34.520802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137749, 31.620745, 34.004372>,  <32.647736, 31.780937, 34.622921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137749, 31.620745, 34.004372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199295, 32.015495, 34.023979>,  <32.236221, 32.252346, 34.035744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199295, 32.015495, 34.023979>,  <32.137749, 31.620745, 34.004372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199295, 32.015495, 34.023979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195380, 0.079013, -0.977539,
		-0.968583, 0.140831, 0.204973,
		0.153864, 0.986876, 0.049015,
		32.245453, 32.311558, 34.038685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533682, 32.041508, 33.770283>,  <32.137749, 31.620745, 34.004372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533682, 32.041508, 33.770283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852961, 32.279987, 33.735821>,  <32.044529, 32.423077, 33.715145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852961, 32.279987, 33.735821>,  <31.533682, 32.041508, 33.770283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852961, 32.279987, 33.735821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277918, 0.237581, -0.930761,
		-0.534453, 0.766876, 0.355332,
		0.798199, 0.596201, -0.086154,
		32.092419, 32.458847, 33.709976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.786833, 44.874359, 24.014721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.064167, 44.959774, 24.290020>,  <22.230568, 45.011024, 24.455200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.064167, 44.959774, 24.290020>,  <21.786833, 44.874359, 24.014721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.064167, 44.959774, 24.290020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438190, -0.883154, -0.167418,
		0.572078, 0.417660, -0.705894,
		0.693337, 0.213540, 0.688247,
		22.272169, 45.023834, 24.496494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.396450, 44.717751, 23.672358>,  <21.786833, 44.874359, 24.014721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.396450, 44.717751, 23.672358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.385094, 44.671097, 24.069466>,  <22.378281, 44.643105, 24.307730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.385094, 44.671097, 24.069466>,  <22.396450, 44.717751, 23.672358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.385094, 44.671097, 24.069466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194338, -0.974863, -0.108975,
		0.980524, 0.189839, 0.050345,
		-0.028391, -0.116637, 0.992769,
		22.376575, 44.636105, 24.367296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956808, 44.213619, 23.825396>,  <22.396450, 44.717751, 23.672358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956808, 44.213619, 23.825396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.746733, 44.161041, 24.161705>,  <22.620687, 44.129494, 24.363491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.746733, 44.161041, 24.161705>,  <22.956808, 44.213619, 23.825396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.746733, 44.161041, 24.161705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105306, -0.990444, -0.089062,
		0.844447, 0.041765, 0.534009,
		-0.525186, -0.131442, 0.840775,
		22.589176, 44.121609, 24.413937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.270529, 43.651817, 24.305994>,  <22.956808, 44.213619, 23.825396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.270529, 43.651817, 24.305994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.893412, 43.683769, 24.435459>,  <22.667141, 43.702942, 24.513138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.893412, 43.683769, 24.435459>,  <23.270529, 43.651817, 24.305994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.893412, 43.683769, 24.435459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069402, -0.996626, 0.043816,
		0.326072, 0.018847, 0.945157,
		-0.942794, 0.079883, 0.323664,
		22.610573, 43.707733, 24.532558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.244982, 43.312233, 24.936266>,  <23.270529, 43.651817, 24.305994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.244982, 43.312233, 24.936266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.866518, 43.340061, 24.809814>,  <22.639439, 43.356758, 24.733944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.866518, 43.340061, 24.809814>,  <23.244982, 43.312233, 24.936266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.866518, 43.340061, 24.809814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149685, -0.959972, 0.236743,
		-0.287006, 0.271317, 0.918703,
		-0.946162, 0.069569, -0.316130,
		22.582670, 43.360931, 24.714975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.850006, 43.019138, 25.470001>,  <23.244982, 43.312233, 24.936266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.850006, 43.019138, 25.470001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.614649, 42.986446, 25.148228>,  <22.473434, 42.966831, 24.955164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.614649, 42.986446, 25.148228>,  <22.850006, 43.019138, 25.470001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.614649, 42.986446, 25.148228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122063, -0.974499, 0.188289,
		-0.799310, 0.208979, 0.563410,
		-0.588391, -0.081730, -0.804435,
		22.438131, 42.961929, 24.906897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.376629, 42.524700, 25.618025>,  <22.850006, 43.019138, 25.470001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.376629, 42.524700, 25.618025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.334288, 42.571140, 25.222992>,  <22.308884, 42.599007, 24.985973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.334288, 42.571140, 25.222992>,  <22.376629, 42.524700, 25.618025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.334288, 42.571140, 25.222992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244098, -0.965806, -0.087379,
		-0.963956, 0.231817, 0.130575,
		-0.105854, 0.116103, -0.987580,
		22.302532, 42.605972, 24.926718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720261, 42.267464, 25.434307>,  <22.376629, 42.524700, 25.618025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720261, 42.267464, 25.434307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.966553, 42.245529, 25.119888>,  <22.114328, 42.232368, 24.931236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.966553, 42.245529, 25.119888>,  <21.720261, 42.267464, 25.434307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.966553, 42.245529, 25.119888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224215, -0.968530, -0.108065,
		-0.755384, 0.242782, -0.608647,
		0.615729, -0.054838, -0.786047,
		22.151272, 42.229076, 24.884073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.322977, 42.023197, 24.772020>,  <21.720261, 42.267464, 25.434307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.322977, 42.023197, 24.772020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.706673, 41.939110, 24.696472>,  <21.936890, 41.888657, 24.651144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.706673, 41.939110, 24.696472>,  <21.322977, 42.023197, 24.772020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.706673, 41.939110, 24.696472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248699, -0.945339, -0.210909,
		-0.134210, 0.249283, -0.959086,
		0.959238, -0.210217, -0.188871,
		21.994444, 41.876045, 24.639811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.280186, 41.628647, 24.163111>,  <21.322977, 42.023197, 24.772020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.280186, 41.628647, 24.163111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.620163, 41.540546, 24.354561>,  <21.824150, 41.487686, 24.469431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.620163, 41.540546, 24.354561>,  <21.280186, 41.628647, 24.163111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.620163, 41.540546, 24.354561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169511, -0.974445, -0.147390,
		0.498858, 0.044141, -0.865559,
		0.849945, -0.220248, 0.478627,
		21.875147, 41.474472, 24.498148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.733131, 41.278442, 23.674084>,  <21.280186, 41.628647, 24.163111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.733131, 41.278442, 23.674084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816008, 41.157616, 24.046284>,  <21.865734, 41.085121, 24.269604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816008, 41.157616, 24.046284>,  <21.733131, 41.278442, 23.674084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816008, 41.157616, 24.046284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096373, -0.940210, -0.326676,
		0.973542, 0.157359, -0.165693,
		0.207192, -0.302065, 0.930499,
		21.878164, 41.066998, 24.325434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.189272, 40.682220, 23.562168>,  <21.733131, 41.278442, 23.674084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.189272, 40.682220, 23.562168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.142672, 40.668777, 23.959217>,  <22.114712, 40.660713, 24.197447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.142672, 40.668777, 23.959217>,  <22.189272, 40.682220, 23.562168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.142672, 40.668777, 23.959217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094737, -0.995246, -0.022579,
		0.988662, 0.091407, 0.119130,
		-0.116500, -0.033609, 0.992622,
		22.107721, 40.658695, 24.257004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.563293, 40.076946, 23.739168>,  <22.189272, 40.682220, 23.562168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.563293, 40.076946, 23.739168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.330896, 40.131798, 24.060078>,  <22.191458, 40.164707, 24.252625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.330896, 40.131798, 24.060078>,  <22.563293, 40.076946, 23.739168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.330896, 40.131798, 24.060078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023644, -0.988133, 0.151769,
		0.813566, 0.069207, 0.577340,
		-0.580992, 0.137125, 0.802275,
		22.156599, 40.172935, 24.300760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.843735, 39.550564, 24.358747>,  <22.563293, 40.076946, 23.739168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.843735, 39.550564, 24.358747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.458473, 39.651318, 24.396461>,  <22.227316, 39.711769, 24.419090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.458473, 39.651318, 24.396461>,  <22.843735, 39.550564, 24.358747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.458473, 39.651318, 24.396461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250367, -0.967752, 0.027784,
		0.098241, 0.003155, 0.995158,
		-0.963154, 0.251884, 0.094283,
		22.169527, 39.726883, 24.424746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.540142, 38.998516, 24.602076>,  <22.843735, 39.550564, 24.358747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.540142, 38.998516, 24.602076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.212803, 39.211742, 24.516148>,  <22.016399, 39.339680, 24.464590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.212803, 39.211742, 24.516148>,  <22.540142, 38.998516, 24.602076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.212803, 39.211742, 24.516148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551121, -0.833877, 0.030252,
		-0.163008, 0.143148, 0.976185,
		-0.818349, 0.533064, -0.214820,
		21.967299, 39.371662, 24.451702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106953, 38.707279, 25.086546>,  <22.540142, 38.998516, 24.602076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106953, 38.707279, 25.086546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.917295, 38.875767, 24.777287>,  <21.803501, 38.976860, 24.591730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.917295, 38.875767, 24.777287>,  <22.106953, 38.707279, 25.086546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.917295, 38.875767, 24.777287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533734, -0.835895, -0.128091,
		-0.700227, 0.351923, 0.621154,
		-0.474142, 0.421223, -0.773150,
		21.775053, 39.002132, 24.545341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.593204, 38.369034, 25.122379>,  <22.106953, 38.707279, 25.086546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.593204, 38.369034, 25.122379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.558098, 38.524857, 24.755653>,  <21.537033, 38.618351, 24.535618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.558098, 38.524857, 24.755653>,  <21.593204, 38.369034, 25.122379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.558098, 38.524857, 24.755653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581773, -0.767137, -0.270262,
		-0.808602, 0.509657, 0.293961,
		-0.087767, 0.389552, -0.916813,
		21.531767, 38.641724, 24.480610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879013, 38.242928, 24.926220>,  <21.593204, 38.369034, 25.122379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.879013, 38.242928, 24.926220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.093639, 38.292358, 24.592316>,  <21.222414, 38.322018, 24.391973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.093639, 38.292358, 24.592316>,  <20.879013, 38.242928, 24.926220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093639, 38.292358, 24.592316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345751, -0.870181, -0.351057,
		-0.769776, 0.476985, -0.424183,
		0.536565, 0.123573, -0.834762,
		21.254608, 38.329430, 24.341887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401186, 38.031502, 24.499853>,  <20.879013, 38.242928, 24.926220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401186, 38.031502, 24.499853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.725168, 38.036522, 24.265312>,  <20.919558, 38.039536, 24.124588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.725168, 38.036522, 24.265312>,  <20.401186, 38.031502, 24.499853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.725168, 38.036522, 24.265312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363604, -0.773699, -0.518827,
		-0.460175, 0.633429, -0.622099,
		0.809958, 0.012554, -0.586354,
		20.968155, 38.040287, 24.089405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223553, 38.075077, 23.764767>,  <20.401186, 38.031502, 24.499853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223553, 38.075077, 23.764767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.590475, 37.916695, 23.781597>,  <20.810629, 37.821667, 23.791697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.590475, 37.916695, 23.781597>,  <20.223553, 38.075077, 23.764767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.590475, 37.916695, 23.781597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294253, -0.745282, -0.598306,
		0.268260, 0.536449, -0.800162,
		0.917307, -0.395952, 0.042078,
		20.865667, 37.797909, 23.794220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.307514, 37.903740, 23.031834>,  <20.223553, 38.075077, 23.764767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.307514, 37.903740, 23.031834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.568312, 37.715878, 23.269936>,  <20.724791, 37.603161, 23.412798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.568312, 37.715878, 23.269936>,  <20.307514, 37.903740, 23.031834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.568312, 37.715878, 23.269936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291146, -0.879955, -0.375385,
		0.700101, 0.071441, -0.710461,
		0.651991, -0.469655, 0.595257,
		20.763908, 37.574982, 23.448513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574213, 38.032944, 22.904068>,  <20.307514, 37.903740, 23.031834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574213, 38.032944, 22.904068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.392801, 38.228828, 22.606209>,  <19.283955, 38.346359, 22.427494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.392801, 38.228828, 22.606209>,  <19.574213, 38.032944, 22.904068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392801, 38.228828, 22.606209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804040, -0.135632, -0.578899,
		-0.384490, -0.861272, -0.332233,
		-0.453528, 0.489709, -0.744646,
		19.256742, 38.375740, 22.382814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680141, 37.628178, 22.288424>,  <19.574213, 38.032944, 22.904068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680141, 37.628178, 22.288424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.576738, 37.986012, 22.142601>,  <19.514696, 38.200710, 22.055107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.576738, 37.986012, 22.142601>,  <19.680141, 37.628178, 22.288424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.576738, 37.986012, 22.142601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768316, -0.038351, -0.638921,
		-0.585547, -0.445259, -0.677407,
		-0.258506, 0.894580, -0.364556,
		19.499187, 38.254387, 22.033234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758747, 37.582375, 21.617182>,  <19.680141, 37.628178, 22.288424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758747, 37.582375, 21.617182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.762501, 37.974579, 21.695671>,  <19.764753, 38.209904, 21.742764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.762501, 37.974579, 21.695671>,  <19.758747, 37.582375, 21.617182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.762501, 37.974579, 21.695671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800127, 0.110335, -0.589595,
		-0.599757, 0.162535, -0.783501,
		0.009382, 0.980515, 0.196222,
		19.765316, 38.268734, 21.754538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834606, 37.965405, 20.980379>,  <19.758747, 37.582375, 21.617182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834606, 37.965405, 20.980379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.953920, 38.230778, 21.254864>,  <20.025509, 38.390003, 21.419554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.953920, 38.230778, 21.254864>,  <19.834606, 37.965405, 20.980379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.953920, 38.230778, 21.254864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786409, 0.236609, -0.570593,
		-0.540913, 0.709841, -0.451152,
		0.298284, 0.663432, 0.686211,
		20.043406, 38.429806, 21.460728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.057144, 38.521065, 20.626991>,  <19.834606, 37.965405, 20.980379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.057144, 38.521065, 20.626991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.240730, 38.616543, 20.969307>,  <20.350882, 38.673828, 21.174696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.240730, 38.616543, 20.969307>,  <20.057144, 38.521065, 20.626991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240730, 38.616543, 20.969307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829009, 0.231358, -0.509134,
		-0.319522, 0.943132, -0.091695,
		0.458966, 0.238696, 0.855789,
		20.378420, 38.688152, 21.226044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.344852, 39.113945, 20.529732>,  <20.057144, 38.521065, 20.626991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.344852, 39.113945, 20.529732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.549887, 39.002266, 20.854523>,  <20.672907, 38.935261, 21.049397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.549887, 39.002266, 20.854523>,  <20.344852, 39.113945, 20.529732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549887, 39.002266, 20.854523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853836, 0.265590, -0.447690,
		-0.090661, 0.922774, 0.374524,
		0.512587, -0.279194, 0.811976,
		20.703663, 38.918507, 21.098116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.524773, 39.667625, 20.895302>,  <20.344852, 39.113945, 20.529732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.524773, 39.667625, 20.895302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.792252, 39.388618, 20.998310>,  <20.952740, 39.221214, 21.060116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.792252, 39.388618, 20.998310>,  <20.524773, 39.667625, 20.895302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792252, 39.388618, 20.998310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738082, 0.580842, -0.343304,
		0.089880, 0.419639, 0.903230,
		0.668698, -0.697514, 0.257522,
		20.992861, 39.179363, 21.075567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.926958, 39.950569, 21.472376>,  <20.524773, 39.667625, 20.895302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.926958, 39.950569, 21.472376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.144876, 39.638405, 21.349640>,  <21.275627, 39.451107, 21.275999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.144876, 39.638405, 21.349640>,  <20.926958, 39.950569, 21.472376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.144876, 39.638405, 21.349640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836825, 0.529548, 0.138938,
		0.054057, -0.332464, 0.941566,
		0.544796, -0.780414, -0.306840,
		21.308315, 39.404282, 21.257587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.441580, 40.130005, 21.844372>,  <20.926958, 39.950569, 21.472376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.441580, 40.130005, 21.844372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.551422, 39.854588, 21.575893>,  <21.617327, 39.689339, 21.414806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.551422, 39.854588, 21.575893>,  <21.441580, 40.130005, 21.844372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.551422, 39.854588, 21.575893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961156, 0.216710, 0.170927,
		0.027765, -0.692063, 0.721303,
		0.274605, -0.688539, -0.671198,
		21.633804, 39.648026, 21.374535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.870428, 39.695316, 22.125290>,  <21.441580, 40.130005, 21.844372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.870428, 39.695316, 22.125290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.957413, 39.674725, 21.735405>,  <22.009604, 39.662369, 21.501474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.957413, 39.674725, 21.735405>,  <21.870428, 39.695316, 22.125290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.957413, 39.674725, 21.735405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865855, 0.471138, 0.168295,
		0.450560, -0.880556, 0.147025,
		0.217463, -0.051476, -0.974710,
		22.022652, 39.659283, 21.442991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.452223, 39.412926, 22.095503>,  <21.870428, 39.695316, 22.125290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.452223, 39.412926, 22.095503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.438929, 39.567642, 21.726875>,  <22.430952, 39.660473, 21.505699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.438929, 39.567642, 21.726875>,  <22.452223, 39.412926, 22.095503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.438929, 39.567642, 21.726875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928828, 0.352404, 0.114410,
		0.369018, -0.852175, -0.370976,
		-0.033236, 0.386792, -0.921568,
		22.428957, 39.683681, 21.450405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.078302, 39.170925, 21.750214>,  <22.452223, 39.412926, 22.095503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.078302, 39.170925, 21.750214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.946527, 39.501873, 21.568253>,  <22.867462, 39.700439, 21.459076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.946527, 39.501873, 21.568253>,  <23.078302, 39.170925, 21.750214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.946527, 39.501873, 21.568253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890140, 0.432812, 0.142561,
		0.314837, -0.357962, -0.879057,
		-0.329435, 0.827368, -0.454901,
		22.847696, 39.750084, 21.431782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.646954, 39.485382, 21.237423>,  <23.078302, 39.170925, 21.750214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.646954, 39.485382, 21.237423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.389879, 39.779812, 21.322414>,  <23.235634, 39.956470, 21.373409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.389879, 39.779812, 21.322414>,  <23.646954, 39.485382, 21.237423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.389879, 39.779812, 21.322414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763649, 0.637774, 0.100420,
		-0.061597, 0.226799, -0.971992,
		-0.642686, 0.736075, 0.212480,
		23.197073, 40.000633, 21.386158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.827938, 40.014713, 20.859758>,  <23.646954, 39.485382, 21.237423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.827938, 40.014713, 20.859758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.606424, 40.211285, 21.128628>,  <23.473516, 40.329227, 21.289949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.606424, 40.211285, 21.128628>,  <23.827938, 40.014713, 20.859758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.606424, 40.211285, 21.128628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695238, 0.717143, 0.048481,
		-0.458221, 0.494170, -0.738803,
		-0.553785, 0.491429, 0.672176,
		23.440289, 40.358715, 21.330280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.825096, 40.724636, 20.598143>,  <23.827938, 40.014713, 20.859758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.825096, 40.724636, 20.598143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.731148, 40.734791, 20.986820>,  <23.674778, 40.740883, 21.220026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.731148, 40.734791, 20.986820>,  <23.825096, 40.724636, 20.598143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.731148, 40.734791, 20.986820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646938, 0.750176, 0.136775,
		-0.725470, 0.660751, -0.192619,
		-0.234873, 0.025386, 0.971695,
		23.660686, 40.742405, 21.278328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.805534, 41.357975, 20.684839>,  <23.825096, 40.724636, 20.598143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.805534, 41.357975, 20.684839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.803276, 41.234283, 21.065228>,  <23.801922, 41.160069, 21.293461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.803276, 41.234283, 21.065228>,  <23.805534, 41.357975, 20.684839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.803276, 41.234283, 21.065228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494877, 0.825504, 0.271367,
		-0.868944, 0.472146, 0.148370,
		-0.005644, -0.309228, 0.950971,
		23.801582, 41.141514, 21.350519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.666916, 42.003830, 21.108587>,  <23.805534, 41.357975, 20.684839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.666916, 42.003830, 21.108587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.844187, 41.737370, 21.348534>,  <23.950550, 41.577492, 21.492500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.844187, 41.737370, 21.348534>,  <23.666916, 42.003830, 21.108587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.844187, 41.737370, 21.348534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548751, 0.730739, 0.406070,
		-0.708848, 0.149215, 0.689398,
		0.443178, -0.666150, 0.599864,
		23.977140, 41.537525, 21.528494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.618635, 42.249424, 21.814215>,  <23.666916, 42.003830, 21.108587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.618635, 42.249424, 21.814215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.929485, 41.998997, 21.788540>,  <24.115995, 41.848740, 21.773136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.929485, 41.998997, 21.788540>,  <23.618635, 42.249424, 21.814215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.929485, 41.998997, 21.788540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570715, 0.658064, 0.491158,
		-0.265259, -0.418323, 0.868702,
		0.777124, -0.626065, -0.064186,
		24.162622, 41.811176, 21.769283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.907452, 42.244621, 22.452032>,  <23.618635, 42.249424, 21.814215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.907452, 42.244621, 22.452032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.178043, 42.135342, 22.178467>,  <24.340399, 42.069775, 22.014328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.178043, 42.135342, 22.178467>,  <23.907452, 42.244621, 22.452032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178043, 42.135342, 22.178467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577610, 0.772930, 0.262573,
		0.456885, -0.572662, 0.680672,
		0.676478, -0.273198, -0.683915,
		24.380987, 42.053383, 21.973291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.502871, 42.406414, 22.806696>,  <23.907452, 42.244621, 22.452032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.502871, 42.406414, 22.806696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.634720, 42.354744, 22.432602>,  <24.713829, 42.323742, 22.208145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.634720, 42.354744, 22.432602>,  <24.502871, 42.406414, 22.806696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634720, 42.354744, 22.432602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661728, 0.738162, 0.131272,
		0.673397, -0.662141, 0.328795,
		0.329624, -0.129174, -0.935234,
		24.733606, 42.315990, 22.152031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247950, 42.454559, 22.859543>,  <24.502871, 42.406414, 22.806696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247950, 42.454559, 22.859543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.139566, 42.552731, 22.487232>,  <25.074535, 42.611633, 22.263845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.139566, 42.552731, 22.487232>,  <25.247950, 42.454559, 22.859543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139566, 42.552731, 22.487232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554825, 0.829989, 0.057339,
		0.786606, -0.500881, -0.361066,
		-0.270960, 0.245432, -0.930776,
		25.058279, 42.626362, 22.208000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.063339, 32.222145, 29.501785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171242, 32.606388, 29.475060>,  <28.235983, 32.836933, 29.459024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171242, 32.606388, 29.475060>,  <28.063339, 32.222145, 29.501785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171242, 32.606388, 29.475060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544686, 0.095001, -0.833241,
		-0.794071, 0.261166, 0.548857,
		0.269756, 0.960608, -0.066816,
		28.252169, 32.894569, 29.455015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528980, 32.559765, 29.192657>,  <28.063339, 32.222145, 29.501785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528980, 32.559765, 29.192657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820829, 32.816574, 29.098465>,  <27.995939, 32.970661, 29.041950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820829, 32.816574, 29.098465>,  <27.528980, 32.559765, 29.192657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820829, 32.816574, 29.098465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354488, 0.060615, -0.933094,
		-0.584798, 0.764282, 0.271817,
		0.729623, 0.642027, -0.235481,
		28.039717, 33.009182, 29.027821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254957, 32.979214, 28.777367>,  <27.528980, 32.559765, 29.192657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254957, 32.979214, 28.777367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637510, 33.028507, 28.671425>,  <27.867043, 33.058083, 28.607859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637510, 33.028507, 28.671425>,  <27.254957, 32.979214, 28.777367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637510, 33.028507, 28.671425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267287, 0.003326, -0.963611,
		-0.117871, 0.992372, 0.036120,
		0.956381, 0.123236, -0.264856,
		27.924425, 33.065479, 28.591969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382656, 33.646584, 28.343561>,  <27.254957, 32.979214, 28.777367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382656, 33.646584, 28.343561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672892, 33.388557, 28.247715>,  <27.847033, 33.233742, 28.190207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672892, 33.388557, 28.247715>,  <27.382656, 33.646584, 28.343561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672892, 33.388557, 28.247715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106322, 0.238938, -0.965197,
		0.679864, 0.725813, 0.104787,
		0.725590, -0.645061, -0.239615,
		27.890568, 33.195038, 28.175831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911129, 34.041500, 28.058195>,  <27.382656, 33.646584, 28.343561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911129, 34.041500, 28.058195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992529, 33.672150, 27.927986>,  <28.041368, 33.450539, 27.849861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992529, 33.672150, 27.927986>,  <27.911129, 34.041500, 28.058195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992529, 33.672150, 27.927986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001916, 0.332101, -0.943242,
		0.979074, 0.192572, 0.065812,
		0.203498, -0.923377, -0.325520,
		28.053579, 33.395138, 27.830330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540668, 34.136978, 27.629343>,  <27.911129, 34.041500, 28.058195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540668, 34.136978, 27.629343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395842, 33.777225, 27.531353>,  <28.308947, 33.561375, 27.472559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395842, 33.777225, 27.531353>,  <28.540668, 34.136978, 27.629343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395842, 33.777225, 27.531353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214446, 0.175392, -0.960859,
		0.907151, -0.400428, 0.129367,
		-0.362065, -0.899386, -0.244977,
		28.287222, 33.507408, 27.457859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979029, 33.939724, 27.142574>,  <28.540668, 34.136978, 27.629343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979029, 33.939724, 27.142574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651136, 33.715359, 27.096245>,  <28.454401, 33.580738, 27.068447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651136, 33.715359, 27.096245>,  <28.979029, 33.939724, 27.142574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651136, 33.715359, 27.096245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079328, 0.089081, -0.992860,
		0.567227, -0.823067, -0.028526,
		-0.819732, -0.560914, -0.115822,
		28.405216, 33.547085, 27.061499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116285, 33.636127, 26.590380>,  <28.979029, 33.939724, 27.142574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116285, 33.636127, 26.590380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719501, 33.590416, 26.612125>,  <28.481432, 33.562988, 26.625174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719501, 33.590416, 26.612125>,  <29.116285, 33.636127, 26.590380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719501, 33.590416, 26.612125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084845, 0.281815, -0.955710,
		0.093898, -0.952639, -0.289245,
		-0.991960, -0.114280, 0.054365,
		28.421913, 33.556133, 26.628435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943682, 33.119919, 26.157497>,  <29.116285, 33.636127, 26.590380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943682, 33.119919, 26.157497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602007, 33.323856, 26.198330>,  <28.397003, 33.446220, 26.222830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602007, 33.323856, 26.198330>,  <28.943682, 33.119919, 26.157497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602007, 33.323856, 26.198330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072400, 0.077793, -0.994337,
		-0.514903, -0.856740, -0.029537,
		-0.854186, 0.509848, 0.102084,
		28.345751, 33.476810, 26.228954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431503, 32.827202, 25.766895>,  <28.943682, 33.119919, 26.157497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431503, 32.827202, 25.766895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305370, 33.203270, 25.818497>,  <28.229691, 33.428909, 25.849459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305370, 33.203270, 25.818497>,  <28.431503, 32.827202, 25.766895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305370, 33.203270, 25.818497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054570, 0.117751, -0.991543,
		-0.947410, -0.319707, 0.014174,
		-0.315334, 0.940171, 0.129005,
		28.210770, 33.485321, 25.857199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887650, 32.940262, 25.287798>,  <28.431503, 32.827202, 25.766895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887650, 32.940262, 25.287798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972219, 33.323689, 25.364159>,  <28.022963, 33.553745, 25.409975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972219, 33.323689, 25.364159>,  <27.887650, 32.940262, 25.287798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972219, 33.323689, 25.364159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062323, 0.208142, -0.976111,
		-0.975405, 0.194479, 0.103748,
		0.211427, 0.958569, 0.190902,
		28.035648, 33.611259, 25.421429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326202, 33.346828, 25.034800>,  <27.887650, 32.940262, 25.287798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326202, 33.346828, 25.034800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636574, 33.597466, 25.063961>,  <27.822796, 33.747849, 25.081457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636574, 33.597466, 25.063961>,  <27.326202, 33.346828, 25.034800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636574, 33.597466, 25.063961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001637, 0.117570, -0.993063,
		-0.630821, 0.770425, 0.092251,
		0.775927, 0.626596, 0.072904,
		27.869352, 33.785446, 25.085833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243498, 33.966118, 24.612762>,  <27.326202, 33.346828, 25.034800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243498, 33.966118, 24.612762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634201, 33.880817, 24.621391>,  <27.868624, 33.829636, 24.626568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634201, 33.880817, 24.621391>,  <27.243498, 33.966118, 24.612762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634201, 33.880817, 24.621391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024525, -0.211173, -0.977141,
		0.212933, 0.953902, -0.211496,
		0.976759, -0.213252, 0.021571,
		27.927229, 33.816841, 24.627863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128572, 34.399605, 23.993938>,  <27.243498, 33.966118, 24.612762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128572, 34.399605, 23.993938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347088, 34.185982, 23.735836>,  <27.478197, 34.057808, 23.580975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347088, 34.185982, 23.735836>,  <27.128572, 34.399605, 23.993938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347088, 34.185982, 23.735836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359817, 0.845291, -0.394988,
		0.756375, -0.016397, 0.653933,
		0.546286, -0.534055, -0.645257,
		27.510973, 34.025764, 23.542259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867443, 35.187733, 23.874830>,  <27.128572, 34.399605, 23.993938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867443, 35.187733, 23.874830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517035, 35.321438, 24.013885>,  <26.306789, 35.401661, 24.097319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517035, 35.321438, 24.013885>,  <26.867443, 35.187733, 23.874830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517035, 35.321438, 24.013885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413414, 0.149290, 0.898221,
		0.248345, 0.930580, -0.268972,
		-0.876021, 0.334266, 0.347639,
		26.254229, 35.421719, 24.118177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928154, 35.842651, 23.938955>,  <26.867443, 35.187733, 23.874830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928154, 35.842651, 23.938955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636421, 35.743099, 24.193871>,  <26.461382, 35.683369, 24.346819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636421, 35.743099, 24.193871>,  <26.928154, 35.842651, 23.938955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636421, 35.743099, 24.193871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435633, 0.549317, 0.713074,
		-0.527543, 0.797690, -0.292213,
		-0.729330, -0.248880, 0.637288,
		26.417622, 35.668434, 24.385057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874008, 36.415882, 24.385410>,  <26.928154, 35.842651, 23.938955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874008, 36.415882, 24.385410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669876, 36.131561, 24.579037>,  <26.547398, 35.960968, 24.695213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669876, 36.131561, 24.579037>,  <26.874008, 36.415882, 24.385410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669876, 36.131561, 24.579037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259359, 0.409463, 0.874684,
		-0.819937, 0.571925, -0.024607,
		-0.510329, -0.710804, 0.484068,
		26.516777, 35.918320, 24.724257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522984, 36.818371, 24.890459>,  <26.874008, 36.415882, 24.385410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522984, 36.818371, 24.890459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512789, 36.440971, 25.022621>,  <26.506672, 36.214531, 25.101919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512789, 36.440971, 25.022621>,  <26.522984, 36.818371, 24.890459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512789, 36.440971, 25.022621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041983, 0.329212, 0.943322,
		-0.998793, 0.037912, 0.031221,
		-0.025485, -0.943494, 0.330407,
		26.505144, 36.157925, 25.121744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974346, 36.783802, 25.327986>,  <26.522984, 36.818371, 24.890459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974346, 36.783802, 25.327986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227810, 36.487263, 25.416424>,  <26.379889, 36.309338, 25.469486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227810, 36.487263, 25.416424>,  <25.974346, 36.783802, 25.327986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227810, 36.487263, 25.416424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015738, 0.273381, 0.961777,
		-0.773454, -0.612916, 0.161563,
		0.633657, -0.741348, 0.221094,
		26.417908, 36.264858, 25.482752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796642, 36.541340, 25.963570>,  <25.974346, 36.783802, 25.327986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796642, 36.541340, 25.963570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169125, 36.396381, 25.947926>,  <26.392614, 36.309406, 25.938540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169125, 36.396381, 25.947926>,  <25.796642, 36.541340, 25.963570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169125, 36.396381, 25.947926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026560, -0.039551, 0.998865,
		-0.363529, -0.931186, -0.027205,
		0.931204, -0.362394, -0.039110,
		26.448486, 36.287663, 25.936193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894602, 36.117165, 26.562574>,  <25.796642, 36.541340, 25.963570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894602, 36.117165, 26.562574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280235, 36.158554, 26.464729>,  <26.511616, 36.183388, 26.406023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280235, 36.158554, 26.464729>,  <25.894602, 36.117165, 26.562574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280235, 36.158554, 26.464729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241319, 0.043436, 0.969473,
		0.110940, -0.993683, 0.016906,
		0.964083, 0.103474, -0.244613,
		26.569460, 36.189594, 26.391346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173304, 35.674438, 26.954720>,  <25.894602, 36.117165, 26.562574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173304, 35.674438, 26.954720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485468, 35.904613, 26.856873>,  <26.672766, 36.042717, 26.798164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485468, 35.904613, 26.856873>,  <26.173304, 35.674438, 26.954720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485468, 35.904613, 26.856873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321761, -0.034141, 0.946205,
		0.536126, -0.817136, -0.211796,
		0.780409, 0.575433, -0.244619,
		26.719591, 36.077244, 26.783487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686899, 35.427124, 27.324039>,  <26.173304, 35.674438, 26.954720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686899, 35.427124, 27.324039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841410, 35.784576, 27.232639>,  <26.934116, 35.999050, 27.177799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841410, 35.784576, 27.232639>,  <26.686899, 35.427124, 27.324039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841410, 35.784576, 27.232639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402131, 0.059790, 0.913628,
		0.830110, -0.444797, -0.336262,
		0.386274, 0.893633, -0.228499,
		26.957293, 36.052666, 27.164089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370926, 35.341736, 27.457666>,  <26.686899, 35.427124, 27.324039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370926, 35.341736, 27.457666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249271, 35.722069, 27.481083>,  <27.176279, 35.950268, 27.495132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249271, 35.722069, 27.481083>,  <27.370926, 35.341736, 27.457666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249271, 35.722069, 27.481083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416570, 0.077478, 0.905796,
		0.856720, 0.299873, -0.419650,
		-0.304137, 0.950828, 0.058541,
		27.158030, 36.007317, 27.498646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009106, 35.794006, 27.610252>,  <27.370926, 35.341736, 27.457666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009106, 35.794006, 27.610252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693214, 36.021156, 27.703075>,  <27.503679, 36.157444, 27.758770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693214, 36.021156, 27.703075>,  <28.009106, 35.794006, 27.610252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693214, 36.021156, 27.703075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347344, 0.102122, 0.932160,
		0.505649, 0.816758, -0.277895,
		-0.789729, 0.567871, 0.232058,
		27.456295, 36.191517, 27.772694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295691, 36.401981, 28.034943>,  <28.009106, 35.794006, 27.610252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295691, 36.401981, 28.034943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902887, 36.358513, 28.096718>,  <27.667206, 36.332432, 28.133783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902887, 36.358513, 28.096718>,  <28.295691, 36.401981, 28.034943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902887, 36.358513, 28.096718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165177, -0.097903, 0.981393,
		-0.091525, 0.989245, 0.114091,
		-0.982008, -0.108668, 0.154440,
		27.608284, 36.325912, 28.143049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185072, 36.872829, 28.600611>,  <28.295691, 36.401981, 28.034943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185072, 36.872829, 28.600611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895990, 36.597107, 28.580387>,  <27.722542, 36.431671, 28.568253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895990, 36.597107, 28.580387>,  <28.185072, 36.872829, 28.600611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895990, 36.597107, 28.580387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095170, -0.171698, 0.980542,
		-0.684576, 0.703828, 0.189688,
		-0.722702, -0.689308, -0.050557,
		27.679180, 36.390316, 28.565220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843224, 37.001610, 29.196817>,  <28.185072, 36.872829, 28.600611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843224, 37.001610, 29.196817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722717, 36.626976, 29.125217>,  <27.650414, 36.402195, 29.082256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722717, 36.626976, 29.125217>,  <27.843224, 37.001610, 29.196817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722717, 36.626976, 29.125217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002644, -0.188543, 0.982061,
		-0.953536, 0.295389, 0.059278,
		-0.301266, -0.936588, -0.179002,
		27.632338, 36.346001, 29.071516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409956, 37.694366, 29.106075>,  <27.843224, 37.001610, 29.196817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409956, 37.694366, 29.106075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677032, 37.983822, 29.175972>,  <27.837278, 38.157494, 29.217911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677032, 37.983822, 29.175972>,  <27.409956, 37.694366, 29.106075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677032, 37.983822, 29.175972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236277, 0.016595, -0.971544,
		-0.705947, 0.689980, -0.159899,
		0.667692, 0.723639, 0.174742,
		27.877340, 38.200912, 29.228394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214449, 38.253536, 28.594103>,  <27.409956, 37.694366, 29.106075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214449, 38.253536, 28.594103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590395, 38.314510, 28.716362>,  <27.815962, 38.351093, 28.789717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590395, 38.314510, 28.716362>,  <27.214449, 38.253536, 28.594103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590395, 38.314510, 28.716362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290648, 0.113051, -0.950128,
		-0.179382, 0.981827, 0.061949,
		0.939865, 0.152431, 0.305646,
		27.872355, 38.360241, 28.808056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441811, 38.912426, 28.221636>,  <27.214449, 38.253536, 28.594103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441811, 38.912426, 28.221636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760756, 38.695091, 28.326706>,  <27.952122, 38.564690, 28.389748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760756, 38.695091, 28.326706>,  <27.441811, 38.912426, 28.221636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760756, 38.695091, 28.326706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335679, 0.037579, -0.941227,
		0.501534, 0.838672, 0.212352,
		0.797360, -0.543339, 0.262677,
		27.999964, 38.532089, 28.405510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056393, 39.195816, 27.803875>,  <27.441811, 38.912426, 28.221636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056393, 39.195816, 27.803875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220543, 38.858696, 27.943176>,  <28.319033, 38.656425, 28.026756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220543, 38.858696, 27.943176>,  <28.056393, 39.195816, 27.803875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220543, 38.858696, 27.943176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526561, -0.092795, -0.845058,
		0.744531, 0.530166, 0.405706,
		0.410374, -0.842801, 0.348254,
		28.343655, 38.605854, 28.047653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792873, 39.221542, 27.758554>,  <28.056393, 39.195816, 27.803875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792873, 39.221542, 27.758554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639853, 38.853413, 27.725914>,  <28.548040, 38.632534, 27.706329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639853, 38.853413, 27.725914>,  <28.792873, 39.221542, 27.758554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639853, 38.853413, 27.725914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404660, -0.087494, -0.910272,
		0.830605, -0.381246, 0.405890,
		-0.382550, -0.920324, -0.081602,
		28.525087, 38.577316, 27.701433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313402, 38.842781, 27.676714>,  <28.792873, 39.221542, 27.758554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313402, 38.842781, 27.676714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009237, 38.643322, 27.510281>,  <28.826738, 38.523647, 27.410421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009237, 38.643322, 27.510281>,  <29.313402, 38.842781, 27.676714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009237, 38.643322, 27.510281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481922, -0.003783, -0.876206,
		0.435343, -0.866797, 0.243185,
		-0.760413, -0.498646, -0.416082,
		28.781113, 38.493729, 27.385456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671976, 38.335815, 27.322050>,  <29.313402, 38.842781, 27.676714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671976, 38.335815, 27.322050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310904, 38.340786, 27.149998>,  <29.094259, 38.343769, 27.046766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310904, 38.340786, 27.149998>,  <29.671976, 38.335815, 27.322050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310904, 38.340786, 27.149998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396290, -0.365529, -0.842225,
		-0.167688, -0.930717, 0.325033,
		-0.902682, 0.012423, -0.430129,
		29.040098, 38.344513, 27.020960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544048, 37.747112, 27.064468>,  <29.671976, 38.335815, 27.322050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544048, 37.747112, 27.064468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270658, 37.951782, 26.856220>,  <29.106625, 38.074585, 26.731272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270658, 37.951782, 26.856220>,  <29.544048, 37.747112, 27.064468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270658, 37.951782, 26.856220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356063, -0.388920, -0.849682,
		-0.637244, -0.766111, 0.083627,
		-0.683475, 0.511678, -0.520621,
		29.065615, 38.105286, 26.700033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311794, 37.284874, 26.592400>,  <29.544048, 37.747112, 27.064468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311794, 37.284874, 26.592400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194349, 37.628368, 26.424419>,  <29.123882, 37.834465, 26.323631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194349, 37.628368, 26.424419>,  <29.311794, 37.284874, 26.592400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194349, 37.628368, 26.424419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267094, -0.348118, -0.898596,
		-0.917852, -0.376006, -0.127152,
		-0.293614, 0.858739, -0.419950,
		29.106264, 37.885990, 26.298435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917870, 37.108467, 26.078238>,  <29.311794, 37.284874, 26.592400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917870, 37.108467, 26.078238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043131, 37.471851, 25.967506>,  <29.118288, 37.689880, 25.901068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043131, 37.471851, 25.967506>,  <28.917870, 37.108467, 26.078238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043131, 37.471851, 25.967506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215565, -0.351872, -0.910888,
		-0.924914, 0.225575, -0.306023,
		0.313155, 0.908461, -0.276826,
		29.137077, 37.744389, 25.884459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479076, 37.262386, 25.561611>,  <28.917870, 37.108467, 26.078238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479076, 37.262386, 25.561611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792646, 37.503201, 25.500935>,  <28.980789, 37.647690, 25.464529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792646, 37.503201, 25.500935>,  <28.479076, 37.262386, 25.561611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792646, 37.503201, 25.500935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017031, -0.265088, -0.964074,
		-0.620621, 0.753178, -0.218063,
		0.783925, 0.602039, -0.151692,
		29.027824, 37.683811, 25.455427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270538, 37.645618, 25.036015>,  <28.479076, 37.262386, 25.561611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270538, 37.645618, 25.036015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669292, 37.677059, 25.033558>,  <28.908545, 37.695923, 25.032084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669292, 37.677059, 25.033558>,  <28.270538, 37.645618, 25.036015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669292, 37.677059, 25.033558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024700, -0.385321, -0.922452,
		-0.074874, 0.919429, -0.386063,
		0.996887, 0.078604, -0.006141,
		28.968359, 37.700642, 25.031715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.242632, 39.051739, 32.982246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.625689, 38.936558, 32.981106>,  <27.855522, 38.867451, 32.980423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.625689, 38.936558, 32.981106>,  <27.242632, 39.051739, 32.982246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625689, 38.936558, 32.981106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003133, -0.000528, -0.999995,
		0.287945, 0.957646, -0.001408,
		0.957642, -0.287948, -0.002849,
		27.912981, 38.850174, 32.980251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643354, 39.444637, 32.523727>,  <27.242632, 39.051739, 32.982246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643354, 39.444637, 32.523727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.874155, 39.117947, 32.525963>,  <28.012636, 38.921932, 32.527306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.874155, 39.117947, 32.525963>,  <27.643354, 39.444637, 32.523727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874155, 39.117947, 32.525963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132151, 0.086601, -0.987439,
		0.805981, 0.570493, 0.157899,
		0.577002, -0.816724, 0.005592,
		28.047256, 38.872929, 32.527641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131880, 39.642063, 32.042358>,  <27.643354, 39.444637, 32.523727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131880, 39.642063, 32.042358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.144684, 39.243355, 32.071800>,  <28.152367, 39.004128, 32.089466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.144684, 39.243355, 32.071800>,  <28.131880, 39.642063, 32.042358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144684, 39.243355, 32.071800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138584, -0.068505, -0.987979,
		0.989833, 0.041827, 0.135944,
		0.032011, -0.996774, 0.073605,
		28.154287, 38.944324, 32.093884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737598, 39.462124, 31.610071>,  <28.131880, 39.642063, 32.042358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737598, 39.462124, 31.610071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.517296, 39.129604, 31.640011>,  <28.385115, 38.930092, 31.657974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.517296, 39.129604, 31.640011>,  <28.737598, 39.462124, 31.610071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517296, 39.129604, 31.640011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097901, -0.153399, -0.983303,
		0.828903, -0.534234, 0.165871,
		-0.550758, -0.831302, 0.074851,
		28.352068, 38.880215, 31.662466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070894, 38.949604, 31.174040>,  <28.737598, 39.462124, 31.610071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070894, 38.949604, 31.174040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.696104, 38.812866, 31.202930>,  <28.471230, 38.730824, 31.220264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.696104, 38.812866, 31.202930>,  <29.070894, 38.949604, 31.174040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696104, 38.812866, 31.202930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001744, -0.211293, -0.977421,
		0.349385, -0.915696, 0.198573,
		-0.936977, -0.341843, 0.072226,
		28.415010, 38.710312, 31.224598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071604, 38.422573, 30.651793>,  <29.070894, 38.949604, 31.174040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071604, 38.422573, 30.651793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.682005, 38.464577, 30.732094>,  <28.448246, 38.489777, 30.780273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.682005, 38.464577, 30.732094>,  <29.071604, 38.422573, 30.651793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682005, 38.464577, 30.732094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216523, -0.170691, -0.961240,
		-0.066666, -0.979714, 0.188989,
		-0.973999, 0.105003, 0.200752,
		28.389805, 38.496078, 30.792318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785320, 37.788265, 30.424667>,  <29.071604, 38.422573, 30.651793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785320, 37.788265, 30.424667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.483433, 38.050339, 30.438160>,  <28.302299, 38.207581, 30.446255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.483433, 38.050339, 30.438160>,  <28.785320, 37.788265, 30.424667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483433, 38.050339, 30.438160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226046, -0.211430, -0.950895,
		-0.615877, -0.725282, 0.307671,
		-0.754718, 0.655182, 0.033732,
		28.257017, 38.246895, 30.448280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220724, 37.465218, 30.103378>,  <28.785320, 37.788265, 30.424667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220724, 37.465218, 30.103378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.142082, 37.857189, 30.090149>,  <28.094896, 38.092373, 30.082211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.142082, 37.857189, 30.090149>,  <28.220724, 37.465218, 30.103378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142082, 37.857189, 30.090149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241051, -0.081006, -0.967126,
		-0.950390, -0.182170, 0.252138,
		-0.196606, 0.979925, -0.033075,
		28.083101, 38.151165, 30.080227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538549, 37.555668, 29.815493>,  <28.220724, 37.465218, 30.103378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538549, 37.555668, 29.815493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.721363, 37.902966, 29.738270>,  <27.831051, 38.111343, 29.691936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.721363, 37.902966, 29.738270>,  <27.538549, 37.555668, 29.815493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721363, 37.902966, 29.738270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148509, -0.139513, -0.979021,
		-0.876963, 0.476117, 0.065180,
		0.457035, 0.868245, -0.193055,
		27.858473, 38.163441, 29.680353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146461, 36.837509, 29.722841>,  <27.538549, 37.555668, 29.815493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146461, 36.837509, 29.722841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.253046, 36.481556, 29.574726>,  <27.316998, 36.267986, 29.485857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.253046, 36.481556, 29.574726>,  <27.146461, 36.837509, 29.722841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253046, 36.481556, 29.574726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251798, -0.435107, 0.864454,
		-0.930374, -0.137106, -0.340009,
		0.266462, -0.889878, -0.370289,
		27.332985, 36.214592, 29.463640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583147, 36.391098, 29.737944>,  <27.146461, 36.837509, 29.722841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583147, 36.391098, 29.737944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.902916, 36.151379, 29.721119>,  <27.094778, 36.007549, 29.711023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.902916, 36.151379, 29.721119>,  <26.583147, 36.391098, 29.737944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902916, 36.151379, 29.721119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150704, -0.267819, 0.951610,
		-0.581561, -0.754399, -0.304416,
		0.799422, -0.599296, -0.042062,
		27.142742, 35.971592, 29.708500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364082, 35.720219, 29.949539>,  <26.583147, 36.391098, 29.737944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364082, 35.720219, 29.949539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.752577, 35.763275, 30.034500>,  <26.985674, 35.789108, 30.085476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.752577, 35.763275, 30.034500>,  <26.364082, 35.720219, 29.949539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752577, 35.763275, 30.034500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143183, -0.448723, 0.882126,
		0.190262, -0.887165, -0.420403,
		0.971236, 0.107641, 0.212402,
		27.043947, 35.795567, 30.098221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532654, 35.020973, 30.399778>,  <26.364082, 35.720219, 29.949539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532654, 35.020973, 30.399778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.852493, 35.253902, 30.458477>,  <27.044397, 35.393661, 30.493696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.852493, 35.253902, 30.458477>,  <26.532654, 35.020973, 30.399778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852493, 35.253902, 30.458477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190579, -0.477790, 0.857552,
		0.569491, -0.657731, -0.493020,
		0.799599, 0.582328, 0.146747,
		27.092373, 35.428600, 30.502501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956615, 34.508003, 30.573963>,  <26.532654, 35.020973, 30.399778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956615, 34.508003, 30.573963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.092905, 34.859089, 30.708736>,  <27.174679, 35.069740, 30.789600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.092905, 34.859089, 30.708736>,  <26.956615, 34.508003, 30.573963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092905, 34.859089, 30.708736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146167, -0.403471, 0.903242,
		0.928732, -0.258506, -0.265764,
		0.340722, 0.877716, 0.336931,
		27.195122, 35.122402, 30.809816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530012, 34.255203, 30.913118>,  <26.956615, 34.508003, 30.573963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530012, 34.255203, 30.913118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.447947, 34.618435, 31.059162>,  <27.398706, 34.836372, 31.146788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.447947, 34.618435, 31.059162>,  <27.530012, 34.255203, 30.913118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447947, 34.618435, 31.059162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034063, -0.379443, 0.924588,
		0.978135, 0.177256, 0.108780,
		-0.205165, 0.908077, 0.365109,
		27.386396, 34.890858, 31.168695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049414, 34.362404, 31.391716>,  <27.530012, 34.255203, 30.913118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049414, 34.362404, 31.391716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.770805, 34.621948, 31.514244>,  <27.603640, 34.777676, 31.587761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.770805, 34.621948, 31.514244>,  <28.049414, 34.362404, 31.391716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770805, 34.621948, 31.514244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263239, -0.166067, 0.950330,
		0.667504, 0.742562, -0.055137,
		-0.696522, 0.648864, 0.306321,
		27.561850, 34.816608, 31.606140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367239, 34.726070, 31.989019>,  <28.049414, 34.362404, 31.391716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367239, 34.726070, 31.989019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.968966, 34.753536, 32.013985>,  <27.730001, 34.770016, 32.028965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.968966, 34.753536, 32.013985>,  <28.367239, 34.726070, 31.989019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968966, 34.753536, 32.013985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045593, -0.223810, 0.973566,
		0.080821, 0.972211, 0.219714,
		-0.995685, 0.068667, 0.062415,
		27.670259, 34.774136, 32.032707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254452, 34.876877, 32.649605>,  <28.367239, 34.726070, 31.989019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254452, 34.876877, 32.649605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.863541, 34.831425, 32.578033>,  <27.628994, 34.804153, 32.535091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.863541, 34.831425, 32.578033>,  <28.254452, 34.876877, 32.649605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863541, 34.831425, 32.578033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106096, -0.468566, 0.877034,
		-0.183500, 0.876090, 0.445864,
		-0.977278, -0.113631, -0.178931,
		27.570358, 34.797337, 32.524353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817127, 35.184212, 33.288074>,  <28.254452, 34.876877, 32.649605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817127, 35.184212, 33.288074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.651886, 34.887600, 33.076611>,  <27.552740, 34.709633, 32.949730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.651886, 34.887600, 33.076611>,  <27.817127, 35.184212, 33.288074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651886, 34.887600, 33.076611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118217, -0.531936, 0.838492,
		-0.902978, 0.408882, 0.132085,
		-0.413104, -0.741525, -0.528663,
		27.527954, 34.665142, 32.918011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239683, 35.069244, 33.728985>,  <27.817127, 35.184212, 33.288074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239683, 35.069244, 33.728985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.278473, 34.738167, 33.507889>,  <27.301746, 34.539520, 33.375229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.278473, 34.738167, 33.507889>,  <27.239683, 35.069244, 33.728985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278473, 34.738167, 33.507889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114876, -0.560958, 0.819835,
		-0.988635, -0.016008, -0.149481,
		0.096976, -0.827689, -0.552744,
		27.307566, 34.489861, 33.342064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804714, 34.696060, 34.066616>,  <27.239683, 35.069244, 33.728985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804714, 34.696060, 34.066616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.017591, 34.437172, 33.848305>,  <27.145317, 34.281837, 33.717316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.017591, 34.437172, 33.848305>,  <26.804714, 34.696060, 34.066616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017591, 34.437172, 33.848305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072807, -0.677257, 0.732135,
		-0.843488, -0.349899, -0.407552,
		0.532191, -0.647220, -0.545784,
		27.177250, 34.243008, 33.684570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515327, 34.041985, 34.210724>,  <26.804714, 34.696060, 34.066616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515327, 34.041985, 34.210724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.867401, 33.944683, 34.047703>,  <27.078646, 33.886303, 33.949890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.867401, 33.944683, 34.047703>,  <26.515327, 34.041985, 34.210724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867401, 33.944683, 34.047703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096484, -0.749052, 0.655448,
		-0.464718, -0.616239, -0.635836,
		0.880186, -0.243251, -0.407554,
		27.131456, 33.871708, 33.925438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599405, 33.313122, 34.165081>,  <26.515327, 34.041985, 34.210724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599405, 33.313122, 34.165081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.977009, 33.444351, 34.151165>,  <27.203571, 33.523090, 34.142815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.977009, 33.444351, 34.151165>,  <26.599405, 33.313122, 34.165081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977009, 33.444351, 34.151165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249442, -0.640752, 0.726096,
		0.215923, -0.694120, -0.686713,
		0.944010, 0.328076, -0.034790,
		27.260212, 33.542774, 34.140728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.883858, 36.291367, 34.979580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534737, 36.104683, 34.922447>,  <33.325264, 35.992672, 34.888168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534737, 36.104683, 34.922447>,  <33.883858, 36.291367, 34.979580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534737, 36.104683, 34.922447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206965, -0.088870, -0.974304,
		0.442023, -0.879934, 0.174158,
		-0.872801, -0.466709, -0.142833,
		33.272896, 35.964672, 34.879597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924221, 35.606602, 34.690472>,  <33.883858, 36.291367, 34.979580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924221, 35.606602, 34.690472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543972, 35.693974, 34.602283>,  <33.315823, 35.746395, 34.549370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543972, 35.693974, 34.602283>,  <33.924221, 35.606602, 34.690472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543972, 35.693974, 34.602283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164150, -0.249007, -0.954490,
		-0.263381, -0.943550, 0.200858,
		-0.950624, 0.218424, -0.220467,
		33.258785, 35.759502, 34.536144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620079, 35.011112, 34.312836>,  <33.924221, 35.606602, 34.690472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620079, 35.011112, 34.312836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402649, 35.325851, 34.195946>,  <33.272190, 35.514694, 34.125813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402649, 35.325851, 34.195946>,  <33.620079, 35.011112, 34.312836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402649, 35.325851, 34.195946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185252, -0.227105, -0.956088,
		-0.818665, -0.573837, -0.022318,
		-0.543571, 0.786851, -0.292228,
		33.239578, 35.561905, 34.108276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191975, 34.868019, 33.612045>,  <33.620079, 35.011112, 34.312836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191975, 34.868019, 33.612045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212681, 35.267288, 33.624542>,  <33.225105, 35.506847, 33.632038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212681, 35.267288, 33.624542>,  <33.191975, 34.868019, 33.612045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212681, 35.267288, 33.624542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190153, 0.020856, -0.981533,
		-0.980389, 0.056754, -0.188725,
		0.051770, 0.998170, 0.031239,
		33.228210, 35.566738, 33.633915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639561, 35.085304, 33.346573>,  <33.191975, 34.868019, 33.612045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639561, 35.085304, 33.346573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908615, 35.377483, 33.299236>,  <33.070049, 35.552792, 33.270836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908615, 35.377483, 33.299236>,  <32.639561, 35.085304, 33.346573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908615, 35.377483, 33.299236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002045, -0.158091, -0.987422,
		-0.739968, 0.664421, -0.104844,
		0.672639, 0.730447, -0.118341,
		33.110405, 35.596619, 33.263733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472652, 35.420868, 32.747944>,  <32.639561, 35.085304, 33.346573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472652, 35.420868, 32.747944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.831711, 35.595318, 32.773350>,  <33.047146, 35.699989, 32.788593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.831711, 35.595318, 32.773350>,  <32.472652, 35.420868, 32.747944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831711, 35.595318, 32.773350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095843, -0.052494, -0.994011,
		-0.430177, 0.898354, -0.088920,
		0.897642, 0.436123, 0.063519,
		33.101002, 35.726154, 32.792404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441257, 35.970242, 32.358723>,  <32.472652, 35.420868, 32.747944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441257, 35.970242, 32.358723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834053, 35.901226, 32.389538>,  <33.069729, 35.859818, 32.408028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834053, 35.901226, 32.389538>,  <32.441257, 35.970242, 32.358723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834053, 35.901226, 32.389538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082933, 0.027226, -0.996183,
		0.169784, 0.984626, 0.041045,
		0.981986, -0.172540, 0.077036,
		33.128647, 35.849464, 32.412647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815487, 36.463745, 31.885302>,  <32.441257, 35.970242, 32.358723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815487, 36.463745, 31.885302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058239, 36.150360, 31.938801>,  <33.203888, 35.962330, 31.970901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058239, 36.150360, 31.938801>,  <32.815487, 36.463745, 31.885302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058239, 36.150360, 31.938801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067344, -0.116988, -0.990847,
		0.791937, 0.610331, -0.018236,
		0.606878, -0.783460, 0.133749,
		33.240303, 35.915321, 31.978926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414124, 36.622227, 31.475451>,  <32.815487, 36.463745, 31.885302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414124, 36.622227, 31.475451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385643, 36.228001, 31.536880>,  <33.368557, 35.991463, 31.573738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385643, 36.228001, 31.536880>,  <33.414124, 36.622227, 31.475451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385643, 36.228001, 31.536880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262686, -0.167059, -0.950309,
		0.962251, -0.027317, 0.270790,
		-0.071198, -0.985568, 0.153577,
		33.364285, 35.932331, 31.582954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059071, 36.185059, 31.083302>,  <33.414124, 36.622227, 31.475451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059071, 36.185059, 31.083302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.780827, 35.903435, 31.140465>,  <33.613880, 35.734459, 31.174763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.780827, 35.903435, 31.140465>,  <34.059071, 36.185059, 31.083302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780827, 35.903435, 31.140465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184366, -0.367204, -0.911685,
		0.694359, -0.607831, 0.385237,
		-0.695611, -0.704061, 0.142908,
		33.572144, 35.692215, 31.183336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289799, 35.535770, 30.726416>,  <34.059071, 36.185059, 31.083302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289799, 35.535770, 30.726416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896854, 35.475445, 30.770657>,  <33.661087, 35.439251, 30.797201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896854, 35.475445, 30.770657>,  <34.289799, 35.535770, 30.726416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896854, 35.475445, 30.770657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047019, -0.373244, -0.926541,
		0.181014, -0.915394, 0.359567,
		-0.982356, -0.150810, 0.110603,
		33.602146, 35.430202, 30.803837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074352, 34.982983, 30.244566>,  <34.289799, 35.535770, 30.726416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074352, 34.982983, 30.244566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714329, 35.127102, 30.342613>,  <33.498314, 35.213573, 30.401442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714329, 35.127102, 30.342613>,  <34.074352, 34.982983, 30.244566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714329, 35.127102, 30.342613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334667, -0.211245, -0.918354,
		-0.279105, -0.908602, 0.310713,
		-0.900054, 0.360303, 0.245119,
		33.444313, 35.235191, 30.416149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569561, 34.560558, 29.813684>,  <34.074352, 34.982983, 30.244566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569561, 34.560558, 29.813684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385941, 34.900837, 29.916119>,  <33.275768, 35.105003, 29.977579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385941, 34.900837, 29.916119>,  <33.569561, 34.560558, 29.813684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385941, 34.900837, 29.916119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374000, 0.076416, -0.924275,
		-0.805850, -0.520067, 0.283082,
		-0.459053, 0.850700, 0.256085,
		33.248226, 35.156048, 29.992945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931461, 34.450317, 29.517504>,  <33.569561, 34.560558, 29.813684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931461, 34.450317, 29.517504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992893, 34.840862, 29.578331>,  <33.029751, 35.075191, 29.614828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992893, 34.840862, 29.578331>,  <32.931461, 34.450317, 29.517504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992893, 34.840862, 29.578331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516212, 0.210502, -0.830190,
		-0.842579, 0.048999, 0.536340,
		0.153579, 0.976365, 0.152070,
		33.038967, 35.133770, 29.623953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319592, 34.095737, 29.866838>,  <32.931461, 34.450317, 29.517504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319592, 34.095737, 29.866838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072796, 33.783859, 29.824127>,  <31.924719, 33.596733, 29.798500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072796, 33.783859, 29.824127>,  <32.319592, 34.095737, 29.866838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072796, 33.783859, 29.824127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267420, -0.335325, 0.903351,
		-0.740143, 0.528803, 0.415397,
		-0.616988, -0.779695, -0.106776,
		31.887699, 33.549950, 29.792095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879597, 34.160622, 30.418303>,  <32.319592, 34.095737, 29.866838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879597, 34.160622, 30.418303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.867540, 33.770382, 30.331314>,  <31.860308, 33.536236, 30.279121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.867540, 33.770382, 30.331314>,  <31.879597, 34.160622, 30.418303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867540, 33.770382, 30.331314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080390, -0.219232, 0.972355,
		-0.996308, 0.011824, 0.085036,
		-0.030140, -0.975601, -0.217472,
		31.858498, 33.477703, 30.266073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363256, 33.915890, 30.805738>,  <31.879597, 34.160622, 30.418303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363256, 33.915890, 30.805738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577681, 33.593262, 30.706070>,  <31.706335, 33.399685, 30.646269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577681, 33.593262, 30.706070>,  <31.363256, 33.915890, 30.805738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577681, 33.593262, 30.706070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141670, -0.205023, 0.968450,
		-0.832208, -0.554447, 0.004362,
		0.536060, -0.806569, -0.249171,
		31.738499, 33.351292, 30.631319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104261, 33.476845, 31.242271>,  <31.363256, 33.915890, 30.805738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104261, 33.476845, 31.242271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442509, 33.301624, 31.120266>,  <31.645458, 33.196491, 31.047062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442509, 33.301624, 31.120266>,  <31.104261, 33.476845, 31.242271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442509, 33.301624, 31.120266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209373, -0.253425, 0.944425,
		-0.491009, -0.862487, -0.122585,
		0.845620, -0.438055, -0.305015,
		31.696196, 33.170208, 31.028761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045847, 32.742268, 31.399727>,  <31.104261, 33.476845, 31.242271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045847, 32.742268, 31.399727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432817, 32.837723, 31.365940>,  <31.665001, 32.894997, 31.345667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432817, 32.837723, 31.365940>,  <31.045847, 32.742268, 31.399727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432817, 32.837723, 31.365940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152122, -0.281326, 0.947478,
		0.202342, -0.929466, -0.308465,
		0.967427, 0.238639, -0.084468,
		31.723045, 32.909313, 31.340599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387508, 32.229061, 31.761572>,  <31.045847, 32.742268, 31.399727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387508, 32.229061, 31.761572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654171, 32.526634, 31.743134>,  <31.814169, 32.705177, 31.732071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654171, 32.526634, 31.743134>,  <31.387508, 32.229061, 31.761572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654171, 32.526634, 31.743134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331341, -0.240390, 0.912374,
		0.667668, -0.623514, -0.406755,
		0.666658, 0.743937, -0.046095,
		31.854168, 32.749817, 31.729305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005634, 31.908443, 31.954666>,  <31.387508, 32.229061, 31.761572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005634, 31.908443, 31.954666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028702, 32.304089, 32.008823>,  <32.042542, 32.541477, 32.041317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028702, 32.304089, 32.008823>,  <32.005634, 31.908443, 31.954666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028702, 32.304089, 32.008823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261644, -0.145852, 0.954081,
		0.963440, -0.019597, -0.267206,
		0.057669, 0.989112, 0.135392,
		32.046001, 32.600822, 32.049442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608059, 31.838009, 32.411861>,  <32.005634, 31.908443, 31.954666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608059, 31.838009, 32.411861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.441910, 32.198845, 32.458683>,  <32.342220, 32.415348, 32.486774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.441910, 32.198845, 32.458683>,  <32.608059, 31.838009, 32.411861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441910, 32.198845, 32.458683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270289, -0.000472, 0.962779,
		0.868567, 0.431550, -0.243629,
		-0.415373, 0.902089, 0.117054,
		32.317299, 32.469471, 32.493797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987453, 32.093956, 32.936619>,  <32.608059, 31.838009, 32.411861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987453, 32.093956, 32.936619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677898, 32.346706, 32.919491>,  <32.492165, 32.498356, 32.909214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677898, 32.346706, 32.919491>,  <32.987453, 32.093956, 32.936619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677898, 32.346706, 32.919491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018133, 0.089687, 0.995805,
		0.633067, 0.769862, -0.080865,
		-0.773885, 0.631877, -0.042818,
		32.445732, 32.536270, 32.906647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250912, 32.699043, 33.279861>,  <32.987453, 32.093956, 32.936619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250912, 32.699043, 33.279861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852089, 32.669365, 33.272072>,  <32.612797, 32.651558, 33.267399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852089, 32.669365, 33.272072>,  <33.250912, 32.699043, 33.279861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852089, 32.669365, 33.272072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017534, -0.026692, 0.999490,
		-0.074679, 0.996886, 0.025312,
		-0.997054, -0.074197, -0.019472,
		32.552975, 32.647106, 33.266232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036507, 33.265598, 33.810135>,  <33.250912, 32.699043, 33.279861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036507, 33.265598, 33.810135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.753426, 32.985283, 33.774250>,  <32.583576, 32.817093, 33.752720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.753426, 32.985283, 33.774250>,  <33.036507, 33.265598, 33.810135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753426, 32.985283, 33.774250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075491, -0.051249, 0.995828,
		-0.702465, 0.711523, -0.016634,
		-0.707703, -0.700791, -0.089714,
		32.541115, 32.775047, 33.747337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359447, 33.589539, 34.120117>,  <33.036507, 33.265598, 33.810135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359447, 33.589539, 34.120117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.299412, 33.194473, 34.102230>,  <32.263390, 32.957436, 34.091499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.299412, 33.194473, 34.102230>,  <32.359447, 33.589539, 34.120117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299412, 33.194473, 34.102230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354601, 0.011559, 0.934947,
		-0.922893, 0.156182, -0.351960,
		-0.150090, -0.987661, -0.044714,
		32.254383, 32.898174, 34.088818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665255, 33.463314, 34.239452>,  <32.359447, 33.589539, 34.120117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665255, 33.463314, 34.239452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.851992, 33.122768, 34.335152>,  <31.964035, 32.918442, 34.392570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.851992, 33.122768, 34.335152>,  <31.665255, 33.463314, 34.239452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851992, 33.122768, 34.335152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335212, 0.079989, 0.938741,
		-0.818345, -0.518445, -0.248044,
		0.466845, -0.851361, 0.239248,
		31.992044, 32.867359, 34.406925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138033, 33.100502, 34.689819>,  <31.665255, 33.463314, 34.239452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138033, 33.100502, 34.689819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497850, 32.937477, 34.752693>,  <31.713741, 32.839661, 34.790417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497850, 32.937477, 34.752693>,  <31.138033, 33.100502, 34.689819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497850, 32.937477, 34.752693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054611, 0.252092, 0.966161,
		-0.433401, -0.877690, 0.204511,
		0.899545, -0.407567, 0.157188,
		31.767714, 32.815208, 34.799850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849075, 32.397549, 34.579033>,  <31.138033, 33.100502, 34.689819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849075, 32.397549, 34.579033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528976, 32.157944, 34.590286>,  <30.336918, 32.014179, 34.597038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528976, 32.157944, 34.590286>,  <30.849075, 32.397549, 34.579033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528976, 32.157944, 34.590286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251067, 0.292069, -0.922855,
		0.544585, -0.745573, -0.384119,
		-0.800245, -0.599013, 0.028133,
		30.288902, 31.978241, 34.598728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834944, 31.877182, 34.002838>,  <30.849075, 32.397549, 34.579033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834944, 31.877182, 34.002838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.448647, 31.904713, 34.102921>,  <30.216867, 31.921230, 34.162968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.448647, 31.904713, 34.102921>,  <30.834944, 31.877182, 34.002838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448647, 31.904713, 34.102921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202592, 0.402532, -0.892706,
		-0.162155, -0.912815, -0.374799,
		-0.965744, 0.068826, 0.250202,
		30.158924, 31.925360, 34.177982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493357, 31.436991, 33.473515>,  <30.834944, 31.877182, 34.002838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493357, 31.436991, 33.473515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233038, 31.689716, 33.641930>,  <30.076847, 31.841351, 33.742981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233038, 31.689716, 33.641930>,  <30.493357, 31.436991, 33.473515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233038, 31.689716, 33.641930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374096, 0.215724, -0.901951,
		-0.660693, -0.744497, 0.095966,
		-0.650798, 0.631813, 0.421041,
		30.037798, 31.879261, 33.768242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820295, 31.228149, 33.232479>,  <30.493357, 31.436991, 33.473515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820295, 31.228149, 33.232479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.842527, 31.608688, 33.353706>,  <29.855865, 31.837011, 33.426441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.842527, 31.608688, 33.353706>,  <29.820295, 31.228149, 33.232479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842527, 31.608688, 33.353706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392552, 0.299911, -0.869458,
		-0.918049, -0.070645, 0.390122,
		0.055579, 0.951348, 0.303064,
		29.859201, 31.894093, 33.444626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217079, 31.394102, 33.084679>,  <29.820295, 31.228149, 33.232479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217079, 31.394102, 33.084679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.392853, 31.751999, 33.116512>,  <29.498318, 31.966738, 33.135612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.392853, 31.751999, 33.116512>,  <29.217079, 31.394102, 33.084679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392853, 31.751999, 33.116512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380878, 0.265834, -0.885587,
		-0.813529, 0.358844, 0.457604,
		0.439434, 0.894742, 0.079588,
		29.524683, 32.020420, 33.140388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702860, 31.931179, 32.885162>,  <29.217079, 31.394102, 33.084679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702860, 31.931179, 32.885162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.056114, 32.111656, 32.833790>,  <29.268066, 32.219944, 32.802967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.056114, 32.111656, 32.833790>,  <28.702860, 31.931179, 32.885162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056114, 32.111656, 32.833790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306366, 0.347394, -0.886260,
		-0.355260, 0.822035, 0.445027,
		0.883136, 0.451194, -0.128428,
		29.321054, 32.247013, 32.795261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526661, 32.514812, 32.664932>,  <28.702860, 31.931179, 32.885162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526661, 32.514812, 32.664932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.907713, 32.504459, 32.543724>,  <29.136345, 32.498249, 32.470997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.907713, 32.504459, 32.543724>,  <28.526661, 32.514812, 32.664932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907713, 32.504459, 32.543724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281509, 0.302026, -0.910787,
		0.115093, 0.952948, 0.280434,
		0.952631, -0.025880, -0.303024,
		29.193502, 32.496696, 32.452816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729111, 33.281925, 32.472771>,  <28.526661, 32.514812, 32.664932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729111, 33.281925, 32.472771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.000519, 33.043957, 32.300411>,  <29.163364, 32.901176, 32.196995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.000519, 33.043957, 32.300411>,  <28.729111, 33.281925, 32.472771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000519, 33.043957, 32.300411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230152, 0.384884, -0.893809,
		0.697594, 0.705641, 0.124230,
		0.678522, -0.594924, -0.430898,
		29.204075, 32.865479, 32.171143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998413, 33.765369, 32.054981>,  <28.729111, 33.281925, 32.472771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998413, 33.765369, 32.054981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.089195, 33.405220, 31.906483>,  <29.143665, 33.189133, 31.817385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.089195, 33.405220, 31.906483>,  <28.998413, 33.765369, 32.054981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089195, 33.405220, 31.906483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253200, 0.313533, -0.915198,
		0.940415, 0.301710, -0.156815,
		0.226958, -0.900371, -0.371244,
		29.157282, 33.135109, 31.795109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561878, 33.796215, 31.487171>,  <28.998413, 33.765369, 32.054981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561878, 33.796215, 31.487171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.333609, 33.471199, 31.439659>,  <29.196648, 33.276188, 31.411152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.333609, 33.471199, 31.439659>,  <29.561878, 33.796215, 31.487171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333609, 33.471199, 31.439659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166575, 0.256182, -0.952168,
		0.804106, -0.523589, -0.281545,
		-0.570671, -0.812543, -0.118781,
		29.162407, 33.227436, 31.404024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812021, 33.613911, 30.891148>,  <29.561878, 33.796215, 31.487171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812021, 33.613911, 30.891148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.477364, 33.394848, 30.887238>,  <29.276569, 33.263409, 30.884892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.477364, 33.394848, 30.887238>,  <29.812021, 33.613911, 30.891148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477364, 33.394848, 30.887238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133284, 0.220860, -0.966155,
		0.531282, -0.807026, -0.257776,
		-0.836645, -0.547659, -0.009775,
		29.226370, 33.230549, 30.884306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828205, 33.175964, 30.298588>,  <29.812021, 33.613911, 30.891148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828205, 33.175964, 30.298588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.440622, 33.224968, 30.384483>,  <29.208073, 33.254372, 30.436020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.440622, 33.224968, 30.384483>,  <29.828205, 33.175964, 30.298588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440622, 33.224968, 30.384483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196868, 0.143061, -0.969936,
		-0.149548, -0.982102, -0.114501,
		-0.968957, 0.122511, 0.214739,
		29.149935, 33.261723, 30.448906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469589, 32.874050, 29.709841>,  <29.828205, 33.175964, 30.298588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469589, 32.874050, 29.709841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.141642, 33.006439, 29.896721>,  <28.944874, 33.085873, 30.008848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.141642, 33.006439, 29.896721>,  <29.469589, 32.874050, 29.709841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141642, 33.006439, 29.896721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471118, 0.073745, -0.878982,
		-0.325371, -0.940755, 0.095465,
		-0.819867, 0.330971, 0.467201,
		28.895681, 33.105732, 30.036880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822842, 32.307175, 29.736351>,  <29.469589, 32.874050, 29.709841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822842, 32.307175, 29.736351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.682093, 32.681393, 29.748566>,  <28.597643, 32.905926, 29.755894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.682093, 32.681393, 29.748566>,  <28.822842, 32.307175, 29.736351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682093, 32.681393, 29.748566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479995, -0.152334, -0.863944,
		-0.803610, -0.318657, 0.502661,
		-0.351874, 0.935549, 0.030537,
		28.576530, 32.962059, 29.757727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.834133, 36.759712, 15.589465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.218132, 36.871498, 15.596477>,  <39.448532, 36.938568, 15.600683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.218132, 36.871498, 15.596477>,  <38.834133, 36.759712, 15.589465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218132, 36.871498, 15.596477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066291, -0.287650, 0.955439,
		0.272051, -0.916056, -0.294669,
		0.959997, 0.279462, 0.017530,
		39.506130, 36.955338, 15.601735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259495, 36.176617, 15.625820>,  <38.834133, 36.759712, 15.589465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259495, 36.176617, 15.625820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.420254, 36.507576, 15.782739>,  <39.516708, 36.706150, 15.876890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.420254, 36.507576, 15.782739>,  <39.259495, 36.176617, 15.625820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420254, 36.507576, 15.782739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020504, -0.420180, 0.907209,
		0.915457, -0.372646, -0.151903,
		0.401894, 0.827396, 0.392297,
		39.540821, 36.755795, 15.900428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698093, 35.917522, 16.079571>,  <39.259495, 36.176617, 15.625820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698093, 35.917522, 16.079571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.647030, 36.300297, 16.183861>,  <39.616390, 36.529961, 16.246435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.647030, 36.300297, 16.183861>,  <39.698093, 35.917522, 16.079571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647030, 36.300297, 16.183861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074401, -0.271372, 0.959594,
		0.989024, 0.103103, 0.105840,
		-0.127659, 0.956936, 0.260723,
		39.608730, 36.587379, 16.262077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256989, 36.101604, 16.545517>,  <39.698093, 35.917522, 16.079571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256989, 36.101604, 16.545517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953571, 36.352978, 16.614433>,  <39.771519, 36.503799, 16.655783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953571, 36.352978, 16.614433>,  <40.256989, 36.101604, 16.545517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953571, 36.352978, 16.614433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110859, -0.385007, 0.916231,
		0.642120, 0.675904, 0.361713,
		-0.758547, 0.628429, 0.172290,
		39.726006, 36.541508, 16.666121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477386, 36.327675, 17.166151>,  <40.256989, 36.101604, 16.545517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477386, 36.327675, 17.166151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.086956, 36.408630, 17.134357>,  <39.852699, 36.457203, 17.115280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.086956, 36.408630, 17.134357>,  <40.477386, 36.327675, 17.166151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086956, 36.408630, 17.134357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154946, -0.390937, 0.907282,
		0.152553, 0.897889, 0.412944,
		-0.976073, 0.202393, -0.079486,
		39.794132, 36.469349, 17.110512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355778, 36.622051, 17.719690>,  <40.477386, 36.327675, 17.166151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355778, 36.622051, 17.719690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.987980, 36.518578, 17.601292>,  <39.767300, 36.456493, 17.530252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.987980, 36.518578, 17.601292>,  <40.355778, 36.622051, 17.719690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987980, 36.518578, 17.601292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217190, -0.293310, 0.931020,
		-0.327659, 0.920354, 0.213513,
		-0.919493, -0.258684, -0.295998,
		39.712132, 36.440971, 17.512493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911953, 36.769054, 18.274572>,  <40.355778, 36.622051, 17.719690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911953, 36.769054, 18.274572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.673882, 36.533520, 18.055836>,  <39.531040, 36.392200, 17.924593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.673882, 36.533520, 18.055836>,  <39.911953, 36.769054, 18.274572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673882, 36.533520, 18.055836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457727, -0.310902, 0.832962,
		-0.660493, 0.746064, -0.084485,
		-0.595177, -0.588837, -0.546842,
		39.495327, 36.356869, 17.891783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168602, 36.903172, 18.459082>,  <39.911953, 36.769054, 18.274572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168602, 36.903172, 18.459082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203964, 36.535427, 18.305744>,  <39.225182, 36.314781, 18.213741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203964, 36.535427, 18.305744>,  <39.168602, 36.903172, 18.459082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203964, 36.535427, 18.305744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519270, -0.370955, 0.769903,
		-0.850026, 0.130997, -0.510193,
		0.088404, -0.919365, -0.383343,
		39.230484, 36.259617, 18.190741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569977, 36.512421, 18.849052>,  <39.168602, 36.903172, 18.459082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569977, 36.512421, 18.849052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.779976, 36.214878, 18.683617>,  <38.905975, 36.036354, 18.584354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.779976, 36.214878, 18.683617>,  <38.569977, 36.512421, 18.849052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779976, 36.214878, 18.683617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115981, -0.543942, 0.831069,
		-0.843163, -0.388342, -0.371843,
		0.525000, -0.743853, -0.413592,
		38.937477, 35.991722, 18.559540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175236, 35.911148, 19.055269>,  <38.569977, 36.512421, 18.849052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175236, 35.911148, 19.055269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536411, 35.783657, 18.939949>,  <38.753117, 35.707161, 18.870758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536411, 35.783657, 18.939949>,  <38.175236, 35.911148, 19.055269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536411, 35.783657, 18.939949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057155, -0.575802, 0.815589,
		-0.425957, -0.752903, -0.501695,
		0.902936, -0.318731, -0.288299,
		38.807293, 35.688038, 18.853458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153221, 35.175026, 19.161831>,  <38.175236, 35.911148, 19.055269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153221, 35.175026, 19.161831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536606, 35.289009, 19.156891>,  <38.766636, 35.357399, 19.153927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536606, 35.289009, 19.156891>,  <38.153221, 35.175026, 19.161831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536606, 35.289009, 19.156891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130926, -0.401075, 0.906641,
		0.253406, -0.870595, -0.421723,
		0.958459, 0.284962, -0.012349,
		38.824142, 35.374496, 19.153187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603653, 34.595398, 19.267975>,  <38.153221, 35.175026, 19.161831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603653, 34.595398, 19.267975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.818909, 34.912205, 19.383293>,  <38.948063, 35.102291, 19.452484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.818909, 34.912205, 19.383293>,  <38.603653, 34.595398, 19.267975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818909, 34.912205, 19.383293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169288, -0.436639, 0.883565,
		0.825682, -0.426674, -0.369051,
		0.538137, 0.792020, 0.288294,
		38.980350, 35.149811, 19.469782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295189, 34.328930, 19.469746>,  <38.603653, 34.595398, 19.267975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295189, 34.328930, 19.469746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240280, 34.683834, 19.645897>,  <39.207336, 34.896774, 19.751587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240280, 34.683834, 19.645897>,  <39.295189, 34.328930, 19.469746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240280, 34.683834, 19.645897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251234, -0.398863, 0.881924,
		0.958144, 0.231699, -0.168157,
		-0.137269, 0.887257, 0.440378,
		39.199100, 34.950012, 19.778009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844814, 34.406555, 19.965170>,  <39.295189, 34.328930, 19.469746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844814, 34.406555, 19.965170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.596779, 34.690044, 20.099747>,  <39.447956, 34.860138, 20.180492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.596779, 34.690044, 20.099747>,  <39.844814, 34.406555, 19.965170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596779, 34.690044, 20.099747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351329, -0.132585, 0.926817,
		0.701468, 0.692912, -0.166782,
		-0.620089, 0.708728, 0.336444,
		39.410751, 34.902664, 20.200680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203243, 34.784962, 20.426895>,  <39.844814, 34.406555, 19.965170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203243, 34.784962, 20.426895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829784, 34.879761, 20.534321>,  <39.605709, 34.936642, 20.598776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829784, 34.879761, 20.534321>,  <40.203243, 34.784962, 20.426895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829784, 34.879761, 20.534321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243620, -0.129470, 0.961190,
		0.262572, 0.962844, 0.063142,
		-0.933652, 0.236999, 0.268563,
		39.549690, 34.950859, 20.614889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290546, 35.185989, 21.030218>,  <40.203243, 34.784962, 20.426895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290546, 35.185989, 21.030218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.906342, 35.076317, 21.049145>,  <39.675819, 35.010513, 21.060501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.906342, 35.076317, 21.049145>,  <40.290546, 35.185989, 21.030218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906342, 35.076317, 21.049145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045345, 0.013536, 0.998880,
		-0.274511, 0.961584, -0.000569,
		-0.960514, -0.274178, 0.047318,
		39.618187, 34.994064, 21.063341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943745, 35.639370, 21.448090>,  <40.290546, 35.185989, 21.030218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943745, 35.639370, 21.448090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.721161, 35.309174, 21.485874>,  <39.587612, 35.111057, 21.508545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.721161, 35.309174, 21.485874>,  <39.943745, 35.639370, 21.448090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721161, 35.309174, 21.485874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025782, 0.096477, 0.995001,
		-0.830476, 0.556111, -0.032403,
		-0.556457, -0.825490, 0.094459,
		39.554222, 35.061527, 21.514212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380650, 35.820518, 21.769047>,  <39.943745, 35.639370, 21.448090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380650, 35.820518, 21.769047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377529, 35.423862, 21.820572>,  <39.375656, 35.185871, 21.851488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377529, 35.423862, 21.820572>,  <39.380650, 35.820518, 21.769047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377529, 35.423862, 21.820572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086783, 0.129003, 0.987839,
		-0.996197, -0.003473, -0.087063,
		-0.007801, -0.991638, 0.128814,
		39.375191, 35.126369, 21.859217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799515, 35.647343, 22.257385>,  <39.380650, 35.820518, 21.769047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799515, 35.647343, 22.257385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.075348, 35.357674, 22.254700>,  <39.240849, 35.183872, 22.253088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.075348, 35.357674, 22.254700>,  <38.799515, 35.647343, 22.257385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075348, 35.357674, 22.254700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001338, -0.010543, 0.999944,
		-0.724204, -0.689536, -0.008239,
		0.689584, -0.724174, -0.006713,
		39.282223, 35.140423, 22.252686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468330, 35.115723, 22.648687>,  <38.799515, 35.647343, 22.257385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468330, 35.115723, 22.648687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.862228, 35.047035, 22.659904>,  <39.098568, 35.005821, 22.666634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.862228, 35.047035, 22.659904>,  <38.468330, 35.115723, 22.648687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862228, 35.047035, 22.659904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041760, -0.076804, 0.996171,
		-0.168910, -0.982147, -0.082804,
		0.984746, -0.171721, 0.028042,
		39.157654, 34.995518, 22.668318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502518, 34.367138, 22.949293>,  <38.468330, 35.115723, 22.648687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502518, 34.367138, 22.949293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.839817, 34.573330, 23.010239>,  <39.042194, 34.697044, 23.046806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.839817, 34.573330, 23.010239>,  <38.502518, 34.367138, 22.949293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839817, 34.573330, 23.010239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013075, -0.263703, 0.964515,
		0.537371, -0.815315, -0.215626,
		0.843245, 0.515483, 0.152366,
		39.092789, 34.727974, 23.055948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820625, 33.939659, 22.966127>,  <38.502518, 34.367138, 22.949293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820625, 33.939659, 22.966127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.485947, 34.155327, 23.004555>,  <37.285141, 34.284729, 23.027611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.485947, 34.155327, 23.004555>,  <37.820625, 33.939659, 22.966127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485947, 34.155327, 23.004555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246724, -0.214487, -0.945052,
		-0.488943, -0.814424, 0.312488,
		-0.836698, 0.539175, 0.096066,
		37.234936, 34.317078, 23.033375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221527, 33.504105, 22.753540>,  <37.820625, 33.939659, 22.966127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221527, 33.504105, 22.753540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.091259, 33.881237, 22.725250>,  <37.013096, 34.107517, 22.708277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.091259, 33.881237, 22.725250>,  <37.221527, 33.504105, 22.753540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091259, 33.881237, 22.725250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276215, -0.166416, -0.946578,
		-0.904235, -0.288740, 0.314622,
		-0.325673, 0.942833, -0.070725,
		36.993557, 34.164085, 22.704033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528229, 33.440113, 22.405678>,  <37.221527, 33.504105, 22.753540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528229, 33.440113, 22.405678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.665569, 33.813107, 22.360798>,  <36.747974, 34.036903, 22.333870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.665569, 33.813107, 22.360798>,  <36.528229, 33.440113, 22.405678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665569, 33.813107, 22.360798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292092, -0.007519, -0.956361,
		-0.892630, 0.361144, 0.269788,
		0.343356, 0.932480, -0.112199,
		36.768578, 34.092850, 22.327139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981422, 33.872166, 22.090477>,  <36.528229, 33.440113, 22.405678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981422, 33.872166, 22.090477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314369, 34.082813, 22.021374>,  <36.514137, 34.209202, 21.979912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314369, 34.082813, 22.021374>,  <35.981422, 33.872166, 22.090477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314369, 34.082813, 22.021374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243366, 0.067238, -0.967601,
		-0.497941, 0.847438, 0.184128,
		0.832363, 0.526619, -0.172757,
		36.564079, 34.240799, 21.969547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730621, 34.365276, 21.538889>,  <35.981422, 33.872166, 22.090477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730621, 34.365276, 21.538889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.129868, 34.358700, 21.515274>,  <36.369415, 34.354752, 21.501104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.129868, 34.358700, 21.515274>,  <35.730621, 34.365276, 21.538889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129868, 34.358700, 21.515274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056656, 0.119702, -0.991192,
		0.023368, 0.992674, 0.118545,
		0.998120, -0.016446, -0.059038,
		36.429302, 34.353767, 21.497562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982437, 34.987877, 21.077261>,  <35.730621, 34.365276, 21.538889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982437, 34.987877, 21.077261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.261505, 34.701382, 21.083729>,  <36.428947, 34.529484, 21.087610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.261505, 34.701382, 21.083729>,  <35.982437, 34.987877, 21.077261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261505, 34.701382, 21.083729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168959, 0.142559, -0.975259,
		0.696211, 0.683141, 0.220473,
		0.697669, -0.716237, 0.016172,
		36.470806, 34.486511, 21.088581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522892, 35.247082, 20.690496>,  <35.982437, 34.987877, 21.077261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522892, 35.247082, 20.690496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576920, 34.850746, 20.690647>,  <36.609337, 34.612946, 20.690737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576920, 34.850746, 20.690647>,  <36.522892, 35.247082, 20.690496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576920, 34.850746, 20.690647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170146, 0.022822, -0.985155,
		0.976118, 0.133129, 0.171669,
		0.135070, -0.990836, 0.000375,
		36.617439, 34.553493, 20.690760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200157, 35.087307, 20.397894>,  <36.522892, 35.247082, 20.690496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200157, 35.087307, 20.397894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.973141, 34.759514, 20.366032>,  <36.836929, 34.562840, 20.346914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.973141, 34.759514, 20.366032>,  <37.200157, 35.087307, 20.397894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973141, 34.759514, 20.366032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152523, -0.009572, -0.988253,
		0.809093, -0.573026, 0.130422,
		-0.567544, -0.819481, -0.079655,
		36.802879, 34.513668, 20.342134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589535, 34.703766, 20.031212>,  <37.200157, 35.087307, 20.397894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589535, 34.703766, 20.031212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224560, 34.548229, 19.980202>,  <37.005573, 34.454906, 19.949596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224560, 34.548229, 19.980202>,  <37.589535, 34.703766, 20.031212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224560, 34.548229, 19.980202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077423, 0.141969, -0.986839,
		0.401825, -0.910302, -0.099433,
		-0.912438, -0.388838, -0.127525,
		36.950829, 34.431580, 19.941944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714046, 34.246323, 19.470676>,  <37.589535, 34.703766, 20.031212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714046, 34.246323, 19.470676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321247, 34.308792, 19.513161>,  <37.085567, 34.346275, 19.538652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321247, 34.308792, 19.513161>,  <37.714046, 34.246323, 19.470676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321247, 34.308792, 19.513161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094858, 0.078455, -0.992394,
		-0.163322, -0.984608, -0.062229,
		-0.982002, 0.156176, 0.106212,
		37.026646, 34.355644, 19.545025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475857, 33.795830, 18.993565>,  <37.714046, 34.246323, 19.470676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475857, 33.795830, 18.993565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191559, 34.069382, 19.059483>,  <37.020981, 34.233513, 19.099033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191559, 34.069382, 19.059483>,  <37.475857, 33.795830, 18.993565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191559, 34.069382, 19.059483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175115, 0.054884, -0.983017,
		-0.681307, -0.727530, 0.080749,
		-0.710743, 0.683877, 0.164795,
		36.978336, 34.274544, 19.108921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887737, 33.552200, 18.507977>,  <37.475857, 33.795830, 18.993565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887737, 33.552200, 18.507977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.820469, 33.939075, 18.584148>,  <36.780109, 34.171200, 18.629850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.820469, 33.939075, 18.584148>,  <36.887737, 33.552200, 18.507977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820469, 33.939075, 18.584148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175482, 0.160720, -0.971275,
		-0.970012, -0.196758, 0.142696,
		-0.168172, 0.967190, 0.190428,
		36.770016, 34.229233, 18.641277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178020, 33.748974, 18.258194>,  <36.887737, 33.552200, 18.507977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178020, 33.748974, 18.258194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.377209, 34.095055, 18.281681>,  <36.496719, 34.302704, 18.295773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.377209, 34.095055, 18.281681>,  <36.178020, 33.748974, 18.258194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377209, 34.095055, 18.281681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041606, 0.091467, -0.994939,
		-0.866197, 0.493004, 0.081545,
		0.497967, 0.865206, 0.058716,
		36.526600, 34.354618, 18.299295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927029, 34.196163, 17.670567>,  <36.178020, 33.748974, 18.258194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927029, 34.196163, 17.670567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.268909, 34.366417, 17.789440>,  <36.474037, 34.468567, 17.860764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.268909, 34.366417, 17.789440>,  <35.927029, 34.196163, 17.670567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268909, 34.366417, 17.789440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112543, 0.406937, -0.906497,
		-0.506768, 0.808233, 0.299909,
		0.854705, 0.425630, 0.297184,
		36.525322, 34.494106, 17.878595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940796, 34.706169, 17.258257>,  <35.927029, 34.196163, 17.670567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940796, 34.706169, 17.258257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314579, 34.674820, 17.397194>,  <36.538849, 34.656010, 17.480556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314579, 34.674820, 17.397194>,  <35.940796, 34.706169, 17.258257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314579, 34.674820, 17.397194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350474, 0.374831, -0.858295,
		-0.062925, 0.923774, 0.377732,
		0.934456, -0.078377, 0.347345,
		36.594917, 34.651306, 17.501398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396698, 35.365120, 17.006536>,  <35.940796, 34.706169, 17.258257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396698, 35.365120, 17.006536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.659546, 35.089546, 17.128891>,  <36.817253, 34.924202, 17.202303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.659546, 35.089546, 17.128891>,  <36.396698, 35.365120, 17.006536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659546, 35.089546, 17.128891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628740, 0.277109, -0.726565,
		0.415793, 0.669761, 0.615254,
		0.657117, -0.688935, 0.305885,
		36.856682, 34.882866, 17.220657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038986, 35.657486, 17.173189>,  <36.396698, 35.365120, 17.006536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038986, 35.657486, 17.173189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.114296, 35.277885, 17.072041>,  <37.159481, 35.050125, 17.011351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.114296, 35.277885, 17.072041>,  <37.038986, 35.657486, 17.173189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114296, 35.277885, 17.072041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544350, 0.315145, -0.777410,
		0.817456, 0.008719, 0.575925,
		0.188279, -0.949003, -0.252871,
		37.170780, 34.993183, 16.996180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687504, 35.713963, 16.914940>,  <37.038986, 35.657486, 17.173189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687504, 35.713963, 16.914940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.573185, 35.359802, 16.768299>,  <37.504593, 35.147308, 16.680315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.573185, 35.359802, 16.768299>,  <37.687504, 35.713963, 16.914940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573185, 35.359802, 16.768299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454476, 0.211568, -0.865269,
		0.843667, -0.413899, 0.341927,
		-0.285793, -0.885396, -0.366600,
		37.487446, 35.094185, 16.658319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227520, 35.521931, 16.531652>,  <37.687504, 35.713963, 16.914940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227520, 35.521931, 16.531652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931652, 35.282589, 16.408459>,  <37.754131, 35.138985, 16.334541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931652, 35.282589, 16.408459>,  <38.227520, 35.521931, 16.531652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931652, 35.282589, 16.408459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298452, 0.118521, -0.947037,
		0.603170, -0.792415, 0.090914,
		-0.739671, -0.598357, -0.307986,
		37.709751, 35.103081, 16.316063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548557, 35.042507, 16.237700>,  <38.227520, 35.521931, 16.531652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548557, 35.042507, 16.237700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180721, 35.063385, 16.081944>,  <37.960018, 35.075912, 15.988490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180721, 35.063385, 16.081944>,  <38.548557, 35.042507, 16.237700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180721, 35.063385, 16.081944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392325, 0.069810, -0.917174,
		-0.020688, -0.996194, -0.084674,
		-0.919594, 0.052194, -0.389388,
		37.904842, 35.079044, 15.965127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587410, 34.765060, 15.641093>,  <38.548557, 35.042507, 16.237700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587410, 34.765060, 15.641093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.233364, 34.936142, 15.567725>,  <38.020935, 35.038792, 15.523705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.233364, 34.936142, 15.567725>,  <38.587410, 34.765060, 15.641093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233364, 34.936142, 15.567725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285066, 0.186755, -0.940138,
		-0.367842, -0.884418, -0.287223,
		-0.885116, 0.427700, -0.183421,
		37.967831, 35.064453, 15.512699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.056068, 32.714252, 34.264816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.290701, 33.022289, 34.365120>,  <27.431480, 33.207111, 34.425301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.290701, 33.022289, 34.365120>,  <27.056068, 32.714252, 34.264816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290701, 33.022289, 34.365120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058945, -0.349392, 0.935121,
		0.807744, -0.533742, -0.250339,
		0.586580, 0.770094, 0.250758,
		27.466675, 33.253319, 34.440346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555843, 32.399277, 34.578983>,  <27.056068, 32.714252, 34.264816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555843, 32.399277, 34.578983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.559444, 32.776718, 34.711369>,  <27.561605, 33.003181, 34.790802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.559444, 32.776718, 34.711369>,  <27.555843, 32.399277, 34.578983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559444, 32.776718, 34.711369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089427, -0.330412, 0.939591,
		0.995953, 0.021140, -0.087357,
		0.009000, 0.943600, 0.330965,
		27.562145, 33.059799, 34.810658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834036, 32.242542, 35.217751>,  <27.555843, 32.399277, 34.578983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834036, 32.242542, 35.217751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.678497, 32.610287, 35.241642>,  <27.585175, 32.830933, 35.255978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.678497, 32.610287, 35.241642>,  <27.834036, 32.242542, 35.217751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678497, 32.610287, 35.241642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261750, 0.048088, 0.963937,
		0.883337, 0.390458, -0.259343,
		-0.388848, 0.919364, 0.059724,
		27.561842, 32.886097, 35.259560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342554, 32.591110, 35.685524>,  <27.834036, 32.242542, 35.217751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342554, 32.591110, 35.685524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.015522, 32.820595, 35.665871>,  <27.819302, 32.958286, 35.654079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.015522, 32.820595, 35.665871>,  <28.342554, 32.591110, 35.685524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015522, 32.820595, 35.665871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200343, 0.363420, 0.909829,
		0.539836, 0.734016, -0.412065,
		-0.817581, 0.573713, -0.049132,
		27.770248, 32.992710, 35.651131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560547, 33.353096, 35.853176>,  <28.342554, 32.591110, 35.685524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560547, 33.353096, 35.853176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.166782, 33.302437, 35.901985>,  <27.930523, 33.272041, 35.931271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.166782, 33.302437, 35.901985>,  <28.560547, 33.353096, 35.853176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166782, 33.302437, 35.901985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085161, 0.263794, 0.960812,
		-0.153879, 0.956228, -0.248896,
		-0.984413, -0.126653, 0.122025,
		27.871458, 33.264442, 35.938591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341515, 33.949993, 36.081116>,  <28.560547, 33.353096, 35.853176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341515, 33.949993, 36.081116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.072659, 33.674026, 36.188625>,  <27.911345, 33.508446, 36.253132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.072659, 33.674026, 36.188625>,  <28.341515, 33.949993, 36.081116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072659, 33.674026, 36.188625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012599, 0.373603, 0.927503,
		-0.740316, 0.620027, -0.259806,
		-0.672141, -0.689919, 0.268773,
		27.871016, 33.467052, 36.269257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040285, 34.205448, 36.667145>,  <28.341515, 33.949993, 36.081116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040285, 34.205448, 36.667145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.917458, 33.825474, 36.690266>,  <27.843761, 33.597488, 36.704136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.917458, 33.825474, 36.690266>,  <28.040285, 34.205448, 36.667145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917458, 33.825474, 36.690266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095323, 0.091127, 0.991267,
		-0.946902, 0.298875, -0.118532,
		-0.307067, -0.949931, 0.057799,
		27.825338, 33.540493, 36.707603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693047, 34.217205, 37.234509>,  <28.040285, 34.205448, 36.667145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693047, 34.217205, 37.234509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.746500, 33.821461, 37.211536>,  <27.778572, 33.584015, 37.197754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.746500, 33.821461, 37.211536>,  <27.693047, 34.217205, 37.234509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746500, 33.821461, 37.211536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437140, -0.110852, 0.892536,
		-0.889410, -0.094169, -0.447305,
		0.133634, -0.989366, -0.057428,
		27.786591, 33.524651, 37.194309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059492, 33.783031, 37.387836>,  <27.693047, 34.217205, 37.234509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059492, 33.783031, 37.387836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.385727, 33.567356, 37.471832>,  <27.581467, 33.437950, 37.522228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.385727, 33.567356, 37.471832>,  <27.059492, 33.783031, 37.387836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385727, 33.567356, 37.471832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366364, -0.200292, 0.908659,
		-0.447884, -0.818018, -0.360896,
		0.815584, -0.539192, 0.209985,
		27.630402, 33.405598, 37.534828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817739, 33.418625, 37.951015>,  <27.059492, 33.783031, 37.387836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817739, 33.418625, 37.951015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.212049, 33.352951, 37.936619>,  <27.448635, 33.313545, 37.927982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.212049, 33.352951, 37.936619>,  <26.817739, 33.418625, 37.951015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212049, 33.352951, 37.936619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034318, -0.012997, 0.999327,
		-0.164542, -0.986344, -0.007178,
		0.985773, -0.164185, -0.035988,
		27.507782, 33.303696, 37.925823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942459, 32.914829, 38.437527>,  <26.817739, 33.418625, 37.951015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942459, 32.914829, 38.437527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.287357, 33.114777, 38.404877>,  <27.494297, 33.234745, 38.385288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.287357, 33.114777, 38.404877>,  <26.942459, 32.914829, 38.437527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287357, 33.114777, 38.404877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114001, -0.034513, 0.992881,
		0.493494, -0.865413, -0.086744,
		0.862246, 0.499870, -0.081626,
		27.546032, 33.264736, 38.380390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411915, 32.547455, 38.774269>,  <26.942459, 32.914829, 38.437527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411915, 32.547455, 38.774269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.607721, 32.896152, 38.782631>,  <27.725204, 33.105370, 38.787647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.607721, 32.896152, 38.782631>,  <27.411915, 32.547455, 38.774269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607721, 32.896152, 38.782631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171884, -0.119964, 0.977786,
		0.854887, -0.475047, -0.208564,
		0.489514, 0.871745, 0.020903,
		27.754576, 33.157677, 38.788902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087620, 32.594116, 39.060043>,  <27.411915, 32.547455, 38.774269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087620, 32.594116, 39.060043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.909445, 32.945267, 39.130379>,  <27.802540, 33.155956, 39.172581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.909445, 32.945267, 39.130379>,  <28.087620, 32.594116, 39.060043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909445, 32.945267, 39.130379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128971, -0.131435, 0.982899,
		0.885975, 0.460498, -0.054675,
		-0.445437, 0.877876, 0.175840,
		27.775814, 33.208630, 39.183132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951628, 32.077702, 39.578907>,  <28.087620, 32.594116, 39.060043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951628, 32.077702, 39.578907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.590103, 32.186787, 39.446995>,  <27.373188, 32.252239, 39.367847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.590103, 32.186787, 39.446995>,  <27.951628, 32.077702, 39.578907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590103, 32.186787, 39.446995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408141, 0.780998, -0.472719,
		0.128639, -0.561845, -0.817180,
		-0.903810, 0.272714, -0.329779,
		27.318960, 32.268600, 39.348061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639151, 31.825628, 39.927368>,  <27.951628, 32.077702, 39.578907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639151, 31.825628, 39.927368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021576, 31.802608, 40.042351>,  <29.251030, 31.788797, 40.111340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021576, 31.802608, 40.042351>,  <28.639151, 31.825628, 39.927368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021576, 31.802608, 40.042351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282684, -0.078856, -0.955966,
		0.077681, 0.995224, -0.059123,
		0.956062, -0.057548, 0.287460,
		29.308395, 31.785345, 40.128590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036634, 32.389942, 39.609184>,  <28.639151, 31.825628, 39.927368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036634, 32.389942, 39.609184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.282141, 32.084438, 39.689144>,  <29.429445, 31.901136, 39.737122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.282141, 32.084438, 39.689144>,  <29.036634, 32.389942, 39.609184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282141, 32.084438, 39.689144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330858, 0.018938, -0.943490,
		0.716816, 0.645221, 0.264320,
		0.613766, -0.763761, 0.199902,
		29.466270, 31.855310, 39.749115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665134, 32.559097, 39.141972>,  <29.036634, 32.389942, 39.609184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665134, 32.559097, 39.141972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.745819, 32.174091, 39.214493>,  <29.794230, 31.943087, 39.258003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.745819, 32.174091, 39.214493>,  <29.665134, 32.559097, 39.141972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745819, 32.174091, 39.214493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205607, -0.139367, -0.968660,
		0.957621, 0.232668, 0.169789,
		0.201713, -0.962519, 0.181299,
		29.806334, 31.885336, 39.268883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312967, 32.325356, 38.823162>,  <29.665134, 32.559097, 39.141972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312967, 32.325356, 38.823162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.099674, 31.990540, 38.872200>,  <29.971699, 31.789650, 38.901623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.099674, 31.990540, 38.872200>,  <30.312967, 32.325356, 38.823162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099674, 31.990540, 38.872200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105536, -0.209606, -0.972074,
		0.839361, -0.505402, 0.200106,
		-0.533231, -0.837039, 0.122597,
		29.939705, 31.739428, 38.908978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698793, 31.651634, 38.534733>,  <30.312967, 32.325356, 38.823162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698793, 31.651634, 38.534733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.304060, 31.587284, 38.541428>,  <30.067221, 31.548674, 38.545444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.304060, 31.587284, 38.541428>,  <30.698793, 31.651634, 38.534733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304060, 31.587284, 38.541428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035801, -0.318168, -0.947358,
		0.157734, -0.934285, 0.319738,
		-0.986833, -0.160877, 0.016737,
		30.008011, 31.539021, 38.546448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703230, 31.095058, 38.262764>,  <30.698793, 31.651634, 38.534733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703230, 31.095058, 38.262764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322554, 31.199413, 38.197987>,  <30.094149, 31.262026, 38.159122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322554, 31.199413, 38.197987>,  <30.703230, 31.095058, 38.262764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322554, 31.199413, 38.197987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047373, -0.396328, -0.916886,
		-0.303385, -0.880263, 0.364823,
		-0.951690, 0.260886, -0.161941,
		30.037046, 31.277679, 38.149403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486814, 30.553495, 37.804974>,  <30.703230, 31.095058, 38.262764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486814, 30.553495, 37.804974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.187763, 30.815792, 37.762924>,  <30.008331, 30.973169, 37.737694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.187763, 30.815792, 37.762924>,  <30.486814, 30.553495, 37.804974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187763, 30.815792, 37.762924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041526, -0.111823, -0.992860,
		-0.662816, -0.746658, 0.056372,
		-0.747630, 0.655742, -0.105123,
		29.963474, 31.012514, 37.731388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034662, 30.308504, 37.236225>,  <30.486814, 30.553495, 37.804974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034662, 30.308504, 37.236225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.962275, 30.700348, 37.271141>,  <29.918842, 30.935453, 37.292091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.962275, 30.700348, 37.271141>,  <30.034662, 30.308504, 37.236225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962275, 30.700348, 37.271141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034524, 0.082371, -0.996004,
		-0.982883, -0.183259, 0.018913,
		-0.180969, 0.979608, 0.087287,
		29.907984, 30.994230, 37.297329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402382, 30.418371, 36.876213>,  <30.034662, 30.308504, 37.236225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402382, 30.418371, 36.876213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.612064, 30.758987, 36.879940>,  <29.737873, 30.963358, 36.882175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.612064, 30.758987, 36.879940>,  <29.402382, 30.418371, 36.876213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612064, 30.758987, 36.879940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123462, 0.086817, -0.988544,
		-0.842595, 0.517051, 0.150643,
		0.524206, 0.851541, 0.009315,
		29.769325, 31.014450, 36.882736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104136, 30.718540, 36.298996>,  <29.402382, 30.418371, 36.876213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104136, 30.718540, 36.298996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.407988, 30.966259, 36.378433>,  <29.590298, 31.114889, 36.426094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.407988, 30.966259, 36.378433>,  <29.104136, 30.718540, 36.298996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407988, 30.966259, 36.378433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025068, 0.277250, -0.960471,
		-0.649874, 0.734579, 0.195083,
		0.759628, 0.619295, 0.198592,
		29.635876, 31.152048, 36.438011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997496, 31.399473, 36.023769>,  <29.104136, 30.718540, 36.298996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997496, 31.399473, 36.023769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.394655, 31.392075, 36.070782>,  <29.632950, 31.387636, 36.098991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.394655, 31.392075, 36.070782>,  <28.997496, 31.399473, 36.023769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394655, 31.392075, 36.070782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099707, 0.668375, -0.737111,
		-0.064922, 0.743594, 0.665472,
		0.992897, -0.018497, 0.117534,
		29.692524, 31.386526, 36.106041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200907, 32.147285, 35.911163>,  <28.997496, 31.399473, 36.023769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200907, 32.147285, 35.911163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.495157, 31.887486, 35.834217>,  <29.671707, 31.731606, 35.788048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.495157, 31.887486, 35.834217>,  <29.200907, 32.147285, 35.911163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495157, 31.887486, 35.834217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197649, 0.477430, -0.856151,
		0.647912, 0.591786, 0.479583,
		0.735626, -0.649500, -0.192367,
		29.715845, 31.692636, 35.776508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732059, 32.566956, 35.621887>,  <29.200907, 32.147285, 35.911163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732059, 32.566956, 35.621887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.834602, 32.193867, 35.520451>,  <29.896128, 31.970013, 35.459591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.834602, 32.193867, 35.520451>,  <29.732059, 32.566956, 35.621887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834602, 32.193867, 35.520451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151644, 0.297916, -0.942470,
		0.954613, 0.203153, 0.217814,
		0.256356, -0.932725, -0.253588,
		29.911509, 31.914049, 35.444374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350378, 32.641960, 35.328541>,  <29.732059, 32.566956, 35.621887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350378, 32.641960, 35.328541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.214134, 32.289726, 35.196751>,  <30.132389, 32.078384, 35.117676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.214134, 32.289726, 35.196751>,  <30.350378, 32.641960, 35.328541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214134, 32.289726, 35.196751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296642, 0.231882, -0.926409,
		0.892182, -0.413279, 0.182238,
		-0.340608, -0.880585, -0.329477,
		30.111952, 32.025551, 35.097908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121223, 32.545403, 35.233356>,  <30.350378, 32.641960, 35.328541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121223, 32.545403, 35.233356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515268, 32.613792, 35.240582>,  <31.751696, 32.654827, 35.244915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515268, 32.613792, 35.240582>,  <31.121223, 32.545403, 35.233356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515268, 32.613792, 35.240582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013404, -0.028344, 0.999508,
		0.171398, -0.984868, -0.025630,
		0.985111, 0.170971, 0.018059,
		31.810802, 32.665085, 35.245998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346771, 32.075119, 35.768608>,  <31.121223, 32.545403, 35.233356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346771, 32.075119, 35.768608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.626446, 32.358227, 35.728218>,  <31.794250, 32.528091, 35.703983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.626446, 32.358227, 35.728218>,  <31.346771, 32.075119, 35.768608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626446, 32.358227, 35.728218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018646, 0.123138, 0.992214,
		0.714695, -0.695627, 0.072900,
		0.699188, 0.707771, -0.100977,
		31.836203, 32.570557, 35.697926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747765, 31.947104, 36.308575>,  <31.346771, 32.075119, 35.768608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747765, 31.947104, 36.308575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825960, 32.327633, 36.213272>,  <31.872877, 32.555950, 36.156090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825960, 32.327633, 36.213272>,  <31.747765, 31.947104, 36.308575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825960, 32.327633, 36.213272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010837, 0.245021, 0.969457,
		0.980646, -0.186936, 0.058209,
		0.195489, 0.951325, -0.238253,
		31.884607, 32.613029, 36.141796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270439, 32.126015, 36.790379>,  <31.747765, 31.947104, 36.308575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270439, 32.126015, 36.790379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110321, 32.472881, 36.671864>,  <32.014248, 32.681000, 36.600754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110321, 32.472881, 36.671864>,  <32.270439, 32.126015, 36.790379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110321, 32.472881, 36.671864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042280, 0.340459, 0.939308,
		0.915409, 0.363476, -0.172949,
		-0.400298, 0.867164, -0.296292,
		31.990232, 32.733032, 36.582977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727852, 32.659958, 37.033340>,  <32.270439, 32.126015, 36.790379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727852, 32.659958, 37.033340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369041, 32.820457, 36.959221>,  <32.153755, 32.916759, 36.914749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369041, 32.820457, 36.959221>,  <32.727852, 32.659958, 37.033340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369041, 32.820457, 36.959221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075033, 0.274916, 0.958536,
		0.435556, 0.873738, -0.216500,
		-0.897029, 0.401252, -0.185300,
		32.099934, 32.940834, 36.903629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768471, 33.330124, 37.284901>,  <32.727852, 32.659958, 37.033340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768471, 33.330124, 37.284901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378002, 33.246082, 37.263184>,  <32.143723, 33.195656, 37.250153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378002, 33.246082, 37.263184>,  <32.768471, 33.330124, 37.284901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378002, 33.246082, 37.263184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119202, 0.310083, 0.943207,
		-0.181334, 0.927203, -0.327738,
		-0.976170, -0.210102, -0.054296,
		32.085152, 33.183052, 37.246895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386280, 33.976326, 37.521992>,  <32.768471, 33.330124, 37.284901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386280, 33.976326, 37.521992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134544, 33.670570, 37.578037>,  <31.983501, 33.487118, 37.611664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134544, 33.670570, 37.578037>,  <32.386280, 33.976326, 37.521992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134544, 33.670570, 37.578037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216330, 0.345489, 0.913148,
		-0.746410, 0.544373, -0.382792,
		-0.629343, -0.764392, 0.140112,
		31.945742, 33.441254, 37.620071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068497, 34.683304, 37.328484>,  <32.386280, 33.976326, 37.521992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068497, 34.683304, 37.328484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163734, 35.068562, 37.378555>,  <32.220875, 35.299717, 37.408600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163734, 35.068562, 37.378555>,  <32.068497, 34.683304, 37.328484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163734, 35.068562, 37.378555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143479, 0.162353, -0.976245,
		-0.960586, 0.214476, 0.176846,
		0.238092, 0.963142, 0.125182,
		32.235161, 35.357506, 37.416111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638680, 35.049366, 36.871483>,  <32.068497, 34.683304, 37.328484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638680, 35.049366, 36.871483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926985, 35.314827, 36.951550>,  <32.099968, 35.474102, 36.999592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926985, 35.314827, 36.951550>,  <31.638680, 35.049366, 36.871483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926985, 35.314827, 36.951550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136051, 0.147715, -0.979628,
		-0.679699, 0.733313, 0.016178,
		0.720764, 0.663651, 0.200170,
		32.143215, 35.513924, 37.011600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424688, 35.574135, 36.525139>,  <31.638680, 35.049366, 36.871483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424688, 35.574135, 36.525139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818422, 35.597191, 36.591785>,  <32.054665, 35.611023, 36.631775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818422, 35.597191, 36.591785>,  <31.424688, 35.574135, 36.525139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818422, 35.597191, 36.591785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148164, 0.241749, -0.958960,
		-0.095555, 0.968625, 0.229422,
		0.984336, 0.057642, 0.166616,
		32.113724, 35.614483, 36.641769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744036, 36.196457, 36.292522>,  <31.424688, 35.574135, 36.525139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744036, 36.196457, 36.292522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059235, 35.950218, 36.288486>,  <32.248352, 35.802475, 36.286064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059235, 35.950218, 36.288486>,  <31.744036, 36.196457, 36.292522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059235, 35.950218, 36.288486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252850, 0.338514, -0.906353,
		0.561364, 0.711652, 0.422401,
		0.787996, -0.615597, -0.010088,
		32.295635, 35.765537, 36.285461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147667, 36.527943, 35.862961>,  <31.744036, 36.196457, 36.292522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147667, 36.527943, 35.862961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368145, 36.195904, 35.896736>,  <32.500431, 35.996681, 35.917000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368145, 36.195904, 35.896736>,  <32.147667, 36.527943, 35.862961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368145, 36.195904, 35.896736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397029, 0.171930, -0.901558,
		0.733860, 0.530458, 0.424339,
		0.551196, -0.830093, 0.084435,
		32.533504, 35.946877, 35.922066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739765, 36.794167, 35.707893>,  <32.147667, 36.527943, 35.862961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739765, 36.794167, 35.707893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770142, 36.399319, 35.651562>,  <32.788368, 36.162411, 35.617764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770142, 36.399319, 35.651562>,  <32.739765, 36.794167, 35.707893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770142, 36.399319, 35.651562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392830, 0.159433, -0.905685,
		0.916470, 0.013456, 0.399877,
		0.075940, -0.987117, -0.140830,
		32.792923, 36.103184, 35.609314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407578, 36.611221, 35.393673>,  <32.739765, 36.794167, 35.707893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407578, 36.611221, 35.393673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173252, 36.298386, 35.308666>,  <33.032658, 36.110683, 35.257664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173252, 36.298386, 35.308666>,  <33.407578, 36.611221, 35.393673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173252, 36.298386, 35.308666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380420, -0.033819, -0.924196,
		0.715617, -0.622247, 0.317334,
		-0.585810, -0.782090, -0.212514,
		32.997509, 36.063759, 35.244911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.611876, 35.448765, 39.184551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.452026, 35.185081, 38.929760>,  <28.356117, 35.026871, 38.776886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.452026, 35.185081, 38.929760>,  <28.611876, 35.448765, 39.184551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452026, 35.185081, 38.929760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011342, 0.691268, -0.722509,
		0.916610, -0.295955, -0.268768,
		-0.399622, -0.659211, -0.636980,
		28.332140, 34.987320, 38.738667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016077, 35.430378, 38.572235>,  <28.611876, 35.448765, 39.184551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016077, 35.430378, 38.572235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.642488, 35.321190, 38.479988>,  <28.418335, 35.255676, 38.424641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.642488, 35.321190, 38.479988>,  <29.016077, 35.430378, 38.572235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642488, 35.321190, 38.479988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061296, 0.513429, -0.855940,
		0.352051, -0.813560, -0.462796,
		-0.933971, -0.272967, -0.230621,
		28.362297, 35.239300, 38.410801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036438, 35.049572, 37.958599>,  <29.016077, 35.430378, 38.572235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036438, 35.049572, 37.958599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.665991, 35.200203, 37.967484>,  <28.443722, 35.290581, 37.972813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.665991, 35.200203, 37.967484>,  <29.036438, 35.049572, 37.958599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665991, 35.200203, 37.967484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158826, 0.442645, -0.882519,
		-0.342168, -0.813790, -0.469752,
		-0.926119, 0.376579, 0.022208,
		28.388155, 35.313175, 37.974144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860624, 35.139561, 37.213360>,  <29.036438, 35.049572, 37.958599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860624, 35.139561, 37.213360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.587614, 35.361767, 37.403336>,  <28.423809, 35.495090, 37.517323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.587614, 35.361767, 37.403336>,  <28.860624, 35.139561, 37.213360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587614, 35.361767, 37.403336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041074, 0.677960, -0.733951,
		-0.729708, -0.481431, -0.485540,
		-0.682524, 0.555513, 0.474939,
		28.382856, 35.528419, 37.545818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326468, 35.330849, 36.734837>,  <28.860624, 35.139561, 37.213360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326468, 35.330849, 36.734837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277908, 35.599545, 37.027145>,  <28.248772, 35.760761, 37.202530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277908, 35.599545, 37.027145>,  <28.326468, 35.330849, 36.734837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277908, 35.599545, 37.027145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245119, 0.693132, -0.677853,
		-0.961862, -0.261418, 0.080509,
		-0.121400, 0.671736, 0.730776,
		28.241488, 35.801064, 37.246380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850706, 35.697056, 36.506756>,  <28.326468, 35.330849, 36.734837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850706, 35.697056, 36.506756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.007599, 35.937275, 36.785465>,  <28.101734, 36.081406, 36.952690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.007599, 35.937275, 36.785465>,  <27.850706, 35.697056, 36.506756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007599, 35.937275, 36.785465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099731, 0.780772, -0.616806,
		-0.914445, 0.172440, 0.366136,
		0.392231, 0.600550, 0.696775,
		28.125269, 36.117439, 36.994499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334648, 36.300682, 36.638416>,  <27.850706, 35.697056, 36.506756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334648, 36.300682, 36.638416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.688015, 36.404545, 36.794445>,  <27.900034, 36.466862, 36.888062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.688015, 36.404545, 36.794445>,  <27.334648, 36.300682, 36.638416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688015, 36.404545, 36.794445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008282, 0.840952, -0.541046,
		-0.468516, 0.474738, 0.745061,
		0.883416, 0.259659, 0.390068,
		27.953039, 36.482441, 36.911465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303846, 37.034863, 36.820129>,  <27.334648, 36.300682, 36.638416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303846, 37.034863, 36.820129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.690258, 36.958660, 36.750275>,  <27.922104, 36.912937, 36.708363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.690258, 36.958660, 36.750275>,  <27.303846, 37.034863, 36.820129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690258, 36.958660, 36.750275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035700, 0.767622, -0.639907,
		0.255963, 0.611933, 0.748345,
		0.966027, -0.190508, -0.174637,
		27.980066, 36.901508, 36.697884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633265, 37.748203, 36.781292>,  <27.303846, 37.034863, 36.820129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633265, 37.748203, 36.781292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.879044, 37.497086, 36.590157>,  <28.026510, 37.346416, 36.475475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.879044, 37.497086, 36.590157>,  <27.633265, 37.748203, 36.781292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879044, 37.497086, 36.590157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105893, 0.665801, -0.738576,
		0.781820, 0.403216, 0.475578,
		0.614446, -0.627794, -0.477839,
		28.063377, 37.308746, 36.446804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134298, 38.225952, 36.405540>,  <27.633265, 37.748203, 36.781292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134298, 38.225952, 36.405540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.176394, 37.863609, 36.241421>,  <28.201651, 37.646202, 36.142948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.176394, 37.863609, 36.241421>,  <28.134298, 38.225952, 36.405540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176394, 37.863609, 36.241421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143954, 0.422120, -0.895038,
		0.983973, 0.035129, 0.174825,
		0.105239, -0.905859, -0.410298,
		28.207966, 37.591850, 36.118332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751215, 38.250847, 35.858215>,  <28.134298, 38.225952, 36.405540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751215, 38.250847, 35.858215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.527578, 37.932301, 35.765934>,  <28.393396, 37.741173, 35.710564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.527578, 37.932301, 35.765934>,  <28.751215, 38.250847, 35.858215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527578, 37.932301, 35.765934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016536, 0.288916, -0.957212,
		0.828942, -0.531352, -0.174699,
		-0.559090, -0.796362, -0.230708,
		28.359852, 37.693394, 35.696720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141802, 37.954540, 35.291321>,  <28.751215, 38.250847, 35.858215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141802, 37.954540, 35.291321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.764811, 37.821346, 35.279663>,  <28.538616, 37.741428, 35.272671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.764811, 37.821346, 35.279663>,  <29.141802, 37.954540, 35.291321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764811, 37.821346, 35.279663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042457, 0.205730, -0.977687,
		0.331557, -0.920213, -0.208034,
		-0.942479, -0.332991, -0.029141,
		28.482067, 37.721451, 35.270920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753147, 37.522160, 35.115990>,  <29.141802, 37.954540, 35.291321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753147, 37.522160, 35.115990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.109222, 37.684326, 35.032848>,  <30.322868, 37.781624, 34.982964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.109222, 37.684326, 35.032848>,  <29.753147, 37.522160, 35.115990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109222, 37.684326, 35.032848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312310, -0.210844, 0.926287,
		0.331703, -0.889486, -0.314306,
		0.890189, 0.405413, -0.207858,
		30.376280, 37.805950, 34.970490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159758, 37.010685, 35.343224>,  <29.753147, 37.522160, 35.115990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159758, 37.010685, 35.343224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.356031, 37.359089, 35.333614>,  <30.473797, 37.568130, 35.327850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.356031, 37.359089, 35.333614>,  <30.159758, 37.010685, 35.343224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356031, 37.359089, 35.333614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193524, -0.082060, 0.977658,
		0.849574, -0.484372, -0.208826,
		0.490686, 0.871005, -0.024022,
		30.503237, 37.620392, 35.326408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691126, 36.918228, 35.750149>,  <30.159758, 37.010685, 35.343224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691126, 36.918228, 35.750149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.678732, 37.315605, 35.706139>,  <30.671295, 37.554031, 35.679733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.678732, 37.315605, 35.706139>,  <30.691126, 36.918228, 35.750149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678732, 37.315605, 35.706139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312476, 0.114191, 0.943037,
		0.949420, -0.005161, -0.313967,
		-0.030985, 0.993445, -0.110028,
		30.669437, 37.613640, 35.673130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370644, 37.247696, 36.071285>,  <30.691126, 36.918228, 35.750149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370644, 37.247696, 36.071285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.077490, 37.519821, 36.074417>,  <30.901598, 37.683094, 36.076298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.077490, 37.519821, 36.074417>,  <31.370644, 37.247696, 36.071285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077490, 37.519821, 36.074417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184899, 0.188085, 0.964592,
		0.654749, 0.708380, -0.263632,
		-0.732882, 0.680311, 0.007830,
		30.857626, 37.723915, 36.076767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690493, 37.817623, 36.437428>,  <31.370644, 37.247696, 36.071285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690493, 37.817623, 36.437428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.292618, 37.853794, 36.457115>,  <31.053894, 37.875496, 36.468929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.292618, 37.853794, 36.457115>,  <31.690493, 37.817623, 36.437428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292618, 37.853794, 36.457115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065080, 0.181772, 0.981185,
		0.079781, 0.979174, -0.186692,
		-0.994686, 0.090430, 0.049223,
		30.994211, 37.880924, 36.471882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599070, 38.465195, 36.884415>,  <31.690493, 37.817623, 36.437428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599070, 38.465195, 36.884415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.243517, 38.281944, 36.885632>,  <31.030186, 38.171993, 36.886360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.243517, 38.281944, 36.885632>,  <31.599070, 38.465195, 36.884415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243517, 38.281944, 36.885632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065395, 0.133449, 0.988896,
		-0.453449, 0.878811, -0.148580,
		-0.888880, -0.458130, 0.003043,
		30.976852, 38.144505, 36.886543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155920, 38.872223, 37.216690>,  <31.599070, 38.465195, 36.884415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155920, 38.872223, 37.216690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.977602, 38.515820, 37.251045>,  <30.870611, 38.301979, 37.271656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.977602, 38.515820, 37.251045>,  <31.155920, 38.872223, 37.216690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977602, 38.515820, 37.251045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077477, 0.057177, 0.995353,
		-0.891776, 0.450377, 0.043543,
		-0.445794, -0.891006, 0.085883,
		30.843864, 38.248516, 37.276810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661484, 38.977161, 37.748466>,  <31.155920, 38.872223, 37.216690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661484, 38.977161, 37.748466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723909, 38.582123, 37.755325>,  <30.761364, 38.345100, 37.759441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723909, 38.582123, 37.755325>,  <30.661484, 38.977161, 37.748466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723909, 38.582123, 37.755325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038365, 0.011290, 0.999200,
		-0.987001, -0.156597, -0.036127,
		0.156064, -0.987598, 0.017151,
		30.770729, 38.285843, 37.760471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197744, 38.825253, 38.244095>,  <30.661484, 38.977161, 37.748466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197744, 38.825253, 38.244095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.418623, 38.492538, 38.221455>,  <30.551149, 38.292908, 38.207870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.418623, 38.492538, 38.221455>,  <30.197744, 38.825253, 38.244095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418623, 38.492538, 38.221455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059782, -0.107223, 0.992436,
		-0.831568, -0.544636, -0.108934,
		0.552197, -0.831790, -0.056604,
		30.584282, 38.243000, 38.204475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826668, 38.262688, 38.496574>,  <30.197744, 38.825253, 38.244095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826668, 38.262688, 38.496574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.208658, 38.154984, 38.546406>,  <30.437853, 38.090363, 38.576305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.208658, 38.154984, 38.546406>,  <29.826668, 38.262688, 38.496574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208658, 38.154984, 38.546406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171194, -0.157163, 0.972621,
		-0.242310, -0.950157, -0.196183,
		0.954975, -0.269262, 0.124579,
		30.495152, 38.074207, 38.583778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712088, 37.840454, 39.101204>,  <29.826668, 38.262688, 38.496574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712088, 37.840454, 39.101204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.102652, 37.916374, 39.060017>,  <30.336990, 37.961926, 39.035305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.102652, 37.916374, 39.060017>,  <29.712088, 37.840454, 39.101204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102652, 37.916374, 39.060017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155120, -0.284806, 0.945951,
		0.150218, -0.939606, -0.307529,
		0.976408, 0.189803, -0.102969,
		30.395575, 37.973316, 39.029125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117220, 37.171612, 39.265991>,  <29.712088, 37.840454, 39.101204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117220, 37.171612, 39.265991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.369612, 37.477970, 39.315411>,  <30.521048, 37.661785, 39.345062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.369612, 37.477970, 39.315411>,  <30.117220, 37.171612, 39.265991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369612, 37.477970, 39.315411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334549, -0.412306, 0.847396,
		0.699957, -0.493359, -0.516388,
		0.630981, 0.765898, 0.123544,
		30.558907, 37.707741, 39.352474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735893, 36.889698, 39.546429>,  <30.117220, 37.171612, 39.265991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735893, 36.889698, 39.546429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769852, 37.273117, 39.655231>,  <30.790226, 37.503166, 39.720512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769852, 37.273117, 39.655231>,  <30.735893, 36.889698, 39.546429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769852, 37.273117, 39.655231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273504, -0.284920, 0.918703,
		0.958117, -0.003598, -0.286354,
		0.084894, 0.958545, 0.272003,
		30.795321, 37.560680, 39.736832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253923, 36.858013, 40.021805>,  <30.735893, 36.889698, 39.546429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253923, 36.858013, 40.021805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.136389, 37.234943, 40.085915>,  <31.065868, 37.461102, 40.124382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.136389, 37.234943, 40.085915>,  <31.253923, 36.858013, 40.021805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136389, 37.234943, 40.085915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376910, -0.039869, 0.925391,
		0.878406, 0.332325, -0.343455,
		-0.293838, 0.942322, 0.160278,
		31.048237, 37.517639, 40.133999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014271, 36.809528, 40.257595>,  <31.253923, 36.858013, 40.021805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014271, 36.809528, 40.257595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303936, 36.534851, 40.232170>,  <32.477734, 36.370045, 40.216915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303936, 36.534851, 40.232170>,  <32.014271, 36.809528, 40.257595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303936, 36.534851, 40.232170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007823, 0.083981, -0.996437,
		0.689588, 0.722076, 0.055444,
		0.724160, -0.686697, -0.063562,
		32.521183, 36.328842, 40.213100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379543, 37.018196, 39.707375>,  <32.014271, 36.809528, 40.257595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379543, 37.018196, 39.707375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.470657, 36.630783, 39.747509>,  <32.525326, 36.398335, 39.771587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.470657, 36.630783, 39.747509>,  <32.379543, 37.018196, 39.707375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470657, 36.630783, 39.747509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071646, -0.119434, -0.990254,
		0.971072, 0.218378, -0.096597,
		0.227787, -0.968528, 0.100333,
		32.538994, 36.340225, 39.777607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003487, 36.819054, 39.241272>,  <32.379543, 37.018196, 39.707375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003487, 36.819054, 39.241272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.830654, 36.463257, 39.300755>,  <32.726955, 36.249779, 39.336445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.830654, 36.463257, 39.300755>,  <33.003487, 36.819054, 39.241272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830654, 36.463257, 39.300755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005520, -0.167501, -0.985857,
		0.901817, -0.425150, 0.077284,
		-0.432082, -0.889489, 0.148708,
		32.701031, 36.196411, 39.345367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276825, 36.325027, 38.811485>,  <33.003487, 36.819054, 39.241272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276825, 36.325027, 38.811485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.931156, 36.146847, 38.905102>,  <32.723755, 36.039936, 38.961269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.931156, 36.146847, 38.905102>,  <33.276825, 36.325027, 38.811485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931156, 36.146847, 38.905102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155529, -0.205881, -0.966139,
		0.478557, -0.871310, 0.108635,
		-0.864173, -0.445456, 0.234039,
		32.671906, 36.013210, 38.975315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288746, 35.741783, 38.427174>,  <33.276825, 36.325027, 38.811485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288746, 35.741783, 38.427174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896694, 35.737289, 38.506397>,  <32.661465, 35.734592, 38.553932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896694, 35.737289, 38.506397>,  <33.288746, 35.741783, 38.427174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896694, 35.737289, 38.506397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190289, -0.228878, -0.954675,
		0.056056, -0.973390, 0.222191,
		-0.980126, -0.011235, 0.198055,
		32.602657, 35.733917, 38.565815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074108, 35.154835, 38.143688>,  <33.288746, 35.741783, 38.427174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074108, 35.154835, 38.143688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745193, 35.379440, 38.180668>,  <32.547844, 35.514202, 38.202854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745193, 35.379440, 38.180668>,  <33.074108, 35.154835, 38.143688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745193, 35.379440, 38.180668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224046, -0.170101, -0.959619,
		-0.523111, -0.809797, 0.265676,
		-0.822288, 0.561511, 0.092450,
		32.498508, 35.547894, 38.208405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550457, 34.710537, 37.846462>,  <33.074108, 35.154835, 38.143688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550457, 34.710537, 37.846462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436535, 35.093925, 37.840557>,  <32.368183, 35.323959, 37.837013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436535, 35.093925, 37.840557>,  <32.550457, 34.710537, 37.846462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436535, 35.093925, 37.840557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100069, -0.045048, -0.993960,
		-0.953349, -0.281603, 0.108743,
		-0.284801, 0.958473, -0.014767,
		32.351093, 35.381466, 37.836128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892225, 34.249580, 38.027046>,  <32.550457, 34.710537, 37.846462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892225, 34.249580, 38.027046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.870901, 33.850365, 38.040119>,  <31.858107, 33.610836, 38.047962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.870901, 33.850365, 38.040119>,  <31.892225, 34.249580, 38.027046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870901, 33.850365, 38.040119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322738, 0.048197, 0.945260,
		-0.944986, 0.039844, -0.324676,
		-0.053311, -0.998043, 0.032687,
		31.854908, 33.550953, 38.049927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278639, 34.138542, 38.380646>,  <31.892225, 34.249580, 38.027046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278639, 34.138542, 38.380646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.483194, 33.795708, 38.405571>,  <31.605928, 33.590008, 38.420525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.483194, 33.795708, 38.405571>,  <31.278639, 34.138542, 38.380646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483194, 33.795708, 38.405571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280280, -0.097808, 0.954923,
		-0.812357, -0.505802, -0.290242,
		0.511390, -0.857087, 0.062311,
		31.636612, 33.538582, 38.424263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767120, 33.687824, 38.631878>,  <31.278639, 34.138542, 38.380646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767120, 33.687824, 38.631878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.124453, 33.529499, 38.717010>,  <31.338852, 33.434505, 38.768089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.124453, 33.529499, 38.717010>,  <30.767120, 33.687824, 38.631878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124453, 33.529499, 38.717010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211761, 0.046973, 0.976192,
		-0.396384, -0.917130, -0.041854,
		0.893330, -0.395810, 0.212832,
		31.392452, 33.410755, 38.780861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579041, 33.213650, 39.081352>,  <30.767120, 33.687824, 38.631878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579041, 33.213650, 39.081352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.974077, 33.248760, 39.133442>,  <31.211100, 33.269825, 39.164696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.974077, 33.248760, 39.133442>,  <30.579041, 33.213650, 39.081352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974077, 33.248760, 39.133442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131387, 0.007617, 0.991302,
		0.086022, -0.996111, 0.019055,
		0.987592, 0.087777, 0.130220,
		31.270355, 33.275093, 39.172508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745316, 32.658173, 39.382694>,  <30.579041, 33.213650, 39.081352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745316, 32.658173, 39.382694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.019728, 32.933868, 39.475910>,  <31.184376, 33.099285, 39.531837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.019728, 32.933868, 39.475910>,  <30.745316, 32.658173, 39.382694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019728, 32.933868, 39.475910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292766, -0.031712, 0.955658,
		0.666070, -0.723836, 0.180031,
		0.686031, 0.689243, 0.233037,
		31.225536, 33.140640, 39.545822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963385, 32.379311, 40.069073>,  <30.745316, 32.658173, 39.382694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963385, 32.379311, 40.069073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.132090, 32.741982, 40.066006>,  <31.233313, 32.959583, 40.064167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.132090, 32.741982, 40.066006>,  <30.963385, 32.379311, 40.069073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132090, 32.741982, 40.066006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165767, 0.085416, 0.982459,
		0.891426, -0.413091, 0.186322,
		0.421760, 0.906675, -0.007665,
		31.258617, 33.013985, 40.063705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558556, 32.482361, 40.621857>,  <30.963385, 32.379311, 40.069073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558556, 32.482361, 40.621857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398556, 32.839294, 40.538197>,  <31.302555, 33.053455, 40.487999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398556, 32.839294, 40.538197>,  <31.558556, 32.482361, 40.621857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398556, 32.839294, 40.538197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047641, 0.207654, 0.977041,
		0.915276, 0.400781, -0.040550,
		-0.400000, 0.892331, -0.209154,
		31.278555, 33.106995, 40.475449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863291, 32.825096, 41.055801>,  <31.558556, 32.482361, 40.621857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863291, 32.825096, 41.055801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.554768, 33.053558, 40.943466>,  <31.369654, 33.190636, 40.876064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.554768, 33.053558, 40.943466>,  <31.863291, 32.825096, 41.055801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554768, 33.053558, 40.943466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265257, 0.112624, 0.957577,
		0.578551, 0.813081, 0.064635,
		-0.771309, 0.571152, -0.280835,
		31.323376, 33.224903, 40.859215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939800, 33.601307, 41.285736>,  <31.863291, 32.825096, 41.055801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939800, 33.601307, 41.285736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.551596, 33.518490, 41.236355>,  <31.318672, 33.468800, 41.206726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.551596, 33.518490, 41.236355>,  <31.939800, 33.601307, 41.285736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551596, 33.518490, 41.236355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189184, 0.336803, 0.922374,
		-0.149386, 0.918531, -0.366039,
		-0.970512, -0.207039, -0.123458,
		31.260443, 33.456379, 41.199318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.232590, 34.030231, 25.164803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850370, 34.108440, 25.253071>,  <30.621038, 34.155365, 25.306032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850370, 34.108440, 25.253071>,  <31.232590, 34.030231, 25.164803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850370, 34.108440, 25.253071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240632, 0.084725, 0.966911,
		0.170360, 0.977032, -0.128008,
		-0.955549, 0.195526, 0.220672,
		30.563705, 34.167099, 25.319273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220528, 34.422916, 25.736116>,  <31.232590, 34.030231, 25.164803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220528, 34.422916, 25.736116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844830, 34.286221, 25.748951>,  <30.619411, 34.204201, 25.756651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844830, 34.286221, 25.748951>,  <31.220528, 34.422916, 25.736116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844830, 34.286221, 25.748951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004798, 0.080396, 0.996751,
		-0.343213, 0.936348, -0.073872,
		-0.939245, -0.341744, 0.032085,
		30.563057, 34.183697, 25.758577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769424, 34.839859, 26.165018>,  <31.220528, 34.422916, 25.736116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769424, 34.839859, 26.165018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579813, 34.487656, 26.165730>,  <30.466045, 34.276333, 26.166157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579813, 34.487656, 26.165730>,  <30.769424, 34.839859, 26.165018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579813, 34.487656, 26.165730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087430, -0.045058, 0.995151,
		-0.876157, 0.471887, 0.098341,
		-0.474030, -0.880507, 0.001779,
		30.437605, 34.223503, 26.166264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357540, 34.955242, 26.708530>,  <30.769424, 34.839859, 26.165018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357540, 34.955242, 26.708530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390442, 34.560646, 26.651852>,  <30.410183, 34.323891, 26.617846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390442, 34.560646, 26.651852>,  <30.357540, 34.955242, 26.708530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390442, 34.560646, 26.651852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026153, -0.144266, 0.989193,
		-0.996268, -0.077661, -0.037666,
		0.082255, -0.986487, -0.141696,
		30.415119, 34.264702, 26.609343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848997, 34.593102, 27.154814>,  <30.357540, 34.955242, 26.708530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848997, 34.593102, 27.154814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133471, 34.323364, 27.075329>,  <30.304153, 34.161522, 27.027637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133471, 34.323364, 27.075329>,  <29.848997, 34.593102, 27.154814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133471, 34.323364, 27.075329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017161, -0.265923, 0.963842,
		-0.702799, -0.688877, -0.177547,
		0.711182, -0.674340, -0.198712,
		30.346825, 34.121063, 27.015715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682125, 33.933056, 27.513157>,  <29.848997, 34.593102, 27.154814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682125, 33.933056, 27.513157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074921, 33.909954, 27.441204>,  <30.310598, 33.896091, 27.398033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074921, 33.909954, 27.441204>,  <29.682125, 33.933056, 27.513157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074921, 33.909954, 27.441204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163467, -0.217611, 0.962249,
		-0.094720, -0.974325, -0.204251,
		0.981991, -0.057755, -0.179882,
		30.369518, 33.892628, 27.387239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979862, 33.365040, 27.845695>,  <29.682125, 33.933056, 27.513157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979862, 33.365040, 27.845695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316898, 33.571453, 27.784054>,  <30.519119, 33.695301, 27.747068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316898, 33.571453, 27.784054>,  <29.979862, 33.365040, 27.845695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316898, 33.571453, 27.784054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362776, -0.332362, 0.870591,
		0.398039, -0.789456, -0.467251,
		0.842590, 0.516037, -0.154102,
		30.569675, 33.726265, 27.737823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523842, 32.924530, 28.009491>,  <29.979862, 33.365040, 27.845695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523842, 32.924530, 28.009491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665426, 33.298416, 28.022293>,  <30.750378, 33.522747, 28.029974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665426, 33.298416, 28.022293>,  <30.523842, 32.924530, 28.009491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665426, 33.298416, 28.022293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636538, -0.265837, 0.723982,
		0.685223, -0.235890, -0.689076,
		0.353962, 0.934712, 0.032004,
		30.771614, 33.578831, 28.031895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238380, 32.829449, 28.018728>,  <30.523842, 32.924530, 28.009491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238380, 32.829449, 28.018728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179996, 33.206413, 28.139095>,  <31.144966, 33.432594, 28.211315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179996, 33.206413, 28.139095>,  <31.238380, 32.829449, 28.018728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179996, 33.206413, 28.139095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630719, -0.145691, 0.762212,
		0.762161, 0.301046, -0.573133,
		-0.145961, 0.942414, 0.300916,
		31.136208, 33.489136, 28.229370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862066, 33.061882, 28.116213>,  <31.238380, 32.829449, 28.018728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862066, 33.061882, 28.116213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624155, 33.299122, 28.333271>,  <31.481407, 33.441467, 28.463507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624155, 33.299122, 28.333271>,  <31.862066, 33.061882, 28.116213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624155, 33.299122, 28.333271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564562, -0.172364, 0.807193,
		0.572282, 0.786459, -0.232325,
		-0.594780, 0.593104, 0.542645,
		31.445721, 33.477055, 28.496065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338230, 33.425823, 28.559710>,  <31.862066, 33.061882, 28.116213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338230, 33.425823, 28.559710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985426, 33.457348, 28.745544>,  <31.773743, 33.476261, 28.857046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985426, 33.457348, 28.745544>,  <32.338230, 33.425823, 28.559710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985426, 33.457348, 28.745544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461183, -0.058088, 0.885402,
		0.096766, 0.995196, 0.014888,
		-0.882013, 0.078811, 0.464588,
		31.720821, 33.480991, 28.884920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452347, 33.871243, 29.115444>,  <32.338230, 33.425823, 28.559710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452347, 33.871243, 29.115444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120018, 33.684059, 29.235939>,  <31.920620, 33.571747, 29.308237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120018, 33.684059, 29.235939>,  <32.452347, 33.871243, 29.115444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120018, 33.684059, 29.235939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379061, -0.079503, 0.921950,
		-0.407489, 0.880165, 0.243439,
		-0.830822, -0.467963, 0.301239,
		31.870771, 33.543671, 29.326311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306911, 34.662731, 29.060957>,  <32.452347, 33.871243, 29.115444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306911, 34.662731, 29.060957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551395, 34.967861, 29.145355>,  <32.698086, 35.150940, 29.195993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551395, 34.967861, 29.145355>,  <32.306911, 34.662731, 29.060957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551395, 34.967861, 29.145355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145728, 0.370494, -0.917332,
		-0.777938, 0.529932, 0.337615,
		0.611208, 0.762827, 0.210996,
		32.734756, 35.196709, 29.208654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950191, 35.288021, 28.872442>,  <32.306911, 34.662731, 29.060957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950191, 35.288021, 28.872442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346779, 35.339195, 28.862480>,  <32.584732, 35.369900, 28.856503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346779, 35.339195, 28.862480>,  <31.950191, 35.288021, 28.872442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346779, 35.339195, 28.862480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069213, 0.354878, -0.932347,
		-0.110443, 0.926118, 0.360705,
		0.991470, 0.127937, -0.024905,
		32.644218, 35.377575, 28.855009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018639, 35.556091, 28.308424>,  <31.950191, 35.288021, 28.872442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018639, 35.556091, 28.308424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404678, 35.463535, 28.357471>,  <32.636303, 35.408001, 28.386900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404678, 35.463535, 28.357471>,  <32.018639, 35.556091, 28.308424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404678, 35.463535, 28.357471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142933, 0.073112, -0.987028,
		0.219422, 0.970110, 0.103634,
		0.965103, -0.231389, 0.122618,
		32.694210, 35.394119, 28.394257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378117, 36.066486, 27.952944>,  <32.018639, 35.556091, 28.308424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378117, 36.066486, 27.952944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654274, 35.777981, 27.975323>,  <32.819969, 35.604877, 27.988750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654274, 35.777981, 27.975323>,  <32.378117, 36.066486, 27.952944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654274, 35.777981, 27.975323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303318, 0.218390, -0.927526,
		0.656774, 0.657329, 0.369548,
		0.690396, -0.721266, 0.055947,
		32.861393, 35.561600, 27.992107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018425, 36.277683, 27.495108>,  <32.378117, 36.066486, 27.952944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018425, 36.277683, 27.495108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050354, 35.879936, 27.523022>,  <33.069511, 35.641289, 27.539770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050354, 35.879936, 27.523022>,  <33.018425, 36.277683, 27.495108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050354, 35.879936, 27.523022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411423, -0.030901, -0.910920,
		0.907942, 0.101427, 0.406637,
		0.079827, -0.994363, 0.069786,
		33.074303, 35.581627, 27.543957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625492, 36.136333, 27.363907>,  <33.018425, 36.277683, 27.495108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625492, 36.136333, 27.363907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436810, 35.793434, 27.281322>,  <33.323601, 35.587696, 27.231771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436810, 35.793434, 27.281322>,  <33.625492, 36.136333, 27.363907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436810, 35.793434, 27.281322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352727, 0.031148, -0.935208,
		0.808133, -0.513965, 0.287681,
		-0.471704, -0.857245, -0.206461,
		33.295300, 35.536259, 27.219385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125072, 35.711994, 27.110750>,  <33.625492, 36.136333, 27.363907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125072, 35.711994, 27.110750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797485, 35.536411, 26.962910>,  <33.600933, 35.431061, 26.874207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797485, 35.536411, 26.962910>,  <34.125072, 35.711994, 27.110750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797485, 35.536411, 26.962910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387938, 0.051080, -0.920269,
		0.422841, -0.897053, 0.128457,
		-0.818969, -0.438960, -0.369600,
		33.551796, 35.404724, 26.852030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306938, 35.051975, 26.719160>,  <34.125072, 35.711994, 27.110750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306938, 35.051975, 26.719160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938755, 35.146919, 26.594948>,  <33.717846, 35.203884, 26.520420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938755, 35.146919, 26.594948>,  <34.306938, 35.051975, 26.719160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938755, 35.146919, 26.594948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323287, 0.015835, -0.946168,
		-0.219663, -0.971293, -0.091309,
		-0.920453, 0.237357, -0.310528,
		33.662621, 35.218124, 26.501789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158516, 34.608894, 26.154419>,  <34.306938, 35.051975, 26.719160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158516, 34.608894, 26.154419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926151, 34.931000, 26.106930>,  <33.786732, 35.124264, 26.078436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926151, 34.931000, 26.106930>,  <34.158516, 34.608894, 26.154419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926151, 34.931000, 26.106930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172826, -0.020508, -0.984739,
		-0.795406, -0.592566, -0.127256,
		-0.580913, 0.805261, -0.118723,
		33.751877, 35.172577, 26.071314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050610, 34.671509, 25.426409>,  <34.158516, 34.608894, 26.154419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050610, 34.671509, 25.426409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887047, 35.029190, 25.499290>,  <33.788910, 35.243797, 25.543020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887047, 35.029190, 25.499290>,  <34.050610, 34.671509, 25.426409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887047, 35.029190, 25.499290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062614, 0.226682, -0.971954,
		-0.910425, -0.386032, -0.148681,
		-0.408908, 0.894201, 0.182206,
		33.764374, 35.297451, 25.553953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492809, 34.721859, 24.974947>,  <34.050610, 34.671509, 25.426409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492809, 34.721859, 24.974947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609673, 35.089314, 25.081348>,  <33.679790, 35.309784, 25.145189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609673, 35.089314, 25.081348>,  <33.492809, 34.721859, 24.974947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609673, 35.089314, 25.081348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099023, 0.247588, -0.963792,
		-0.951229, 0.307922, -0.018630,
		0.292160, 0.918632, 0.266004,
		33.697319, 35.364902, 25.161150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060444, 35.312508, 24.586094>,  <33.492809, 34.721859, 24.974947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060444, 35.312508, 24.586094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395096, 35.498055, 24.702625>,  <33.595886, 35.609383, 24.772545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395096, 35.498055, 24.702625>,  <33.060444, 35.312508, 24.586094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395096, 35.498055, 24.702625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206125, 0.226150, -0.952034,
		-0.507504, 0.856551, 0.093589,
		0.836631, 0.463870, 0.291329,
		33.646084, 35.637215, 24.790024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021851, 35.853069, 24.195137>,  <33.060444, 35.312508, 24.586094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021851, 35.853069, 24.195137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399914, 35.905704, 24.314713>,  <33.626751, 35.937286, 24.386457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399914, 35.905704, 24.314713>,  <33.021851, 35.853069, 24.195137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399914, 35.905704, 24.314713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214855, 0.438853, -0.872494,
		-0.246003, 0.888871, 0.386511,
		0.945156, 0.131592, 0.298937,
		33.683460, 35.945183, 24.404394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187954, 36.572693, 24.058365>,  <33.021851, 35.853069, 24.195137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187954, 36.572693, 24.058365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518108, 36.346870, 24.057159>,  <33.716202, 36.211376, 24.056437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518108, 36.346870, 24.057159>,  <33.187954, 36.572693, 24.058365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518108, 36.346870, 24.057159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332999, 0.491145, -0.804915,
		0.455903, 0.663362, 0.593382,
		0.825387, -0.564559, -0.003016,
		33.765724, 36.177502, 24.056255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446774, 36.902016, 23.907085>,  <33.187954, 36.572693, 24.058365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446774, 36.902016, 23.907085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328949, 37.284046, 23.920124>,  <32.258255, 37.513264, 23.927948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328949, 37.284046, 23.920124>,  <32.446774, 36.902016, 23.907085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328949, 37.284046, 23.920124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190513, 0.025263, 0.981359,
		0.936449, 0.295283, -0.189396,
		-0.294563, 0.955076, 0.032598,
		32.240582, 37.570568, 23.929903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756317, 37.225567, 24.481245>,  <32.446774, 36.902016, 23.907085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756317, 37.225567, 24.481245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450531, 37.474384, 24.413544>,  <32.267059, 37.623676, 24.372923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450531, 37.474384, 24.413544>,  <32.756317, 37.225567, 24.481245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450531, 37.474384, 24.413544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038544, 0.306179, 0.951193,
		0.643508, 0.720634, -0.258041,
		-0.764468, 0.622046, -0.169252,
		32.221191, 37.660999, 24.362768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855896, 37.985641, 24.560486>,  <32.756317, 37.225567, 24.481245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855896, 37.985641, 24.560486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465809, 37.926003, 24.625881>,  <32.231758, 37.890221, 24.665119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465809, 37.926003, 24.625881>,  <32.855896, 37.985641, 24.560486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465809, 37.926003, 24.625881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131843, 0.201827, 0.970507,
		-0.177692, 0.968007, -0.177167,
		-0.975214, -0.149093, 0.163488,
		32.173244, 37.881275, 24.674927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547932, 38.580055, 24.955265>,  <32.855896, 37.985641, 24.560486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547932, 38.580055, 24.955265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303822, 38.267818, 25.009281>,  <32.157356, 38.080475, 25.041691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303822, 38.267818, 25.009281>,  <32.547932, 38.580055, 24.955265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303822, 38.267818, 25.009281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001722, 0.169160, 0.985587,
		-0.792185, 0.601716, -0.101890,
		-0.610279, -0.780591, 0.135043,
		32.120739, 38.033642, 25.049793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063763, 38.912716, 25.486795>,  <32.547932, 38.580055, 24.955265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063763, 38.912716, 25.486795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010246, 38.516590, 25.501591>,  <31.978136, 38.278915, 25.510468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010246, 38.516590, 25.501591>,  <32.063763, 38.912716, 25.486795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010246, 38.516590, 25.501591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111560, 0.052138, 0.992389,
		-0.984710, 0.128646, -0.117456,
		-0.133791, -0.990319, 0.036989,
		31.970108, 38.219494, 25.512688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482239, 38.861187, 25.896065>,  <32.063763, 38.912716, 25.486795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482239, 38.861187, 25.896065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660915, 38.503498, 25.907547>,  <31.768122, 38.288883, 25.914436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660915, 38.503498, 25.907547>,  <31.482239, 38.861187, 25.896065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660915, 38.503498, 25.907547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039094, 0.012548, 0.999157,
		-0.893833, -0.447439, -0.029354,
		0.446693, -0.894227, 0.028708,
		31.794924, 38.235229, 25.916159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083921, 38.373520, 26.409996>,  <31.482239, 38.861187, 25.896065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083921, 38.373520, 26.409996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433397, 38.187901, 26.351585>,  <31.643084, 38.076530, 26.316540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433397, 38.187901, 26.351585>,  <31.083921, 38.373520, 26.409996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433397, 38.187901, 26.351585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049572, -0.213686, 0.975644,
		-0.483948, -0.859650, -0.163692,
		0.873691, -0.464047, -0.146027,
		31.695505, 38.048687, 26.307777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974312, 37.700405, 26.634577>,  <31.083921, 38.373520, 26.409996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974312, 37.700405, 26.634577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360615, 37.800354, 26.662510>,  <31.592396, 37.860325, 26.679270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360615, 37.800354, 26.662510>,  <30.974312, 37.700405, 26.634577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360615, 37.800354, 26.662510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021541, -0.191012, 0.981351,
		0.258555, -0.949251, -0.179089,
		0.965756, 0.249875, 0.069835,
		31.650341, 37.875317, 26.683460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303869, 37.017902, 26.886625>,  <30.974312, 37.700405, 26.634577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303869, 37.017902, 26.886625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528469, 37.343609, 26.945541>,  <31.663229, 37.539032, 26.980892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528469, 37.343609, 26.945541>,  <31.303869, 37.017902, 26.886625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528469, 37.343609, 26.945541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138464, -0.267949, 0.953431,
		0.815810, -0.514957, -0.263199,
		0.561500, 0.814262, 0.147292,
		31.696918, 37.587887, 26.989729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753838, 36.759655, 27.445885>,  <31.303869, 37.017902, 26.886625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753838, 36.759655, 27.445885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784552, 37.158401, 27.453587>,  <31.802980, 37.397648, 27.458208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784552, 37.158401, 27.453587>,  <31.753838, 36.759655, 27.445885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784552, 37.158401, 27.453587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084388, -0.025743, 0.996100,
		0.993470, -0.074862, -0.086100,
		0.076787, 0.996862, 0.019257,
		31.807589, 37.457458, 27.459364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070747, 36.822674, 28.105589>,  <31.753838, 36.759655, 27.445885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070747, 36.822674, 28.105589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935575, 37.185986, 28.006924>,  <31.854473, 37.403973, 27.947725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935575, 37.185986, 28.006924>,  <32.070747, 36.822674, 28.105589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935575, 37.185986, 28.006924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104479, 0.224257, 0.968913,
		0.935355, 0.353193, 0.019113,
		-0.337927, 0.908275, -0.246661,
		31.834198, 37.458469, 27.932926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578007, 37.326260, 28.270758>,  <32.070747, 36.822674, 28.105589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578007, 37.326260, 28.270758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239815, 37.539856, 28.272751>,  <32.036900, 37.668015, 28.273947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239815, 37.539856, 28.272751>,  <32.578007, 37.326260, 28.270758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239815, 37.539856, 28.272751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194110, 0.298615, 0.934425,
		0.497486, 0.791001, -0.356125,
		-0.845475, 0.533991, 0.004984,
		31.986172, 37.700054, 28.274246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731487, 37.986687, 28.703150>,  <32.578007, 37.326260, 28.270758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731487, 37.986687, 28.703150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335270, 37.931950, 28.699139>,  <32.097538, 37.899109, 28.696732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335270, 37.931950, 28.699139>,  <32.731487, 37.986687, 28.703150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335270, 37.931950, 28.699139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058080, 0.351943, 0.934218,
		-0.124312, 0.925964, -0.356562,
		-0.990542, -0.136843, -0.010029,
		32.038109, 37.890896, 28.696131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346020, 38.551735, 29.017929>,  <32.731487, 37.986687, 28.703150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346020, 38.551735, 29.017929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088558, 38.249435, 29.066177>,  <31.934080, 38.068054, 29.095127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088558, 38.249435, 29.066177>,  <32.346020, 38.551735, 29.017929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088558, 38.249435, 29.066177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103825, 0.242385, 0.964609,
		-0.758238, 0.608355, -0.234479,
		-0.643658, -0.755747, 0.120623,
		31.895460, 38.022713, 29.102364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789637, 38.874825, 29.549276>,  <32.346020, 38.551735, 29.017929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789637, 38.874825, 29.549276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735868, 38.478458, 29.547783>,  <31.703608, 38.240639, 29.546886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735868, 38.478458, 29.547783>,  <31.789637, 38.874825, 29.549276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735868, 38.478458, 29.547783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339656, 0.042535, 0.939588,
		-0.930895, 0.127569, -0.342288,
		-0.134422, -0.990917, -0.003734,
		31.695541, 38.181183, 29.546663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081425, 38.798462, 29.857506>,  <31.789637, 38.874825, 29.549276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081425, 38.798462, 29.857506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230494, 38.427620, 29.873493>,  <31.319935, 38.205116, 29.883085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230494, 38.427620, 29.873493>,  <31.081425, 38.798462, 29.857506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230494, 38.427620, 29.873493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371204, -0.109463, 0.922077,
		-0.850485, -0.358467, -0.384938,
		0.372670, -0.927103, 0.039968,
		31.342295, 38.149490, 29.885483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528849, 38.388340, 29.994635>,  <31.081425, 38.798462, 29.857506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528849, 38.388340, 29.994635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841204, 38.182144, 30.135765>,  <31.028616, 38.058426, 30.220444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841204, 38.182144, 30.135765>,  <30.528849, 38.388340, 29.994635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841204, 38.182144, 30.135765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516331, -0.214733, 0.829031,
		-0.351594, -0.829553, -0.433846,
		0.780886, -0.515491, 0.352825,
		31.075470, 38.027496, 30.241613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285006, 37.842464, 30.245495>,  <30.528849, 38.388340, 29.994635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285006, 37.842464, 30.245495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640764, 37.846046, 30.428314>,  <30.854219, 37.848194, 30.538006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640764, 37.846046, 30.428314>,  <30.285006, 37.842464, 30.245495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640764, 37.846046, 30.428314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424856, -0.352849, 0.833664,
		0.168731, -0.935637, -0.310020,
		0.889398, 0.008951, 0.457048,
		30.907583, 37.848732, 30.565428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324528, 37.279778, 30.814411>,  <30.285006, 37.842464, 30.245495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324528, 37.279778, 30.814411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642048, 37.506790, 30.901855>,  <30.832560, 37.642998, 30.954323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642048, 37.506790, 30.901855>,  <30.324528, 37.279778, 30.814411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642048, 37.506790, 30.901855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296778, 0.047716, 0.953754,
		0.530852, -0.821969, 0.206307,
		0.793800, 0.567530, 0.218612,
		30.880188, 37.677048, 30.967440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762789, 36.915543, 31.270195>,  <30.324528, 37.279778, 30.814411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762789, 36.915543, 31.270195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843845, 37.302624, 31.330177>,  <30.892479, 37.534874, 31.366167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843845, 37.302624, 31.330177>,  <30.762789, 36.915543, 31.270195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843845, 37.302624, 31.330177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166161, -0.116935, 0.979141,
		0.965053, -0.223332, 0.137098,
		0.202642, 0.967703, 0.149957,
		30.904638, 37.592934, 31.375164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859800, 36.939903, 31.999998>,  <30.762789, 36.915543, 31.270195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859800, 36.939903, 31.999998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849539, 37.324856, 31.891804>,  <30.843382, 37.555828, 31.826887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849539, 37.324856, 31.891804>,  <30.859800, 36.939903, 31.999998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849539, 37.324856, 31.891804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007288, 0.270748, 0.962622,
		0.999644, 0.022724, -0.013960,
		-0.025654, 0.962382, -0.270487,
		30.841843, 37.613571, 31.810658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509575, 37.285027, 32.210052>,  <30.859800, 36.939903, 31.999998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509575, 37.285027, 32.210052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198725, 37.536732, 32.206036>,  <31.012215, 37.687756, 32.203625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198725, 37.536732, 32.206036>,  <31.509575, 37.285027, 32.210052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198725, 37.536732, 32.206036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144528, 0.193979, 0.970301,
		0.612524, 0.752595, -0.241692,
		-0.777127, 0.629263, -0.010046,
		30.965586, 37.725510, 32.203022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699221, 37.939358, 32.558064>,  <31.509575, 37.285027, 32.210052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699221, 37.939358, 32.558064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299339, 37.929661, 32.557106>,  <31.059410, 37.923843, 32.556534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299339, 37.929661, 32.557106>,  <31.699221, 37.939358, 32.558064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299339, 37.929661, 32.557106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003931, 0.063633, 0.997966,
		-0.024038, 0.997679, -0.063709,
		-0.999703, -0.024239, -0.002392,
		30.999428, 37.922390, 32.556389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520000, 38.353523, 33.033737>,  <31.699221, 37.939358, 32.558064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520000, 38.353523, 33.033737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154711, 38.199856, 32.979420>,  <30.935537, 38.107655, 32.946831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154711, 38.199856, 32.979420>,  <31.520000, 38.353523, 33.033737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154711, 38.199856, 32.979420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188756, 0.103517, 0.976553,
		-0.361099, 0.917443, -0.167048,
		-0.913224, -0.384164, -0.135793,
		30.880743, 38.084606, 32.938683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956097, 38.867447, 33.444160>,  <31.520000, 38.353523, 33.033737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956097, 38.867447, 33.444160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803356, 38.499222, 33.411297>,  <30.711712, 38.278286, 33.391579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803356, 38.499222, 33.411297>,  <30.956097, 38.867447, 33.444160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803356, 38.499222, 33.411297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302315, 0.040402, 0.952352,
		-0.873382, 0.388494, -0.293728,
		-0.381850, -0.920565, -0.082161,
		30.688801, 38.223053, 33.386650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430096, 38.887775, 33.856335>,  <30.956097, 38.867447, 33.444160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430096, 38.887775, 33.856335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489119, 38.493801, 33.820267>,  <30.524532, 38.257416, 33.798626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489119, 38.493801, 33.820267>,  <30.430096, 38.887775, 33.856335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489119, 38.493801, 33.820267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065538, -0.100706, 0.992755,
		-0.986879, -0.140580, -0.079410,
		0.147559, -0.984934, -0.090172,
		30.533386, 38.198322, 33.793217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845957, 38.600269, 34.131939>,  <30.430096, 38.887775, 33.856335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845957, 38.600269, 34.131939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159327, 38.352131, 34.146988>,  <30.347349, 38.203247, 34.156017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159327, 38.352131, 34.146988>,  <29.845957, 38.600269, 34.131939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159327, 38.352131, 34.146988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072235, -0.030762, 0.996913,
		-0.617272, -0.783726, -0.068910,
		0.783426, -0.620345, 0.037624,
		30.394354, 38.166027, 34.158276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657852, 38.104347, 34.639332>,  <29.845957, 38.600269, 34.131939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657852, 38.104347, 34.639332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047785, 38.041122, 34.576443>,  <30.281744, 38.003189, 34.538712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047785, 38.041122, 34.576443>,  <29.657852, 38.104347, 34.639332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047785, 38.041122, 34.576443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137999, -0.126049, 0.982379,
		-0.175097, -0.979351, -0.101064,
		0.974832, -0.158065, -0.157220,
		30.340235, 37.993706, 34.529278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144091, 37.482552, 34.687202>,  <29.657852, 38.104347, 34.639332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144091, 37.482552, 34.687202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765768, 37.585358, 34.766594>,  <28.538774, 37.647041, 34.814228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765768, 37.585358, 34.766594>,  <29.144091, 37.482552, 34.687202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765768, 37.585358, 34.766594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112037, 0.315404, -0.942320,
		-0.304791, -0.913490, -0.269516,
		-0.945806, 0.257015, 0.198477,
		28.482025, 37.662460, 34.826138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788427, 37.301491, 34.047249>,  <29.144091, 37.482552, 34.687202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788427, 37.301491, 34.047249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534874, 37.560863, 34.215881>,  <28.382742, 37.716488, 34.317059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534874, 37.560863, 34.215881>,  <28.788427, 37.301491, 34.047249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534874, 37.560863, 34.215881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256696, 0.337798, -0.905538,
		-0.729590, -0.682222, -0.047674,
		-0.633882, 0.648433, 0.421578,
		28.344709, 37.755394, 34.342354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172161, 37.242676, 33.624237>,  <28.788427, 37.301491, 34.047249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172161, 37.242676, 33.624237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178986, 37.596809, 33.810097>,  <28.183081, 37.809288, 33.921612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178986, 37.596809, 33.810097>,  <28.172161, 37.242676, 33.624237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178986, 37.596809, 33.810097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151613, 0.461631, -0.874020,
		-0.988293, -0.055533, 0.142105,
		0.017063, 0.885332, 0.464646,
		28.184105, 37.862408, 33.949490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599936, 37.521618, 33.244667>,  <28.172161, 37.242676, 33.624237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599936, 37.521618, 33.244667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771246, 37.831268, 33.431133>,  <27.874031, 38.017059, 33.543015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771246, 37.831268, 33.431133>,  <27.599936, 37.521618, 33.244667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771246, 37.831268, 33.431133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033514, 0.529126, -0.847881,
		-0.903027, 0.347502, 0.252556,
		0.428274, 0.774124, 0.466169,
		27.899729, 38.063507, 33.570984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171801, 38.077606, 33.148643>,  <27.599936, 37.521618, 33.244667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171801, 38.077606, 33.148643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544668, 38.205490, 33.216576>,  <27.768389, 38.282223, 33.257336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544668, 38.205490, 33.216576>,  <27.171801, 38.077606, 33.148643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544668, 38.205490, 33.216576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066045, 0.611433, -0.788535,
		-0.355944, 0.723833, 0.591075,
		0.932170, 0.319712, 0.169830,
		27.824320, 38.301403, 33.267525>
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
