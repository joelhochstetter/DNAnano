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
	<4.305923, 15.271861, 15.295837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481340, 14.955668, 15.124809>,  <4.586591, 14.765953, 15.022192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481340, 14.955668, 15.124809>,  <4.305923, 15.271861, 15.295837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481340, 14.955668, 15.124809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495038, 0.184604, -0.849034,
		0.750078, 0.584003, -0.310362,
		0.438544, -0.790482, -0.427571,
		4.612904, 14.718524, 14.996538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.619167, 15.553052, 14.642047>,  <4.305923, 15.271861, 15.295837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.619167, 15.553052, 14.642047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.495062, 15.172830, 14.636623>,  <4.420600, 14.944696, 14.633369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.495062, 15.172830, 14.636623>,  <4.619167, 15.553052, 14.642047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.495062, 15.172830, 14.636623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508539, 0.178003, -0.842439,
		0.803198, -0.254481, -0.538621,
		-0.310261, -0.950555, -0.013558,
		4.401984, 14.887663, 14.632556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.593754, 15.094832, 13.969784>,  <4.619167, 15.553052, 14.642047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.593754, 15.094832, 13.969784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.286932, 15.073997, 14.225570>,  <4.102839, 15.061495, 14.379041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.286932, 15.073997, 14.225570>,  <4.593754, 15.094832, 13.969784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.286932, 15.073997, 14.225570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609483, 0.370475, -0.700913,
		-0.200395, -0.927381, -0.315922,
		-0.767054, -0.052089, 0.639465,
		4.056816, 15.058370, 14.417409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.749033, 15.109595, 13.194121>,  <4.593754, 15.094832, 13.969784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.749033, 15.109595, 13.194121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.133003, 15.195327, 13.121888>,  <5.363384, 15.246766, 13.078548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.133003, 15.195327, 13.121888>,  <4.749033, 15.109595, 13.194121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.133003, 15.195327, 13.121888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279565, 0.686861, -0.670868,
		-0.019752, 0.694467, 0.719254,
		0.959923, 0.214329, -0.180582,
		5.420980, 15.259625, 13.067714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.844503, 15.852679, 13.305057>,  <4.749033, 15.109595, 13.194121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.844503, 15.852679, 13.305057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.068388, 15.648531, 13.043907>,  <5.202720, 15.526042, 12.887218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.068388, 15.648531, 13.043907>,  <4.844503, 15.852679, 13.305057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.068388, 15.648531, 13.043907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040305, 0.770143, -0.636596,
		0.827706, 0.382625, 0.410489,
		0.559713, -0.510370, -0.652874,
		5.236302, 15.495420, 12.848045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.348054, 16.329409, 13.083555>,  <4.844503, 15.852679, 13.305057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.348054, 16.329409, 13.083555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.346506, 16.052805, 12.794613>,  <5.345577, 15.886843, 12.621247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.346506, 16.052805, 12.794613>,  <5.348054, 16.329409, 13.083555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.346506, 16.052805, 12.794613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147494, 0.714066, -0.684365,
		0.989055, -0.109191, 0.099230,
		-0.003870, -0.691511, -0.722356,
		5.345345, 15.845351, 12.577907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.956142, 16.497885, 12.648770>,  <5.348054, 16.329409, 13.083555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.956142, 16.497885, 12.648770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.702814, 16.277636, 12.431251>,  <5.550817, 16.145487, 12.300738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.702814, 16.277636, 12.431251>,  <5.956142, 16.497885, 12.648770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.702814, 16.277636, 12.431251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180770, 0.577990, -0.795770,
		0.752480, -0.602281, -0.266518,
		-0.633321, -0.550622, -0.543801,
		5.512817, 16.112450, 12.268110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.312324, 16.268887, 12.097485>,  <5.956142, 16.497885, 12.648770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.312324, 16.268887, 12.097485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.929879, 16.242241, 11.983352>,  <5.700413, 16.226254, 11.914872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.929879, 16.242241, 11.983352>,  <6.312324, 16.268887, 12.097485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.929879, 16.242241, 11.983352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211482, 0.517118, -0.829376,
		0.202798, -0.853318, -0.480335,
		-0.956111, -0.066613, -0.285332,
		5.643046, 16.222258, 11.897752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.302859, 16.030376, 11.415732>,  <6.312324, 16.268887, 12.097485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.302859, 16.030376, 11.415732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.946344, 16.205444, 11.463152>,  <5.732435, 16.310484, 11.491604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.946344, 16.205444, 11.463152>,  <6.302859, 16.030376, 11.415732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.946344, 16.205444, 11.463152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110690, 0.463540, -0.879135,
		-0.439722, -0.770439, -0.461593,
		-0.891287, 0.437669, 0.118549,
		5.678958, 16.336744, 11.498716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.051185, 15.975684, 10.728995>,  <6.302859, 16.030376, 11.415732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.051185, 15.975684, 10.728995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.834492, 16.258636, 10.910606>,  <5.704477, 16.428408, 11.019573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.834492, 16.258636, 10.910606>,  <6.051185, 15.975684, 10.728995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.834492, 16.258636, 10.910606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166343, 0.619692, -0.767015,
		-0.823929, -0.339991, -0.453374,
		-0.541731, 0.707381, 0.454027,
		5.671973, 16.470850, 11.046815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.463662, 16.078686, 10.340937>,  <6.051185, 15.975684, 10.728995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.463662, 16.078686, 10.340937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.513011, 16.424133, 10.536462>,  <5.542621, 16.631403, 10.653777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.513011, 16.424133, 10.536462>,  <5.463662, 16.078686, 10.340937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.513011, 16.424133, 10.536462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015359, 0.490856, -0.871105,
		-0.992241, 0.114978, 0.047294,
		0.123373, 0.863620, 0.488814,
		5.550024, 16.683220, 10.683106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.009947, 16.550684, 10.020853>,  <5.463662, 16.078686, 10.340937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.009947, 16.550684, 10.020853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.245560, 16.796371, 10.230911>,  <5.386927, 16.943783, 10.356946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.245560, 16.796371, 10.230911>,  <5.009947, 16.550684, 10.020853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.245560, 16.796371, 10.230911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047409, 0.674992, -0.736301,
		-0.806718, 0.408808, 0.426711,
		0.589032, 0.614217, 0.525146,
		5.422269, 16.980637, 10.388455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.681297, 17.075562, 10.018986>,  <5.009947, 16.550684, 10.020853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.681297, 17.075562, 10.018986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.037160, 17.231363, 10.114312>,  <5.250678, 17.324844, 10.171508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.037160, 17.231363, 10.114312>,  <4.681297, 17.075562, 10.018986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.037160, 17.231363, 10.114312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153615, 0.746783, -0.647084,
		-0.430013, 0.539074, 0.724215,
		0.889658, 0.389505, 0.238317,
		5.304058, 17.348215, 10.185807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.532913, 17.734196, 10.218503>,  <4.681297, 17.075562, 10.018986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.532913, 17.734196, 10.218503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.924855, 17.738514, 10.138735>,  <5.160020, 17.741106, 10.090874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.924855, 17.738514, 10.138735>,  <4.532913, 17.734196, 10.218503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.924855, 17.738514, 10.138735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124370, 0.814270, -0.567006,
		0.156259, 0.580386, 0.799209,
		0.979855, 0.010798, -0.199420,
		5.218811, 17.741753, 10.078909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.757453, 18.449812, 10.305979>,  <4.532913, 17.734196, 10.218503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.757453, 18.449812, 10.305979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.025776, 18.247221, 10.089278>,  <5.186770, 18.125666, 9.959258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.025776, 18.247221, 10.089278>,  <4.757453, 18.449812, 10.305979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.025776, 18.247221, 10.089278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201056, 0.827326, -0.524508,
		0.713857, 0.242923, 0.656808,
		0.670809, -0.506479, -0.541752,
		5.227019, 18.095278, 9.926753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.253504, 18.963013, 10.146035>,  <4.757453, 18.449812, 10.305979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.253504, 18.963013, 10.146035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.365241, 18.689386, 9.876512>,  <5.432283, 18.525209, 9.714797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.365241, 18.689386, 9.876512>,  <5.253504, 18.963013, 10.146035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.365241, 18.689386, 9.876512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338335, 0.726861, -0.597663,
		0.898608, -0.061021, 0.434487,
		0.279342, -0.684068, -0.673810,
		5.449044, 18.484165, 9.674369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.029291, 19.172102, 9.947720>,  <5.253504, 18.963013, 10.146035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.029291, 19.172102, 9.947720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.832982, 18.953953, 9.675923>,  <5.715196, 18.823063, 9.512846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.832982, 18.953953, 9.675923>,  <6.029291, 19.172102, 9.947720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.832982, 18.953953, 9.675923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261126, 0.651955, -0.711876,
		0.831237, -0.526802, -0.177551,
		-0.490773, -0.545375, -0.679491,
		5.685750, 18.790340, 9.472076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.395798, 19.291481, 9.332635>,  <6.029291, 19.172102, 9.947720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.395798, 19.291481, 9.332635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.050457, 19.158052, 9.181187>,  <5.843253, 19.077995, 9.090318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.050457, 19.158052, 9.181187>,  <6.395798, 19.291481, 9.332635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.050457, 19.158052, 9.181187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172442, 0.510123, -0.842638,
		0.474219, -0.792785, -0.382896,
		-0.863354, -0.333568, -0.378619,
		5.791452, 19.057981, 9.067600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.554182, 19.193178, 8.581436>,  <6.395798, 19.291481, 9.332635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.554182, 19.193178, 8.581436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.160050, 19.237558, 8.633307>,  <5.923571, 19.264187, 8.664429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.160050, 19.237558, 8.633307>,  <6.554182, 19.193178, 8.581436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.160050, 19.237558, 8.633307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026479, 0.651244, -0.758407,
		-0.168598, -0.750714, -0.638751,
		-0.985329, 0.110952, 0.129677,
		5.864451, 19.270844, 8.672210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.310096, 19.077942, 7.923790>,  <6.554182, 19.193178, 8.581436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.310096, 19.077942, 7.923790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.013307, 19.261129, 8.119643>,  <5.835233, 19.371042, 8.237155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.013307, 19.261129, 8.119643>,  <6.310096, 19.077942, 7.923790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.013307, 19.261129, 8.119643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037796, 0.757740, -0.651461,
		-0.669364, -0.464861, -0.579531,
		-0.741973, 0.457969, 0.489634,
		5.790715, 19.398520, 8.266533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.787487, 19.289204, 7.419877>,  <6.310096, 19.077942, 7.923790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.787487, 19.289204, 7.419877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.733799, 19.501316, 7.754729>,  <5.701585, 19.628584, 7.955640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.733799, 19.501316, 7.754729>,  <5.787487, 19.289204, 7.419877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.733799, 19.501316, 7.754729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014197, 0.843659, -0.536692,
		-0.990850, -0.083920, -0.105709,
		-0.134222, 0.530281, 0.837130,
		5.693532, 19.660400, 8.005868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.453067, 19.933409, 7.112442>,  <5.787487, 19.289204, 7.419877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.453067, 19.933409, 7.112442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.558619, 20.062218, 7.476127>,  <5.621951, 20.139503, 7.694338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.558619, 20.062218, 7.476127>,  <5.453067, 19.933409, 7.112442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.558619, 20.062218, 7.476127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008189, 0.943338, -0.331732,
		-0.964521, 0.080092, 0.251565,
		0.263880, 0.322023, 0.909213,
		5.637784, 20.158825, 7.748891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.908790, 20.399187, 7.260021>,  <5.453067, 19.933409, 7.112442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.908790, 20.399187, 7.260021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.223128, 20.495703, 7.487784>,  <5.411731, 20.553612, 7.624442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.223128, 20.495703, 7.487784>,  <4.908790, 20.399187, 7.260021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.223128, 20.495703, 7.487784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061928, 0.946818, -0.315755,
		-0.615314, 0.212873, 0.758995,
		0.785846, 0.241292, 0.569408,
		5.458882, 20.568090, 7.658606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.725216, 20.928808, 7.608894>,  <4.908790, 20.399187, 7.260021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.725216, 20.928808, 7.608894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.120744, 20.987576, 7.619116>,  <5.358060, 21.022835, 7.625250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.120744, 20.987576, 7.619116>,  <4.725216, 20.928808, 7.608894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.120744, 20.987576, 7.619116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142674, 0.981916, -0.124442,
		-0.043377, 0.119405, 0.991898,
		0.988819, 0.146916, 0.025556,
		5.417389, 21.031651, 7.626783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.774021, 21.559353, 7.945780>,  <4.725216, 20.928808, 7.608894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.774021, 21.559353, 7.945780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.119426, 21.499464, 7.753145>,  <5.326670, 21.463531, 7.637564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.119426, 21.499464, 7.753145>,  <4.774021, 21.559353, 7.945780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.119426, 21.499464, 7.753145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005491, 0.957652, -0.287877,
		0.504295, 0.245941, 0.827768,
		0.863514, -0.149720, -0.481588,
		5.378480, 21.454548, 7.608668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.170735, 22.171017, 8.149514>,  <4.774021, 21.559353, 7.945780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.170735, 22.171017, 8.149514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.330660, 22.026743, 7.812456>,  <5.426616, 21.940178, 7.610220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.330660, 22.026743, 7.812456>,  <5.170735, 22.171017, 8.149514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.330660, 22.026743, 7.812456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122321, 0.932095, -0.340934,
		0.908398, 0.033237, 0.416784,
		0.399814, -0.360685, -0.842647,
		5.450604, 21.918537, 7.559661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.823508, 22.681576, 7.925393>,  <5.170735, 22.171017, 8.149514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.823508, 22.681576, 7.925393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.695864, 22.521141, 7.581928>,  <5.619277, 22.424881, 7.375850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.695864, 22.521141, 7.581928>,  <5.823508, 22.681576, 7.925393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.695864, 22.521141, 7.581928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406279, 0.760658, -0.506296,
		0.856216, -0.510421, -0.079782,
		-0.319111, -0.401085, -0.858661,
		5.600130, 22.400816, 7.324330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.314071, 22.572927, 7.362957>,  <5.823508, 22.681576, 7.925393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.314071, 22.572927, 7.362957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.934942, 22.650133, 7.261466>,  <5.707465, 22.696457, 7.200571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.934942, 22.650133, 7.261466>,  <6.314071, 22.572927, 7.362957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.934942, 22.650133, 7.261466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268751, 0.911873, -0.310260,
		0.171482, -0.362261, -0.916166,
		-0.947822, 0.193016, -0.253728,
		5.650596, 22.708038, 7.185348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.959154, 22.697094, 7.060606>,  <6.314071, 22.572927, 7.362957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.959154, 22.697094, 7.060606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.259603, 22.910480, 7.216160>,  <7.439872, 23.038511, 7.309492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.259603, 22.910480, 7.216160>,  <6.959154, 22.697094, 7.060606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.259603, 22.910480, 7.216160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600992, 0.308806, 0.737189,
		0.273165, -0.787442, 0.552554,
		0.751125, 0.533454, 0.388892,
		7.484940, 23.070520, 7.332825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.054660, 23.433735, 7.166624>,  <6.959154, 22.697094, 7.060606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.054660, 23.433735, 7.166624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.131233, 23.729885, 7.424368>,  <7.177177, 23.907576, 7.579014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.131233, 23.729885, 7.424368>,  <7.054660, 23.433735, 7.166624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.131233, 23.729885, 7.424368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914718, 0.372608, -0.156377,
		-0.355871, -0.559473, 0.748563,
		0.191432, 0.740374, 0.644360,
		7.188663, 23.951998, 7.617676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.207835, 23.377489, 7.923087>,  <7.054660, 23.433735, 7.166624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.207835, 23.377489, 7.923087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.446843, 23.356474, 8.243139>,  <7.590248, 23.343864, 8.435170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.446843, 23.356474, 8.243139>,  <7.207835, 23.377489, 7.923087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.446843, 23.356474, 8.243139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454163, 0.800190, 0.391703,
		-0.660837, -0.597440, 0.454269,
		0.597521, -0.052540, 0.800130,
		7.626100, 23.340712, 8.483178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.788955, 23.403172, 8.459300>,  <7.207835, 23.377489, 7.923087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.788955, 23.403172, 8.459300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.139534, 23.504602, 8.623026>,  <7.349882, 23.565460, 8.721261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.139534, 23.504602, 8.623026>,  <6.788955, 23.403172, 8.459300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.139534, 23.504602, 8.623026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473669, 0.606720, 0.638380,
		-0.086462, -0.753386, 0.651869,
		0.876449, 0.253574, 0.409314,
		7.402469, 23.580675, 8.745820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.922449, 23.226849, 9.205064>,  <6.788955, 23.403172, 8.459300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.922449, 23.226849, 9.205064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.113010, 23.564978, 9.108340>,  <7.227347, 23.767855, 9.050306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.113010, 23.564978, 9.108340>,  <6.922449, 23.226849, 9.205064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.113010, 23.564978, 9.108340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474804, 0.478823, 0.738438,
		0.740001, -0.236981, 0.629474,
		0.476403, 0.845321, -0.241810,
		7.255931, 23.818575, 9.035797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.319562, 23.542936, 9.752933>,  <6.922449, 23.226849, 9.205064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.319562, 23.542936, 9.752933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.236704, 23.850653, 9.511179>,  <7.186989, 24.035282, 9.366127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.236704, 23.850653, 9.511179>,  <7.319562, 23.542936, 9.752933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.236704, 23.850653, 9.511179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436295, 0.480303, 0.760891,
		0.875635, 0.421305, 0.236146,
		-0.207146, 0.769292, -0.604384,
		7.174560, 24.081440, 9.329864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.847098, 23.054159, 9.894125>,  <7.319562, 23.542936, 9.752933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.847098, 23.054159, 9.894125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.566300, 22.818359, 10.053972>,  <7.397821, 22.676880, 10.149880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.566300, 22.818359, 10.053972>,  <7.847098, 23.054159, 9.894125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.566300, 22.818359, 10.053972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677913, -0.725070, 0.121275,
		0.218260, 0.356040, 0.908624,
		-0.701995, -0.589499, 0.399618,
		7.355701, 22.641510, 10.173858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.207598, 22.465120, 10.075568>,  <7.847098, 23.054159, 9.894125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.207598, 22.465120, 10.075568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.833395, 22.339949, 10.141173>,  <7.608873, 22.264845, 10.180536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.833395, 22.339949, 10.141173>,  <8.207598, 22.465120, 10.075568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.833395, 22.339949, 10.141173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345596, -0.906970, 0.240766,
		0.073412, 0.281921, 0.956625,
		-0.935507, -0.312931, 0.164014,
		7.552742, 22.246069, 10.190377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.171798, 22.217409, 10.692902>,  <8.207598, 22.465120, 10.075568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.171798, 22.217409, 10.692902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.854905, 22.042814, 10.522329>,  <7.664769, 21.938057, 10.419986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.854905, 22.042814, 10.522329>,  <8.171798, 22.217409, 10.692902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.854905, 22.042814, 10.522329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421310, -0.896780, 0.135214,
		-0.441435, -0.072539, 0.894356,
		-0.792233, -0.436489, -0.426431,
		7.617235, 21.911867, 10.394400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.784701, 21.646124, 11.160708>,  <8.171798, 22.217409, 10.692902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.784701, 21.646124, 11.160708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.714954, 21.567905, 10.774681>,  <7.673106, 21.520975, 10.543064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.714954, 21.567905, 10.774681>,  <7.784701, 21.646124, 11.160708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.714954, 21.567905, 10.774681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419534, -0.901429, 0.106851,
		-0.890835, -0.386248, 0.239218,
		-0.174367, -0.195547, -0.965069,
		7.662644, 21.509241, 10.485161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.393274, 21.002438, 11.249714>,  <7.784701, 21.646124, 11.160708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.393274, 21.002438, 11.249714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.534782, 21.011377, 10.875688>,  <7.619687, 21.016741, 10.651272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.534782, 21.011377, 10.875688>,  <7.393274, 21.002438, 11.249714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.534782, 21.011377, 10.875688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190838, -0.980410, 0.048768,
		-0.915658, -0.195698, -0.351103,
		0.353769, 0.022350, -0.935066,
		7.640913, 21.018082, 10.595168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.271231, 20.385231, 11.028673>,  <7.393274, 21.002438, 11.249714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.271231, 20.385231, 11.028673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.484076, 20.504148, 10.711568>,  <7.611783, 20.575499, 10.521305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.484076, 20.504148, 10.711568>,  <7.271231, 20.385231, 11.028673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.484076, 20.504148, 10.711568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277093, -0.945911, -0.168734,
		-0.800047, -0.129884, -0.585709,
		0.532113, 0.297291, -0.792764,
		7.643709, 20.593336, 10.473739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.021794, 19.955898, 10.357040>,  <7.271231, 20.385231, 11.028673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.021794, 19.955898, 10.357040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.400321, 20.082512, 10.330831>,  <7.627436, 20.158480, 10.315104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.400321, 20.082512, 10.330831>,  <7.021794, 19.955898, 10.357040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.400321, 20.082512, 10.330831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309340, -0.945623, -0.100523,
		-0.093779, 0.074858, -0.992775,
		0.946316, 0.316532, -0.065524,
		7.684216, 20.177471, 10.311173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.349987, 19.567951, 9.824293>,  <7.021794, 19.955898, 10.357040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.349987, 19.567951, 9.824293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.659464, 19.695730, 10.043145>,  <7.845150, 19.772398, 10.174457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.659464, 19.695730, 10.043145>,  <7.349987, 19.567951, 9.824293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.659464, 19.695730, 10.043145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338297, -0.938466, 0.069553,
		0.535681, 0.131280, -0.834153,
		0.773693, 0.319450, 0.547130,
		7.891572, 19.791565, 10.207284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.846961, 19.127939, 9.564669>,  <7.349987, 19.567951, 9.824293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.846961, 19.127939, 9.564669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.971427, 19.277922, 9.913973>,  <8.046106, 19.367910, 10.123555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.971427, 19.277922, 9.913973>,  <7.846961, 19.127939, 9.564669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.971427, 19.277922, 9.913973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364567, -0.895674, 0.254674,
		0.877649, 0.239117, -0.415398,
		0.311165, 0.374955, 0.873261,
		8.064776, 19.390408, 10.175951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.396530, 18.834116, 9.818213>,  <7.846961, 19.127939, 9.564669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.396530, 18.834116, 9.818213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.293497, 18.990156, 10.171818>,  <8.231677, 19.083780, 10.383980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.293497, 18.990156, 10.171818>,  <8.396530, 18.834116, 9.818213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.293497, 18.990156, 10.171818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205977, -0.871685, 0.444679,
		0.944047, 0.296628, 0.144180,
		-0.257583, 0.390100, 0.884010,
		8.216222, 19.107185, 10.437020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.010981, 18.775637, 10.326818>,  <8.396530, 18.834116, 9.818213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.010981, 18.775637, 10.326818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.707799, 18.831247, 10.581747>,  <8.525890, 18.864613, 10.734704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.707799, 18.831247, 10.581747>,  <9.010981, 18.775637, 10.326818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.707799, 18.831247, 10.581747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181628, -0.893408, 0.410894,
		0.626513, 0.427194, 0.651910,
		-0.757953, 0.139026, 0.637322,
		8.480413, 18.872955, 10.772943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.227798, 18.515898, 11.040978>,  <9.010981, 18.775637, 10.326818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.227798, 18.515898, 11.040978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.831209, 18.525648, 10.989769>,  <8.593256, 18.531498, 10.959044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.831209, 18.525648, 10.989769>,  <9.227798, 18.515898, 11.040978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.831209, 18.525648, 10.989769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082404, -0.878316, 0.470925,
		-0.100966, 0.477459, 0.872834,
		-0.991471, 0.024378, -0.128025,
		8.533768, 18.532961, 10.951362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.130808, 18.087170, 11.606532>,  <9.227798, 18.515898, 11.040978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.130808, 18.087170, 11.606532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775653, 18.074295, 11.422958>,  <8.562560, 18.066570, 11.312815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775653, 18.074295, 11.422958>,  <9.130808, 18.087170, 11.606532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.775653, 18.074295, 11.422958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063209, -0.979555, 0.190986,
		-0.455698, 0.198583, 0.867701,
		-0.887888, -0.032186, -0.458934,
		8.509287, 18.064640, 11.285278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.684829, 17.752775, 12.059740>,  <9.130808, 18.087170, 11.606532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.684829, 17.752775, 12.059740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.509846, 17.720406, 11.701504>,  <8.404856, 17.700983, 11.486562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.509846, 17.720406, 11.701504>,  <8.684829, 17.752775, 12.059740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.509846, 17.720406, 11.701504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136343, -0.978459, 0.155011,
		-0.888843, 0.189919, 0.417000,
		-0.437457, -0.080926, -0.895590,
		8.378609, 17.696129, 11.432827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.012227, 17.485113, 12.142256>,  <8.684829, 17.752775, 12.059740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.012227, 17.485113, 12.142256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.088738, 17.417700, 11.755472>,  <8.134645, 17.377253, 11.523402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.088738, 17.417700, 11.755472>,  <8.012227, 17.485113, 12.142256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.088738, 17.417700, 11.755472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272319, -0.955586, 0.112683,
		-0.943003, 0.241768, -0.228678,
		0.191278, -0.168533, -0.966959,
		8.146122, 17.367140, 11.465384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.400677, 17.285921, 11.804984>,  <8.012227, 17.485113, 12.142256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.400677, 17.285921, 11.804984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.687342, 17.148035, 11.562475>,  <7.859342, 17.065304, 11.416970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.687342, 17.148035, 11.562475>,  <7.400677, 17.285921, 11.804984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.687342, 17.148035, 11.562475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363113, -0.926617, 0.097624,
		-0.595434, 0.150182, -0.789242,
		0.716664, -0.344713, -0.606272,
		7.902341, 17.044621, 11.380593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.123394, 16.950239, 11.296556>,  <7.400677, 17.285921, 11.804984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.123394, 16.950239, 11.296556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.484423, 16.778028, 11.297897>,  <7.701040, 16.674702, 11.298701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.484423, 16.778028, 11.297897>,  <7.123394, 16.950239, 11.296556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.484423, 16.778028, 11.297897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426369, -0.894887, -0.131854,
		0.059766, 0.117579, -0.991263,
		0.902572, -0.430525, 0.003351,
		7.755195, 16.648870, 11.298903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.021173, 16.394987, 10.961480>,  <7.123394, 16.950239, 11.296556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.021173, 16.394987, 10.961480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.366394, 16.290462, 11.134388>,  <7.573526, 16.227747, 11.238132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.366394, 16.290462, 11.134388>,  <7.021173, 16.394987, 10.961480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.366394, 16.290462, 11.134388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271522, -0.961633, -0.039209,
		0.425930, -0.083531, -0.900892,
		0.863053, -0.261312, 0.432269,
		7.625309, 16.212069, 11.264069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.163292, 15.750150, 10.680115>,  <7.021173, 16.394987, 10.961480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.163292, 15.750150, 10.680115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.416705, 15.768148, 10.989078>,  <7.568753, 15.778948, 11.174456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.416705, 15.768148, 10.989078>,  <7.163292, 15.750150, 10.680115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.416705, 15.768148, 10.989078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021973, -0.998951, 0.040173,
		0.773405, -0.008479, -0.633856,
		0.633532, 0.044998, 0.772407,
		7.606765, 15.781648, 11.220799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.754518, 15.359845, 10.466806>,  <7.163292, 15.750150, 10.680115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.754518, 15.359845, 10.466806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.738232, 15.353428, 10.866424>,  <7.728461, 15.349578, 11.106194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.738232, 15.353428, 10.866424>,  <7.754518, 15.359845, 10.466806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.738232, 15.353428, 10.866424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011924, -0.999792, -0.016540,
		0.999100, -0.012586, 0.040515,
		-0.040714, -0.016042, 0.999042,
		7.726017, 15.348616, 11.166136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.179295, 14.854764, 10.634183>,  <7.754518, 15.359845, 10.466806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.179295, 14.854764, 10.634183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.952222, 14.909905, 10.958833>,  <7.815979, 14.942990, 11.153623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.952222, 14.909905, 10.958833>,  <8.179295, 14.854764, 10.634183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.952222, 14.909905, 10.958833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106164, -0.989907, 0.093881,
		0.816375, -0.032871, 0.576586,
		-0.567681, 0.137854, 0.811625,
		7.781918, 14.951262, 11.202320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.420205, 14.319798, 11.032652>,  <8.179295, 14.854764, 10.634183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.420205, 14.319798, 11.032652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.050596, 14.412089, 11.154600>,  <7.828831, 14.467464, 11.227769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.050596, 14.412089, 11.154600>,  <8.420205, 14.319798, 11.032652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.050596, 14.412089, 11.154600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224733, -0.972859, 0.055137,
		0.309317, -0.017567, 0.950797,
		-0.924023, 0.230731, 0.304870,
		7.773389, 14.481309, 11.246061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.303360, 14.012633, 11.747584>,  <8.420205, 14.319798, 11.032652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.303360, 14.012633, 11.747584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.961617, 14.067939, 11.547202>,  <7.756572, 14.101122, 11.426972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.961617, 14.067939, 11.547202>,  <8.303360, 14.012633, 11.747584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.961617, 14.067939, 11.547202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085232, -0.988185, -0.127378,
		-0.512649, -0.066129, 0.856048,
		-0.854357, 0.138263, -0.500956,
		7.705310, 14.109418, 11.396915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.617183, 13.223794, 11.757051>,  <8.303360, 14.012633, 11.747584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.617183, 13.223794, 11.757051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.989684, 13.322286, 11.649618>,  <9.213185, 13.381381, 11.585158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.989684, 13.322286, 11.649618>,  <8.617183, 13.223794, 11.757051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.989684, 13.322286, 11.649618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046637, 0.650503, 0.758070,
		0.361372, -0.718482, 0.594301,
		0.931254, 0.246229, -0.268582,
		9.269060, 13.396154, 11.569043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.083689, 13.172688, 12.380818>,  <8.617183, 13.223794, 11.757051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.083689, 13.172688, 12.380818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.219905, 13.432770, 12.109152>,  <9.301635, 13.588819, 11.946152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.219905, 13.432770, 12.109152>,  <9.083689, 13.172688, 12.380818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.219905, 13.432770, 12.109152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083546, 0.698558, 0.710660,
		0.936511, -0.298749, 0.183565,
		0.340540, 0.650205, -0.679166,
		9.322067, 13.627831, 11.905402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.470603, 13.426429, 12.796219>,  <9.083689, 13.172688, 12.380818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.470603, 13.426429, 12.796219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.404795, 13.691038, 12.503556>,  <9.365310, 13.849804, 12.327959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.404795, 13.691038, 12.503556>,  <9.470603, 13.426429, 12.796219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.404795, 13.691038, 12.503556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101937, 0.726388, 0.679683,
		0.981092, 0.186404, -0.052072,
		-0.164521, 0.661523, -0.731656,
		9.355438, 13.889495, 12.284060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.909822, 14.133048, 12.793041>,  <9.470603, 13.426429, 12.796219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.909822, 14.133048, 12.793041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.558767, 14.187146, 12.609099>,  <9.348135, 14.219605, 12.498734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.558767, 14.187146, 12.609099>,  <9.909822, 14.133048, 12.793041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.558767, 14.187146, 12.609099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114937, 0.872001, 0.475820,
		0.465346, 0.470450, -0.749753,
		-0.877635, 0.135246, -0.459854,
		9.295477, 14.227720, 12.471143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.837939, 14.821879, 12.441458>,  <9.909822, 14.133048, 12.793041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.837939, 14.821879, 12.441458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.498648, 14.680568, 12.599295>,  <9.295073, 14.595781, 12.693996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.498648, 14.680568, 12.599295>,  <9.837939, 14.821879, 12.441458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.498648, 14.680568, 12.599295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082036, 0.823678, 0.561092,
		-0.523238, 0.443563, -0.727649,
		-0.848228, -0.353279, 0.394592,
		9.244179, 14.574584, 12.717672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.238250, 15.343511, 12.496332>,  <9.837939, 14.821879, 12.441458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.238250, 15.343511, 12.496332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.208702, 15.078115, 12.794145>,  <9.190973, 14.918879, 12.972832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.208702, 15.078115, 12.794145>,  <9.238250, 15.343511, 12.496332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.208702, 15.078115, 12.794145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054890, 0.742734, 0.667334,
		-0.995756, 0.090163, -0.018447,
		-0.073870, -0.663489, 0.744531,
		9.186542, 14.879068, 13.017504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.730752, 15.528673, 12.966436>,  <9.238250, 15.343511, 12.496332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.730752, 15.528673, 12.966436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.005550, 15.316536, 13.165141>,  <9.170429, 15.189254, 13.284364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.005550, 15.316536, 13.165141>,  <8.730752, 15.528673, 12.966436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.005550, 15.316536, 13.165141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076747, 0.732754, 0.676152,
		-0.722597, -0.426389, 0.544101,
		0.686996, -0.530343, 0.496761,
		9.211649, 15.157433, 13.314170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.468628, 15.432931, 13.729459>,  <8.730752, 15.528673, 12.966436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.468628, 15.432931, 13.729459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.865462, 15.402394, 13.689588>,  <9.103563, 15.384072, 13.665665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.865462, 15.402394, 13.689588>,  <8.468628, 15.432931, 13.729459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.865462, 15.402394, 13.689588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125541, 0.613822, 0.779398,
		0.001683, -0.785744, 0.618549,
		0.992087, -0.076342, -0.099677,
		9.163089, 15.379492, 13.659684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.705993, 15.280982, 14.453409>,  <8.468628, 15.432931, 13.729459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.705993, 15.280982, 14.453409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.056052, 15.375849, 14.284714>,  <9.266088, 15.432769, 14.183496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.056052, 15.375849, 14.284714>,  <8.705993, 15.280982, 14.453409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.056052, 15.375849, 14.284714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297734, 0.423110, 0.855764,
		0.381399, -0.874489, 0.299673,
		0.875151, 0.237165, -0.421739,
		9.318597, 15.447000, 14.158192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.226944, 15.008569, 14.878510>,  <8.705993, 15.280982, 14.453409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.226944, 15.008569, 14.878510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.378119, 15.325690, 14.687252>,  <9.468823, 15.515964, 14.572496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.378119, 15.325690, 14.687252>,  <9.226944, 15.008569, 14.878510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.378119, 15.325690, 14.687252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363874, 0.347696, 0.864120,
		0.851328, -0.500568, -0.157074,
		0.377937, 0.792805, -0.478147,
		9.491500, 15.563532, 14.543808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.819587, 15.058326, 15.183961>,  <9.226944, 15.008569, 14.878510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.819587, 15.058326, 15.183961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.802387, 15.422016, 15.018332>,  <9.792068, 15.640230, 14.918954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.802387, 15.422016, 15.018332>,  <9.819587, 15.058326, 15.183961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.802387, 15.422016, 15.018332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343613, 0.402632, 0.848421,
		0.938126, -0.105800, -0.329735,
		-0.042999, 0.909227, -0.414074,
		9.789488, 15.694784, 14.894110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318586, 15.293178, 15.487983>,  <9.819587, 15.058326, 15.183961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318586, 15.293178, 15.487983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.166352, 15.621301, 15.317220>,  <10.075011, 15.818174, 15.214762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.166352, 15.621301, 15.317220>,  <10.318586, 15.293178, 15.487983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.166352, 15.621301, 15.317220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425526, 0.565220, 0.706721,
		0.821025, 0.087308, -0.564177,
		-0.380586, 0.820307, -0.426908,
		10.052176, 15.867393, 15.189147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.956918, 15.795135, 15.372485>,  <10.318586, 15.293178, 15.487983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.956918, 15.795135, 15.372485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.595656, 15.966858, 15.371201>,  <10.378900, 16.069891, 15.370430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.595656, 15.966858, 15.371201>,  <10.956918, 15.795135, 15.372485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.595656, 15.966858, 15.371201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245508, 0.522596, 0.816468,
		0.352194, 0.736607, -0.577383,
		-0.903153, 0.429306, -0.003213,
		10.324711, 16.095650, 15.370236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204305, 16.451498, 15.362761>,  <10.956918, 15.795135, 15.372485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204305, 16.451498, 15.362761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.822226, 16.401676, 15.470156>,  <10.592978, 16.371784, 15.534593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.822226, 16.401676, 15.470156>,  <11.204305, 16.451498, 15.362761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.822226, 16.401676, 15.470156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171380, 0.506823, 0.844842,
		-0.241302, 0.853005, -0.462770,
		-0.955197, -0.124553, 0.268486,
		10.535666, 16.364311, 15.550701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.916262, 17.064857, 15.442512>,  <11.204305, 16.451498, 15.362761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.916262, 17.064857, 15.442512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.712083, 16.815498, 15.679430>,  <10.589576, 16.665882, 15.821581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.712083, 16.815498, 15.679430>,  <10.916262, 17.064857, 15.442512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.712083, 16.815498, 15.679430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269311, 0.538243, 0.798602,
		-0.816648, 0.567157, -0.106857,
		-0.510448, -0.623399, 0.592297,
		10.558949, 16.628479, 15.857120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.764515, 17.467566, 15.978115>,  <10.916262, 17.064857, 15.442512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.764515, 17.467566, 15.978115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.673886, 17.108984, 16.130447>,  <10.619509, 16.893835, 16.221848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.673886, 17.108984, 16.130447>,  <10.764515, 17.467566, 15.978115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.673886, 17.108984, 16.130447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209067, 0.337123, 0.917953,
		-0.951292, 0.287602, 0.111037,
		-0.226572, -0.896456, 0.380831,
		10.605915, 16.840048, 16.244698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.401773, 17.613785, 16.709541>,  <10.764515, 17.467566, 15.978115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.401773, 17.613785, 16.709541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.518057, 17.231077, 16.705900>,  <10.587827, 17.001453, 16.703714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.518057, 17.231077, 16.705900>,  <10.401773, 17.613785, 16.709541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.518057, 17.231077, 16.705900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119750, 0.026941, 0.992438,
		-0.949289, -0.289600, 0.122405,
		0.290708, -0.956768, -0.009105,
		10.605269, 16.944046, 16.703169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.195284, 17.323071, 17.303034>,  <10.401773, 17.613785, 16.709541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.195284, 17.323071, 17.303034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.455256, 17.041409, 17.188663>,  <10.611240, 16.872412, 17.120041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.455256, 17.041409, 17.188663>,  <10.195284, 17.323071, 17.303034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.455256, 17.041409, 17.188663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271849, -0.135931, 0.952691,
		-0.709709, -0.696914, 0.103078,
		0.649932, -0.704155, -0.285927,
		10.650236, 16.830162, 17.102886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.100494, 16.713947, 17.769913>,  <10.195284, 17.323071, 17.303034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.100494, 16.713947, 17.769913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.470918, 16.678156, 17.623264>,  <10.693172, 16.656681, 17.535275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.470918, 16.678156, 17.623264>,  <10.100494, 16.713947, 17.769913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.470918, 16.678156, 17.623264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353982, -0.130823, 0.926057,
		-0.130823, -0.987360, -0.089476,
		-0.926057, 0.089476, 0.366622,
		10.748734, 16.651314, 17.513277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.338595, 16.226532, 18.155699>,  <10.100494, 16.713947, 17.769913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.338595, 16.226532, 18.155699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.693625, 16.345280, 18.014801>,  <10.906644, 16.416529, 17.930262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.693625, 16.345280, 18.014801>,  <10.338595, 16.226532, 18.155699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.693625, 16.345280, 18.014801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430183, -0.260626, 0.864301,
		0.164782, -0.918663, -0.359034,
		0.887575, 0.296872, -0.352246,
		10.959898, 16.434341, 17.909126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.815281, 15.703426, 18.400351>,  <10.338595, 16.226532, 18.155699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.815281, 15.703426, 18.400351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038410, 16.025536, 18.319983>,  <11.172288, 16.218801, 18.271761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038410, 16.025536, 18.319983>,  <10.815281, 15.703426, 18.400351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.038410, 16.025536, 18.319983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512738, -0.144002, 0.846382,
		0.652635, -0.575152, -0.493221,
		0.557823, 0.805273, -0.200922,
		11.205757, 16.267117, 18.259706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.390668, 15.549686, 18.763851>,  <10.815281, 15.703426, 18.400351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.390668, 15.549686, 18.763851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.440261, 15.944283, 18.721029>,  <11.470016, 16.181042, 18.695335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.440261, 15.944283, 18.721029>,  <11.390668, 15.549686, 18.763851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.440261, 15.944283, 18.721029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361715, 0.055533, 0.930633,
		0.924008, -0.154107, -0.349944,
		0.123983, 0.986492, -0.107055,
		11.477456, 16.240231, 18.688913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974513, 15.749037, 19.133026>,  <11.390668, 15.549686, 18.763851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974513, 15.749037, 19.133026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.812493, 16.113987, 19.109337>,  <11.715281, 16.332956, 19.095123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.812493, 16.113987, 19.109337>,  <11.974513, 15.749037, 19.133026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.812493, 16.113987, 19.109337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398277, 0.234381, 0.886815,
		0.822988, 0.335617, -0.458314,
		-0.405050, 0.912374, -0.059224,
		11.690978, 16.387699, 19.091570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.465648, 16.191782, 19.378696>,  <11.974513, 15.749037, 19.133026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.465648, 16.191782, 19.378696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.119883, 16.382278, 19.443176>,  <11.912423, 16.496576, 19.481865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.119883, 16.382278, 19.443176>,  <12.465648, 16.191782, 19.378696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.119883, 16.382278, 19.443176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399773, 0.456590, 0.794800,
		0.304912, 0.751480, -0.585070,
		-0.864413, 0.476239, 0.161202,
		11.860559, 16.525150, 19.491537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.761972, 16.820408, 19.473999>,  <12.465648, 16.191782, 19.378696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.761972, 16.820408, 19.473999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.392544, 16.817869, 19.627348>,  <12.170887, 16.816345, 19.719358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.392544, 16.817869, 19.627348>,  <12.761972, 16.820408, 19.473999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.392544, 16.817869, 19.627348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346210, 0.415910, 0.840927,
		-0.164787, 0.909384, -0.381924,
		-0.923571, -0.006348, 0.383374,
		12.115473, 16.815966, 19.742361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720949, 17.413338, 19.920141>,  <12.761972, 16.820408, 19.473999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720949, 17.413338, 19.920141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.405896, 17.190035, 20.024435>,  <12.216865, 17.056053, 20.087011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.405896, 17.190035, 20.024435>,  <12.720949, 17.413338, 19.920141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.405896, 17.190035, 20.024435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126002, 0.268289, 0.955063,
		-0.603124, 0.785092, -0.140972,
		-0.787633, -0.558258, 0.260734,
		12.169606, 17.022558, 20.102655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358212, 17.919647, 20.387770>,  <12.720949, 17.413338, 19.920141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358212, 17.919647, 20.387770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183792, 17.565086, 20.449926>,  <12.079140, 17.352350, 20.487221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183792, 17.565086, 20.449926>,  <12.358212, 17.919647, 20.387770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.183792, 17.565086, 20.449926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108175, 0.223049, 0.968786,
		-0.893397, 0.405631, -0.193148,
		-0.436051, -0.886404, 0.155392,
		12.052977, 17.299166, 20.496544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831074, 18.100765, 20.726061>,  <12.358212, 17.919647, 20.387770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831074, 18.100765, 20.726061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881987, 17.718546, 20.832441>,  <11.912534, 17.489214, 20.896269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881987, 17.718546, 20.832441>,  <11.831074, 18.100765, 20.726061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.881987, 17.718546, 20.832441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002958, 0.268494, 0.963277,
		-0.991862, -0.121820, 0.037001,
		0.127281, -0.955547, 0.265949,
		11.920171, 17.431881, 20.912226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.375625, 17.969801, 21.281008>,  <11.831074, 18.100765, 20.726061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.375625, 17.969801, 21.281008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607290, 17.644306, 21.300610>,  <11.746290, 17.449009, 21.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607290, 17.644306, 21.300610>,  <11.375625, 17.969801, 21.281008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.607290, 17.644306, 21.300610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127216, -0.030839, 0.991395,
		-0.805223, -0.580415, -0.121381,
		0.579165, -0.813736, 0.049006,
		11.781040, 17.400185, 21.315311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.967631, 17.432234, 21.657570>,  <11.375625, 17.969801, 21.281008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.967631, 17.432234, 21.657570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.364251, 17.383957, 21.676605>,  <11.602222, 17.354990, 21.688026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.364251, 17.383957, 21.676605>,  <10.967631, 17.432234, 21.657570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.364251, 17.383957, 21.676605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031391, 0.132735, 0.990654,
		-0.125883, -0.983776, 0.127825,
		0.991549, -0.120694, 0.047590,
		11.661716, 17.347750, 21.690882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.113441, 16.995993, 22.197151>,  <10.967631, 17.432234, 21.657570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.113441, 16.995993, 22.197151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.448868, 17.211239, 22.163126>,  <11.650124, 17.340387, 22.142710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.448868, 17.211239, 22.163126>,  <11.113441, 16.995993, 22.197151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.448868, 17.211239, 22.163126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014821, 0.133547, 0.990932,
		0.544597, -0.832223, 0.104012,
		0.838567, 0.538117, -0.085064,
		11.700438, 17.372675, 22.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.585203, 16.753605, 22.689926>,  <11.113441, 16.995993, 22.197151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.585203, 16.753605, 22.689926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716031, 17.118898, 22.592745>,  <11.794528, 17.338076, 22.534437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716031, 17.118898, 22.592745>,  <11.585203, 16.753605, 22.689926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.716031, 17.118898, 22.592745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222267, 0.175537, 0.959054,
		0.918489, -0.367678, -0.145569,
		0.327070, 0.913236, -0.242951,
		11.814152, 17.392870, 22.519859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.146377, 16.922060, 23.117729>,  <11.585203, 16.753605, 22.689926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.146377, 16.922060, 23.117729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064948, 17.286678, 22.974821>,  <12.016090, 17.505449, 22.889076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064948, 17.286678, 22.974821>,  <12.146377, 16.922060, 23.117729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.064948, 17.286678, 22.974821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114929, 0.384637, 0.915885,
		0.972291, 0.145389, -0.183064,
		-0.203573, 0.911546, -0.357270,
		12.003877, 17.560143, 22.867640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.675469, 17.425110, 23.338604>,  <12.146377, 16.922060, 23.117729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.675469, 17.425110, 23.338604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.339135, 17.632086, 23.275042>,  <12.137335, 17.756271, 23.236904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.339135, 17.632086, 23.275042>,  <12.675469, 17.425110, 23.338604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339135, 17.632086, 23.275042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109055, 0.449491, 0.886603,
		0.530192, 0.728157, -0.434377,
		-0.840835, 0.517441, -0.158908,
		12.086884, 17.787317, 23.227369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853180, 17.996571, 23.767387>,  <12.675469, 17.425110, 23.338604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853180, 17.996571, 23.767387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.457813, 17.976913, 23.709953>,  <12.220593, 17.965120, 23.675493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.457813, 17.976913, 23.709953>,  <12.853180, 17.996571, 23.767387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.457813, 17.976913, 23.709953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148721, 0.502131, 0.851908,
		0.030236, 0.863395, -0.503623,
		-0.988417, -0.049141, -0.143587,
		12.161288, 17.962172, 23.666878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.607648, 18.676443, 23.917372>,  <12.853180, 17.996571, 23.767387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.607648, 18.676443, 23.917372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.310202, 18.411890, 23.956581>,  <12.131734, 18.253159, 23.980106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.310202, 18.411890, 23.956581>,  <12.607648, 18.676443, 23.917372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310202, 18.411890, 23.956581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260260, 0.421374, 0.868740,
		-0.615875, 0.620496, -0.485472,
		-0.743615, -0.661383, 0.098024,
		12.087117, 18.213474, 23.985989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.045417, 18.997688, 24.136103>,  <12.607648, 18.676443, 23.917372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.045417, 18.997688, 24.136103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.943455, 18.635895, 24.272886>,  <11.882277, 18.418819, 24.354956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.943455, 18.635895, 24.272886>,  <12.045417, 18.997688, 24.136103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.943455, 18.635895, 24.272886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252541, 0.403639, 0.879374,
		-0.933406, 0.137799, -0.331308,
		-0.254906, -0.904482, 0.341960,
		11.866983, 18.364550, 24.375475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.479880, 19.185804, 24.577564>,  <12.045417, 18.997688, 24.136103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.479880, 19.185804, 24.577564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.589141, 18.819349, 24.694923>,  <11.654697, 18.599476, 24.765339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.589141, 18.819349, 24.694923>,  <11.479880, 19.185804, 24.577564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.589141, 18.819349, 24.694923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058195, 0.288701, 0.955649,
		-0.960209, -0.278110, 0.025544,
		0.273150, -0.916137, 0.293398,
		11.671086, 18.544508, 24.782944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.004287, 18.828709, 25.044062>,  <11.479880, 19.185804, 24.577564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.004287, 18.828709, 25.044062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368338, 18.684521, 25.125772>,  <11.586768, 18.598007, 25.174799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368338, 18.684521, 25.125772>,  <11.004287, 18.828709, 25.044062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.368338, 18.684521, 25.125772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111581, 0.261574, 0.958712,
		-0.399021, -0.895344, 0.197844,
		0.910127, -0.360471, 0.204277,
		11.641376, 18.576380, 25.187056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006190, 18.879858, 25.741854>,  <11.004287, 18.828709, 25.044062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.006190, 18.879858, 25.741854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372890, 18.726093, 25.698402>,  <11.592909, 18.633835, 25.672331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372890, 18.726093, 25.698402>,  <11.006190, 18.879858, 25.741854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.372890, 18.726093, 25.698402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167989, 0.124277, 0.977924,
		-0.362426, -0.914758, 0.178508,
		0.916748, -0.384412, -0.108629,
		11.647914, 18.610769, 25.665813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.050127, 18.246222, 26.191404>,  <11.006190, 18.879858, 25.741854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.050127, 18.246222, 26.191404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.396500, 18.426514, 26.104681>,  <11.604323, 18.534689, 26.052647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.396500, 18.426514, 26.104681>,  <11.050127, 18.246222, 26.191404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.396500, 18.426514, 26.104681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142933, 0.192399, 0.970851,
		0.479306, -0.871680, 0.102180,
		0.865931, 0.450730, -0.216810,
		11.656279, 18.561733, 26.039639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.557399, 17.935492, 26.649069>,  <11.050127, 18.246222, 26.191404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.557399, 17.935492, 26.649069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.733847, 18.276390, 26.536577>,  <11.839715, 18.480928, 26.469082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.733847, 18.276390, 26.536577>,  <11.557399, 17.935492, 26.649069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.733847, 18.276390, 26.536577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121684, 0.253672, 0.959606,
		0.889161, -0.457522, 0.008195,
		0.441119, 0.852247, -0.281228,
		11.866182, 18.532064, 26.452209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.208342, 17.909266, 26.983841>,  <11.557399, 17.935492, 26.649069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.208342, 17.909266, 26.983841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.083742, 18.281477, 26.906809>,  <12.008983, 18.504803, 26.860590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.083742, 18.281477, 26.906809>,  <12.208342, 17.909266, 26.983841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.083742, 18.281477, 26.906809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100746, 0.233863, 0.967036,
		0.944891, 0.281828, -0.166595,
		-0.311498, 0.930527, -0.192582,
		11.990293, 18.560635, 26.849033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.493411, 18.247997, 27.553970>,  <12.208342, 17.909266, 26.983841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.493411, 18.247997, 27.553970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262949, 18.529436, 27.387598>,  <12.124672, 18.698299, 27.287775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262949, 18.529436, 27.387598>,  <12.493411, 18.247997, 27.553970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.262949, 18.529436, 27.387598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068280, 0.465670, 0.882321,
		0.814483, 0.536753, -0.220257,
		-0.576155, 0.703596, -0.415929,
		12.090102, 18.740515, 27.262819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.725180, 18.991179, 27.697479>,  <12.493411, 18.247997, 27.553970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.725180, 18.991179, 27.697479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328432, 18.976315, 27.648794>,  <12.090384, 18.967396, 27.619583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328432, 18.976315, 27.648794>,  <12.725180, 18.991179, 27.697479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.328432, 18.976315, 27.648794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126980, 0.352452, 0.927175,
		0.008443, 0.935092, -0.354305,
		-0.991869, -0.037161, -0.121713,
		12.030871, 18.965166, 27.612280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.569953, 19.615067, 27.974020>,  <12.725180, 18.991179, 27.697479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.569953, 19.615067, 27.974020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.226922, 19.409361, 27.977812>,  <12.021103, 19.285936, 27.980087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.226922, 19.409361, 27.977812>,  <12.569953, 19.615067, 27.974020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226922, 19.409361, 27.977812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140454, 0.251867, 0.957516,
		-0.494805, 0.819813, -0.288226,
		-0.857578, -0.514266, 0.009479,
		11.969648, 19.255081, 27.980656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.060141, 20.022226, 28.313747>,  <12.569953, 19.615067, 27.974020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.060141, 20.022226, 28.313747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922015, 19.647282, 28.332111>,  <11.839140, 19.422314, 28.343130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922015, 19.647282, 28.332111>,  <12.060141, 20.022226, 28.313747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.922015, 19.647282, 28.332111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347266, 0.173070, 0.921658,
		-0.871874, 0.302319, -0.385278,
		-0.345314, -0.937364, 0.045910,
		11.818421, 19.366072, 28.345884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.419571, 20.055639, 28.571676>,  <12.060141, 20.022226, 28.313747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.419571, 20.055639, 28.571676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.484379, 19.668331, 28.647779>,  <11.523264, 19.435946, 28.693441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.484379, 19.668331, 28.647779>,  <11.419571, 20.055639, 28.571676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.484379, 19.668331, 28.647779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508244, 0.083385, 0.857167,
		-0.845835, -0.235576, -0.478609,
		0.162019, -0.968273, 0.190260,
		11.532985, 19.377850, 28.704857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.844378, 19.919470, 28.898949>,  <11.419571, 20.055639, 28.571676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.844378, 19.919470, 28.898949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.081217, 19.603989, 28.965120>,  <11.223321, 19.414700, 29.004824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.081217, 19.603989, 28.965120>,  <10.844378, 19.919470, 28.898949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.081217, 19.603989, 28.965120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415886, -0.123226, 0.901029,
		-0.690259, -0.602298, -0.400973,
		0.592099, -0.788703, 0.165429,
		11.258846, 19.367378, 29.014750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.463987, 19.339199, 29.149860>,  <10.844378, 19.919470, 28.898949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.463987, 19.339199, 29.149860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.842080, 19.323946, 29.279526>,  <11.068935, 19.314795, 29.357325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.842080, 19.323946, 29.279526>,  <10.463987, 19.339199, 29.149860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.842080, 19.323946, 29.279526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322865, 0.036539, 0.945740,
		-0.047910, -0.998604, 0.022226,
		0.945232, -0.038134, 0.324164,
		11.125649, 19.312508, 29.376776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.650514, 18.747301, 29.615526>,  <10.463987, 19.339199, 29.149860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.650514, 18.747301, 29.615526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.866039, 19.074421, 29.696404>,  <10.995355, 19.270693, 29.744930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.866039, 19.074421, 29.696404>,  <10.650514, 18.747301, 29.615526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.866039, 19.074421, 29.696404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259588, -0.067157, 0.963382,
		0.801432, -0.571571, 0.176106,
		0.538814, 0.817800, 0.202195,
		11.027683, 19.319761, 29.757063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.732371, 18.725416, 30.378305>,  <10.650514, 18.747301, 29.615526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.732371, 18.725416, 30.378305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.858979, 19.095461, 30.294418>,  <10.934944, 19.317488, 30.244085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.858979, 19.095461, 30.294418>,  <10.732371, 18.725416, 30.378305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.858979, 19.095461, 30.294418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197637, 0.280548, 0.939272,
		0.927769, -0.255851, 0.271636,
		0.316520, 0.925112, -0.209718,
		10.953936, 19.372995, 30.231503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.238695, 19.023733, 30.966663>,  <10.732371, 18.725416, 30.378305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.238695, 19.023733, 30.966663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.084277, 19.329691, 30.760399>,  <10.991627, 19.513266, 30.636641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.084277, 19.329691, 30.760399>,  <11.238695, 19.023733, 30.966663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.084277, 19.329691, 30.760399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098340, 0.521688, 0.847450,
		0.917223, 0.377863, -0.126176,
		-0.386044, 0.764893, -0.515663,
		10.968464, 19.559158, 30.605700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.515243, 19.154671, 30.266562>,  <11.238695, 19.023733, 30.966663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.515243, 19.154671, 30.266562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.902877, 19.072838, 30.321722>,  <12.135458, 19.023737, 30.354818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.902877, 19.072838, 30.321722>,  <11.515243, 19.154671, 30.266562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.902877, 19.072838, 30.321722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176285, -0.965210, -0.193116,
		0.172613, 0.162836, -0.971437,
		0.969086, -0.204584, 0.137902,
		12.193603, 19.011463, 30.363092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.000785, 18.995913, 29.672255>,  <11.515243, 19.154671, 30.266562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.000785, 18.995913, 29.672255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096696, 18.795662, 30.004972>,  <12.154243, 18.675512, 30.204603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096696, 18.795662, 30.004972>,  <12.000785, 18.995913, 29.672255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096696, 18.795662, 30.004972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341184, -0.845589, -0.410576,
		0.908901, -0.185348, -0.373559,
		0.239778, -0.500625, 0.831794,
		12.168630, 18.645475, 30.254511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482324, 18.554602, 29.464725>,  <12.000785, 18.995913, 29.672255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482324, 18.554602, 29.464725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301526, 18.407694, 29.789888>,  <12.193048, 18.319550, 29.984985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301526, 18.407694, 29.789888>,  <12.482324, 18.554602, 29.464725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301526, 18.407694, 29.789888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388039, -0.739609, -0.549913,
		0.803199, -0.563995, 0.191783,
		-0.451993, -0.367270, 0.812905,
		12.165928, 18.297512, 30.033760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.563603, 17.807772, 29.507919>,  <12.482324, 18.554602, 29.464725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.563603, 17.807772, 29.507919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243826, 17.862520, 29.741896>,  <12.051959, 17.895370, 29.882280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243826, 17.862520, 29.741896>,  <12.563603, 17.807772, 29.507919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.243826, 17.862520, 29.741896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530839, -0.616802, -0.581176,
		0.281245, -0.775126, 0.565757,
		-0.799445, 0.136873, 0.584939,
		12.003992, 17.903582, 29.917377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.414264, 17.210342, 29.935957>,  <12.563603, 17.807772, 29.507919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.414264, 17.210342, 29.935957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105145, 17.416811, 29.788254>,  <11.919673, 17.540691, 29.699633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105145, 17.416811, 29.788254>,  <12.414264, 17.210342, 29.935957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105145, 17.416811, 29.788254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270312, -0.794117, -0.544343,
		-0.574207, -0.320853, 0.753219,
		-0.772798, 0.516170, -0.369257,
		11.873305, 17.571663, 29.677477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.893606, 16.803270, 29.876190>,  <12.414264, 17.210342, 29.935957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.893606, 16.803270, 29.876190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.853516, 17.095253, 29.605747>,  <11.829461, 17.270443, 29.443481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.853516, 17.095253, 29.605747>,  <11.893606, 16.803270, 29.876190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853516, 17.095253, 29.605747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186156, -0.681286, -0.707951,
		-0.977395, 0.054905, 0.204169,
		-0.100228, 0.729955, -0.676107,
		11.823447, 17.314240, 29.402916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.321945, 16.737089, 29.419842>,  <11.893606, 16.803270, 29.876190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.321945, 16.737089, 29.419842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.576553, 16.971870, 29.219709>,  <11.729318, 17.112740, 29.099630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.576553, 16.971870, 29.219709>,  <11.321945, 16.737089, 29.419842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.576553, 16.971870, 29.219709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345495, -0.362990, -0.865374,
		-0.689548, 0.723689, -0.028261,
		0.636520, 0.586952, -0.500330,
		11.767509, 17.147957, 29.069611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.882761, 17.000738, 28.925873>,  <11.321945, 16.737089, 29.419842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.882761, 17.000738, 28.925873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261773, 17.038092, 28.803585>,  <11.489181, 17.060503, 28.730211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261773, 17.038092, 28.803585>,  <10.882761, 17.000738, 28.925873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.261773, 17.038092, 28.803585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255979, -0.351184, -0.900636,
		-0.191468, 0.931638, -0.308853,
		0.947531, 0.093383, -0.305720,
		11.546032, 17.066107, 28.711868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.795469, 17.263882, 28.216906>,  <10.882761, 17.000738, 28.925873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.795469, 17.263882, 28.216906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156150, 17.094004, 28.249323>,  <11.372559, 16.992077, 28.268774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156150, 17.094004, 28.249323>,  <10.795469, 17.263882, 28.216906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.156150, 17.094004, 28.249323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164267, -0.509903, -0.844403,
		0.399937, 0.748087, -0.529544,
		0.901702, -0.424694, 0.081043,
		11.426661, 16.966595, 28.273636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.179861, 17.480938, 27.602736>,  <10.795469, 17.263882, 28.216906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.179861, 17.480938, 27.602736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.314899, 17.145899, 27.774529>,  <11.395923, 16.944876, 27.877604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.314899, 17.145899, 27.774529>,  <11.179861, 17.480938, 27.602736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.314899, 17.145899, 27.774529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337511, -0.533645, -0.775442,
		0.878701, 0.116832, -0.462856,
		0.337597, -0.837600, 0.429482,
		11.416179, 16.894619, 27.903374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.495754, 17.127544, 27.031332>,  <11.179861, 17.480938, 27.602736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.495754, 17.127544, 27.031332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.489770, 16.821503, 27.288826>,  <11.486179, 16.637878, 27.443321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.489770, 16.821503, 27.288826>,  <11.495754, 17.127544, 27.031332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.489770, 16.821503, 27.288826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042228, -0.642747, -0.764914,
		0.998996, -0.038628, -0.022692,
		-0.014962, -0.765104, 0.643733,
		11.485281, 16.591972, 27.481945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959974, 16.609488, 26.753397>,  <11.495754, 17.127544, 27.031332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959974, 16.609488, 26.753397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703719, 16.419739, 26.994909>,  <11.549966, 16.305889, 27.139816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703719, 16.419739, 26.994909>,  <11.959974, 16.609488, 26.753397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703719, 16.419739, 26.994909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133431, -0.705594, -0.695940,
		0.756161, -0.526409, 0.388734,
		-0.640637, -0.474374, 0.603782,
		11.511528, 16.277426, 27.176044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.166092, 15.985945, 26.793642>,  <11.959974, 16.609488, 26.753397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.166092, 15.985945, 26.793642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787373, 15.957270, 26.919138>,  <11.560141, 15.940064, 26.994436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787373, 15.957270, 26.919138>,  <12.166092, 15.985945, 26.793642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.787373, 15.957270, 26.919138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151196, -0.761509, -0.630272,
		0.284100, -0.644177, 0.710157,
		-0.946798, -0.071688, 0.313742,
		11.503333, 15.935763, 27.013260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.929798, 15.334198, 26.952759>,  <12.166092, 15.985945, 26.793642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.929798, 15.334198, 26.952759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.586660, 15.516901, 26.858543>,  <11.380778, 15.626523, 26.802013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.586660, 15.516901, 26.858543>,  <11.929798, 15.334198, 26.952759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.586660, 15.516901, 26.858543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192803, -0.710890, -0.676359,
		-0.476374, -0.534798, 0.697897,
		-0.857843, 0.456757, -0.235539,
		11.329308, 15.653928, 26.787882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558372, 14.786512, 26.706036>,  <11.929798, 15.334198, 26.952759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558372, 14.786512, 26.706036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.335377, 15.102036, 26.602510>,  <11.201579, 15.291351, 26.540396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.335377, 15.102036, 26.602510>,  <11.558372, 14.786512, 26.706036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.335377, 15.102036, 26.602510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287696, -0.476004, -0.831054,
		-0.778741, -0.388843, 0.492305,
		-0.557489, 0.788810, -0.258815,
		11.168130, 15.338679, 26.524866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.922230, 14.482224, 26.377024>,  <11.558372, 14.786512, 26.706036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.922230, 14.482224, 26.377024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.911625, 14.863625, 26.256935>,  <10.905262, 15.092465, 26.184883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.911625, 14.863625, 26.256935>,  <10.922230, 14.482224, 26.377024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.911625, 14.863625, 26.256935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448917, -0.279695, -0.848672,
		-0.893180, 0.112274, 0.435458,
		-0.026511, 0.953502, -0.300219,
		10.903671, 15.149675, 26.166870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.232884, 14.726236, 26.225168>,  <10.922230, 14.482224, 26.377024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.232884, 14.726236, 26.225168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.490676, 14.940850, 26.007259>,  <10.645350, 15.069618, 25.876514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.490676, 14.940850, 26.007259>,  <10.232884, 14.726236, 26.225168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.490676, 14.940850, 26.007259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465228, -0.290263, -0.836248,
		-0.606804, 0.792387, 0.062543,
		0.644478, 0.536535, -0.544774,
		10.684019, 15.101810, 25.843826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.822235, 14.899938, 25.654016>,  <10.232884, 14.726236, 26.225168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.822235, 14.899938, 25.654016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.185732, 15.002299, 25.522137>,  <10.403830, 15.063717, 25.443008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.185732, 15.002299, 25.522137>,  <9.822235, 14.899938, 25.654016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.185732, 15.002299, 25.522137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308449, -0.120370, -0.943594,
		-0.281157, 0.959179, -0.030452,
		0.908741, 0.255905, -0.329701,
		10.458354, 15.079071, 25.423227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.699300, 15.280110, 25.115870>,  <9.822235, 14.899938, 25.654016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.699300, 15.280110, 25.115870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.077853, 15.157073, 25.076382>,  <10.304985, 15.083251, 25.052689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.077853, 15.157073, 25.076382>,  <9.699300, 15.280110, 25.115870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.077853, 15.157073, 25.076382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159101, -0.177846, -0.971112,
		0.281151, 0.934750, -0.217249,
		0.946383, -0.307593, -0.098718,
		10.361768, 15.064795, 25.046766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.892077, 15.537026, 24.428135>,  <9.699300, 15.280110, 25.115870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.892077, 15.537026, 24.428135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.157168, 15.252333, 24.521282>,  <10.316223, 15.081516, 24.577169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.157168, 15.252333, 24.521282>,  <9.892077, 15.537026, 24.428135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.157168, 15.252333, 24.521282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128466, -0.198297, -0.971686,
		0.737760, 0.673878, -0.039983,
		0.662727, -0.711735, 0.232866,
		10.355987, 15.038813, 24.591143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.299527, 15.410927, 23.733952>,  <9.892077, 15.537026, 24.428135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.299527, 15.410927, 23.733952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.377635, 15.074487, 23.935713>,  <10.424500, 14.872622, 24.056768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.377635, 15.074487, 23.935713>,  <10.299527, 15.410927, 23.733952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.377635, 15.074487, 23.935713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089734, -0.496823, -0.863200,
		0.976636, 0.213820, -0.021540,
		0.195271, -0.841099, 0.504402,
		10.436216, 14.822157, 24.087034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.912302, 15.126453, 23.410292>,  <10.299527, 15.410927, 23.733952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.912302, 15.126453, 23.410292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.742699, 14.818112, 23.600451>,  <10.640937, 14.633108, 23.714546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.742699, 14.818112, 23.600451>,  <10.912302, 15.126453, 23.410292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.742699, 14.818112, 23.600451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025410, -0.534839, -0.844572,
		0.905302, -0.346026, 0.246364,
		-0.424008, -0.770852, 0.475398,
		10.615496, 14.586857, 23.743071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.285310, 14.510611, 23.287477>,  <10.912302, 15.126453, 23.410292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.285310, 14.510611, 23.287477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.917896, 14.391006, 23.390928>,  <10.697449, 14.319242, 23.452999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.917896, 14.391006, 23.390928>,  <11.285310, 14.510611, 23.287477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.917896, 14.391006, 23.390928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056093, -0.548995, -0.833941,
		0.391346, -0.780509, 0.487497,
		-0.918533, -0.299014, 0.258628,
		10.642337, 14.301301, 23.468517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.268061, 13.789135, 23.307220>,  <11.285310, 14.510611, 23.287477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.268061, 13.789135, 23.307220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.892885, 13.920788, 23.263506>,  <10.667780, 13.999780, 23.237278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.892885, 13.920788, 23.263506>,  <11.268061, 13.789135, 23.307220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.892885, 13.920788, 23.263506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042040, -0.420709, -0.906221,
		-0.344240, -0.845387, 0.408436,
		-0.937940, 0.329128, -0.109285,
		10.611504, 14.019527, 23.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.952994, 13.241937, 23.005148>,  <11.268061, 13.789135, 23.307220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.952994, 13.241937, 23.005148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.677844, 13.519573, 22.920235>,  <10.512753, 13.686155, 22.869287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.677844, 13.519573, 22.920235>,  <10.952994, 13.241937, 23.005148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.677844, 13.519573, 22.920235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138013, -0.412212, -0.900574,
		-0.712585, -0.590186, 0.379344,
		-0.687877, 0.694090, -0.212283,
		10.471481, 13.727800, 22.856550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.575830, 12.914721, 22.473108>,  <10.952994, 13.241937, 23.005148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.575830, 12.914721, 22.473108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.448933, 13.293186, 22.447390>,  <10.372794, 13.520266, 22.431959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.448933, 13.293186, 22.447390>,  <10.575830, 12.914721, 22.473108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.448933, 13.293186, 22.447390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325982, -0.172463, -0.929512,
		-0.890557, -0.273922, 0.363145,
		-0.317243, 0.946162, -0.064295,
		10.353760, 13.577035, 22.428101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.927494, 12.875360, 22.042339>,  <10.575830, 12.914721, 22.473108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.927494, 12.875360, 22.042339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.068672, 13.245581, 21.987516>,  <10.153379, 13.467713, 21.954622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.068672, 13.245581, 21.987516>,  <9.927494, 12.875360, 22.042339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.068672, 13.245581, 21.987516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111521, -0.103825, -0.988324,
		-0.928974, 0.364109, 0.066574,
		0.352945, 0.925551, -0.137057,
		10.174556, 13.523246, 21.946400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.420675, 13.145789, 21.673033>,  <9.927494, 12.875360, 22.042339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.420675, 13.145789, 21.673033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.747604, 13.365385, 21.603071>,  <9.943762, 13.497143, 21.561094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.747604, 13.365385, 21.603071>,  <9.420675, 13.145789, 21.673033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.747604, 13.365385, 21.603071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157703, -0.078817, -0.984336,
		-0.554177, 0.832104, 0.022159,
		0.817324, 0.548991, -0.174904,
		9.992802, 13.530083, 21.550600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.340520, 13.704122, 21.269264>,  <9.420675, 13.145789, 21.673033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.340520, 13.704122, 21.269264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.728504, 13.643393, 21.193235>,  <9.961294, 13.606956, 21.147617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.728504, 13.643393, 21.193235>,  <9.340520, 13.704122, 21.269264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.728504, 13.643393, 21.193235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166754, 0.153925, -0.973910,
		0.177118, 0.976349, 0.123984,
		0.969960, -0.151822, -0.190073,
		10.019492, 13.597846, 21.136213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.361876, 14.032063, 20.660841>,  <9.340520, 13.704122, 21.269264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.361876, 14.032063, 20.660841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.711831, 13.839207, 20.679220>,  <9.921804, 13.723494, 20.690247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.711831, 13.839207, 20.679220>,  <9.361876, 14.032063, 20.660841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.711831, 13.839207, 20.679220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041033, -0.020737, -0.998942,
		0.482582, 0.875849, 0.001641,
		0.874889, -0.482139, 0.045946,
		9.974298, 13.694565, 20.693005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.751008, 14.410691, 20.186699>,  <9.361876, 14.032063, 20.660841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.751008, 14.410691, 20.186699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893681, 14.042618, 20.251249>,  <9.979284, 13.821774, 20.289980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893681, 14.042618, 20.251249>,  <9.751008, 14.410691, 20.186699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.893681, 14.042618, 20.251249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055358, -0.151616, -0.986888,
		0.932584, 0.360938, -0.003139,
		0.356682, -0.920183, 0.161375,
		10.000685, 13.766563, 20.299662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.322488, 14.407464, 19.770153>,  <9.751008, 14.410691, 20.186699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.322488, 14.407464, 19.770153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238218, 14.023326, 19.843206>,  <10.187656, 13.792843, 19.887039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238218, 14.023326, 19.843206>,  <10.322488, 14.407464, 19.770153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.238218, 14.023326, 19.843206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041118, -0.177958, -0.983179,
		0.976691, -0.214640, -0.001997,
		-0.210674, -0.960344, 0.182635,
		10.175016, 13.735223, 19.897997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.772269, 14.074128, 19.299740>,  <10.322488, 14.407464, 19.770153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.772269, 14.074128, 19.299740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.472377, 13.830884, 19.404127>,  <10.292441, 13.684937, 19.466759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.472377, 13.830884, 19.404127>,  <10.772269, 14.074128, 19.299740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.472377, 13.830884, 19.404127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068835, -0.320559, -0.944724,
		0.658152, -0.726253, 0.198474,
		-0.749732, -0.608110, 0.260968,
		10.247458, 13.648451, 19.482418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.896500, 13.503676, 18.857918>,  <10.772269, 14.074128, 19.299740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.896500, 13.503676, 18.857918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516760, 13.438464, 18.965366>,  <10.288916, 13.399337, 19.029835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516760, 13.438464, 18.965366>,  <10.896500, 13.503676, 18.857918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.516760, 13.438464, 18.965366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199553, -0.347543, -0.916183,
		0.242724, -0.923382, 0.297406,
		-0.949349, -0.163032, 0.268621,
		10.231956, 13.389555, 19.045952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.647114, 12.797481, 18.616156>,  <10.896500, 13.503676, 18.857918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.647114, 12.797481, 18.616156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.311550, 13.003200, 18.687407>,  <10.110212, 13.126631, 18.730158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.311550, 13.003200, 18.687407>,  <10.647114, 12.797481, 18.616156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.311550, 13.003200, 18.687407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272882, -0.114272, -0.955237,
		-0.470922, -0.849964, 0.236207,
		-0.838908, 0.514298, 0.178126,
		10.059877, 13.157489, 18.740845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.063479, 12.359747, 18.343468>,  <10.647114, 12.797481, 18.616156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.063479, 12.359747, 18.343468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.930005, 12.736669, 18.354179>,  <9.849920, 12.962822, 18.360607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.930005, 12.736669, 18.354179>,  <10.063479, 12.359747, 18.343468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.930005, 12.736669, 18.354179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369964, -0.104775, -0.923119,
		-0.867053, -0.317939, 0.383580,
		-0.333685, 0.942304, 0.026780,
		9.829900, 13.019360, 18.362213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.388596, 12.277719, 17.903679>,  <10.063479, 12.359747, 18.343468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.388596, 12.277719, 17.903679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524704, 12.653392, 17.922226>,  <9.606369, 12.878796, 17.933353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524704, 12.653392, 17.922226>,  <9.388596, 12.277719, 17.903679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.524704, 12.653392, 17.922226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248622, 0.137412, -0.958804,
		-0.906864, 0.314726, 0.280259,
		0.340271, 0.939184, 0.046367,
		9.626785, 12.935147, 17.936136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.788722, 12.729858, 17.741030>,  <9.388596, 12.277719, 17.903679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.788722, 12.729858, 17.741030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.133372, 12.922592, 17.677233>,  <9.340162, 13.038232, 17.638954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.133372, 12.922592, 17.677233>,  <8.788722, 12.729858, 17.741030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.133372, 12.922592, 17.677233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319134, 0.269980, -0.908440,
		-0.394657, 0.833635, 0.386391,
		0.861626, 0.481833, -0.159492,
		9.391860, 13.067142, 17.629385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.599636, 13.270507, 17.260773>,  <8.788722, 12.729858, 17.741030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.599636, 13.270507, 17.260773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.999253, 13.253194, 17.258324>,  <9.239024, 13.242806, 17.256855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.999253, 13.253194, 17.258324>,  <8.599636, 13.270507, 17.260773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.999253, 13.253194, 17.258324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004944, 0.250997, -0.967975,
		0.043432, 0.967020, 0.250971,
		0.999044, -0.043282, -0.006121,
		9.298966, 13.240210, 17.256487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.687060, 13.778445, 16.817162>,  <8.599636, 13.270507, 17.260773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.687060, 13.778445, 16.817162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.031320, 13.574771, 16.815598>,  <9.237875, 13.452566, 16.814659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.031320, 13.574771, 16.815598>,  <8.687060, 13.778445, 16.817162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.031320, 13.574771, 16.815598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017829, -0.022457, -0.999589,
		0.508888, 0.860364, -0.028406,
		0.860648, -0.509185, -0.003911,
		9.289515, 13.422015, 16.814425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.043973, 14.132045, 16.346901>,  <8.687060, 13.778445, 16.817162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.043973, 14.132045, 16.346901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.212320, 13.770362, 16.375957>,  <9.313329, 13.553352, 16.393391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.212320, 13.770362, 16.375957>,  <9.043973, 14.132045, 16.346901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.212320, 13.770362, 16.375957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205111, 0.016853, -0.978593,
		0.883628, 0.426759, 0.192556,
		0.420869, -0.904208, 0.072641,
		9.338581, 13.499100, 16.397749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.661697, 14.239396, 16.029026>,  <9.043973, 14.132045, 16.346901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.661697, 14.239396, 16.029026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.598478, 13.844722, 16.044384>,  <9.560547, 13.607918, 16.053598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.598478, 13.844722, 16.044384>,  <9.661697, 14.239396, 16.029026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.598478, 13.844722, 16.044384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244150, -0.076724, -0.966698,
		0.956772, -0.143410, 0.253025,
		-0.158047, -0.986685, 0.038394,
		9.551064, 13.548717, 16.055902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.342103, 13.987681, 15.773882>,  <9.661697, 14.239396, 16.029026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.342103, 13.987681, 15.773882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.057473, 13.709951, 15.730844>,  <9.886696, 13.543314, 15.705022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.057473, 13.709951, 15.730844>,  <10.342103, 13.987681, 15.773882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.057473, 13.709951, 15.730844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357140, -0.225555, -0.906408,
		0.605073, -0.683402, 0.408470,
		-0.711574, -0.694324, -0.107593,
		9.844001, 13.501654, 15.698566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.690718, 13.328872, 15.650255>,  <10.342103, 13.987681, 15.773882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.690718, 13.328872, 15.650255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324913, 13.345540, 15.489291>,  <10.105431, 13.355541, 15.392713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324913, 13.345540, 15.489291>,  <10.690718, 13.328872, 15.650255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.324913, 13.345540, 15.489291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376605, -0.275650, -0.884413,
		-0.147777, -0.960354, 0.236392,
		-0.914511, 0.041670, -0.402409,
		10.050560, 13.358042, 15.368568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.723675, 12.711175, 15.278128>,  <10.690718, 13.328872, 15.650255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.723675, 12.711175, 15.278128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.416660, 12.936689, 15.156121>,  <10.232451, 13.071998, 15.082917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.416660, 12.936689, 15.156121>,  <10.723675, 12.711175, 15.278128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.416660, 12.936689, 15.156121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151215, -0.303157, -0.940866,
		-0.622915, -0.768271, 0.147431,
		-0.767535, 0.563786, -0.305015,
		10.186399, 13.105825, 15.064616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.361199, 12.665956, 15.270926>,  <10.723675, 12.711175, 15.278128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.361199, 12.665956, 15.270926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.619541, 12.375211, 15.364345>,  <11.774546, 12.200764, 15.420396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.619541, 12.375211, 15.364345>,  <11.361199, 12.665956, 15.270926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.619541, 12.375211, 15.364345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006967, 0.311506, 0.950219,
		-0.763429, -0.612075, 0.206251,
		0.645854, -0.726862, 0.233549,
		11.813297, 12.157152, 15.434409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.099455, 12.307013, 15.957781>,  <11.361199, 12.665956, 15.270926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.099455, 12.307013, 15.957781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.489446, 12.225019, 15.923374>,  <11.723440, 12.175822, 15.902730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.489446, 12.225019, 15.923374>,  <11.099455, 12.307013, 15.957781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.489446, 12.225019, 15.923374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098338, 0.050677, 0.993862,
		-0.199370, -0.977452, 0.069567,
		0.974978, -0.204987, -0.086017,
		11.781940, 12.163523, 15.897569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.224061, 11.779641, 16.481903>,  <11.099455, 12.307013, 15.957781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.224061, 11.779641, 16.481903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.581582, 11.941702, 16.404995>,  <11.796095, 12.038939, 16.358850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.581582, 11.941702, 16.404995>,  <11.224061, 11.779641, 16.481903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.581582, 11.941702, 16.404995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207916, 0.005500, 0.978131,
		0.397350, -0.914232, -0.079322,
		0.893803, 0.405153, -0.192270,
		11.849723, 12.063248, 16.347315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.637166, 11.302541, 16.865557>,  <11.224061, 11.779641, 16.481903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.637166, 11.302541, 16.865557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.859275, 11.613878, 16.748354>,  <11.992540, 11.800681, 16.678032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.859275, 11.613878, 16.748354>,  <11.637166, 11.302541, 16.865557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.859275, 11.613878, 16.748354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463878, 0.002565, 0.885896,
		0.690283, -0.627834, -0.359632,
		0.555272, 0.778344, -0.293009,
		12.025857, 11.847382, 16.660452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.257768, 11.242471, 17.192999>,  <11.637166, 11.302541, 16.865557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.257768, 11.242471, 17.192999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.259603, 11.632457, 17.104074>,  <12.260703, 11.866448, 17.050720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.259603, 11.632457, 17.104074>,  <12.257768, 11.242471, 17.192999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.259603, 11.632457, 17.104074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244148, 0.214494, 0.945719,
		0.969727, -0.058614, -0.237052,
		0.004586, 0.974965, -0.222311,
		12.260979, 11.924946, 17.037382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.870306, 11.480970, 17.517900>,  <12.257768, 11.242471, 17.192999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.870306, 11.480970, 17.517900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.635688, 11.799162, 17.457003>,  <12.494917, 11.990077, 17.420464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.635688, 11.799162, 17.457003>,  <12.870306, 11.480970, 17.517900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.635688, 11.799162, 17.457003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242506, 0.351845, 0.904100,
		0.772758, 0.493376, -0.399282,
		-0.586546, 0.795478, -0.152244,
		12.459724, 12.037806, 17.411329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352077, 12.021474, 17.764166>,  <12.870306, 11.480970, 17.517900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352077, 12.021474, 17.764166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971381, 12.143231, 17.779850>,  <12.742964, 12.216286, 17.789261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971381, 12.143231, 17.779850>,  <13.352077, 12.021474, 17.764166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.971381, 12.143231, 17.779850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183362, 0.461505, 0.867981,
		0.246113, 0.833281, -0.495046,
		-0.951739, 0.304394, 0.039210,
		12.685860, 12.234550, 17.791613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.463463, 12.696503, 17.898506>,  <13.352077, 12.021474, 17.764166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.463463, 12.696503, 17.898506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102200, 12.577425, 18.022238>,  <12.885442, 12.505979, 18.096476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102200, 12.577425, 18.022238>,  <13.463463, 12.696503, 17.898506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.102200, 12.577425, 18.022238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214682, 0.310786, 0.925918,
		-0.371775, 0.902657, -0.216779,
		-0.903158, -0.297695, 0.309327,
		12.831252, 12.488116, 18.115036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.180189, 13.268682, 18.348927>,  <13.463463, 12.696503, 17.898506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.180189, 13.268682, 18.348927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.972117, 12.938882, 18.438023>,  <12.847274, 12.741002, 18.491480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.972117, 12.938882, 18.438023>,  <13.180189, 13.268682, 18.348927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.972117, 12.938882, 18.438023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033392, 0.240970, 0.969958,
		-0.853403, 0.511991, -0.097816,
		-0.520180, -0.824499, 0.222741,
		12.816063, 12.691532, 18.504845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.645463, 13.511838, 18.646877>,  <13.180189, 13.268682, 18.348927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.645463, 13.511838, 18.646877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.670416, 13.141290, 18.795441>,  <12.685388, 12.918961, 18.884579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.670416, 13.141290, 18.795441>,  <12.645463, 13.511838, 18.646877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.670416, 13.141290, 18.795441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171877, 0.356603, 0.918310,
		-0.983141, -0.121122, -0.136976,
		0.062382, -0.926371, 0.371409,
		12.689131, 12.863379, 18.906864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.079937, 13.461390, 19.183233>,  <12.645463, 13.511838, 18.646877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.079937, 13.461390, 19.183233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334948, 13.159531, 19.245283>,  <12.487954, 12.978415, 19.282513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334948, 13.159531, 19.245283>,  <12.079937, 13.461390, 19.183233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334948, 13.159531, 19.245283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053818, 0.244478, 0.968160,
		-0.768546, -0.608880, 0.196475,
		0.637527, -0.754650, 0.155124,
		12.526206, 12.933136, 19.291821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.856556, 13.074710, 19.796574>,  <12.079937, 13.461390, 19.183233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.856556, 13.074710, 19.796574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248281, 13.002505, 19.759998>,  <12.483316, 12.959183, 19.738054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248281, 13.002505, 19.759998>,  <11.856556, 13.074710, 19.796574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248281, 13.002505, 19.759998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127597, 0.200180, 0.971415,
		-0.157048, -0.962987, 0.219071,
		0.979313, -0.180512, -0.091436,
		12.542075, 12.948352, 19.732567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.978543, 12.552889, 20.234013>,  <11.856556, 13.074710, 19.796574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.978543, 12.552889, 20.234013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350606, 12.691440, 20.185297>,  <12.573843, 12.774570, 20.156067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350606, 12.691440, 20.185297>,  <11.978543, 12.552889, 20.234013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350606, 12.691440, 20.185297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197551, -0.192536, 0.961199,
		0.309489, -0.918124, -0.247516,
		0.930156, 0.346378, -0.121788,
		12.629653, 12.795353, 20.148760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.418143, 12.129288, 20.708046>,  <11.978543, 12.552889, 20.234013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.418143, 12.129288, 20.708046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637528, 12.446439, 20.601814>,  <12.769159, 12.636729, 20.538074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637528, 12.446439, 20.601814>,  <12.418143, 12.129288, 20.708046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637528, 12.446439, 20.601814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305299, 0.105802, 0.946360,
		0.778447, -0.600125, -0.184036,
		0.548463, 0.792878, -0.265579,
		12.802068, 12.684302, 20.522141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151347, 11.993170, 20.850876>,  <12.418143, 12.129288, 20.708046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151347, 11.993170, 20.850876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071240, 12.385041, 20.855328>,  <13.023176, 12.620164, 20.857998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071240, 12.385041, 20.855328>,  <13.151347, 11.993170, 20.850876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.071240, 12.385041, 20.855328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362392, 0.063517, 0.929859,
		0.910255, 0.190254, -0.367748,
		-0.200267, 0.979678, 0.011130,
		13.011160, 12.678945, 20.858667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.643744, 12.304122, 21.250483>,  <13.151347, 11.993170, 20.850876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.643744, 12.304122, 21.250483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372169, 12.597774, 21.246492>,  <13.209225, 12.773965, 21.244099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372169, 12.597774, 21.246492>,  <13.643744, 12.304122, 21.250483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372169, 12.597774, 21.246492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281690, 0.273012, 0.919845,
		0.678009, 0.621707, -0.392155,
		-0.678937, 0.734129, -0.009976,
		13.168489, 12.818012, 21.243500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.061888, 12.906791, 21.600332>,  <13.643744, 12.304122, 21.250483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.061888, 12.906791, 21.600332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668918, 12.981205, 21.606443>,  <13.433136, 13.025853, 21.610109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668918, 12.981205, 21.606443>,  <14.061888, 12.906791, 21.600332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.668918, 12.981205, 21.606443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070526, 0.294161, 0.953150,
		0.172825, 0.937476, -0.302111,
		-0.982424, 0.186035, 0.015278,
		13.374190, 13.037016, 21.611027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062267, 13.397108, 22.089554>,  <14.061888, 12.906791, 21.600332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.062267, 13.397108, 22.089554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.677396, 13.302145, 22.036114>,  <13.446473, 13.245167, 22.004049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.677396, 13.302145, 22.036114>,  <14.062267, 13.397108, 22.089554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.677396, 13.302145, 22.036114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233385, 0.465434, 0.853758,
		-0.140507, 0.852648, -0.503239,
		-0.962179, -0.237408, -0.133599,
		13.388742, 13.230923, 21.996035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629676, 14.012597, 21.976463>,  <14.062267, 13.397108, 22.089554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629676, 14.012597, 21.976463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.387423, 13.746565, 22.151222>,  <13.242071, 13.586946, 22.256077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.387423, 13.746565, 22.151222>,  <13.629676, 14.012597, 21.976463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387423, 13.746565, 22.151222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068690, 0.590685, 0.803973,
		-0.792774, 0.456902, -0.403422,
		-0.605632, -0.665080, 0.436896,
		13.205733, 13.547041, 22.282291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212785, 14.402346, 22.303717>,  <13.629676, 14.012597, 21.976463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212785, 14.402346, 22.303717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137321, 14.044111, 22.464878>,  <13.092042, 13.829170, 22.561575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137321, 14.044111, 22.464878>,  <13.212785, 14.402346, 22.303717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137321, 14.044111, 22.464878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092726, 0.392194, 0.915197,
		-0.977655, 0.210022, 0.009053,
		-0.188661, -0.895586, 0.402905,
		13.080722, 13.775435, 22.585749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.635316, 14.442359, 22.833664>,  <13.212785, 14.402346, 22.303717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.635316, 14.442359, 22.833664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.830744, 14.112306, 22.947123>,  <12.948001, 13.914273, 23.015198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.830744, 14.112306, 22.947123>,  <12.635316, 14.442359, 22.833664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.830744, 14.112306, 22.947123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029103, 0.340317, 0.939860,
		-0.872040, -0.450932, 0.190282,
		0.488569, -0.825133, 0.283646,
		12.977315, 13.864766, 23.032217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.240309, 14.149989, 23.365339>,  <12.635316, 14.442359, 22.833664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.240309, 14.149989, 23.365339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601886, 13.990670, 23.427626>,  <12.818832, 13.895079, 23.464996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601886, 13.990670, 23.427626>,  <12.240309, 14.149989, 23.365339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.601886, 13.990670, 23.427626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051743, 0.259576, 0.964335,
		-0.424512, -0.879761, 0.214033,
		0.903943, -0.398297, 0.155715,
		12.873069, 13.871181, 23.474340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.201724, 13.763757, 23.923405>,  <12.240309, 14.149989, 23.365339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.201724, 13.763757, 23.923405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593334, 13.844648, 23.913525>,  <12.828300, 13.893184, 23.907597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593334, 13.844648, 23.913525>,  <12.201724, 13.763757, 23.923405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.593334, 13.844648, 23.913525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032249, 0.273547, 0.961318,
		0.201161, -0.940359, 0.274332,
		0.979027, 0.202227, -0.024701,
		12.887042, 13.905317, 23.906115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453544, 13.457651, 24.564455>,  <12.201724, 13.763757, 23.923405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453544, 13.457651, 24.564455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.734635, 13.718323, 24.450274>,  <12.903291, 13.874726, 24.381763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.734635, 13.718323, 24.450274>,  <12.453544, 13.457651, 24.564455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734635, 13.718323, 24.450274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175010, 0.230559, 0.957191,
		0.689596, -0.722603, 0.047970,
		0.702729, 0.651680, -0.285455,
		12.945454, 13.913827, 24.364637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941323, 13.229934, 25.018305>,  <12.453544, 13.457651, 24.564455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941323, 13.229934, 25.018305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.016446, 13.602033, 24.892214>,  <13.061520, 13.825293, 24.816559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.016446, 13.602033, 24.892214>,  <12.941323, 13.229934, 25.018305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.016446, 13.602033, 24.892214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200624, 0.277839, 0.939444,
		0.961498, -0.239676, -0.134450,
		0.187807, 0.930248, -0.315226,
		13.072788, 13.881107, 24.797646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.418889, 13.460875, 25.484369>,  <12.941323, 13.229934, 25.018305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.418889, 13.460875, 25.484369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.327381, 13.794455, 25.283495>,  <13.272476, 13.994603, 25.162970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.327381, 13.794455, 25.283495>,  <13.418889, 13.460875, 25.484369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.327381, 13.794455, 25.283495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327815, 0.551732, 0.766895,
		0.916625, 0.010818, -0.399601,
		-0.228769, 0.833951, -0.502185,
		13.258751, 14.044640, 25.132839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.058443, 13.904835, 25.524002>,  <13.418889, 13.460875, 25.484369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.058443, 13.904835, 25.524002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742923, 14.140708, 25.454643>,  <13.553611, 14.282232, 25.413029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742923, 14.140708, 25.454643>,  <14.058443, 13.904835, 25.524002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742923, 14.140708, 25.454643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374056, 0.684394, 0.625849,
		0.487725, 0.428810, -0.760425,
		-0.788800, 0.589684, -0.173397,
		13.506283, 14.317614, 25.402624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.298106, 14.616240, 25.296625>,  <14.058443, 13.904835, 25.524002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.298106, 14.616240, 25.296625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928321, 14.637440, 25.447653>,  <13.706450, 14.650160, 25.538269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928321, 14.637440, 25.447653>,  <14.298106, 14.616240, 25.296625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928321, 14.637440, 25.447653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314522, 0.665759, 0.676640,
		-0.215509, 0.744283, -0.632139,
		-0.924463, 0.053000, 0.377571,
		13.650982, 14.653339, 25.560925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.160908, 15.244637, 25.494867>,  <14.298106, 14.616240, 25.296625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.160908, 15.244637, 25.494867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.866450, 15.070147, 25.701864>,  <13.689775, 14.965452, 25.826063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.866450, 15.070147, 25.701864>,  <14.160908, 15.244637, 25.494867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.866450, 15.070147, 25.701864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116354, 0.671640, 0.731684,
		-0.666749, 0.598837, -0.443667,
		-0.736144, -0.436226, 0.517493,
		13.645607, 14.939279, 25.857113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.821642, 15.795998, 25.673254>,  <14.160908, 15.244637, 25.494867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.821642, 15.795998, 25.673254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.724505, 15.506804, 25.931965>,  <13.666224, 15.333287, 26.087193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.724505, 15.506804, 25.931965>,  <13.821642, 15.795998, 25.673254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.724505, 15.506804, 25.931965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241911, 0.600538, 0.762124,
		-0.939419, 0.341537, 0.029063,
		-0.242840, -0.722984, 0.646779,
		13.651653, 15.289908, 26.125999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.409996, 16.101103, 26.206499>,  <13.821642, 15.795998, 25.673254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.409996, 16.101103, 26.206499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549913, 15.766479, 26.375168>,  <13.633863, 15.565703, 26.476370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549913, 15.766479, 26.375168>,  <13.409996, 16.101103, 26.206499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.549913, 15.766479, 26.375168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285947, 0.523968, 0.802304,
		-0.892120, -0.160065, 0.422493,
		0.349794, -0.836562, 0.421672,
		13.654852, 15.515510, 26.501669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.158394, 16.183149, 26.889896>,  <13.409996, 16.101103, 26.206499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.158394, 16.183149, 26.889896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.460073, 15.920861, 26.903883>,  <13.641079, 15.763489, 26.912275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.460073, 15.920861, 26.903883>,  <13.158394, 16.183149, 26.889896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.460073, 15.920861, 26.903883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385612, 0.485365, 0.784681,
		-0.531501, -0.578320, 0.618913,
		0.754196, -0.655719, 0.034965,
		13.686331, 15.724146, 26.914371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305051, 15.938275, 27.591286>,  <13.158394, 16.183149, 26.889896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305051, 15.938275, 27.591286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.638263, 15.931813, 27.370089>,  <13.838190, 15.927936, 27.237371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.638263, 15.931813, 27.370089>,  <13.305051, 15.938275, 27.591286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.638263, 15.931813, 27.370089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437290, 0.631516, 0.640286,
		0.338878, -0.775195, 0.533137,
		0.833030, -0.016157, -0.552991,
		13.888172, 15.926967, 27.204191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993392, 15.757891, 27.979771>,  <13.305051, 15.938275, 27.591286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993392, 15.757891, 27.979771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079515, 15.959169, 27.645002>,  <14.131187, 16.079937, 27.444141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079515, 15.959169, 27.645002>,  <13.993392, 15.757891, 27.979771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079515, 15.959169, 27.645002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582145, 0.621958, 0.523713,
		0.784061, -0.599968, -0.159022,
		0.215306, 0.503197, -0.836921,
		14.144106, 16.110128, 27.393927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782234, 15.848550, 27.789410>,  <13.993392, 15.757891, 27.979771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782234, 15.848550, 27.789410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564805, 16.160637, 27.665609>,  <14.434347, 16.347889, 27.591330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564805, 16.160637, 27.665609>,  <14.782234, 15.848550, 27.789410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564805, 16.160637, 27.665609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683721, 0.625466, 0.375923,
		0.486882, -0.007269, -0.873437,
		-0.543573, 0.780217, -0.309498,
		14.401733, 16.394703, 27.572760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473542, 16.568457, 28.035162>,  <14.782234, 15.848550, 27.789410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473542, 16.568457, 28.035162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680125, 16.287130, 28.230555>,  <14.804075, 16.118334, 28.347790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680125, 16.287130, 28.230555>,  <14.473542, 16.568457, 28.035162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680125, 16.287130, 28.230555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847165, 0.502813, -0.171729,
		-0.124836, 0.502517, 0.855507,
		0.516457, -0.703317, 0.488484,
		14.835062, 16.076136, 28.377100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.860591, 16.841028, 28.630749>,  <14.473542, 16.568457, 28.035162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.860591, 16.841028, 28.630749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.069952, 16.526661, 28.499063>,  <15.195569, 16.338039, 28.420053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.069952, 16.526661, 28.499063>,  <14.860591, 16.841028, 28.630749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.069952, 16.526661, 28.499063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795883, 0.588912, -0.140546,
		0.304334, -0.188451, 0.933738,
		0.523403, -0.785919, -0.329211,
		15.226973, 16.290886, 28.400301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310248, 17.292580, 28.156155>,  <14.860591, 16.841028, 28.630749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310248, 17.292580, 28.156155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623778, 17.344345, 27.913216>,  <15.811896, 17.375404, 27.767452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623778, 17.344345, 27.913216>,  <15.310248, 17.292580, 28.156155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623778, 17.344345, 27.913216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334490, 0.912021, -0.237347,
		0.523197, 0.389190, 0.758153,
		0.783824, 0.129415, -0.607347,
		15.858926, 17.383169, 27.731010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365789, 17.984785, 28.188301>,  <15.310248, 17.292580, 28.156155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.365789, 17.984785, 28.188301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693115, 18.188169, 28.081097>,  <15.889511, 18.310200, 28.016773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693115, 18.188169, 28.081097>,  <15.365789, 17.984785, 28.188301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693115, 18.188169, 28.081097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362769, 0.095215, -0.927002,
		-0.445824, 0.855806, 0.262369,
		0.818315, 0.508459, -0.268010,
		15.938610, 18.340708, 28.000694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343309, 18.681053, 27.818449>,  <15.365789, 17.984785, 28.188301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343309, 18.681053, 27.818449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678415, 18.527838, 27.662792>,  <15.879479, 18.435909, 27.569399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678415, 18.527838, 27.662792>,  <15.343309, 18.681053, 27.818449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678415, 18.527838, 27.662792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413146, 0.021308, -0.910415,
		0.357015, 0.923487, -0.140400,
		0.837765, -0.383038, -0.389142,
		15.929745, 18.412926, 27.546049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295588, 18.993729, 27.166288>,  <15.343309, 18.681053, 27.818449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295588, 18.993729, 27.166288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.565722, 18.703793, 27.111847>,  <15.727802, 18.529831, 27.079182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.565722, 18.703793, 27.111847>,  <15.295588, 18.993729, 27.166288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.565722, 18.703793, 27.111847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235073, -0.036637, -0.971287,
		0.699044, 0.687940, -0.195133,
		0.675336, -0.724842, -0.136105,
		15.768322, 18.486340, 27.071016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694856, 19.237131, 26.600851>,  <15.295588, 18.993729, 27.166288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694856, 19.237131, 26.600851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.719512, 18.839287, 26.634205>,  <15.734305, 18.600580, 26.654217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.719512, 18.839287, 26.634205>,  <15.694856, 19.237131, 26.600851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719512, 18.839287, 26.634205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344389, -0.099609, -0.933528,
		0.936801, 0.028826, -0.348673,
		0.061641, -0.994609, 0.083387,
		15.738005, 18.540905, 26.659222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919663, 18.986113, 26.006975>,  <15.694856, 19.237131, 26.600851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919663, 18.986113, 26.006975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778205, 18.646242, 26.163427>,  <15.693330, 18.442320, 26.257298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778205, 18.646242, 26.163427>,  <15.919663, 18.986113, 26.006975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778205, 18.646242, 26.163427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388025, -0.247211, -0.887876,
		0.851099, -0.465763, -0.242271,
		-0.353647, -0.849678, 0.391129,
		15.672111, 18.391338, 26.280766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079021, 18.383230, 25.495909>,  <15.919663, 18.986113, 26.006975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.079021, 18.383230, 25.495909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787714, 18.228376, 25.722094>,  <15.612929, 18.135464, 25.857805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787714, 18.228376, 25.722094>,  <16.079021, 18.383230, 25.495909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.787714, 18.228376, 25.722094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302141, -0.559223, -0.771998,
		0.615088, -0.733073, 0.290296,
		-0.728271, -0.387136, 0.565462,
		15.569233, 18.112236, 25.891731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102646, 17.717413, 25.379862>,  <16.079021, 18.383230, 25.495909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.102646, 17.717413, 25.379862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730253, 17.758757, 25.519913>,  <15.506818, 17.783562, 25.603943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730253, 17.758757, 25.519913>,  <16.102646, 17.717413, 25.379862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730253, 17.758757, 25.519913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353994, -0.489999, -0.796611,
		0.089227, -0.865574, 0.492768,
		-0.930981, 0.103358, 0.350130,
		15.450959, 17.789764, 25.624952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876564, 17.043343, 25.632076>,  <16.102646, 17.717413, 25.379862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876564, 17.043343, 25.632076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564340, 17.274824, 25.537567>,  <15.377005, 17.413713, 25.480862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564340, 17.274824, 25.537567>,  <15.876564, 17.043343, 25.632076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.564340, 17.274824, 25.537567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254211, -0.639213, -0.725798,
		-0.571049, -0.506469, 0.646059,
		-0.780564, 0.578702, -0.236272,
		15.330171, 17.448435, 25.466684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343505, 16.608898, 25.519224>,  <15.876564, 17.043343, 25.632076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343505, 16.608898, 25.519224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.173445, 16.925636, 25.343849>,  <15.071408, 17.115679, 25.238625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.173445, 16.925636, 25.343849>,  <15.343505, 16.608898, 25.519224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173445, 16.925636, 25.343849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434099, -0.603435, -0.668898,
		-0.794233, -0.094057, 0.600290,
		-0.425150, 0.791845, -0.438437,
		15.045899, 17.163191, 25.212318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667340, 16.465017, 25.592566>,  <15.343505, 16.608898, 25.519224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667340, 16.465017, 25.592566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.729542, 16.731930, 25.301210>,  <14.766863, 16.892078, 25.126396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.729542, 16.731930, 25.301210>,  <14.667340, 16.465017, 25.592566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.729542, 16.731930, 25.301210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409193, -0.627611, -0.662318,
		-0.899099, 0.401045, 0.175451,
		0.155504, 0.667283, -0.728390,
		14.776193, 16.932116, 25.082693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.034472, 16.494884, 25.235250>,  <14.667340, 16.465017, 25.592566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.034472, 16.494884, 25.235250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.324710, 16.601978, 24.981691>,  <14.498853, 16.666235, 24.829556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.324710, 16.601978, 24.981691>,  <14.034472, 16.494884, 25.235250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.324710, 16.601978, 24.981691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358932, -0.638698, -0.680612,
		-0.587093, 0.721377, -0.367339,
		0.725596, 0.267733, -0.633900,
		14.542389, 16.682299, 24.791521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699261, 16.349775, 24.628057>,  <14.034472, 16.494884, 25.235250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699261, 16.349775, 24.628057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069813, 16.457508, 24.522774>,  <14.292144, 16.522148, 24.459604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069813, 16.457508, 24.522774>,  <13.699261, 16.349775, 24.628057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069813, 16.457508, 24.522774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164755, -0.338637, -0.926380,
		-0.338638, 0.901546, -0.269333,
		0.926380, 0.269333, -0.263210,
		14.347727, 16.538307, 24.443811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718063, 16.718857, 23.947012>,  <13.699261, 16.349775, 24.628057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718063, 16.718857, 23.947012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078488, 16.556253, 24.007460>,  <14.294744, 16.458691, 24.043728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078488, 16.556253, 24.007460>,  <13.718063, 16.718857, 23.947012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078488, 16.556253, 24.007460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013629, -0.321737, -0.946731,
		0.433477, 0.855122, -0.284365,
		0.901062, -0.406511, 0.151120,
		14.348806, 16.434299, 24.052795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044984, 16.916483, 23.376041>,  <13.718063, 16.718857, 23.947012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044984, 16.916483, 23.376041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274334, 16.621405, 23.518616>,  <14.411944, 16.444359, 23.604160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274334, 16.621405, 23.518616>,  <14.044984, 16.916483, 23.376041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274334, 16.621405, 23.518616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131718, -0.346396, -0.928795,
		0.808635, 0.579498, -0.101448,
		0.573376, -0.737694, 0.356438,
		14.446346, 16.400097, 23.625547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738957, 16.871658, 22.966955>,  <14.044984, 16.916483, 23.376041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.738957, 16.871658, 22.966955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704321, 16.516047, 23.146791>,  <14.683539, 16.302679, 23.254694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704321, 16.516047, 23.146791>,  <14.738957, 16.871658, 22.966955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704321, 16.516047, 23.146791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240446, -0.456594, -0.856567,
		0.966793, 0.033932, 0.253300,
		-0.086591, -0.889028, 0.449591,
		14.678344, 16.249338, 23.281670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.398642, 16.375029, 22.904657>,  <14.738957, 16.871658, 22.966955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.398642, 16.375029, 22.904657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089393, 16.126036, 22.953314>,  <14.903843, 15.976640, 22.982508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089393, 16.126036, 22.953314>,  <15.398642, 16.375029, 22.904657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089393, 16.126036, 22.953314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304585, -0.532602, -0.789660,
		0.556336, -0.573455, 0.601366,
		-0.773123, -0.622483, 0.121640,
		14.857456, 15.939291, 22.989805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589303, 15.875837, 22.488991>,  <15.398642, 16.375029, 22.904657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589303, 15.875837, 22.488991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.216328, 15.770440, 22.587887>,  <14.992542, 15.707202, 22.647224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.216328, 15.770440, 22.587887>,  <15.589303, 15.875837, 22.488991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216328, 15.770440, 22.587887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011139, -0.662970, -0.748563,
		0.361155, -0.700744, 0.615244,
		-0.932439, -0.263494, 0.247240,
		14.936596, 15.691392, 22.662060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554629, 15.165012, 22.622356>,  <15.589303, 15.875837, 22.488991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554629, 15.165012, 22.622356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.184941, 15.278789, 22.520445>,  <14.963128, 15.347054, 22.459299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.184941, 15.278789, 22.520445>,  <15.554629, 15.165012, 22.622356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184941, 15.278789, 22.520445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009236, -0.650353, -0.759576,
		-0.381749, -0.704368, 0.598443,
		-0.924220, 0.284440, -0.254777,
		14.907676, 15.364120, 22.444012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.114426, 14.561166, 22.532730>,  <15.554629, 15.165012, 22.622356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.114426, 14.561166, 22.532730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944124, 14.840230, 22.302252>,  <14.841943, 15.007668, 22.163965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944124, 14.840230, 22.302252>,  <15.114426, 14.561166, 22.532730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944124, 14.840230, 22.302252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006200, -0.639029, -0.769157,
		-0.904817, -0.323900, 0.276395,
		-0.425755, 0.697661, -0.576196,
		14.816398, 15.049528, 22.129393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919238, 14.100070, 22.091444>,  <15.114426, 14.561166, 22.532730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.919238, 14.100070, 22.091444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826478, 14.451016, 21.923420>,  <14.770822, 14.661584, 21.822605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826478, 14.451016, 21.923420>,  <14.919238, 14.100070, 22.091444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826478, 14.451016, 21.923420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041041, -0.440273, -0.896926,
		-0.971873, -0.190757, 0.138107,
		-0.231900, 0.877367, -0.420060,
		14.756908, 14.714227, 21.797401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381615, 14.012627, 21.704868>,  <14.919238, 14.100070, 22.091444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381615, 14.012627, 21.704868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.530595, 14.329096, 21.510826>,  <14.619983, 14.518977, 21.394402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.530595, 14.329096, 21.510826>,  <14.381615, 14.012627, 21.704868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.530595, 14.329096, 21.510826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246297, -0.419704, -0.873606,
		-0.894773, 0.444854, 0.038545,
		0.372449, 0.791172, -0.485106,
		14.642329, 14.566447, 21.365294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925161, 14.304863, 21.206055>,  <14.381615, 14.012627, 21.704868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925161, 14.304863, 21.206055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287795, 14.404693, 21.069927>,  <14.505376, 14.464590, 20.988251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287795, 14.404693, 21.069927>,  <13.925161, 14.304863, 21.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287795, 14.404693, 21.069927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253221, -0.323419, -0.911745,
		-0.337613, 0.912750, -0.230010,
		0.906585, 0.249574, -0.340318,
		14.559771, 14.479565, 20.967833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.840490, 14.535984, 20.508179>,  <13.925161, 14.304863, 21.206055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.840490, 14.535984, 20.508179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.237054, 14.483901, 20.513161>,  <14.474992, 14.452651, 20.516150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.237054, 14.483901, 20.513161>,  <13.840490, 14.535984, 20.508179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.237054, 14.483901, 20.513161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021129, -0.253383, -0.967135,
		0.129085, 0.958563, -0.253957,
		0.991409, -0.130208, 0.012455,
		14.534476, 14.444839, 20.516897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.112835, 14.909016, 19.917072>,  <13.840490, 14.535984, 20.508179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.112835, 14.909016, 19.917072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.393348, 14.638561, 20.007444>,  <14.561656, 14.476289, 20.061666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.393348, 14.638561, 20.007444>,  <14.112835, 14.909016, 19.917072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.393348, 14.638561, 20.007444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129361, -0.190965, -0.973035,
		0.701048, 0.711600, -0.046455,
		0.701283, -0.676135, 0.225929,
		14.603733, 14.435720, 20.075224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.700266, 14.966639, 19.436190>,  <14.112835, 14.909016, 19.917072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.700266, 14.966639, 19.436190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720354, 14.595983, 19.585222>,  <14.732408, 14.373589, 19.674641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720354, 14.595983, 19.585222>,  <14.700266, 14.966639, 19.436190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720354, 14.595983, 19.585222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193936, -0.356902, -0.913789,
		0.979728, 0.118148, 0.161785,
		0.050221, -0.926640, 0.372580,
		14.735420, 14.317990, 19.696997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.336871, 14.774995, 19.240265>,  <14.700266, 14.966639, 19.436190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.336871, 14.774995, 19.240265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.148477, 14.436164, 19.338760>,  <15.035440, 14.232865, 19.397858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.148477, 14.436164, 19.338760>,  <15.336871, 14.774995, 19.240265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.148477, 14.436164, 19.338760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312881, -0.421400, -0.851192,
		0.824790, -0.323856, 0.463507,
		-0.470986, -0.847077, 0.246238,
		15.007181, 14.182041, 19.412632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809957, 14.293023, 19.009638>,  <15.336871, 14.774995, 19.240265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809957, 14.293023, 19.009638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472178, 14.081669, 19.044790>,  <15.269512, 13.954857, 19.065882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472178, 14.081669, 19.044790>,  <15.809957, 14.293023, 19.009638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472178, 14.081669, 19.044790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184914, -0.441550, -0.877975,
		0.502714, -0.725150, 0.470570,
		-0.844444, -0.528385, 0.087883,
		15.218845, 13.923153, 19.071156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.910529, 13.589796, 18.881151>,  <15.809957, 14.293023, 19.009638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.910529, 13.589796, 18.881151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514871, 13.612356, 18.826876>,  <15.277475, 13.625892, 18.794312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514871, 13.612356, 18.826876>,  <15.910529, 13.589796, 18.881151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514871, 13.612356, 18.826876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072968, -0.612981, -0.786721,
		-0.127544, -0.788082, 0.602212,
		-0.989145, 0.056399, -0.135687,
		15.218127, 13.629276, 18.786169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705940, 12.888932, 18.811020>,  <15.910529, 13.589796, 18.881151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705940, 12.888932, 18.811020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427168, 13.131342, 18.657646>,  <15.259905, 13.276788, 18.565622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427168, 13.131342, 18.657646>,  <15.705940, 12.888932, 18.811020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427168, 13.131342, 18.657646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074967, -0.470177, -0.879382,
		-0.713209, -0.641613, 0.282249,
		-0.696931, 0.606024, -0.383435,
		15.218088, 13.313149, 18.542616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238935, 12.547215, 18.329441>,  <15.705940, 12.888932, 18.811020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238935, 12.547215, 18.329441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.225115, 12.923329, 18.193989>,  <15.216823, 13.148997, 18.112717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.225115, 12.923329, 18.193989>,  <15.238935, 12.547215, 18.329441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.225115, 12.923329, 18.193989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248167, -0.320149, -0.914285,
		-0.968101, -0.115626, -0.222287,
		-0.034550, 0.940285, -0.338631,
		15.214749, 13.205415, 18.092400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306900, 12.413289, 17.630966>,  <15.238935, 12.547215, 18.329441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306900, 12.413289, 17.630966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239885, 12.807573, 17.623964>,  <15.199677, 13.044144, 17.619762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239885, 12.807573, 17.623964>,  <15.306900, 12.413289, 17.630966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.239885, 12.807573, 17.623964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059770, -0.027880, -0.997823,
		-0.984052, -0.166127, 0.063587,
		-0.167538, 0.985710, -0.017506,
		15.189624, 13.103287, 17.618711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656697, 12.572124, 17.287674>,  <15.306900, 12.413289, 17.630966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656697, 12.572124, 17.287674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.898551, 12.890362, 17.272476>,  <15.043663, 13.081305, 17.263357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.898551, 12.890362, 17.272476>,  <14.656697, 12.572124, 17.287674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.898551, 12.890362, 17.272476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157306, 0.072514, -0.984884,
		-0.780815, 0.601471, 0.168997,
		0.604634, 0.795597, -0.037996,
		15.079941, 13.129041, 17.261078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.389475, 13.075601, 16.830210>,  <14.656697, 12.572124, 17.287674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.389475, 13.075601, 16.830210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787445, 13.113039, 16.844978>,  <15.026227, 13.135502, 16.853840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787445, 13.113039, 16.844978>,  <14.389475, 13.075601, 16.830210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787445, 13.113039, 16.844978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036940, 0.001536, -0.999316,
		-0.093589, 0.995609, -0.001930,
		0.994925, 0.093596, 0.036922,
		15.085922, 13.141118, 16.856054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.474076, 13.177888, 16.184511>,  <14.389475, 13.075601, 16.830210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.474076, 13.177888, 16.184511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854523, 13.196483, 16.306637>,  <15.082790, 13.207640, 16.379911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854523, 13.196483, 16.306637>,  <14.474076, 13.177888, 16.184511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.854523, 13.196483, 16.306637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288364, 0.220234, -0.931849,
		-0.110560, 0.974339, 0.196063,
		0.951116, 0.046488, 0.305314,
		15.139857, 13.210429, 16.398232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824232, 13.840131, 15.868873>,  <14.474076, 13.177888, 16.184511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824232, 13.840131, 15.868873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.120374, 13.588297, 15.963104>,  <15.298059, 13.437197, 16.019644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.120374, 13.588297, 15.963104>,  <14.824232, 13.840131, 15.868873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.120374, 13.588297, 15.963104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331221, 0.036704, -0.942839,
		0.584951, 0.776064, 0.235706,
		0.740355, -0.629585, 0.235579,
		15.342480, 13.399422, 16.033777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478409, 14.229770, 15.546655>,  <14.824232, 13.840131, 15.868873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478409, 14.229770, 15.546655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.555526, 13.840878, 15.599719>,  <15.601796, 13.607542, 15.631557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.555526, 13.840878, 15.599719>,  <15.478409, 14.229770, 15.546655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.555526, 13.840878, 15.599719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313682, -0.067037, -0.947159,
		0.929750, 0.224218, 0.292046,
		0.192792, -0.972230, 0.132661,
		15.613363, 13.549209, 15.639518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.156803, 14.091178, 15.365854>,  <15.478409, 14.229770, 15.546655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.156803, 14.091178, 15.365854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.964690, 13.744016, 15.315149>,  <15.849422, 13.535718, 15.284726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.964690, 13.744016, 15.315149>,  <16.156803, 14.091178, 15.365854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.964690, 13.744016, 15.315149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457031, -0.124277, -0.880726,
		0.748634, -0.480930, 0.456348,
		-0.480281, -0.867906, -0.126762,
		15.820606, 13.483644, 15.277121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669352, 13.512197, 15.223303>,  <16.156803, 14.091178, 15.365854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669352, 13.512197, 15.223303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319374, 13.389360, 15.073545>,  <16.109388, 13.315659, 14.983689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319374, 13.389360, 15.073545>,  <16.669352, 13.512197, 15.223303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319374, 13.389360, 15.073545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413047, -0.069778, -0.908033,
		0.252724, -0.949119, 0.187894,
		-0.874941, -0.307090, -0.374396,
		16.056892, 13.297234, 14.961226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932377, 13.009180, 14.829213>,  <16.669352, 13.512197, 15.223303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932377, 13.009180, 14.829213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.573507, 13.077832, 14.666428>,  <16.358185, 13.119023, 14.568756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.573507, 13.077832, 14.666428>,  <16.932377, 13.009180, 14.829213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573507, 13.077832, 14.666428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368957, -0.215269, -0.904174,
		-0.242793, -0.961354, 0.129808,
		-0.897174, 0.171633, -0.406964,
		16.304356, 13.129321, 14.544338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837988, 12.433862, 14.424550>,  <16.932377, 13.009180, 14.829213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837988, 12.433862, 14.424550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.566679, 12.688611, 14.277940>,  <16.403894, 12.841460, 14.189974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.566679, 12.688611, 14.277940>,  <16.837988, 12.433862, 14.424550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.566679, 12.688611, 14.277940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391714, -0.108639, -0.913651,
		-0.621699, -0.763276, -0.175786,
		-0.678270, 0.636874, -0.366526,
		16.363197, 12.879673, 14.167982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472166, 12.100060, 13.799938>,  <16.837988, 12.433862, 14.424550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.472166, 12.100060, 13.799938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495667, 12.499209, 13.788628>,  <16.509768, 12.738699, 13.781841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495667, 12.499209, 13.788628>,  <16.472166, 12.100060, 13.799938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495667, 12.499209, 13.788628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420312, -0.050418, -0.905978,
		-0.905476, 0.041343, -0.422379,
		0.058751, 0.997872, -0.028276,
		16.513292, 12.798571, 13.780145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044626, 12.269405, 13.198030>,  <16.472166, 12.100060, 13.799938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044626, 12.269405, 13.198030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318651, 12.549506, 13.278366>,  <16.483067, 12.717566, 13.326568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318651, 12.549506, 13.278366>,  <16.044626, 12.269405, 13.198030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318651, 12.549506, 13.278366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346298, -0.070479, -0.935474,
		-0.640913, 0.710408, -0.290778,
		0.685061, 0.700253, 0.200842,
		16.524170, 12.759582, 13.338618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167833, 12.504554, 12.564161>,  <16.044626, 12.269405, 13.198030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167833, 12.504554, 12.564161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.454365, 12.677354, 12.783342>,  <16.626284, 12.781034, 12.914851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.454365, 12.677354, 12.783342>,  <16.167833, 12.504554, 12.564161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.454365, 12.677354, 12.783342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600373, 0.018578, -0.799504,
		-0.355566, 0.901682, -0.246053,
		0.716327, 0.432000, 0.547952,
		16.669264, 12.806953, 12.947728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.467112, 13.094812, 12.273926>,  <16.167833, 12.504554, 12.564161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.467112, 13.094812, 12.273926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.750456, 12.927450, 12.501314>,  <16.920464, 12.827033, 12.637747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.750456, 12.927450, 12.501314>,  <16.467112, 13.094812, 12.273926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750456, 12.927450, 12.501314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669038, 0.141308, -0.729671,
		0.224969, 0.897200, 0.380027,
		0.708362, -0.418406, 0.568471,
		16.962965, 12.801929, 12.671856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142826, 13.559246, 12.258176>,  <16.467112, 13.094812, 12.273926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.142826, 13.559246, 12.258176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.205006, 13.169260, 12.321772>,  <17.242313, 12.935268, 12.359929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.205006, 13.169260, 12.321772>,  <17.142826, 13.559246, 12.258176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205006, 13.169260, 12.321772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528854, -0.053801, -0.847006,
		0.834356, 0.215749, 0.507251,
		0.155450, -0.974966, 0.158989,
		17.251640, 12.876770, 12.369468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.946383, 13.331468, 12.436909>,  <17.142826, 13.559246, 12.258176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.946383, 13.331468, 12.436909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660971, 13.144345, 12.228283>,  <17.489723, 13.032072, 12.103107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660971, 13.144345, 12.228283>,  <17.946383, 13.331468, 12.436909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660971, 13.144345, 12.228283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482748, 0.211246, -0.849899,
		0.507767, -0.858215, 0.075102,
		-0.713531, -0.467806, -0.521566,
		17.446911, 13.004004, 12.071814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306845, 12.981693, 12.005305>,  <17.946383, 13.331468, 12.436909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306845, 12.981693, 12.005305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.930523, 13.034712, 11.880520>,  <17.704731, 13.066523, 11.805649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.930523, 13.034712, 11.880520>,  <18.306845, 12.981693, 12.005305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.930523, 13.034712, 11.880520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337756, 0.289257, -0.895685,
		-0.028483, -0.948030, -0.316903,
		-0.940802, 0.132547, -0.311964,
		17.648283, 13.074476, 11.786930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435860, 12.970657, 11.263958>,  <18.306845, 12.981693, 12.005305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.435860, 12.970657, 11.263958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.088261, 13.148721, 11.350376>,  <17.879702, 13.255559, 11.402227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.088261, 13.148721, 11.350376>,  <18.435860, 12.970657, 11.263958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088261, 13.148721, 11.350376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153125, 0.657119, -0.738070,
		-0.470526, -0.608299, -0.639201,
		-0.868998, 0.445158, 0.216046,
		17.827560, 13.282269, 11.415190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890158, 12.635602, 10.754397>,  <18.435860, 12.970657, 11.263958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890158, 12.635602, 10.754397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.213573, 12.421906, 10.853071>,  <19.407623, 12.293688, 10.912275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.213573, 12.421906, 10.853071>,  <18.890158, 12.635602, 10.754397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.213573, 12.421906, 10.853071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483207, 0.363535, -0.796463,
		0.335824, 0.763170, 0.552081,
		0.808537, -0.534241, 0.246686,
		19.456135, 12.261633, 10.927077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339005, 13.094553, 10.456910>,  <18.890158, 12.635602, 10.754397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339005, 13.094553, 10.456910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.535313, 12.759054, 10.551269>,  <19.653097, 12.557755, 10.607883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.535313, 12.759054, 10.551269>,  <19.339005, 13.094553, 10.456910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.535313, 12.759054, 10.551269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660918, 0.181949, -0.728067,
		0.567744, 0.513222, 0.643639,
		0.490769, -0.838748, 0.235897,
		19.682543, 12.507430, 10.622038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076368, 13.259307, 10.618193>,  <19.339005, 13.094553, 10.456910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076368, 13.259307, 10.618193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055954, 12.881271, 10.489070>,  <20.043705, 12.654450, 10.411596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055954, 12.881271, 10.489070>,  <20.076368, 13.259307, 10.618193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055954, 12.881271, 10.489070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589526, 0.232394, -0.773596,
		0.806135, -0.229785, 0.545294,
		-0.051038, -0.945088, -0.322806,
		20.040642, 12.597745, 10.392228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712978, 13.029200, 10.473680>,  <20.076368, 13.259307, 10.618193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712978, 13.029200, 10.473680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503510, 12.776108, 10.245498>,  <20.377829, 12.624252, 10.108588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503510, 12.776108, 10.245498>,  <20.712978, 13.029200, 10.473680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503510, 12.776108, 10.245498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661946, 0.119312, -0.739995,
		0.536279, -0.765126, 0.356352,
		-0.523672, -0.632730, -0.570456,
		20.346407, 12.586289, 10.074361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.162014, 12.745028, 10.090302>,  <20.712978, 13.029200, 10.473680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.162014, 12.745028, 10.090302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.834534, 12.651389, 9.880567>,  <20.638046, 12.595205, 9.754725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.834534, 12.651389, 9.880567>,  <21.162014, 12.745028, 10.090302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.834534, 12.651389, 9.880567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500663, 0.156139, -0.851444,
		0.281192, -0.959592, -0.010626,
		-0.818699, -0.234099, -0.524338,
		20.588924, 12.581160, 9.723266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398640, 12.297316, 9.651982>,  <21.162014, 12.745028, 10.090302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398640, 12.297316, 9.651982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068192, 12.435361, 9.473804>,  <20.869923, 12.518188, 9.366897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068192, 12.435361, 9.473804>,  <21.398640, 12.297316, 9.651982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068192, 12.435361, 9.473804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517793, 0.153070, -0.841701,
		-0.222298, -0.925995, -0.305152,
		-0.826120, 0.345113, -0.445446,
		20.820356, 12.538895, 9.340170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.420349, 11.986423, 8.992599>,  <21.398640, 12.297316, 9.651982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.420349, 11.986423, 8.992599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.207952, 12.325089, 8.978682>,  <21.080515, 12.528288, 8.970331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.207952, 12.325089, 8.978682>,  <21.420349, 11.986423, 8.992599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.207952, 12.325089, 8.978682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558139, 0.318555, -0.766161,
		-0.637598, -0.426243, -0.641706,
		-0.530990, 0.846664, -0.034793,
		21.048656, 12.579087, 8.968244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.416008, 12.081622, 8.277337>,  <21.420349, 11.986423, 8.992599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.416008, 12.081622, 8.277337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.298790, 12.421788, 8.452114>,  <21.228460, 12.625888, 8.556980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.298790, 12.421788, 8.452114>,  <21.416008, 12.081622, 8.277337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.298790, 12.421788, 8.452114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595028, 0.519933, -0.612872,
		-0.748377, 0.080395, -0.658384,
		-0.293043, 0.850415, 0.436943,
		21.210876, 12.676913, 8.583197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.246403, 12.474979, 7.772090>,  <21.416008, 12.081622, 8.277337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.246403, 12.474979, 7.772090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.310701, 12.725415, 8.077291>,  <21.349281, 12.875677, 8.260411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.310701, 12.725415, 8.077291>,  <21.246403, 12.474979, 7.772090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.310701, 12.725415, 8.077291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516783, 0.605229, -0.605502,
		-0.840890, 0.491640, -0.226263,
		0.160748, 0.626090, 0.763002,
		21.358925, 12.913242, 8.306191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.909420, 13.122541, 7.564945>,  <21.246403, 12.474979, 7.772090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.909420, 13.122541, 7.564945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184175, 13.199154, 7.845373>,  <21.349030, 13.245121, 8.013630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184175, 13.199154, 7.845373>,  <20.909420, 13.122541, 7.564945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184175, 13.199154, 7.845373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467866, 0.621633, -0.628231,
		-0.556134, 0.759532, 0.337382,
		0.686889, 0.191531, 0.701070,
		21.390242, 13.256614, 8.055694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247360, 13.766206, 7.457220>,  <20.909420, 13.122541, 7.564945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247360, 13.766206, 7.457220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.511080, 13.631044, 7.725890>,  <21.669312, 13.549948, 7.887092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.511080, 13.631044, 7.725890>,  <21.247360, 13.766206, 7.457220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511080, 13.631044, 7.725890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711622, 0.568827, -0.412346,
		-0.242733, 0.749838, 0.615486,
		0.659298, -0.337904, 0.671675,
		21.708870, 13.529674, 7.927392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.454437, 14.318572, 7.730098>,  <21.247360, 13.766206, 7.457220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.454437, 14.318572, 7.730098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746012, 14.047193, 7.766680>,  <21.920956, 13.884365, 7.788629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746012, 14.047193, 7.766680>,  <21.454437, 14.318572, 7.730098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746012, 14.047193, 7.766680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617809, 0.594388, -0.514796,
		0.294902, 0.431754, 0.852421,
		0.728934, -0.678448, 0.091455,
		21.964691, 13.843658, 7.794116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.988968, 14.679653, 7.743473>,  <21.454437, 14.318572, 7.730098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.988968, 14.679653, 7.743473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168329, 14.330756, 7.665367>,  <22.275946, 14.121418, 7.618504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168329, 14.330756, 7.665367>,  <21.988968, 14.679653, 7.743473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168329, 14.330756, 7.665367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572338, 0.447986, -0.686831,
		0.686558, 0.196221, 0.700096,
		0.448405, -0.872242, -0.195264,
		22.302851, 14.069084, 7.606788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.614557, 14.637370, 7.988059>,  <21.988968, 14.679653, 7.743473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.614557, 14.637370, 7.988059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.625158, 14.394409, 7.670478>,  <22.631519, 14.248632, 7.479930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.625158, 14.394409, 7.670478>,  <22.614557, 14.637370, 7.988059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625158, 14.394409, 7.670478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644302, 0.617633, -0.451003,
		0.764312, -0.499591, 0.407721,
		0.026505, -0.607403, -0.793952,
		22.633110, 14.212189, 7.432293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.217022, 14.868005, 7.672174>,  <22.614557, 14.637370, 7.988059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.217022, 14.868005, 7.672174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.055822, 14.635956, 7.389034>,  <22.959103, 14.496727, 7.219150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.055822, 14.635956, 7.389034>,  <23.217022, 14.868005, 7.672174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.055822, 14.635956, 7.389034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595394, 0.421203, -0.684174,
		0.695053, -0.697170, 0.175657,
		-0.402999, -0.580123, -0.707849,
		22.934923, 14.461919, 7.176679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.794954, 14.622219, 7.303310>,  <23.217022, 14.868005, 7.672174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.794954, 14.622219, 7.303310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477201, 14.605005, 7.060953>,  <23.286551, 14.594677, 6.915539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477201, 14.605005, 7.060953>,  <23.794954, 14.622219, 7.303310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.477201, 14.605005, 7.060953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579881, 0.243215, -0.777551,
		0.180820, -0.969018, -0.168253,
		-0.794382, -0.043030, -0.605893,
		23.238888, 14.592095, 6.879185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.124926, 14.718536, 6.723992>,  <23.794954, 14.622219, 7.303310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.124926, 14.718536, 6.723992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.733248, 14.771088, 6.662129>,  <23.498241, 14.802618, 6.625012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.733248, 14.771088, 6.662129>,  <24.124926, 14.718536, 6.723992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.733248, 14.771088, 6.662129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202825, 0.657555, -0.725592,
		0.006369, -0.741863, -0.670521,
		-0.979194, 0.131377, -0.154657,
		23.439489, 14.810501, 6.615732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.044188, 14.653144, 5.974331>,  <24.124926, 14.718536, 6.723992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.044188, 14.653144, 5.974331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.739033, 14.872432, 6.111422>,  <23.555941, 15.004004, 6.193676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.739033, 14.872432, 6.111422>,  <24.044188, 14.653144, 5.974331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.739033, 14.872432, 6.111422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153199, 0.668280, -0.727965,
		-0.628121, -0.502849, -0.593807,
		-0.762885, 0.548221, 0.342725,
		23.510168, 15.036898, 6.214239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.755087, 14.890090, 5.426225>,  <24.044188, 14.653144, 5.974331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.755087, 14.890090, 5.426225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585236, 15.127109, 5.700037>,  <23.483326, 15.269320, 5.864324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585236, 15.127109, 5.700037>,  <23.755087, 14.890090, 5.426225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.585236, 15.127109, 5.700037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052105, 0.770819, -0.634920,
		-0.903868, -0.233937, -0.358185,
		-0.424627, 0.592546, 0.684530,
		23.457848, 15.304873, 5.905396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.161970, 15.268518, 5.064656>,  <23.755087, 14.890090, 5.426225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.161970, 15.268518, 5.064656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.257984, 15.480876, 5.389750>,  <23.315592, 15.608291, 5.584805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.257984, 15.480876, 5.389750>,  <23.161970, 15.268518, 5.064656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.257984, 15.480876, 5.389750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021007, 0.839854, -0.542406,
		-0.970537, 0.113124, 0.212747,
		0.240035, 0.530894, 0.812733,
		23.329994, 15.640144, 5.633569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.619637, 15.726492, 5.179965>,  <23.161970, 15.268518, 5.064656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.619637, 15.726492, 5.179965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.940069, 15.875060, 5.367714>,  <23.132330, 15.964201, 5.480364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.940069, 15.875060, 5.367714>,  <22.619637, 15.726492, 5.179965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.940069, 15.875060, 5.367714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139009, 0.878188, -0.457670,
		-0.582187, 0.301385, 0.755133,
		0.801084, 0.371420, 0.469374,
		23.180395, 15.986486, 5.508527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.460667, 16.375746, 5.541283>,  <22.619637, 15.726492, 5.179965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.460667, 16.375746, 5.541283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.851240, 16.368605, 5.455252>,  <23.085585, 16.364321, 5.403634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.851240, 16.368605, 5.455252>,  <22.460667, 16.375746, 5.541283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.851240, 16.368605, 5.455252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051937, 0.947844, -0.314473,
		0.209473, 0.318232, 0.924580,
		0.976434, -0.017853, -0.215076,
		23.144171, 16.363249, 5.390729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.475435, 16.418560, 6.367630>,  <22.460667, 16.375746, 5.541283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.475435, 16.418560, 6.367630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.638382, 16.543217, 6.711008>,  <22.736151, 16.618011, 6.917035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.638382, 16.543217, 6.711008>,  <22.475435, 16.418560, 6.367630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.638382, 16.543217, 6.711008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070363, 0.947893, -0.310722,
		-0.910549, 0.066175, 0.408069,
		0.407368, 0.311641, 0.858447,
		22.760592, 16.636709, 6.968542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968010, 16.805595, 6.783586>,  <22.475435, 16.418560, 6.367630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968010, 16.805595, 6.783586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.352299, 16.914743, 6.803793>,  <22.582872, 16.980232, 6.815918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.352299, 16.914743, 6.803793>,  <21.968010, 16.805595, 6.783586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.352299, 16.914743, 6.803793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182839, 0.759354, -0.624461,
		-0.208760, 0.590697, 0.779420,
		0.960723, 0.272871, 0.050520,
		22.640516, 16.996605, 6.818950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994921, 17.488937, 7.050975>,  <21.968010, 16.805595, 6.783586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994921, 17.488937, 7.050975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.290663, 17.393528, 6.799114>,  <22.468107, 17.336283, 6.647997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.290663, 17.393528, 6.799114>,  <21.994921, 17.488937, 7.050975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.290663, 17.393528, 6.799114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275819, 0.745796, -0.606393,
		0.614232, 0.622009, 0.485617,
		0.739353, -0.238523, -0.629653,
		22.512468, 17.321972, 6.610218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.924589, 18.107971, 7.391813>,  <21.994921, 17.488937, 7.050975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.924589, 18.107971, 7.391813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686926, 18.405914, 7.270380>,  <21.544329, 18.584681, 7.197521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686926, 18.405914, 7.270380>,  <21.924589, 18.107971, 7.391813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686926, 18.405914, 7.270380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760930, -0.642839, -0.087994,
		-0.260697, 0.178722, 0.948733,
		-0.594156, 0.744860, -0.303582,
		21.508678, 18.629372, 7.179306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.275297, 18.367851, 7.727571>,  <21.924589, 18.107971, 7.391813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.275297, 18.367851, 7.727571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218809, 18.379517, 7.331752>,  <21.184916, 18.386515, 7.094260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218809, 18.379517, 7.331752>,  <21.275297, 18.367851, 7.727571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218809, 18.379517, 7.331752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656528, -0.750899, 0.071566,
		-0.740964, 0.659773, 0.125188,
		-0.141221, 0.029162, -0.989549,
		21.176443, 18.388266, 7.034887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.773542, 18.811340, 7.598289>,  <21.275297, 18.367851, 7.727571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.773542, 18.811340, 7.598289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.412663, 18.883913, 7.754808>,  <20.196135, 18.927456, 7.848720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.412663, 18.883913, 7.754808>,  <20.773542, 18.811340, 7.598289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412663, 18.883913, 7.754808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264836, -0.949090, -0.170560,
		0.340431, -0.257509, 0.904321,
		-0.902202, 0.181433, 0.391298,
		20.142002, 18.938343, 7.872197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.667913, 18.326405, 8.219912>,  <20.773542, 18.811340, 7.598289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.667913, 18.326405, 8.219912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340799, 18.458023, 8.031038>,  <20.144531, 18.536995, 7.917714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340799, 18.458023, 8.031038>,  <20.667913, 18.326405, 8.219912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340799, 18.458023, 8.031038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181099, -0.925887, -0.331565,
		-0.546288, -0.185637, 0.816767,
		-0.817784, 0.329046, -0.472183,
		20.095465, 18.556738, 7.889383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320513, 17.849707, 8.702299>,  <20.667913, 18.326405, 8.219912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320513, 17.849707, 8.702299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.409824, 17.587221, 8.413985>,  <20.463411, 17.429729, 8.240997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.409824, 17.587221, 8.413985>,  <20.320513, 17.849707, 8.702299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.409824, 17.587221, 8.413985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483347, -0.567604, 0.666485,
		-0.846476, -0.497201, 0.190444,
		0.223280, -0.656214, -0.720784,
		20.476809, 17.390356, 8.197750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158415, 17.185083, 8.968670>,  <20.320513, 17.849707, 8.702299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158415, 17.185083, 8.968670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.453434, 17.201801, 8.699070>,  <20.630445, 17.211832, 8.537311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.453434, 17.201801, 8.699070>,  <20.158415, 17.185083, 8.968670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.453434, 17.201801, 8.699070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577932, -0.555346, 0.597985,
		-0.349309, -0.830568, -0.433750,
		0.737549, 0.041796, -0.673999,
		20.674698, 17.214340, 8.496870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478878, 16.489016, 8.966728>,  <20.158415, 17.185083, 8.968670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478878, 16.489016, 8.966728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.758869, 16.724117, 8.804455>,  <20.926865, 16.865177, 8.707090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.758869, 16.724117, 8.804455>,  <20.478878, 16.489016, 8.966728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.758869, 16.724117, 8.804455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713218, -0.546080, 0.439450,
		0.036752, -0.596946, -0.801439,
		0.699978, 0.587752, -0.405683,
		20.968863, 16.900442, 8.682750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.006464, 15.976877, 8.575873>,  <20.478878, 16.489016, 8.966728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.006464, 15.976877, 8.575873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.194038, 16.322412, 8.649501>,  <21.306583, 16.529734, 8.693678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.194038, 16.322412, 8.649501>,  <21.006464, 15.976877, 8.575873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.194038, 16.322412, 8.649501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769143, -0.501845, 0.395689,
		0.434186, -0.043977, -0.899749,
		0.468936, 0.863839, 0.184069,
		21.334719, 16.581564, 8.704721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626339, 15.778924, 8.556513>,  <21.006464, 15.976877, 8.575873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626339, 15.778924, 8.556513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.685015, 16.140015, 8.718287>,  <21.720221, 16.356668, 8.815352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.685015, 16.140015, 8.718287>,  <21.626339, 15.778924, 8.556513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.685015, 16.140015, 8.718287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841527, -0.328783, 0.428642,
		0.519917, 0.277467, -0.807897,
		0.146689, 0.902726, 0.404436,
		21.729021, 16.410831, 8.839619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.358316, 15.835706, 8.478001>,  <21.626339, 15.778924, 8.556513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.358316, 15.835706, 8.478001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.249748, 16.082657, 8.773345>,  <22.184608, 16.230827, 8.950552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.249748, 16.082657, 8.773345>,  <22.358316, 15.835706, 8.478001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.249748, 16.082657, 8.773345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668855, -0.430647, 0.605951,
		0.692073, 0.658323, -0.296050,
		-0.271419, 0.617377, 0.738361,
		22.168324, 16.267870, 8.994853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037340, 15.978661, 8.788777>,  <22.358316, 15.835706, 8.478001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037340, 15.978661, 8.788777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.773115, 16.092409, 9.066710>,  <22.614580, 16.160658, 9.233470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.773115, 16.092409, 9.066710>,  <23.037340, 15.978661, 8.788777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.773115, 16.092409, 9.066710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606003, -0.344374, 0.717054,
		0.443191, 0.894729, 0.055151,
		-0.660562, 0.284370, 0.694832,
		22.574947, 16.177721, 9.275160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410643, 16.229685, 9.359334>,  <23.037340, 15.978661, 8.788777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410643, 16.229685, 9.359334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052210, 16.129902, 9.506200>,  <22.837151, 16.070032, 9.594319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052210, 16.129902, 9.506200>,  <23.410643, 16.229685, 9.359334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052210, 16.129902, 9.506200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442891, -0.446973, 0.777214,
		-0.029771, 0.859060, 0.511008,
		-0.896081, -0.249459, 0.367164,
		22.783386, 16.055063, 9.616349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.535048, 16.329685, 10.067612>,  <23.410643, 16.229685, 9.359334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.535048, 16.329685, 10.067612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.231779, 16.071806, 10.028535>,  <23.049818, 15.917079, 10.005089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.231779, 16.071806, 10.028535>,  <23.535048, 16.329685, 10.067612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.231779, 16.071806, 10.028535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319143, -0.497539, 0.806599,
		-0.568618, 0.580362, 0.582970,
		-0.758170, -0.644697, -0.097691,
		23.004328, 15.878397, 9.999228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281004, 16.357485, 10.658117>,  <23.535048, 16.329685, 10.067612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281004, 16.357485, 10.658117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.162895, 16.010660, 10.497608>,  <23.092030, 15.802566, 10.401302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.162895, 16.010660, 10.497608>,  <23.281004, 16.357485, 10.658117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.162895, 16.010660, 10.497608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296312, -0.482397, 0.824314,
		-0.908303, 0.124494, 0.399358,
		-0.295271, -0.867061, -0.401273,
		23.074314, 15.750542, 10.377226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.889061, 16.030428, 11.136069>,  <23.281004, 16.357485, 10.658117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.889061, 16.030428, 11.136069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.003723, 15.723922, 10.906054>,  <23.072519, 15.540018, 10.768044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.003723, 15.723922, 10.906054>,  <22.889061, 16.030428, 11.136069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.003723, 15.723922, 10.906054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132864, -0.562631, 0.815962,
		-0.948776, -0.310301, -0.059471,
		0.286654, -0.766264, -0.575039,
		23.089720, 15.494042, 10.733541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.542570, 15.492775, 11.330567>,  <22.889061, 16.030428, 11.136069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.542570, 15.492775, 11.330567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.844530, 15.292477, 11.161155>,  <23.025705, 15.172297, 11.059507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.844530, 15.292477, 11.161155>,  <22.542570, 15.492775, 11.330567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.844530, 15.292477, 11.161155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126327, -0.522672, 0.843123,
		-0.643560, -0.689976, -0.331307,
		0.754899, -0.500747, -0.423533,
		23.071001, 15.142253, 11.034095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.350513, 14.710289, 11.360355>,  <22.542570, 15.492775, 11.330567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.350513, 14.710289, 11.360355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738482, 14.746765, 11.270075>,  <22.971262, 14.768651, 11.215907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738482, 14.746765, 11.270075>,  <22.350513, 14.710289, 11.360355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.738482, 14.746765, 11.270075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224406, -0.694255, 0.683851,
		-0.094333, -0.713929, -0.693835,
		0.969919, 0.091191, -0.225701,
		23.029457, 14.774122, 11.202365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.531864, 13.978195, 11.192265>,  <22.350513, 14.710289, 11.360355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.531864, 13.978195, 11.192265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870602, 14.173529, 11.276538>,  <23.073843, 14.290730, 11.327102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870602, 14.173529, 11.276538>,  <22.531864, 13.978195, 11.192265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870602, 14.173529, 11.276538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266267, -0.732203, 0.626882,
		0.460392, -0.474772, -0.750087,
		0.846842, 0.488335, 0.210684,
		23.124655, 14.320029, 11.339743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.007048, 13.496183, 11.231358>,  <22.531864, 13.978195, 11.192265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.007048, 13.496183, 11.231358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.206161, 13.789754, 11.416208>,  <23.325630, 13.965897, 11.527119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.206161, 13.789754, 11.416208>,  <23.007048, 13.496183, 11.231358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206161, 13.789754, 11.416208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287700, -0.642395, 0.710321,
		0.818193, -0.220633, -0.530926,
		0.497784, 0.733927, 0.462127,
		23.355497, 14.009933, 11.554847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.742470, 13.313379, 11.241649>,  <23.007048, 13.496183, 11.231358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.742470, 13.313379, 11.241649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.687006, 13.584564, 11.530409>,  <23.653728, 13.747275, 11.703665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.687006, 13.584564, 11.530409>,  <23.742470, 13.313379, 11.241649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.687006, 13.584564, 11.530409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275347, -0.673810, 0.685686,
		0.951293, 0.293850, -0.093244,
		-0.138660, 0.677962, 0.721901,
		23.645409, 13.787952, 11.746979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357922, 13.225315, 11.726744>,  <23.742470, 13.313379, 11.241649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357922, 13.225315, 11.726744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.070612, 13.419814, 11.925800>,  <23.898226, 13.536513, 12.045235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.070612, 13.419814, 11.925800>,  <24.357922, 13.225315, 11.726744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.070612, 13.419814, 11.925800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275423, -0.458107, 0.845151,
		0.638925, 0.744112, 0.195123,
		-0.718274, 0.486247, 0.497642,
		23.855129, 13.565688, 12.075092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604214, 13.430265, 12.405146>,  <24.357922, 13.225315, 11.726744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604214, 13.430265, 12.405146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207981, 13.454541, 12.454247>,  <23.970242, 13.469107, 12.483708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207981, 13.454541, 12.454247>,  <24.604214, 13.430265, 12.405146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207981, 13.454541, 12.454247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079327, -0.476378, 0.875655,
		0.111619, 0.877144, 0.467076,
		-0.990580, 0.060688, 0.122754,
		23.910807, 13.472748, 12.491074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247906, 14.003581, 12.691274>,  <24.604214, 13.430265, 12.405146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247906, 14.003581, 12.691274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.923630, 14.053011, 12.920188>,  <23.729065, 14.082668, 13.057536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.923630, 14.053011, 12.920188>,  <24.247906, 14.003581, 12.691274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.923630, 14.053011, 12.920188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477586, 0.704988, 0.524312,
		-0.338663, 0.698370, -0.630545,
		-0.810690, 0.123574, 0.572286,
		23.680422, 14.090083, 13.091873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072084, 13.811492, 13.464342>,  <24.247906, 14.003581, 12.691274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072084, 13.811492, 13.464342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386147, 13.569486, 13.517234>,  <24.574585, 13.424282, 13.548969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386147, 13.569486, 13.517234>,  <24.072084, 13.811492, 13.464342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386147, 13.569486, 13.517234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350357, 0.610009, 0.710731,
		-0.510665, -0.511708, 0.690924,
		0.785157, -0.605015, 0.132230,
		24.621695, 13.387981, 13.556903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284204, 13.636674, 14.162184>,  <24.072084, 13.811492, 13.464342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284204, 13.636674, 14.162184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620966, 13.635262, 13.946338>,  <24.823023, 13.634416, 13.816830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620966, 13.635262, 13.946338>,  <24.284204, 13.636674, 14.162184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620966, 13.635262, 13.946338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481231, 0.457358, 0.747823,
		0.244159, -0.889276, 0.386750,
		0.841904, -0.003529, -0.539615,
		24.873537, 13.634204, 13.784453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804890, 13.310529, 14.490470>,  <24.284204, 13.636674, 14.162184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804890, 13.310529, 14.490470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998861, 13.563577, 14.248930>,  <25.115244, 13.715405, 14.104006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998861, 13.563577, 14.248930>,  <24.804890, 13.310529, 14.490470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998861, 13.563577, 14.248930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439308, 0.420828, 0.793670,
		0.756209, -0.650150, -0.073844,
		0.484929, 0.632621, -0.603851,
		25.144341, 13.753363, 14.067775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461836, 13.225061, 14.543483>,  <24.804890, 13.310529, 14.490470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461836, 13.225061, 14.543483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419697, 13.608696, 14.438369>,  <25.394413, 13.838877, 14.375300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419697, 13.608696, 14.438369>,  <25.461836, 13.225061, 14.543483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419697, 13.608696, 14.438369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301048, 0.282614, 0.910769,
		0.947772, 0.016835, -0.318504,
		-0.105346, 0.959086, -0.262785,
		25.388092, 13.896421, 14.359533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115334, 13.682974, 14.764932>,  <25.461836, 13.225061, 14.543483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115334, 13.682974, 14.764932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775286, 13.893529, 14.770749>,  <25.571257, 14.019862, 14.774240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775286, 13.893529, 14.770749>,  <26.115334, 13.682974, 14.764932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775286, 13.893529, 14.770749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273449, 0.417682, 0.866468,
		0.450022, 0.740580, -0.499020,
		-0.850121, 0.526387, 0.014545,
		25.520250, 14.051445, 14.775112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396698, 14.275888, 14.896838>,  <26.115334, 13.682974, 14.764932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396698, 14.275888, 14.896838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018139, 14.300962, 15.023582>,  <25.791004, 14.316007, 15.099628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018139, 14.300962, 15.023582>,  <26.396698, 14.275888, 14.896838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018139, 14.300962, 15.023582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314597, 0.401216, 0.860264,
		-0.073204, 0.913836, -0.399431,
		-0.946399, 0.062685, 0.316860,
		25.734219, 14.319768, 15.118641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736408, 14.514377, 15.446566>,  <26.396698, 14.275888, 14.896838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736408, 14.514377, 15.446566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845564, 14.638803, 15.082418>,  <26.911058, 14.713458, 14.863930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845564, 14.638803, 15.082418>,  <26.736408, 14.514377, 15.446566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845564, 14.638803, 15.082418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929342, -0.159395, -0.333043,
		-0.248705, 0.936927, 0.245587,
		0.272891, 0.311064, -0.910368,
		26.927431, 14.732121, 14.809308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.039873, 20.259499, 20.940887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.679348, 20.102354, 21.013878>,  <13.463033, 20.008068, 21.057673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.679348, 20.102354, 21.013878>,  <14.039873, 20.259499, 20.940887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.679348, 20.102354, 21.013878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010929, -0.441746, -0.897074,
		0.433034, -0.806548, 0.402444,
		-0.901312, -0.392862, 0.182476,
		13.408955, 19.984495, 21.068621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099912, 19.626209, 20.680536>,  <14.039873, 20.259499, 20.940887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099912, 19.626209, 20.680536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.703131, 19.647408, 20.726534>,  <13.465062, 19.660126, 20.754133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.703131, 19.647408, 20.726534>,  <14.099912, 19.626209, 20.680536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703131, 19.647408, 20.726534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121152, -0.661229, -0.740337,
		0.036803, -0.748310, 0.662328,
		-0.991952, 0.052995, 0.114995,
		13.405545, 19.663307, 20.761032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.839192, 18.917662, 20.541912>,  <14.099912, 19.626209, 20.680536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.839192, 18.917662, 20.541912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.545459, 19.178282, 20.465771>,  <13.369219, 19.334654, 20.420086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.545459, 19.178282, 20.465771>,  <13.839192, 18.917662, 20.541912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.545459, 19.178282, 20.465771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189535, -0.466094, -0.864195,
		-0.651790, -0.598529, 0.465761,
		-0.734334, 0.651552, -0.190353,
		13.325159, 19.373747, 20.408665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.260050, 18.491941, 20.262659>,  <13.839192, 18.917662, 20.541912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.260050, 18.491941, 20.262659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.218637, 18.876375, 20.160208>,  <13.193789, 19.107035, 20.098738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.218637, 18.876375, 20.160208>,  <13.260050, 18.491941, 20.262659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.218637, 18.876375, 20.160208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176102, -0.271156, -0.946289,
		-0.978912, -0.052866, 0.197322,
		-0.103531, 0.961083, -0.256128,
		13.187578, 19.164700, 20.083370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.595073, 18.511374, 19.838608>,  <13.260050, 18.491941, 20.262659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.595073, 18.511374, 19.838608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.759921, 18.865807, 19.753740>,  <12.858829, 19.078466, 19.702820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.759921, 18.865807, 19.753740>,  <12.595073, 18.511374, 19.838608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.759921, 18.865807, 19.753740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146049, -0.165606, -0.975317,
		-0.899348, 0.432935, 0.061162,
		0.412120, 0.886082, -0.212167,
		12.883557, 19.131632, 19.690090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.231565, 18.816025, 19.380320>,  <12.595073, 18.511374, 19.838608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.231565, 18.816025, 19.380320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.550618, 19.044258, 19.302124>,  <12.742050, 19.181198, 19.255207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.550618, 19.044258, 19.302124>,  <12.231565, 18.816025, 19.380320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.550618, 19.044258, 19.302124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138882, -0.141655, -0.980125,
		-0.586935, 0.808931, -0.033745,
		0.797633, 0.570583, -0.195488,
		12.789908, 19.215433, 19.243477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027506, 19.451975, 18.985029>,  <12.231565, 18.816025, 19.380320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027506, 19.451975, 18.985029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.402052, 19.330750, 18.914179>,  <12.626780, 19.258015, 18.871668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.402052, 19.330750, 18.914179>,  <12.027506, 19.451975, 18.985029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.402052, 19.330750, 18.914179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264389, -0.276961, -0.923792,
		0.230912, 0.911836, -0.339464,
		0.936364, -0.303065, -0.177126,
		12.682961, 19.239830, 18.861042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.221287, 19.645596, 18.286867>,  <12.027506, 19.451975, 18.985029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.221287, 19.645596, 18.286867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.535948, 19.410994, 18.364008>,  <12.724745, 19.270233, 18.410292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.535948, 19.410994, 18.364008>,  <12.221287, 19.645596, 18.286867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535948, 19.410994, 18.364008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008437, -0.302120, -0.953233,
		0.617337, 0.751491, -0.232715,
		0.786653, -0.586503, 0.192850,
		12.771944, 19.235043, 18.421864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617908, 19.554607, 17.606102>,  <12.221287, 19.645596, 18.286867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617908, 19.554607, 17.606102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.743794, 19.232580, 17.807228>,  <12.819325, 19.039364, 17.927904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.743794, 19.232580, 17.807228>,  <12.617908, 19.554607, 17.606102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743794, 19.232580, 17.807228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211976, -0.456740, -0.863976,
		0.925214, 0.378489, 0.026913,
		0.314714, -0.805068, 0.502813,
		12.838208, 18.991060, 17.958073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343708, 19.399052, 17.585865>,  <12.617908, 19.554607, 17.606102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343708, 19.399052, 17.585865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.177551, 19.046900, 17.677412>,  <13.077857, 18.835609, 17.732340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.177551, 19.046900, 17.677412>,  <13.343708, 19.399052, 17.585865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.177551, 19.046900, 17.677412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231842, -0.345760, -0.909230,
		0.879601, -0.324626, 0.347735,
		-0.415393, -0.880379, 0.228869,
		13.052934, 18.782785, 17.746073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781960, 18.758072, 17.377176>,  <13.343708, 19.399052, 17.585865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.781960, 18.758072, 17.377176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.429290, 18.572111, 17.409468>,  <13.217688, 18.460535, 17.428843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.429290, 18.572111, 17.409468>,  <13.781960, 18.758072, 17.377176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.429290, 18.572111, 17.409468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141939, -0.424466, -0.894250,
		0.450003, -0.776979, 0.440228,
		-0.881675, -0.464900, 0.080727,
		13.164787, 18.432642, 17.433685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999964, 18.141331, 17.230869>,  <13.781960, 18.758072, 17.377176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999964, 18.141331, 17.230869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.605321, 18.176081, 17.175650>,  <13.368535, 18.196930, 17.142517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.605321, 18.176081, 17.175650>,  <13.999964, 18.141331, 17.230869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.605321, 18.176081, 17.175650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047160, -0.658276, -0.751298,
		-0.156142, -0.747747, 0.645364,
		-0.986608, 0.086873, -0.138048,
		13.309339, 18.202143, 17.134235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.796597, 17.401722, 17.214350>,  <13.999964, 18.141331, 17.230869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.796597, 17.401722, 17.214350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.528804, 17.641556, 17.038946>,  <13.368128, 17.785456, 16.933704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.528804, 17.641556, 17.038946>,  <13.796597, 17.401722, 17.214350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528804, 17.641556, 17.038946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018099, -0.603315, -0.797298,
		-0.742607, -0.525841, 0.414761,
		-0.669483, 0.599585, -0.438509,
		13.327959, 17.821430, 16.907394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490441, 16.976904, 16.806810>,  <13.796597, 17.401722, 17.214350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490441, 16.976904, 16.806810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.317934, 17.296440, 16.639067>,  <13.214430, 17.488161, 16.538422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.317934, 17.296440, 16.639067>,  <13.490441, 16.976904, 16.806810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.317934, 17.296440, 16.639067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088715, -0.500100, -0.861412,
		-0.897851, -0.334297, 0.286546,
		-0.431269, 0.798841, -0.419358,
		13.188553, 17.536093, 16.513260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.927299, 16.809420, 16.556782>,  <13.490441, 16.976904, 16.806810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.927299, 16.809420, 16.556782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.014334, 17.135855, 16.342621>,  <13.066554, 17.331717, 16.214125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.014334, 17.135855, 16.342621>,  <12.927299, 16.809420, 16.556782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014334, 17.135855, 16.342621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115717, -0.523105, -0.844376,
		-0.969157, 0.245680, -0.019385,
		0.217586, 0.816090, -0.535401,
		13.079610, 17.380682, 16.182001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435193, 16.755486, 16.009487>,  <12.927299, 16.809420, 16.556782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.435193, 16.755486, 16.009487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.730764, 16.998240, 15.892406>,  <12.908107, 17.143892, 15.822156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.730764, 16.998240, 15.892406>,  <12.435193, 16.755486, 16.009487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.730764, 16.998240, 15.892406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046420, -0.387536, -0.920685,
		-0.672183, 0.693908, -0.258190,
		0.738929, 0.606883, -0.292706,
		12.952443, 17.180305, 15.804594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.246708, 16.983536, 15.302299>,  <12.435193, 16.755486, 16.009487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.246708, 16.983536, 15.302299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.637997, 17.019979, 15.376898>,  <12.872770, 17.041845, 15.421658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.637997, 17.019979, 15.376898>,  <12.246708, 16.983536, 15.302299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637997, 17.019979, 15.376898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202283, -0.619826, -0.758220,
		0.046518, 0.779433, -0.624756,
		0.978222, 0.091107, 0.186499,
		12.931463, 17.047312, 15.432848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352821, 17.014503, 14.642118>,  <12.246708, 16.983536, 15.302299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352821, 17.014503, 14.642118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.701921, 16.936403, 14.821085>,  <12.911382, 16.889544, 14.928465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.701921, 16.936403, 14.821085>,  <12.352821, 17.014503, 14.642118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.701921, 16.936403, 14.821085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354391, -0.376908, -0.855773,
		0.335727, 0.905437, -0.259751,
		0.872751, -0.195253, 0.447417,
		12.963747, 16.877827, 14.955310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.971715, 17.266523, 14.165057>,  <12.352821, 17.014503, 14.642118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.971715, 17.266523, 14.165057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.161054, 16.998301, 14.393547>,  <13.274656, 16.837366, 14.530641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.161054, 16.998301, 14.393547>,  <12.971715, 17.266523, 14.165057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.161054, 16.998301, 14.393547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401398, -0.413038, -0.817483,
		0.784107, 0.616241, 0.073650,
		0.473346, -0.670557, 0.571224,
		13.303058, 16.797132, 14.564915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581290, 17.200882, 13.911371>,  <12.971715, 17.266523, 14.165057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581290, 17.200882, 13.911371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.554415, 16.864641, 14.126360>,  <13.538289, 16.662897, 14.255353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.554415, 16.864641, 14.126360>,  <13.581290, 17.200882, 13.911371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.554415, 16.864641, 14.126360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489950, -0.497064, -0.716153,
		0.869157, 0.215217, 0.445250,
		-0.067190, -0.840600, 0.537472,
		13.534258, 16.612461, 14.287601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229009, 16.819778, 13.821048>,  <13.581290, 17.200882, 13.911371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229009, 16.819778, 13.821048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.971060, 16.549450, 13.963824>,  <13.816291, 16.387253, 14.049490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.971060, 16.549450, 13.963824>,  <14.229009, 16.819778, 13.821048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.971060, 16.549450, 13.963824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345528, -0.674363, -0.652568,
		0.681727, -0.297489, 0.668392,
		-0.644871, -0.675822, 0.356940,
		13.777598, 16.346703, 14.070907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605626, 16.291401, 14.012941>,  <14.229009, 16.819778, 13.821048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605626, 16.291401, 14.012941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.235909, 16.155849, 13.942691>,  <14.014078, 16.074518, 13.900540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.235909, 16.155849, 13.942691>,  <14.605626, 16.291401, 14.012941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235909, 16.155849, 13.942691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381675, -0.817496, -0.431305,
		0.002586, -0.465684, 0.884948,
		-0.924293, -0.338878, -0.175626,
		13.958621, 16.054186, 13.890003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896989, 16.060825, 14.610522>,  <14.605626, 16.291401, 14.012941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896989, 16.060825, 14.610522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.228529, 15.876334, 14.483855>,  <15.427453, 15.765640, 14.407855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.228529, 15.876334, 14.483855>,  <14.896989, 16.060825, 14.610522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228529, 15.876334, 14.483855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472046, 0.272712, 0.838332,
		-0.300301, -0.844333, 0.443757,
		0.828850, -0.461226, -0.316668,
		15.477184, 15.737967, 14.388855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.114987, 15.676631, 15.156959>,  <14.896989, 16.060825, 14.610522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.114987, 15.676631, 15.156959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.455919, 15.682844, 14.947848>,  <15.660479, 15.686572, 14.822382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.455919, 15.682844, 14.947848>,  <15.114987, 15.676631, 15.156959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455919, 15.682844, 14.947848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503387, 0.246837, 0.828054,
		0.141903, -0.968932, 0.202567,
		0.852329, 0.015534, -0.522775,
		15.711618, 15.687505, 14.791016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532315, 15.180524, 15.499678>,  <15.114987, 15.676631, 15.156959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532315, 15.180524, 15.499678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.749502, 15.454371, 15.305160>,  <15.879814, 15.618680, 15.188449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.749502, 15.454371, 15.305160>,  <15.532315, 15.180524, 15.499678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749502, 15.454371, 15.305160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464821, 0.237267, 0.853021,
		0.699376, -0.689204, -0.189396,
		0.542968, 0.684618, -0.486296,
		15.912393, 15.659757, 15.159271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230677, 15.026484, 15.639103>,  <15.532315, 15.180524, 15.499678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230677, 15.026484, 15.639103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.208565, 15.407460, 15.519238>,  <16.195297, 15.636046, 15.447320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.208565, 15.407460, 15.519238>,  <16.230677, 15.026484, 15.639103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208565, 15.407460, 15.519238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620389, 0.267920, 0.737114,
		0.782344, -0.145161, -0.605695,
		-0.055278, 0.952443, -0.299661,
		16.191982, 15.693193, 15.429340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844151, 15.246375, 15.849701>,  <16.230677, 15.026484, 15.639103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844151, 15.246375, 15.849701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.645880, 15.585423, 15.773970>,  <16.526917, 15.788851, 15.728531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.645880, 15.585423, 15.773970>,  <16.844151, 15.246375, 15.849701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645880, 15.585423, 15.773970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538369, 0.470929, 0.698845,
		0.681515, 0.244473, -0.689761,
		-0.495677, 0.847620, -0.189329,
		16.497177, 15.839708, 15.717171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284258, 15.773932, 15.956829>,  <16.844151, 15.246375, 15.849701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.284258, 15.773932, 15.956829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.942110, 15.981077, 15.951775>,  <16.736820, 16.105364, 15.948742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.942110, 15.981077, 15.951775>,  <17.284258, 15.773932, 15.956829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942110, 15.981077, 15.951775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296181, 0.508936, 0.808245,
		0.424990, 0.687607, -0.588710,
		-0.855371, 0.517862, -0.012636,
		16.685499, 16.136436, 15.947984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381344, 16.432730, 16.133219>,  <17.284258, 15.773932, 15.956829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381344, 16.432730, 16.133219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.985250, 16.434092, 16.188974>,  <16.747595, 16.434910, 16.222427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.985250, 16.434092, 16.188974>,  <17.381344, 16.432730, 16.133219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985250, 16.434092, 16.188974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091880, 0.767886, 0.633963,
		-0.104875, 0.640577, -0.760698,
		-0.990232, 0.003406, 0.139388,
		16.688181, 16.435114, 16.230791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222980, 17.158274, 16.107595>,  <17.381344, 16.432730, 16.133219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222980, 17.158274, 16.107595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.933037, 16.955276, 16.293941>,  <16.759069, 16.833479, 16.405748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.933037, 16.955276, 16.293941>,  <17.222980, 17.158274, 16.107595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933037, 16.955276, 16.293941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037658, 0.704429, 0.708775,
		-0.687866, 0.496219, -0.529723,
		-0.724860, -0.507491, 0.465866,
		16.715578, 16.803030, 16.433701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531994, 17.455389, 16.155642>,  <17.222980, 17.158274, 16.107595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531994, 17.455389, 16.155642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.559025, 17.206264, 16.467421>,  <16.575243, 17.056789, 16.654488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.559025, 17.206264, 16.467421>,  <16.531994, 17.455389, 16.155642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559025, 17.206264, 16.467421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105184, 0.772433, 0.626326,
		-0.992154, -0.124312, -0.013309,
		0.067579, -0.622812, 0.779448,
		16.579298, 17.019421, 16.701256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094320, 17.688950, 16.555050>,  <16.531994, 17.455389, 16.155642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094320, 17.688950, 16.555050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.306026, 17.466629, 16.811476>,  <16.433050, 17.333237, 16.965332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.306026, 17.466629, 16.811476>,  <16.094320, 17.688950, 16.555050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.306026, 17.466629, 16.811476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090199, 0.788142, 0.608848,
		-0.843650, -0.264418, 0.467267,
		0.529263, -0.555801, 0.641066,
		16.464806, 17.299889, 17.003796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693706, 17.657587, 17.194603>,  <16.094320, 17.688950, 16.555050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693706, 17.657587, 17.194603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.079277, 17.577797, 17.265087>,  <16.310619, 17.529922, 17.307377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.079277, 17.577797, 17.265087>,  <15.693706, 17.657587, 17.194603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079277, 17.577797, 17.265087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031862, 0.743769, 0.667677,
		-0.264245, -0.637979, 0.723296,
		0.963929, -0.199476, 0.176210,
		16.368456, 17.517954, 17.317949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.772276, 17.615826, 17.854265>,  <15.693706, 17.657587, 17.194603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.772276, 17.615826, 17.854265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.149382, 17.684416, 17.739870>,  <16.375645, 17.725571, 17.671232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.149382, 17.684416, 17.739870>,  <15.772276, 17.615826, 17.854265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149382, 17.684416, 17.739870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144144, 0.563805, 0.813232,
		0.300692, -0.807910, 0.506819,
		0.942766, 0.171477, -0.285987,
		16.432211, 17.735859, 17.654074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140430, 17.462381, 18.421215>,  <15.772276, 17.615826, 17.854265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.140430, 17.462381, 18.421215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.383484, 17.679501, 18.189301>,  <16.529316, 17.809772, 18.050152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.383484, 17.679501, 18.189301>,  <16.140430, 17.462381, 18.421215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383484, 17.679501, 18.189301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275096, 0.540978, 0.794774,
		0.745054, -0.642426, 0.179393,
		0.607632, 0.542799, -0.579787,
		16.565773, 17.842340, 18.015364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791571, 17.531118, 18.764050>,  <16.140430, 17.462381, 18.421215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791571, 17.531118, 18.764050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.719439, 17.845558, 18.527565>,  <16.676159, 18.034222, 18.385674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.719439, 17.845558, 18.527565>,  <16.791571, 17.531118, 18.764050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719439, 17.845558, 18.527565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079374, 0.587474, 0.805341,
		0.980398, 0.192155, -0.043545,
		-0.180331, 0.786098, -0.591211,
		16.665339, 18.081388, 18.350203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244219, 18.081173, 19.119951>,  <16.791571, 17.531118, 18.764050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244219, 18.081173, 19.119951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.003098, 18.281593, 18.871572>,  <16.858425, 18.401846, 18.722546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.003098, 18.281593, 18.871572>,  <17.244219, 18.081173, 19.119951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003098, 18.281593, 18.871572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172507, 0.677986, 0.714546,
		0.779018, 0.537849, -0.322257,
		-0.602804, 0.501052, -0.620946,
		16.822256, 18.431910, 18.685289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395477, 18.690674, 19.184641>,  <17.244219, 18.081173, 19.119951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395477, 18.690674, 19.184641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.018967, 18.745672, 19.061293>,  <16.793060, 18.778671, 18.987284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.018967, 18.745672, 19.061293>,  <17.395477, 18.690674, 19.184641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.018967, 18.745672, 19.061293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094974, 0.768619, 0.632618,
		0.324001, 0.624756, -0.710425,
		-0.941278, 0.137497, -0.308369,
		16.736584, 18.786921, 18.968782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285080, 19.444454, 19.085451>,  <17.395477, 18.690674, 19.184641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285080, 19.444454, 19.085451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.914160, 19.301111, 19.128700>,  <16.691607, 19.215105, 19.154650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.914160, 19.301111, 19.128700>,  <17.285080, 19.444454, 19.085451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914160, 19.301111, 19.128700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179536, 0.679273, 0.711586,
		-0.328448, 0.640443, -0.694229,
		-0.927302, -0.358358, 0.108123,
		16.635969, 19.193604, 19.161137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825293, 20.005177, 19.229521>,  <17.285080, 19.444454, 19.085451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825293, 20.005177, 19.229521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.601864, 19.700005, 19.359713>,  <16.467808, 19.516901, 19.437828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.601864, 19.700005, 19.359713>,  <16.825293, 20.005177, 19.229521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601864, 19.700005, 19.359713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312770, 0.557165, 0.769248,
		-0.768228, 0.327879, -0.549837,
		-0.558571, -0.762931, 0.325479,
		16.434292, 19.471125, 19.457355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.083143, 20.386988, 19.410774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.096214, 20.029156, 19.589058>,  <16.104057, 19.814457, 19.696028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.096214, 20.029156, 19.589058>,  <16.083143, 20.386988, 19.410774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096214, 20.029156, 19.589058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234649, 0.426615, 0.873464,
		-0.971531, -0.133126, -0.195973,
		0.032676, -0.894582, 0.445708,
		16.106016, 19.760780, 19.722771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.405371, 20.324827, 19.816219>,  <16.083143, 20.386988, 19.410774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.405371, 20.324827, 19.816219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.660480, 20.064583, 19.981119>,  <15.813546, 19.908436, 20.080059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.660480, 20.064583, 19.981119>,  <15.405371, 20.324827, 19.816219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660480, 20.064583, 19.981119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233953, 0.346311, 0.908480,
		-0.733832, -0.675853, 0.068657,
		0.637775, -0.650609, 0.412252,
		15.851813, 19.869400, 20.104795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039432, 20.211763, 20.420284>,  <15.405371, 20.324827, 19.816219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039432, 20.211763, 20.420284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.399786, 20.059584, 20.503866>,  <15.615998, 19.968275, 20.554016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.399786, 20.059584, 20.503866>,  <15.039432, 20.211763, 20.420284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.399786, 20.059584, 20.503866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196717, 0.071259, 0.977867,
		-0.386919, -0.922052, -0.010645,
		0.900886, -0.380450, 0.208955,
		15.670052, 19.945448, 20.566553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.952581, 19.729212, 20.997971>,  <15.039432, 20.211763, 20.420284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.952581, 19.729212, 20.997971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.347360, 19.793453, 21.002798>,  <15.584227, 19.831999, 21.005695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.347360, 19.793453, 21.002798>,  <14.952581, 19.729212, 20.997971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347360, 19.793453, 21.002798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010490, -0.010682, 0.999888,
		0.160716, -0.986961, -0.008857,
		0.986945, 0.160605, 0.012070,
		15.643443, 19.841635, 21.006418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180105, 19.287909, 21.408777>,  <14.952581, 19.729212, 20.997971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180105, 19.287909, 21.408777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.462137, 19.570822, 21.429213>,  <15.631356, 19.740570, 21.441475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.462137, 19.570822, 21.429213>,  <15.180105, 19.287909, 21.408777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.462137, 19.570822, 21.429213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155491, 0.083909, 0.984267,
		0.691870, -0.701931, 0.169139,
		0.705080, 0.707285, 0.051090,
		15.673661, 19.783007, 21.444540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672847, 19.084093, 21.906881>,  <15.180105, 19.287909, 21.408777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672847, 19.084093, 21.906881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.721609, 19.480007, 21.877316>,  <15.750866, 19.717556, 21.859577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.721609, 19.480007, 21.877316>,  <15.672847, 19.084093, 21.906881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721609, 19.480007, 21.877316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041401, 0.069333, 0.996734,
		0.991678, -0.124567, -0.032527,
		0.121905, 0.989786, -0.073913,
		15.758181, 19.776943, 21.855141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212204, 19.240570, 22.348093>,  <15.672847, 19.084093, 21.906881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.212204, 19.240570, 22.348093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.002851, 19.577055, 22.293776>,  <15.877240, 19.778946, 22.261185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.002851, 19.577055, 22.293776>,  <16.212204, 19.240570, 22.348093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002851, 19.577055, 22.293776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046403, 0.187262, 0.981213,
		0.850835, 0.507245, -0.137044,
		-0.523379, 0.841210, -0.135791,
		15.845838, 19.829418, 22.253038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.570322, 19.687492, 22.759119>,  <16.212204, 19.240570, 22.348093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.570322, 19.687492, 22.759119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.224701, 19.882059, 22.707260>,  <16.017328, 19.998798, 22.676144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.224701, 19.882059, 22.707260>,  <16.570322, 19.687492, 22.759119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224701, 19.882059, 22.707260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121078, 0.450800, 0.884375,
		0.488620, 0.748451, -0.448410,
		-0.864055, 0.486416, -0.129649,
		15.965485, 20.027985, 22.668365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760281, 20.358767, 22.910261>,  <16.570322, 19.687492, 22.759119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760281, 20.358767, 22.910261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.368242, 20.299173, 22.962744>,  <16.133018, 20.263418, 22.994232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.368242, 20.299173, 22.962744>,  <16.760281, 20.358767, 22.910261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.368242, 20.299173, 22.962744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033960, 0.525348, 0.850210,
		-0.195593, 0.837744, -0.509832,
		-0.980097, -0.148981, 0.131204,
		16.074213, 20.254478, 23.002106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.541414, 21.013062, 23.085209>,  <16.760281, 20.358767, 22.910261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.541414, 21.013062, 23.085209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.239567, 20.770823, 23.186247>,  <16.058458, 20.625479, 23.246870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.239567, 20.770823, 23.186247>,  <16.541414, 21.013062, 23.085209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239567, 20.770823, 23.186247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160184, 0.543330, 0.824095,
		-0.636313, 0.581415, -0.507013,
		-0.754617, -0.605599, 0.252595,
		16.013182, 20.589144, 23.262026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024313, 21.450262, 23.364780>,  <16.541414, 21.013062, 23.085209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024313, 21.450262, 23.364780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.985797, 21.088444, 23.530924>,  <15.962687, 20.871353, 23.630610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.985797, 21.088444, 23.530924>,  <16.024313, 21.450262, 23.364780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985797, 21.088444, 23.530924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102233, 0.424077, 0.899837,
		-0.990089, 0.044184, -0.133310,
		-0.096292, -0.904548, 0.415357,
		15.956909, 20.817080, 23.655531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516541, 21.481945, 23.975904>,  <16.024313, 21.450262, 23.364780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516541, 21.481945, 23.975904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.690932, 21.131289, 24.057316>,  <15.795567, 20.920895, 24.106163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.690932, 21.131289, 24.057316>,  <15.516541, 21.481945, 23.975904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690932, 21.131289, 24.057316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019083, 0.217095, 0.975964,
		-0.899755, -0.429382, 0.077919,
		0.435977, -0.876642, 0.203526,
		15.821726, 20.868296, 24.118374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037345, 21.057663, 24.399445>,  <15.516541, 21.481945, 23.975904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037345, 21.057663, 24.399445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.416643, 20.939945, 24.447145>,  <15.644222, 20.869314, 24.475767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.416643, 20.939945, 24.447145>,  <15.037345, 21.057663, 24.399445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416643, 20.939945, 24.447145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080294, 0.141128, 0.986730,
		-0.307218, -0.945238, 0.110194,
		0.948245, -0.294294, 0.119254,
		15.701117, 20.851658, 24.482922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.987765, 20.554121, 24.981155>,  <15.037345, 21.057663, 24.399445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.987765, 20.554121, 24.981155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.371793, 20.663704, 24.958479>,  <15.602209, 20.729454, 24.944872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.371793, 20.663704, 24.958479>,  <14.987765, 20.554121, 24.981155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371793, 20.663704, 24.958479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077113, -0.064344, 0.994944,
		0.268927, -0.959587, -0.082901,
		0.960069, 0.273960, -0.056693,
		15.659814, 20.745892, 24.941471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.313120, 20.118885, 25.396263>,  <14.987765, 20.554121, 24.981155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.313120, 20.118885, 25.396263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.573575, 20.421654, 25.374043>,  <15.729848, 20.603315, 25.360710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.573575, 20.421654, 25.374043>,  <15.313120, 20.118885, 25.396263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573575, 20.421654, 25.374043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137614, -0.045765, 0.989428,
		0.746378, -0.651900, -0.133962,
		0.651139, 0.756923, -0.055553,
		15.768917, 20.648731, 25.357376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754526, 19.964590, 25.857174>,  <15.313120, 20.118885, 25.396263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.754526, 19.964590, 25.857174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.803751, 20.357439, 25.800196>,  <15.833286, 20.593149, 25.766008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.803751, 20.357439, 25.800196>,  <15.754526, 19.964590, 25.857174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803751, 20.357439, 25.800196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032390, 0.139486, 0.989694,
		0.991870, -0.126408, -0.014645,
		0.123063, 0.982123, -0.142446,
		15.840670, 20.652077, 25.757462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403969, 20.133024, 26.179993>,  <15.754526, 19.964590, 25.857174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403969, 20.133024, 26.179993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.209301, 20.481838, 26.159176>,  <16.092501, 20.691126, 26.146685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.209301, 20.481838, 26.159176>,  <16.403969, 20.133024, 26.179993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209301, 20.481838, 26.159176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140150, 0.136741, 0.980643,
		0.862271, 0.469955, -0.188763,
		-0.486669, 0.872035, -0.052043,
		16.063301, 20.743448, 26.143562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760382, 20.607885, 26.607269>,  <16.403969, 20.133024, 26.179993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760382, 20.607885, 26.607269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.394012, 20.766371, 26.581657>,  <16.174191, 20.861462, 26.566290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.394012, 20.766371, 26.581657>,  <16.760382, 20.607885, 26.607269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394012, 20.766371, 26.581657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015692, 0.194762, 0.980725,
		0.401045, 0.897265, -0.184605,
		-0.915924, 0.396211, -0.064028,
		16.119236, 20.885235, 26.562449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882965, 21.285931, 26.847284>,  <16.760382, 20.607885, 26.607269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.882965, 21.285931, 26.847284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.487972, 21.234562, 26.883913>,  <16.250977, 21.203741, 26.905890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.487972, 21.234562, 26.883913>,  <16.882965, 21.285931, 26.847284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487972, 21.234562, 26.883913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040746, 0.353153, 0.934678,
		-0.152371, 0.926710, -0.343500,
		-0.987483, -0.128421, 0.091570,
		16.191727, 21.196035, 26.911385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691803, 21.688353, 27.418409>,  <16.882965, 21.285931, 26.847284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.691803, 21.688353, 27.418409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.371178, 21.449545, 27.405376>,  <16.178802, 21.306259, 27.397556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.371178, 21.449545, 27.405376>,  <16.691803, 21.688353, 27.418409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371178, 21.449545, 27.405376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067891, 0.036735, 0.997016,
		-0.594042, 0.801385, -0.069978,
		-0.801564, -0.597020, -0.032584,
		16.130709, 21.270439, 27.395601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185091, 21.992308, 27.786850>,  <16.691803, 21.688353, 27.418409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185091, 21.992308, 27.786850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.073406, 21.608284, 27.794117>,  <16.006395, 21.377871, 27.798477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.073406, 21.608284, 27.794117>,  <16.185091, 21.992308, 27.786850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073406, 21.608284, 27.794117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074996, 0.040667, 0.996354,
		-0.957296, 0.276832, -0.083355,
		-0.279213, -0.960057, 0.018169,
		15.989642, 21.320267, 27.799568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753240, 22.070688, 28.334274>,  <16.185091, 21.992308, 27.786850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753240, 22.070688, 28.334274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.817184, 21.678827, 28.285736>,  <15.855552, 21.443710, 28.256613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.817184, 21.678827, 28.285736>,  <15.753240, 22.070688, 28.334274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.817184, 21.678827, 28.285736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046040, -0.130193, 0.990419,
		-0.986065, -0.152744, -0.065916,
		0.159862, -0.979653, -0.121346,
		15.865143, 21.384932, 28.249332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.221484, 21.728615, 28.570091>,  <15.753240, 22.070688, 28.334274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.221484, 21.728615, 28.570091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.544513, 21.493786, 28.592636>,  <15.738330, 21.352888, 28.606163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.544513, 21.493786, 28.592636>,  <15.221484, 21.728615, 28.570091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.544513, 21.493786, 28.592636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048339, 0.029358, 0.998399,
		-0.587786, -0.809003, -0.004670,
		0.807571, -0.587071, 0.056363,
		15.786784, 21.317665, 28.609545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040270, 22.327518, 28.933649>,  <15.221484, 21.728615, 28.570091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040270, 22.327518, 28.933649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.652844, 22.236841, 28.892677>,  <14.420389, 22.182434, 28.868093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.652844, 22.236841, 28.892677>,  <15.040270, 22.327518, 28.933649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652844, 22.236841, 28.892677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100050, 0.021997, -0.994739,
		0.227756, -0.973717, 0.001376,
		-0.968565, -0.226696, -0.102430,
		14.362275, 22.168833, 28.861948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.724576, 22.780396, 28.385710>,  <15.040270, 22.327518, 28.933649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.724576, 22.780396, 28.385710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.327067, 22.772562, 28.429586>,  <14.088562, 22.767862, 28.455914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.327067, 22.772562, 28.429586>,  <14.724576, 22.780396, 28.385710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.327067, 22.772562, 28.429586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057704, -0.751690, -0.656987,
		0.095324, -0.659226, 0.745879,
		-0.993772, -0.019586, 0.109694,
		14.028935, 22.766685, 28.462494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514425, 21.990784, 28.344206>,  <14.724576, 22.780396, 28.385710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514425, 21.990784, 28.344206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.162822, 22.172153, 28.285213>,  <13.951859, 22.280975, 28.249817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.162822, 22.172153, 28.285213>,  <14.514425, 21.990784, 28.344206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.162822, 22.172153, 28.285213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250304, -0.702082, -0.666655,
		-0.405821, -0.549080, 0.730630,
		-0.879009, 0.453423, -0.147482,
		13.899119, 22.308180, 28.240969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049921, 21.478340, 28.289043>,  <14.514425, 21.990784, 28.344206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049921, 21.478340, 28.289043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.813653, 21.766798, 28.144236>,  <13.671892, 21.939873, 28.057350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.813653, 21.766798, 28.144236>,  <14.049921, 21.478340, 28.289043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813653, 21.766798, 28.144236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371745, -0.641399, -0.671129,
		-0.716182, -0.261835, 0.646936,
		-0.590669, 0.721145, -0.362022,
		13.636452, 21.983141, 28.035629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445807, 21.028069, 28.256235>,  <14.049921, 21.478340, 28.289043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445807, 21.028069, 28.256235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.419416, 21.327730, 27.992594>,  <13.403582, 21.507526, 27.834410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.419416, 21.327730, 27.992594>,  <13.445807, 21.028069, 28.256235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419416, 21.327730, 27.992594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166050, -0.659576, -0.733067,
		-0.983908, 0.061079, 0.167914,
		-0.065977, 0.749152, -0.659104,
		13.399623, 21.552475, 27.794863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780481, 20.893229, 27.887833>,  <13.445807, 21.028069, 28.256235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780481, 20.893229, 27.887833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.025737, 21.119108, 27.666862>,  <13.172891, 21.254637, 27.534281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.025737, 21.119108, 27.666862>,  <12.780481, 20.893229, 27.887833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.025737, 21.119108, 27.666862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144682, -0.607194, -0.781270,
		-0.776612, 0.558953, -0.290593,
		0.613140, 0.564700, -0.552425,
		13.209679, 21.288519, 27.501135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374033, 21.017393, 27.326733>,  <12.780481, 20.893229, 27.887833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374033, 21.017393, 27.326733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.757931, 21.050047, 27.219233>,  <12.988270, 21.069639, 27.154732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.757931, 21.050047, 27.219233>,  <12.374033, 21.017393, 27.326733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.757931, 21.050047, 27.219233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203346, -0.458107, -0.865325,
		-0.193756, 0.885140, -0.423066,
		0.959744, 0.081633, -0.268751,
		13.045854, 21.074537, 27.138607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317926, 21.339743, 26.624102>,  <12.374033, 21.017393, 27.326733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.317926, 21.339743, 26.624102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.680426, 21.172861, 26.651402>,  <12.897925, 21.072733, 26.667782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.680426, 21.172861, 26.651402>,  <12.317926, 21.339743, 26.624102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.680426, 21.172861, 26.651402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039780, -0.244880, -0.968737,
		0.420873, 0.875200, -0.238519,
		0.906247, -0.417203, 0.068248,
		12.952300, 21.047701, 26.671875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.622744, 21.563784, 26.017509>,  <12.317926, 21.339743, 26.624102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.622744, 21.563784, 26.017509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.841936, 21.250177, 26.134151>,  <12.973452, 21.062014, 26.204136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.841936, 21.250177, 26.134151>,  <12.622744, 21.563784, 26.017509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.841936, 21.250177, 26.134151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144900, -0.254365, -0.956191,
		0.823845, 0.566228, -0.025783,
		0.547981, -0.784018, 0.291604,
		13.006330, 21.014973, 26.221632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250633, 21.695145, 25.605421>,  <12.622744, 21.563784, 26.017509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.250633, 21.695145, 25.605421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.282449, 21.315765, 25.728136>,  <13.301538, 21.088139, 25.801765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.282449, 21.315765, 25.728136>,  <13.250633, 21.695145, 25.605421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.282449, 21.315765, 25.728136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242780, -0.280063, -0.928775,
		0.966815, 0.148356, 0.207988,
		0.079540, -0.948449, 0.306787,
		13.306311, 21.031231, 25.820171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816209, 21.428335, 25.218361>,  <13.250633, 21.695145, 25.605421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.816209, 21.428335, 25.218361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.620353, 21.104008, 25.346626>,  <13.502839, 20.909410, 25.423586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.620353, 21.104008, 25.346626>,  <13.816209, 21.428335, 25.218361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.620353, 21.104008, 25.346626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006128, -0.370956, -0.928630,
		0.871903, -0.452730, 0.186604,
		-0.489640, -0.810819, 0.320664,
		13.473461, 20.860762, 25.442825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152514, 20.852369, 24.977030>,  <13.816209, 21.428335, 25.218361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152514, 20.852369, 24.977030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.778511, 20.720289, 25.028770>,  <13.554110, 20.641041, 25.059814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.778511, 20.720289, 25.028770>,  <14.152514, 20.852369, 24.977030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778511, 20.720289, 25.028770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015102, -0.327345, -0.944784,
		0.354313, -0.885332, 0.301082,
		-0.935005, -0.330202, 0.129353,
		13.498010, 20.621229, 25.067575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.150733, 20.112190, 24.771420>,  <14.152514, 20.852369, 24.977030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.150733, 20.112190, 24.771420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.771424, 20.235950, 24.742985>,  <13.543839, 20.310205, 24.725924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.771424, 20.235950, 24.742985>,  <14.150733, 20.112190, 24.771420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771424, 20.235950, 24.742985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034176, -0.322110, -0.946085,
		-0.315574, -0.894730, 0.316025,
		-0.948285, 0.309360, -0.071072,
		13.486943, 20.328770, 24.721659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.879835, 19.578659, 24.405121>,  <14.150733, 20.112190, 24.771420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.879835, 19.578659, 24.405121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.623072, 19.882469, 24.363024>,  <13.469013, 20.064754, 24.337765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.623072, 19.882469, 24.363024>,  <13.879835, 19.578659, 24.405121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.623072, 19.882469, 24.363024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089395, -0.210448, -0.973509,
		-0.761553, -0.615495, 0.202986,
		-0.641908, 0.759524, -0.105245,
		13.430499, 20.110327, 24.331450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.326059, 19.337145, 23.969727>,  <13.879835, 19.578659, 24.405121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.326059, 19.337145, 23.969727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.280655, 19.733938, 23.947527>,  <13.253412, 19.972015, 23.934208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.280655, 19.733938, 23.947527>,  <13.326059, 19.337145, 23.969727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280655, 19.733938, 23.947527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266597, -0.084221, -0.960121,
		-0.957100, -0.094188, 0.274021,
		-0.113510, 0.991985, -0.055497,
		13.246602, 20.031534, 23.930878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806523, 19.299187, 23.543518>,  <13.326059, 19.337145, 23.969727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806523, 19.299187, 23.543518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.940613, 19.676020, 23.539389>,  <13.021067, 19.902119, 23.536911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.940613, 19.676020, 23.539389>,  <12.806523, 19.299187, 23.543518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.940613, 19.676020, 23.539389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000019, -0.010964, -0.999940,
		-0.942139, 0.335202, -0.003694,
		0.335223, 0.942082, -0.010324,
		13.041180, 19.958645, 23.536291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453865, 19.582441, 22.964542>,  <12.806523, 19.299187, 23.543518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453865, 19.582441, 22.964542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.756908, 19.837648, 23.019625>,  <12.938734, 19.990772, 23.052673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.756908, 19.837648, 23.019625>,  <12.453865, 19.582441, 22.964542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.756908, 19.837648, 23.019625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102994, 0.091474, -0.990467,
		-0.644532, 0.764569, 0.003589,
		0.757609, 0.638018, 0.137704,
		12.984191, 20.029055, 23.060936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.303644, 20.258778, 22.735601>,  <12.453865, 19.582441, 22.964542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.303644, 20.258778, 22.735601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.703227, 20.249973, 22.751595>,  <12.942977, 20.244692, 22.761190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.703227, 20.249973, 22.751595>,  <12.303644, 20.258778, 22.735601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.703227, 20.249973, 22.751595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042464, 0.127094, -0.990981,
		0.016729, 0.991646, 0.127896,
		0.998958, -0.022009, 0.039983,
		13.002914, 20.243370, 22.763590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.512854, 20.877907, 22.373260>,  <12.303644, 20.258778, 22.735601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.512854, 20.877907, 22.373260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.788793, 20.588423, 22.365728>,  <12.954356, 20.414732, 22.361210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.788793, 20.588423, 22.365728>,  <12.512854, 20.877907, 22.373260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.788793, 20.588423, 22.365728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026410, 0.051147, -0.998342,
		0.723472, 0.688207, 0.054397,
		0.689848, -0.723709, -0.018828,
		12.995747, 20.371309, 22.360081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.047922, 21.095190, 21.872580>,  <12.512854, 20.877907, 22.373260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.047922, 21.095190, 21.872580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.086675, 20.697931, 21.898729>,  <13.109926, 20.459576, 21.914419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.086675, 20.697931, 21.898729>,  <13.047922, 21.095190, 21.872580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.086675, 20.697931, 21.898729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039409, -0.069458, -0.996806,
		0.994515, 0.093996, -0.045868,
		0.096882, -0.993147, 0.065373,
		13.115739, 20.399988, 21.918341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.569631, 20.933434, 21.434069>,  <13.047922, 21.095190, 21.872580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.569631, 20.933434, 21.434069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.387088, 20.578857, 21.464960>,  <13.277562, 20.366112, 21.483496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.387088, 20.578857, 21.464960>,  <13.569631, 20.933434, 21.434069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387088, 20.578857, 21.464960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023858, -0.074573, -0.996930,
		0.889477, -0.456798, 0.012883,
		-0.456357, -0.886439, 0.077229,
		13.250181, 20.312925, 21.488129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.620874, 17.900108, 5.712517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.860357, 17.792711, 6.014368>,  <25.004047, 17.728273, 6.195478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.860357, 17.792711, 6.014368>,  <24.620874, 17.900108, 5.712517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860357, 17.792711, 6.014368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758111, 0.114095, 0.642067,
		-0.258490, -0.956501, -0.135238,
		0.598707, -0.268494, 0.754626,
		25.039968, 17.712162, 6.240756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720289, 18.085175, 4.903301>,  <24.620874, 17.900108, 5.712517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720289, 18.085175, 4.903301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.839752, 18.280573, 4.575356>,  <24.911430, 18.397812, 4.378590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.839752, 18.280573, 4.575356>,  <24.720289, 18.085175, 4.903301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839752, 18.280573, 4.575356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914044, -0.393466, 0.098529,
		-0.274456, -0.778816, -0.564021,
		0.298659, 0.488498, -0.819861,
		24.929350, 18.427122, 4.329398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933640, 17.557177, 4.554638>,  <24.720289, 18.085175, 4.903301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933640, 17.557177, 4.554638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.118608, 17.891043, 4.434971>,  <25.229589, 18.091362, 4.363170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.118608, 17.891043, 4.434971>,  <24.933640, 17.557177, 4.554638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118608, 17.891043, 4.434971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876621, -0.481005, 0.013001,
		-0.133050, -0.268270, -0.954112,
		0.462420, 0.834665, -0.299169,
		25.257334, 18.141441, 4.345220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234972, 17.378132, 3.894453>,  <24.933640, 17.557177, 4.554638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234972, 17.378132, 3.894453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.447128, 17.647949, 4.099850>,  <25.574423, 17.809839, 4.223088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.447128, 17.647949, 4.099850>,  <25.234972, 17.378132, 3.894453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447128, 17.647949, 4.099850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847705, -0.415603, -0.329651,
		-0.008955, 0.610135, -0.792247,
		0.530392, 0.674544, 0.513493,
		25.606245, 17.850313, 4.253898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594139, 16.930546, 3.794989>,  <25.234972, 17.378132, 3.894453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594139, 16.930546, 3.794989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.486908, 17.049332, 3.428395>,  <24.422569, 17.120604, 3.208438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.486908, 17.049332, 3.428395>,  <24.594139, 16.930546, 3.794989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.486908, 17.049332, 3.428395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173386, -0.950645, -0.257316,
		-0.947665, 0.089924, 0.306341,
		-0.268083, 0.296965, -0.916485,
		24.406485, 17.138420, 3.153449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.846197, 16.806314, 3.632989>,  <24.594139, 16.930546, 3.794989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.846197, 16.806314, 3.632989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.092243, 16.804087, 3.317622>,  <24.239870, 16.802750, 3.128402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.092243, 16.804087, 3.317622>,  <23.846197, 16.806314, 3.632989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.092243, 16.804087, 3.317622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055850, -0.997771, -0.036524,
		-0.786458, 0.066500, -0.614054,
		0.615114, -0.005571, -0.788418,
		24.276777, 16.802416, 3.081096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.796427, 16.894007, 4.418991>,  <23.846197, 16.806314, 3.632989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.796427, 16.894007, 4.418991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.965244, 16.989994, 4.768687>,  <24.066534, 17.047586, 4.978504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.965244, 16.989994, 4.768687>,  <23.796427, 16.894007, 4.418991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.965244, 16.989994, 4.768687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631622, -0.613932, 0.473436,
		0.650334, -0.751999, -0.107535,
		0.422043, 0.239970, 0.874240,
		24.091858, 17.061985, 5.030959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.933830, 16.327688, 4.915906>,  <23.796427, 16.894007, 4.418991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.933830, 16.327688, 4.915906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.906004, 16.627167, 5.179607>,  <23.889307, 16.806854, 5.337828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.906004, 16.627167, 5.179607>,  <23.933830, 16.327688, 4.915906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.906004, 16.627167, 5.179607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599365, -0.559645, 0.572328,
		0.797447, -0.355318, 0.487675,
		-0.069567, 0.748697, 0.659253,
		23.885134, 16.851776, 5.377383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.175823, 16.119333, 5.510114>,  <23.933830, 16.327688, 4.915906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.175823, 16.119333, 5.510114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.871040, 16.371931, 5.567571>,  <23.688169, 16.523489, 5.602045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.871040, 16.371931, 5.567571>,  <24.175823, 16.119333, 5.510114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.871040, 16.371931, 5.567571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468103, -0.690301, 0.551693,
		0.447547, 0.353128, 0.821585,
		-0.761959, 0.631495, 0.143642,
		23.642452, 16.561380, 5.610663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149044, 16.251257, 6.280810>,  <24.175823, 16.119333, 5.510114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149044, 16.251257, 6.280810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.808231, 16.248392, 6.071432>,  <23.603745, 16.246674, 5.945806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.808231, 16.248392, 6.071432>,  <24.149044, 16.251257, 6.280810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.808231, 16.248392, 6.071432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330107, -0.768696, 0.547847,
		-0.406294, 0.639575, 0.652587,
		-0.852030, -0.007163, -0.523445,
		23.552622, 16.246243, 5.914399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.622940, 16.329235, 6.702689>,  <24.149044, 16.251257, 6.280810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.622940, 16.329235, 6.702689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.480871, 16.124624, 6.389718>,  <23.395630, 16.001858, 6.201936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.480871, 16.124624, 6.389718>,  <23.622940, 16.329235, 6.702689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.480871, 16.124624, 6.389718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119596, -0.805255, 0.580742,
		-0.927119, 0.299839, 0.224828,
		-0.355173, -0.511528, -0.782427,
		23.374319, 15.971166, 6.154990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.991734, 16.038958, 6.893692>,  <23.622940, 16.329235, 6.702689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.991734, 16.038958, 6.893692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.098137, 15.822608, 6.574520>,  <23.161978, 15.692798, 6.383017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.098137, 15.822608, 6.574520>,  <22.991734, 16.038958, 6.893692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.098137, 15.822608, 6.574520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084552, -0.837656, 0.539615,
		-0.960256, -0.076075, -0.268555,
		0.266007, -0.540875, -0.797931,
		23.177938, 15.660345, 6.335141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412598, 15.637995, 6.677955>,  <22.991734, 16.038958, 6.893692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412598, 15.637995, 6.677955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.744438, 15.460708, 6.542120>,  <22.943542, 15.354336, 6.460619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.744438, 15.460708, 6.542120>,  <22.412598, 15.637995, 6.677955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.744438, 15.460708, 6.542120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345297, -0.885194, 0.311772,
		-0.438783, -0.141389, -0.887400,
		0.829602, -0.443217, -0.339587,
		22.993319, 15.327743, 6.440244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230955, 15.058486, 6.339897>,  <22.412598, 15.637995, 6.677955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230955, 15.058486, 6.339897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.605579, 14.956477, 6.436076>,  <22.830355, 14.895272, 6.493783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.605579, 14.956477, 6.436076>,  <22.230955, 15.058486, 6.339897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.605579, 14.956477, 6.436076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342709, -0.810122, 0.475659,
		0.073488, -0.527888, -0.846129,
		0.936563, -0.255021, 0.240447,
		22.886549, 14.879971, 6.508210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.178106, 14.413260, 6.153996>,  <22.230955, 15.058486, 6.339897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.178106, 14.413260, 6.153996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.504667, 14.475613, 6.376414>,  <22.700603, 14.513024, 6.509866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.504667, 14.475613, 6.376414>,  <22.178106, 14.413260, 6.153996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.504667, 14.475613, 6.376414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131855, -0.887127, 0.442289,
		0.562230, -0.434403, -0.703699,
		0.816402, 0.155882, 0.556047,
		22.749588, 14.522377, 6.543229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.464682, 13.780839, 6.167584>,  <22.178106, 14.413260, 6.153996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.464682, 13.780839, 6.167584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.608936, 13.978792, 6.483820>,  <22.695490, 14.097564, 6.673562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.608936, 13.978792, 6.483820>,  <22.464682, 13.780839, 6.167584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608936, 13.978792, 6.483820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340429, -0.719312, 0.605556,
		0.868360, -0.487526, -0.090938,
		0.360637, 0.494883, 0.790590,
		22.717127, 14.127257, 6.720997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.707561, 13.264532, 6.660689>,  <22.464682, 13.780839, 6.167584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.707561, 13.264532, 6.660689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.653887, 13.587457, 6.890557>,  <22.621681, 13.781211, 7.028477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.653887, 13.587457, 6.890557>,  <22.707561, 13.264532, 6.660689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.653887, 13.587457, 6.890557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174056, -0.590099, 0.788345,
		0.975550, 0.005761, 0.219701,
		-0.134187, 0.807310, 0.574668,
		22.613630, 13.829650, 7.062957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.668503, 12.872579, 7.212345>,  <22.707561, 13.264532, 6.660689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.668503, 12.872579, 7.212345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.577690, 13.239910, 7.342038>,  <22.523203, 13.460309, 7.419854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.577690, 13.239910, 7.342038>,  <22.668503, 12.872579, 7.212345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.577690, 13.239910, 7.342038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476285, -0.395093, 0.785528,
		0.849476, 0.023913, 0.527086,
		-0.227032, 0.918330, 0.324233,
		22.509581, 13.515409, 7.439308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.771627, 12.857719, 7.945392>,  <22.668503, 12.872579, 7.212345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.771627, 12.857719, 7.945392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.532642, 13.173379, 7.888427>,  <22.389252, 13.362775, 7.854249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.532642, 13.173379, 7.888427>,  <22.771627, 12.857719, 7.945392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.532642, 13.173379, 7.888427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664169, -0.387466, 0.639336,
		0.449351, 0.476566, 0.755625,
		-0.597464, 0.789148, -0.142412,
		22.353403, 13.410124, 7.845704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653410, 12.970591, 8.641169>,  <22.771627, 12.857719, 7.945392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653410, 12.970591, 8.641169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.368586, 13.147917, 8.423383>,  <22.197691, 13.254313, 8.292711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.368586, 13.147917, 8.423383>,  <22.653410, 12.970591, 8.641169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.368586, 13.147917, 8.423383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672949, -0.209724, 0.709334,
		0.200271, 0.871486, 0.447664,
		-0.712061, 0.443315, -0.544464,
		22.154966, 13.280911, 8.260043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.317949, 13.507112, 8.962319>,  <22.653410, 12.970591, 8.641169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.317949, 13.507112, 8.962319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.035854, 13.428198, 8.689932>,  <21.866598, 13.380850, 8.526499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.035854, 13.428198, 8.689932>,  <22.317949, 13.507112, 8.962319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.035854, 13.428198, 8.689932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687991, -0.041501, 0.724532,
		-0.171200, 0.979468, -0.106462,
		-0.705237, -0.197285, -0.680970,
		21.824284, 13.369012, 8.485641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665274, 13.824181, 9.170247>,  <22.317949, 13.507112, 8.962319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665274, 13.824181, 9.170247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.548113, 13.545933, 8.907851>,  <21.477816, 13.378984, 8.750414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.548113, 13.545933, 8.907851>,  <21.665274, 13.824181, 9.170247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.548113, 13.545933, 8.907851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659428, -0.349837, 0.665409,
		-0.692361, 0.627477, -0.356243,
		-0.292902, -0.695620, -0.655989,
		21.460241, 13.337247, 8.711055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.952810, 13.845094, 9.098867>,  <21.665274, 13.824181, 9.170247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.952810, 13.845094, 9.098867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.010729, 13.474608, 8.959634>,  <21.045479, 13.252317, 8.876094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.010729, 13.474608, 8.959634>,  <20.952810, 13.845094, 9.098867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010729, 13.474608, 8.959634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851429, -0.295853, 0.433058,
		-0.504086, 0.233664, -0.831443,
		0.144795, -0.926214, -0.348084,
		21.054167, 13.196744, 8.855208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.238457, 13.643445, 8.985023>,  <20.952810, 13.845094, 9.098867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.238457, 13.643445, 8.985023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.446266, 13.302872, 8.956298>,  <20.570951, 13.098528, 8.939062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.446266, 13.302872, 8.956298>,  <20.238457, 13.643445, 8.985023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446266, 13.302872, 8.956298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740013, -0.490366, 0.460350,
		-0.427172, -0.186020, -0.884828,
		0.519525, -0.851433, -0.071813,
		20.602123, 13.047441, 8.934753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.714203, 13.145249, 8.993912>,  <20.238457, 13.643445, 8.985023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.714203, 13.145249, 8.993912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.051680, 12.947785, 9.078274>,  <20.254166, 12.829307, 9.128891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.051680, 12.947785, 9.078274>,  <19.714203, 13.145249, 8.993912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.051680, 12.947785, 9.078274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492816, -0.556462, 0.668941,
		-0.212869, -0.668319, -0.712767,
		0.843694, -0.493660, 0.210905,
		20.304789, 12.799687, 9.141545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588875, 12.374251, 8.981336>,  <19.714203, 13.145249, 8.993912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588875, 12.374251, 8.981336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.911404, 12.427296, 9.211903>,  <20.104921, 12.459123, 9.350243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.911404, 12.427296, 9.211903>,  <19.588875, 12.374251, 8.981336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911404, 12.427296, 9.211903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462948, -0.465053, 0.754589,
		0.368132, -0.875294, -0.313590,
		0.806323, 0.132612, 0.576416,
		20.153301, 12.467079, 9.384828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812784, 11.706987, 9.324551>,  <19.588875, 12.374251, 8.981336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812784, 11.706987, 9.324551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.950377, 12.001228, 9.557982>,  <20.032932, 12.177773, 9.698042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.950377, 12.001228, 9.557982>,  <19.812784, 11.706987, 9.324551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950377, 12.001228, 9.557982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553058, -0.343538, 0.759018,
		0.758818, -0.583841, 0.288661,
		0.343980, 0.735603, 0.583580,
		20.053570, 12.221910, 9.733056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239323, 11.351479, 9.948820>,  <19.812784, 11.706987, 9.324551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239323, 11.351479, 9.948820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.141582, 11.716554, 10.079844>,  <20.082937, 11.935598, 10.158458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.141582, 11.716554, 10.079844>,  <20.239323, 11.351479, 9.948820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.141582, 11.716554, 10.079844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239082, -0.384075, 0.891811,
		0.939751, 0.139602, 0.312056,
		-0.244352, 0.912687, 0.327558,
		20.068277, 11.990360, 10.178111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.502756, 11.455875, 10.677100>,  <20.239323, 11.351479, 9.948820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.502756, 11.455875, 10.677100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.217794, 11.734690, 10.644554>,  <20.046818, 11.901978, 10.625027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.217794, 11.734690, 10.644554>,  <20.502756, 11.455875, 10.677100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217794, 11.734690, 10.644554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200237, -0.090778, 0.975533,
		0.672595, 0.711267, 0.204243,
		-0.712405, 0.697035, -0.081365,
		20.004072, 11.943800, 10.620145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481628, 11.492401, 11.271770>,  <20.502756, 11.455875, 10.677100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481628, 11.492401, 11.271770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.174898, 11.724559, 11.162138>,  <19.990860, 11.863853, 11.096358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.174898, 11.724559, 11.162138>,  <20.481628, 11.492401, 11.271770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174898, 11.724559, 11.162138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310962, 0.037621, 0.949677,
		0.561499, 0.813466, 0.151632,
		-0.766825, 0.580395, -0.274082,
		19.944851, 11.898677, 11.079913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625959, 11.874652, 11.890938>,  <20.481628, 11.492401, 11.271770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625959, 11.874652, 11.890938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.001963, 11.996600, 11.952177>,  <21.227564, 12.069769, 11.988921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.001963, 11.996600, 11.952177>,  <20.625959, 11.874652, 11.890938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001963, 11.996600, 11.952177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277965, 0.424265, 0.861821,
		0.197789, -0.852675, 0.483556,
		0.940008, 0.304870, 0.153099,
		21.283964, 12.088061, 11.998107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906027, 11.663345, 12.604144>,  <20.625959, 11.874652, 11.890938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906027, 11.663345, 12.604144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.023893, 12.017945, 12.461433>,  <21.094614, 12.230705, 12.375807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.023893, 12.017945, 12.461433>,  <20.906027, 11.663345, 12.604144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.023893, 12.017945, 12.461433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414726, 0.454997, 0.788023,
		0.860915, -0.084239, 0.501727,
		0.294666, 0.886500, -0.356777,
		21.112293, 12.283895, 12.354401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.296917, 12.101508, 13.058690>,  <20.906027, 11.663345, 12.604144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.296917, 12.101508, 13.058690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.107224, 12.341132, 12.800627>,  <20.993408, 12.484906, 12.645789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.107224, 12.341132, 12.800627>,  <21.296917, 12.101508, 13.058690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107224, 12.341132, 12.800627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387213, 0.516198, 0.763941,
		0.790676, 0.612101, -0.012835,
		-0.474234, 0.599060, -0.645158,
		20.964952, 12.520850, 12.607080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641150, 12.824379, 13.142856>,  <21.296917, 12.101508, 13.058690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641150, 12.824379, 13.142856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.255543, 12.760045, 13.058187>,  <21.024179, 12.721445, 13.007385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.255543, 12.760045, 13.058187>,  <21.641150, 12.824379, 13.142856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255543, 12.760045, 13.058187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265835, 0.576553, 0.772605,
		-0.002222, 0.801073, -0.598562,
		-0.964016, -0.160835, -0.211672,
		20.966337, 12.711795, 12.994685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891455, 13.296538, 12.605398>,  <21.641150, 12.824379, 13.142856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891455, 13.296538, 12.605398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.872532, 13.287063, 12.205958>,  <21.861177, 13.281378, 11.966294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.872532, 13.287063, 12.205958>,  <21.891455, 13.296538, 12.605398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.872532, 13.287063, 12.205958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250472, 0.967498, -0.034817,
		0.966968, -0.251768, -0.039837,
		-0.047308, -0.023689, -0.998599,
		21.858339, 13.279956, 11.906379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.644590, 13.707050, 12.700429>,  <21.891455, 13.296538, 12.605398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.644590, 13.707050, 12.700429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.036015, 13.641276, 12.650824>,  <23.270868, 13.601811, 12.621060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.036015, 13.641276, 12.650824>,  <22.644590, 13.707050, 12.700429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.036015, 13.641276, 12.650824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002099, 0.594140, -0.804359,
		0.205947, 0.787374, 0.581057,
		0.978561, -0.164436, -0.124014,
		23.329582, 13.591946, 12.613619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.983404, 14.305635, 12.751419>,  <22.644590, 13.707050, 12.700429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.983404, 14.305635, 12.751419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.247919, 14.081261, 12.552200>,  <23.406628, 13.946635, 12.432670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.247919, 14.081261, 12.552200>,  <22.983404, 14.305635, 12.751419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.247919, 14.081261, 12.552200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035343, 0.639907, -0.767639,
		0.749300, 0.525232, 0.403336,
		0.661286, -0.560937, -0.498046,
		23.446304, 13.912979, 12.402786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.509968, 14.717474, 12.623044>,  <22.983404, 14.305635, 12.751419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.509968, 14.717474, 12.623044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560038, 14.431716, 12.347662>,  <23.590080, 14.260261, 12.182433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560038, 14.431716, 12.347662>,  <23.509968, 14.717474, 12.623044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.560038, 14.431716, 12.347662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039575, 0.696956, -0.716021,
		0.991345, 0.062383, 0.115514,
		0.125176, -0.714396, -0.688454,
		23.597589, 14.217398, 12.141126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.018070, 14.939013, 12.182358>,  <23.509968, 14.717474, 12.623044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.018070, 14.939013, 12.182358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826607, 14.656386, 11.973877>,  <23.711729, 14.486811, 11.848788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826607, 14.656386, 11.973877>,  <24.018070, 14.939013, 12.182358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.826607, 14.656386, 11.973877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030811, 0.606775, -0.794277,
		0.877461, -0.364127, -0.312207,
		-0.478657, -0.706566, -0.521202,
		23.683010, 14.444417, 11.817516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.257645, 15.022161, 11.548569>,  <24.018070, 14.939013, 12.182358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.257645, 15.022161, 11.548569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.923012, 14.811399, 11.488563>,  <23.722233, 14.684943, 11.452559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.923012, 14.811399, 11.488563>,  <24.257645, 15.022161, 11.548569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.923012, 14.811399, 11.488563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070670, 0.375334, -0.924192,
		0.543265, -0.762560, -0.351233,
		-0.836581, -0.526903, -0.150016,
		23.672037, 14.653329, 11.443558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.346260, 14.678985, 10.837572>,  <24.257645, 15.022161, 11.548569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.346260, 14.678985, 10.837572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.965904, 14.708841, 10.957727>,  <23.737690, 14.726755, 11.029820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.965904, 14.708841, 10.957727>,  <24.346260, 14.678985, 10.837572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.965904, 14.708841, 10.957727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227896, 0.487873, -0.842641,
		-0.209448, -0.869718, -0.446904,
		-0.950891, 0.074641, 0.300389,
		23.680637, 14.731234, 11.047844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868689, 14.501034, 10.257469>,  <24.346260, 14.678985, 10.837572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868689, 14.501034, 10.257469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.636473, 14.696376, 10.518079>,  <23.497143, 14.813581, 10.674444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.636473, 14.696376, 10.518079>,  <23.868689, 14.501034, 10.257469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.636473, 14.696376, 10.518079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533519, 0.376313, -0.757460,
		-0.615086, -0.787336, 0.042082,
		-0.580540, 0.488354, 0.651524,
		23.462311, 14.842882, 10.713536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.255388, 14.429185, 9.947703>,  <23.868689, 14.501034, 10.257469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.255388, 14.429185, 9.947703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.217113, 14.751103, 10.182018>,  <23.194149, 14.944254, 10.322607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.217113, 14.751103, 10.182018>,  <23.255388, 14.429185, 9.947703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.217113, 14.751103, 10.182018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613369, 0.415817, -0.671472,
		-0.783979, -0.423556, 0.453848,
		-0.095689, 0.804796, 0.585788,
		23.188406, 14.992542, 10.357755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.681213, 14.580133, 9.777887>,  <23.255388, 14.429185, 9.947703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.681213, 14.580133, 9.777887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.797550, 14.916161, 9.961059>,  <22.867352, 15.117777, 10.070961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.797550, 14.916161, 9.961059>,  <22.681213, 14.580133, 9.777887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.797550, 14.916161, 9.961059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514659, 0.540839, -0.665296,
		-0.806559, -0.042182, 0.589647,
		0.290840, 0.840068, 0.457928,
		22.884802, 15.168180, 10.098437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.074995, 15.012095, 9.914916>,  <22.681213, 14.580133, 9.777887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.074995, 15.012095, 9.914916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.377497, 15.273730, 9.908577>,  <22.558998, 15.430712, 9.904774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.377497, 15.273730, 9.908577>,  <22.074995, 15.012095, 9.914916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.377497, 15.273730, 9.908577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605047, 0.689923, -0.397397,
		-0.248999, 0.310120, 0.917510,
		0.756252, 0.654088, -0.015847,
		22.604372, 15.469956, 9.903823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741636, 15.643498, 10.188408>,  <22.074995, 15.012095, 9.914916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741636, 15.643498, 10.188408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056608, 15.793882, 9.993017>,  <22.245592, 15.884112, 9.875783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056608, 15.793882, 9.993017>,  <21.741636, 15.643498, 10.188408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056608, 15.793882, 9.993017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597199, 0.661580, -0.453504,
		0.152666, 0.648820, 0.745470,
		0.787430, 0.375959, -0.488475,
		22.292837, 15.906670, 9.846475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.572550, 16.343990, 10.136695>,  <21.741636, 15.643498, 10.188408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.572550, 16.343990, 10.136695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.882830, 16.320457, 9.885353>,  <22.068998, 16.306337, 9.734548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.882830, 16.320457, 9.885353>,  <21.572550, 16.343990, 10.136695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.882830, 16.320457, 9.885353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460959, 0.627228, -0.627775,
		0.431054, 0.776611, 0.459422,
		0.775699, -0.058830, -0.628355,
		22.115540, 16.302809, 9.696847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.828815, 17.072706, 9.942913>,  <21.572550, 16.343990, 10.136695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.828815, 17.072706, 9.942913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.932001, 16.826109, 9.645351>,  <21.993912, 16.678150, 9.466814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.932001, 16.826109, 9.645351>,  <21.828815, 17.072706, 9.942913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.932001, 16.826109, 9.645351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423307, 0.620009, -0.660606,
		0.868486, 0.485311, -0.101026,
		0.257962, -0.616492, -0.743904,
		22.009390, 16.641161, 9.422180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.979984, 17.519035, 9.427670>,  <21.828815, 17.072706, 9.942913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.979984, 17.519035, 9.427670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.894129, 17.178007, 9.237068>,  <21.842615, 16.973391, 9.122707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.894129, 17.178007, 9.237068>,  <21.979984, 17.519035, 9.427670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894129, 17.178007, 9.237068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596009, 0.500840, -0.627641,
		0.773760, 0.149285, -0.615638,
		-0.214639, -0.852569, -0.476505,
		21.829737, 16.922237, 9.094117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.014626, 17.677109, 8.745451>,  <21.979984, 17.519035, 9.427670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.014626, 17.677109, 8.745451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.797701, 17.341038, 8.744710>,  <21.667547, 17.139395, 8.744266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.797701, 17.341038, 8.744710>,  <22.014626, 17.677109, 8.745451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.797701, 17.341038, 8.744710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611288, 0.396079, -0.685163,
		0.576391, -0.370438, -0.728388,
		-0.542310, -0.840177, -0.001852,
		21.635008, 17.088985, 8.744155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.876680, 17.514919, 7.997244>,  <22.014626, 17.677109, 8.745451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.876680, 17.514919, 7.997244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.593975, 17.326664, 8.208521>,  <21.424353, 17.213711, 8.335287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.593975, 17.326664, 8.208521>,  <21.876680, 17.514919, 7.997244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.593975, 17.326664, 8.208521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689125, 0.289156, -0.664451,
		0.159985, -0.833600, -0.528692,
		-0.706761, -0.470638, 0.528194,
		21.381947, 17.185472, 8.366979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.555099, 17.162073, 7.549628>,  <21.876680, 17.514919, 7.997244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.555099, 17.162073, 7.549628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.280279, 17.187681, 7.839142>,  <21.115387, 17.203047, 8.012851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.280279, 17.187681, 7.839142>,  <21.555099, 17.162073, 7.549628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280279, 17.187681, 7.839142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683273, 0.281946, -0.673531,
		-0.247188, -0.957292, -0.149967,
		-0.687048, 0.064020, 0.723786,
		21.074165, 17.206888, 8.056277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.661674, 17.837835, 17.354681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272120, 17.800440, 17.437437>,  <17.038387, 17.778002, 17.487091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272120, 17.800440, 17.437437>,  <17.661674, 17.837835, 17.354681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272120, 17.800440, 17.437437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008945, -0.926374, -0.376500,
		0.226858, -0.364817, 0.903019,
		-0.973887, -0.093489, 0.206892,
		16.979954, 17.772392, 17.499504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558567, 17.191319, 17.665619>,  <17.661674, 17.837835, 17.354681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558567, 17.191319, 17.665619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188692, 17.292152, 17.551491>,  <16.966768, 17.352654, 17.483013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188692, 17.292152, 17.551491>,  <17.558567, 17.191319, 17.665619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.188692, 17.292152, 17.551491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173689, -0.946185, -0.273067,
		-0.338804, -0.202944, 0.918708,
		-0.924686, 0.252086, -0.285323,
		16.911285, 17.367779, 17.465895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186287, 16.544828, 17.776836>,  <17.558567, 17.191319, 17.665619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.186287, 16.544828, 17.776836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950024, 16.763815, 17.539719>,  <16.808266, 16.895206, 17.397448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950024, 16.763815, 17.539719>,  <17.186287, 16.544828, 17.776836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950024, 16.763815, 17.539719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335162, -0.834718, -0.436936,
		-0.734022, -0.059399, 0.676523,
		-0.590659, 0.547465, -0.592793,
		16.772825, 16.928055, 17.361881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.603405, 16.138985, 17.623196>,  <17.186287, 16.544828, 17.776836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.603405, 16.138985, 17.623196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555191, 16.432796, 17.356083>,  <16.526262, 16.609085, 17.195814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555191, 16.432796, 17.356083>,  <16.603405, 16.138985, 17.623196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555191, 16.432796, 17.356083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365209, -0.658322, -0.658205,
		-0.923089, 0.164545, 0.347608,
		-0.120534, 0.734532, -0.667783,
		16.519032, 16.653156, 17.155748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934269, 16.047956, 17.224329>,  <16.603405, 16.138985, 17.623196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934269, 16.047956, 17.224329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142225, 16.301220, 16.994957>,  <16.266998, 16.453178, 16.857334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142225, 16.301220, 16.994957>,  <15.934269, 16.047956, 17.224329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142225, 16.301220, 16.994957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254259, -0.526160, -0.811485,
		-0.815516, 0.567683, -0.112559,
		0.519890, 0.633160, -0.573431,
		16.298193, 16.491167, 16.822927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508946, 16.294117, 16.634418>,  <15.934269, 16.047956, 17.224329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508946, 16.294117, 16.634418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889211, 16.339298, 16.518843>,  <16.117369, 16.366407, 16.449497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889211, 16.339298, 16.518843>,  <15.508946, 16.294117, 16.634418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.889211, 16.339298, 16.518843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257991, -0.229415, -0.938515,
		-0.172294, 0.966753, -0.188956,
		0.950661, 0.112952, -0.288940,
		16.174408, 16.373184, 16.432161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.594569, 16.847719, 16.146353>,  <15.508946, 16.294117, 16.634418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.594569, 16.847719, 16.146353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906653, 16.602289, 16.097698>,  <16.093904, 16.455030, 16.068506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906653, 16.602289, 16.097698>,  <15.594569, 16.847719, 16.146353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906653, 16.602289, 16.097698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325273, -0.231874, -0.916751,
		0.534293, 0.754823, -0.380490,
		0.780210, -0.613577, -0.121635,
		16.140717, 16.418217, 16.061209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.929643, 16.965019, 15.510569>,  <15.594569, 16.847719, 16.146353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.929643, 16.965019, 15.510569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087473, 16.606041, 15.589463>,  <16.182171, 16.390654, 15.636800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087473, 16.606041, 15.589463>,  <15.929643, 16.965019, 15.510569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087473, 16.606041, 15.589463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202517, -0.294312, -0.934006,
		0.896269, 0.328591, -0.297876,
		0.394575, -0.897445, 0.197238,
		16.205845, 16.336807, 15.648635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229172, 16.963486, 14.966178>,  <15.929643, 16.965019, 15.510569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229172, 16.963486, 14.966178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194374, 16.590263, 15.105802>,  <16.173494, 16.366331, 15.189576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194374, 16.590263, 15.105802>,  <16.229172, 16.963486, 14.966178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194374, 16.590263, 15.105802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175013, -0.330624, -0.927393,
		0.980715, -0.141769, -0.134533,
		-0.086996, -0.933054, 0.349059,
		16.168276, 16.310347, 15.210520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643734, 16.563076, 14.439642>,  <16.229172, 16.963486, 14.966178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.643734, 16.563076, 14.439642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406475, 16.299978, 14.625351>,  <16.264120, 16.142120, 14.736776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406475, 16.299978, 14.625351>,  <16.643734, 16.563076, 14.439642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406475, 16.299978, 14.625351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116695, -0.500340, -0.857929,
		0.796590, -0.563058, 0.220021,
		-0.593149, -0.657743, 0.464272,
		16.228531, 16.102655, 14.764632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775730, 15.930846, 14.149302>,  <16.643734, 16.563076, 14.439642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775730, 15.930846, 14.149302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444000, 15.828244, 14.347868>,  <16.244963, 15.766683, 14.467008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444000, 15.828244, 14.347868>,  <16.775730, 15.930846, 14.149302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444000, 15.828244, 14.347868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299203, -0.546458, -0.782216,
		0.471913, -0.797238, 0.376442,
		-0.829322, -0.256505, 0.496417,
		16.195204, 15.751292, 14.496793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597464, 15.270551, 13.986390>,  <16.775730, 15.930846, 14.149302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597464, 15.270551, 13.986390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245960, 15.426877, 14.095969>,  <16.035059, 15.520673, 14.161716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245960, 15.426877, 14.095969>,  <16.597464, 15.270551, 13.986390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245960, 15.426877, 14.095969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454979, -0.512614, -0.728162,
		-0.144147, -0.764519, 0.628277,
		-0.878758, 0.390815, 0.273948,
		15.982333, 15.544122, 14.178154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109335, 14.752102, 13.935004>,  <16.597464, 15.270551, 13.986390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109335, 14.752102, 13.935004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925202, 15.105461, 13.899894>,  <15.814723, 15.317476, 13.878828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925202, 15.105461, 13.899894>,  <16.109335, 14.752102, 13.935004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925202, 15.105461, 13.899894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460619, -0.322202, -0.827052,
		-0.758898, -0.340286, 0.555230,
		-0.460331, 0.883397, -0.087776,
		15.787103, 15.370481, 13.873561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496587, 14.559322, 13.595798>,  <16.109335, 14.752102, 13.935004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496587, 14.559322, 13.595798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511500, 14.959019, 13.591322>,  <15.520449, 15.198837, 13.588636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511500, 14.959019, 13.591322>,  <15.496587, 14.559322, 13.595798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.511500, 14.959019, 13.591322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663047, 0.016358, -0.748399,
		-0.747648, 0.035324, 0.663155,
		0.037285, 0.999242, -0.011191,
		15.522686, 15.258791, 13.587964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.607352, 13.773862, 13.662462>,  <15.496587, 14.559322, 13.595798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.607352, 13.773862, 13.662462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813136, 13.471083, 13.823639>,  <15.936606, 13.289415, 13.920344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813136, 13.471083, 13.823639>,  <15.607352, 13.773862, 13.662462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813136, 13.471083, 13.823639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406286, 0.198643, 0.891893,
		-0.755158, -0.622551, -0.205344,
		0.514459, -0.756949, 0.402941,
		15.967474, 13.243999, 13.944521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087628, 13.207684, 14.025244>,  <15.607352, 13.773862, 13.662462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087628, 13.207684, 14.025244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458112, 13.186951, 14.174616>,  <15.680402, 13.174511, 14.264239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458112, 13.186951, 14.174616>,  <15.087628, 13.207684, 14.025244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.458112, 13.186951, 14.174616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373588, 0.006994, 0.927568,
		-0.050693, -0.998631, -0.012888,
		0.926209, -0.051836, 0.373431,
		15.735974, 13.171401, 14.286645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988121, 12.745546, 14.561317>,  <15.087628, 13.207684, 14.025244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.988121, 12.745546, 14.561317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319676, 12.938682, 14.674320>,  <15.518610, 13.054563, 14.742122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319676, 12.938682, 14.674320>,  <14.988121, 12.745546, 14.561317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.319676, 12.938682, 14.674320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336556, 0.027029, 0.941275,
		0.446847, -0.875293, 0.184906,
		0.828889, 0.482838, 0.282507,
		15.568343, 13.083533, 14.759072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.202897, 12.362329, 15.147162>,  <14.988121, 12.745546, 14.561317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.202897, 12.362329, 15.147162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381442, 12.718255, 15.185091>,  <15.488569, 12.931810, 15.207849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381442, 12.718255, 15.185091>,  <15.202897, 12.362329, 15.147162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381442, 12.718255, 15.185091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255747, 0.025308, 0.966413,
		0.857527, -0.455622, 0.238864,
		0.446364, 0.889814, 0.094821,
		15.515351, 12.985199, 15.213537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.768352, 12.249863, 15.687997>,  <15.202897, 12.362329, 15.147162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.768352, 12.249863, 15.687997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736812, 12.648597, 15.683942>,  <15.717888, 12.887837, 15.681509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736812, 12.648597, 15.683942>,  <15.768352, 12.249863, 15.687997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.736812, 12.648597, 15.683942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200965, -0.005934, 0.979581,
		0.976420, 0.079277, 0.200797,
		-0.078849, 0.996835, -0.010138,
		15.713157, 12.947647, 15.680901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214689, 12.528625, 16.225639>,  <15.768352, 12.249863, 15.687997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214689, 12.528625, 16.225639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925431, 12.799332, 16.170433>,  <15.751877, 12.961756, 16.137310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925431, 12.799332, 16.170433>,  <16.214689, 12.528625, 16.225639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925431, 12.799332, 16.170433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015232, 0.184143, 0.982781,
		0.690529, 0.712795, -0.122854,
		-0.723144, 0.676768, -0.138014,
		15.708488, 13.002362, 16.129028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.467079, 13.084273, 16.690308>,  <16.214689, 12.528625, 16.225639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.467079, 13.084273, 16.690308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069925, 13.092147, 16.643324>,  <15.831634, 13.096871, 16.615133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069925, 13.092147, 16.643324>,  <16.467079, 13.084273, 16.690308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.069925, 13.092147, 16.643324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103848, 0.339793, 0.934749,
		0.058312, 0.940294, -0.335331,
		-0.992882, 0.019683, -0.117461,
		15.772060, 13.098052, 16.608086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287283, 13.694319, 16.876162>,  <16.467079, 13.084273, 16.690308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287283, 13.694319, 16.876162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936161, 13.503620, 16.894787>,  <15.725488, 13.389201, 16.905962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936161, 13.503620, 16.894787>,  <16.287283, 13.694319, 16.876162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.936161, 13.503620, 16.894787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191995, 0.439226, 0.877621,
		-0.438855, 0.761441, -0.477088,
		-0.877806, -0.476747, 0.046564,
		15.672819, 13.360596, 16.908756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.933101, 14.125756, 17.185463>,  <16.287283, 13.694319, 16.876162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.933101, 14.125756, 17.185463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689685, 13.809607, 17.213718>,  <15.543635, 13.619917, 17.230671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689685, 13.809607, 17.213718>,  <15.933101, 14.125756, 17.185463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689685, 13.809607, 17.213718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371356, 0.362325, 0.854877,
		-0.701267, 0.493994, -0.513999,
		-0.608538, -0.790374, 0.070639,
		15.507123, 13.572495, 17.234911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421645, 14.376985, 17.629755>,  <15.933101, 14.125756, 17.185463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.421645, 14.376985, 17.629755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.313200, 13.992014, 17.623653>,  <15.248133, 13.761031, 17.619993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.313200, 13.992014, 17.623653>,  <15.421645, 14.376985, 17.629755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313200, 13.992014, 17.623653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335242, 0.079557, 0.938767,
		-0.902281, 0.259625, -0.344214,
		-0.271112, -0.962427, -0.015254,
		15.231866, 13.703286, 17.619078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782798, 14.358731, 17.828884>,  <15.421645, 14.376985, 17.629755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782798, 14.358731, 17.828884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900339, 13.983883, 17.904203>,  <14.970864, 13.758974, 17.949394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900339, 13.983883, 17.904203>,  <14.782798, 14.358731, 17.828884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900339, 13.983883, 17.904203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436471, 0.043705, 0.898656,
		-0.850379, -0.346260, -0.396183,
		0.293853, -0.937120, 0.188298,
		14.988495, 13.702747, 17.960693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.180515, 13.998432, 17.964657>,  <14.782798, 14.358731, 17.828884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.180515, 13.998432, 17.964657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493793, 13.801650, 18.116755>,  <14.681759, 13.683580, 18.208014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493793, 13.801650, 18.116755>,  <14.180515, 13.998432, 17.964657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.493793, 13.801650, 18.116755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383266, 0.099586, 0.918254,
		-0.489608, -0.864905, -0.110555,
		0.783193, -0.491957, 0.380247,
		14.728750, 13.654063, 18.230829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.937428, 13.697481, 18.609388>,  <14.180515, 13.998432, 17.964657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.937428, 13.697481, 18.609388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.334755, 13.691647, 18.655180>,  <14.573152, 13.688146, 18.682655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.334755, 13.691647, 18.655180>,  <13.937428, 13.697481, 18.609388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334755, 13.691647, 18.655180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106815, 0.259336, 0.959862,
		-0.043690, -0.965677, 0.256045,
		0.993319, -0.014587, 0.114479,
		14.632751, 13.687271, 18.689524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049777, 13.351133, 19.218630>,  <13.937428, 13.697481, 18.609388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049777, 13.351133, 19.218630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412695, 13.513172, 19.173529>,  <14.630445, 13.610395, 19.146469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412695, 13.513172, 19.173529>,  <14.049777, 13.351133, 19.218630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412695, 13.513172, 19.173529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021526, 0.223043, 0.974571,
		0.419944, -0.886650, 0.193646,
		0.907295, 0.405097, -0.112752,
		14.684883, 13.634701, 19.139704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788806, 12.673591, 19.631485>,  <14.049777, 13.351133, 19.218630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.788806, 12.673591, 19.631485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396084, 12.738484, 19.670961>,  <13.160451, 12.777421, 19.694647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396084, 12.738484, 19.670961>,  <13.788806, 12.673591, 19.631485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.396084, 12.738484, 19.670961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165748, -0.478502, -0.862301,
		-0.092670, -0.862969, 0.496686,
		-0.981804, 0.162234, 0.098692,
		13.101542, 12.787155, 19.700569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.423842, 12.066887, 19.609732>,  <13.788806, 12.673591, 19.631485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.423842, 12.066887, 19.609732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164411, 12.344985, 19.485811>,  <13.008751, 12.511844, 19.411459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164411, 12.344985, 19.485811>,  <13.423842, 12.066887, 19.609732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.164411, 12.344985, 19.485811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152152, -0.517229, -0.842214,
		-0.745784, -0.499106, 0.441248,
		-0.648580, 0.695246, -0.309801,
		12.969836, 12.553558, 19.392872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795514, 11.648944, 19.286886>,  <13.423842, 12.066887, 19.609732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795514, 11.648944, 19.286886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.734110, 12.031151, 19.186150>,  <12.697268, 12.260475, 19.125708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.734110, 12.031151, 19.186150>,  <12.795514, 11.648944, 19.286886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734110, 12.031151, 19.186150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287541, -0.287026, -0.913748,
		-0.945386, -0.067856, 0.318812,
		-0.153510, 0.955516, -0.251839,
		12.688057, 12.317805, 19.110598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.097482, 11.706676, 18.921608>,  <12.795514, 11.648944, 19.286886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.097482, 11.706676, 18.921608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310292, 12.023820, 18.802729>,  <12.437979, 12.214106, 18.731401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310292, 12.023820, 18.802729>,  <12.097482, 11.706676, 18.921608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310292, 12.023820, 18.802729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090785, -0.295558, -0.951001,
		-0.841848, 0.532938, -0.085265,
		0.532025, 0.792857, -0.297197,
		12.469900, 12.261677, 18.713570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.666308, 12.168929, 18.503632>,  <12.097482, 11.706676, 18.921608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.666308, 12.168929, 18.503632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.037764, 12.250730, 18.379818>,  <12.260636, 12.299809, 18.305531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.037764, 12.250730, 18.379818>,  <11.666308, 12.168929, 18.503632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.037764, 12.250730, 18.379818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305595, -0.051390, -0.950774,
		-0.210342, 0.977516, 0.014772,
		0.928638, 0.204501, -0.309534,
		12.316355, 12.312080, 18.286959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.567413, 12.746543, 17.921152>,  <11.666308, 12.168929, 18.503632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.567413, 12.746543, 17.921152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.947956, 12.635762, 17.867159>,  <12.176282, 12.569294, 17.834763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.947956, 12.635762, 17.867159>,  <11.567413, 12.746543, 17.921152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947956, 12.635762, 17.867159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168796, -0.102017, -0.980357,
		0.257740, 0.955453, -0.143803,
		0.951356, -0.276951, -0.134982,
		12.233363, 12.552677, 17.826664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.872485, 13.199592, 17.413029>,  <11.567413, 12.746543, 17.921152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.872485, 13.199592, 17.413029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.042280, 12.837451, 17.408178>,  <12.144157, 12.620167, 17.405268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.042280, 12.837451, 17.408178>,  <11.872485, 13.199592, 17.413029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.042280, 12.837451, 17.408178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105062, -0.035952, -0.993816,
		0.899318, 0.423136, -0.110379,
		0.424487, -0.905353, -0.012124,
		12.169626, 12.565845, 17.404541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362347, 13.194229, 16.913761>,  <11.872485, 13.199592, 17.413029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.362347, 13.194229, 16.913761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.266616, 12.808331, 16.957558>,  <12.209177, 12.576792, 16.983835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.266616, 12.808331, 16.957558>,  <12.362347, 13.194229, 16.913761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.266616, 12.808331, 16.957558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042187, -0.122992, -0.991511,
		0.970022, -0.232677, 0.070135,
		-0.239328, -0.964746, 0.109489,
		12.194818, 12.518907, 16.990404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.901978, 12.809104, 16.683670>,  <12.362347, 13.194229, 16.913761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.901978, 12.809104, 16.683670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.550084, 12.629821, 16.620205>,  <12.338947, 12.522251, 16.582127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.550084, 12.629821, 16.620205>,  <12.901978, 12.809104, 16.683670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.550084, 12.629821, 16.620205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319704, -0.310631, -0.895153,
		0.351929, -0.838223, 0.416567,
		-0.879736, -0.448208, -0.158663,
		12.286163, 12.495358, 16.572605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093180, 12.432935, 16.164465>,  <12.901978, 12.809104, 16.683670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093180, 12.432935, 16.164465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.712082, 12.336221, 16.238026>,  <12.483423, 12.278193, 16.282162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.712082, 12.336221, 16.238026>,  <13.093180, 12.432935, 16.164465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.712082, 12.336221, 16.238026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062072, -0.437663, -0.896994,
		0.297367, -0.866020, 0.401973,
		-0.952743, -0.241786, 0.183902,
		12.426259, 12.263685, 16.293196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022768, 11.878069, 15.892413>,  <13.093180, 12.432935, 16.164465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022768, 11.878069, 15.892413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.628339, 11.944029, 15.901066>,  <12.391682, 11.983605, 15.906258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.628339, 11.944029, 15.901066>,  <13.022768, 11.878069, 15.892413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.628339, 11.944029, 15.901066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094353, -0.447554, -0.889265,
		-0.136958, -0.878922, 0.456880,
		-0.986073, 0.164900, 0.021633,
		12.332517, 11.993499, 15.907556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704681, 11.288208, 15.730661>,  <13.022768, 11.878069, 15.892413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704681, 11.288208, 15.730661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435792, 11.569065, 15.636757>,  <12.274458, 11.737579, 15.580414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435792, 11.569065, 15.636757>,  <12.704681, 11.288208, 15.730661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435792, 11.569065, 15.636757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084440, -0.387740, -0.917893,
		-0.735518, -0.597205, 0.319937,
		-0.672223, 0.702142, -0.234761,
		12.234125, 11.779708, 15.566329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.691035, 15.111053, 24.724165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.894585, 14.791031, 24.851259>,  <13.016714, 14.599017, 24.927517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.894585, 14.791031, 24.851259>,  <12.691035, 15.111053, 24.724165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.894585, 14.791031, 24.851259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120922, -0.299008, -0.946558,
		0.852306, 0.520099, -0.055413,
		0.508873, -0.800057, 0.317738,
		13.047247, 14.551014, 24.946581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361429, 15.049939, 24.373230>,  <12.691035, 15.111053, 24.724165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361429, 15.049939, 24.373230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.255469, 14.680322, 24.483482>,  <13.191894, 14.458551, 24.549635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.255469, 14.680322, 24.483482>,  <13.361429, 15.049939, 24.373230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.255469, 14.680322, 24.483482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217868, -0.335806, -0.916388,
		0.939341, -0.182699, 0.290274,
		-0.264899, -0.924043, 0.275632,
		13.176000, 14.403109, 24.566172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844839, 14.677677, 23.964245>,  <13.361429, 15.049939, 24.373230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.844839, 14.677677, 23.964245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.578315, 14.414311, 24.104258>,  <13.418400, 14.256292, 24.188265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.578315, 14.414311, 24.104258>,  <13.844839, 14.677677, 23.964245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.578315, 14.414311, 24.104258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149252, -0.577675, -0.802505,
		0.730584, -0.482476, 0.483181,
		-0.666311, -0.658413, 0.350030,
		13.378422, 14.216787, 24.209267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171002, 14.026749, 23.946924>,  <13.844839, 14.677677, 23.964245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.171002, 14.026749, 23.946924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.773024, 13.986629, 23.945156>,  <13.534236, 13.962557, 23.944096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.773024, 13.986629, 23.945156>,  <14.171002, 14.026749, 23.946924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773024, 13.986629, 23.945156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050317, -0.460055, -0.886463,
		0.086879, -0.882207, 0.462777,
		-0.994947, -0.100300, -0.004421,
		13.474540, 13.956538, 23.943830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036794, 13.311416, 23.675520>,  <14.171002, 14.026749, 23.946924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036794, 13.311416, 23.675520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.676646, 13.473613, 23.612387>,  <13.460558, 13.570931, 23.574507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.676646, 13.473613, 23.612387>,  <14.036794, 13.311416, 23.675520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.676646, 13.473613, 23.612387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011339, -0.384469, -0.923069,
		-0.434983, -0.829311, 0.350761,
		-0.900367, 0.405496, -0.157834,
		13.406536, 13.595261, 23.565037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548779, 12.809329, 23.471609>,  <14.036794, 13.311416, 23.675520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548779, 12.809329, 23.471609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.404387, 13.147598, 23.314367>,  <13.317753, 13.350560, 23.220022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.404387, 13.147598, 23.314367>,  <13.548779, 12.809329, 23.471609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404387, 13.147598, 23.314367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125235, -0.461668, -0.878168,
		-0.924127, -0.267768, 0.272560,
		-0.360977, 0.845673, -0.393106,
		13.296094, 13.401300, 23.196436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.864725, 12.574778, 23.109497>,  <13.548779, 12.809329, 23.471609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.864725, 12.574778, 23.109497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.935934, 12.938290, 22.958540>,  <12.978660, 13.156397, 22.867966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.935934, 12.938290, 22.958540>,  <12.864725, 12.574778, 23.109497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.935934, 12.938290, 22.958540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307216, -0.313019, -0.898687,
		-0.934840, 0.275928, 0.223468,
		0.178023, 0.908781, -0.377392,
		12.989341, 13.210924, 22.845322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.493556, 12.506344, 22.524305>,  <12.864725, 12.574778, 23.109497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.493556, 12.506344, 22.524305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.682441, 12.852549, 22.457483>,  <12.795772, 13.060271, 22.417391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.682441, 12.852549, 22.457483>,  <12.493556, 12.506344, 22.524305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.682441, 12.852549, 22.457483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058118, -0.158531, -0.985642,
		-0.879567, 0.475141, -0.024559,
		0.472212, 0.865511, -0.167053,
		12.824104, 13.112202, 22.407368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.114871, 12.836132, 22.088419>,  <12.493556, 12.506344, 22.524305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.114871, 12.836132, 22.088419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.498876, 12.943340, 22.056068>,  <12.729279, 13.007666, 22.036657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.498876, 12.943340, 22.056068>,  <12.114871, 12.836132, 22.088419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.498876, 12.943340, 22.056068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069966, -0.050024, -0.996294,
		-0.271073, 0.962114, -0.029271,
		0.960013, 0.268020, -0.080876,
		12.786880, 13.023746, 22.031805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.110158, 13.397118, 21.586309>,  <12.114871, 12.836132, 22.088419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.110158, 13.397118, 21.586309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.488365, 13.267686, 21.600679>,  <12.715290, 13.190026, 21.609301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.488365, 13.267686, 21.600679>,  <12.110158, 13.397118, 21.586309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.488365, 13.267686, 21.600679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008025, -0.133478, -0.991019,
		0.325470, 0.936739, -0.128803,
		0.945518, -0.323580, 0.035925,
		12.772020, 13.170611, 21.611458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433765, 13.874731, 21.112846>,  <12.110158, 13.397118, 21.586309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.433765, 13.874731, 21.112846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.669253, 13.554734, 21.159185>,  <12.810546, 13.362736, 21.186989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.669253, 13.554734, 21.159185>,  <12.433765, 13.874731, 21.112846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.669253, 13.554734, 21.159185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166583, -0.020170, -0.985821,
		0.790986, 0.599670, 0.121391,
		0.588719, -0.799993, 0.115849,
		12.845869, 13.314736, 21.193941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.916934, 13.941915, 20.546619>,  <12.433765, 13.874731, 21.112846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.916934, 13.941915, 20.546619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.936209, 13.558846, 20.660139>,  <12.947774, 13.329004, 20.728251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.936209, 13.558846, 20.660139>,  <12.916934, 13.941915, 20.546619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.936209, 13.558846, 20.660139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010806, -0.283612, -0.958878,
		0.998780, 0.049273, -0.003318,
		0.048187, -0.957673, 0.283799,
		12.950665, 13.271544, 20.745279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.480119, 13.746562, 20.150743>,  <12.916934, 13.941915, 20.546619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.480119, 13.746562, 20.150743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.249908, 13.439736, 20.264153>,  <13.111782, 13.255641, 20.332197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.249908, 13.439736, 20.264153>,  <13.480119, 13.746562, 20.150743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.249908, 13.439736, 20.264153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054089, -0.310231, -0.949121,
		0.815994, -0.561578, 0.137056,
		-0.575525, -0.767064, 0.283522,
		13.077250, 13.209618, 20.349209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.858495, 13.324959, 19.941242>,  <13.480119, 13.746562, 20.150743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.858495, 13.324959, 19.941242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.476098, 13.211067, 19.969557>,  <13.246660, 13.142732, 19.986546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.476098, 13.211067, 19.969557>,  <13.858495, 13.324959, 19.941242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.476098, 13.211067, 19.969557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032501, -0.342550, -0.938937,
		0.291591, -0.895315, 0.336729,
		-0.955991, -0.284730, 0.070786,
		13.189301, 13.125648, 19.990793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.491546, 13.019028, 19.751263>,  <13.858495, 13.324959, 19.941242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.491546, 13.019028, 19.751263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.662560, 13.366132, 19.649904>,  <14.765167, 13.574394, 19.589090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.662560, 13.366132, 19.649904>,  <14.491546, 13.019028, 19.751263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662560, 13.366132, 19.649904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049059, 0.302162, 0.951993,
		0.902668, -0.394578, 0.171755,
		0.427533, 0.867760, -0.253395,
		14.790819, 13.626459, 19.573885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.002563, 13.237710, 20.215090>,  <14.491546, 13.019028, 19.751263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.002563, 13.237710, 20.215090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.947912, 13.596098, 20.046059>,  <14.915122, 13.811131, 19.944641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.947912, 13.596098, 20.046059>,  <15.002563, 13.237710, 20.215090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.947912, 13.596098, 20.046059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027607, 0.429854, 0.902476,
		0.990238, 0.111635, -0.083464,
		-0.136625, 0.895970, -0.422576,
		14.906924, 13.864889, 19.919287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508698, 13.656437, 20.587303>,  <15.002563, 13.237710, 20.215090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508698, 13.656437, 20.587303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.262246, 13.914577, 20.406677>,  <15.114375, 14.069460, 20.298302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.262246, 13.914577, 20.406677>,  <15.508698, 13.656437, 20.587303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262246, 13.914577, 20.406677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034710, 0.595001, 0.802975,
		0.786881, 0.479062, -0.388997,
		-0.616128, 0.645348, -0.451566,
		15.077408, 14.108181, 20.271208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.790731, 14.366910, 20.669573>,  <15.508698, 13.656437, 20.587303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.790731, 14.366910, 20.669573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.393602, 14.369449, 20.621801>,  <15.155325, 14.370972, 20.593138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.393602, 14.369449, 20.621801>,  <15.790731, 14.366910, 20.669573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393602, 14.369449, 20.621801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091626, 0.601424, 0.793658,
		0.076866, 0.798905, -0.596525,
		-0.992822, 0.006348, -0.119430,
		15.095756, 14.371353, 20.585972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.667524, 15.072268, 20.741472>,  <15.790731, 14.366910, 20.669573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.667524, 15.072268, 20.741472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.313695, 14.892446, 20.791153>,  <15.101397, 14.784552, 20.820961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.313695, 14.892446, 20.791153>,  <15.667524, 15.072268, 20.741472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313695, 14.892446, 20.791153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131299, 0.495558, 0.858594,
		-0.447536, 0.743183, -0.497384,
		-0.884575, -0.449557, 0.124201,
		15.048323, 14.757578, 20.828413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269520, 15.552184, 20.889452>,  <15.667524, 15.072268, 20.741472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269520, 15.552184, 20.889452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.043766, 15.254452, 21.032249>,  <14.908314, 15.075812, 21.117928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.043766, 15.254452, 21.032249>,  <15.269520, 15.552184, 20.889452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043766, 15.254452, 21.032249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215780, 0.550431, 0.806514,
		-0.796812, 0.378151, -0.471266,
		-0.564384, -0.744330, 0.356993,
		14.874451, 15.031153, 21.139347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649217, 15.825188, 21.072231>,  <15.269520, 15.552184, 20.889452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.649217, 15.825188, 21.072231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.666010, 15.508145, 21.315546>,  <14.676085, 15.317920, 21.461535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.666010, 15.508145, 21.315546>,  <14.649217, 15.825188, 21.072231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666010, 15.508145, 21.315546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321164, 0.565806, 0.759418,
		-0.946092, -0.227243, -0.230802,
		0.041983, -0.792605, 0.608287,
		14.678605, 15.270364, 21.498032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080813, 15.929690, 21.535070>,  <14.649217, 15.825188, 21.072231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080813, 15.929690, 21.535070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.292189, 15.649945, 21.727589>,  <14.419014, 15.482099, 21.843100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.292189, 15.649945, 21.727589>,  <14.080813, 15.929690, 21.535070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.292189, 15.649945, 21.727589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114413, 0.503077, 0.856635,
		-0.841227, -0.507746, 0.185829,
		0.528439, -0.699363, 0.481294,
		14.450720, 15.440136, 21.871977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733292, 15.727489, 22.159740>,  <14.080813, 15.929690, 21.535070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733292, 15.727489, 22.159740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.103063, 15.603213, 22.248198>,  <14.324925, 15.528647, 22.301271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.103063, 15.603213, 22.248198>,  <13.733292, 15.727489, 22.159740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.103063, 15.603213, 22.248198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101781, 0.357850, 0.928215,
		-0.367523, -0.880577, 0.299185,
		0.924428, -0.310689, 0.221144,
		14.380391, 15.510007, 22.314541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.630388, 15.470716, 22.773235>,  <13.733292, 15.727489, 22.159740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.630388, 15.470716, 22.773235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.025061, 15.531791, 22.750803>,  <14.261865, 15.568436, 22.737343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.025061, 15.531791, 22.750803>,  <13.630388, 15.470716, 22.773235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.025061, 15.531791, 22.750803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023193, 0.209199, 0.977598,
		0.160998, -0.965879, 0.202872,
		0.986682, 0.152686, -0.056082,
		14.321065, 15.577598, 22.733978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974963, 15.078798, 23.359451>,  <13.630388, 15.470716, 22.773235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974963, 15.078798, 23.359451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.230653, 15.366680, 23.251070>,  <14.384067, 15.539410, 23.186041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.230653, 15.366680, 23.251070>,  <13.974963, 15.078798, 23.359451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230653, 15.366680, 23.251070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157743, 0.222134, 0.962171,
		0.752668, -0.657784, 0.028465,
		0.639224, 0.719706, -0.270954,
		14.422421, 15.582592, 23.169785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.491866, 15.143642, 23.887770>,  <13.974963, 15.078798, 23.359451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.491866, 15.143642, 23.887770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.534363, 15.485950, 23.685236>,  <14.559861, 15.691334, 23.563715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.534363, 15.485950, 23.685236>,  <14.491866, 15.143642, 23.887770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534363, 15.485950, 23.685236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210892, 0.478239, 0.852532,
		0.971719, -0.197357, -0.129666,
		0.106242, 0.855767, -0.506335,
		14.566236, 15.742680, 23.533335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173786, 15.383265, 24.056658>,  <14.491866, 15.143642, 23.887770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173786, 15.383265, 24.056658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.956425, 15.691830, 23.924215>,  <14.826008, 15.876969, 23.844749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.956425, 15.691830, 23.924215>,  <15.173786, 15.383265, 24.056658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.956425, 15.691830, 23.924215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256992, 0.528357, 0.809193,
		0.799166, 0.354627, -0.485359,
		-0.543405, 0.771413, -0.331108,
		14.793404, 15.923254, 23.824883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.587111, 15.927512, 24.085974>,  <15.173786, 15.383265, 24.056658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.587111, 15.927512, 24.085974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.212152, 16.066677, 24.092165>,  <14.987176, 16.150175, 24.095881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.212152, 16.066677, 24.092165>,  <15.587111, 15.927512, 24.085974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.212152, 16.066677, 24.092165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244620, 0.626152, 0.740334,
		0.247879, 0.697776, -0.672061,
		-0.937399, 0.347912, 0.015480,
		14.930932, 16.171051, 24.096809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.145651, 18.612419, 22.990582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.439707, 18.349640, 23.057505>,  <11.616140, 18.191973, 23.097658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.439707, 18.349640, 23.057505>,  <11.145651, 18.612419, 22.990582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.439707, 18.349640, 23.057505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088863, -0.151281, -0.984488,
		0.672066, 0.738604, -0.052835,
		0.735140, -0.656946, 0.167305,
		11.660249, 18.152555, 23.107697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.616808, 18.707117, 22.540422>,  <11.145651, 18.612419, 22.990582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.616808, 18.707117, 22.540422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.720210, 18.333124, 22.637571>,  <11.782251, 18.108728, 22.695860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.720210, 18.333124, 22.637571>,  <11.616808, 18.707117, 22.540422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.720210, 18.333124, 22.637571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155042, -0.208001, -0.965763,
		0.953487, 0.287311, 0.091191,
		0.258507, -0.934980, 0.242871,
		11.797762, 18.052629, 22.710432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.222045, 18.528696, 22.076433>,  <11.616808, 18.707117, 22.540422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.222045, 18.528696, 22.076433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.102169, 18.173592, 22.216185>,  <12.030243, 17.960529, 22.300035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.102169, 18.173592, 22.216185>,  <12.222045, 18.528696, 22.076433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.102169, 18.173592, 22.216185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000334, -0.366111, -0.930571,
		0.954036, -0.279000, 0.109423,
		-0.299691, -0.887762, 0.349377,
		12.012262, 17.907263, 22.320997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760176, 18.088335, 21.898600>,  <12.222045, 18.528696, 22.076433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.760176, 18.088335, 21.898600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.438856, 17.862656, 21.974905>,  <12.246064, 17.727247, 22.020687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.438856, 17.862656, 21.974905>,  <12.760176, 18.088335, 21.898600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.438856, 17.862656, 21.974905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170187, -0.524393, -0.834295,
		0.570744, -0.637722, 0.517264,
		-0.803298, -0.564201, 0.190762,
		12.197866, 17.693396, 22.032133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.973296, 17.372578, 21.705637>,  <12.760176, 18.088335, 21.898600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.973296, 17.372578, 21.705637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.573873, 17.355185, 21.718206>,  <12.334218, 17.344749, 21.725748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.573873, 17.355185, 21.718206>,  <12.973296, 17.372578, 21.705637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.573873, 17.355185, 21.718206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000951, -0.571329, -0.820721,
		0.053640, -0.819569, 0.570464,
		-0.998560, -0.043481, 0.031425,
		12.274304, 17.342140, 21.727634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.766696, 16.640804, 21.548023>,  <12.973296, 17.372578, 21.705637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.766696, 16.640804, 21.548023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.434776, 16.843813, 21.455198>,  <12.235624, 16.965618, 21.399504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.434776, 16.843813, 21.455198>,  <12.766696, 16.640804, 21.548023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.434776, 16.843813, 21.455198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161338, -0.616252, -0.770846,
		-0.534229, -0.602209, 0.593248,
		-0.829801, 0.507522, -0.232061,
		12.185837, 16.996071, 21.385580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.246496, 16.199492, 21.176634>,  <12.766696, 16.640804, 21.548023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.246496, 16.199492, 21.176634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.104376, 16.566523, 21.105293>,  <12.019103, 16.786741, 21.062489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.104376, 16.566523, 21.105293>,  <12.246496, 16.199492, 21.176634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.104376, 16.566523, 21.105293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264546, -0.281708, -0.922310,
		-0.896536, -0.280516, 0.342834,
		-0.355301, 0.917579, -0.178352,
		11.997786, 16.841797, 21.051788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.753931, 16.077358, 20.651432>,  <12.246496, 16.199492, 21.176634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.753931, 16.077358, 20.651432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.830901, 16.468979, 20.624819>,  <11.877084, 16.703951, 20.608850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.830901, 16.468979, 20.624819>,  <11.753931, 16.077358, 20.651432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.830901, 16.468979, 20.624819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115951, -0.044639, -0.992252,
		-0.974437, 0.198650, 0.104932,
		0.192426, 0.979054, -0.066531,
		11.888629, 16.762695, 20.604860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.144080, 16.296572, 20.301062>,  <11.753931, 16.077358, 20.651432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.144080, 16.296572, 20.301062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.452212, 16.548237, 20.259600>,  <11.637092, 16.699236, 20.234722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.452212, 16.548237, 20.259600>,  <11.144080, 16.296572, 20.301062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.452212, 16.548237, 20.259600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121247, -0.015064, -0.992508,
		-0.626010, 0.777128, 0.064680,
		0.770332, 0.629162, -0.103654,
		11.683311, 16.736986, 20.228504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873992, 16.970776, 20.125519>,  <11.144080, 16.296572, 20.301062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873992, 16.970776, 20.125519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.246411, 16.903748, 19.995861>,  <11.469863, 16.863531, 19.918066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.246411, 16.903748, 19.995861>,  <10.873992, 16.970776, 20.125519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.246411, 16.903748, 19.995861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302201, 0.143764, -0.942341,
		0.204509, 0.975321, 0.083211,
		0.931048, -0.167571, -0.324144,
		11.525725, 16.853476, 19.898619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.805980, 17.271761, 19.529636>,  <10.873992, 16.970776, 20.125519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.805980, 17.271761, 19.529636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.132583, 17.041006, 19.520515>,  <11.328545, 16.902554, 19.515043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.132583, 17.041006, 19.520515>,  <10.805980, 17.271761, 19.529636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.132583, 17.041006, 19.520515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066960, -0.055399, -0.996217,
		0.573440, 0.814944, -0.083862,
		0.816507, -0.576886, -0.022801,
		11.377535, 16.867941, 19.513676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198354, 17.674335, 19.158661>,  <10.805980, 17.271761, 19.529636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198354, 17.674335, 19.158661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.299871, 17.288399, 19.131323>,  <11.360783, 17.056837, 19.114920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.299871, 17.288399, 19.131323>,  <11.198354, 17.674335, 19.158661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.299871, 17.288399, 19.131323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011566, 0.067627, -0.997644,
		0.967189, 0.253987, 0.006004,
		0.253795, -0.964840, -0.068346,
		11.376010, 16.998947, 19.110819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.486182, 17.535040, 18.391029>,  <11.198354, 17.674335, 19.158661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.486182, 17.535040, 18.391029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.483468, 17.151058, 18.503059>,  <11.481840, 16.920670, 18.570278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.483468, 17.151058, 18.503059>,  <11.486182, 17.535040, 18.391029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.483468, 17.151058, 18.503059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125472, -0.278686, -0.952151,
		0.992074, 0.028682, 0.122338,
		-0.006784, -0.959954, 0.280076,
		11.481433, 16.863071, 18.587082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.983332, 17.226593, 17.989449>,  <11.486182, 17.535040, 18.391029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.983332, 17.226593, 17.989449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.713465, 16.943302, 18.072622>,  <11.551544, 16.773327, 18.122526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.713465, 16.943302, 18.072622>,  <11.983332, 17.226593, 17.989449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713465, 16.943302, 18.072622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163685, -0.131138, -0.977758,
		0.719744, -0.693697, -0.027452,
		-0.674668, -0.708228, 0.207933,
		11.511065, 16.730833, 18.135002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.430639, 17.797306, 18.308350>,  <11.983332, 17.226593, 17.989449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.430639, 17.797306, 18.308350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.616559, 18.088095, 18.106171>,  <12.728110, 18.262568, 17.984863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.616559, 18.088095, 18.106171>,  <12.430639, 17.797306, 18.308350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616559, 18.088095, 18.106171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057708, 0.544773, 0.836596,
		0.883534, -0.418016, 0.211258,
		0.464798, 0.726970, -0.505448,
		12.755999, 18.306185, 17.954536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.084879, 17.899181, 18.672989>,  <12.430639, 17.797306, 18.308350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.084879, 17.899181, 18.672989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.997525, 18.226891, 18.460913>,  <12.945113, 18.423515, 18.333668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.997525, 18.226891, 18.460913>,  <13.084879, 17.899181, 18.672989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.997525, 18.226891, 18.460913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081199, 0.556676, 0.826752,
		0.972479, 0.137499, -0.188093,
		-0.218385, 0.819272, -0.530190,
		12.932010, 18.472672, 18.301855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.713814, 18.351423, 18.642719>,  <13.084879, 17.899181, 18.672989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.713814, 18.351423, 18.642719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.402874, 18.596300, 18.584827>,  <13.216311, 18.743227, 18.550093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.402874, 18.596300, 18.584827>,  <13.713814, 18.351423, 18.642719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.402874, 18.596300, 18.584827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301286, 0.564280, 0.768645,
		0.552227, 0.553901, -0.623088,
		-0.777349, 0.612194, -0.144728,
		13.169669, 18.779959, 18.541409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.964685, 19.078913, 18.667160>,  <13.713814, 18.351423, 18.642719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.964685, 19.078913, 18.667160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.572632, 19.076262, 18.746450>,  <13.337399, 19.074671, 18.794024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.572632, 19.076262, 18.746450>,  <13.964685, 19.078913, 18.667160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.572632, 19.076262, 18.746450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170345, 0.483776, 0.858454,
		-0.101587, 0.875166, -0.473037,
		-0.980134, -0.006628, 0.198225,
		13.278591, 19.074272, 18.805918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.906147, 19.760693, 19.045757>,  <13.964685, 19.078913, 18.667160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.906147, 19.760693, 19.045757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.542798, 19.603373, 19.102571>,  <13.324789, 19.508980, 19.136660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.542798, 19.603373, 19.102571>,  <13.906147, 19.760693, 19.045757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.542798, 19.603373, 19.102571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027094, 0.394311, 0.918577,
		-0.417284, 0.830562, -0.368837,
		-0.908372, -0.393301, 0.142037,
		13.270287, 19.485382, 19.145182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.444497, 20.285639, 19.306189>,  <13.906147, 19.760693, 19.045757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.444497, 20.285639, 19.306189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.275030, 19.941702, 19.420153>,  <13.173350, 19.735340, 19.488531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.275030, 19.941702, 19.420153>,  <13.444497, 20.285639, 19.306189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.275030, 19.941702, 19.420153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093268, 0.354272, 0.930480,
		-0.901003, 0.367641, -0.230289,
		-0.423668, -0.859844, 0.284912,
		13.147930, 19.683748, 19.505627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.858936, 20.440094, 19.697245>,  <13.444497, 20.285639, 19.306189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.858936, 20.440094, 19.697245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.964258, 20.073700, 19.818336>,  <13.027452, 19.853865, 19.890991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.964258, 20.073700, 19.818336>,  <12.858936, 20.440094, 19.697245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964258, 20.073700, 19.818336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155474, 0.269410, 0.950392,
		-0.952102, -0.297310, -0.071475,
		0.263305, -0.915983, 0.302729,
		13.043250, 19.798904, 19.909155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.363298, 20.273806, 20.254486>,  <12.858936, 20.440094, 19.697245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.363298, 20.273806, 20.254486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.651814, 20.000858, 20.302004>,  <12.824924, 19.837090, 20.330515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.651814, 20.000858, 20.302004>,  <12.363298, 20.273806, 20.254486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.651814, 20.000858, 20.302004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061023, 0.108240, 0.992250,
		-0.689941, -0.722949, 0.036432,
		0.721289, -0.682370, 0.118795,
		12.868201, 19.796146, 20.337643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.092364, 19.630171, 20.669350>,  <12.363298, 20.273806, 20.254486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.092364, 19.630171, 20.669350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.484114, 19.697624, 20.713873>,  <12.719163, 19.738096, 20.740587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.484114, 19.697624, 20.713873>,  <12.092364, 19.630171, 20.669350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.484114, 19.697624, 20.713873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144700, 0.200862, 0.968874,
		0.141022, -0.964997, 0.221120,
		0.979374, 0.168629, 0.111309,
		12.777925, 19.748215, 20.747265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170676, 19.633957, 21.346603>,  <12.092364, 19.630171, 20.669350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170676, 19.633957, 21.346603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.550752, 19.724909, 21.261335>,  <12.778797, 19.779480, 21.210175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.550752, 19.724909, 21.261335>,  <12.170676, 19.633957, 21.346603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.550752, 19.724909, 21.261335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200225, 0.078833, 0.976573,
		0.238859, -0.970610, 0.029379,
		0.950187, 0.227380, -0.213170,
		12.835808, 19.793123, 21.197384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649151, 19.210587, 21.699625>,  <12.170676, 19.633957, 21.346603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649151, 19.210587, 21.699625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.854180, 19.542442, 21.611111>,  <12.977198, 19.741556, 21.558002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.854180, 19.542442, 21.611111>,  <12.649151, 19.210587, 21.699625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.854180, 19.542442, 21.611111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310361, 0.061276, 0.948642,
		0.800590, -0.554927, -0.226079,
		0.512574, 0.829639, -0.221284,
		13.007953, 19.791334, 21.544725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268340, 19.064402, 22.042284>,  <12.649151, 19.210587, 21.699625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268340, 19.064402, 22.042284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.197132, 19.457726, 22.027275>,  <13.154408, 19.693720, 22.018270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.197132, 19.457726, 22.027275>,  <13.268340, 19.064402, 22.042284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.197132, 19.457726, 22.027275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171409, 0.068533, 0.982813,
		0.968983, 0.168529, -0.180749,
		-0.178020, 0.983311, -0.037520,
		13.143726, 19.752720, 22.016020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869625, 19.407490, 22.408894>,  <13.268340, 19.064402, 22.042284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869625, 19.407490, 22.408894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.613285, 19.714043, 22.391142>,  <13.459481, 19.897974, 22.380491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.613285, 19.714043, 22.391142>,  <13.869625, 19.407490, 22.408894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613285, 19.714043, 22.391142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169909, 0.197982, 0.965367,
		0.748628, 0.611114, -0.257092,
		-0.640849, 0.766383, -0.044381,
		13.421030, 19.943958, 22.377827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.244524, 20.021667, 22.602251>,  <13.869625, 19.407490, 22.408894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.244524, 20.021667, 22.602251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.852938, 20.083818, 22.655142>,  <13.617986, 20.121109, 22.686876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.852938, 20.083818, 22.655142>,  <14.244524, 20.021667, 22.602251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.852938, 20.083818, 22.655142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173909, 0.296613, 0.939029,
		0.106683, 0.942273, -0.317396,
		-0.978966, 0.155376, 0.132226,
		13.559248, 20.130432, 22.694809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803543, 20.527960, 22.639402>,  <14.244524, 20.021667, 22.602251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803543, 20.527960, 22.639402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.168892, 20.365129, 22.641907>,  <15.388102, 20.267431, 22.643410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.168892, 20.365129, 22.641907>,  <14.803543, 20.527960, 22.639402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168892, 20.365129, 22.641907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021026, 0.031814, -0.999273,
		0.406581, 0.912840, 0.037617,
		0.913373, -0.407076, 0.006259,
		15.442904, 20.243006, 22.643784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153215, 20.940742, 22.115417>,  <14.803543, 20.527960, 22.639402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.153215, 20.940742, 22.115417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.369051, 20.607920, 22.166843>,  <15.498552, 20.408226, 22.197699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.369051, 20.607920, 22.166843>,  <15.153215, 20.940742, 22.115417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369051, 20.607920, 22.166843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062043, -0.112990, -0.991657,
		0.839640, 0.543064, -0.009344,
		0.539589, -0.832055, 0.128564,
		15.530928, 20.358303, 22.205412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932341, 21.066076, 21.755953>,  <15.153215, 20.940742, 22.115417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.932341, 21.066076, 21.755953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.875861, 20.671938, 21.794220>,  <15.841973, 20.435455, 21.817181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.875861, 20.671938, 21.794220>,  <15.932341, 21.066076, 21.755953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875861, 20.671938, 21.794220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251159, -0.129127, -0.959294,
		0.957592, -0.111424, 0.265711,
		-0.141199, -0.985348, 0.095666,
		15.833502, 20.376333, 21.822920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492144, 20.730453, 21.413601>,  <15.932341, 21.066076, 21.755953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492144, 20.730453, 21.413601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.220484, 20.436855, 21.412718>,  <16.057487, 20.260696, 21.412188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.220484, 20.436855, 21.412718>,  <16.492144, 20.730453, 21.413601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220484, 20.436855, 21.412718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258890, -0.236729, -0.936448,
		0.686829, -0.636558, 0.350799,
		-0.679148, -0.733998, -0.002206,
		16.016739, 20.216656, 21.412056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881741, 20.138107, 21.225580>,  <16.492144, 20.730453, 21.413601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881741, 20.138107, 21.225580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.495073, 20.084297, 21.138447>,  <16.263073, 20.052011, 21.086166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.495073, 20.084297, 21.138447>,  <16.881741, 20.138107, 21.225580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495073, 20.084297, 21.138447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252851, -0.368087, -0.894751,
		0.040186, -0.920008, 0.389833,
		-0.966670, -0.134526, -0.217833,
		16.205072, 20.043940, 21.073097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.896490, 19.630331, 20.724550>,  <16.881741, 20.138107, 21.225580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.896490, 19.630331, 20.724550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.505968, 19.703806, 20.678789>,  <16.271654, 19.747890, 20.651333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.505968, 19.703806, 20.678789>,  <16.896490, 19.630331, 20.724550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505968, 19.703806, 20.678789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019096, -0.599731, -0.799974,
		-0.215554, -0.778834, 0.589028,
		-0.976305, 0.183685, -0.114401,
		16.213076, 19.758911, 20.644468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647507, 19.021017, 20.732294>,  <16.896490, 19.630331, 20.724550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647507, 19.021017, 20.732294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.408556, 19.275091, 20.536465>,  <16.265184, 19.427536, 20.418968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.408556, 19.275091, 20.536465>,  <16.647507, 19.021017, 20.732294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.408556, 19.275091, 20.536465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056066, -0.575896, -0.815598,
		-0.799997, -0.514669, 0.308416,
		-0.597379, 0.635184, -0.489571,
		16.229343, 19.465647, 20.389593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216410, 18.585777, 20.384216>,  <16.647507, 19.021017, 20.732294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216410, 18.585777, 20.384216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.194712, 18.941013, 20.201633>,  <16.181694, 19.154156, 20.092085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.194712, 18.941013, 20.201633>,  <16.216410, 18.585777, 20.384216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194712, 18.941013, 20.201633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011956, -0.456518, -0.889633,
		-0.998456, -0.053714, 0.014145,
		-0.054243, 0.888091, -0.456456,
		16.178438, 19.207441, 20.064697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636190, 18.585880, 19.855257>,  <16.216410, 18.585777, 20.384216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636190, 18.585880, 19.855257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.870171, 18.879635, 19.717558>,  <16.010559, 19.055887, 19.634937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.870171, 18.879635, 19.717558>,  <15.636190, 18.585880, 19.855257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870171, 18.879635, 19.717558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114502, -0.494961, -0.861338,
		-0.802945, 0.464424, -0.373617,
		0.584951, 0.734387, -0.344249,
		16.045656, 19.099951, 19.614283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.394773, 18.698345, 19.224390>,  <15.636190, 18.585880, 19.855257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.394773, 18.698345, 19.224390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.767378, 18.843491, 19.214460>,  <15.990941, 18.930578, 19.208502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.767378, 18.843491, 19.214460>,  <15.394773, 18.698345, 19.224390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767378, 18.843491, 19.214460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176558, -0.510810, -0.841368,
		-0.317983, 0.779361, -0.539892,
		0.931512, 0.362863, -0.024826,
		16.046831, 18.952349, 19.207012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561459, 18.993097, 18.561228>,  <15.394773, 18.698345, 19.224390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561459, 18.993097, 18.561228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.927575, 18.898388, 18.691568>,  <16.147245, 18.841562, 18.769773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.927575, 18.898388, 18.691568>,  <15.561459, 18.993097, 18.561228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927575, 18.898388, 18.691568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134344, -0.583210, -0.801135,
		0.379729, 0.777049, -0.501997,
		0.915291, -0.236774, 0.325853,
		16.202162, 18.827356, 18.789324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967825, 19.179022, 18.044264>,  <15.561459, 18.993097, 18.561228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967825, 19.179022, 18.044264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.224428, 18.934675, 18.229870>,  <16.378389, 18.788067, 18.341232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.224428, 18.934675, 18.229870>,  <15.967825, 19.179022, 18.044264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224428, 18.934675, 18.229870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300049, -0.356879, -0.884651,
		0.706001, 0.706738, -0.045651,
		0.641508, -0.610868, 0.464013,
		16.416882, 18.751415, 18.369074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534300, 19.134569, 17.658363>,  <15.967825, 19.179022, 18.044264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.534300, 19.134569, 17.658363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.580914, 18.798313, 17.869925>,  <16.608883, 18.596560, 17.996862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.580914, 18.798313, 17.869925>,  <16.534300, 19.134569, 17.658363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.580914, 18.798313, 17.869925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220736, -0.497292, -0.839033,
		0.968347, 0.214525, 0.127608,
		0.116535, -0.840642, 0.528905,
		16.615873, 18.546120, 18.028595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087517, 18.778410, 17.333664>,  <16.534300, 19.134569, 17.658363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087517, 18.778410, 17.333664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.889217, 18.491892, 17.530094>,  <16.770237, 18.319981, 17.647953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.889217, 18.491892, 17.530094>,  <17.087517, 18.778410, 17.333664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889217, 18.491892, 17.530094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323245, -0.677012, -0.661186,
		0.806068, -0.169045, 0.567166,
		-0.495748, -0.716295, 0.491075,
		16.740492, 18.277004, 17.677416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<2.601295, 22.239405, 5.293408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.982069, 22.216145, 5.413697>,  <3.210535, 22.202188, 5.485870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.982069, 22.216145, 5.413697>,  <2.601295, 22.239405, 5.293408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.982069, 22.216145, 5.413697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259802, 0.366727, 0.893317,
		-0.162228, -0.928509, 0.333994,
		0.951938, -0.058149, 0.300722,
		3.267651, 22.198700, 5.503914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.670792, 21.957901, 5.929654>,  <2.601295, 22.239405, 5.293408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.670792, 21.957901, 5.929654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.983936, 22.198803, 5.867146>,  <3.171823, 22.343344, 5.829641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.983936, 22.198803, 5.867146>,  <2.670792, 21.957901, 5.929654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.983936, 22.198803, 5.867146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174046, 0.453099, 0.874305,
		0.597360, -0.657260, 0.459533,
		0.782860, 0.602255, -0.156270,
		3.218794, 22.379478, 5.820264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.116926, 21.909529, 6.454283>,  <2.670792, 21.957901, 5.929654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.116926, 21.909529, 6.454283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.093010, 22.275827, 6.295372>,  <3.078660, 22.495607, 6.200025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.093010, 22.275827, 6.295372>,  <3.116926, 21.909529, 6.454283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.093010, 22.275827, 6.295372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102121, 0.390292, 0.915010,
		0.992973, 0.095280, 0.070181,
		-0.059791, 0.915748, -0.397280,
		3.075072, 22.550552, 6.176188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.544621, 22.208305, 6.841624>,  <3.116926, 21.909529, 6.454283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.544621, 22.208305, 6.841624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.308852, 22.504200, 6.711779>,  <3.167390, 22.681736, 6.633872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.308852, 22.504200, 6.711779>,  <3.544621, 22.208305, 6.841624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.308852, 22.504200, 6.711779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137549, 0.304065, 0.942669,
		0.796028, 0.600281, -0.077473,
		-0.589423, 0.739735, -0.324612,
		3.132025, 22.726120, 6.614396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.145601, 22.031263, 6.764052>,  <3.544621, 22.208305, 6.841624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.145601, 22.031263, 6.764052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.048101, 21.940928, 7.141323>,  <3.989601, 21.886726, 7.367685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.048101, 21.940928, 7.141323>,  <4.145601, 22.031263, 6.764052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.048101, 21.940928, 7.141323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257441, -0.922554, -0.287434,
		0.935046, -0.312874, 0.166731,
		-0.243749, -0.225840, 0.943177,
		3.974976, 21.873175, 7.424275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.092962, 22.292210, 6.079695>,  <4.145601, 22.031263, 6.764052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.092962, 22.292210, 6.079695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.796599, 22.052305, 5.958804>,  <3.618781, 21.908363, 5.886269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.796599, 22.052305, 5.958804>,  <4.092962, 22.292210, 6.079695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.796599, 22.052305, 5.958804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671605, -0.660715, -0.335266,
		0.001392, -0.451380, 0.892331,
		-0.740908, -0.599760, -0.302229,
		3.574327, 21.872377, 5.868135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.869948, 22.035343, 6.026012>,  <4.092962, 22.292210, 6.079695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.869948, 22.035343, 6.026012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.039483, 21.719528, 5.848477>,  <5.141203, 21.530039, 5.741956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.039483, 21.719528, 5.848477>,  <4.869948, 22.035343, 6.026012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.039483, 21.719528, 5.848477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555543, 0.613638, -0.561088,
		0.715357, -0.008762, 0.698705,
		0.423836, -0.789539, -0.443838,
		5.166633, 21.482666, 5.715326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.593610, 22.036787, 6.183024>,  <4.869948, 22.035343, 6.026012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.593610, 22.036787, 6.183024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.460477, 21.878603, 5.840601>,  <5.380598, 21.783693, 5.635148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.460477, 21.878603, 5.840601>,  <5.593610, 22.036787, 6.183024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.460477, 21.878603, 5.840601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677453, 0.531217, -0.508789,
		0.655957, -0.749280, 0.091099,
		-0.332832, -0.395459, -0.856058,
		5.360628, 21.759966, 5.583784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.122211, 21.606182, 5.847944>,  <5.593610, 22.036787, 6.183024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.122211, 21.606182, 5.847944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.878183, 21.794983, 5.593376>,  <5.731767, 21.908262, 5.440635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.878183, 21.794983, 5.593376>,  <6.122211, 21.606182, 5.847944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.878183, 21.794983, 5.593376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773876, 0.527369, -0.350710,
		0.170094, -0.706468, -0.687001,
		-0.610069, 0.472000, -0.636421,
		5.695163, 21.936583, 5.402449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.091419, 21.797007, 6.646593>,  <6.122211, 21.606182, 5.847944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.091419, 21.797007, 6.646593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.011117, 21.817081, 7.037935>,  <5.962936, 21.829126, 7.272740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.011117, 21.817081, 7.037935>,  <6.091419, 21.797007, 6.646593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.011117, 21.817081, 7.037935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187163, -0.978326, 0.088591,
		0.961597, 0.200897, 0.187009,
		-0.200754, 0.050188, 0.978355,
		5.950891, 21.832138, 7.331442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.570634, 21.368031, 7.063814>,  <6.091419, 21.797007, 6.646593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.570634, 21.368031, 7.063814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.228163, 21.407686, 7.266646>,  <6.022680, 21.431480, 7.388346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.228163, 21.407686, 7.266646>,  <6.570634, 21.368031, 7.063814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.228163, 21.407686, 7.266646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064936, -0.952989, 0.295964,
		0.512584, 0.286326, 0.809490,
		-0.856178, 0.099141, 0.507080,
		5.971310, 21.437429, 7.418770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.702833, 21.178226, 7.802482>,  <6.570634, 21.368031, 7.063814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.702833, 21.178226, 7.802482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.307653, 21.134958, 7.758197>,  <6.070546, 21.108997, 7.731627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.307653, 21.134958, 7.758197>,  <6.702833, 21.178226, 7.802482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.307653, 21.134958, 7.758197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047017, -0.891194, 0.451179,
		-0.147470, 0.440536, 0.885540,
		-0.987948, -0.108171, -0.110712,
		6.011269, 21.102507, 7.724984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.522813, 20.756910, 8.328581>,  <6.702833, 21.178226, 7.802482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.522813, 20.756910, 8.328581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.186148, 20.706444, 8.118558>,  <5.984149, 20.676165, 7.992544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.186148, 20.706444, 8.118558>,  <6.522813, 20.756910, 8.328581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.186148, 20.706444, 8.118558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190681, -0.840251, 0.507562,
		-0.505217, 0.527315, 0.683150,
		-0.841663, -0.126165, -0.525058,
		5.933649, 20.668594, 7.961040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.151764, 20.458933, 8.868909>,  <6.522813, 20.756910, 8.328581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.151764, 20.458933, 8.868909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.955956, 20.368019, 8.532168>,  <5.838472, 20.313471, 8.330124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.955956, 20.368019, 8.532168>,  <6.151764, 20.458933, 8.868909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.955956, 20.368019, 8.532168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353797, -0.830630, 0.429979,
		-0.796994, 0.508327, 0.326197,
		-0.489519, -0.227283, -0.841851,
		5.809101, 20.299833, 8.279613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.441605, 20.427233, 9.019983>,  <6.151764, 20.458933, 8.868909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.441605, 20.427233, 9.019983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.547635, 20.195721, 8.711504>,  <5.611253, 20.056814, 8.526416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.547635, 20.195721, 8.711504>,  <5.441605, 20.427233, 9.019983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.547635, 20.195721, 8.711504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465654, -0.777201, 0.423231,
		-0.844335, 0.246924, -0.475529,
		0.265076, -0.578780, -0.771199,
		5.627158, 20.022087, 8.480145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.828912, 20.022694, 8.957977>,  <5.441605, 20.427233, 9.019983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.828912, 20.022694, 8.957977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.120479, 19.834021, 8.759505>,  <5.295419, 19.720818, 8.640422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.120479, 19.834021, 8.759505>,  <4.828912, 20.022694, 8.957977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.120479, 19.834021, 8.759505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230642, -0.851599, 0.470726,
		-0.644580, -0.228680, -0.729536,
		0.728918, -0.471682, -0.496180,
		5.339154, 19.692516, 8.610651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.573686, 19.453268, 8.687988>,  <4.828912, 20.022694, 8.957977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.573686, 19.453268, 8.687988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.967720, 19.392992, 8.721217>,  <5.204140, 19.356827, 8.741155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.967720, 19.392992, 8.721217>,  <4.573686, 19.453268, 8.687988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.967720, 19.392992, 8.721217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171912, -0.882590, 0.437585,
		0.007380, -0.445340, -0.895331,
		0.985085, -0.150688, 0.083073,
		5.263246, 19.347786, 8.746139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.696553, 18.680794, 8.553460>,  <4.573686, 19.453268, 8.687988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.696553, 18.680794, 8.553460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.036024, 18.799442, 8.728623>,  <5.239706, 18.870632, 8.833721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.036024, 18.799442, 8.728623>,  <4.696553, 18.680794, 8.553460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.036024, 18.799442, 8.728623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033773, -0.856642, 0.514804,
		0.527834, -0.422112, -0.737029,
		0.848676, 0.296623, 0.437909,
		5.290627, 18.888430, 8.859996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.139374, 18.049248, 8.520750>,  <4.696553, 18.680794, 8.553460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.139374, 18.049248, 8.520750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.274410, 18.288504, 8.811476>,  <5.355431, 18.432058, 8.985911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.274410, 18.288504, 8.811476>,  <5.139374, 18.049248, 8.520750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.274410, 18.288504, 8.811476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016056, -0.775692, 0.630908,
		0.941156, -0.201318, -0.271469,
		0.337590, 0.598142, 0.726815,
		5.375687, 18.467947, 9.029520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.640045, 17.588871, 8.795007>,  <5.139374, 18.049248, 8.520750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.640045, 17.588871, 8.795007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.587865, 17.879946, 9.064363>,  <5.556558, 18.054590, 9.225978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.587865, 17.879946, 9.064363>,  <5.640045, 17.588871, 8.795007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.587865, 17.879946, 9.064363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077511, -0.669632, 0.738637,
		0.988420, 0.148550, 0.030950,
		-0.130449, 0.727685, 0.673393,
		5.548730, 18.098251, 9.266381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.175221, 17.525740, 9.288567>,  <5.640045, 17.588871, 8.795007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.175221, 17.525740, 9.288567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.883795, 17.726013, 9.475547>,  <5.708940, 17.846176, 9.587735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.883795, 17.726013, 9.475547>,  <6.175221, 17.525740, 9.288567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.883795, 17.726013, 9.475547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159417, -0.539753, 0.826591,
		0.666168, 0.676745, 0.313428,
		-0.728565, 0.500683, 0.467450,
		5.665226, 17.876219, 9.615782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.506647, 17.685930, 9.827207>,  <6.175221, 17.525740, 9.288567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.506647, 17.685930, 9.827207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.114240, 17.726883, 9.893079>,  <5.878795, 17.751455, 9.932602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.114240, 17.726883, 9.893079>,  <6.506647, 17.685930, 9.827207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.114240, 17.726883, 9.893079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070411, -0.603213, 0.794466,
		0.180676, 0.790982, 0.584555,
		-0.981019, 0.102382, 0.164680,
		5.819934, 17.757597, 9.942483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.502810, 17.753424, 10.485057>,  <6.506647, 17.685930, 9.827207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.502810, 17.753424, 10.485057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.120769, 17.657755, 10.415115>,  <5.891544, 17.600353, 10.373151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.120769, 17.657755, 10.415115>,  <6.502810, 17.753424, 10.485057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.120769, 17.657755, 10.415115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038128, -0.486046, 0.873101,
		-0.293809, 0.840569, 0.455105,
		-0.955103, -0.239173, -0.174854,
		5.834238, 17.586002, 10.362659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.193364, 17.820299, 11.109646>,  <6.502810, 17.753424, 10.485057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.193364, 17.820299, 11.109646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.958277, 17.577291, 10.895914>,  <5.817225, 17.431488, 10.767674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.958277, 17.577291, 10.895914>,  <6.193364, 17.820299, 11.109646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.958277, 17.577291, 10.895914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204494, -0.527442, 0.824613,
		-0.782795, 0.593908, 0.185754,
		-0.587719, -0.607518, -0.534330,
		5.781961, 17.395037, 10.735615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.531837, 17.795368, 11.420623>,  <6.193364, 17.820299, 11.109646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.531837, 17.795368, 11.420623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.575251, 17.455204, 11.214703>,  <5.601300, 17.251104, 11.091150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.575251, 17.455204, 11.214703>,  <5.531837, 17.795368, 11.420623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.575251, 17.455204, 11.214703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268317, -0.523700, 0.808545,
		-0.957197, 0.050373, -0.285020,
		0.108536, -0.850412, -0.514800,
		5.607812, 17.200081, 11.060263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.930974, 17.438793, 11.580029>,  <5.531837, 17.795368, 11.420623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.930974, 17.438793, 11.580029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.169408, 17.150721, 11.438032>,  <5.312469, 16.977877, 11.352834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.169408, 17.150721, 11.438032>,  <4.930974, 17.438793, 11.580029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.169408, 17.150721, 11.438032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429765, -0.659639, 0.616587,
		-0.678227, -0.214969, -0.702707,
		0.596079, -0.720184, -0.354998,
		5.348234, 16.934666, 11.331533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.546675, 16.876650, 11.613491>,  <4.930974, 17.438793, 11.580029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.546675, 16.876650, 11.613491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.910337, 16.713800, 11.578422>,  <5.128535, 16.616091, 11.557380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.910337, 16.713800, 11.578422>,  <4.546675, 16.876650, 11.613491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.910337, 16.713800, 11.578422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300835, -0.787609, 0.537746,
		-0.287982, -0.462519, -0.838536,
		0.909156, -0.407122, -0.087675,
		5.183084, 16.591663, 11.552119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.427453, 16.073868, 11.586867>,  <4.546675, 16.876650, 11.613491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.427453, 16.073868, 11.586867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.810663, 16.131472, 11.686023>,  <5.040589, 16.166035, 11.745516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.810663, 16.131472, 11.686023>,  <4.427453, 16.073868, 11.586867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.810663, 16.131472, 11.686023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060689, -0.743204, 0.666307,
		0.280188, -0.653383, -0.703268,
		0.958025, 0.144010, 0.247890,
		5.098070, 16.174675, 11.760389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.761398, 15.398771, 11.514258>,  <4.427453, 16.073868, 11.586867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.761398, 15.398771, 11.514258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.986423, 15.618695, 11.761234>,  <5.121439, 15.750649, 11.909420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.986423, 15.618695, 11.761234>,  <4.761398, 15.398771, 11.514258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.986423, 15.618695, 11.761234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248056, -0.824665, 0.508327,
		0.788663, -0.132807, -0.600310,
		0.562564, 0.549809, 0.617439,
		5.155193, 15.783638, 11.946466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.357660, 15.013124, 11.578379>,  <4.761398, 15.398771, 11.514258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.357660, 15.013124, 11.578379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.342872, 15.264617, 11.889076>,  <5.333998, 15.415512, 12.075495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.342872, 15.264617, 11.889076>,  <5.357660, 15.013124, 11.578379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.342872, 15.264617, 11.889076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177967, -0.760707, 0.624222,
		0.983342, 0.161314, -0.083769,
		-0.036972, 0.628731, 0.776744,
		5.331780, 15.453237, 12.122099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.924694, 14.834938, 12.020186>,  <5.357660, 15.013124, 11.578379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.924694, 14.834938, 12.020186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.684951, 15.035043, 12.270150>,  <5.541106, 15.155106, 12.420129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.684951, 15.035043, 12.270150>,  <5.924694, 14.834938, 12.020186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.684951, 15.035043, 12.270150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102254, -0.726422, 0.679599,
		0.793925, 0.471221, 0.384231,
		-0.599356, 0.500261, 0.624909,
		5.505145, 15.185122, 12.457623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.638773, 14.854735, 11.741455>,  <5.924694, 14.834938, 12.020186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.638773, 14.854735, 11.741455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.991503, 14.740180, 11.591594>,  <7.203141, 14.671447, 11.501677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.991503, 14.740180, 11.591594>,  <6.638773, 14.854735, 11.741455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.991503, 14.740180, 11.591594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339725, 0.936810, 0.083509,
		0.327063, -0.200920, 0.923396,
		0.881826, -0.286388, -0.374653,
		7.256051, 14.654263, 11.479198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.080968, 15.074338, 12.258049>,  <6.638773, 14.854735, 11.741455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.080968, 15.074338, 12.258049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.291551, 15.037416, 11.919978>,  <7.417901, 15.015262, 11.717135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.291551, 15.037416, 11.919978>,  <7.080968, 15.074338, 12.258049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.291551, 15.037416, 11.919978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346314, 0.931164, 0.114020,
		0.776473, -0.352723, 0.522185,
		0.526457, -0.092306, -0.845176,
		7.449488, 15.009724, 11.666426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.809273, 15.275265, 12.423761>,  <7.080968, 15.074338, 12.258049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.809273, 15.275265, 12.423761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.714586, 15.334397, 12.039655>,  <7.657774, 15.369877, 11.809191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.714586, 15.334397, 12.039655>,  <7.809273, 15.275265, 12.423761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.714586, 15.334397, 12.039655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374168, 0.925994, 0.050319,
		0.896639, -0.347390, -0.274514,
		-0.236718, 0.147832, -0.960266,
		7.643571, 15.378747, 11.751575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.242958, 15.830060, 12.320919>,  <7.809273, 15.275265, 12.423761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.242958, 15.830060, 12.320919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.049117, 15.799665, 11.972348>,  <7.932812, 15.781428, 11.763206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.049117, 15.799665, 11.972348>,  <8.242958, 15.830060, 12.320919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.049117, 15.799665, 11.972348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451841, 0.831277, -0.323756,
		0.748999, -0.550640, -0.368506,
		-0.484603, -0.075987, -0.871427,
		7.903736, 15.776869, 11.710920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.760894, 15.934188, 11.870517>,  <8.242958, 15.830060, 12.320919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.760894, 15.934188, 11.870517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.421606, 16.027649, 11.680388>,  <8.218033, 16.083725, 11.566312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.421606, 16.027649, 11.680388>,  <8.760894, 15.934188, 11.870517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.421606, 16.027649, 11.680388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375834, 0.897864, -0.229322,
		0.373191, -0.373157, -0.849401,
		-0.848220, 0.233653, -0.475320,
		8.167140, 16.097744, 11.537792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.934302, 16.224710, 11.241168>,  <8.760894, 15.934188, 11.870517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.934302, 16.224710, 11.241168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.558082, 16.360262, 11.232028>,  <8.332349, 16.441593, 11.226544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.558082, 16.360262, 11.232028>,  <8.934302, 16.224710, 11.241168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.558082, 16.360262, 11.232028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332370, 0.904455, -0.267378,
		-0.069942, -0.259078, -0.963321,
		-0.940552, 0.338880, -0.022850,
		8.275916, 16.461926, 11.225173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.817115, 16.641773, 10.582609>,  <8.934302, 16.224710, 11.241168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.817115, 16.641773, 10.582609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.528276, 16.760532, 10.832546>,  <8.354973, 16.831787, 10.982509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.528276, 16.760532, 10.832546>,  <8.817115, 16.641773, 10.582609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.528276, 16.760532, 10.832546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157675, 0.950083, -0.269222,
		-0.673583, -0.095882, -0.732865,
		-0.722097, 0.296898, 0.624842,
		8.311647, 16.849602, 11.019999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.362526, 17.088026, 10.229207>,  <8.817115, 16.641773, 10.582609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.362526, 17.088026, 10.229207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.278879, 17.171566, 10.611339>,  <8.228691, 17.221689, 10.840617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.278879, 17.171566, 10.611339>,  <8.362526, 17.088026, 10.229207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.278879, 17.171566, 10.611339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023204, 0.977713, -0.208662,
		-0.977615, -0.021468, -0.209303,
		-0.209118, 0.208848, 0.955329,
		8.216144, 17.234221, 10.897937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.773183, 17.495440, 10.291492>,  <8.362526, 17.088026, 10.229207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.773183, 17.495440, 10.291492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.950266, 17.566414, 10.643066>,  <8.056516, 17.608997, 10.854011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.950266, 17.566414, 10.643066>,  <7.773183, 17.495440, 10.291492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.950266, 17.566414, 10.643066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217348, 0.972228, -0.086793,
		-0.869925, -0.152611, 0.468978,
		0.442707, 0.177435, 0.878935,
		8.083078, 17.619644, 10.906747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.372499, 17.889120, 10.691755>,  <7.773183, 17.495440, 10.291492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.372499, 17.889120, 10.691755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.721649, 17.962282, 10.872704>,  <7.931138, 18.006180, 10.981273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.721649, 17.962282, 10.872704>,  <7.372499, 17.889120, 10.691755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.721649, 17.962282, 10.872704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125609, 0.980069, -0.153904,
		-0.471504, 0.077518, 0.878450,
		0.872873, 0.182907, 0.452370,
		7.983510, 18.017155, 11.008414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.221759, 18.455368, 11.179585>,  <7.372499, 17.889120, 10.691755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.221759, 18.455368, 11.179585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.614679, 18.462238, 11.104978>,  <7.850431, 18.466360, 11.060213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.614679, 18.462238, 11.104978>,  <7.221759, 18.455368, 11.179585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.614679, 18.462238, 11.104978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034587, 0.995295, -0.090507,
		0.184087, 0.095356, 0.978273,
		0.982301, 0.017174, -0.186519,
		7.909370, 18.467390, 11.049022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.405958, 19.055363, 11.489440>,  <7.221759, 18.455368, 11.179585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.405958, 19.055363, 11.489440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.737700, 19.003754, 11.271992>,  <7.936745, 18.972788, 11.141522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.737700, 19.003754, 11.271992>,  <7.405958, 19.055363, 11.489440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.737700, 19.003754, 11.271992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003523, 0.974159, -0.225836,
		0.558711, 0.185383, 0.808378,
		0.829355, -0.129025, -0.543620,
		7.986506, 18.965046, 11.108906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.753633, 19.638123, 11.492624>,  <7.405958, 19.055363, 11.489440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.753633, 19.638123, 11.492624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.916785, 19.454134, 11.177141>,  <8.014677, 19.343740, 10.987851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.916785, 19.454134, 11.177141>,  <7.753633, 19.638123, 11.492624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.916785, 19.454134, 11.177141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227576, 0.887785, -0.400060,
		0.884218, -0.016314, 0.466789,
		0.407881, -0.459970, -0.788708,
		8.039149, 19.316143, 10.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.485085, 19.732515, 11.346698>,  <7.753633, 19.638123, 11.492624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.485085, 19.732515, 11.346698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.359765, 19.625235, 10.982300>,  <8.284574, 19.560865, 10.763661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.359765, 19.625235, 10.982300>,  <8.485085, 19.732515, 11.346698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.359765, 19.625235, 10.982300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084313, 0.963358, -0.254622,
		0.945904, -0.002965, -0.324433,
		-0.313300, -0.268202, -0.910994,
		8.265776, 19.544773, 10.709002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.721999, 20.303331, 11.000820>,  <8.485085, 19.732515, 11.346698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.721999, 20.303331, 11.000820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.464009, 20.133488, 10.746665>,  <8.309216, 20.031582, 10.594172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.464009, 20.133488, 10.746665>,  <8.721999, 20.303331, 11.000820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.464009, 20.133488, 10.746665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162998, 0.888739, -0.428456,
		0.746620, -0.172776, -0.642423,
		-0.644974, -0.424607, -0.635388,
		8.270517, 20.006105, 10.556048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.827063, 20.758511, 10.322234>,  <8.721999, 20.303331, 11.000820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.827063, 20.758511, 10.322234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.484492, 20.557079, 10.367741>,  <8.278950, 20.436220, 10.395044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.484492, 20.557079, 10.367741>,  <8.827063, 20.758511, 10.322234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.484492, 20.557079, 10.367741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512420, 0.802279, -0.306227,
		0.062937, -0.320557, -0.945136,
		-0.856425, -0.503580, 0.113767,
		8.227565, 20.406006, 10.401871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.625223, 20.794058, 9.643303>,  <8.827063, 20.758511, 10.322234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.625223, 20.794058, 9.643303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.333553, 20.766739, 9.915668>,  <8.158551, 20.750347, 10.079086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.333553, 20.766739, 9.915668>,  <8.625223, 20.794058, 9.643303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.333553, 20.766739, 9.915668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485595, 0.752733, -0.444511,
		-0.482185, -0.654773, -0.582039,
		-0.729174, -0.068298, 0.680912,
		8.114801, 20.746250, 10.119941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087446, 21.092897, 9.346056>,  <8.625223, 20.794058, 9.643303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087446, 21.092897, 9.346056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.927488, 21.048248, 9.709951>,  <7.831513, 21.021460, 9.928288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.927488, 21.048248, 9.709951>,  <8.087446, 21.092897, 9.346056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.927488, 21.048248, 9.709951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582719, 0.797098, -0.158346,
		-0.707476, -0.593444, -0.383800,
		-0.399895, -0.111622, 0.909739,
		7.807519, 21.014761, 9.982873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.399997, 21.171181, 9.292033>,  <8.087446, 21.092897, 9.346056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.399997, 21.171181, 9.292033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.466134, 21.257576, 9.676951>,  <7.505816, 21.309414, 9.907902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.466134, 21.257576, 9.676951>,  <7.399997, 21.171181, 9.292033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.466134, 21.257576, 9.676951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520033, 0.848151, -0.101018,
		-0.837990, -0.483723, 0.252556,
		0.165341, 0.215990, 0.962295,
		7.515736, 21.322372, 9.965640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.795478, 21.268431, 9.561578>,  <7.399997, 21.171181, 9.292033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.795478, 21.268431, 9.561578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.045697, 21.457407, 9.809930>,  <7.195827, 21.570793, 9.958941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.045697, 21.457407, 9.809930>,  <6.795478, 21.268431, 9.561578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.045697, 21.457407, 9.809930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557875, 0.827187, -0.067359,
		-0.545407, -0.304237, 0.781007,
		0.625546, 0.472442, 0.620879,
		7.233360, 21.599140, 9.996194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.359606, 21.583467, 10.079064>,  <6.795478, 21.268431, 9.561578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.359606, 21.583467, 10.079064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.699743, 21.792433, 10.053763>,  <6.903825, 21.917812, 10.038583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.699743, 21.792433, 10.053763>,  <6.359606, 21.583467, 10.079064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.699743, 21.792433, 10.053763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524887, 0.850604, -0.031102,
		0.037555, 0.059648, 0.997513,
		0.850343, 0.522413, -0.063253,
		6.954846, 21.949158, 10.034787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.601882, 16.683809, 24.101820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.214685, 16.661631, 24.199734>,  <14.982368, 16.648323, 24.258482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.214685, 16.661631, 24.199734>,  <15.601882, 16.683809, 24.101820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214685, 16.661631, 24.199734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072670, 0.871598, 0.484804,
		-0.240236, 0.487075, -0.839670,
		-0.967991, -0.055449, 0.244785,
		14.924288, 16.644997, 24.273169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335801, 17.331455, 23.956257>,  <15.601882, 16.683809, 24.101820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335801, 17.331455, 23.956257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.105574, 17.139099, 24.220821>,  <14.967437, 17.023685, 24.379560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.105574, 17.139099, 24.220821>,  <15.335801, 17.331455, 23.956257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.105574, 17.139099, 24.220821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032380, 0.794780, 0.606033,
		-0.817112, 0.370231, -0.441880,
		-0.575569, -0.480889, 0.661412,
		14.932903, 16.994833, 24.419245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780709, 17.787567, 24.149935>,  <15.335801, 17.331455, 23.956257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780709, 17.787567, 24.149935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.802557, 17.520712, 24.447107>,  <14.815666, 17.360600, 24.625410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.802557, 17.520712, 24.447107>,  <14.780709, 17.787567, 24.149935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802557, 17.520712, 24.447107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321716, 0.716122, 0.619410,
		-0.945260, 0.205180, 0.253742,
		0.054620, -0.667136, 0.742931,
		14.818943, 17.320572, 24.669987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524676, 18.169022, 24.646627>,  <14.780709, 17.787567, 24.149935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524676, 18.169022, 24.646627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.699258, 17.857256, 24.826416>,  <14.804007, 17.670197, 24.934290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.699258, 17.857256, 24.826416>,  <14.524676, 18.169022, 24.646627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.699258, 17.857256, 24.826416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355602, 0.608323, 0.709570,
		-0.826472, -0.149861, 0.542665,
		0.436453, -0.779413, 0.449471,
		14.830194, 17.623432, 24.961258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270689, 18.211330, 25.371824>,  <14.524676, 18.169022, 24.646627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.270689, 18.211330, 25.371824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.593460, 17.975498, 25.386059>,  <14.787123, 17.834000, 25.394600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.593460, 17.975498, 25.386059>,  <14.270689, 18.211330, 25.371824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.593460, 17.975498, 25.386059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229122, 0.367977, 0.901163,
		-0.544401, -0.719020, 0.432016,
		0.806926, -0.589579, 0.035584,
		14.835538, 17.798624, 25.396734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252213, 18.086824, 26.062449>,  <14.270689, 18.211330, 25.371824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252213, 18.086824, 26.062449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.612417, 17.993990, 25.915363>,  <14.828540, 17.938290, 25.827112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.612417, 17.993990, 25.915363>,  <14.252213, 18.086824, 26.062449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612417, 17.993990, 25.915363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421070, 0.254373, 0.870629,
		-0.108524, -0.938846, 0.326790,
		0.900512, -0.232085, -0.367714,
		14.882571, 17.924364, 25.805050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.603719, 17.610846, 26.567299>,  <14.252213, 18.086824, 26.062449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.603719, 17.610846, 26.567299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.899444, 17.776262, 26.354734>,  <15.076879, 17.875513, 26.227196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.899444, 17.776262, 26.354734>,  <14.603719, 17.610846, 26.567299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.899444, 17.776262, 26.354734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516061, 0.158977, 0.841670,
		0.432551, -0.896497, -0.095881,
		0.739311, 0.413545, -0.531412,
		15.121237, 17.900326, 26.195311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304564, 17.252642, 26.789148>,  <14.603719, 17.610846, 26.567299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304564, 17.252642, 26.789148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.396300, 17.605572, 26.624754>,  <15.451343, 17.817329, 26.526117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.396300, 17.605572, 26.624754>,  <15.304564, 17.252642, 26.789148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396300, 17.605572, 26.624754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472885, 0.268057, 0.839360,
		0.850754, -0.386848, -0.355761,
		0.229341, 0.882323, -0.410985,
		15.465102, 17.870268, 26.501459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945257, 17.278027, 26.774242>,  <15.304564, 17.252642, 26.789148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945257, 17.278027, 26.774242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.854084, 17.666397, 26.744986>,  <15.799380, 17.899420, 26.727432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.854084, 17.666397, 26.744986>,  <15.945257, 17.278027, 26.774242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854084, 17.666397, 26.744986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650643, 0.207766, 0.730409,
		0.724369, 0.118896, -0.679083,
		-0.227933, 0.970926, -0.073140,
		15.785704, 17.957674, 26.723043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.601397, 17.621920, 26.703176>,  <15.945257, 17.278027, 26.774242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.601397, 17.621920, 26.703176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.307613, 17.857424, 26.838192>,  <16.131344, 17.998726, 26.919201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.307613, 17.857424, 26.838192>,  <16.601397, 17.621920, 26.703176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307613, 17.857424, 26.838192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564790, 0.254509, 0.785008,
		0.376277, 0.767193, -0.519453,
		-0.734458, 0.588762, 0.337537,
		16.087276, 18.034052, 26.939453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065231, 17.958857, 27.247517>,  <16.601397, 17.621920, 26.703176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065231, 17.958857, 27.247517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.696808, 18.087263, 27.335695>,  <16.475754, 18.164307, 27.388603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.696808, 18.087263, 27.335695>,  <17.065231, 17.958857, 27.247517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.696808, 18.087263, 27.335695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304885, 0.242267, 0.921060,
		0.242267, 0.915563, -0.321015,
		-0.921060, 0.321015, 0.220448,
		16.420490, 18.183567, 27.401829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.105597, 18.707243, 27.306263>,  <17.065231, 17.958857, 27.247517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.105597, 18.707243, 27.306263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.811171, 18.568956, 27.539049>,  <16.634514, 18.485985, 27.678720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.811171, 18.568956, 27.539049>,  <17.105597, 18.707243, 27.306263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.811171, 18.568956, 27.539049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501724, 0.298493, 0.811896,
		-0.454399, 0.889597, -0.046257,
		-0.736067, -0.345716, 0.581967,
		16.590351, 18.465242, 27.713638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903349, 19.227989, 27.794117>,  <17.105597, 18.707243, 27.306263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.903349, 19.227989, 27.794117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.786322, 18.876593, 27.945196>,  <16.716105, 18.665754, 28.035843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.786322, 18.876593, 27.945196>,  <16.903349, 19.227989, 27.794117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.786322, 18.876593, 27.945196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163593, 0.343175, 0.924915,
		-0.942147, 0.332392, 0.043312,
		-0.292570, -0.878491, 0.377698,
		16.698551, 18.613045, 28.058506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620125, 19.417480, 28.418510>,  <16.903349, 19.227989, 27.794117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620125, 19.417480, 28.418510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.688309, 19.024286, 28.445890>,  <16.729219, 18.788370, 28.462318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.688309, 19.024286, 28.445890>,  <16.620125, 19.417480, 28.418510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688309, 19.024286, 28.445890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228181, 0.106955, 0.967726,
		-0.958581, -0.149340, 0.242530,
		0.170460, -0.982984, 0.068449,
		16.739447, 18.729391, 28.466425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171591, 20.086529, 28.204454>,  <16.620125, 19.417480, 28.418510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171591, 20.086529, 28.204454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.077364, 20.475208, 28.211525>,  <16.020828, 20.708416, 28.215767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.077364, 20.475208, 28.211525>,  <16.171591, 20.086529, 28.204454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.077364, 20.475208, 28.211525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198334, -0.030260, -0.979667,
		-0.951406, -0.234282, 0.199849,
		-0.235566, 0.971698, 0.017677,
		16.006695, 20.766718, 28.216827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683759, 20.070196, 27.689320>,  <16.171591, 20.086529, 28.204454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.683759, 20.070196, 27.689320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.763719, 20.459290, 27.736355>,  <15.811695, 20.692745, 27.764576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.763719, 20.459290, 27.736355>,  <15.683759, 20.070196, 27.689320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763719, 20.459290, 27.736355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109118, 0.141364, -0.983926,
		-0.973721, 0.183856, 0.134402,
		0.199900, 0.972735, 0.117587,
		15.823689, 20.751110, 27.771631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.109777, 20.446859, 27.345823>,  <15.683759, 20.070196, 27.689320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.109777, 20.446859, 27.345823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.427304, 20.689007, 27.369097>,  <15.617821, 20.834295, 27.383060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.427304, 20.689007, 27.369097>,  <15.109777, 20.446859, 27.345823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427304, 20.689007, 27.369097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135868, 0.269788, -0.953286,
		-0.592785, 0.748829, 0.296413,
		0.793817, 0.605367, 0.058184,
		15.665449, 20.870617, 27.386553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.948596, 20.955700, 26.966688>,  <15.109777, 20.446859, 27.345823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.948596, 20.955700, 26.966688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.346601, 20.993746, 26.978716>,  <15.585403, 21.016573, 26.985933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.346601, 20.993746, 26.978716>,  <14.948596, 20.955700, 26.966688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346601, 20.993746, 26.978716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016705, 0.138299, -0.990250,
		-0.098348, 0.985812, 0.136020,
		0.995012, 0.095116, 0.030069,
		15.645104, 21.022282, 26.987736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992366, 21.428509, 26.451115>,  <14.948596, 20.955700, 26.966688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992366, 21.428509, 26.451115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.361557, 21.277901, 26.482977>,  <15.583072, 21.187536, 26.502094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.361557, 21.277901, 26.482977>,  <14.992366, 21.428509, 26.451115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361557, 21.277901, 26.482977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124345, 0.095876, -0.987596,
		0.364212, 0.921434, 0.135310,
		0.922978, -0.376519, 0.079657,
		15.638451, 21.164946, 26.506874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371438, 21.767548, 25.932037>,  <14.992366, 21.428509, 26.451115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.371438, 21.767548, 25.932037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.625375, 21.467806, 26.007343>,  <15.777737, 21.287960, 26.052526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.625375, 21.467806, 26.007343>,  <15.371438, 21.767548, 25.932037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625375, 21.467806, 26.007343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229679, -0.049624, -0.972000,
		0.737715, 0.660307, 0.140608,
		0.634841, -0.749354, 0.188267,
		15.815827, 21.243000, 26.063824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024296, 21.959330, 25.561331>,  <15.371438, 21.767548, 25.932037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024296, 21.959330, 25.561331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.984051, 21.567009, 25.628151>,  <15.959904, 21.331617, 25.668243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.984051, 21.567009, 25.628151>,  <16.024296, 21.959330, 25.561331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.984051, 21.567009, 25.628151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317662, -0.190784, -0.928812,
		0.942851, -0.040385, 0.330759,
		-0.100614, -0.980801, 0.167052,
		15.953867, 21.272768, 25.678267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.603281, 21.673733, 25.215611>,  <16.024296, 21.959330, 25.561331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.603281, 21.673733, 25.215611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.361057, 21.360167, 25.270411>,  <16.215723, 21.172026, 25.303291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.361057, 21.360167, 25.270411>,  <16.603281, 21.673733, 25.215611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.361057, 21.360167, 25.270411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165460, -0.292419, -0.941867,
		0.778408, -0.547690, 0.306785,
		-0.605561, -0.783917, 0.137001,
		16.179388, 21.124990, 25.311510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967436, 21.010918, 24.912943>,  <16.603281, 21.673733, 25.215611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967436, 21.010918, 24.912943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.579683, 20.912809, 24.917660>,  <16.347031, 20.853945, 24.920490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.579683, 20.912809, 24.917660>,  <16.967436, 21.010918, 24.912943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579683, 20.912809, 24.917660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056810, -0.270733, -0.960977,
		0.238893, -0.930885, 0.276378,
		-0.969383, -0.245271, 0.011793,
		16.288868, 20.839228, 24.921198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.920685, 20.391788, 24.665897>,  <16.967436, 21.010918, 24.912943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.920685, 20.391788, 24.665897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.553333, 20.533905, 24.596209>,  <16.332922, 20.619175, 24.554396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.553333, 20.533905, 24.596209>,  <16.920685, 20.391788, 24.665897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553333, 20.533905, 24.596209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052553, -0.326872, -0.943606,
		-0.392206, -0.875740, 0.281519,
		-0.918375, 0.355294, -0.174224,
		16.277821, 20.640491, 24.543941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424585, 19.808470, 24.431297>,  <16.920685, 20.391788, 24.665897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424585, 19.808470, 24.431297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.286207, 20.153448, 24.283508>,  <16.203180, 20.360435, 24.194834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.286207, 20.153448, 24.283508>,  <16.424585, 19.808470, 24.431297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.286207, 20.153448, 24.283508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182774, -0.448190, -0.875054,
		-0.920281, -0.235188, 0.312680,
		-0.345943, 0.862445, -0.369474,
		16.182425, 20.412182, 24.172667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908070, 19.606897, 24.090334>,  <16.424585, 19.808470, 24.431297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908070, 19.606897, 24.090334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.903127, 19.982616, 23.953180>,  <15.900161, 20.208048, 23.870888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.903127, 19.982616, 23.953180>,  <15.908070, 19.606897, 24.090334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903127, 19.982616, 23.953180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620065, -0.276217, -0.734318,
		-0.784453, 0.203538, 0.585838,
		-0.012357, 0.939295, -0.342886,
		15.899420, 20.264404, 23.850315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170295, 19.761396, 23.795479>,  <15.908070, 19.606897, 24.090334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.170295, 19.761396, 23.795479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.428004, 20.016621, 23.626818>,  <15.582630, 20.169754, 23.525621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.428004, 20.016621, 23.626818>,  <15.170295, 19.761396, 23.795479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.428004, 20.016621, 23.626818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366972, -0.225803, -0.902411,
		-0.671003, 0.736134, 0.088671,
		0.644273, 0.638059, -0.421655,
		15.621286, 20.208038, 23.500320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.807201, 20.226862, 23.272427>,  <15.170295, 19.761396, 23.795479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.807201, 20.226862, 23.272427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.196818, 20.232473, 23.182055>,  <15.430589, 20.235840, 23.127831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.196818, 20.232473, 23.182055>,  <14.807201, 20.226862, 23.272427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196818, 20.232473, 23.182055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225678, -0.017651, -0.974042,
		-0.017651, 0.999746, -0.014027,
		0.974042, 0.014027, -0.225932,
		15.489031, 20.236681, 23.114275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.155502, 20.616692, 23.162619>,  <14.807201, 20.226862, 23.272427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.155502, 20.616692, 23.162619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.801434, 20.432327, 23.137222>,  <13.588992, 20.321709, 23.121984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.801434, 20.432327, 23.137222>,  <14.155502, 20.616692, 23.162619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801434, 20.432327, 23.137222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204527, 0.262909, 0.942893,
		-0.417898, 0.847608, -0.326988,
		-0.885172, -0.460911, -0.063490,
		13.535882, 20.294054, 23.118176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.588224, 21.106840, 23.353006>,  <14.155502, 20.616692, 23.162619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.588224, 21.106840, 23.353006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.410129, 20.752304, 23.403858>,  <13.303271, 20.539581, 23.434368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.410129, 20.752304, 23.403858>,  <13.588224, 21.106840, 23.353006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410129, 20.752304, 23.403858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222869, 0.247207, 0.942983,
		-0.867232, 0.391520, -0.307604,
		-0.445239, -0.886341, 0.127129,
		13.276557, 20.486403, 23.441998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.036201, 21.323605, 23.774343>,  <13.588224, 21.106840, 23.353006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.036201, 21.323605, 23.774343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.077260, 20.932096, 23.845304>,  <13.101895, 20.697191, 23.887880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.077260, 20.932096, 23.845304>,  <13.036201, 21.323605, 23.774343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077260, 20.932096, 23.845304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157313, 0.160127, 0.974480,
		-0.982199, -0.127937, -0.137537,
		0.102648, -0.978770, 0.177403,
		13.108054, 20.638466, 23.898525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.570670, 21.122143, 24.253950>,  <13.036201, 21.323605, 23.774343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.570670, 21.122143, 24.253950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.840197, 20.827585, 24.278252>,  <13.001913, 20.650850, 24.292831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.840197, 20.827585, 24.278252>,  <12.570670, 21.122143, 24.253950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.840197, 20.827585, 24.278252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095668, -0.005418, 0.995399,
		-0.732679, -0.676529, -0.074100,
		0.673817, -0.736396, 0.060753,
		13.042342, 20.606667, 24.296478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.232914, 20.583059, 24.691626>,  <12.570670, 21.122143, 24.253950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.232914, 20.583059, 24.691626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.629186, 20.529291, 24.700426>,  <12.866949, 20.497030, 24.705706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.629186, 20.529291, 24.700426>,  <12.232914, 20.583059, 24.691626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.629186, 20.529291, 24.700426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012266, 0.072825, 0.997269,
		-0.135657, -0.988244, 0.070498,
		0.990680, -0.134422, 0.022001,
		12.926390, 20.488964, 24.707026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.341797, 20.111423, 25.154612>,  <12.232914, 20.583059, 24.691626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.341797, 20.111423, 25.154612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.695950, 20.297043, 25.143599>,  <12.908442, 20.408415, 25.136990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.695950, 20.297043, 25.143599>,  <12.341797, 20.111423, 25.154612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.695950, 20.297043, 25.143599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046108, -0.028727, 0.998523,
		0.462573, -0.885344, -0.046831,
		0.885382, 0.464049, -0.027533,
		12.961564, 20.436258, 25.135338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809542, 19.732550, 25.610723>,  <12.341797, 20.111423, 25.154612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809542, 19.732550, 25.610723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.969821, 20.096224, 25.565434>,  <13.065989, 20.314428, 25.538260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.969821, 20.096224, 25.565434>,  <12.809542, 19.732550, 25.610723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969821, 20.096224, 25.565434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025555, 0.112443, 0.993330,
		0.915854, -0.400918, 0.021822,
		0.400698, 0.909187, -0.113227,
		13.090031, 20.368980, 25.531466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853718, 18.954256, 25.753441>,  <12.809542, 19.732550, 25.610723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853718, 18.954256, 25.753441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.473203, 18.862398, 25.835724>,  <12.244894, 18.807283, 25.885094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.473203, 18.862398, 25.835724>,  <12.853718, 18.954256, 25.753441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.473203, 18.862398, 25.835724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067032, -0.497205, -0.865040,
		0.300930, -0.836691, 0.457592,
		-0.951288, -0.229643, 0.205709,
		12.187817, 18.793505, 25.897436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.890624, 18.247585, 25.503244>,  <12.853718, 18.954256, 25.753441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.890624, 18.247585, 25.503244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.510626, 18.365969, 25.543079>,  <12.282627, 18.436998, 25.566980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.510626, 18.365969, 25.543079>,  <12.890624, 18.247585, 25.503244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.510626, 18.365969, 25.543079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238002, -0.479809, -0.844475,
		-0.202145, -0.825950, 0.526255,
		-0.949996, 0.295956, 0.099587,
		12.225627, 18.454756, 25.572956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.505074, 17.661545, 25.453148>,  <12.890624, 18.247585, 25.503244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.505074, 17.661545, 25.453148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.269556, 17.967749, 25.349367>,  <12.128245, 18.151472, 25.287100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.269556, 17.967749, 25.349367>,  <12.505074, 17.661545, 25.453148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269556, 17.967749, 25.349367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194455, -0.445717, -0.873798,
		-0.784544, -0.464035, 0.411293,
		-0.588793, 0.765512, -0.259450,
		12.092918, 18.197403, 25.271532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.060351, 17.326242, 25.126738>,  <12.505074, 17.661545, 25.453148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.060351, 17.326242, 25.126738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.960999, 17.695185, 25.008369>,  <11.901388, 17.916550, 24.937349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.960999, 17.695185, 25.008369>,  <12.060351, 17.326242, 25.126738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.960999, 17.695185, 25.008369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355909, -0.371023, -0.857713,
		-0.900909, -0.107718, 0.420429,
		-0.248380, 0.922355, -0.295920,
		11.886485, 17.971891, 24.919594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.443137, 17.200592, 24.698874>,  <12.060351, 17.326242, 25.126738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.443137, 17.200592, 24.698874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.593430, 17.560167, 24.608772>,  <11.683605, 17.775911, 24.554710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.593430, 17.560167, 24.608772>,  <11.443137, 17.200592, 24.698874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.593430, 17.560167, 24.608772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125033, -0.191670, -0.973463,
		-0.918255, 0.393925, 0.040380,
		0.375732, 0.898936, -0.225255,
		11.706149, 17.829847, 24.541195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006121, 17.430117, 24.145283>,  <11.443137, 17.200592, 24.698874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.006121, 17.430117, 24.145283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.339241, 17.649105, 24.112490>,  <11.539113, 17.780499, 24.092813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.339241, 17.649105, 24.112490>,  <11.006121, 17.430117, 24.145283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.339241, 17.649105, 24.112490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020249, -0.117874, -0.992822,
		-0.553204, 0.828482, -0.087080,
		0.832800, 0.547470, -0.081984,
		11.589081, 17.813347, 24.087894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.831487, 17.885693, 23.590626>,  <11.006121, 17.430117, 24.145283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.831487, 17.885693, 23.590626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.230222, 17.873938, 23.620163>,  <11.469462, 17.866884, 23.637886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.230222, 17.873938, 23.620163>,  <10.831487, 17.885693, 23.590626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.230222, 17.873938, 23.620163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074139, 0.009063, -0.997207,
		0.028636, 0.999527, 0.011214,
		0.996837, -0.029387, 0.073845,
		11.529273, 17.865122, 23.642317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.564806, 15.750021, 25.641109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.906942, 15.873892, 25.474981>,  <17.112225, 15.948215, 25.375305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.906942, 15.873892, 25.474981>,  <16.564806, 15.750021, 25.641109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906942, 15.873892, 25.474981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404732, -0.899870, 0.162562,
		-0.323391, -0.307139, -0.895033,
		0.855342, 0.309678, -0.415319,
		17.163546, 15.966795, 25.350386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355650, 16.091444, 26.316210>,  <16.564806, 15.750021, 25.641109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355650, 16.091444, 26.316210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.121311, 16.241041, 26.028624>,  <15.980708, 16.330799, 25.856071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.121311, 16.241041, 26.028624>,  <16.355650, 16.091444, 26.316210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.121311, 16.241041, 26.028624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439832, 0.891858, 0.105534,
		0.680684, -0.254398, -0.686987,
		-0.585847, 0.373994, -0.718966,
		15.945558, 16.353239, 25.812933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985302, 15.451123, 26.068228>,  <16.355650, 16.091444, 26.316210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985302, 15.451123, 26.068228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.822198, 15.222750, 26.353258>,  <15.724336, 15.085726, 26.524277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.822198, 15.222750, 26.353258>,  <15.985302, 15.451123, 26.068228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822198, 15.222750, 26.353258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796794, -0.158635, -0.583055,
		0.445926, -0.805524, -0.390233,
		-0.407760, -0.570935, 0.712576,
		15.699870, 15.051469, 26.567032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835641, 14.677416, 25.874075>,  <15.985302, 15.451123, 26.068228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.835641, 14.677416, 25.874075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.583901, 14.801394, 26.159130>,  <15.432858, 14.875780, 26.330164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.583901, 14.801394, 26.159130>,  <15.835641, 14.677416, 25.874075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.583901, 14.801394, 26.159130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751411, -0.008765, -0.659776,
		-0.198249, -0.950714, 0.238413,
		-0.629348, 0.309946, 0.712639,
		15.395097, 14.894377, 26.372921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192670, 14.250938, 25.928167>,  <15.835641, 14.677416, 25.874075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192670, 14.250938, 25.928167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.108006, 14.618584, 26.061092>,  <15.057207, 14.839170, 26.140846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.108006, 14.618584, 26.061092>,  <15.192670, 14.250938, 25.928167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.108006, 14.618584, 26.061092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815351, 0.021421, -0.578571,
		-0.538891, -0.393410, 0.744866,
		-0.211660, 0.919114, 0.332311,
		15.044508, 14.894318, 26.160786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593649, 14.271794, 26.356491>,  <15.192670, 14.250938, 25.928167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.593649, 14.271794, 26.356491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.679264, 14.589156, 26.128563>,  <14.730633, 14.779573, 25.991806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.679264, 14.589156, 26.128563>,  <14.593649, 14.271794, 26.356491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.679264, 14.589156, 26.128563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788227, -0.204268, -0.580494,
		-0.576963, 0.573396, 0.581662,
		0.214038, 0.793405, -0.569821,
		14.743475, 14.827178, 25.957617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.634861, 14.814501, 26.898888>,  <14.593649, 14.271794, 26.356491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.634861, 14.814501, 26.898888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.334296, 15.075477, 26.938288>,  <14.153957, 15.232062, 26.961927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.334296, 15.075477, 26.938288>,  <14.634861, 14.814501, 26.898888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334296, 15.075477, 26.938288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544335, -0.528566, -0.651396,
		-0.372930, -0.543086, 0.752317,
		-0.751413, 0.652438, 0.098502,
		14.108872, 15.271208, 26.967838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020811, 14.403423, 26.988726>,  <14.634861, 14.814501, 26.898888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020811, 14.403423, 26.988726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.901332, 14.757690, 26.846529>,  <13.829644, 14.970251, 26.761211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.901332, 14.757690, 26.846529>,  <14.020811, 14.403423, 26.988726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.901332, 14.757690, 26.846529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628137, -0.462885, -0.625445,
		-0.718488, 0.036478, 0.694583,
		-0.298696, 0.885667, -0.355490,
		13.811723, 15.023391, 26.739882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.279675, 14.379134, 27.075939>,  <14.020811, 14.403423, 26.988726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.279675, 14.379134, 27.075939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.407578, 14.622828, 26.785673>,  <13.484319, 14.769045, 26.611513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.407578, 14.622828, 26.785673>,  <13.279675, 14.379134, 27.075939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.407578, 14.622828, 26.785673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479499, -0.556512, -0.678509,
		-0.817213, 0.564912, 0.114181,
		0.319755, 0.609236, -0.725664,
		13.503504, 14.805599, 26.567974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700963, 14.447225, 26.572104>,  <13.279675, 14.379134, 27.075939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700963, 14.447225, 26.572104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.009705, 14.582701, 26.356873>,  <13.194950, 14.663986, 26.227734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.009705, 14.582701, 26.356873>,  <12.700963, 14.447225, 26.572104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009705, 14.582701, 26.356873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398112, -0.402402, -0.824366,
		-0.495729, 0.850506, -0.175759,
		0.771855, 0.338690, -0.538080,
		13.241261, 14.684308, 26.195448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394721, 14.602374, 25.907907>,  <12.700963, 14.447225, 26.572104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394721, 14.602374, 25.907907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.779635, 14.627631, 25.802061>,  <13.010584, 14.642785, 25.738554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.779635, 14.627631, 25.802061>,  <12.394721, 14.602374, 25.907907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.779635, 14.627631, 25.802061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220528, -0.388508, -0.894667,
		-0.159296, 0.919279, -0.359931,
		0.962285, 0.063142, -0.264615,
		13.068321, 14.646574, 25.722677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.297709, 14.887747, 25.274107>,  <12.394721, 14.602374, 25.907907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.297709, 14.887747, 25.274107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.661501, 14.725379, 25.310053>,  <12.879776, 14.627958, 25.331621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.661501, 14.725379, 25.310053>,  <12.297709, 14.887747, 25.274107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.661501, 14.725379, 25.310053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103088, -0.429583, -0.897124,
		0.402765, 0.806651, -0.432543,
		0.909479, -0.405921, 0.089865,
		12.934345, 14.603602, 25.337013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.576932, 14.644748, 25.126347>,  <12.297709, 14.887747, 25.274107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.576932, 14.644748, 25.126347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.219410, 14.808758, 25.053692>,  <11.004897, 14.907164, 25.010099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.219410, 14.808758, 25.053692>,  <11.576932, 14.644748, 25.126347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.219410, 14.808758, 25.053692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127976, 0.621392, 0.772977,
		0.429808, 0.667646, -0.607877,
		-0.893805, 0.410025, -0.181636,
		10.951268, 14.931766, 24.999201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.636904, 15.387755, 24.974161>,  <11.576932, 14.644748, 25.126347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.636904, 15.387755, 24.974161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.276649, 15.296839, 25.122318>,  <11.060495, 15.242289, 25.211212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.276649, 15.296839, 25.122318>,  <11.636904, 15.387755, 24.974161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.276649, 15.296839, 25.122318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177591, 0.585402, 0.791054,
		-0.396628, 0.778231, -0.486870,
		-0.900637, -0.227291, 0.370394,
		11.006457, 15.228652, 25.233437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.489191, 15.935185, 25.262972>,  <11.636904, 15.387755, 24.974161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.489191, 15.935185, 25.262972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.230224, 15.678662, 25.427689>,  <11.074843, 15.524748, 25.526520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.230224, 15.678662, 25.427689>,  <11.489191, 15.935185, 25.262972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.230224, 15.678662, 25.427689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097563, 0.466130, 0.879320,
		-0.755865, 0.609463, -0.239213,
		-0.647418, -0.641309, 0.411793,
		11.035998, 15.486270, 25.551226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.902621, 16.342102, 25.655418>,  <11.489191, 15.935185, 25.262972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.902621, 16.342102, 25.655418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.936601, 15.973969, 25.808140>,  <10.956988, 15.753090, 25.899773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.936601, 15.973969, 25.808140>,  <10.902621, 16.342102, 25.655418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.936601, 15.973969, 25.808140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006993, 0.383728, 0.923420,
		-0.996361, -0.075774, 0.039033,
		0.084949, -0.920332, 0.381802,
		10.962086, 15.697870, 25.922680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404680, 16.335693, 26.144222>,  <10.902621, 16.342102, 25.655418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404680, 16.335693, 26.144222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.636024, 16.023294, 26.238489>,  <10.774831, 15.835855, 26.295050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.636024, 16.023294, 26.238489>,  <10.404680, 16.335693, 26.144222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.636024, 16.023294, 26.238489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177684, 0.402553, 0.897986,
		-0.796196, -0.477485, 0.371592,
		0.578361, -0.780999, 0.235669,
		10.809533, 15.788995, 26.309191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.211526, 16.284121, 26.723486>,  <10.404680, 16.335693, 26.144222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.211526, 16.284121, 26.723486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.548181, 16.068518, 26.736860>,  <10.750174, 15.939156, 26.744884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.548181, 16.068518, 26.736860>,  <10.211526, 16.284121, 26.723486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.548181, 16.068518, 26.736860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142320, 0.281103, 0.949066,
		-0.520953, -0.794010, 0.313298,
		0.841637, -0.539008, 0.033438,
		10.800672, 15.906816, 26.746891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.193559, 16.045856, 27.439135>,  <10.211526, 16.284121, 26.723486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.193559, 16.045856, 27.439135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.566489, 15.978617, 27.311066>,  <10.790248, 15.938272, 27.234224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.566489, 15.978617, 27.311066>,  <10.193559, 16.045856, 27.439135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.566489, 15.978617, 27.311066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359026, 0.324480, 0.875108,
		-0.043216, -0.930836, 0.362874,
		0.932327, -0.168100, -0.320171,
		10.846188, 15.928186, 27.215014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.671175, 15.781587, 28.013460>,  <10.193559, 16.045856, 27.439135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.671175, 15.781587, 28.013460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.922832, 15.926417, 27.738337>,  <11.073827, 16.013315, 27.573263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.922832, 15.926417, 27.738337>,  <10.671175, 15.781587, 28.013460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.922832, 15.926417, 27.738337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512984, 0.471392, 0.717382,
		0.583975, -0.804170, 0.110833,
		0.629143, 0.362077, -0.687808,
		11.111575, 16.035040, 27.531994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232251, 15.689883, 28.322554>,  <10.671175, 15.781587, 28.013460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232251, 15.689883, 28.322554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.347012, 15.966249, 28.057127>,  <11.415868, 16.132069, 27.897871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.347012, 15.966249, 28.057127>,  <11.232251, 15.689883, 28.322554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.347012, 15.966249, 28.057127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507773, 0.477693, 0.716921,
		0.812315, -0.542627, -0.213778,
		0.286900, 0.690916, -0.663568,
		11.433082, 16.173525, 27.858057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.926376, 15.879237, 28.522289>,  <11.232251, 15.689883, 28.322554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.926376, 15.879237, 28.522289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.795022, 16.185158, 28.300571>,  <11.716209, 16.368710, 28.167542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.795022, 16.185158, 28.300571>,  <11.926376, 15.879237, 28.522289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.795022, 16.185158, 28.300571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435438, 0.643338, 0.629691,
		0.838187, -0.034579, -0.544286,
		-0.328386, 0.764801, -0.554294,
		11.696507, 16.414598, 28.134283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503596, 16.269936, 28.354202>,  <11.926376, 15.879237, 28.522289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503596, 16.269936, 28.354202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.168385, 16.488037, 28.346119>,  <11.967257, 16.618898, 28.341269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.168385, 16.488037, 28.346119>,  <12.503596, 16.269936, 28.354202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.168385, 16.488037, 28.346119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407469, 0.650031, 0.641427,
		0.362874, 0.529301, -0.766918,
		-0.838029, 0.545252, -0.020206,
		11.916976, 16.651613, 28.340057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.735100, 17.028425, 28.224264>,  <12.503596, 16.269936, 28.354202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.735100, 17.028425, 28.224264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.373964, 17.030647, 28.396240>,  <12.157283, 17.031981, 28.499426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.373964, 17.030647, 28.396240>,  <12.735100, 17.028425, 28.224264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.373964, 17.030647, 28.396240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282686, 0.761108, 0.583784,
		-0.323989, 0.648602, -0.688729,
		-0.902840, 0.005555, 0.429941,
		12.103112, 17.032314, 28.525223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.677234, 17.758339, 28.466663>,  <12.735100, 17.028425, 28.224264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.677234, 17.758339, 28.466663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.367357, 17.576582, 28.642565>,  <12.181432, 17.467527, 28.748106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.367357, 17.576582, 28.642565>,  <12.677234, 17.758339, 28.466663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.367357, 17.576582, 28.642565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113704, 0.584000, 0.803750,
		-0.622034, 0.672659, -0.400753,
		-0.774691, -0.454393, 0.439752,
		12.134950, 17.440264, 28.774490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.251098, 18.238136, 28.529097>,  <12.677234, 17.758339, 28.466663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.251098, 18.238136, 28.529097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.132096, 17.951006, 28.780880>,  <12.060696, 17.778728, 28.931950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.132096, 17.951006, 28.780880>,  <12.251098, 18.238136, 28.529097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.132096, 17.951006, 28.780880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135393, 0.684369, 0.716455,
		-0.945072, 0.127923, -0.300790,
		-0.297503, -0.717827, 0.629458,
		12.042846, 17.735659, 28.969717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.673262, 18.115788, 28.925858>,  <12.251098, 18.238136, 28.529097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.673262, 18.115788, 28.925858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.614079, 18.505526, 28.858021>,  <11.578568, 18.739368, 28.817318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.614079, 18.505526, 28.858021>,  <11.673262, 18.115788, 28.925858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.614079, 18.505526, 28.858021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380944, -0.102103, -0.918943,
		-0.912683, -0.200571, -0.356064,
		-0.147958, 0.974344, -0.169594,
		11.569691, 18.797829, 28.807142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.322357, 18.181612, 28.352060>,  <11.673262, 18.115788, 28.925858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.322357, 18.181612, 28.352060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.486143, 18.545906, 28.373604>,  <11.584414, 18.764482, 28.386530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.486143, 18.545906, 28.373604>,  <11.322357, 18.181612, 28.352060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.486143, 18.545906, 28.373604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278915, -0.068754, -0.957852,
		-0.868645, 0.407230, -0.282170,
		0.409466, 0.910734, 0.053860,
		11.608983, 18.819126, 28.389761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.874846, 18.561695, 27.986446>,  <11.322357, 18.181612, 28.352060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.874846, 18.561695, 27.986446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.225799, 18.753597, 27.988689>,  <11.436371, 18.868738, 27.990034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.225799, 18.753597, 27.988689>,  <10.874846, 18.561695, 27.986446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.225799, 18.753597, 27.988689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062120, -0.102002, -0.992843,
		-0.475751, 0.871452, -0.119297,
		0.877384, 0.479757, 0.005607,
		11.489014, 18.897524, 27.990372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.823466, 19.242052, 27.451860>,  <10.874846, 18.561695, 27.986446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.823466, 19.242052, 27.451860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.202661, 19.122643, 27.496058>,  <11.430177, 19.050997, 27.522575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.202661, 19.122643, 27.496058>,  <10.823466, 19.242052, 27.451860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.202661, 19.122643, 27.496058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108687, -0.022689, -0.993817,
		0.299183, 0.954133, 0.010937,
		0.947985, -0.298522, 0.110490,
		11.487056, 19.033085, 27.529205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.181856, 19.563843, 26.890146>,  <10.823466, 19.242052, 27.451860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.181856, 19.563843, 26.890146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.483498, 19.324900, 26.999317>,  <11.664482, 19.181534, 27.064819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.483498, 19.324900, 26.999317>,  <11.181856, 19.563843, 26.890146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.483498, 19.324900, 26.999317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256125, -0.115173, -0.959758,
		0.604754, 0.793661, 0.066146,
		0.754104, -0.597359, 0.272928,
		11.709729, 19.145693, 27.081196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.886193, 19.830656, 26.621206>,  <11.181856, 19.563843, 26.890146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.886193, 19.830656, 26.621206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.908671, 19.435179, 26.676821>,  <11.922158, 19.197893, 26.710190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.908671, 19.435179, 26.676821>,  <11.886193, 19.830656, 26.621206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908671, 19.435179, 26.676821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296019, -0.116495, -0.948052,
		0.953528, 0.094433, 0.286125,
		0.056195, -0.988692, 0.139035,
		11.925529, 19.138571, 26.718531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.571085, 19.581707, 26.274830>,  <11.886193, 19.830656, 26.621206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.571085, 19.581707, 26.274830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.346739, 19.253092, 26.315825>,  <12.212131, 19.055923, 26.340422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.346739, 19.253092, 26.315825>,  <12.571085, 19.581707, 26.274830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.346739, 19.253092, 26.315825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087001, -0.181587, -0.979519,
		0.823322, -0.540463, 0.173321,
		-0.560866, -0.821539, 0.102484,
		12.178479, 19.006630, 26.346569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.306841, 19.777288, 26.135567>,  <12.571085, 19.581707, 26.274830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.306841, 19.777288, 26.135567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.277783, 20.166002, 26.045803>,  <13.260348, 20.399231, 25.991945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.277783, 20.166002, 26.045803>,  <13.306841, 19.777288, 26.135567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.277783, 20.166002, 26.045803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082332, 0.230081, 0.969683,
		0.993954, 0.051966, -0.096723,
		-0.072645, 0.971783, -0.224411,
		13.255990, 20.457537, 25.978479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767987, 20.041553, 26.654179>,  <13.306841, 19.777288, 26.135567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767987, 20.041553, 26.654179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.536975, 20.339911, 26.521452>,  <13.398367, 20.518925, 26.441816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.536975, 20.339911, 26.521452>,  <13.767987, 20.041553, 26.654179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.536975, 20.339911, 26.521452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230882, 0.539095, 0.809981,
		0.783039, 0.391179, -0.483558,
		-0.577532, 0.745892, -0.331817,
		13.363715, 20.563679, 26.421907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159552, 20.613573, 26.813353>,  <13.767987, 20.041553, 26.654179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159552, 20.613573, 26.813353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.789038, 20.754908, 26.760965>,  <13.566730, 20.839708, 26.729534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.789038, 20.754908, 26.760965>,  <14.159552, 20.613573, 26.813353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.789038, 20.754908, 26.760965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078084, 0.519984, 0.850599,
		0.368647, 0.777670, -0.509243,
		-0.926284, 0.353335, -0.130966,
		13.511152, 20.860909, 26.721676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.174131, 21.361996, 26.648268>,  <14.159552, 20.613573, 26.813353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.174131, 21.361996, 26.648268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.822099, 21.257278, 26.806723>,  <13.610879, 21.194448, 26.901794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.822099, 21.257278, 26.806723>,  <14.174131, 21.361996, 26.648268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.822099, 21.257278, 26.806723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068313, 0.755789, 0.651242,
		-0.469885, 0.600207, -0.647271,
		-0.880081, -0.261792, 0.396135,
		13.558075, 21.178741, 26.925564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861741, 22.002916, 26.668800>,  <14.174131, 21.361996, 26.648268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.861741, 22.002916, 26.668800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.649364, 21.780916, 26.924950>,  <13.521937, 21.647717, 27.078638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.649364, 21.780916, 26.924950>,  <13.861741, 22.002916, 26.668800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649364, 21.780916, 26.924950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012758, 0.750362, 0.660904,
		-0.847311, 0.359073, -0.391319,
		-0.530944, -0.554998, 0.640371,
		13.490081, 21.614416, 27.117062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.195477, 22.508581, 26.929104>,  <13.861741, 22.002916, 26.668800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.195477, 22.508581, 26.929104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.284276, 22.218258, 27.189541>,  <13.337556, 22.044064, 27.345802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.284276, 22.218258, 27.189541>,  <13.195477, 22.508581, 26.929104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.284276, 22.218258, 27.189541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108994, 0.682040, 0.723147,
		-0.968936, -0.089572, 0.230520,
		0.221998, -0.725809, 0.651090,
		13.350875, 22.000515, 27.384869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.076549, 22.904181, 27.427719>,  <13.195477, 22.508581, 26.929104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.076549, 22.904181, 27.427719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.222912, 22.592421, 27.631149>,  <13.310730, 22.405365, 27.753208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.222912, 22.592421, 27.631149>,  <13.076549, 22.904181, 27.427719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.222912, 22.592421, 27.631149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236702, 0.606443, 0.759078,
		-0.900047, -0.157371, 0.406387,
		0.365907, -0.779398, 0.508577,
		13.332685, 22.358601, 27.783722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.725382, 22.854412, 28.095261>,  <13.076549, 22.904181, 27.427719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.725382, 22.854412, 28.095261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.085408, 22.684942, 28.136021>,  <13.301424, 22.583261, 28.160477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.085408, 22.684942, 28.136021>,  <12.725382, 22.854412, 28.095261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.085408, 22.684942, 28.136021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117363, 0.460906, 0.879654,
		-0.419653, -0.779786, 0.464569,
		0.900065, -0.423673, 0.101902,
		13.355428, 22.557840, 28.166592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.732061, 22.578758, 28.734203>,  <12.725382, 22.854412, 28.095261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.732061, 22.578758, 28.734203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.116853, 22.631765, 28.638674>,  <13.347728, 22.663570, 28.581356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.116853, 22.631765, 28.638674>,  <12.732061, 22.578758, 28.734203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.116853, 22.631765, 28.638674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173056, 0.380755, 0.908337,
		0.211306, -0.915131, 0.343345,
		0.961978, 0.132519, -0.238825,
		13.405446, 22.671522, 28.567026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.735655, 15.563375, 13.799313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.109895, 15.698716, 13.839648>,  <13.334438, 15.779922, 13.863850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.109895, 15.698716, 13.839648>,  <12.735655, 15.563375, 13.799313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109895, 15.698716, 13.839648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261570, 0.472447, 0.841650,
		0.237134, -0.813825, 0.530525,
		0.935601, 0.338354, 0.100839,
		13.390574, 15.800222, 13.869900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985738, 15.433455, 14.457818>,  <12.735655, 15.563375, 13.799313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985738, 15.433455, 14.457818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.253850, 15.709663, 14.349078>,  <13.414718, 15.875388, 14.283834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.253850, 15.709663, 14.349078>,  <12.985738, 15.433455, 14.457818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.253850, 15.709663, 14.349078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100887, 0.447710, 0.888469,
		0.735218, -0.568098, 0.369756,
		0.670281, 0.690522, -0.271851,
		13.454934, 15.916820, 14.267523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361598, 15.568095, 15.100871>,  <12.985738, 15.433455, 14.457818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361598, 15.568095, 15.100871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409306, 15.874063, 14.847675>,  <13.437930, 16.057644, 14.695758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409306, 15.874063, 14.847675>,  <13.361598, 15.568095, 15.100871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.409306, 15.874063, 14.847675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039317, 0.640678, 0.766803,
		0.992083, -0.066568, 0.106486,
		0.119268, 0.764919, -0.632989,
		13.445086, 16.103539, 14.657779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.945552, 16.003752, 15.315057>,  <13.361598, 15.568095, 15.100871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.945552, 16.003752, 15.315057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.720297, 16.248774, 15.093192>,  <13.585144, 16.395786, 14.960073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.720297, 16.248774, 15.093192>,  <13.945552, 16.003752, 15.315057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.720297, 16.248774, 15.093192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084178, 0.625194, 0.775917,
		0.822064, 0.483639, -0.300507,
		-0.563138, 0.612557, -0.554661,
		13.551355, 16.432541, 14.926794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.157592, 16.702343, 15.488808>,  <13.945552, 16.003752, 15.315057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.157592, 16.702343, 15.488808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.796958, 16.761684, 15.326261>,  <13.580578, 16.797289, 15.228732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.796958, 16.761684, 15.326261>,  <14.157592, 16.702343, 15.488808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.796958, 16.761684, 15.326261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217672, 0.656207, 0.722504,
		0.373848, 0.739853, -0.559334,
		-0.901586, 0.148355, -0.406367,
		13.526483, 16.806190, 15.204350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.209177, 17.365265, 15.370392>,  <14.157592, 16.702343, 15.488808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.209177, 17.365265, 15.370392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824815, 17.263329, 15.413692>,  <13.594197, 17.202168, 15.439672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824815, 17.263329, 15.413692>,  <14.209177, 17.365265, 15.370392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824815, 17.263329, 15.413692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160809, 0.831933, 0.531063,
		-0.225393, 0.492894, -0.840389,
		-0.960905, -0.254840, 0.108250,
		13.536543, 17.186876, 15.446166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905052, 18.022970, 15.353851>,  <14.209177, 17.365265, 15.370392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905052, 18.022970, 15.353851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641190, 17.760204, 15.499901>,  <13.482872, 17.602545, 15.587531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641190, 17.760204, 15.499901>,  <13.905052, 18.022970, 15.353851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641190, 17.760204, 15.499901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273940, 0.662555, 0.697121,
		-0.699864, 0.359838, -0.617014,
		-0.659657, -0.656915, 0.365125,
		13.443293, 17.563129, 15.609438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.470411, 18.448219, 15.571584>,  <13.905052, 18.022970, 15.353851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.470411, 18.448219, 15.571584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355974, 18.114655, 15.760365>,  <13.287312, 17.914515, 15.873633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355974, 18.114655, 15.760365>,  <13.470411, 18.448219, 15.571584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.355974, 18.114655, 15.760365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316875, 0.547167, 0.774725,
		-0.904290, 0.072094, -0.420787,
		-0.286094, -0.833913, 0.471952,
		13.270146, 17.864481, 15.901950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847941, 18.628670, 15.887951>,  <13.470411, 18.448219, 15.571584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847941, 18.628670, 15.887951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923658, 18.289013, 16.085182>,  <12.969089, 18.085218, 16.203522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923658, 18.289013, 16.085182>,  <12.847941, 18.628670, 15.887951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.923658, 18.289013, 16.085182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262949, 0.439980, 0.858648,
		-0.946058, -0.292191, -0.139996,
		0.189294, -0.849142, 0.493078,
		12.980447, 18.034269, 16.233105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.403343, 18.557543, 16.355724>,  <12.847941, 18.628670, 15.887951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.403343, 18.557543, 16.355724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683778, 18.316189, 16.507727>,  <12.852038, 18.171377, 16.598928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683778, 18.316189, 16.507727>,  <12.403343, 18.557543, 16.355724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.683778, 18.316189, 16.507727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250828, 0.290180, 0.923515,
		-0.667504, -0.742781, 0.052096,
		0.701087, -0.603383, 0.380007,
		12.894104, 18.135174, 16.621729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.037056, 18.281199, 16.861088>,  <12.403343, 18.557543, 16.355724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.037056, 18.281199, 16.861088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.420593, 18.224977, 16.959772>,  <12.650716, 18.191246, 17.018982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.420593, 18.224977, 16.959772>,  <12.037056, 18.281199, 16.861088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.420593, 18.224977, 16.959772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191747, 0.320302, 0.927707,
		-0.209411, -0.936831, 0.280170,
		0.958843, -0.140550, 0.246709,
		12.708246, 18.182812, 17.033785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013089, 17.885811, 17.450157>,  <12.037056, 18.281199, 16.861088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.013089, 17.885811, 17.450157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.376562, 18.052183, 17.464561>,  <12.594646, 18.152006, 17.473204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.376562, 18.052183, 17.464561>,  <12.013089, 17.885811, 17.450157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.376562, 18.052183, 17.464561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184531, 0.322774, 0.928314,
		0.374496, -0.850186, 0.370051,
		0.908681, 0.415935, 0.036008,
		12.649167, 18.176962, 17.475365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.728151, 17.259157, 17.296896>,  <12.013089, 17.885811, 17.450157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.728151, 17.259157, 17.296896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.530034, 16.972870, 17.493845>,  <11.411163, 16.801098, 17.612015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.530034, 16.972870, 17.493845>,  <11.728151, 17.259157, 17.296896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.530034, 16.972870, 17.493845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474959, -0.251470, -0.843313,
		0.727392, -0.651545, -0.215385,
		-0.495293, -0.715718, 0.492374,
		11.381446, 16.758154, 17.641558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.902951, 16.540447, 16.986631>,  <11.728151, 17.259157, 17.296896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.902951, 16.540447, 16.986631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.539505, 16.553595, 17.153166>,  <11.321437, 16.561483, 17.253086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.539505, 16.553595, 17.153166>,  <11.902951, 16.540447, 16.986631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.539505, 16.553595, 17.153166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408206, -0.280502, -0.868727,
		0.088233, -0.959291, 0.268284,
		-0.908617, 0.032865, 0.416337,
		11.266920, 16.563454, 17.278067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.633209, 15.986478, 16.799984>,  <11.902951, 16.540447, 16.986631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.633209, 15.986478, 16.799984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324515, 16.226410, 16.884487>,  <11.139299, 16.370369, 16.935190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324515, 16.226410, 16.884487>,  <11.633209, 15.986478, 16.799984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.324515, 16.226410, 16.884487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405827, -0.208750, -0.889791,
		-0.489623, -0.772416, 0.404527,
		-0.771734, 0.599830, 0.211259,
		11.092995, 16.406359, 16.947865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.032857, 15.695485, 16.640724>,  <11.633209, 15.986478, 16.799984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.032857, 15.695485, 16.640724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.912148, 16.076796, 16.635082>,  <10.839722, 16.305582, 16.631697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.912148, 16.076796, 16.635082>,  <11.032857, 15.695485, 16.640724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.912148, 16.076796, 16.635082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647108, -0.215671, -0.731257,
		-0.700132, -0.211545, 0.681956,
		-0.301772, 0.953276, -0.014106,
		10.821616, 16.362778, 16.630850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293011, 15.673902, 16.717051>,  <11.032857, 15.695485, 16.640724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293011, 15.673902, 16.717051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.402625, 16.024225, 16.558123>,  <10.468394, 16.234419, 16.462767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.402625, 16.024225, 16.558123>,  <10.293011, 15.673902, 16.717051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.402625, 16.024225, 16.558123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661204, -0.128425, -0.739132,
		-0.698365, 0.465257, 0.543895,
		0.274037, 0.875809, -0.397318,
		10.484837, 16.286968, 16.438927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.649039, 16.013939, 16.509724>,  <10.293011, 15.673902, 16.717051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.649039, 16.013939, 16.509724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.937901, 16.199959, 16.304893>,  <10.111217, 16.311571, 16.181995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.937901, 16.199959, 16.304893>,  <9.649039, 16.013939, 16.509724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.937901, 16.199959, 16.304893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574071, -0.010093, -0.818744,
		-0.385926, 0.885226, 0.259683,
		0.722153, 0.465051, -0.512078,
		10.154547, 16.339474, 16.151270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261835, 16.324280, 15.945661>,  <9.649039, 16.013939, 16.509724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261835, 16.324280, 15.945661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.635770, 16.385479, 15.817492>,  <9.860131, 16.422199, 15.740590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.635770, 16.385479, 15.817492>,  <9.261835, 16.324280, 15.945661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.635770, 16.385479, 15.817492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289399, -0.194557, -0.937228,
		-0.205736, 0.968885, -0.137601,
		0.934837, 0.152999, -0.320422,
		9.916221, 16.431379, 15.721365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.263656, 16.775444, 15.499675>,  <9.261835, 16.324280, 15.945661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.263656, 16.775444, 15.499675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.598819, 16.573164, 15.417526>,  <9.799917, 16.451796, 15.368237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.598819, 16.573164, 15.417526>,  <9.263656, 16.775444, 15.499675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.598819, 16.573164, 15.417526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311869, -0.134790, -0.940516,
		0.447937, 0.852115, -0.270653,
		0.837909, -0.505700, -0.205371,
		9.850191, 16.421453, 15.355915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.528988, 16.979094, 14.874186>,  <9.263656, 16.775444, 15.499675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.528988, 16.979094, 14.874186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.671875, 16.610727, 14.936553>,  <9.757607, 16.389708, 14.973973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.671875, 16.610727, 14.936553>,  <9.528988, 16.979094, 14.874186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.671875, 16.610727, 14.936553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294720, -0.269539, -0.916782,
		0.886305, 0.281538, -0.367696,
		0.357217, -0.920916, 0.155919,
		9.779040, 16.334454, 14.983329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.753349, 16.800993, 14.217434>,  <9.528988, 16.979094, 14.874186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.753349, 16.800993, 14.217434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.749277, 16.463011, 14.431331>,  <9.746834, 16.260221, 14.559669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.749277, 16.463011, 14.431331>,  <9.753349, 16.800993, 14.217434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.749277, 16.463011, 14.431331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132147, -0.528943, -0.838306,
		0.991178, -0.079200, -0.106273,
		-0.010181, -0.844954, 0.534742,
		9.746222, 16.209524, 14.591753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.259442, 16.478245, 14.018575>,  <9.753349, 16.800993, 14.217434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.259442, 16.478245, 14.018575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.007487, 16.200771, 14.158314>,  <9.856315, 16.034286, 14.242157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.007487, 16.200771, 14.158314>,  <10.259442, 16.478245, 14.018575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.007487, 16.200771, 14.158314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000290, -0.449582, -0.893239,
		0.776687, -0.562741, 0.282984,
		-0.629887, -0.693685, 0.349348,
		9.818521, 15.992666, 14.263118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.349951, 15.893747, 13.562401>,  <10.259442, 16.478245, 14.018575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.349951, 15.893747, 13.562401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.033589, 15.752584, 13.762372>,  <9.843772, 15.667887, 13.882355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.033589, 15.752584, 13.762372>,  <10.349951, 15.893747, 13.562401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.033589, 15.752584, 13.762372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068548, -0.760720, -0.645450,
		0.608088, -0.544759, 0.577466,
		-0.790905, -0.352906, 0.499927,
		9.796318, 15.646712, 13.912350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.411992, 15.128956, 13.693049>,  <10.349951, 15.893747, 13.562401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.411992, 15.128956, 13.693049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.017957, 15.196285, 13.707287>,  <9.781535, 15.236683, 13.715829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.017957, 15.196285, 13.707287>,  <10.411992, 15.128956, 13.693049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.017957, 15.196285, 13.707287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158722, -0.809312, -0.565527,
		-0.066385, -0.562744, 0.823962,
		-0.985089, 0.168324, 0.035593,
		9.722430, 15.246782, 13.717965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.092531, 14.434408, 13.877167>,  <10.411992, 15.128956, 13.693049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.092531, 14.434408, 13.877167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.827008, 14.658989, 13.679529>,  <9.667694, 14.793737, 13.560946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.827008, 14.658989, 13.679529>,  <10.092531, 14.434408, 13.877167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.827008, 14.658989, 13.679529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143862, -0.744158, -0.652328,
		-0.733935, -0.361941, 0.574751,
		-0.663810, 0.561451, -0.494094,
		9.627866, 14.827425, 13.531301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.453395, 14.114929, 14.420024>,  <10.092531, 14.434408, 13.877167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.453395, 14.114929, 14.420024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.180424, 13.853881, 14.288341>,  <10.016642, 13.697252, 14.209331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.180424, 13.853881, 14.288341>,  <10.453395, 14.114929, 14.420024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.180424, 13.853881, 14.288341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328890, -0.128068, 0.935645,
		-0.652782, 0.746783, -0.127244,
		-0.682427, -0.652621, -0.329209,
		9.975696, 13.658094, 14.189578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.661164, 14.210041, 14.504431>,  <10.453395, 14.114929, 14.420024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.661164, 14.210041, 14.504431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.752346, 13.821525, 14.531657>,  <9.807055, 13.588415, 14.547993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.752346, 13.821525, 14.531657>,  <9.661164, 14.210041, 14.504431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.752346, 13.821525, 14.531657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405187, -0.031064, 0.913706,
		-0.885359, -0.235862, -0.400635,
		0.227954, -0.971290, 0.068066,
		9.820732, 13.530138, 14.552077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.096590, 13.705835, 14.640314>,  <9.661164, 14.210041, 14.504431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.096590, 13.705835, 14.640314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.430943, 13.534067, 14.777076>,  <9.631555, 13.431006, 14.859133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.430943, 13.534067, 14.777076>,  <9.096590, 13.705835, 14.640314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.430943, 13.534067, 14.777076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412692, -0.080954, 0.907266,
		-0.361921, -0.899468, -0.244887,
		0.835882, -0.429422, 0.341905,
		9.681707, 13.405241, 14.879647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.832752, 13.054506, 14.917349>,  <9.096590, 13.705835, 14.640314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.832752, 13.054506, 14.917349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.189885, 13.152410, 15.068581>,  <9.404164, 13.211152, 15.159320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.189885, 13.152410, 15.068581>,  <8.832752, 13.054506, 14.917349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.189885, 13.152410, 15.068581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347265, -0.160457, 0.923937,
		0.286807, -0.956215, -0.058265,
		0.892832, 0.244758, 0.378080,
		9.457735, 13.225837, 15.182005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.855453, 12.695001, 15.547606>,  <8.832752, 13.054506, 14.917349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.855453, 12.695001, 15.547606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.168480, 12.941178, 15.585169>,  <9.356296, 13.088885, 15.607707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.168480, 12.941178, 15.585169>,  <8.855453, 12.695001, 15.547606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.168480, 12.941178, 15.585169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005231, -0.144336, 0.989515,
		0.622546, -0.774851, -0.109734,
		0.782565, 0.615445, 0.093909,
		9.403250, 13.125812, 15.613341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381670, 12.297134, 15.873081>,  <8.855453, 12.695001, 15.547606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381670, 12.297134, 15.873081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.450267, 12.680462, 15.964482>,  <9.491425, 12.910459, 16.019323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.450267, 12.680462, 15.964482>,  <9.381670, 12.297134, 15.873081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.450267, 12.680462, 15.964482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013421, -0.234190, 0.972098,
		0.985094, -0.163640, -0.053023,
		0.171492, 0.958320, 0.228503,
		9.501715, 12.967957, 16.033033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.880318, 12.293347, 16.405197>,  <9.381670, 12.297134, 15.873081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.880318, 12.293347, 16.405197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.721853, 12.660510, 16.414162>,  <9.626775, 12.880808, 16.419540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.721853, 12.660510, 16.414162>,  <9.880318, 12.293347, 16.405197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.721853, 12.660510, 16.414162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163981, 0.046716, 0.985357,
		0.903419, 0.394035, -0.169026,
		-0.396162, 0.917907, 0.022410,
		9.603004, 12.935883, 16.420885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.268787, 12.612987, 16.869432>,  <9.880318, 12.293347, 16.405197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.268787, 12.612987, 16.869432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.976241, 12.884547, 16.843521>,  <9.800714, 13.047483, 16.827974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.976241, 12.884547, 16.843521>,  <10.268787, 12.612987, 16.869432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.976241, 12.884547, 16.843521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124039, 0.225819, 0.966240,
		0.670610, 0.698640, -0.249367,
		-0.731366, 0.678902, -0.064778,
		9.756831, 13.088218, 16.824087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.576334, 13.232651, 17.012733>,  <10.268787, 12.612987, 16.869432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.576334, 13.232651, 17.012733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.187397, 13.230436, 17.106131>,  <9.954035, 13.229108, 17.162169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.187397, 13.230436, 17.106131>,  <10.576334, 13.232651, 17.012733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.187397, 13.230436, 17.106131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226614, 0.219606, 0.948904,
		-0.056530, 0.975573, -0.212277,
		-0.972343, -0.005537, 0.233493,
		9.895694, 13.228775, 17.176178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461656, 13.827172, 17.493706>,  <10.576334, 13.232651, 17.012733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461656, 13.827172, 17.493706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.151694, 13.578916, 17.541582>,  <9.965717, 13.429961, 17.570309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.151694, 13.578916, 17.541582>,  <10.461656, 13.827172, 17.493706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.151694, 13.578916, 17.541582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098568, 0.068394, 0.992777,
		-0.624346, 0.781105, 0.008177,
		-0.774904, -0.620642, 0.119693,
		9.919223, 13.392723, 17.577490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.070229, 14.128073, 18.051306>,  <10.461656, 13.827172, 17.493706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.070229, 14.128073, 18.051306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.914248, 13.761359, 18.016790>,  <9.820659, 13.541331, 17.996080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.914248, 13.761359, 18.016790>,  <10.070229, 14.128073, 18.051306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.914248, 13.761359, 18.016790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322722, 0.048300, 0.945261,
		-0.862431, 0.396455, -0.314701,
		-0.389954, -0.916783, -0.086289,
		9.797261, 13.486324, 17.990904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.388144, 14.209760, 18.457367>,  <10.070229, 14.128073, 18.051306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.388144, 14.209760, 18.457367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.530137, 13.838672, 18.411198>,  <9.615333, 13.616018, 18.383497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.530137, 13.838672, 18.411198>,  <9.388144, 14.209760, 18.457367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.530137, 13.838672, 18.411198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022322, -0.131837, 0.991020,
		-0.934607, -0.349217, -0.067509,
		0.354982, -0.927721, -0.115421,
		9.636632, 13.560355, 18.376572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.049371, 13.883086, 18.965530>,  <9.388144, 14.209760, 18.457367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.049371, 13.883086, 18.965530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.358200, 13.646781, 18.871805>,  <9.543498, 13.504998, 18.815571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.358200, 13.646781, 18.871805>,  <9.049371, 13.883086, 18.965530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.358200, 13.646781, 18.871805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142430, -0.198467, 0.969703,
		-0.619368, -0.782055, -0.069089,
		0.772073, -0.590763, -0.234312,
		9.589822, 13.469552, 18.801512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.970127, 13.373159, 19.538500>,  <9.049371, 13.883086, 18.965530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.970127, 13.373159, 19.538500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331245, 13.333287, 19.371157>,  <9.547916, 13.309363, 19.270752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331245, 13.333287, 19.371157>,  <8.970127, 13.373159, 19.538500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.331245, 13.333287, 19.371157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406966, -0.116523, 0.905981,
		-0.139064, -0.988172, -0.064627,
		0.902796, -0.099688, -0.418357,
		9.602084, 13.303383, 19.245649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.304421, 12.695223, 19.744495>,  <8.970127, 13.373159, 19.538500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.304421, 12.695223, 19.744495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.588488, 12.964159, 19.660950>,  <9.758927, 13.125521, 19.610823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.588488, 12.964159, 19.660950>,  <9.304421, 12.695223, 19.744495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.588488, 12.964159, 19.660950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280651, 0.001730, 0.959808,
		0.645679, -0.740240, -0.187464,
		0.710165, 0.672340, -0.208866,
		9.801537, 13.165861, 19.598289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.879235, 12.453358, 20.181271>,  <9.304421, 12.695223, 19.744495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.879235, 12.453358, 20.181271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.947858, 12.835340, 20.084417>,  <9.989031, 13.064530, 20.026306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.947858, 12.835340, 20.084417>,  <9.879235, 12.453358, 20.181271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.947858, 12.835340, 20.084417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183034, 0.210601, 0.960284,
		0.968022, -0.209060, -0.138660,
		0.171555, 0.954956, -0.242132,
		9.999325, 13.121827, 20.011778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.606026, 12.594974, 20.501623>,  <9.879235, 12.453358, 20.181271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.606026, 12.594974, 20.501623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.432536, 12.949254, 20.435390>,  <10.328443, 13.161822, 20.395651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.432536, 12.949254, 20.435390>,  <10.606026, 12.594974, 20.501623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.432536, 12.949254, 20.435390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196607, 0.272362, 0.941894,
		0.879334, 0.375969, -0.292265,
		-0.433725, 0.885701, -0.165580,
		10.302419, 13.214964, 20.385717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.041139, 13.037827, 20.856518>,  <10.606026, 12.594974, 20.501623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.041139, 13.037827, 20.856518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.722325, 13.268396, 20.784437>,  <10.531037, 13.406738, 20.741188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.722325, 13.268396, 20.784437>,  <11.041139, 13.037827, 20.856518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.722325, 13.268396, 20.784437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019214, 0.322433, 0.946397,
		0.603629, 0.750849, -0.268065,
		-0.797034, 0.576423, -0.180203,
		10.483215, 13.441323, 20.730377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.237187, 13.707638, 20.983978>,  <11.041139, 13.037827, 20.856518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.237187, 13.707638, 20.983978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.843906, 13.652693, 21.032053>,  <10.607938, 13.619725, 21.060898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.843906, 13.652693, 21.032053>,  <11.237187, 13.707638, 20.983978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.843906, 13.652693, 21.032053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077684, 0.280926, 0.956580,
		-0.165163, 0.949848, -0.265536,
		-0.983202, -0.137363, 0.120187,
		10.548945, 13.611484, 21.068110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.009855, 14.308221, 21.338547>,  <11.237187, 13.707638, 20.983978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.009855, 14.308221, 21.338547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.683068, 14.086967, 21.403797>,  <10.486997, 13.954216, 21.442947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.683068, 14.086967, 21.403797>,  <11.009855, 14.308221, 21.338547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.683068, 14.086967, 21.403797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007347, 0.292829, 0.956137,
		-0.576638, 0.779933, -0.243295,
		-0.816967, -0.553132, 0.163126,
		10.437979, 13.921028, 21.452736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.603671, 14.718616, 21.779951>,  <11.009855, 14.308221, 21.338547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.603671, 14.718616, 21.779951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.468903, 14.345342, 21.829987>,  <10.388041, 14.121377, 21.860008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.468903, 14.345342, 21.829987>,  <10.603671, 14.718616, 21.779951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.468903, 14.345342, 21.829987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080327, 0.160862, 0.983703,
		-0.938100, 0.321383, -0.129158,
		-0.336921, -0.933186, 0.125089,
		10.367826, 14.065386, 21.867514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.058279, 14.833479, 22.297520>,  <10.603671, 14.718616, 21.779951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.058279, 14.833479, 22.297520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.144171, 14.444095, 22.329180>,  <10.195705, 14.210464, 22.348175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.144171, 14.444095, 22.329180>,  <10.058279, 14.833479, 22.297520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.144171, 14.444095, 22.329180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143484, 0.048718, 0.988453,
		-0.966077, -0.223605, -0.129215,
		0.214728, -0.973461, 0.079150,
		10.208590, 14.152056, 22.352924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.563955, 14.572111, 22.677040>,  <10.058279, 14.833479, 22.297520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.563955, 14.572111, 22.677040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.855554, 14.302631, 22.725529>,  <10.030513, 14.140944, 22.754622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.855554, 14.302631, 22.725529>,  <9.563955, 14.572111, 22.677040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.855554, 14.302631, 22.725529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041523, 0.133240, 0.990214,
		-0.683257, -0.726895, 0.069157,
		0.728996, -0.673699, 0.121220,
		10.074252, 14.100522, 22.761894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.357247, 14.316943, 23.302267>,  <9.563955, 14.572111, 22.677040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.357247, 14.316943, 23.302267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.741156, 14.209449, 23.269720>,  <9.971500, 14.144952, 23.250191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.741156, 14.209449, 23.269720>,  <9.357247, 14.316943, 23.302267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.741156, 14.209449, 23.269720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148342, 0.239257, 0.959558,
		-0.238401, -0.933026, 0.269497,
		0.959771, -0.268737, -0.081368,
		10.029087, 14.128828, 23.245310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.502137, 14.029449, 23.999462>,  <9.357247, 14.316943, 23.302267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.502137, 14.029449, 23.999462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.848743, 14.088223, 23.808649>,  <10.056707, 14.123487, 23.694160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.848743, 14.088223, 23.808649>,  <9.502137, 14.029449, 23.999462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.848743, 14.088223, 23.808649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449596, 0.185400, 0.873779,
		0.216837, -0.971614, 0.094587,
		0.866513, 0.146942, -0.477035,
		10.108698, 14.132302, 23.665539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.029228, 13.578862, 24.285576>,  <9.502137, 14.029449, 23.999462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.029228, 13.578862, 24.285576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.204271, 13.902776, 24.129244>,  <10.309298, 14.097124, 24.035444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.204271, 13.902776, 24.129244>,  <10.029228, 13.578862, 24.285576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.204271, 13.902776, 24.129244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304584, 0.275463, 0.911783,
		0.846007, -0.518045, -0.126103,
		0.437608, 0.809784, -0.390832,
		10.335554, 14.145711, 24.011993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.670215, 13.669305, 24.652777>,  <10.029228, 13.578862, 24.285576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.670215, 13.669305, 24.652777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.602764, 14.031211, 24.496332>,  <10.562294, 14.248354, 24.402466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.602764, 14.031211, 24.496332>,  <10.670215, 13.669305, 24.652777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.602764, 14.031211, 24.496332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319579, 0.425542, 0.846631,
		0.932434, 0.017774, -0.360902,
		-0.168627, 0.904764, -0.391110,
		10.552176, 14.302640, 24.379000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.154804, 14.049079, 25.091148>,  <10.670215, 13.669305, 24.652777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.154804, 14.049079, 25.091148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.928385, 14.336698, 24.929873>,  <10.792533, 14.509269, 24.833107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.928385, 14.336698, 24.929873>,  <11.154804, 14.049079, 25.091148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.928385, 14.336698, 24.929873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103704, 0.547310, 0.830480,
		0.817823, 0.428280, -0.384372,
		-0.566048, 0.719047, -0.403189,
		10.758571, 14.552412, 24.808916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
