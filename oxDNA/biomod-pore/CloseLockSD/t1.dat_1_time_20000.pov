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
	<4.564197, 15.307636, 15.111777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.523147, 14.909749, 15.110952>,  <4.498518, 14.671017, 15.110457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.523147, 14.909749, 15.110952>,  <4.564197, 15.307636, 15.111777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.523147, 14.909749, 15.110952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980967, 0.100862, 0.165921,
		-0.164837, 0.019050, -0.986137,
		-0.102624, -0.994718, -0.002061,
		4.492360, 14.611334, 15.110334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.852094, 15.836478, 15.608907>,  <4.564197, 15.307636, 15.111777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.852094, 15.836478, 15.608907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.731698, 16.071507, 15.909350>,  <4.659460, 16.212523, 16.089617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.731698, 16.071507, 15.909350>,  <4.852094, 15.836478, 15.608907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.731698, 16.071507, 15.909350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092301, -0.765987, 0.636196,
		0.949150, 0.260817, 0.176322,
		-0.300991, 0.587570, 0.751109,
		4.641400, 16.247778, 16.134684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.479310, 15.902638, 16.149021>,  <4.852094, 15.836478, 15.608907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.479310, 15.902638, 16.149021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.104540, 15.909773, 16.288652>,  <4.879678, 15.914054, 16.372431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.104540, 15.909773, 16.288652>,  <5.479310, 15.902638, 16.149021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.104540, 15.909773, 16.288652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215539, -0.756729, 0.617174,
		0.275164, 0.653485, 0.705154,
		-0.936924, 0.017836, 0.349077,
		4.823462, 15.915124, 16.393375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.029915, 16.168785, 15.768379>,  <5.479310, 15.902638, 16.149021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.029915, 16.168785, 15.768379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.695745, 16.228563, 15.556822>,  <5.495242, 16.264431, 15.429888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.695745, 16.228563, 15.556822>,  <6.029915, 16.168785, 15.768379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.695745, 16.228563, 15.556822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530021, 0.035499, 0.847241,
		0.145392, 0.988132, 0.049553,
		-0.835427, 0.149446, -0.528892,
		5.445117, 16.273397, 15.398154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.735138, 16.034451, 15.421873>,  <6.029915, 16.168785, 15.768379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.735138, 16.034451, 15.421873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.112828, 15.972337, 15.538030>,  <7.339442, 15.935068, 15.607723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.112828, 15.972337, 15.538030>,  <6.735138, 16.034451, 15.421873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.112828, 15.972337, 15.538030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022133, -0.909767, -0.414530,
		0.328559, 0.384982, -0.862461,
		0.944224, -0.155286, 0.290391,
		7.396095, 15.925751, 15.625147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.114150, 15.757177, 14.773035>,  <6.735138, 16.034451, 15.421873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.114150, 15.757177, 14.773035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.302244, 15.647325, 15.108524>,  <7.415101, 15.581413, 15.309817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.302244, 15.647325, 15.108524>,  <7.114150, 15.757177, 14.773035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.302244, 15.647325, 15.108524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025795, -0.954221, -0.297989,
		0.882164, 0.118490, -0.455793,
		0.470236, -0.274632, 0.838723,
		7.443315, 15.564935, 15.360141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.565092, 15.233639, 14.616651>,  <7.114150, 15.757177, 14.773035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.565092, 15.233639, 14.616651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.568819, 15.173625, 15.012105>,  <7.571055, 15.137617, 15.249378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.568819, 15.173625, 15.012105>,  <7.565092, 15.233639, 14.616651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.568819, 15.173625, 15.012105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027980, -0.988254, -0.150240,
		0.999565, 0.029062, -0.005011,
		0.009318, -0.150034, 0.988637,
		7.571614, 15.128614, 15.308696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.106757, 14.875339, 14.771537>,  <7.565092, 15.233639, 14.616651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.106757, 14.875339, 14.771537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864035, 14.798510, 15.080054>,  <7.718401, 14.752412, 15.265165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864035, 14.798510, 15.080054>,  <8.106757, 14.875339, 14.771537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.864035, 14.798510, 15.080054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062816, -0.978917, -0.194357,
		0.792364, -0.069487, 0.606078,
		-0.606806, -0.192073, 0.771294,
		7.681993, 14.740888, 15.311442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.442691, 14.340455, 15.160470>,  <8.106757, 14.875339, 14.771537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.442691, 14.340455, 15.160470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.074575, 14.324958, 15.316197>,  <7.853706, 14.315660, 15.409634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.074575, 14.324958, 15.316197>,  <8.442691, 14.340455, 15.160470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.074575, 14.324958, 15.316197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036941, -0.982035, -0.185049,
		0.389494, -0.184680, 0.902324,
		-0.920288, -0.038743, 0.389319,
		7.798489, 14.313335, 15.432993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.391323, 13.761418, 15.640777>,  <8.442691, 14.340455, 15.160470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.391323, 13.761418, 15.640777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.009961, 13.831475, 15.542516>,  <7.781144, 13.873509, 15.483560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.009961, 13.831475, 15.542516>,  <8.391323, 13.761418, 15.640777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.009961, 13.831475, 15.542516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158469, -0.983591, -0.086231,
		-0.256724, -0.043285, 0.965515,
		-0.953405, 0.175142, -0.245652,
		7.723940, 13.884018, 15.468821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.995045, 13.253562, 16.016151>,  <8.391323, 13.761418, 15.640777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.995045, 13.253562, 16.016151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.744157, 13.359780, 15.723282>,  <7.593625, 13.423512, 15.547560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.744157, 13.359780, 15.723282>,  <7.995045, 13.253562, 16.016151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.744157, 13.359780, 15.723282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291648, -0.951762, -0.095343,
		-0.722175, 0.153737, 0.674410,
		-0.627220, 0.265545, -0.732176,
		7.555992, 13.439444, 15.503629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.365851, 13.060075, 16.306709>,  <7.995045, 13.253562, 16.016151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.365851, 13.060075, 16.306709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.338285, 13.107975, 15.910546>,  <7.321746, 13.136715, 15.672848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.338285, 13.107975, 15.910546>,  <7.365851, 13.060075, 16.306709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.338285, 13.107975, 15.910546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232491, -0.967362, -0.100787,
		-0.970154, 0.223316, 0.094509,
		-0.068917, 0.119751, -0.990409,
		7.317611, 13.143900, 15.613423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.697052, 12.795677, 16.136652>,  <7.365851, 13.060075, 16.306709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.697052, 12.795677, 16.136652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.906914, 12.798961, 15.796142>,  <7.032831, 12.800931, 15.591835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.906914, 12.798961, 15.796142>,  <6.697052, 12.795677, 16.136652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.906914, 12.798961, 15.796142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442720, -0.851470, -0.281067,
		-0.727143, 0.524340, -0.443092,
		0.524654, 0.008210, -0.851276,
		7.064310, 12.801424, 15.540759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.476213, 12.209941, 15.757351>,  <6.697052, 12.795677, 16.136652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.476213, 12.209941, 15.757351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752974, 12.310624, 15.486673>,  <6.919031, 12.371035, 15.324267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752974, 12.310624, 15.486673>,  <6.476213, 12.209941, 15.757351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.752974, 12.310624, 15.486673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106513, -0.891418, -0.440487,
		-0.714091, 0.376850, -0.589964,
		0.691903, 0.251709, -0.676693,
		6.960545, 12.386137, 15.283666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.252132, 12.111198, 15.045040>,  <6.476213, 12.209941, 15.757351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.252132, 12.111198, 15.045040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.651890, 12.097455, 15.047195>,  <6.891745, 12.089210, 15.048489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.651890, 12.097455, 15.047195>,  <6.252132, 12.111198, 15.045040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.651890, 12.097455, 15.047195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028704, -0.902369, -0.430008,
		0.019636, 0.429593, -0.902809,
		0.999395, -0.034358, 0.005388,
		6.951709, 12.087148, 15.048812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.561772, 11.945644, 14.295535>,  <6.252132, 12.111198, 15.045040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.561772, 11.945644, 14.295535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.863127, 11.884461, 14.551353>,  <7.043939, 11.847752, 14.704843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.863127, 11.884461, 14.551353>,  <6.561772, 11.945644, 14.295535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.863127, 11.884461, 14.551353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295203, -0.790390, -0.536785,
		0.587593, 0.593201, -0.550315,
		0.753386, -0.152957, 0.639543,
		7.089142, 11.838574, 14.743216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.102087, 11.889326, 13.853531>,  <6.561772, 11.945644, 14.295535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.102087, 11.889326, 13.853531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.210853, 11.720462, 14.199443>,  <7.276112, 11.619143, 14.406990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.210853, 11.720462, 14.199443>,  <7.102087, 11.889326, 13.853531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.210853, 11.720462, 14.199443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383077, -0.776883, -0.499704,
		0.882788, 0.467154, -0.049525,
		0.271914, -0.422161, 0.864779,
		7.292427, 11.593814, 14.458877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.861315, 11.703704, 13.881474>,  <7.102087, 11.889326, 13.853531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.861315, 11.703704, 13.881474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.683994, 11.489944, 14.169334>,  <7.577602, 11.361688, 14.342051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.683994, 11.489944, 14.169334>,  <7.861315, 11.703704, 13.881474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.683994, 11.489944, 14.169334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558482, -0.792640, -0.244579,
		0.701129, 0.293491, 0.649832,
		-0.443301, -0.534401, 0.719652,
		7.551004, 11.329623, 14.385230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.363271, 11.367050, 14.222393>,  <7.861315, 11.703704, 13.881474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.363271, 11.367050, 14.222393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.047298, 11.141916, 14.319738>,  <7.857715, 11.006836, 14.378145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.047298, 11.141916, 14.319738>,  <8.363271, 11.367050, 14.222393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.047298, 11.141916, 14.319738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503085, -0.821771, -0.267578,
		0.350591, -0.088936, 0.932296,
		-0.789931, -0.562834, 0.243363,
		7.810319, 10.973066, 14.392747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.599861, 10.911989, 14.680860>,  <8.363271, 11.367050, 14.222393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.599861, 10.911989, 14.680860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.284194, 10.738618, 14.506800>,  <8.094793, 10.634595, 14.402364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.284194, 10.738618, 14.506800>,  <8.599861, 10.911989, 14.680860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.284194, 10.738618, 14.506800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556737, -0.804005, -0.208851,
		-0.259340, -0.407082, 0.875801,
		-0.789168, -0.433428, -0.435149,
		8.047443, 10.608589, 14.376255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.823057, 10.149425, 14.597131>,  <8.599861, 10.911989, 14.680860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.823057, 10.149425, 14.597131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.498261, 10.193281, 14.367818>,  <8.303384, 10.219595, 14.230230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.498261, 10.193281, 14.367818>,  <8.823057, 10.149425, 14.597131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.498261, 10.193281, 14.367818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205018, -0.866035, -0.456016,
		-0.546482, -0.487812, 0.680732,
		-0.811988, 0.109642, -0.573283,
		8.254665, 10.226174, 14.195833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.524050, 9.531059, 14.599213>,  <8.823057, 10.149425, 14.597131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.524050, 9.531059, 14.599213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.404570, 9.713321, 14.263795>,  <8.332882, 9.822678, 14.062544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.404570, 9.713321, 14.263795>,  <8.524050, 9.531059, 14.599213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.404570, 9.713321, 14.263795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235386, -0.816338, -0.527433,
		-0.924863, -0.354926, 0.136586,
		-0.298700, 0.455653, -0.838546,
		8.314960, 9.850017, 14.012231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.260792, 9.035247, 14.218251>,  <8.524050, 9.531059, 14.599213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.260792, 9.035247, 14.218251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.323666, 9.316731, 13.941099>,  <8.361390, 9.485622, 13.774808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.323666, 9.316731, 13.941099>,  <8.260792, 9.035247, 14.218251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.323666, 9.316731, 13.941099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361549, -0.693899, -0.622725,
		-0.919008, -0.152628, -0.363497,
		0.157185, 0.703711, -0.692881,
		8.370821, 9.527844, 13.733235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.980473, 8.789842, 13.457006>,  <8.260792, 9.035247, 14.218251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.980473, 8.789842, 13.457006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.252340, 9.077315, 13.398298>,  <8.415461, 9.249800, 13.363074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.252340, 9.077315, 13.398298>,  <7.980473, 8.789842, 13.457006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.252340, 9.077315, 13.398298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426014, -0.549640, -0.718615,
		-0.597128, 0.425896, -0.679743,
		0.679669, 0.718685, -0.146768,
		8.456242, 9.292921, 13.354268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.001233, 8.914062, 12.653847>,  <7.980473, 8.789842, 13.457006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.001233, 8.914062, 12.653847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.342297, 9.032528, 12.826014>,  <8.546935, 9.103608, 12.929314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.342297, 9.032528, 12.826014>,  <8.001233, 8.914062, 12.653847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.342297, 9.032528, 12.826014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521407, -0.534853, -0.664882,
		0.033295, 0.791340, -0.610470,
		0.852658, 0.296166, 0.430418,
		8.598094, 9.121378, 12.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.373974, 9.011182, 12.062369>,  <8.001233, 8.914062, 12.653847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.373974, 9.011182, 12.062369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.609609, 8.954382, 12.380568>,  <8.750990, 8.920301, 12.571486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.609609, 8.954382, 12.380568>,  <8.373974, 9.011182, 12.062369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.609609, 8.954382, 12.380568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644510, -0.511245, -0.568538,
		0.487426, 0.847623, -0.209647,
		0.589087, -0.142001, 0.795495,
		8.786335, 8.911781, 12.619216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.977432, 8.978230, 11.768323>,  <8.373974, 9.011182, 12.062369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.977432, 8.978230, 11.768323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.047163, 8.832784, 12.134360>,  <9.089002, 8.745516, 12.353983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.047163, 8.832784, 12.134360>,  <8.977432, 8.978230, 11.768323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.047163, 8.832784, 12.134360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767862, -0.531582, -0.357504,
		0.616440, 0.764987, 0.186538,
		0.174326, -0.363615, 0.915093,
		9.099461, 8.723700, 12.408888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.609029, 8.652251, 11.711104>,  <8.977432, 8.978230, 11.768323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.609029, 8.652251, 11.711104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.563169, 8.555143, 12.096418>,  <9.535654, 8.496879, 12.327607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.563169, 8.555143, 12.096418>,  <9.609029, 8.652251, 11.711104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.563169, 8.555143, 12.096418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754004, -0.652605, -0.074730,
		0.646787, 0.717754, 0.257868,
		-0.114648, -0.242768, 0.963286,
		9.528775, 8.482313, 12.385404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.195692, 8.762150, 12.143870>,  <9.609029, 8.652251, 11.711104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.195692, 8.762150, 12.143870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.015989, 8.457767, 12.331107>,  <9.908168, 8.275137, 12.443449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.015989, 8.457767, 12.331107>,  <10.195692, 8.762150, 12.143870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.015989, 8.457767, 12.331107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827731, -0.551695, -0.102443,
		0.336199, 0.341431, 0.877721,
		-0.449257, -0.760958, 0.468093,
		9.881212, 8.229479, 12.471535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.597272, 8.412239, 12.644588>,  <10.195692, 8.762150, 12.143870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.597272, 8.412239, 12.644588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.319274, 8.155382, 12.515200>,  <10.152475, 8.001268, 12.437567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.319274, 8.155382, 12.515200>,  <10.597272, 8.412239, 12.644588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.319274, 8.155382, 12.515200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705918, -0.694859, -0.137298,
		-0.136602, -0.323766, 0.936224,
		-0.694996, -0.642142, -0.323471,
		10.110775, 7.962739, 12.418159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.180402, 8.260041, 12.941108>,  <10.597272, 8.412239, 12.644588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.180402, 8.260041, 12.941108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.521091, 8.363060, 13.123638>,  <11.725506, 8.424871, 13.233156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.521091, 8.363060, 13.123638>,  <11.180402, 8.260041, 12.941108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.521091, 8.363060, 13.123638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452136, -0.801384, -0.391608,
		0.264835, 0.539863, -0.799006,
		0.851725, 0.257548, 0.456326,
		11.776609, 8.440324, 13.260536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.169766, 8.585340, 13.589943>,  <11.180402, 8.260041, 12.941108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.169766, 8.585340, 13.589943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298975, 8.271982, 13.802340>,  <11.376500, 8.083967, 13.929777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298975, 8.271982, 13.802340>,  <11.169766, 8.585340, 13.589943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298975, 8.271982, 13.802340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045787, 0.547476, 0.835568,
		-0.945284, -0.294218, 0.140977,
		0.323021, -0.783394, 0.530991,
		11.395882, 8.036964, 13.961637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.604469, 8.360778, 14.151428>,  <11.169766, 8.585340, 13.589943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.604469, 8.360778, 14.151428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993549, 8.326324, 14.237623>,  <11.226997, 8.305651, 14.289340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993549, 8.326324, 14.237623>,  <10.604469, 8.360778, 14.151428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993549, 8.326324, 14.237623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157041, 0.439335, 0.884490,
		-0.170859, -0.894184, 0.413814,
		0.972700, -0.086137, 0.215488,
		11.285359, 8.300483, 14.302270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.741748, 8.104143, 14.822349>,  <10.604469, 8.360778, 14.151428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.741748, 8.104143, 14.822349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.996267, 8.394776, 14.718656>,  <11.148979, 8.569157, 14.656440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.996267, 8.394776, 14.718656>,  <10.741748, 8.104143, 14.822349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.996267, 8.394776, 14.718656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368250, 0.581354, 0.725547,
		0.677877, -0.366202, 0.637479,
		0.636298, 0.726583, -0.259233,
		11.187157, 8.612751, 14.640886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.180493, 8.329523, 15.505278>,  <10.741748, 8.104143, 14.822349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.180493, 8.329523, 15.505278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.084729, 8.603387, 15.229910>,  <11.027270, 8.767706, 15.064689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.084729, 8.603387, 15.229910>,  <11.180493, 8.329523, 15.505278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.084729, 8.603387, 15.229910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355486, 0.597994, 0.718354,
		0.903500, 0.416705, 0.100221,
		-0.239410, 0.684661, -0.688420,
		11.012906, 8.808785, 15.023384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.319337, 8.938595, 15.891994>,  <11.180493, 8.329523, 15.505278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.319337, 8.938595, 15.891994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.111354, 9.040699, 15.565930>,  <10.986564, 9.101962, 15.370292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.111354, 9.040699, 15.565930>,  <11.319337, 8.938595, 15.891994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.111354, 9.040699, 15.565930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352389, 0.805213, 0.476922,
		0.778116, 0.535233, -0.328726,
		-0.519959, 0.255261, -0.815159,
		10.955366, 9.117277, 15.321383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.494087, 9.623121, 15.621530>,  <11.319337, 8.938595, 15.891994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.494087, 9.623121, 15.621530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.121989, 9.532027, 15.506443>,  <10.898730, 9.477371, 15.437391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.121989, 9.532027, 15.506443>,  <11.494087, 9.623121, 15.621530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.121989, 9.532027, 15.506443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322789, 0.880765, 0.346497,
		0.174502, 0.415200, -0.892837,
		-0.930245, -0.227734, -0.287717,
		10.842916, 9.463707, 15.420128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.226378, 10.246305, 15.497098>,  <11.494087, 9.623121, 15.621530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.226378, 10.246305, 15.497098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.899424, 10.017677, 15.525905>,  <10.703251, 9.880501, 15.543189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.899424, 10.017677, 15.525905>,  <11.226378, 10.246305, 15.497098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.899424, 10.017677, 15.525905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493708, 0.759426, 0.423704,
		-0.296868, 0.310775, -0.902933,
		-0.817387, -0.571569, 0.072017,
		10.654207, 9.846207, 15.547510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.725391, 10.564753, 15.108595>,  <11.226378, 10.246305, 15.497098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.725391, 10.564753, 15.108595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556651, 10.341856, 15.394678>,  <10.455407, 10.208117, 15.566328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556651, 10.341856, 15.394678>,  <10.725391, 10.564753, 15.108595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.556651, 10.341856, 15.394678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321353, 0.829519, 0.456761,
		-0.847805, -0.037149, -0.529005,
		-0.421851, -0.557242, 0.715208,
		10.430096, 10.174684, 15.609241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.998418, 10.675625, 15.166298>,  <10.725391, 10.564753, 15.108595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.998418, 10.675625, 15.166298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.074575, 10.517428, 15.525705>,  <10.120270, 10.422510, 15.741350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.074575, 10.517428, 15.525705>,  <9.998418, 10.675625, 15.166298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.074575, 10.517428, 15.525705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385348, 0.811694, 0.438930,
		-0.902916, -0.429812, 0.002140,
		0.190394, -0.395492, 0.898519,
		10.131694, 10.398781, 15.795261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381042, 10.777690, 15.517928>,  <9.998418, 10.675625, 15.166298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381042, 10.777690, 15.517928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641089, 10.714900, 15.815304>,  <9.797118, 10.677226, 15.993730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641089, 10.714900, 15.815304>,  <9.381042, 10.777690, 15.517928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.641089, 10.714900, 15.815304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376102, 0.783678, 0.494364,
		-0.660220, -0.601005, 0.450446,
		0.650120, -0.156975, 0.743440,
		9.836125, 10.667808, 16.038336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.063200, 10.898098, 16.029341>,  <9.381042, 10.777690, 15.517928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.063200, 10.898098, 16.029341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425243, 10.942447, 16.193529>,  <9.642469, 10.969056, 16.292042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425243, 10.942447, 16.193529>,  <9.063200, 10.898098, 16.029341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.425243, 10.942447, 16.193529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348623, 0.746164, 0.567188,
		-0.243393, -0.656466, 0.714012,
		0.905109, 0.110871, 0.410470,
		9.696776, 10.975708, 16.316669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.960451, 10.979890, 16.767559>,  <9.063200, 10.898098, 16.029341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.960451, 10.979890, 16.767559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.326481, 11.119603, 16.686920>,  <9.546099, 11.203431, 16.638536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.326481, 11.119603, 16.686920>,  <8.960451, 10.979890, 16.767559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.326481, 11.119603, 16.686920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211661, 0.841458, 0.497140,
		0.343276, -0.412251, 0.843926,
		0.915075, 0.349282, -0.201595,
		9.601004, 11.224388, 16.626442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.221530, 11.141084, 17.402880>,  <8.960451, 10.979890, 16.767559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.221530, 11.141084, 17.402880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.457383, 11.333770, 17.143562>,  <9.598895, 11.449382, 16.987972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.457383, 11.333770, 17.143562>,  <9.221530, 11.141084, 17.402880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.457383, 11.333770, 17.143562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045045, 0.821033, 0.569102,
		0.806414, -0.306359, 0.505808,
		0.589634, 0.481715, -0.648292,
		9.634274, 11.478285, 16.949074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.650014, 11.390529, 17.775560>,  <9.221530, 11.141084, 17.402880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.650014, 11.390529, 17.775560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.661554, 11.616110, 17.445440>,  <9.668478, 11.751459, 17.247368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.661554, 11.616110, 17.445440>,  <9.650014, 11.390529, 17.775560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.661554, 11.616110, 17.445440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018306, 0.825806, 0.563658,
		0.999416, -0.001153, 0.034148,
		0.028850, 0.563953, -0.825302,
		9.670209, 11.785295, 17.197849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.099872, 11.867257, 17.968958>,  <9.650014, 11.390529, 17.775560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.099872, 11.867257, 17.968958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.925675, 12.043050, 17.654709>,  <9.821157, 12.148525, 17.466160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.925675, 12.043050, 17.654709>,  <10.099872, 11.867257, 17.968958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.925675, 12.043050, 17.654709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168573, 0.897102, 0.408400,
		0.884268, 0.045420, -0.464765,
		-0.435491, 0.439482, -0.785623,
		9.795028, 12.174894, 17.419022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.337209, 12.572124, 17.890621>,  <10.099872, 11.867257, 17.968958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.337209, 12.572124, 17.890621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.013006, 12.594230, 17.657375>,  <9.818484, 12.607492, 17.517427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.013006, 12.594230, 17.657375>,  <10.337209, 12.572124, 17.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.013006, 12.594230, 17.657375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086979, 0.973146, 0.213125,
		0.579236, 0.223458, -0.783934,
		-0.810506, 0.055263, -0.583117,
		9.769855, 12.610808, 17.482441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.288858, 13.344104, 17.569510>,  <10.337209, 12.572124, 17.890621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.288858, 13.344104, 17.569510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.919304, 13.193763, 17.540749>,  <9.697572, 13.103558, 17.523493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.919304, 13.193763, 17.540749>,  <10.288858, 13.344104, 17.569510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.919304, 13.193763, 17.540749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366697, 0.923274, -0.114452,
		0.109402, -0.079374, -0.990823,
		-0.923885, -0.375853, -0.071902,
		9.642138, 13.081007, 17.519178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.016008, 13.722278, 17.020870>,  <10.288858, 13.344104, 17.569510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.016008, 13.722278, 17.020870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.724669, 13.563896, 17.244558>,  <9.549866, 13.468867, 17.378771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.724669, 13.563896, 17.244558>,  <10.016008, 13.722278, 17.020870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.724669, 13.563896, 17.244558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542668, 0.831623, -0.117960,
		-0.418356, -0.389388, -0.820582,
		-0.728347, -0.395955, 0.559223,
		9.506166, 13.445109, 17.412325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.539613, 13.882487, 16.694124>,  <10.016008, 13.722278, 17.020870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.539613, 13.882487, 16.694124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.370703, 13.824016, 17.051966>,  <9.269357, 13.788933, 17.266670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.370703, 13.824016, 17.051966>,  <9.539613, 13.882487, 16.694124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.370703, 13.824016, 17.051966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326842, 0.945079, 0.000148,
		-0.845493, -0.292331, -0.446861,
		-0.422276, -0.146178, 0.894603,
		9.244020, 13.780162, 17.320347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.850196, 14.163083, 16.713785>,  <9.539613, 13.882487, 16.694124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.850196, 14.163083, 16.713785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.978601, 14.147816, 17.092308>,  <9.055645, 14.138655, 17.319422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.978601, 14.147816, 17.092308>,  <8.850196, 14.163083, 16.713785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.978601, 14.147816, 17.092308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024291, 0.998527, 0.048516,
		-0.946763, -0.038561, 0.319613,
		0.321013, -0.038169, 0.946305,
		9.074905, 14.136365, 17.376200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.461599, 14.646515, 17.038586>,  <8.850196, 14.163083, 16.713785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.461599, 14.646515, 17.038586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.778213, 14.590514, 17.276535>,  <8.968181, 14.556913, 17.419304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.778213, 14.590514, 17.276535>,  <8.461599, 14.646515, 17.038586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.778213, 14.590514, 17.276535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092292, 0.989626, 0.110105,
		-0.604116, -0.032250, 0.796243,
		0.791534, -0.140003, 0.594873,
		9.015673, 14.548513, 17.454996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.281303, 15.089855, 17.671558>,  <8.461599, 14.646515, 17.038586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.281303, 15.089855, 17.671558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.676470, 15.031027, 17.652002>,  <8.913569, 14.995729, 17.640268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.676470, 15.031027, 17.652002>,  <8.281303, 15.089855, 17.671558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.676470, 15.031027, 17.652002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137542, 0.977357, -0.160799,
		0.071434, 0.152131, 0.985775,
		0.987917, -0.147072, -0.048892,
		8.972845, 14.986905, 17.637335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.566414, 15.668039, 18.018009>,  <8.281303, 15.089855, 17.671558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.566414, 15.668039, 18.018009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.875908, 15.530838, 17.804962>,  <9.061604, 15.448518, 17.677134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.875908, 15.530838, 17.804962>,  <8.566414, 15.668039, 18.018009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.875908, 15.530838, 17.804962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271079, 0.939145, -0.211005,
		0.572582, 0.018880, 0.819630,
		0.773735, -0.343002, -0.532619,
		9.108028, 15.427938, 17.645176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.208330, 15.915480, 18.318394>,  <8.566414, 15.668039, 18.018009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.208330, 15.915480, 18.318394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.297271, 15.859046, 17.932512>,  <9.350636, 15.825186, 17.700983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.297271, 15.859046, 17.932512>,  <9.208330, 15.915480, 18.318394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.297271, 15.859046, 17.932512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341214, 0.938160, -0.058558,
		0.913309, -0.316150, 0.256742,
		0.222352, -0.141085, -0.964704,
		9.363976, 15.816721, 17.643101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.770301, 16.209446, 18.269299>,  <9.208330, 15.915480, 18.318394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.770301, 16.209446, 18.269299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.687413, 16.174223, 17.879570>,  <9.637680, 16.153090, 17.645733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.687413, 16.174223, 17.879570>,  <9.770301, 16.209446, 18.269299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.687413, 16.174223, 17.879570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317683, 0.935910, -0.152153,
		0.925277, -0.341054, -0.165965,
		-0.207221, -0.088059, -0.974323,
		9.625247, 16.147804, 17.587273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.371198, 16.578213, 18.026745>,  <9.770301, 16.209446, 18.269299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.371198, 16.578213, 18.026745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.718199, 16.551973, 18.223980>,  <10.926399, 16.536230, 18.342321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.718199, 16.551973, 18.223980>,  <10.371198, 16.578213, 18.026745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.718199, 16.551973, 18.223980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045203, 0.976769, 0.209474,
		-0.495373, -0.204008, 0.844385,
		0.867504, -0.065599, 0.493087,
		10.978450, 16.532293, 18.371906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.416722, 16.133644, 18.607306>,  <10.371198, 16.578213, 18.026745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.416722, 16.133644, 18.607306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.191504, 15.862865, 18.417686>,  <10.056373, 15.700397, 18.303915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.191504, 15.862865, 18.417686>,  <10.416722, 16.133644, 18.607306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.191504, 15.862865, 18.417686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813182, -0.556093, -0.171740,
		-0.147354, -0.482183, 0.863589,
		-0.563046, -0.676949, -0.474046,
		10.022590, 15.659781, 18.275473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.828351, 15.857398, 19.113514>,  <10.416722, 16.133644, 18.607306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.828351, 15.857398, 19.113514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.793856, 15.699783, 19.479530>,  <10.773158, 15.605214, 19.699141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.793856, 15.699783, 19.479530>,  <10.828351, 15.857398, 19.113514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.793856, 15.699783, 19.479530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717414, -0.661857, -0.217399,
		0.691289, 0.637714, 0.339766,
		-0.086238, -0.394038, 0.915039,
		10.767984, 15.581572, 19.754042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.497067, 15.849091, 19.137936>,  <10.828351, 15.857398, 19.113514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.497067, 15.849091, 19.137936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.339858, 15.620983, 19.426470>,  <11.245532, 15.484118, 19.599590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.339858, 15.620983, 19.426470>,  <11.497067, 15.849091, 19.137936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.339858, 15.620983, 19.426470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804519, -0.593140, -0.030572,
		0.445288, 0.568313, 0.691910,
		-0.393025, -0.570268, 0.721336,
		11.221951, 15.449903, 19.642870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.977240, 15.953951, 19.712898>,  <11.497067, 15.849091, 19.137936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.977240, 15.953951, 19.712898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.790601, 15.605129, 19.771967>,  <11.678617, 15.395836, 19.807407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.790601, 15.605129, 19.771967>,  <11.977240, 15.953951, 19.712898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.790601, 15.605129, 19.771967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859023, -0.486573, -0.159138,
		0.210630, 0.052598, 0.976150,
		-0.466598, -0.872055, 0.147670,
		11.650621, 15.343513, 19.816267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.241223, 15.652154, 20.301172>,  <11.977240, 15.953951, 19.712898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.241223, 15.652154, 20.301172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110639, 15.373991, 20.045099>,  <12.032288, 15.207093, 19.891457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110639, 15.373991, 20.045099>,  <12.241223, 15.652154, 20.301172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110639, 15.373991, 20.045099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912683, -0.408067, -0.022155,
		-0.245830, -0.591514, 0.767905,
		-0.326462, -0.695408, -0.640180,
		12.012700, 15.165369, 19.853045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.322366, 14.992223, 20.676863>,  <12.241223, 15.652154, 20.301172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.322366, 14.992223, 20.676863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.332584, 14.994939, 20.277002>,  <12.338716, 14.996569, 20.037086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.332584, 14.994939, 20.277002>,  <12.322366, 14.992223, 20.676863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.332584, 14.994939, 20.277002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945751, -0.324150, 0.021966,
		-0.323888, -0.945982, -0.014703,
		0.025546, 0.006791, -0.999650,
		12.340248, 14.996976, 19.977108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.085329, 14.281923, 20.446836>,  <12.322366, 14.992223, 20.676863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.085329, 14.281923, 20.446836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381133, 14.514569, 20.311279>,  <12.558616, 14.654157, 20.229946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381133, 14.514569, 20.311279>,  <12.085329, 14.281923, 20.446836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381133, 14.514569, 20.311279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673120, -0.643226, 0.364924,
		-0.005738, -0.497980, -0.867170,
		0.739511, 0.581615, -0.338891,
		12.602986, 14.689054, 20.209612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.602109, 13.832763, 20.183559>,  <12.085329, 14.281923, 20.446836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.602109, 13.832763, 20.183559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805429, 14.171828, 20.244349>,  <12.927422, 14.375268, 20.280823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805429, 14.171828, 20.244349>,  <12.602109, 13.832763, 20.183559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.805429, 14.171828, 20.244349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781550, -0.528175, 0.331978,
		0.361675, -0.049970, -0.930964,
		0.508301, 0.847664, 0.151974,
		12.957920, 14.426127, 20.289940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.249104, 13.631136, 20.037457>,  <12.602109, 13.832763, 20.183559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.249104, 13.631136, 20.037457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300923, 13.967046, 20.248358>,  <13.332015, 14.168591, 20.374899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300923, 13.967046, 20.248358>,  <13.249104, 13.631136, 20.037457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.300923, 13.967046, 20.248358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783957, -0.412328, 0.464108,
		0.607148, 0.353221, -0.711763,
		0.129548, 0.839774, 0.527254,
		13.339787, 14.218978, 20.406534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893629, 13.877639, 19.868986>,  <13.249104, 13.631136, 20.037457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893629, 13.877639, 19.868986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.791785, 14.034968, 20.222363>,  <13.730680, 14.129366, 20.434389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.791785, 14.034968, 20.222363>,  <13.893629, 13.877639, 19.868986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791785, 14.034968, 20.222363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711370, -0.542663, 0.446621,
		0.655078, 0.742167, -0.141633,
		-0.254609, 0.393325, 0.883442,
		13.715403, 14.152966, 20.487394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495993, 14.083092, 20.157249>,  <13.893629, 13.877639, 19.868986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495993, 14.083092, 20.157249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.260085, 14.050285, 20.478607>,  <14.118541, 14.030602, 20.671423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.260085, 14.050285, 20.478607>,  <14.495993, 14.083092, 20.157249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.260085, 14.050285, 20.478607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755472, -0.407568, 0.512982,
		0.285366, 0.909484, 0.302331,
		-0.589769, -0.082015, 0.803396,
		14.083155, 14.025681, 20.719625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942309, 14.227908, 20.649734>,  <14.495993, 14.083092, 20.157249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.942309, 14.227908, 20.649734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630077, 14.089811, 20.858158>,  <14.442739, 14.006953, 20.983213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630077, 14.089811, 20.858158>,  <14.942309, 14.227908, 20.649734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630077, 14.089811, 20.858158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604565, -0.205306, 0.769643,
		-0.158737, 0.915782, 0.368979,
		-0.780579, -0.345242, 0.521060,
		14.395904, 13.986238, 21.014477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937854, 14.478889, 21.311132>,  <14.942309, 14.227908, 20.649734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937854, 14.478889, 21.311132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.717186, 14.147523, 21.349884>,  <14.584785, 13.948703, 21.373135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.717186, 14.147523, 21.349884>,  <14.937854, 14.478889, 21.311132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717186, 14.147523, 21.349884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556542, -0.279105, 0.782535,
		-0.621226, 0.485618, 0.615022,
		-0.551669, -0.828417, 0.096879,
		14.551685, 13.898997, 21.378948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579640, 14.525577, 21.934082>,  <14.937854, 14.478889, 21.311132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579640, 14.525577, 21.934082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632411, 14.143728, 21.827278>,  <14.664074, 13.914619, 21.763195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632411, 14.143728, 21.827278>,  <14.579640, 14.525577, 21.934082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632411, 14.143728, 21.827278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538619, -0.157095, 0.827775,
		-0.832157, -0.253023, 0.493451,
		0.131927, -0.954621, -0.267010,
		14.671989, 13.857342, 21.747175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.337944, 14.184780, 22.449070>,  <14.579640, 14.525577, 21.934082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.337944, 14.184780, 22.449070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534945, 13.885237, 22.271687>,  <14.653145, 13.705511, 22.165257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534945, 13.885237, 22.271687>,  <14.337944, 14.184780, 22.449070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534945, 13.885237, 22.271687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505381, -0.168747, 0.846235,
		-0.708543, -0.640886, 0.295351,
		0.492501, -0.748859, -0.443456,
		14.682694, 13.660579, 22.138649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.304450, 13.611569, 22.858009>,  <14.337944, 14.184780, 22.449070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.304450, 13.611569, 22.858009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.633472, 13.540745, 22.641842>,  <14.830886, 13.498250, 22.512142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.633472, 13.540745, 22.641842>,  <14.304450, 13.611569, 22.858009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633472, 13.540745, 22.641842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459814, -0.352095, 0.815230,
		-0.334618, -0.919065, -0.208207,
		0.822558, -0.177054, -0.540416,
		14.880239, 13.487626, 22.479717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492435, 13.023989, 23.102287>,  <14.304450, 13.611569, 22.858009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492435, 13.023989, 23.102287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.814148, 13.196635, 22.938906>,  <15.007175, 13.300223, 22.840876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.814148, 13.196635, 22.938906>,  <14.492435, 13.023989, 23.102287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.814148, 13.196635, 22.938906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518285, -0.173245, 0.837477,
		0.290707, -0.885264, -0.363039,
		0.804283, 0.431617, -0.408456,
		15.055433, 13.326120, 22.816368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004300, 12.620122, 23.358112>,  <14.492435, 13.023989, 23.102287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004300, 12.620122, 23.358112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191972, 12.952170, 23.237600>,  <15.304575, 13.151400, 23.165293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191972, 12.952170, 23.237600>,  <15.004300, 12.620122, 23.358112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191972, 12.952170, 23.237600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517993, 0.017615, 0.855204,
		0.715230, -0.557305, -0.421732,
		0.469180, 0.830121, -0.301278,
		15.332726, 13.201207, 23.147217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722913, 12.544380, 23.464409>,  <15.004300, 12.620122, 23.358112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722913, 12.544380, 23.464409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.687049, 12.942509, 23.450012>,  <15.665530, 13.181386, 23.441374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.687049, 12.942509, 23.450012>,  <15.722913, 12.544380, 23.464409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.687049, 12.942509, 23.450012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511067, 0.076996, 0.856086,
		0.854852, 0.058362, -0.515579,
		-0.089660, 0.995322, -0.035993,
		15.660151, 13.241105, 23.439215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.392004, 12.896543, 23.535471>,  <15.722913, 12.544380, 23.464409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.392004, 12.896543, 23.535471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.133816, 13.185399, 23.634972>,  <15.978902, 13.358713, 23.694672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.133816, 13.185399, 23.634972>,  <16.392004, 12.896543, 23.535471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.133816, 13.185399, 23.634972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581711, 0.253747, 0.772803,
		0.494952, 0.643526, -0.583864,
		-0.645473, 0.722140, 0.248754,
		15.940174, 13.402041, 23.709599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886715, 13.506732, 23.732574>,  <16.392004, 12.896543, 23.535471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886715, 13.506732, 23.732574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528490, 13.539738, 23.907463>,  <16.313555, 13.559542, 24.012396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528490, 13.539738, 23.907463>,  <16.886715, 13.506732, 23.732574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528490, 13.539738, 23.907463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444387, 0.214853, 0.869689,
		-0.022176, 0.973154, -0.229082,
		-0.895561, 0.082515, 0.437221,
		16.259821, 13.564492, 24.038630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888260, 14.186362, 24.083683>,  <16.886715, 13.506732, 23.732574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888260, 14.186362, 24.083683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601082, 13.962293, 24.248974>,  <16.428774, 13.827850, 24.348148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601082, 13.962293, 24.248974>,  <16.888260, 14.186362, 24.083683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601082, 13.962293, 24.248974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314090, 0.269074, 0.910465,
		-0.621208, 0.783456, -0.017235,
		-0.717947, -0.560175, 0.413227,
		16.385698, 13.794240, 24.372942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678150, 14.688689, 24.605333>,  <16.888260, 14.186362, 24.083683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678150, 14.688689, 24.605333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539621, 14.326327, 24.702822>,  <16.456505, 14.108911, 24.761314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539621, 14.326327, 24.702822>,  <16.678150, 14.688689, 24.605333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539621, 14.326327, 24.702822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293933, 0.141934, 0.945229,
		-0.890879, 0.398990, 0.217121,
		-0.346320, -0.905904, 0.243722,
		16.435726, 14.054556, 24.775938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320652, 14.861360, 25.183821>,  <16.678150, 14.688689, 24.605333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.320652, 14.861360, 25.183821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.356680, 14.462991, 25.185848>,  <16.378296, 14.223969, 25.187065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.356680, 14.462991, 25.185848>,  <16.320652, 14.861360, 25.183821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.356680, 14.462991, 25.185848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149918, 0.018589, 0.988524,
		-0.984587, -0.088274, 0.150981,
		0.090068, -0.995923, 0.005069,
		16.383699, 14.164214, 25.187368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041056, 14.658276, 25.793642>,  <16.320652, 14.861360, 25.183821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041056, 14.658276, 25.793642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.294207, 14.363428, 25.698883>,  <16.446096, 14.186520, 25.642029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.294207, 14.363428, 25.698883>,  <16.041056, 14.658276, 25.793642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.294207, 14.363428, 25.698883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284995, -0.062701, 0.956476,
		-0.719891, -0.672847, 0.170394,
		0.632878, -0.737120, -0.236896,
		16.484070, 14.142292, 25.627813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834830, 14.063180, 26.260042>,  <16.041056, 14.658276, 25.793642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834830, 14.063180, 26.260042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.220636, 13.996262, 26.178337>,  <16.452120, 13.956111, 26.129314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.220636, 13.996262, 26.178337>,  <15.834830, 14.063180, 26.260042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220636, 13.996262, 26.178337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183326, -0.132411, 0.974094,
		-0.190012, -0.976974, -0.097042,
		0.964514, -0.167300, -0.204265,
		16.509991, 13.946073, 26.117058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009451, 13.513881, 26.733091>,  <15.834830, 14.063180, 26.260042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009451, 13.513881, 26.733091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372425, 13.631955, 26.613476>,  <16.590210, 13.702800, 26.541706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372425, 13.631955, 26.613476>,  <16.009451, 13.513881, 26.733091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372425, 13.631955, 26.613476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383445, -0.290681, 0.876627,
		0.171842, -0.910149, -0.376962,
		0.907436, 0.295186, -0.299041,
		16.644655, 13.720510, 26.523764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396952, 12.973138, 26.931053>,  <16.009451, 13.513881, 26.733091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396952, 12.973138, 26.931053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.628128, 13.292429, 26.863152>,  <16.766834, 13.484003, 26.822411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.628128, 13.292429, 26.863152>,  <16.396952, 12.973138, 26.931053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628128, 13.292429, 26.863152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413278, -0.106912, 0.904307,
		0.703693, -0.592793, -0.391678,
		0.577942, 0.798227, -0.169756,
		16.801510, 13.531897, 26.812225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154604, 12.820054, 27.098070>,  <16.396952, 12.973138, 26.931053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.154604, 12.820054, 27.098070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.130415, 13.218379, 27.125496>,  <17.115902, 13.457374, 27.141951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.130415, 13.218379, 27.125496>,  <17.154604, 12.820054, 27.098070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.130415, 13.218379, 27.125496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542314, -0.024891, 0.839807,
		0.837997, 0.087968, -0.538538,
		-0.060471, 0.995812, 0.068565,
		17.112274, 13.517122, 27.146065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803186, 13.018856, 27.377014>,  <17.154604, 12.820054, 27.098070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.803186, 13.018856, 27.377014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.583229, 13.348198, 27.433165>,  <17.451254, 13.545803, 27.466854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.583229, 13.348198, 27.433165>,  <17.803186, 13.018856, 27.377014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583229, 13.348198, 27.433165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476523, 0.171235, 0.862325,
		0.685961, 0.541079, -0.486508,
		-0.549893, 0.823354, 0.140376,
		17.418261, 13.595204, 27.475277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282507, 13.509983, 27.549120>,  <17.803186, 13.018856, 27.377014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.282507, 13.509983, 27.549120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.942371, 13.654596, 27.702074>,  <17.738291, 13.741364, 27.793846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.942371, 13.654596, 27.702074>,  <18.282507, 13.509983, 27.549120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.942371, 13.654596, 27.702074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467328, 0.184744, 0.864566,
		0.241925, 0.913873, -0.326049,
		-0.850339, 0.361532, 0.382385,
		17.687269, 13.763056, 27.816790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437765, 14.165851, 27.942034>,  <18.282507, 13.509983, 27.549120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.437765, 14.165851, 27.942034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.083202, 14.037603, 28.075594>,  <17.870464, 13.960655, 28.155729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.083202, 14.037603, 28.075594>,  <18.437765, 14.165851, 27.942034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083202, 14.037603, 28.075594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276192, 0.212548, 0.937305,
		-0.371487, 0.923053, -0.099852,
		-0.886406, -0.320618, 0.333898,
		17.817280, 13.941418, 28.175764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199413, 14.674326, 28.461761>,  <18.437765, 14.165851, 27.942034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199413, 14.674326, 28.461761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.002195, 14.338776, 28.554018>,  <17.883865, 14.137445, 28.609373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.002195, 14.338776, 28.554018>,  <18.199413, 14.674326, 28.461761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002195, 14.338776, 28.554018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133868, 0.188799, 0.972849,
		-0.859645, 0.510531, 0.019213,
		-0.493042, -0.838876, 0.230643,
		17.854282, 14.087112, 28.623211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723755, 14.918801, 28.980618>,  <18.199413, 14.674326, 28.461761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723755, 14.918801, 28.980618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.728868, 14.520962, 29.021820>,  <17.731936, 14.282258, 29.046541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.728868, 14.520962, 29.021820>,  <17.723755, 14.918801, 28.980618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.728868, 14.520962, 29.021820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022868, 0.103279, 0.994390,
		-0.999657, -0.010356, 0.024065,
		0.012783, -0.994599, 0.103007,
		17.732704, 14.222582, 29.052723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160969, 14.741542, 29.311512>,  <17.723755, 14.918801, 28.980618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160969, 14.741542, 29.311512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415859, 14.436785, 29.357924>,  <17.568794, 14.253931, 29.385771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415859, 14.436785, 29.357924>,  <17.160969, 14.741542, 29.311512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415859, 14.436785, 29.357924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089844, 0.222970, 0.970676,
		-0.765422, -0.608116, 0.210534,
		0.637226, -0.761892, 0.116031,
		17.607027, 14.208218, 29.392733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958603, 14.356271, 29.871212>,  <17.160969, 14.741542, 29.311512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958603, 14.356271, 29.871212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330111, 14.209076, 29.853430>,  <17.553015, 14.120759, 29.842760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330111, 14.209076, 29.853430>,  <16.958603, 14.356271, 29.871212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330111, 14.209076, 29.853430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051553, 0.009468, 0.998625,
		-0.367062, -0.929782, 0.027765,
		0.928767, -0.367989, -0.044458,
		17.608740, 14.098680, 29.840092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018953, 13.757738, 30.425005>,  <16.958603, 14.356271, 29.871212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018953, 13.757738, 30.425005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.395504, 13.872439, 30.353916>,  <17.621433, 13.941260, 30.311262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.395504, 13.872439, 30.353916>,  <17.018953, 13.757738, 30.425005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.395504, 13.872439, 30.353916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194964, -0.032497, 0.980272,
		0.275320, -0.957453, -0.086498,
		0.941375, 0.286753, -0.177722,
		17.677917, 13.958465, 30.300600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.346891, 13.378867, 30.731163>,  <17.018953, 13.757738, 30.425005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.346891, 13.378867, 30.731163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617201, 13.672212, 30.701464>,  <17.779387, 13.848218, 30.683643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617201, 13.672212, 30.701464>,  <17.346891, 13.378867, 30.731163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617201, 13.672212, 30.701464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140634, -0.029394, 0.989625,
		0.723570, -0.679204, -0.122999,
		0.675773, 0.733360, -0.074251,
		17.819933, 13.892220, 30.679188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915951, 13.097845, 31.144396>,  <17.346891, 13.378867, 30.731163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915951, 13.097845, 31.144396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.000546, 13.485725, 31.095478>,  <18.051302, 13.718453, 31.066128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.000546, 13.485725, 31.095478>,  <17.915951, 13.097845, 31.144396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.000546, 13.485725, 31.095478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260097, 0.064778, 0.963407,
		0.942138, -0.235555, -0.238516,
		0.211485, 0.969700, -0.122297,
		18.063992, 13.776635, 31.058788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476124, 13.186131, 31.697533>,  <17.915951, 13.097845, 31.144396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.476124, 13.186131, 31.697533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393377, 13.570807, 31.625576>,  <18.343729, 13.801612, 31.582403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393377, 13.570807, 31.625576>,  <18.476124, 13.186131, 31.697533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.393377, 13.570807, 31.625576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331510, 0.241889, 0.911916,
		0.920493, 0.129009, -0.368849,
		-0.206866, 0.961689, -0.179890,
		18.331318, 13.859313, 31.571609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.102215, 13.554842, 31.727646>,  <18.476124, 13.186131, 31.697533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.102215, 13.554842, 31.727646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800438, 13.809896, 31.789915>,  <18.619371, 13.962929, 31.827276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800438, 13.809896, 31.789915>,  <19.102215, 13.554842, 31.727646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800438, 13.809896, 31.789915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407329, 0.268859, 0.872810,
		0.514681, 0.721897, -0.462567,
		-0.754445, 0.637636, 0.155673,
		18.574104, 14.001187, 31.836617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.373560, 14.207577, 31.774036>,  <19.102215, 13.554842, 31.727646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.373560, 14.207577, 31.774036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022327, 14.241982, 31.962324>,  <18.811588, 14.262626, 32.075298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022327, 14.241982, 31.962324>,  <19.373560, 14.207577, 31.774036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022327, 14.241982, 31.962324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460075, 0.422190, 0.781080,
		-0.131548, 0.902417, -0.410290,
		-0.878081, 0.086015, 0.470718,
		18.758904, 14.267787, 32.103539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.341270, 14.938052, 32.032364>,  <19.373560, 14.207577, 31.774036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.341270, 14.938052, 32.032364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.103971, 14.721190, 32.270397>,  <18.961592, 14.591073, 32.413219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.103971, 14.721190, 32.270397>,  <19.341270, 14.938052, 32.032364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.103971, 14.721190, 32.270397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312780, 0.525908, 0.790942,
		-0.741774, 0.655354, -0.142417,
		-0.593245, -0.542155, 0.595087,
		18.925999, 14.558544, 32.448925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189428, 15.385569, 32.593021>,  <19.341270, 14.938052, 32.032364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189428, 15.385569, 32.593021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041731, 15.043303, 32.738071>,  <18.953112, 14.837945, 32.825104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041731, 15.043303, 32.738071>,  <19.189428, 15.385569, 32.593021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041731, 15.043303, 32.738071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023451, 0.381501, 0.924071,
		-0.929036, 0.349713, -0.120801,
		-0.369245, -0.855662, 0.362630,
		18.930958, 14.786605, 32.846859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444921, 15.491792, 32.941277>,  <19.189428, 15.385569, 32.593021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444921, 15.491792, 32.941277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625858, 15.170678, 33.096672>,  <18.734421, 14.978010, 33.189911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625858, 15.170678, 33.096672>,  <18.444921, 15.491792, 32.941277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.625858, 15.170678, 33.096672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021124, 0.445127, 0.895219,
		-0.891594, -0.396739, 0.218308,
		0.452342, -0.802783, 0.388492,
		18.761560, 14.929843, 33.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.196972, 15.407352, 33.715824>,  <18.444921, 15.491792, 32.941277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.196972, 15.407352, 33.715824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532703, 15.191761, 33.687450>,  <18.734142, 15.062407, 33.670425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532703, 15.191761, 33.687450>,  <18.196972, 15.407352, 33.715824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532703, 15.191761, 33.687450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184299, 0.159367, 0.969864,
		-0.511431, -0.827106, 0.233094,
		0.839328, -0.538978, -0.070930,
		18.784502, 15.030067, 33.666172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.230391, 14.993642, 34.375183>,  <18.196972, 15.407352, 33.715824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.230391, 14.993642, 34.375183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.598299, 14.990005, 34.218243>,  <18.819044, 14.987822, 34.124081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.598299, 14.990005, 34.218243>,  <18.230391, 14.993642, 34.375183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.598299, 14.990005, 34.218243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389577, 0.141991, 0.909983,
		0.047433, -0.989826, 0.134143,
		0.919772, -0.009096, -0.392349,
		18.874231, 14.987276, 34.100536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597010, 14.521887, 34.634464>,  <18.230391, 14.993642, 34.375183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597010, 14.521887, 34.634464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889387, 14.766154, 34.512608>,  <19.064814, 14.912715, 34.439495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889387, 14.766154, 34.512608>,  <18.597010, 14.521887, 34.634464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889387, 14.766154, 34.512608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407872, -0.033023, 0.912441,
		0.547139, -0.791198, -0.273213,
		0.730944, 0.610668, -0.304639,
		19.108671, 14.949355, 34.421215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.034765, 14.362446, 35.077904>,  <18.597010, 14.521887, 34.634464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.034765, 14.362446, 35.077904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.175644, 14.693699, 34.903477>,  <19.260172, 14.892451, 34.798820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.175644, 14.693699, 34.903477>,  <19.034765, 14.362446, 35.077904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.175644, 14.693699, 34.903477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579972, 0.172565, 0.796150,
		0.734568, -0.533307, -0.419517,
		0.352198, 0.828134, -0.436064,
		19.281303, 14.942139, 34.772659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.822527, 14.373053, 34.987244>,  <19.034765, 14.362446, 35.077904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.822527, 14.373053, 34.987244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.675695, 14.742170, 35.034069>,  <19.587597, 14.963641, 35.062164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.675695, 14.742170, 35.034069>,  <19.822527, 14.373053, 34.987244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.675695, 14.742170, 35.034069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645631, 0.162161, 0.746234,
		0.669636, 0.349509, -0.655310,
		-0.367081, 0.922793, 0.117065,
		19.565571, 15.019009, 35.069187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.317190, 15.003242, 35.081554>,  <19.822527, 14.373053, 34.987244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.317190, 15.003242, 35.081554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975704, 15.035515, 35.287338>,  <19.770813, 15.054878, 35.410809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975704, 15.035515, 35.287338>,  <20.317190, 15.003242, 35.081554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975704, 15.035515, 35.287338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520420, 0.166985, 0.837424,
		-0.018342, 0.982653, -0.184545,
		-0.853713, 0.080681, 0.514455,
		19.719589, 15.059719, 35.441673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610079, 15.424116, 35.588169>,  <20.317190, 15.003242, 35.081554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610079, 15.424116, 35.588169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.273207, 15.266758, 35.735664>,  <20.071083, 15.172343, 35.824162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.273207, 15.266758, 35.735664>,  <20.610079, 15.424116, 35.588169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.273207, 15.266758, 35.735664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399912, 0.002981, 0.916549,
		-0.361666, 0.919364, 0.154813,
		-0.842181, -0.393396, 0.368743,
		20.020552, 15.148739, 35.846287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308577, 15.803041, 36.131775>,  <20.610079, 15.424116, 35.588169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308577, 15.803041, 36.131775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.228388, 15.414134, 36.179951>,  <20.180275, 15.180790, 36.208855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.228388, 15.414134, 36.179951>,  <20.308577, 15.803041, 36.131775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.228388, 15.414134, 36.179951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347851, 0.044286, 0.936503,
		-0.915866, 0.229637, 0.329326,
		-0.200471, -0.972268, 0.120440,
		20.168247, 15.122454, 36.216084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673727, 16.458050, 36.089382>,  <20.308577, 15.803041, 36.131775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673727, 16.458050, 36.089382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.327223, 16.561331, 36.260464>,  <20.119320, 16.623299, 36.363113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.327223, 16.561331, 36.260464>,  <20.673727, 16.458050, 36.089382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327223, 16.561331, 36.260464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134055, 0.944828, -0.298881,
		-0.481275, -0.201573, -0.853079,
		-0.866258, 0.258203, 0.427700,
		20.067345, 16.638792, 36.388775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167000, 16.845036, 35.584240>,  <20.673727, 16.458050, 36.089382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167000, 16.845036, 35.584240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.130840, 16.944916, 35.969879>,  <20.109144, 17.004845, 36.201263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.130840, 16.944916, 35.969879>,  <20.167000, 16.845036, 35.584240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130840, 16.944916, 35.969879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204714, 0.952044, -0.227386,
		-0.974639, 0.176808, -0.137182,
		-0.090400, 0.249702, 0.964094,
		20.103720, 17.019827, 36.259106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071808, 17.470156, 35.410290>,  <20.167000, 16.845036, 35.584240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071808, 17.470156, 35.410290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186762, 17.473730, 35.793400>,  <20.255733, 17.475874, 36.023266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186762, 17.473730, 35.793400>,  <20.071808, 17.470156, 35.410290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186762, 17.473730, 35.793400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244740, 0.966077, -0.082448,
		-0.926020, 0.258100, 0.275448,
		0.287383, 0.008935, 0.957774,
		20.272978, 17.476410, 36.080730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223249, 17.482721, 34.725414>,  <20.071808, 17.470156, 35.410290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223249, 17.482721, 34.725414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463892, 17.163429, 34.737400>,  <20.608278, 16.971855, 34.744591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463892, 17.163429, 34.737400>,  <20.223249, 17.482721, 34.725414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463892, 17.163429, 34.737400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035664, -0.064319, -0.997292,
		0.797995, 0.598911, -0.067162,
		0.601609, -0.798229, 0.029967,
		20.644375, 16.923960, 34.746391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.232922, 17.883831, 34.118500>,  <20.223249, 17.482721, 34.725414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.232922, 17.883831, 34.118500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.360992, 17.536406, 33.967190>,  <20.437834, 17.327951, 33.876404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.360992, 17.536406, 33.967190>,  <20.232922, 17.883831, 34.118500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360992, 17.536406, 33.967190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026461, 0.407333, -0.912896,
		0.946988, 0.282278, 0.153401,
		0.320176, -0.868561, -0.378270,
		20.457045, 17.275837, 33.853710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724312, 18.055386, 33.527687>,  <20.232922, 17.883831, 34.118500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724312, 18.055386, 33.527687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.575531, 17.688028, 33.473717>,  <20.486261, 17.467613, 33.441334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.575531, 17.688028, 33.473717>,  <20.724312, 18.055386, 33.527687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.575531, 17.688028, 33.473717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066620, 0.171388, -0.982949,
		0.925858, -0.356623, -0.124932,
		-0.371954, -0.918393, -0.134922,
		20.463945, 17.412510, 33.433239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103985, 17.746061, 32.906872>,  <20.724312, 18.055386, 33.527687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103985, 17.746061, 32.906872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.749388, 17.562834, 32.933102>,  <20.536629, 17.452896, 32.948841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.749388, 17.562834, 32.933102>,  <21.103985, 17.746061, 32.906872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.749388, 17.562834, 32.933102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042941, -0.059664, -0.997294,
		0.460744, -0.886911, 0.033222,
		-0.886494, -0.458071, 0.065575,
		20.483440, 17.425413, 32.952774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.098572, 17.274612, 32.230228>,  <21.103985, 17.746061, 32.906872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.098572, 17.274612, 32.230228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.731703, 17.306103, 32.386482>,  <20.511581, 17.324997, 32.480236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.731703, 17.306103, 32.386482>,  <21.098572, 17.274612, 32.230228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.731703, 17.306103, 32.386482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357280, 0.271674, -0.893613,
		-0.176475, -0.959164, -0.221045,
		-0.917174, 0.078725, 0.390633,
		20.456551, 17.329720, 32.503674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666842, 16.858572, 31.768707>,  <21.098572, 17.274612, 32.230228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666842, 16.858572, 31.768707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439466, 17.130867, 31.953522>,  <20.303041, 17.294245, 32.064411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439466, 17.130867, 31.953522>,  <20.666842, 16.858572, 31.768707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439466, 17.130867, 31.953522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429700, 0.233256, -0.872324,
		-0.701596, -0.694398, 0.159922,
		-0.568437, 0.680738, 0.462034,
		20.268936, 17.335089, 32.092133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022036, 16.761391, 31.490173>,  <20.666842, 16.858572, 31.768707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022036, 16.761391, 31.490173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969280, 17.131210, 31.633177>,  <19.937626, 17.353102, 31.718979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969280, 17.131210, 31.633177>,  <20.022036, 16.761391, 31.490173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969280, 17.131210, 31.633177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656377, 0.188809, -0.730424,
		-0.742815, -0.330995, 0.581952,
		-0.131890, 0.924550, 0.357508,
		19.929714, 17.408575, 31.740429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.285154, 16.870502, 31.334282>,  <20.022036, 16.761391, 31.490173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.285154, 16.870502, 31.334282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.426241, 17.232601, 31.429043>,  <19.510893, 17.449860, 31.485899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.426241, 17.232601, 31.429043>,  <19.285154, 16.870502, 31.334282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.426241, 17.232601, 31.429043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568587, 0.408416, -0.714076,
		-0.743170, 0.117164, 0.658765,
		0.352715, 0.905245, 0.236904,
		19.532055, 17.504175, 31.500114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.679123, 17.325993, 31.399057>,  <19.285154, 16.870502, 31.334282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.679123, 17.325993, 31.399057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979446, 17.584681, 31.345341>,  <19.159641, 17.739893, 31.313110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979446, 17.584681, 31.345341>,  <18.679123, 17.325993, 31.399057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979446, 17.584681, 31.345341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515279, 0.446283, -0.731655,
		-0.413245, 0.618532, 0.668317,
		0.750810, 0.646722, -0.134292,
		19.204689, 17.778698, 31.305054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403454, 17.944000, 31.270866>,  <18.679123, 17.325993, 31.399057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403454, 17.944000, 31.270866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.773727, 18.017677, 31.138697>,  <18.995892, 18.061884, 31.059395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.773727, 18.017677, 31.138697>,  <18.403454, 17.944000, 31.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.773727, 18.017677, 31.138697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374824, 0.564637, -0.735318,
		0.051129, 0.804524, 0.591716,
		0.925685, 0.184193, -0.330425,
		19.051434, 18.072935, 31.039570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573545, 18.694712, 31.288090>,  <18.403454, 17.944000, 31.270866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573545, 18.694712, 31.288090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812342, 18.547390, 31.003006>,  <18.955620, 18.458998, 30.831955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812342, 18.547390, 31.003006>,  <18.573545, 18.694712, 31.288090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812342, 18.547390, 31.003006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308224, 0.714909, -0.627617,
		0.740676, 0.594356, 0.313275,
		0.596991, -0.368302, -0.712710,
		18.991440, 18.436899, 30.789192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765455, 19.290249, 30.867792>,  <18.573545, 18.694712, 31.288090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.765455, 19.290249, 30.867792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.896297, 19.002653, 30.622499>,  <18.974802, 18.830095, 30.475323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.896297, 19.002653, 30.622499>,  <18.765455, 19.290249, 30.867792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896297, 19.002653, 30.622499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251151, 0.559450, -0.789898,
		0.911003, 0.412392, 0.002423,
		0.327103, -0.718991, -0.613233,
		18.994429, 18.786955, 30.438530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234873, 19.605236, 30.322081>,  <18.765455, 19.290249, 30.867792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234873, 19.605236, 30.322081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.059214, 19.262573, 30.213791>,  <18.953819, 19.056976, 30.148817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.059214, 19.262573, 30.213791>,  <19.234873, 19.605236, 30.322081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059214, 19.262573, 30.213791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205540, 0.389141, -0.897955,
		0.874588, -0.338689, -0.346967,
		-0.439147, -0.856656, -0.270724,
		18.927469, 19.005577, 30.132574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387375, 19.474390, 29.627396>,  <19.234873, 19.605236, 30.322081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387375, 19.474390, 29.627396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041510, 19.283972, 29.691566>,  <18.833990, 19.169722, 29.730068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041510, 19.283972, 29.691566>,  <19.387375, 19.474390, 29.627396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041510, 19.283972, 29.691566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286875, 0.205768, -0.935608,
		0.412383, -0.855008, -0.314486,
		-0.864664, -0.476047, 0.160425,
		18.782110, 19.141157, 29.739695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403801, 18.866453, 29.099939>,  <19.387375, 19.474390, 29.627396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403801, 18.866453, 29.099939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033834, 18.952021, 29.225649>,  <18.811853, 19.003361, 29.301075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033834, 18.952021, 29.225649>,  <19.403801, 18.866453, 29.099939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033834, 18.952021, 29.225649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338037, -0.084518, -0.937330,
		-0.173954, -0.973188, 0.150486,
		-0.924916, 0.213922, 0.314271,
		18.756359, 19.016197, 29.319931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.945869, 18.434198, 28.686378>,  <19.403801, 18.866453, 29.099939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.945869, 18.434198, 28.686378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.739119, 18.742321, 28.835758>,  <18.615068, 18.927195, 28.925386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.739119, 18.742321, 28.835758>,  <18.945869, 18.434198, 28.686378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.739119, 18.742321, 28.835758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448013, 0.128326, -0.884769,
		-0.729468, -0.624627, 0.278779,
		-0.516876, 0.770307, 0.373451,
		18.584055, 18.973413, 28.947794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245148, 18.316875, 28.563894>,  <18.945869, 18.434198, 28.686378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.245148, 18.316875, 28.563894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.302839, 18.711380, 28.596109>,  <18.337454, 18.948082, 28.615438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.302839, 18.711380, 28.596109>,  <18.245148, 18.316875, 28.563894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.302839, 18.711380, 28.596109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462485, 0.139137, -0.875642,
		-0.874818, 0.089044, 0.476198,
		0.144228, 0.986262, 0.080538,
		18.346107, 19.007259, 28.620270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559971, 18.700224, 28.642748>,  <18.245148, 18.316875, 28.563894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559971, 18.700224, 28.642748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872595, 18.865200, 28.455532>,  <18.060169, 18.964186, 28.343203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872595, 18.865200, 28.455532>,  <17.559971, 18.700224, 28.642748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872595, 18.865200, 28.455532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557280, 0.124405, -0.820952,
		-0.280366, 0.902451, 0.327073,
		0.781559, 0.412439, -0.468039,
		18.107063, 18.988932, 28.315121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358112, 19.430933, 28.403391>,  <17.559971, 18.700224, 28.642748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.358112, 19.430933, 28.403391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.672853, 19.312075, 28.187033>,  <17.861698, 19.240761, 28.057219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.672853, 19.312075, 28.187033>,  <17.358112, 19.430933, 28.403391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672853, 19.312075, 28.187033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557197, 0.034733, -0.829653,
		0.265314, 0.954200, -0.138237,
		0.786855, -0.297144, -0.540893,
		17.908911, 19.222931, 28.024765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222078, 19.811258, 27.797260>,  <17.358112, 19.430933, 28.403391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222078, 19.811258, 27.797260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523706, 19.560850, 27.717785>,  <17.704683, 19.410606, 27.670099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523706, 19.560850, 27.717785>,  <17.222078, 19.811258, 27.797260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523706, 19.560850, 27.717785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366134, -0.149516, -0.918472,
		0.545274, 0.765340, -0.341953,
		0.754071, -0.626019, -0.198690,
		17.749928, 19.373045, 27.658178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646658, 20.044470, 27.122507>,  <17.222078, 19.811258, 27.797260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646658, 20.044470, 27.122507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.700056, 19.653021, 27.185087>,  <17.732096, 19.418152, 27.222635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.700056, 19.653021, 27.185087>,  <17.646658, 20.044470, 27.122507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.700056, 19.653021, 27.185087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501129, -0.202852, -0.841262,
		0.855014, 0.033901, -0.517496,
		0.133495, -0.978622, 0.156452,
		17.740105, 19.359434, 27.232023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.992390, 19.816429, 26.612482>,  <17.646658, 20.044470, 27.122507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.992390, 19.816429, 26.612482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788235, 19.499874, 26.747070>,  <17.665741, 19.309942, 26.827824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788235, 19.499874, 26.747070>,  <17.992390, 19.816429, 26.612482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788235, 19.499874, 26.747070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281338, -0.216072, -0.934966,
		0.812621, -0.571857, -0.112367,
		-0.510388, -0.791387, 0.336470,
		17.635118, 19.262459, 26.848011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153322, 19.260073, 26.160313>,  <17.992390, 19.816429, 26.612482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153322, 19.260073, 26.160313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.831776, 19.105000, 26.340755>,  <17.638847, 19.011955, 26.449020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.831776, 19.105000, 26.340755>,  <18.153322, 19.260073, 26.160313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.831776, 19.105000, 26.340755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297517, -0.394647, -0.869332,
		0.515053, -0.833040, 0.201902,
		-0.803868, -0.387683, 0.451108,
		17.590614, 18.988695, 26.476088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220251, 18.692728, 25.852640>,  <18.153322, 19.260073, 26.160313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220251, 18.692728, 25.852640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.847649, 18.755600, 25.983845>,  <17.624086, 18.793324, 26.062567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.847649, 18.755600, 25.983845>,  <18.220251, 18.692728, 25.852640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847649, 18.755600, 25.983845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363068, -0.456075, -0.812513,
		0.021889, -0.875952, 0.481903,
		-0.931505, 0.157179, 0.328013,
		17.568197, 18.802753, 26.082249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848452, 18.102049, 25.749617>,  <18.220251, 18.692728, 25.852640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848452, 18.102049, 25.749617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553656, 18.367949, 25.798523>,  <17.376778, 18.527489, 25.827866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553656, 18.367949, 25.798523>,  <17.848452, 18.102049, 25.749617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553656, 18.367949, 25.798523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535062, -0.463274, -0.706460,
		-0.412980, -0.586073, 0.697113,
		-0.736991, 0.664752, 0.122263,
		17.332558, 18.567373, 25.835203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341213, 17.732187, 25.582903>,  <17.848452, 18.102049, 25.749617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.341213, 17.732187, 25.582903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.134459, 18.072847, 25.548223>,  <17.010406, 18.277245, 25.527416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.134459, 18.072847, 25.548223>,  <17.341213, 17.732187, 25.582903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.134459, 18.072847, 25.548223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405018, -0.332518, -0.851700,
		-0.754181, -0.405118, 0.516808,
		-0.516886, 0.851652, -0.086699,
		16.979393, 18.328342, 25.522215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709641, 17.502264, 25.381727>,  <17.341213, 17.732187, 25.582903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709641, 17.502264, 25.381727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715250, 17.888426, 25.277576>,  <16.718616, 18.120123, 25.215086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715250, 17.888426, 25.277576>,  <16.709641, 17.502264, 25.381727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715250, 17.888426, 25.277576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512958, -0.216579, -0.830643,
		-0.858299, 0.145212, 0.492175,
		0.014025, 0.965405, -0.260377,
		16.719458, 18.178047, 25.199463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023283, 17.670153, 25.199158>,  <16.709641, 17.502264, 25.381727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023283, 17.670153, 25.199158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259554, 17.933683, 25.012804>,  <16.401316, 18.091801, 24.900991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259554, 17.933683, 25.012804>,  <16.023283, 17.670153, 25.199158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.259554, 17.933683, 25.012804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582164, -0.051846, -0.811417,
		-0.558737, 0.750507, 0.352921,
		0.590676, 0.658826, -0.465886,
		16.436756, 18.131330, 24.873037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737913, 18.357121, 24.919939>,  <16.023283, 17.670153, 25.199158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.737913, 18.357121, 24.919939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.051298, 18.273537, 24.685837>,  <16.239328, 18.223387, 24.545376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.051298, 18.273537, 24.685837>,  <15.737913, 18.357121, 24.919939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.051298, 18.273537, 24.685837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564694, 0.153784, -0.810846,
		0.259436, 0.965757, 0.002487,
		0.783463, -0.208959, -0.585254,
		16.286337, 18.210850, 24.510260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506116, 18.565041, 24.258350>,  <15.737913, 18.357121, 24.919939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.506116, 18.565041, 24.258350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.874559, 18.435364, 24.172136>,  <16.095625, 18.357557, 24.120407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.874559, 18.435364, 24.172136>,  <15.506116, 18.565041, 24.258350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874559, 18.435364, 24.172136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216637, 0.033155, -0.975689,
		0.323459, 0.945410, -0.039694,
		0.921110, -0.324194, -0.215535,
		16.150892, 18.338106, 24.107475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698479, 18.916805, 23.670576>,  <15.506116, 18.565041, 24.258350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698479, 18.916805, 23.670576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.917908, 18.582584, 23.658461>,  <16.049564, 18.382051, 23.651192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.917908, 18.582584, 23.658461>,  <15.698479, 18.916805, 23.670576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.917908, 18.582584, 23.658461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176839, -0.080543, -0.980939,
		0.817188, 0.543472, -0.191942,
		0.548573, -0.835554, -0.030289,
		16.082479, 18.331919, 23.649374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091532, 18.986441, 22.999979>,  <15.698479, 18.916805, 23.670576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091532, 18.986441, 22.999979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130291, 18.600618, 23.098154>,  <16.153547, 18.369125, 23.157059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130291, 18.600618, 23.098154>,  <16.091532, 18.986441, 22.999979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130291, 18.600618, 23.098154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168673, -0.258946, -0.951050,
		0.980898, 0.050756, -0.187787,
		0.096899, -0.964557, 0.245439,
		16.159361, 18.311251, 23.171785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577837, 18.642962, 22.492741>,  <16.091532, 18.986441, 22.999979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577837, 18.642962, 22.492741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.359333, 18.339382, 22.634502>,  <16.228231, 18.157234, 22.719559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.359333, 18.339382, 22.634502>,  <16.577837, 18.642962, 22.492741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359333, 18.339382, 22.634502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251665, -0.254849, -0.933658,
		0.798916, -0.599209, -0.051786,
		-0.546259, -0.758947, 0.354403,
		16.195456, 18.111698, 22.740824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.657042, 18.154165, 21.967916>,  <16.577837, 18.642962, 22.492741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.657042, 18.154165, 21.967916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331184, 18.037529, 22.168449>,  <16.135670, 17.967548, 22.288769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331184, 18.037529, 22.168449>,  <16.657042, 18.154165, 21.967916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331184, 18.037529, 22.168449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365187, -0.413629, -0.833996,
		0.450550, -0.862488, 0.230476,
		-0.814643, -0.291590, 0.501330,
		16.086792, 17.950052, 22.318848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616520, 17.547186, 21.761150>,  <16.657042, 18.154165, 21.967916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616520, 17.547186, 21.761150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266342, 17.583782, 21.950981>,  <16.056234, 17.605740, 22.064880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266342, 17.583782, 21.950981>,  <16.616520, 17.547186, 21.761150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266342, 17.583782, 21.950981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466775, -0.414743, -0.781095,
		0.125365, -0.905328, 0.405790,
		-0.875446, 0.091490, 0.474579,
		16.003708, 17.611229, 22.093355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231007, 16.950251, 21.782385>,  <16.616520, 17.547186, 21.761150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231007, 16.950251, 21.782385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963086, 17.244928, 21.819584>,  <15.802334, 17.421734, 21.841904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963086, 17.244928, 21.819584>,  <16.231007, 16.950251, 21.782385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963086, 17.244928, 21.819584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581819, -0.442879, -0.682163,
		-0.461359, -0.511020, 0.725263,
		-0.669802, 0.736693, 0.092995,
		15.762145, 17.465937, 21.847483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570895, 16.572426, 21.773939>,  <16.231007, 16.950251, 21.782385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570895, 16.572426, 21.773939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482015, 16.956490, 21.706152>,  <15.428686, 17.186928, 21.665480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482015, 16.956490, 21.706152>,  <15.570895, 16.572426, 21.773939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482015, 16.956490, 21.706152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553234, -0.267286, -0.788981,
		-0.802845, -0.081556, 0.590584,
		-0.222201, 0.960160, -0.169469,
		15.415355, 17.244537, 21.655312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854170, 16.557156, 21.719042>,  <15.570895, 16.572426, 21.773939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854170, 16.557156, 21.719042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945185, 16.911428, 21.557154>,  <14.999794, 17.123991, 21.460022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945185, 16.911428, 21.557154>,  <14.854170, 16.557156, 21.719042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945185, 16.911428, 21.557154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555979, -0.223056, -0.800708,
		-0.799446, 0.407207, 0.441666,
		0.227538, 0.885680, -0.404719,
		15.013446, 17.177132, 21.435738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.218195, 16.936966, 21.565510>,  <14.854170, 16.557156, 21.719042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.218195, 16.936966, 21.565510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486444, 17.080360, 21.305738>,  <14.647392, 17.166397, 21.149876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486444, 17.080360, 21.305738>,  <14.218195, 16.936966, 21.565510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486444, 17.080360, 21.305738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708763, 0.051293, -0.703580,
		-0.218912, 0.932125, 0.288479,
		0.670621, 0.358486, -0.649427,
		14.687630, 17.187906, 21.110910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869400, 17.486568, 21.103207>,  <14.218195, 16.936966, 21.565510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869400, 17.486568, 21.103207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.184603, 17.355385, 20.894789>,  <14.373724, 17.276674, 20.769737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.184603, 17.355385, 20.894789>,  <13.869400, 17.486568, 21.103207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184603, 17.355385, 20.894789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560294, -0.031233, -0.827705,
		0.255177, 0.944176, -0.208364,
		0.788007, -0.327957, -0.521047,
		14.421005, 17.256998, 20.738474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.826086, 17.865086, 20.478224>,  <13.869400, 17.486568, 21.103207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.826086, 17.865086, 20.478224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.081581, 17.575081, 20.375174>,  <14.234879, 17.401077, 20.313343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.081581, 17.575081, 20.375174>,  <13.826086, 17.865086, 20.478224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.081581, 17.575081, 20.375174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343931, 0.030485, -0.938500,
		0.688277, 0.688062, -0.229882,
		0.638738, -0.725012, -0.257628,
		14.273203, 17.357578, 20.297886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.170277, 18.160851, 19.927607>,  <13.826086, 17.865086, 20.478224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.170277, 18.160851, 19.927607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163485, 17.761034, 19.917574>,  <14.159410, 17.521145, 19.911554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163485, 17.761034, 19.917574>,  <14.170277, 18.160851, 19.927607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163485, 17.761034, 19.917574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346739, 0.029414, -0.937500,
		0.937808, -0.007223, -0.347080,
		-0.016980, -0.999541, -0.025081,
		14.158390, 17.461172, 19.910049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.353487, 18.922632, 20.053329>,  <14.170277, 18.160851, 19.927607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.353487, 18.922632, 20.053329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.373847, 19.280256, 19.875313>,  <14.386063, 19.494831, 19.768503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.373847, 19.280256, 19.875313>,  <14.353487, 18.922632, 20.053329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.373847, 19.280256, 19.875313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020151, 0.444610, 0.895497,
		0.998500, -0.054548, 0.004614,
		0.050899, 0.894062, -0.445043,
		14.389116, 19.548475, 19.741800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921947, 19.137779, 20.268864>,  <14.353487, 18.922632, 20.053329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921947, 19.137779, 20.268864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722811, 19.474346, 20.184799>,  <14.603329, 19.676287, 20.134359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722811, 19.474346, 20.184799>,  <14.921947, 19.137779, 20.268864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722811, 19.474346, 20.184799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117776, 0.305675, 0.944824,
		0.859234, 0.445620, -0.251276,
		-0.497841, 0.841419, -0.210163,
		14.573459, 19.726772, 20.121750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334234, 19.807175, 20.418118>,  <14.921947, 19.137779, 20.268864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334234, 19.807175, 20.418118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939371, 19.852146, 20.463509>,  <14.702453, 19.879129, 20.490744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939371, 19.852146, 20.463509>,  <15.334234, 19.807175, 20.418118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939371, 19.852146, 20.463509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149987, 0.407926, 0.900611,
		0.054962, 0.906067, -0.419551,
		-0.987159, 0.112427, 0.113478,
		14.643224, 19.885874, 20.497553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236006, 20.526108, 20.564632>,  <15.334234, 19.807175, 20.418118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.236006, 20.526108, 20.564632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955996, 20.273846, 20.698643>,  <14.787990, 20.122488, 20.779049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955996, 20.273846, 20.698643>,  <15.236006, 20.526108, 20.564632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.955996, 20.273846, 20.698643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019248, 0.485635, 0.873949,
		-0.713858, 0.605339, -0.352096,
		-0.700026, -0.630653, 0.335023,
		14.745988, 20.084650, 20.799150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.940594, 20.893309, 21.158913>,  <15.236006, 20.526108, 20.564632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.940594, 20.893309, 21.158913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802826, 20.519869, 21.198446>,  <14.720165, 20.295805, 21.222166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802826, 20.519869, 21.198446>,  <14.940594, 20.893309, 21.158913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802826, 20.519869, 21.198446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193307, 0.173544, 0.965668,
		-0.918699, 0.313489, -0.240244,
		-0.344419, -0.933599, 0.098835,
		14.699500, 20.239790, 21.228096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.351586, 21.064655, 21.395737>,  <14.940594, 20.893309, 21.158913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.351586, 21.064655, 21.395737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.450861, 20.686255, 21.479151>,  <14.510426, 20.459215, 21.529200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.450861, 20.686255, 21.479151>,  <14.351586, 21.064655, 21.395737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450861, 20.686255, 21.479151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119038, 0.243424, 0.962588,
		-0.961370, -0.214077, 0.173025,
		0.248187, -0.946000, 0.208537,
		14.525317, 20.402454, 21.541712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895918, 20.934408, 22.065781>,  <14.351586, 21.064655, 21.395737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895918, 20.934408, 22.065781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.191643, 20.665199, 22.057226>,  <14.369078, 20.503674, 22.052094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.191643, 20.665199, 22.057226>,  <13.895918, 20.934408, 22.065781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191643, 20.665199, 22.057226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030414, -0.065107, 0.997415,
		-0.672676, -0.736750, -0.068604,
		0.739312, -0.673023, -0.021388,
		14.413436, 20.463293, 22.050810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.745929, 20.445852, 22.588343>,  <13.895918, 20.934408, 22.065781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.745929, 20.445852, 22.588343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134119, 20.384739, 22.513685>,  <14.367033, 20.348072, 22.468891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134119, 20.384739, 22.513685>,  <13.745929, 20.445852, 22.588343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.134119, 20.384739, 22.513685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186595, -0.014779, 0.982326,
		-0.152841, -0.988149, 0.014166,
		0.970475, -0.152783, -0.186642,
		14.425261, 20.338905, 22.457693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950976, 19.968811, 22.977921>,  <13.745929, 20.445852, 22.588343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950976, 19.968811, 22.977921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.314243, 20.121510, 22.909216>,  <14.532204, 20.213129, 22.867992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.314243, 20.121510, 22.909216>,  <13.950976, 19.968811, 22.977921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.314243, 20.121510, 22.909216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251789, -0.170364, 0.952669,
		0.334414, -0.908431, -0.250839,
		0.908168, 0.381744, -0.171761,
		14.586694, 20.236032, 22.857687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429761, 19.534788, 23.292288>,  <13.950976, 19.968811, 22.977921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.429761, 19.534788, 23.292288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625160, 19.879831, 23.239706>,  <14.742399, 20.086857, 23.208157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625160, 19.879831, 23.239706>,  <14.429761, 19.534788, 23.292288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.625160, 19.879831, 23.239706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241086, 0.011360, 0.970437,
		0.838599, -0.505748, -0.202413,
		0.488497, 0.862607, -0.131455,
		14.771709, 20.138613, 23.200270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211087, 19.452484, 23.507219>,  <14.429761, 19.534788, 23.292288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211087, 19.452484, 23.507219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089705, 19.831984, 23.542530>,  <15.016875, 20.059683, 23.563717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089705, 19.831984, 23.542530>,  <15.211087, 19.452484, 23.507219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089705, 19.831984, 23.542530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215731, -0.021829, 0.976209,
		0.928103, 0.315280, -0.198050,
		-0.303456, 0.948747, 0.088276,
		14.998668, 20.116608, 23.569014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732924, 19.755383, 23.852980>,  <15.211087, 19.452484, 23.507219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732924, 19.755383, 23.852980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.447724, 20.029446, 23.912567>,  <15.276605, 20.193884, 23.948318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.447724, 20.029446, 23.912567>,  <15.732924, 19.755383, 23.852980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447724, 20.029446, 23.912567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285700, 0.089871, 0.954096,
		0.640317, 0.722830, -0.259828,
		-0.713000, 0.685156, 0.148967,
		15.233824, 20.234993, 23.957256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.028360, 20.180264, 24.305643>,  <15.732924, 19.755383, 23.852980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.028360, 20.180264, 24.305643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.654332, 20.310789, 24.361012>,  <15.429914, 20.389105, 24.394232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.654332, 20.310789, 24.361012>,  <16.028360, 20.180264, 24.305643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.654332, 20.310789, 24.361012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234872, 0.277927, 0.931446,
		0.265472, 0.903480, -0.336523,
		-0.935072, 0.326313, 0.138420,
		15.373811, 20.408684, 24.402538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136211, 20.866390, 24.447983>,  <16.028360, 20.180264, 24.305643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136211, 20.866390, 24.447983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.762643, 20.792984, 24.570696>,  <15.538502, 20.748940, 24.644323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.762643, 20.792984, 24.570696>,  <16.136211, 20.866390, 24.447983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762643, 20.792984, 24.570696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218507, 0.386144, 0.896185,
		-0.282926, 0.904000, -0.320528,
		-0.933921, -0.183516, 0.306780,
		15.482467, 20.737928, 24.662729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747611, 21.461361, 24.780943>,  <16.136211, 20.866390, 24.447983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747611, 21.461361, 24.780943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538136, 21.153395, 24.926809>,  <15.412450, 20.968616, 25.014330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538136, 21.153395, 24.926809>,  <15.747611, 21.461361, 24.780943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538136, 21.153395, 24.926809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118264, 0.358212, 0.926120,
		-0.843660, 0.528127, -0.096539,
		-0.523690, -0.769913, 0.364668,
		15.381028, 20.922421, 25.036209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.186783, 21.784966, 25.210711>,  <15.747611, 21.461361, 24.780943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.186783, 21.784966, 25.210711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.238830, 21.401623, 25.312393>,  <15.270058, 21.171618, 25.373404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.238830, 21.401623, 25.312393>,  <15.186783, 21.784966, 25.210711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.238830, 21.401623, 25.312393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048944, 0.262283, 0.963749,
		-0.990290, -0.112958, 0.081033,
		0.130117, -0.958357, 0.254208,
		15.277864, 21.114115, 25.388655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680271, 21.557068, 25.784473>,  <15.186783, 21.784966, 25.210711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680271, 21.557068, 25.784473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961346, 21.272959, 25.801188>,  <15.129991, 21.102493, 25.811216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961346, 21.272959, 25.801188>,  <14.680271, 21.557068, 25.784473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961346, 21.272959, 25.801188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064362, 0.121945, 0.990448,
		-0.708584, -0.693284, 0.131404,
		0.702685, -0.710273, 0.041787,
		15.172152, 21.059877, 25.813725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447319, 21.008324, 26.218248>,  <14.680271, 21.557068, 25.784473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447319, 21.008324, 26.218248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.847278, 21.003170, 26.215733>,  <15.087253, 21.000078, 26.214224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.847278, 21.003170, 26.215733>,  <14.447319, 21.008324, 26.218248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847278, 21.003170, 26.215733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007100, 0.063800, 0.997937,
		-0.012457, -0.997880, 0.063885,
		0.999898, -0.012885, -0.006290,
		15.147247, 20.999306, 26.213846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.657850, 20.542995, 26.807310>,  <14.447319, 21.008324, 26.218248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.657850, 20.542995, 26.807310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005152, 20.731363, 26.744865>,  <15.213532, 20.844385, 26.707397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005152, 20.731363, 26.744865>,  <14.657850, 20.542995, 26.807310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005152, 20.731363, 26.744865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201550, -0.047280, 0.978336,
		0.453338, -0.880908, -0.135965,
		0.868252, 0.470921, -0.156113,
		15.265628, 20.872639, 26.698030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.305033, 20.010319, 26.856911>,  <14.657850, 20.542995, 26.807310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.305033, 20.010319, 26.856911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514998, 20.350517, 26.870302>,  <15.640978, 20.554636, 26.878338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514998, 20.350517, 26.870302>,  <15.305033, 20.010319, 26.856911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514998, 20.350517, 26.870302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312217, -0.228990, 0.922000,
		0.791825, -0.473517, -0.385739,
		0.524913, 0.850497, 0.033480,
		15.672472, 20.605667, 26.880346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931263, 19.801083, 27.134071>,  <15.305033, 20.010319, 26.856911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931263, 19.801083, 27.134071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.899024, 20.197720, 27.174559>,  <15.879681, 20.435701, 27.198851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.899024, 20.197720, 27.174559>,  <15.931263, 19.801083, 27.134071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899024, 20.197720, 27.174559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162278, -0.087140, 0.982890,
		0.983448, 0.095643, -0.153891,
		-0.080597, 0.991594, 0.101218,
		15.874845, 20.495197, 27.204924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.516390, 19.995550, 27.465860>,  <15.931263, 19.801083, 27.134071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.516390, 19.995550, 27.465860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236099, 20.272881, 27.533125>,  <16.067924, 20.439280, 27.573484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236099, 20.272881, 27.533125>,  <16.516390, 19.995550, 27.465860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236099, 20.272881, 27.533125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144324, -0.093077, 0.985143,
		0.698678, 0.714588, -0.034842,
		-0.700728, 0.693326, 0.168163,
		16.025881, 20.480879, 27.583574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795048, 20.500214, 27.951923>,  <16.516390, 19.995550, 27.465860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.795048, 20.500214, 27.951923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.403437, 20.573875, 27.986769>,  <16.168470, 20.618073, 28.007675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.403437, 20.573875, 27.986769>,  <16.795048, 20.500214, 27.951923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.403437, 20.573875, 27.986769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105288, 0.091318, 0.990240,
		0.174403, 0.978646, -0.108792,
		-0.979029, 0.184155, 0.087113,
		16.109728, 20.629122, 28.012903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.728971, 21.037224, 28.504946>,  <16.795048, 20.500214, 27.951923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.728971, 21.037224, 28.504946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.381672, 20.841316, 28.473278>,  <16.173292, 20.723772, 28.454277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.381672, 20.841316, 28.473278>,  <16.728971, 21.037224, 28.504946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381672, 20.841316, 28.473278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064262, -0.047206, 0.996816,
		-0.491947, 0.870573, 0.009513,
		-0.868251, -0.489769, -0.079167,
		16.121197, 20.694386, 28.449528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099411, 21.419971, 28.825172>,  <16.728971, 21.037224, 28.504946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099411, 21.419971, 28.825172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170258, 21.027328, 28.853666>,  <16.212765, 20.791742, 28.870762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170258, 21.027328, 28.853666>,  <16.099411, 21.419971, 28.825172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.170258, 21.027328, 28.853666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331502, 0.127650, 0.934779,
		-0.926681, -0.141950, 0.348014,
		0.177115, -0.981609, 0.071234,
		16.223392, 20.732845, 28.875036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098574, 21.381462, 29.504971>,  <16.099411, 21.419971, 28.825172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098574, 21.381462, 29.504971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.238132, 21.028767, 29.377972>,  <16.321867, 20.817148, 29.301771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.238132, 21.028767, 29.377972>,  <16.098574, 21.381462, 29.504971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238132, 21.028767, 29.377972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394559, -0.169095, 0.903178,
		-0.850055, -0.440388, 0.288902,
		0.348896, -0.881740, -0.317499,
		16.342802, 20.764244, 29.282722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980235, 20.937927, 30.060595>,  <16.098574, 21.381462, 29.504971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980235, 20.937927, 30.060595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300249, 20.841932, 29.840649>,  <16.492258, 20.784336, 29.708681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300249, 20.841932, 29.840649>,  <15.980235, 20.937927, 30.060595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300249, 20.841932, 29.840649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519720, -0.180645, 0.835020,
		-0.299724, -0.953820, -0.019796,
		0.800035, -0.239987, -0.549863,
		16.540260, 20.769938, 29.675690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164145, 20.286364, 30.358376>,  <15.980235, 20.937927, 30.060595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164145, 20.286364, 30.358376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497833, 20.410627, 30.176138>,  <16.698046, 20.485186, 30.066795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497833, 20.410627, 30.176138>,  <16.164145, 20.286364, 30.358376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.497833, 20.410627, 30.176138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513872, -0.138260, 0.846652,
		0.200031, -0.940412, -0.274979,
		0.834220, 0.310661, -0.455595,
		16.748100, 20.503826, 30.039459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.651892, 19.793005, 30.540010>,  <16.164145, 20.286364, 30.358376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.651892, 19.793005, 30.540010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850288, 20.129709, 30.454756>,  <16.969326, 20.331732, 30.403603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850288, 20.129709, 30.454756>,  <16.651892, 19.793005, 30.540010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850288, 20.129709, 30.454756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309639, 0.057862, 0.949092,
		0.811242, -0.536738, -0.231943,
		0.495994, 0.841762, -0.213135,
		16.999086, 20.382238, 30.390816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309378, 19.709124, 30.847212>,  <16.651892, 19.793005, 30.540010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309378, 19.709124, 30.847212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.308739, 20.105816, 30.795879>,  <17.308355, 20.343832, 30.765079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.308739, 20.105816, 30.795879>,  <17.309378, 19.709124, 30.847212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308739, 20.105816, 30.795879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348010, 0.120860, 0.929667,
		0.937489, -0.043177, -0.345325,
		-0.001595, 0.991730, -0.128331,
		17.308260, 20.403336, 30.757380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967613, 19.916027, 30.999590>,  <17.309378, 19.709124, 30.847212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967613, 19.916027, 30.999590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.710855, 20.218519, 31.050320>,  <17.556801, 20.400015, 31.080757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.710855, 20.218519, 31.050320>,  <17.967613, 19.916027, 30.999590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.710855, 20.218519, 31.050320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358563, 0.149828, 0.921403,
		0.677792, 0.636920, -0.367330,
		-0.641897, 0.756231, 0.126824,
		17.518286, 20.445389, 31.088367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.163477, 20.399282, 31.575737>,  <17.967613, 19.916027, 30.999590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.163477, 20.399282, 31.575737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028988, 20.339376, 31.947657>,  <17.948294, 20.303432, 32.170807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028988, 20.339376, 31.947657>,  <18.163477, 20.399282, 31.575737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028988, 20.339376, 31.947657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920624, -0.155831, -0.358006,
		0.198507, -0.976365, -0.085482,
		-0.336224, -0.149763, 0.929798,
		17.928122, 20.294447, 32.226597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925301, 19.717192, 31.773493>,  <18.163477, 20.399282, 31.575737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925301, 19.717192, 31.773493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718346, 20.015921, 31.940619>,  <17.594172, 20.195158, 32.040894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718346, 20.015921, 31.940619>,  <17.925301, 19.717192, 31.773493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718346, 20.015921, 31.940619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826970, -0.310785, -0.468544,
		-0.220068, -0.587939, 0.778395,
		-0.517389, 0.746820, 0.417814,
		17.563129, 20.239967, 32.065964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285925, 19.411066, 32.060432>,  <17.925301, 19.717192, 31.773493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285925, 19.411066, 32.060432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.248295, 19.792635, 31.946461>,  <17.225718, 20.021576, 31.878078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.248295, 19.792635, 31.946461>,  <17.285925, 19.411066, 32.060432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248295, 19.792635, 31.946461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859914, -0.222079, -0.459596,
		-0.501695, 0.201776, 0.841183,
		-0.094074, 0.953922, -0.284926,
		17.220072, 20.078812, 31.860983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573351, 19.576859, 32.312103>,  <17.285925, 19.411066, 32.060432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573351, 19.576859, 32.312103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691536, 19.854980, 32.050034>,  <16.762447, 20.021854, 31.892792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691536, 19.854980, 32.050034>,  <16.573351, 19.576859, 32.312103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691536, 19.854980, 32.050034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937163, 0.077753, -0.340118,
		-0.185544, 0.714496, 0.674588,
		0.295465, 0.695305, -0.655173,
		16.780176, 20.063572, 31.853481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778959, 19.258135, 32.988628>,  <16.573351, 19.576859, 32.312103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778959, 19.258135, 32.988628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941137, 19.618601, 33.049973>,  <17.038445, 19.834881, 33.086781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941137, 19.618601, 33.049973>,  <16.778959, 19.258135, 32.988628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.941137, 19.618601, 33.049973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619401, 0.147445, 0.771104,
		0.672278, -0.407634, 0.617962,
		0.405443, 0.901163, 0.153365,
		17.062771, 19.888950, 33.095982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091627, 19.288673, 33.739307>,  <16.778959, 19.258135, 32.988628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091627, 19.288673, 33.739307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981518, 19.642382, 33.588421>,  <16.915451, 19.854607, 33.497890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981518, 19.642382, 33.588421>,  <17.091627, 19.288673, 33.739307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981518, 19.642382, 33.588421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498767, 0.204075, 0.842369,
		0.821861, 0.420026, 0.384867,
		-0.275275, 0.884269, -0.377216,
		16.898935, 19.907663, 33.475258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514027, 19.173615, 34.047016>,  <17.091627, 19.288673, 33.739307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514027, 19.173615, 34.047016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.186396, 19.295919, 34.241180>,  <15.989817, 19.369303, 34.357677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.186396, 19.295919, 34.241180>,  <16.514027, 19.173615, 34.047016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186396, 19.295919, 34.241180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412382, 0.274403, -0.868702,
		-0.398814, -0.911708, -0.098667,
		-0.819077, 0.305762, 0.485408,
		15.940672, 19.387648, 34.386803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908441, 18.928448, 33.705471>,  <16.514027, 19.173615, 34.047016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908441, 18.928448, 33.705471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.775016, 19.235872, 33.923847>,  <15.694962, 19.420326, 34.054874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.775016, 19.235872, 33.923847>,  <15.908441, 18.928448, 33.705471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.775016, 19.235872, 33.923847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664981, 0.218670, -0.714132,
		-0.668235, -0.601246, 0.438139,
		-0.333561, 0.768561, 0.545940,
		15.674948, 19.466440, 34.087627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146249, 18.978724, 33.590958>,  <15.908441, 18.928448, 33.705471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146249, 18.978724, 33.590958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217024, 19.342611, 33.741211>,  <15.259489, 19.560944, 33.831364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217024, 19.342611, 33.741211>,  <15.146249, 18.978724, 33.590958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.217024, 19.342611, 33.741211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541398, 0.408689, -0.734753,
		-0.821937, -0.073362, 0.564834,
		0.176938, 0.909720, 0.375635,
		15.270105, 19.615528, 33.853901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602335, 19.248051, 33.492798>,  <15.146249, 18.978724, 33.590958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602335, 19.248051, 33.492798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.834008, 19.569571, 33.547134>,  <14.973012, 19.762484, 33.579735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.834008, 19.569571, 33.547134>,  <14.602335, 19.248051, 33.492798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.834008, 19.569571, 33.547134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581458, 0.524129, -0.622250,
		-0.571362, 0.281412, 0.770943,
		0.579182, 0.803801, 0.135838,
		15.007763, 19.810711, 33.587887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.086702, 19.742559, 33.709846>,  <14.602335, 19.248051, 33.492798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.086702, 19.742559, 33.709846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.410518, 19.890070, 33.527134>,  <14.604807, 19.978577, 33.417507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.410518, 19.890070, 33.527134>,  <14.086702, 19.742559, 33.709846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.410518, 19.890070, 33.527134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572941, 0.326625, -0.751701,
		-0.128015, 0.870241, 0.475703,
		0.809538, 0.368779, -0.456784,
		14.653379, 20.000704, 33.390099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919831, 20.412460, 33.304764>,  <14.086702, 19.742559, 33.709846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919831, 20.412460, 33.304764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.269146, 20.315458, 33.135738>,  <14.478735, 20.257257, 33.034321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.269146, 20.315458, 33.135738>,  <13.919831, 20.412460, 33.304764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.269146, 20.315458, 33.135738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297563, 0.421286, -0.856723,
		0.385780, 0.873905, 0.295743,
		0.873287, -0.242505, -0.422565,
		14.531132, 20.242706, 33.008968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.072036, 21.006887, 32.913841>,  <13.919831, 20.412460, 33.304764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.072036, 21.006887, 32.913841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306397, 20.731684, 32.742558>,  <14.447014, 20.566561, 32.639790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306397, 20.731684, 32.742558>,  <14.072036, 21.006887, 32.913841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306397, 20.731684, 32.742558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213894, 0.378370, -0.900603,
		0.781644, 0.619257, 0.074527,
		0.585903, -0.688009, -0.428206,
		14.482168, 20.525280, 32.614094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.061479, 21.275919, 32.294933>,  <14.072036, 21.006887, 32.913841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.061479, 21.275919, 32.294933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241354, 20.922451, 32.242920>,  <14.349279, 20.710371, 32.211712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241354, 20.922451, 32.242920>,  <14.061479, 21.275919, 32.294933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241354, 20.922451, 32.242920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194678, 0.045111, -0.979829,
		0.871712, 0.465931, -0.151746,
		0.449688, -0.883670, -0.130030,
		14.376261, 20.657351, 32.203911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664720, 21.339569, 31.696129>,  <14.061479, 21.275919, 32.294933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664720, 21.339569, 31.696129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.529585, 20.966085, 31.743542>,  <14.448504, 20.741995, 31.771990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.529585, 20.966085, 31.743542>,  <14.664720, 21.339569, 31.696129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.529585, 20.966085, 31.743542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261740, -0.027766, -0.964739,
		0.904079, -0.356948, -0.235009,
		-0.337836, -0.933712, 0.118530,
		14.428234, 20.685972, 31.779100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853052, 20.911331, 31.080389>,  <14.664720, 21.339569, 31.696129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853052, 20.911331, 31.080389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534227, 20.724688, 31.233734>,  <14.342933, 20.612701, 31.325741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534227, 20.724688, 31.233734>,  <14.853052, 20.911331, 31.080389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534227, 20.724688, 31.233734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430626, -0.005903, -0.902511,
		0.423385, -0.884443, -0.196230,
		-0.797061, -0.466612, 0.383363,
		14.295109, 20.584703, 31.348743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778632, 20.298212, 30.586124>,  <14.853052, 20.911331, 31.080389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.778632, 20.298212, 30.586124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439324, 20.336966, 30.794376>,  <14.235740, 20.360218, 30.919327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439324, 20.336966, 30.794376>,  <14.778632, 20.298212, 30.586124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.439324, 20.336966, 30.794376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528912, -0.203836, -0.823834,
		0.026309, -0.974200, 0.224150,
		-0.848269, 0.096881, 0.520628,
		14.184844, 20.366030, 30.950565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391459, 19.636543, 30.549591>,  <14.778632, 20.298212, 30.586124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.391459, 19.636543, 30.549591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.136852, 19.928291, 30.649881>,  <13.984088, 20.103340, 30.710056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.136852, 19.928291, 30.649881>,  <14.391459, 19.636543, 30.549591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.136852, 19.928291, 30.649881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518345, -0.163828, -0.839332,
		-0.571108, -0.664212, 0.482345,
		-0.636516, 0.729371, 0.250728,
		13.945897, 20.147102, 30.725100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.795769, 19.398209, 30.284985>,  <14.391459, 19.636543, 30.549591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.795769, 19.398209, 30.284985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.696593, 19.783159, 30.329449>,  <13.637088, 20.014130, 30.356127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.696593, 19.783159, 30.329449>,  <13.795769, 19.398209, 30.284985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.696593, 19.783159, 30.329449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488671, -0.025165, -0.872105,
		-0.836497, -0.270548, 0.476525,
		-0.247938, 0.962378, 0.111158,
		13.622212, 20.071873, 30.362797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.023711, 19.476849, 30.015724>,  <13.795769, 19.398209, 30.284985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.023711, 19.476849, 30.015724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.203969, 19.833858, 30.022882>,  <13.312124, 20.048063, 30.027178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.203969, 19.833858, 30.022882>,  <13.023711, 19.476849, 30.015724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.203969, 19.833858, 30.022882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606679, 0.320900, -0.727299,
		-0.654873, 0.316898, 0.686087,
		0.450645, 0.892524, 0.017894,
		13.339163, 20.101616, 30.028250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.550365, 20.052858, 29.966911>,  <13.023711, 19.476849, 30.015724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.550365, 20.052858, 29.966911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882903, 20.222761, 29.823551>,  <13.082425, 20.324703, 29.737535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882903, 20.222761, 29.823551>,  <12.550365, 20.052858, 29.966911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882903, 20.222761, 29.823551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526609, 0.395946, -0.752270,
		-0.177625, 0.814131, 0.552848,
		0.831344, 0.424757, -0.358399,
		13.132306, 20.350187, 29.716032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422423, 20.705284, 29.625496>,  <12.550365, 20.052858, 29.966911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422423, 20.705284, 29.625496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772018, 20.596956, 29.464100>,  <12.981775, 20.531960, 29.367262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772018, 20.596956, 29.464100>,  <12.422423, 20.705284, 29.625496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772018, 20.596956, 29.464100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330550, 0.277311, -0.902128,
		0.356208, 0.921821, 0.152846,
		0.873987, -0.270822, -0.403488,
		13.034214, 20.515709, 29.343054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.411849, 21.144421, 28.980448>,  <12.422423, 20.705284, 29.625496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.411849, 21.144421, 28.980448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.732073, 20.907400, 28.944700>,  <12.924207, 20.765188, 28.923252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.732073, 20.907400, 28.944700>,  <12.411849, 21.144421, 28.980448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.732073, 20.907400, 28.944700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076662, 0.249175, -0.965420,
		0.594330, 0.766024, 0.244906,
		0.800559, -0.592553, -0.089367,
		12.972240, 20.729635, 28.917891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.916815, 21.582573, 28.734056>,  <12.411849, 21.144421, 28.980448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.916815, 21.582573, 28.734056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.969155, 21.200272, 28.628670>,  <13.000560, 20.970890, 28.565437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.969155, 21.200272, 28.628670>,  <12.916815, 21.582573, 28.734056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969155, 21.200272, 28.628670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066233, 0.273585, -0.959565,
		0.989187, 0.108110, 0.099101,
		0.130851, -0.955753, -0.263466,
		13.008410, 20.913546, 28.549629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593326, 21.476738, 28.478462>,  <12.916815, 21.582573, 28.734056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593326, 21.476738, 28.478462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395057, 21.175404, 28.305584>,  <13.276095, 20.994602, 28.201857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395057, 21.175404, 28.305584>,  <13.593326, 21.476738, 28.478462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395057, 21.175404, 28.305584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357000, 0.276920, -0.892113,
		0.791746, -0.596489, 0.131680,
		-0.495671, -0.753337, -0.432197,
		13.246355, 20.949402, 28.175924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891092, 21.419930, 27.872803>,  <13.593326, 21.476738, 28.478462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891092, 21.419930, 27.872803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.571939, 21.189980, 27.800243>,  <13.380447, 21.052010, 27.756708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.571939, 21.189980, 27.800243>,  <13.891092, 21.419930, 27.872803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.571939, 21.189980, 27.800243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059881, 0.223848, -0.972783,
		0.599832, -0.787028, -0.144180,
		-0.797882, -0.574873, -0.181399,
		13.332575, 21.017517, 27.745823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092789, 21.074480, 27.230677>,  <13.891092, 21.419930, 27.872803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092789, 21.074480, 27.230677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.696627, 21.022686, 27.249992>,  <13.458930, 20.991610, 27.261581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.696627, 21.022686, 27.249992>,  <14.092789, 21.074480, 27.230677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.696627, 21.022686, 27.249992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069987, 0.168650, -0.983188,
		0.119168, -0.977134, -0.176094,
		-0.990404, -0.129488, 0.048289,
		13.399506, 20.983839, 27.264479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.939170, 20.656572, 26.656120>,  <14.092789, 21.074480, 27.230677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.939170, 20.656572, 26.656120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584570, 20.819859, 26.743277>,  <13.371810, 20.917830, 26.795570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584570, 20.819859, 26.743277>,  <13.939170, 20.656572, 26.656120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584570, 20.819859, 26.743277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178343, 0.133087, -0.974927,
		-0.426979, -0.903132, -0.045179,
		-0.886500, 0.408216, 0.217892,
		13.318620, 20.942324, 26.808645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.478638, 20.301497, 26.264624>,  <13.939170, 20.656572, 26.656120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.478638, 20.301497, 26.264624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.301122, 20.653605, 26.331762>,  <13.194612, 20.864870, 26.372046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.301122, 20.653605, 26.331762>,  <13.478638, 20.301497, 26.264624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.301122, 20.653605, 26.331762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149825, 0.111781, -0.982373,
		-0.883517, -0.461116, 0.082280,
		-0.443791, 0.880271, 0.167847,
		13.167984, 20.917686, 26.382116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.854712, 20.382111, 25.807652>,  <13.478638, 20.301497, 26.264624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.854712, 20.382111, 25.807652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905201, 20.757957, 25.934895>,  <12.935494, 20.983465, 26.011240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905201, 20.757957, 25.934895>,  <12.854712, 20.382111, 25.807652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905201, 20.757957, 25.934895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175269, 0.336750, -0.925138,
		-0.976396, 0.061021, 0.207191,
		0.126225, 0.939615, 0.318106,
		12.943069, 21.039843, 26.030327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.254522, 20.758083, 25.512527>,  <12.854712, 20.382111, 25.807652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.254522, 20.758083, 25.512527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.553345, 21.013582, 25.586185>,  <12.732638, 21.166882, 25.630381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.553345, 21.013582, 25.586185>,  <12.254522, 20.758083, 25.512527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553345, 21.013582, 25.586185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114209, 0.396218, -0.911025,
		-0.654875, 0.659557, 0.368948,
		0.747057, 0.638745, 0.184146,
		12.777462, 21.205206, 25.641430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.051412, 21.341898, 25.219378>,  <12.254522, 20.758083, 25.512527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.051412, 21.341898, 25.219378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.446790, 21.385494, 25.261517>,  <12.684016, 21.411652, 25.286800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.446790, 21.385494, 25.261517>,  <12.051412, 21.341898, 25.219378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.446790, 21.385494, 25.261517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028783, 0.547382, -0.836388,
		-0.148824, 0.829755, 0.537919,
		0.988445, 0.108992, 0.105347,
		12.743323, 21.418192, 25.293121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.460306, 20.787262, 24.777622>,  <12.051412, 21.341898, 25.219378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.460306, 20.787262, 24.777622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781509, 21.023289, 24.744152>,  <12.974232, 21.164904, 24.724070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781509, 21.023289, 24.744152>,  <12.460306, 20.787262, 24.777622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781509, 21.023289, 24.744152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590962, -0.806536, -0.016274,
		-0.077091, -0.036381, -0.996360,
		0.803008, 0.590065, -0.083676,
		13.022411, 21.200308, 24.719049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997505, 20.589005, 24.283924>,  <12.460306, 20.787262, 24.777622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997505, 20.589005, 24.283924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335168, 20.743719, 24.135441>,  <12.537766, 20.836548, 24.046350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335168, 20.743719, 24.135441>,  <11.997505, 20.589005, 24.283924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.335168, 20.743719, 24.135441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069390, -0.607769, -0.791077,
		-0.531587, 0.693551, -0.486212,
		0.844156, 0.386788, -0.371208,
		12.588415, 20.859755, 24.024078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841551, 20.983135, 23.663307>,  <11.997505, 20.589005, 24.283924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.841551, 20.983135, 23.663307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223481, 20.866663, 23.639580>,  <12.452640, 20.796780, 23.625343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223481, 20.866663, 23.639580>,  <11.841551, 20.983135, 23.663307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.223481, 20.866663, 23.639580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196634, -0.469431, -0.860796,
		0.222802, 0.833575, -0.505481,
		0.954827, -0.291182, -0.059319,
		12.509930, 20.779308, 23.621784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.079957, 21.153790, 22.953402>,  <11.841551, 20.983135, 23.663307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.079957, 21.153790, 22.953402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329883, 20.865526, 23.073570>,  <12.479838, 20.692568, 23.145672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329883, 20.865526, 23.073570>,  <12.079957, 21.153790, 22.953402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.329883, 20.865526, 23.073570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179248, -0.506900, -0.843162,
		0.759919, 0.472970, -0.445896,
		0.624815, -0.720661, 0.300424,
		12.517327, 20.649328, 23.163698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.495584, 21.065271, 22.394157>,  <12.079957, 21.153790, 22.953402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.495584, 21.065271, 22.394157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.566283, 20.731617, 22.603146>,  <12.608703, 20.531424, 22.728539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.566283, 20.731617, 22.603146>,  <12.495584, 21.065271, 22.394157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.566283, 20.731617, 22.603146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287911, -0.551428, -0.782965,
		0.941205, -0.012038, -0.337621,
		0.176748, -0.834136, 0.522473,
		12.619308, 20.481377, 22.759888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.052950, 20.602879, 21.931581>,  <12.495584, 21.065271, 22.394157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.052950, 20.602879, 21.931581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.838855, 20.385763, 22.190472>,  <12.710398, 20.255493, 22.345806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.838855, 20.385763, 22.190472>,  <13.052950, 20.602879, 21.931581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838855, 20.385763, 22.190472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357931, -0.548293, -0.755817,
		0.765119, -0.636204, 0.099186,
		-0.535237, -0.542788, 0.647227,
		12.678284, 20.222927, 22.384640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.186605, 19.851463, 21.780355>,  <13.052950, 20.602879, 21.931581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.186605, 19.851463, 21.780355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.869207, 19.833115, 22.023094>,  <12.678769, 19.822105, 22.168737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.869207, 19.833115, 22.023094>,  <13.186605, 19.851463, 21.780355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.869207, 19.833115, 22.023094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363397, -0.764153, -0.532928,
		0.488169, -0.643401, 0.589683,
		-0.793494, -0.045870, 0.606846,
		12.631159, 19.819353, 22.205149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160168, 19.113613, 21.890326>,  <13.186605, 19.851463, 21.780355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160168, 19.113613, 21.890326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.795170, 19.231514, 22.003799>,  <12.576171, 19.302254, 22.071884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.795170, 19.231514, 22.003799>,  <13.160168, 19.113613, 21.890326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.795170, 19.231514, 22.003799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406449, -0.731894, -0.546929,
		0.046419, -0.614373, 0.787649,
		-0.912494, 0.294751, 0.283685,
		12.521421, 19.319939, 22.088905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.867413, 18.477659, 22.002604>,  <13.160168, 19.113613, 21.890326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.867413, 18.477659, 22.002604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571243, 18.738857, 21.938892>,  <12.393541, 18.895576, 21.900665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571243, 18.738857, 21.938892>,  <12.867413, 18.477659, 22.002604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.571243, 18.738857, 21.938892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456005, -0.662114, -0.594697,
		-0.493794, -0.367697, 0.788014,
		-0.740424, 0.652996, -0.159276,
		12.349116, 18.934755, 21.891109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.177102, 18.182291, 22.139481>,  <12.867413, 18.477659, 22.002604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.177102, 18.182291, 22.139481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.119185, 18.484739, 21.884193>,  <12.084435, 18.666208, 21.731022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.119185, 18.484739, 21.884193>,  <12.177102, 18.182291, 22.139481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.119185, 18.484739, 21.884193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490366, -0.615066, -0.617443,
		-0.859405, 0.223559, 0.459831,
		-0.144792, 0.756119, -0.638216,
		12.075747, 18.711575, 21.692728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.597541, 17.926188, 21.840660>,  <12.177102, 18.182291, 22.139481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.597541, 17.926188, 21.840660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.712226, 18.234737, 21.613407>,  <11.781036, 18.419867, 21.477055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.712226, 18.234737, 21.613407>,  <11.597541, 17.926188, 21.840660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.712226, 18.234737, 21.613407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432067, -0.425179, -0.795325,
		-0.855053, 0.473501, 0.211382,
		0.286712, 0.771375, -0.568134,
		11.798240, 18.466150, 21.442966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.062197, 17.989401, 21.410738>,  <11.597541, 17.926188, 21.840660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.062197, 17.989401, 21.410738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375140, 18.151470, 21.221529>,  <11.562906, 18.248711, 21.108004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375140, 18.151470, 21.221529>,  <11.062197, 17.989401, 21.410738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375140, 18.151470, 21.221529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272237, -0.460624, -0.844815,
		-0.560181, 0.789723, -0.250070,
		0.782358, 0.405171, -0.473025,
		11.609848, 18.273022, 21.079622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.768875, 18.142694, 20.838322>,  <11.062197, 17.989401, 21.410738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.768875, 18.142694, 20.838322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.163072, 18.140518, 20.770464>,  <11.399590, 18.139212, 20.729750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.163072, 18.140518, 20.770464>,  <10.768875, 18.142694, 20.838322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.163072, 18.140518, 20.770464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156394, -0.417467, -0.895133,
		-0.065950, 0.908676, -0.412261,
		0.985491, -0.005442, -0.169643,
		11.458719, 18.138885, 20.719570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.867568, 18.379591, 20.044470>,  <10.768875, 18.142694, 20.838322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.867568, 18.379591, 20.044470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.204094, 18.189331, 20.147188>,  <11.406010, 18.075174, 20.208820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.204094, 18.189331, 20.147188>,  <10.867568, 18.379591, 20.044470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.204094, 18.189331, 20.147188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064500, -0.383339, -0.921353,
		0.536683, 0.791712, -0.291829,
		0.841315, -0.475651, 0.256797,
		11.456489, 18.046637, 20.224228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.270156, 18.358965, 19.509050>,  <10.867568, 18.379591, 20.044470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.270156, 18.358965, 19.509050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.416420, 18.061932, 19.733501>,  <11.504178, 17.883711, 19.868172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.416420, 18.061932, 19.733501>,  <11.270156, 18.358965, 19.509050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.416420, 18.061932, 19.733501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027063, -0.611105, -0.791087,
		0.930355, 0.274083, -0.243553,
		0.365660, -0.742583, 0.561127,
		11.526118, 17.839157, 19.901840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.859888, 18.137100, 19.129534>,  <11.270156, 18.358965, 19.509050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.859888, 18.137100, 19.129534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.692780, 17.866911, 19.372581>,  <11.592516, 17.704798, 19.518410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.692780, 17.866911, 19.372581>,  <11.859888, 18.137100, 19.129534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.692780, 17.866911, 19.372581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030775, -0.657875, -0.752498,
		0.908032, -0.333070, 0.254052,
		-0.417769, -0.675474, 0.607622,
		11.567450, 17.664268, 19.554869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.242704, 17.471096, 18.971416>,  <11.859888, 18.137100, 19.129534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.242704, 17.471096, 18.971416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891706, 17.382128, 19.141371>,  <11.681107, 17.328747, 19.243343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891706, 17.382128, 19.141371>,  <12.242704, 17.471096, 18.971416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.891706, 17.382128, 19.141371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043990, -0.844889, -0.533130,
		0.477560, -0.486511, 0.731603,
		-0.877497, -0.222418, 0.424887,
		11.628456, 17.315403, 19.268837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.026544, 17.320477, 19.040920>,  <12.242704, 17.471096, 18.971416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.026544, 17.320477, 19.040920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236096, 17.594412, 19.243521>,  <13.361828, 17.758774, 19.365082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236096, 17.594412, 19.243521>,  <13.026544, 17.320477, 19.040920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.236096, 17.594412, 19.243521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727599, -0.050614, -0.684133,
		-0.442885, 0.726934, -0.524804,
		0.523881, 0.684840, 0.506501,
		13.393261, 17.799864, 19.395472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265872, 18.024765, 18.624521>,  <13.026544, 17.320477, 19.040920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265872, 18.024765, 18.624521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.519770, 17.926830, 18.917685>,  <13.672108, 17.868071, 19.093582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.519770, 17.926830, 18.917685>,  <13.265872, 18.024765, 18.624521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.519770, 17.926830, 18.917685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771740, 0.153045, -0.617247,
		0.038956, 0.957409, 0.286094,
		0.634744, -0.244835, 0.732910,
		13.710193, 17.853380, 19.137558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.830191, 18.583828, 18.700832>,  <13.265872, 18.024765, 18.624521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.830191, 18.583828, 18.700832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.958223, 18.231941, 18.841486>,  <14.035043, 18.020809, 18.925879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.958223, 18.231941, 18.841486>,  <13.830191, 18.583828, 18.700832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958223, 18.231941, 18.841486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759034, 0.016018, -0.650854,
		0.566935, 0.475228, 0.672862,
		0.320082, -0.879717, 0.351633,
		14.054248, 17.968025, 18.946976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492831, 18.532997, 18.792139>,  <13.830191, 18.583828, 18.700832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492831, 18.532997, 18.792139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386533, 18.151611, 18.735167>,  <14.322754, 17.922781, 18.700983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386533, 18.151611, 18.735167>,  <14.492831, 18.532997, 18.792139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.386533, 18.151611, 18.735167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858463, -0.166820, -0.484987,
		0.438658, -0.251154, 0.862845,
		-0.265746, -0.953464, -0.142429,
		14.306809, 17.865572, 18.692438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.045067, 17.937630, 19.150928>,  <14.492831, 18.532997, 18.792139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.045067, 17.937630, 19.150928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.832273, 17.814459, 18.835417>,  <14.704597, 17.740557, 18.646111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.832273, 17.814459, 18.835417>,  <15.045067, 17.937630, 19.150928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.832273, 17.814459, 18.835417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806407, 0.099881, -0.582865,
		0.258265, -0.946152, 0.195180,
		-0.531984, -0.307928, -0.788780,
		14.672678, 17.722080, 18.598783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191290, 17.334787, 18.712891>,  <15.045067, 17.937630, 19.150928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191290, 17.334787, 18.712891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041963, 17.623629, 18.479925>,  <14.952366, 17.796932, 18.340147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041963, 17.623629, 18.479925>,  <15.191290, 17.334787, 18.712891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041963, 17.623629, 18.479925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852604, 0.019614, -0.522189,
		-0.365650, -0.691509, -0.622989,
		-0.373318, 0.722102, -0.582411,
		14.929967, 17.840260, 18.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795172, 16.884222, 18.672979>,  <15.191290, 17.334787, 18.712891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795172, 16.884222, 18.672979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029535, 16.862089, 18.349585>,  <16.170153, 16.848810, 18.155548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029535, 16.862089, 18.349585>,  <15.795172, 16.884222, 18.672979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029535, 16.862089, 18.349585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048965, 0.993426, -0.103475,
		0.808896, 0.100215, 0.579347,
		0.585909, -0.055332, -0.808486,
		16.205307, 16.845490, 18.107038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.411449, 17.272207, 18.794085>,  <15.795172, 16.884222, 18.672979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.411449, 17.272207, 18.794085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.351023, 17.239548, 18.400026>,  <16.314768, 17.219952, 18.163591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.351023, 17.239548, 18.400026>,  <16.411449, 17.272207, 18.794085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351023, 17.239548, 18.400026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084711, 0.991848, -0.095193,
		0.984888, -0.097832, -0.142917,
		-0.151065, -0.081647, -0.985146,
		16.305704, 17.215054, 18.104483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826736, 17.785967, 18.576103>,  <16.411449, 17.272207, 18.794085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826736, 17.785967, 18.576103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.630453, 17.693460, 18.240074>,  <16.512682, 17.637957, 18.038458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.630453, 17.693460, 18.240074>,  <16.826736, 17.785967, 18.576103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630453, 17.693460, 18.240074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061392, 0.952561, -0.298092,
		0.869157, -0.197851, -0.453234,
		-0.490711, -0.231264, -0.840071,
		16.483240, 17.624081, 17.988052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.241472, 17.915991, 17.844240>,  <16.826736, 17.785967, 18.576103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.241472, 17.915991, 17.844240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.847242, 17.936281, 17.779657>,  <16.610704, 17.948456, 17.740908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.847242, 17.936281, 17.779657>,  <17.241472, 17.915991, 17.844240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847242, 17.936281, 17.779657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128673, 0.844305, -0.520186,
		0.109930, -0.533457, -0.838653,
		-0.985575, 0.050728, -0.161456,
		16.551569, 17.951500, 17.731220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242207, 18.044384, 17.158991>,  <17.241472, 17.915991, 17.844240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242207, 18.044384, 17.158991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.884592, 18.160709, 17.295301>,  <16.670023, 18.230505, 17.377089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.884592, 18.160709, 17.295301>,  <17.242207, 18.044384, 17.158991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884592, 18.160709, 17.295301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035895, 0.711723, -0.701542,
		-0.446557, -0.639435, -0.625867,
		-0.894035, 0.290813, 0.340778,
		16.616381, 18.247953, 17.397535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996443, 18.279886, 16.531996>,  <17.242207, 18.044384, 17.158991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996443, 18.279886, 16.531996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.788153, 18.419367, 16.843702>,  <16.663179, 18.503056, 17.030725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.788153, 18.419367, 16.843702>,  <16.996443, 18.279886, 16.531996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.788153, 18.419367, 16.843702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098033, 0.931167, -0.351166,
		-0.848077, -0.106467, -0.519066,
		-0.520725, 0.348702, 0.779264,
		16.631935, 18.523977, 17.077482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452938, 18.667044, 16.258141>,  <16.996443, 18.279886, 16.531996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452938, 18.667044, 16.258141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.515205, 18.793434, 16.632504>,  <16.552567, 18.869268, 16.857122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.515205, 18.793434, 16.632504>,  <16.452938, 18.667044, 16.258141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.515205, 18.793434, 16.632504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029336, 0.945563, -0.324115,
		-0.987374, 0.077910, 0.137925,
		0.155669, 0.315977, 0.935909,
		16.561907, 18.888227, 16.913277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226616, 19.401186, 16.175713>,  <16.452938, 18.667044, 16.258141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226616, 19.401186, 16.175713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362770, 19.400339, 16.551826>,  <16.444462, 19.399832, 16.777494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362770, 19.400339, 16.551826>,  <16.226616, 19.401186, 16.175713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362770, 19.400339, 16.551826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066597, 0.997540, -0.021863,
		-0.937924, 0.070062, 0.339689,
		0.340386, -0.002117, 0.940283,
		16.464886, 19.399704, 16.833912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848912, 19.879112, 16.436804>,  <16.226616, 19.401186, 16.175713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848912, 19.879112, 16.436804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188839, 19.851254, 16.645786>,  <16.392796, 19.834538, 16.771175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188839, 19.851254, 16.645786>,  <15.848912, 19.879112, 16.436804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188839, 19.851254, 16.645786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177259, 0.971260, -0.158850,
		-0.496379, 0.227604, 0.837737,
		0.849816, -0.069647, 0.522458,
		16.443783, 19.830360, 16.802525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862814, 20.495461, 16.940426>,  <15.848912, 19.879112, 16.436804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862814, 20.495461, 16.940426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233229, 20.354971, 16.885153>,  <16.455479, 20.270678, 16.851990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233229, 20.354971, 16.885153>,  <15.862814, 20.495461, 16.940426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233229, 20.354971, 16.885153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323054, 0.926906, -0.191002,
		0.195167, 0.132235, 0.971815,
		0.926038, -0.351226, -0.138182,
		16.511040, 20.249603, 16.843699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334169, 21.046904, 17.102842>,  <15.862814, 20.495461, 16.940426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334169, 21.046904, 17.102842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577112, 20.793198, 16.911499>,  <16.722878, 20.640974, 16.796694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577112, 20.793198, 16.911499>,  <16.334169, 21.046904, 17.102842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.577112, 20.793198, 16.911499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493795, 0.773095, -0.398108,
		0.622322, 0.005583, 0.782742,
		0.607357, -0.634265, -0.478357,
		16.759319, 20.602919, 16.767992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089586, 21.258137, 17.265564>,  <16.334169, 21.046904, 17.102842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089586, 21.258137, 17.265564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.095158, 21.030617, 16.936621>,  <17.098501, 20.894104, 16.739254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.095158, 21.030617, 16.936621>,  <17.089586, 21.258137, 17.265564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.095158, 21.030617, 16.936621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596812, 0.664602, -0.449577,
		0.802260, -0.484530, 0.348725,
		0.013930, -0.568801, -0.822357,
		17.099337, 20.859976, 16.689913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848684, 21.099255, 17.122238>,  <17.089586, 21.258137, 17.265564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848684, 21.099255, 17.122238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.626209, 21.034304, 16.796223>,  <17.492723, 20.995333, 16.600613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.626209, 21.034304, 16.796223>,  <17.848684, 21.099255, 17.122238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626209, 21.034304, 16.796223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666892, 0.497996, -0.554306,
		0.495885, -0.851844, -0.168703,
		-0.556195, -0.162365, -0.815037,
		17.459352, 20.985590, 16.551712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295120, 20.677433, 16.699436>,  <17.848684, 21.099255, 17.122238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295120, 20.677433, 16.699436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054485, 20.876337, 16.449373>,  <17.910105, 20.995680, 16.299335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054485, 20.876337, 16.449373>,  <18.295120, 20.677433, 16.699436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.054485, 20.876337, 16.449373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744939, 0.066714, -0.663788,
		-0.288370, -0.865031, -0.410564,
		-0.601588, 0.497262, -0.625157,
		17.874008, 21.025517, 16.261826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.324442, 20.423557, 16.107199>,  <18.295120, 20.677433, 16.699436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.324442, 20.423557, 16.107199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.161163, 20.773605, 16.003246>,  <18.063196, 20.983635, 15.940874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.161163, 20.773605, 16.003246>,  <18.324442, 20.423557, 16.107199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161163, 20.773605, 16.003246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702681, 0.119468, -0.701403,
		-0.582765, -0.468926, -0.663697,
		-0.408197, 0.875121, -0.259883,
		18.038704, 21.036142, 15.925282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.331427, 20.507256, 15.311981>,  <18.324442, 20.423557, 16.107199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.331427, 20.507256, 15.311981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259230, 20.882040, 15.431664>,  <18.215912, 21.106911, 15.503473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259230, 20.882040, 15.431664>,  <18.331427, 20.507256, 15.311981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.259230, 20.882040, 15.431664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579149, 0.347116, -0.737629,
		-0.794990, 0.040148, -0.605293,
		-0.180492, 0.936962, 0.299205,
		18.205082, 21.163128, 15.521425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142771, 20.894800, 14.670913>,  <18.331427, 20.507256, 15.311981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142771, 20.894800, 14.670913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.234819, 21.170780, 14.945434>,  <18.290049, 21.336369, 15.110147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.234819, 21.170780, 14.945434>,  <18.142771, 20.894800, 14.670913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234819, 21.170780, 14.945434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453541, 0.547923, -0.702909,
		-0.861014, 0.473020, -0.186833,
		0.230120, 0.689951, 0.686303,
		18.303856, 21.377766, 15.151324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.841978, 21.625618, 14.355940>,  <18.142771, 20.894800, 14.670913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.841978, 21.625618, 14.355940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147467, 21.666206, 14.610948>,  <18.330761, 21.690559, 14.763952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147467, 21.666206, 14.610948>,  <17.841978, 21.625618, 14.355940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.147467, 21.666206, 14.610948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466621, 0.595661, -0.653799,
		-0.446086, 0.796801, 0.407572,
		0.763723, 0.101469, 0.637520,
		18.376583, 21.696648, 14.802203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874790, 22.338806, 14.489313>,  <17.841978, 21.625618, 14.355940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.874790, 22.338806, 14.489313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.236488, 22.194967, 14.581426>,  <18.453506, 22.108664, 14.636693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.236488, 22.194967, 14.581426>,  <17.874790, 22.338806, 14.489313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.236488, 22.194967, 14.581426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422533, 0.675576, -0.604204,
		0.061698, 0.643650, 0.762829,
		0.904245, -0.359599, 0.230282,
		18.507761, 22.087088, 14.650510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260395, 22.957333, 14.458631>,  <17.874790, 22.338806, 14.489313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260395, 22.957333, 14.458631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536406, 22.667828, 14.460849>,  <18.702013, 22.494125, 14.462179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536406, 22.667828, 14.460849>,  <18.260395, 22.957333, 14.458631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536406, 22.667828, 14.460849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544591, 0.514132, -0.662638,
		0.476741, 0.460258, 0.748920,
		0.690028, -0.723762, 0.005545,
		18.743414, 22.450699, 14.462512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.982317, 23.278181, 14.605275>,  <18.260395, 22.957333, 14.458631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.982317, 23.278181, 14.605275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044537, 22.937326, 14.405410>,  <19.081869, 22.732813, 14.285490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044537, 22.937326, 14.405410>,  <18.982317, 23.278181, 14.605275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044537, 22.937326, 14.405410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623947, 0.476901, -0.619076,
		0.765829, -0.215467, 0.605871,
		0.155550, -0.852138, -0.499664,
		19.091202, 22.681684, 14.255510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.720161, 23.276432, 14.469322>,  <18.982317, 23.278181, 14.605275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.720161, 23.276432, 14.469322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.565517, 23.023218, 14.201055>,  <19.472731, 22.871290, 14.040093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.565517, 23.023218, 14.201055>,  <19.720161, 23.276432, 14.469322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.565517, 23.023218, 14.201055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454768, 0.501796, -0.735790,
		0.802322, -0.589462, 0.093886,
		-0.386609, -0.633037, -0.670670,
		19.449535, 22.833307, 13.999853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.232584, 23.130589, 13.875117>,  <19.720161, 23.276432, 14.469322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.232584, 23.130589, 13.875117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867395, 23.054501, 13.730730>,  <19.648283, 23.008848, 13.644097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867395, 23.054501, 13.730730>,  <20.232584, 23.130589, 13.875117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867395, 23.054501, 13.730730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276864, 0.361032, -0.890507,
		0.299712, -0.912947, -0.276948,
		-0.912972, -0.190219, -0.360968,
		19.593504, 22.997435, 13.622439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419939, 22.714813, 13.316403>,  <20.232584, 23.130589, 13.875117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419939, 22.714813, 13.316403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.072195, 22.902327, 13.253845>,  <19.863548, 23.014833, 13.216311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.072195, 22.902327, 13.253845>,  <20.419939, 22.714813, 13.316403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.072195, 22.902327, 13.253845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317673, 0.287702, -0.903500,
		-0.378550, -0.835147, -0.399036,
		-0.869358, 0.468783, -0.156394,
		19.811388, 23.042961, 13.206927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876690, 22.433807, 12.899566>,  <20.419939, 22.714813, 13.316403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876690, 22.433807, 12.899566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.665007, 22.755678, 12.791912>,  <20.537996, 22.948801, 12.727320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.665007, 22.755678, 12.791912>,  <20.876690, 22.433807, 12.899566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665007, 22.755678, 12.791912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788777, -0.349672, 0.505530,
		0.312680, 0.479817, 0.819760,
		-0.529209, 0.804677, -0.269133,
		20.506245, 22.997082, 12.711172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477932, 21.873365, 13.065738>,  <20.876690, 22.433807, 12.899566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477932, 21.873365, 13.065738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.612045, 21.718416, 13.409256>,  <20.692513, 21.625446, 13.615367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.612045, 21.718416, 13.409256>,  <20.477932, 21.873365, 13.065738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.612045, 21.718416, 13.409256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247550, -0.915751, -0.316415,
		0.909013, -0.106506, -0.402928,
		0.335282, -0.387371, 0.858796,
		20.712629, 21.602205, 13.666895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648375, 21.261065, 12.816037>,  <20.477932, 21.873365, 13.065738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648375, 21.261065, 12.816037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.592268, 21.250647, 13.211946>,  <20.558605, 21.244396, 13.449491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.592268, 21.250647, 13.211946>,  <20.648375, 21.261065, 12.816037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.592268, 21.250647, 13.211946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142158, -0.988767, -0.046164,
		0.979856, -0.147179, 0.134987,
		-0.140265, -0.026045, 0.989771,
		20.550188, 21.242832, 13.508877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074947, 20.648685, 12.927658>,  <20.648375, 21.261065, 12.816037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074947, 20.648685, 12.927658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.825396, 20.720945, 13.231800>,  <20.675665, 20.764301, 13.414286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.825396, 20.720945, 13.231800>,  <21.074947, 20.648685, 12.927658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825396, 20.720945, 13.231800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030545, -0.966538, 0.254699,
		0.780924, 0.182126, 0.597484,
		-0.623879, 0.180651, 0.760356,
		20.638231, 20.775141, 13.459907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.278296, 20.285553, 13.473367>,  <21.074947, 20.648685, 12.927658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.278296, 20.285553, 13.473367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.887730, 20.331453, 13.546515>,  <20.653389, 20.358994, 13.590405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.887730, 20.331453, 13.546515>,  <21.278296, 20.285553, 13.473367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887730, 20.331453, 13.546515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091318, -0.987061, 0.131799,
		0.195630, 0.111991, 0.974262,
		-0.976417, 0.114751, 0.182872,
		20.594805, 20.365879, 13.601377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058298, 19.895142, 14.097262>,  <21.278296, 20.285553, 13.473367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058298, 19.895142, 14.097262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.763212, 19.941765, 13.831273>,  <20.586161, 19.969738, 13.671679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.763212, 19.941765, 13.831273>,  <21.058298, 19.895142, 14.097262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.763212, 19.941765, 13.831273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161191, -0.986906, 0.005838,
		-0.655585, 0.111495, 0.746845,
		-0.737717, 0.116557, -0.664972,
		20.541897, 19.976732, 13.631782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.465099, 19.420921, 14.223353>,  <21.058298, 19.895142, 14.097262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.465099, 19.420921, 14.223353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473101, 19.511293, 13.833778>,  <20.477901, 19.565516, 13.600033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473101, 19.511293, 13.833778>,  <20.465099, 19.420921, 14.223353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473101, 19.511293, 13.833778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061652, -0.972001, -0.226745,
		-0.997897, 0.064581, -0.005512,
		0.020001, 0.225929, -0.973939,
		20.479101, 19.579073, 13.541596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959429, 18.982004, 13.893082>,  <20.465099, 19.420921, 14.223353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959429, 18.982004, 13.893082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193563, 19.094852, 13.589032>,  <20.334045, 19.162561, 13.406603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193563, 19.094852, 13.589032>,  <19.959429, 18.982004, 13.893082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193563, 19.094852, 13.589032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095331, -0.907060, -0.410065,
		-0.805166, 0.312490, -0.504042,
		0.585338, 0.282120, -0.760124,
		20.369165, 19.179489, 13.360995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.631285, 18.688993, 13.356678>,  <19.959429, 18.982004, 13.893082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.631285, 18.688993, 13.356678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.985580, 18.773232, 13.191215>,  <20.198158, 18.823774, 13.091936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.985580, 18.773232, 13.191215>,  <19.631285, 18.688993, 13.356678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985580, 18.773232, 13.191215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026676, -0.912780, -0.407580,
		-0.463413, 0.349975, -0.814104,
		0.885741, 0.210595, -0.413658,
		20.251303, 18.836411, 13.067117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058271, 18.257490, 13.758912>,  <19.631285, 18.688993, 13.356678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058271, 18.257490, 13.758912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.121220, 17.863411, 13.731736>,  <20.158989, 17.626963, 13.715430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.121220, 17.863411, 13.731736>,  <20.058271, 18.257490, 13.758912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121220, 17.863411, 13.731736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731411, 0.070053, 0.678330,
		-0.663531, -0.156440, 0.731610,
		0.157369, -0.985200, -0.067940,
		20.168430, 17.567850, 13.711354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.995916, 18.458622, 14.506093>,  <20.058271, 18.257490, 13.758912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.995916, 18.458622, 14.506093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.157211, 18.095625, 14.553172>,  <20.253988, 17.877827, 14.581419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.157211, 18.095625, 14.553172>,  <19.995916, 18.458622, 14.506093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.157211, 18.095625, 14.553172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898713, -0.416958, -0.135871,
		0.172377, -0.050987, -0.983711,
		0.403239, -0.907494, 0.117697,
		20.278183, 17.823376, 14.588481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522840, 17.837696, 14.260949>,  <19.995916, 18.458622, 14.506093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522840, 17.837696, 14.260949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723093, 17.579176, 14.491310>,  <19.843245, 17.424065, 14.629527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723093, 17.579176, 14.491310>,  <19.522840, 17.837696, 14.260949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.723093, 17.579176, 14.491310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630460, -0.728104, -0.269045,
		0.593200, -0.228391, -0.771979,
		0.500633, -0.646299, 0.575902,
		19.873283, 17.385286, 14.664081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.465014, 17.772707, 14.970471>,  <19.522840, 17.837696, 14.260949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.465014, 17.772707, 14.970471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.365509, 17.952787, 15.313501>,  <19.305805, 18.060835, 15.519320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.365509, 17.952787, 15.313501>,  <19.465014, 17.772707, 14.970471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.365509, 17.952787, 15.313501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207412, -0.840108, 0.501197,
		0.946096, 0.302551, 0.115611,
		-0.248763, 0.450201, 0.857575,
		19.290880, 18.087849, 15.570774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.043108, 17.966248, 15.514744>,  <19.465014, 17.772707, 14.970471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.043108, 17.966248, 15.514744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.699080, 17.882919, 15.701024>,  <19.492662, 17.832922, 15.812792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.699080, 17.882919, 15.701024>,  <20.043108, 17.966248, 15.514744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.699080, 17.882919, 15.701024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417178, -0.812623, 0.406948,
		0.293663, 0.544285, 0.785822,
		-0.860072, -0.208322, 0.465701,
		19.441057, 17.820423, 15.840734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787262, 17.758881, 15.348842>,  <20.043108, 17.966248, 15.514744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787262, 17.758881, 15.348842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998863, 18.005730, 15.581845>,  <21.125824, 18.153839, 15.721647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998863, 18.005730, 15.581845>,  <20.787262, 17.758881, 15.348842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998863, 18.005730, 15.581845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831487, -0.239700, -0.501172,
		-0.169656, 0.749471, -0.639930,
		0.529005, 0.617120, 0.582508,
		21.157564, 18.190866, 15.756598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960489, 17.200239, 14.836700>,  <20.787262, 17.758881, 15.348842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960489, 17.200239, 14.836700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.310211, 17.051458, 14.711965>,  <21.520044, 16.962191, 14.637123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.310211, 17.051458, 14.711965>,  <20.960489, 17.200239, 14.836700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.310211, 17.051458, 14.711965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388229, -0.921501, 0.010654,
		-0.291324, 0.111750, -0.950075,
		0.874304, -0.371951, -0.311840,
		21.572502, 16.939873, 14.618413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.807903, 16.723293, 14.295676>,  <20.960489, 17.200239, 14.836700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.807903, 16.723293, 14.295676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.162264, 16.600859, 14.435098>,  <21.374880, 16.527399, 14.518750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.162264, 16.600859, 14.435098>,  <20.807903, 16.723293, 14.295676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162264, 16.600859, 14.435098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338655, -0.940257, 0.035048,
		0.317002, -0.149089, -0.936634,
		0.885902, -0.306085, 0.348553,
		21.428034, 16.509033, 14.539663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857937, 16.148258, 13.966788>,  <20.807903, 16.723293, 14.295676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857937, 16.148258, 13.966788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.111710, 16.112532, 14.273909>,  <21.263973, 16.091095, 14.458180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.111710, 16.112532, 14.273909>,  <20.857937, 16.148258, 13.966788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.111710, 16.112532, 14.273909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347602, -0.920168, 0.180180,
		0.690411, -0.381200, -0.614832,
		0.634433, -0.089318, 0.767800,
		21.302040, 16.085735, 14.504249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193523, 15.455661, 13.907239>,  <20.857937, 16.148258, 13.966788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193523, 15.455661, 13.907239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.251053, 15.581482, 14.282551>,  <21.285570, 15.656975, 14.507738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.251053, 15.581482, 14.282551>,  <21.193523, 15.455661, 13.907239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.251053, 15.581482, 14.282551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407089, -0.845394, 0.345815,
		0.901994, -0.431700, 0.006463,
		0.143824, 0.314554, 0.938281,
		21.294201, 15.675848, 14.564035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170565, 14.851562, 14.202002>,  <21.193523, 15.455661, 13.907239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170565, 14.851562, 14.202002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.177242, 15.094957, 14.519357>,  <21.181248, 15.240994, 14.709770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.177242, 15.094957, 14.519357>,  <21.170565, 14.851562, 14.202002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.177242, 15.094957, 14.519357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216943, -0.772391, 0.596948,
		0.976042, -0.182085, 0.119113,
		0.016693, 0.608487, 0.793388,
		21.182251, 15.277503, 14.757373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.801224, 14.695478, 14.668724>,  <21.170565, 14.851562, 14.202002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.801224, 14.695478, 14.668724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.494322, 14.875310, 14.851678>,  <21.310181, 14.983209, 14.961451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.494322, 14.875310, 14.851678>,  <21.801224, 14.695478, 14.668724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.494322, 14.875310, 14.851678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241704, -0.863278, 0.443091,
		0.594055, 0.229411, 0.771018,
		-0.767253, 0.449579, 0.457385,
		21.264145, 15.010183, 14.988894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.835135, 14.744127, 15.412677>,  <21.801224, 14.695478, 14.668724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.835135, 14.744127, 15.412677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.449955, 14.717787, 15.308067>,  <21.218847, 14.701982, 15.245302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.449955, 14.717787, 15.308067>,  <21.835135, 14.744127, 15.412677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.449955, 14.717787, 15.308067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088262, -0.839375, 0.536339,
		-0.254834, 0.539549, 0.802463,
		-0.962948, -0.065850, -0.261523,
		21.161070, 14.698031, 15.229610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.574965, 14.344261, 15.419245>,  <21.835135, 14.744127, 15.412677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.574965, 14.344261, 15.419245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.307512, 14.511865, 15.664966>,  <22.147041, 14.612427, 15.812398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.307512, 14.511865, 15.664966>,  <22.574965, 14.344261, 15.419245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.307512, 14.511865, 15.664966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423710, -0.893573, 0.148313,
		0.611068, -0.161119, 0.775008,
		-0.668630, 0.419008, 0.614302,
		22.106924, 14.637568, 15.849257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.175777, 14.490767, 15.839084>,  <22.574965, 14.344261, 15.419245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.175777, 14.490767, 15.839084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.249454, 14.791561, 15.585916>,  <23.293661, 14.972038, 15.434014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.249454, 14.791561, 15.585916>,  <23.175777, 14.490767, 15.839084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.249454, 14.791561, 15.585916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950440, 0.027826, 0.309660,
		0.250472, -0.658591, -0.709592,
		0.184195, 0.751986, -0.632921,
		23.304712, 15.017157, 15.396039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.782055, 14.314850, 15.360914>,  <23.175777, 14.490767, 15.839084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.782055, 14.314850, 15.360914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.735231, 14.712045, 15.367527>,  <23.707136, 14.950361, 15.371494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.735231, 14.712045, 15.367527>,  <23.782055, 14.314850, 15.360914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.735231, 14.712045, 15.367527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964275, 0.109660, 0.241140,
		0.237636, 0.044168, -0.970350,
		-0.117060, 0.992987, 0.016531,
		23.700113, 15.009941, 15.372486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.242966, 14.662416, 14.910205>,  <23.782055, 14.314850, 15.360914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.242966, 14.662416, 14.910205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171211, 14.923402, 15.204718>,  <24.128159, 15.079993, 15.381425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171211, 14.923402, 15.204718>,  <24.242966, 14.662416, 14.910205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171211, 14.923402, 15.204718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968598, -0.013834, 0.248246,
		0.172158, 0.757693, -0.629495,
		-0.179385, 0.652465, 0.736281,
		24.117395, 15.119142, 15.425602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797543, 15.174256, 14.769344>,  <24.242966, 14.662416, 14.910205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797543, 15.174256, 14.769344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687632, 15.177420, 15.153934>,  <24.621685, 15.179317, 15.384688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687632, 15.177420, 15.153934>,  <24.797543, 15.174256, 14.769344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687632, 15.177420, 15.153934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959708, 0.063402, 0.273751,
		-0.058794, 0.997957, -0.025012,
		-0.274778, 0.007909, 0.961475,
		24.605198, 15.179792, 15.442377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168419, 15.361060, 15.439858>,  <24.797543, 15.174256, 14.769344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168419, 15.361060, 15.439858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332966, 15.642230, 15.671952>,  <25.431694, 15.810932, 15.811209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332966, 15.642230, 15.671952>,  <25.168419, 15.361060, 15.439858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332966, 15.642230, 15.671952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595833, 0.689127, -0.412416,
		-0.689753, -0.176067, 0.702311,
		0.411369, 0.702925, 0.580234,
		25.456377, 15.853107, 15.846023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819592, 15.769871, 15.385644>,  <25.168419, 15.361060, 15.439858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819592, 15.769871, 15.385644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825853, 15.411572, 15.563359>,  <25.829611, 15.196592, 15.669989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825853, 15.411572, 15.563359>,  <25.819592, 15.769871, 15.385644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825853, 15.411572, 15.563359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579457, -0.353990, -0.734112,
		0.814853, 0.268940, 0.513504,
		0.015657, -0.895747, 0.444289,
		25.830551, 15.142847, 15.696646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490263, 15.565772, 15.496666>,  <25.819592, 15.769871, 15.385644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490263, 15.565772, 15.496666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244667, 15.256000, 15.435641>,  <26.097309, 15.070136, 15.399027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244667, 15.256000, 15.435641>,  <26.490263, 15.565772, 15.496666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244667, 15.256000, 15.435641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432282, -0.168202, -0.885912,
		0.660416, -0.609890, 0.438046,
		-0.613989, -0.774430, -0.152562,
		26.060471, 15.023670, 15.389873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770578, 15.204879, 15.029635>,  <26.490263, 15.565772, 15.496666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770578, 15.204879, 15.029635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432972, 14.990510, 15.021369>,  <26.230408, 14.861889, 15.016409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432972, 14.990510, 15.021369>,  <26.770578, 15.204879, 15.029635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432972, 14.990510, 15.021369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342326, -0.508661, -0.789985,
		0.412859, -0.673833, 0.612778,
		-0.844014, -0.535922, -0.020665,
		26.179768, 14.829734, 15.015169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.764024, 15.748872, 29.009418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.038030, 15.470797, 28.922270>,  <14.202434, 15.303951, 28.869982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.038030, 15.470797, 28.922270>,  <13.764024, 15.748872, 29.009418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038030, 15.470797, 28.922270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209838, 0.098107, -0.972802,
		0.697654, 0.712102, -0.078672,
		0.685016, -0.695187, -0.217871,
		14.243534, 15.262240, 28.856909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393107, 16.016417, 28.563169>,  <13.764024, 15.748872, 29.009418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393107, 16.016417, 28.563169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.399449, 15.625379, 28.479210>,  <14.403255, 15.390756, 28.428835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.399449, 15.625379, 28.479210>,  <14.393107, 16.016417, 28.563169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399449, 15.625379, 28.479210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151450, 0.209850, -0.965933,
		0.988338, -0.016474, 0.151383,
		0.015855, -0.977595, -0.209897,
		14.404206, 15.332100, 28.416241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951769, 15.866187, 28.203871>,  <14.393107, 16.016417, 28.563169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951769, 15.866187, 28.203871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.749949, 15.534252, 28.108538>,  <14.628858, 15.335092, 28.051338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.749949, 15.534252, 28.108538>,  <14.951769, 15.866187, 28.203871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.749949, 15.534252, 28.108538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176575, 0.171031, -0.969314,
		0.845134, -0.531150, 0.060235,
		-0.504548, -0.829836, -0.238332,
		14.598585, 15.285301, 28.037039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.317964, 15.583829, 27.566431>,  <14.951769, 15.866187, 28.203871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.317964, 15.583829, 27.566431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.980133, 15.369658, 27.565451>,  <14.777434, 15.241155, 27.564861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.980133, 15.369658, 27.565451>,  <15.317964, 15.583829, 27.566431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980133, 15.369658, 27.565451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036584, -0.053136, -0.997917,
		0.534183, -0.842907, 0.064466,
		-0.844577, -0.535429, -0.002452,
		14.726760, 15.209029, 27.564714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477239, 14.999094, 27.141146>,  <15.317964, 15.583829, 27.566431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477239, 14.999094, 27.141146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.078751, 15.031496, 27.128607>,  <14.839658, 15.050938, 27.121084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.078751, 15.031496, 27.128607>,  <15.477239, 14.999094, 27.141146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.078751, 15.031496, 27.128607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000253, -0.363595, -0.931557,
		-0.086857, -0.928029, 0.362242,
		-0.996221, 0.081004, -0.031346,
		14.779884, 15.055798, 27.119204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138700, 14.306767, 26.803259>,  <15.477239, 14.999094, 27.141146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138700, 14.306767, 26.803259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.905441, 14.626181, 26.743557>,  <14.765486, 14.817829, 26.707735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.905441, 14.626181, 26.743557>,  <15.138700, 14.306767, 26.803259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.905441, 14.626181, 26.743557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173754, -0.302084, -0.937312,
		-0.793566, -0.520658, 0.314909,
		-0.583149, 0.798536, -0.149257,
		14.730496, 14.865742, 26.698780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668399, 14.036241, 26.305727>,  <15.138700, 14.306767, 26.803259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668399, 14.036241, 26.305727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.550155, 14.418291, 26.313202>,  <14.479208, 14.647521, 26.317688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.550155, 14.418291, 26.313202>,  <14.668399, 14.036241, 26.305727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550155, 14.418291, 26.313202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536888, -0.149922, -0.830226,
		-0.790168, -0.255457, 0.557114,
		-0.295611, 0.955125, 0.018688,
		14.461472, 14.704829, 26.318808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991405, 14.010652, 26.090416>,  <14.668399, 14.036241, 26.305727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991405, 14.010652, 26.090416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.089068, 14.394157, 26.032236>,  <14.147666, 14.624261, 25.997328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.089068, 14.394157, 26.032236>,  <13.991405, 14.010652, 26.090416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089068, 14.394157, 26.032236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561093, 0.017340, -0.827571,
		-0.790925, 0.283669, 0.542190,
		0.244158, 0.958766, -0.145450,
		14.162315, 14.681787, 25.988602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356382, 14.280864, 25.880150>,  <13.991405, 14.010652, 26.090416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356382, 14.280864, 25.880150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.660777, 14.508493, 25.755537>,  <13.843414, 14.645071, 25.680769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.660777, 14.508493, 25.755537>,  <13.356382, 14.280864, 25.880150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.660777, 14.508493, 25.755537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403033, 0.038383, -0.914380,
		-0.508393, 0.821389, 0.258565,
		0.760987, 0.569075, -0.311533,
		13.889073, 14.679215, 25.662077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.165105, 14.949676, 25.681450>,  <13.356382, 14.280864, 25.880150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.165105, 14.949676, 25.681450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.494947, 14.884279, 25.464823>,  <13.692853, 14.845041, 25.334846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.494947, 14.884279, 25.464823>,  <13.165105, 14.949676, 25.681450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494947, 14.884279, 25.464823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534000, 0.091046, -0.840568,
		0.186732, 0.982335, -0.012227,
		0.824606, -0.163490, -0.541568,
		13.742330, 14.835232, 25.302353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181077, 15.485637, 25.033432>,  <13.165105, 14.949676, 25.681450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181077, 15.485637, 25.033432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.423213, 15.177022, 24.955158>,  <13.568495, 14.991853, 24.908194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.423213, 15.177022, 24.955158>,  <13.181077, 15.485637, 25.033432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.423213, 15.177022, 24.955158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435159, -0.114937, -0.892987,
		0.666482, 0.625715, -0.405318,
		0.605341, -0.771538, -0.195682,
		13.604815, 14.945560, 24.896454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299946, 15.595457, 24.254766>,  <13.181077, 15.485637, 25.033432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.299946, 15.595457, 24.254766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.402659, 15.226068, 24.368793>,  <13.464288, 15.004436, 24.437210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.402659, 15.226068, 24.368793>,  <13.299946, 15.595457, 24.254766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.402659, 15.226068, 24.368793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286137, -0.354376, -0.890249,
		0.923140, 0.147034, -0.355238,
		0.256784, -0.923471, 0.285067,
		13.479694, 14.949027, 24.454313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.589590, 15.263882, 23.723831>,  <13.299946, 15.595457, 24.254766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.589590, 15.263882, 23.723831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.483809, 14.938253, 23.930656>,  <13.420341, 14.742876, 24.054750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.483809, 14.938253, 23.930656>,  <13.589590, 15.263882, 23.723831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.483809, 14.938253, 23.930656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414026, -0.388392, -0.823246,
		0.871004, -0.431785, -0.234336,
		-0.264451, -0.814072, 0.517061,
		13.404474, 14.694032, 24.085775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.735322, 14.734216, 23.286680>,  <13.589590, 15.263882, 23.723831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.735322, 14.734216, 23.286680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.467042, 14.582324, 23.541544>,  <13.306074, 14.491189, 23.694462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.467042, 14.582324, 23.541544>,  <13.735322, 14.734216, 23.286680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.467042, 14.582324, 23.541544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415457, -0.519295, -0.746813,
		0.614458, -0.765598, 0.190530,
		-0.670699, -0.379728, 0.637157,
		13.265832, 14.468406, 23.732691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.731997, 13.862327, 23.452671>,  <13.735322, 14.734216, 23.286680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.731997, 13.862327, 23.452671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.377836, 14.046301, 23.479563>,  <13.165339, 14.156686, 23.495699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.377836, 14.046301, 23.479563>,  <13.731997, 13.862327, 23.452671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377836, 14.046301, 23.479563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294556, -0.443285, -0.846602,
		-0.359582, -0.769387, 0.527963,
		-0.885403, 0.459937, 0.067230,
		13.112215, 14.184281, 23.499733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.316561, 13.538689, 22.983150>,  <13.731997, 13.862327, 23.452671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.316561, 13.538689, 22.983150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.064898, 13.813011, 23.129480>,  <12.913899, 13.977605, 23.217279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.064898, 13.813011, 23.129480>,  <13.316561, 13.538689, 22.983150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064898, 13.813011, 23.129480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645823, -0.199342, -0.737004,
		-0.432518, -0.699951, 0.568328,
		-0.629158, 0.685807, 0.365826,
		12.876150, 14.018753, 23.239227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697405, 13.234270, 22.904867>,  <13.316561, 13.538689, 22.983150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697405, 13.234270, 22.904867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.582723, 13.614263, 22.954401>,  <12.513913, 13.842258, 22.984121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.582723, 13.614263, 22.954401>,  <12.697405, 13.234270, 22.904867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.582723, 13.614263, 22.954401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750578, -0.142415, -0.645253,
		-0.595343, -0.277943, 0.753866,
		-0.286705, 0.949982, 0.123832,
		12.496711, 13.899258, 22.991550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.973982, 13.264411, 23.035198>,  <12.697405, 13.234270, 22.904867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.973982, 13.264411, 23.035198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.038914, 13.632142, 22.891819>,  <12.077873, 13.852780, 22.805792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.038914, 13.632142, 22.891819>,  <11.973982, 13.264411, 23.035198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.038914, 13.632142, 22.891819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796035, -0.092648, -0.598117,
		-0.583076, 0.382429, 0.716778,
		0.162330, 0.919328, -0.358448,
		12.087613, 13.907941, 22.784285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.300174, 13.469888, 22.787891>,  <11.973982, 13.264411, 23.035198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.300174, 13.469888, 22.787891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.563683, 13.712974, 22.610487>,  <11.721787, 13.858825, 22.504044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.563683, 13.712974, 22.610487>,  <11.300174, 13.469888, 22.787891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.563683, 13.712974, 22.610487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637891, 0.138622, -0.757547,
		-0.398892, 0.781964, 0.478976,
		0.658772, 0.607714, -0.443513,
		11.761314, 13.895288, 22.477432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.040921, 14.222651, 22.825621>,  <11.300174, 13.469888, 22.787891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.040921, 14.222651, 22.825621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.289925, 14.141688, 22.523226>,  <11.439326, 14.093110, 22.341789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.289925, 14.141688, 22.523226>,  <11.040921, 14.222651, 22.825621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.289925, 14.141688, 22.523226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688640, 0.317280, -0.652003,
		0.371830, 0.926480, 0.058123,
		0.622509, -0.202409, -0.755985,
		11.476677, 14.080966, 22.296431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.720302, 14.486510, 22.344080>,  <11.040921, 14.222651, 22.825621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.720302, 14.486510, 22.344080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.003974, 14.333062, 22.107471>,  <11.174177, 14.240993, 21.965506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.003974, 14.333062, 22.107471>,  <10.720302, 14.486510, 22.344080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.003974, 14.333062, 22.107471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614977, 0.073691, -0.785094,
		0.344768, 0.920546, -0.183658,
		0.709181, -0.383621, -0.591521,
		11.216728, 14.217976, 21.930016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.666745, 14.879289, 21.810322>,  <10.720302, 14.486510, 22.344080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.666745, 14.879289, 21.810322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.833587, 14.539424, 21.681263>,  <10.933692, 14.335505, 21.603828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.833587, 14.539424, 21.681263>,  <10.666745, 14.879289, 21.810322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.833587, 14.539424, 21.681263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650396, -0.031079, -0.758959,
		0.634831, 0.526412, -0.565579,
		0.417104, -0.849661, -0.322646,
		10.958717, 14.284526, 21.584469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.023751, 15.473124, 21.546036>,  <10.666745, 14.879289, 21.810322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.023751, 15.473124, 21.546036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.880930, 15.841145, 21.481520>,  <10.795237, 16.061956, 21.442810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.880930, 15.841145, 21.481520>,  <11.023751, 15.473124, 21.546036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.880930, 15.841145, 21.481520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071186, 0.145368, 0.986813,
		0.931367, 0.363828, 0.013591,
		-0.357054, 0.920053, -0.161291,
		10.773813, 16.117161, 21.433132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.546990, 15.955933, 21.732199>,  <11.023751, 15.473124, 21.546036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.546990, 15.955933, 21.732199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.175379, 16.101721, 21.757700>,  <10.952412, 16.189194, 21.773001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.175379, 16.101721, 21.757700>,  <11.546990, 15.955933, 21.732199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.175379, 16.101721, 21.757700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125338, 0.147881, 0.981031,
		0.348128, 0.919398, -0.183068,
		-0.929030, 0.364470, 0.063754,
		10.896669, 16.211061, 21.776827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.661747, 16.542620, 22.181673>,  <11.546990, 15.955933, 21.732199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.661747, 16.542620, 22.181673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.277022, 16.433266, 22.187019>,  <11.046187, 16.367653, 22.190228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.277022, 16.433266, 22.187019>,  <11.661747, 16.542620, 22.181673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.277022, 16.433266, 22.187019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001470, 0.053989, 0.998541,
		-0.273706, 0.960389, -0.052330,
		-0.961812, -0.273383, 0.013366,
		10.988479, 16.351252, 22.191029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.435771, 16.868502, 22.732298>,  <11.661747, 16.542620, 22.181673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.435771, 16.868502, 22.732298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.137430, 16.602728, 22.713387>,  <10.958426, 16.443264, 22.702040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.137430, 16.602728, 22.713387>,  <11.435771, 16.868502, 22.732298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.137430, 16.602728, 22.713387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039276, -0.026985, 0.998864,
		-0.664953, 0.746861, -0.005969,
		-0.745852, -0.664432, -0.047277,
		10.913674, 16.403399, 22.699203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.010788, 17.067822, 23.167332>,  <11.435771, 16.868502, 22.732298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.010788, 17.067822, 23.167332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.899309, 16.687050, 23.116484>,  <10.832421, 16.458588, 23.085976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.899309, 16.687050, 23.116484>,  <11.010788, 17.067822, 23.167332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.899309, 16.687050, 23.116484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117549, -0.097557, 0.988263,
		-0.953158, 0.290370, -0.084709,
		-0.278698, -0.951928, -0.127120,
		10.815700, 16.401472, 23.078348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.429659, 17.042700, 23.558170>,  <11.010788, 17.067822, 23.167332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.429659, 17.042700, 23.558170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.543803, 16.663200, 23.503839>,  <10.612289, 16.435501, 23.471241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.543803, 16.663200, 23.503839>,  <10.429659, 17.042700, 23.558170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.543803, 16.663200, 23.503839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311020, -0.225718, 0.923211,
		-0.906552, -0.221203, -0.359490,
		0.285361, -0.948747, -0.135826,
		10.629412, 16.378576, 23.463091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.846575, 16.613356, 23.907230>,  <10.429659, 17.042700, 23.558170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.846575, 16.613356, 23.907230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.181376, 16.396954, 23.874384>,  <10.382256, 16.267113, 23.854675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.181376, 16.396954, 23.874384>,  <9.846575, 16.613356, 23.907230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.181376, 16.396954, 23.874384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070973, -0.256132, 0.964033,
		-0.542579, -0.801068, -0.252779,
		0.837001, -0.541005, -0.082118,
		10.432476, 16.234652, 23.849749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.813889, 16.007498, 24.286518>,  <9.846575, 16.613356, 23.907230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.813889, 16.007498, 24.286518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.209617, 16.002577, 24.228420>,  <10.447053, 15.999624, 24.193562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.209617, 16.002577, 24.228420>,  <9.813889, 16.007498, 24.286518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.209617, 16.002577, 24.228420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144179, -0.063991, 0.987480,
		-0.021444, -0.997875, -0.061534,
		0.989319, -0.012304, -0.145245,
		10.506413, 15.998886, 24.184847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.971229, 15.546220, 24.695171>,  <9.813889, 16.007498, 24.286518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.971229, 15.546220, 24.695171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.284570, 15.790343, 24.648043>,  <10.472574, 15.936817, 24.619766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.284570, 15.790343, 24.648043>,  <9.971229, 15.546220, 24.695171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.284570, 15.790343, 24.648043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163496, -0.019436, 0.986353,
		0.599691, -0.791924, -0.115008,
		0.783352, 0.610310, -0.117821,
		10.519575, 15.973436, 24.612696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.361188, 15.213043, 25.151823>,  <9.971229, 15.546220, 24.695171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.361188, 15.213043, 25.151823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.538645, 15.564986, 25.083666>,  <10.645119, 15.776152, 25.042770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.538645, 15.564986, 25.083666>,  <10.361188, 15.213043, 25.151823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.538645, 15.564986, 25.083666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250761, 0.060667, 0.966146,
		0.860407, -0.471351, -0.193720,
		0.443642, 0.879857, -0.170395,
		10.671738, 15.828943, 25.032547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.057443, 15.186739, 25.308365>,  <10.361188, 15.213043, 25.151823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.057443, 15.186739, 25.308365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.990032, 15.580890, 25.318438>,  <10.949586, 15.817380, 25.324480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.990032, 15.580890, 25.318438>,  <11.057443, 15.186739, 25.308365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.990032, 15.580890, 25.318438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382189, 0.041775, 0.923139,
		0.908587, 0.165196, -0.383640,
		-0.168525, 0.985376, 0.025180,
		10.939475, 15.876502, 25.325991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.610988, 15.495123, 25.657532>,  <11.057443, 15.186739, 25.308365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.610988, 15.495123, 25.657532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.342896, 15.791983, 25.658409>,  <11.182040, 15.970098, 25.658936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.342896, 15.791983, 25.658409>,  <11.610988, 15.495123, 25.657532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.342896, 15.791983, 25.658409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367831, 0.329617, 0.869513,
		0.644587, 0.583580, -0.493905,
		-0.670230, 0.742150, 0.002191,
		11.141827, 16.014627, 25.659067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.898391, 16.212387, 25.837048>,  <11.610988, 15.495123, 25.657532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.898391, 16.212387, 25.837048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.510864, 16.224037, 25.935472>,  <11.278348, 16.231028, 25.994528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.510864, 16.224037, 25.935472>,  <11.898391, 16.212387, 25.837048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.510864, 16.224037, 25.935472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232778, 0.447280, 0.863571,
		-0.084906, 0.893919, -0.440112,
		-0.968816, 0.029126, 0.246062,
		11.220220, 16.232775, 26.009291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.749268, 16.922749, 26.000319>,  <11.898391, 16.212387, 25.837048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.749268, 16.922749, 26.000319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.481385, 16.687918, 26.182234>,  <11.320656, 16.547020, 26.291384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.481385, 16.687918, 26.182234>,  <11.749268, 16.922749, 26.000319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.481385, 16.687918, 26.182234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227403, 0.420869, 0.878156,
		-0.706951, 0.691527, -0.148356,
		-0.669707, -0.587077, 0.454790,
		11.280473, 16.511795, 26.318670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.403448, 17.371569, 26.537840>,  <11.749268, 16.922749, 26.000319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.403448, 17.371569, 26.537840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.331461, 16.993105, 26.645466>,  <11.288268, 16.766027, 26.710041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.331461, 16.993105, 26.645466>,  <11.403448, 17.371569, 26.537840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.331461, 16.993105, 26.645466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227279, 0.226132, 0.947211,
		-0.957056, 0.231621, 0.174346,
		-0.179969, -0.946159, 0.269063,
		11.277471, 16.709257, 26.726185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.178863, 17.423372, 27.282066>,  <11.403448, 17.371569, 26.537840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.178863, 17.423372, 27.282066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.288951, 17.040262, 27.248781>,  <11.355004, 16.810396, 27.228811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.288951, 17.040262, 27.248781>,  <11.178863, 17.423372, 27.282066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.288951, 17.040262, 27.248781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424143, 0.043292, 0.904560,
		-0.862761, -0.284247, 0.418148,
		0.275221, -0.957773, -0.083211,
		11.371517, 16.752930, 27.223818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988675, 17.013271, 27.866699>,  <11.178863, 17.423372, 27.282066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988675, 17.013271, 27.866699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.285586, 16.805330, 27.697571>,  <11.463733, 16.680567, 27.596094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.285586, 16.805330, 27.697571>,  <10.988675, 17.013271, 27.866699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285586, 16.805330, 27.697571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453957, -0.074022, 0.887943,
		-0.492897, -0.851043, 0.181045,
		0.742277, -0.519852, -0.422823,
		11.508269, 16.649374, 27.570724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.083241, 16.319126, 28.347996>,  <10.988675, 17.013271, 27.866699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.083241, 16.319126, 28.347996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.405369, 16.379013, 28.118546>,  <11.598645, 16.414946, 27.980875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.405369, 16.379013, 28.118546>,  <11.083241, 16.319126, 28.347996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405369, 16.379013, 28.118546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568138, 0.081502, 0.818887,
		0.169354, -0.985364, -0.019426,
		0.805319, 0.149719, -0.573626,
		11.646964, 16.423929, 27.946459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<11.599726, 15.782001, 28.507269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.828053, 16.057480, 28.328444>,  <11.965049, 16.222767, 28.221149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.828053, 16.057480, 28.328444>,  <11.599726, 15.782001, 28.507269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.828053, 16.057480, 28.328444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663443, -0.066079, 0.745303,
		0.483747, -0.722032, -0.494631,
		0.570817, 0.688697, -0.447062,
		11.999298, 16.264090, 28.194324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.258524, 15.571381, 28.568884>,  <11.599726, 15.782001, 28.507269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.258524, 15.571381, 28.568884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.312764, 15.964316, 28.517311>,  <12.345308, 16.200077, 28.486368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.312764, 15.964316, 28.517311>,  <12.258524, 15.571381, 28.568884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.312764, 15.964316, 28.517311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653696, 0.009081, 0.756703,
		0.744510, -0.186889, -0.640919,
		0.135599, 0.982339, -0.128930,
		12.353444, 16.259018, 28.478632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969869, 15.786212, 28.551300>,  <12.258524, 15.571381, 28.568884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969869, 15.786212, 28.551300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.801357, 16.141661, 28.623827>,  <12.700251, 16.354929, 28.667343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.801357, 16.141661, 28.623827>,  <12.969869, 15.786212, 28.551300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.801357, 16.141661, 28.623827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689926, 0.184240, 0.700041,
		0.588665, 0.420010, -0.690699,
		-0.421279, 0.888621, 0.181320,
		12.674973, 16.408247, 28.678223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.478781, 16.304653, 28.650494>,  <12.969869, 15.786212, 28.551300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.478781, 16.304653, 28.650494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.158081, 16.417547, 28.861223>,  <12.965661, 16.485283, 28.987661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.158081, 16.417547, 28.861223>,  <13.478781, 16.304653, 28.650494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.158081, 16.417547, 28.861223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578137, 0.142785, 0.803349,
		0.151511, 0.948660, -0.277648,
		-0.801750, 0.282235, 0.526822,
		12.917556, 16.502218, 29.019270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.743068, 16.903276, 28.953308>,  <13.478781, 16.304653, 28.650494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.743068, 16.903276, 28.953308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.403877, 16.842485, 29.156420>,  <13.200363, 16.806011, 29.278286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.403877, 16.842485, 29.156420>,  <13.743068, 16.903276, 28.953308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.403877, 16.842485, 29.156420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473043, 0.215148, 0.854366,
		-0.239093, 0.964683, -0.110547,
		-0.847977, -0.151980, 0.507777,
		13.149485, 16.796892, 29.308752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604457, 17.575052, 29.379534>,  <13.743068, 16.903276, 28.953308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604457, 17.575052, 29.379534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.408928, 17.255140, 29.518904>,  <13.291611, 17.063192, 29.602526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.408928, 17.255140, 29.518904>,  <13.604457, 17.575052, 29.379534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.408928, 17.255140, 29.518904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121228, 0.333247, 0.935013,
		-0.863919, 0.499295, -0.065944,
		-0.488824, -0.799781, 0.348427,
		13.262280, 17.015205, 29.623432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113763, 17.856167, 29.827541>,  <13.604457, 17.575052, 29.379534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113763, 17.856167, 29.827541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.132215, 17.477278, 29.954437>,  <13.143287, 17.249945, 30.030575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.132215, 17.477278, 29.954437>,  <13.113763, 17.856167, 29.827541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.132215, 17.477278, 29.954437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216250, 0.319515, 0.922576,
		-0.975248, 0.026044, 0.219577,
		0.046131, -0.947223, 0.317238,
		13.146055, 17.193111, 30.049608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.772380, 17.765970, 30.472830>,  <13.113763, 17.856167, 29.827541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.772380, 17.765970, 30.472830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.979990, 17.424139, 30.465805>,  <13.104556, 17.219040, 30.461590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.979990, 17.424139, 30.465805>,  <12.772380, 17.765970, 30.472830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.979990, 17.424139, 30.465805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166491, 0.080924, 0.982717,
		-0.838388, -0.512978, 0.184281,
		0.519024, -0.854579, -0.017561,
		13.135697, 17.167765, 30.460537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542957, 17.244368, 31.033089>,  <12.772380, 17.765970, 30.472830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.542957, 17.244368, 31.033089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.924978, 17.175610, 30.936485>,  <13.154191, 17.134356, 30.878523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.924978, 17.175610, 30.936485>,  <12.542957, 17.244368, 31.033089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.924978, 17.175610, 30.936485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253867, 0.053634, 0.965751,
		-0.153055, -0.983654, 0.094862,
		0.955053, -0.171896, -0.241509,
		13.211494, 17.124041, 30.864033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760232, 16.620544, 31.363899>,  <12.542957, 17.244368, 31.033089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.760232, 16.620544, 31.363899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.106711, 16.815403, 31.319374>,  <13.314599, 16.932318, 31.292658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.106711, 16.815403, 31.319374>,  <12.760232, 16.620544, 31.363899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.106711, 16.815403, 31.319374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205074, -0.143410, 0.968183,
		0.455681, -0.861466, -0.224122,
		0.866198, 0.487144, -0.111315,
		13.366570, 16.961546, 31.285980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.196239, 16.336704, 31.920115>,  <12.760232, 16.620544, 31.363899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.196239, 16.336704, 31.920115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.422372, 16.639975, 31.790148>,  <13.558051, 16.821936, 31.712168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.422372, 16.639975, 31.790148>,  <13.196239, 16.336704, 31.920115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.422372, 16.639975, 31.790148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372987, 0.116371, 0.920510,
		0.735718, -0.641583, -0.217002,
		0.565330, 0.758175, -0.324918,
		13.591971, 16.867428, 31.692673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891602, 16.178019, 32.147118>,  <13.196239, 16.336704, 31.920115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891602, 16.178019, 32.147118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.844868, 16.570723, 32.087124>,  <13.816827, 16.806345, 32.051128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.844868, 16.570723, 32.087124>,  <13.891602, 16.178019, 32.147118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844868, 16.570723, 32.087124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459034, 0.187304, 0.868449,
		0.880702, 0.032616, -0.472546,
		-0.116835, 0.981760, -0.149988,
		13.809817, 16.865252, 32.042126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.504498, 16.399632, 32.028488>,  <13.891602, 16.178019, 32.147118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.504498, 16.399632, 32.028488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.262028, 16.676733, 32.184765>,  <14.116546, 16.842995, 32.278530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.262028, 16.676733, 32.184765>,  <14.504498, 16.399632, 32.028488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262028, 16.676733, 32.184765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573502, 0.040386, 0.818208,
		0.551040, 0.720041, -0.421778,
		-0.606177, 0.692756, 0.390690,
		14.080174, 16.884560, 32.301971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902027, 16.657288, 32.551109>,  <14.504498, 16.399632, 32.028488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902027, 16.657288, 32.551109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.548197, 16.825436, 32.631920>,  <14.335898, 16.926325, 32.680405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.548197, 16.825436, 32.631920>,  <14.902027, 16.657288, 32.551109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548197, 16.825436, 32.631920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259047, 0.082631, 0.962324,
		0.387840, 0.903581, -0.181989,
		-0.884576, 0.420372, 0.202023,
		14.282825, 16.951548, 32.692528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.071260, 17.246626, 32.773529>,  <14.902027, 16.657288, 32.551109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.071260, 17.246626, 32.773529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.702036, 17.188543, 32.916008>,  <14.480501, 17.153694, 33.001495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.702036, 17.188543, 32.916008>,  <15.071260, 17.246626, 32.773529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.702036, 17.188543, 32.916008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309150, 0.270945, 0.911600,
		-0.228879, 0.951580, -0.205209,
		-0.923060, -0.145206, 0.356194,
		14.425117, 17.144981, 33.022865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.001153, 17.812262, 33.185135>,  <15.071260, 17.246626, 32.773529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.001153, 17.812262, 33.185135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.702534, 17.575493, 33.306656>,  <14.523362, 17.433432, 33.379566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.702534, 17.575493, 33.306656>,  <15.001153, 17.812262, 33.185135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.702534, 17.575493, 33.306656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049971, 0.405437, 0.912756,
		-0.663453, 0.696597, -0.273098,
		-0.746547, -0.591924, 0.303798,
		14.478570, 17.397915, 33.397797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.556936, 18.216368, 33.520073>,  <15.001153, 17.812262, 33.185135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.556936, 18.216368, 33.520073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.518275, 17.843258, 33.658974>,  <14.495079, 17.619392, 33.742313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.518275, 17.843258, 33.658974>,  <14.556936, 18.216368, 33.520073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518275, 17.843258, 33.658974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268949, 0.311434, 0.911414,
		-0.958293, 0.181484, 0.220768,
		-0.096652, -0.932777, 0.347255,
		14.489280, 17.563425, 33.763149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145784, 18.258263, 34.090851>,  <14.556936, 18.216368, 33.520073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.145784, 18.258263, 34.090851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.338527, 17.910784, 34.136780>,  <14.454172, 17.702297, 34.164337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.338527, 17.910784, 34.136780>,  <14.145784, 18.258263, 34.090851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338527, 17.910784, 34.136780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390946, 0.330400, 0.859067,
		-0.784204, -0.369059, 0.498818,
		0.481856, -0.868695, 0.114819,
		14.483084, 17.650175, 34.171227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044727, 18.036104, 34.840240>,  <14.145784, 18.258263, 34.090851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044727, 18.036104, 34.840240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.356380, 17.831507, 34.695286>,  <14.543372, 17.708748, 34.608311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.356380, 17.831507, 34.695286>,  <14.044727, 18.036104, 34.840240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.356380, 17.831507, 34.695286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542435, 0.260367, 0.798733,
		-0.314191, -0.818892, 0.480312,
		0.779133, -0.511492, -0.362391,
		14.590120, 17.678059, 34.586567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.411624, 17.896015, 35.434906>,  <14.044727, 18.036104, 34.840240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.411624, 17.896015, 35.434906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.685291, 17.857388, 35.145744>,  <14.849492, 17.834211, 34.972248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.685291, 17.857388, 35.145744>,  <14.411624, 17.896015, 35.434906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.685291, 17.857388, 35.145744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687805, 0.415089, 0.595504,
		0.242563, -0.904641, 0.350411,
		0.684170, -0.096567, -0.722902,
		14.890542, 17.828417, 34.928875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.874549, 17.744354, 35.855518>,  <14.411624, 17.896015, 35.434906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.874549, 17.744354, 35.855518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.027301, 17.828802, 35.495609>,  <15.118952, 17.879471, 35.279663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.027301, 17.828802, 35.495609>,  <14.874549, 17.744354, 35.855518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.027301, 17.828802, 35.495609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790718, 0.429382, 0.436344,
		0.478469, -0.878100, -0.002964,
		0.381880, 0.211121, -0.899775,
		15.141865, 17.892138, 35.225677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.576559, 17.541424, 35.845989>,  <14.874549, 17.744354, 35.855518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.576559, 17.541424, 35.845989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.575451, 17.793398, 35.535332>,  <15.574786, 17.944582, 35.348938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.575451, 17.793398, 35.535332>,  <15.576559, 17.541424, 35.845989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575451, 17.793398, 35.535332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814619, 0.451869, 0.363606,
		0.579989, -0.631661, -0.514409,
		-0.002770, 0.629935, -0.776643,
		15.574620, 17.982378, 35.302338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503273, 16.855068, 35.471603>,  <15.576559, 17.541424, 35.845989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503273, 16.855068, 35.471603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.430151, 16.611671, 35.780491>,  <15.386278, 16.465633, 35.965824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.430151, 16.611671, 35.780491>,  <15.503273, 16.855068, 35.471603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430151, 16.611671, 35.780491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589362, -0.696502, -0.409313,
		0.786915, 0.380291, 0.485947,
		-0.182805, -0.608493, 0.772216,
		15.375309, 16.429123, 36.012157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197922, 16.694370, 35.882465>,  <15.503273, 16.855068, 35.471603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197922, 16.694370, 35.882465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.008381, 16.354631, 35.975479>,  <15.894656, 16.150787, 36.031288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.008381, 16.354631, 35.975479>,  <16.197922, 16.694370, 35.882465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.008381, 16.354631, 35.975479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690634, -0.522269, -0.500260,
		0.546341, -0.076453, 0.834066,
		-0.473853, -0.849347, 0.232535,
		15.866225, 16.099827, 36.045238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563728, 16.383602, 36.366707>,  <16.197922, 16.694370, 35.882465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563728, 16.383602, 36.366707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.704098, 16.009951, 36.392811>,  <16.788319, 15.785760, 36.408474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.704098, 16.009951, 36.392811>,  <16.563728, 16.383602, 36.366707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704098, 16.009951, 36.392811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050452, -0.050733, -0.997437,
		0.935044, 0.353317, 0.029325,
		0.350924, -0.934127, 0.065263,
		16.809374, 15.729712, 36.412392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031490, 16.353165, 35.814636>,  <16.563728, 16.383602, 36.366707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031490, 16.353165, 35.814636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.952217, 15.971463, 35.904190>,  <16.904654, 15.742443, 35.957924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.952217, 15.971463, 35.904190>,  <17.031490, 16.353165, 35.814636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952217, 15.971463, 35.904190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065174, -0.240744, -0.968398,
		0.977996, -0.177327, 0.109904,
		-0.198182, -0.954252, 0.223889,
		16.892763, 15.685187, 35.971355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526991, 15.878882, 35.429398>,  <17.031490, 16.353165, 35.814636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.526991, 15.878882, 35.429398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.225822, 15.624752, 35.498070>,  <17.045122, 15.472274, 35.539272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.225822, 15.624752, 35.498070>,  <17.526991, 15.878882, 35.429398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.225822, 15.624752, 35.498070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009751, -0.271605, -0.962359,
		0.658041, -0.722904, 0.210691,
		-0.752919, -0.635327, 0.171678,
		16.999947, 15.434155, 35.549572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721708, 15.268460, 35.224304>,  <17.526991, 15.878882, 35.429398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721708, 15.268460, 35.224304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.324141, 15.224491, 35.221832>,  <17.085600, 15.198110, 35.220348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.324141, 15.224491, 35.221832>,  <17.721708, 15.268460, 35.224304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.324141, 15.224491, 35.221832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024027, -0.161809, -0.986530,
		0.107444, -0.980681, 0.163466,
		-0.993921, -0.109924, -0.006177,
		17.025965, 15.191514, 35.219978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539066, 14.670789, 34.860611>,  <17.721708, 15.268460, 35.224304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.539066, 14.670789, 34.860611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.195583, 14.874908, 34.841766>,  <16.989494, 14.997380, 34.830460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.195583, 14.874908, 34.841766>,  <17.539066, 14.670789, 34.860611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195583, 14.874908, 34.841766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008581, -0.077595, -0.996948,
		-0.512397, -0.856489, 0.062252,
		-0.858706, 0.510299, -0.047109,
		16.937971, 15.027998, 34.827633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003065, 14.193853, 34.479309>,  <17.539066, 14.670789, 34.860611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.003065, 14.193853, 34.479309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.840956, 14.559013, 34.459850>,  <16.743690, 14.778110, 34.448177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.840956, 14.559013, 34.459850>,  <17.003065, 14.193853, 34.479309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.840956, 14.559013, 34.459850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434363, -0.239108, -0.868422,
		-0.804413, -0.330820, 0.493434,
		-0.405275, 0.912900, -0.048645,
		16.719374, 14.832883, 34.445255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334274, 14.101659, 34.212128>,  <17.003065, 14.193853, 34.479309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334274, 14.101659, 34.212128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.420267, 14.487457, 34.150772>,  <16.471863, 14.718937, 34.113956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.420267, 14.487457, 34.150772>,  <16.334274, 14.101659, 34.212128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420267, 14.487457, 34.150772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502275, -0.025507, -0.864331,
		-0.837557, 0.262861, 0.478959,
		0.214982, 0.964497, -0.153392,
		16.484762, 14.776806, 34.104755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830222, 14.355043, 33.764164>,  <16.334274, 14.101659, 34.212128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830222, 14.355043, 33.764164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.098240, 14.645774, 33.703815>,  <16.259050, 14.820212, 33.667606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.098240, 14.645774, 33.703815>,  <15.830222, 14.355043, 33.764164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098240, 14.645774, 33.703815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402040, 0.184466, -0.896848,
		-0.624022, 0.661585, 0.415814,
		0.670045, 0.726827, -0.150873,
		16.299253, 14.863822, 33.658554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479485, 14.971374, 33.652203>,  <15.830222, 14.355043, 33.764164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479485, 14.971374, 33.652203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.819188, 15.058604, 33.459869>,  <16.023010, 15.110943, 33.344467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.819188, 15.058604, 33.459869>,  <15.479485, 14.971374, 33.652203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819188, 15.058604, 33.459869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513017, 0.125574, -0.849144,
		-0.124797, 0.967819, 0.218522,
		0.849258, 0.218076, -0.480836,
		16.073965, 15.124027, 33.315620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335366, 15.601018, 33.297787>,  <15.479485, 14.971374, 33.652203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335366, 15.601018, 33.297787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.659848, 15.457931, 33.112755>,  <15.854538, 15.372078, 33.001736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.659848, 15.457931, 33.112755>,  <15.335366, 15.601018, 33.297787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659848, 15.457931, 33.112755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394840, 0.248434, -0.884524,
		0.431331, 0.900177, 0.060290,
		0.811206, -0.357717, -0.462583,
		15.903210, 15.350616, 32.973980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541182, 16.135460, 32.759216>,  <15.335366, 15.601018, 33.297787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541182, 16.135460, 32.759216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.713119, 15.794820, 32.639206>,  <15.816280, 15.590436, 32.567200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.713119, 15.794820, 32.639206>,  <15.541182, 16.135460, 32.759216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713119, 15.794820, 32.639206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377362, 0.132435, -0.916547,
		0.820265, 0.507188, -0.264435,
		0.429842, -0.851599, -0.300025,
		15.842072, 15.539340, 32.549198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783310, 16.335005, 32.126266>,  <15.541182, 16.135460, 32.759216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.783310, 16.335005, 32.126266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.761585, 15.935636, 32.131905>,  <15.748550, 15.696013, 32.135288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.761585, 15.935636, 32.131905>,  <15.783310, 16.335005, 32.126266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761585, 15.935636, 32.131905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428118, 0.010533, -0.903662,
		0.902089, -0.055112, -0.428015,
		-0.054311, -0.998425, 0.014092,
		15.745292, 15.636108, 32.136131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162424, 16.170832, 31.548473>,  <15.783310, 16.335005, 32.126266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162424, 16.170832, 31.548473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.887469, 15.894207, 31.637238>,  <15.722497, 15.728232, 31.690496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.887469, 15.894207, 31.637238>,  <16.162424, 16.170832, 31.548473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.887469, 15.894207, 31.637238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338102, 0.034274, -0.940485,
		0.642798, -0.721504, -0.257378,
		-0.687385, -0.691562, 0.221911,
		15.681253, 15.686739, 31.703812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095060, 15.737917, 30.974134>,  <16.162424, 16.170832, 31.548473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095060, 15.737917, 30.974134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.781173, 15.606461, 31.184357>,  <15.592840, 15.527587, 31.310490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.781173, 15.606461, 31.184357>,  <16.095060, 15.737917, 30.974134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.781173, 15.606461, 31.184357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433004, -0.316055, -0.844166,
		0.443532, -0.890002, 0.105712,
		-0.784721, -0.328641, 0.525555,
		15.545756, 15.507869, 31.342024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003340, 14.951803, 30.838360>,  <16.095060, 15.737917, 30.974134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.003340, 14.951803, 30.838360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.646123, 15.100859, 30.939251>,  <15.431793, 15.190292, 30.999784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.646123, 15.100859, 30.939251>,  <16.003340, 14.951803, 30.838360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646123, 15.100859, 30.939251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425831, -0.518732, -0.741340,
		-0.145414, -0.769453, 0.621930,
		-0.893042, 0.372638, 0.252226,
		15.378210, 15.212650, 31.014919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514449, 14.476431, 30.562786>,  <16.003340, 14.951803, 30.838360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514449, 14.476431, 30.562786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.265003, 14.770293, 30.669657>,  <15.115335, 14.946610, 30.733780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.265003, 14.770293, 30.669657>,  <15.514449, 14.476431, 30.562786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.265003, 14.770293, 30.669657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646847, -0.293023, -0.704078,
		-0.438967, -0.611896, 0.657944,
		-0.623615, 0.734657, 0.267176,
		15.077919, 14.990690, 30.749809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885187, 14.190606, 30.484863>,  <15.514449, 14.476431, 30.562786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.885187, 14.190606, 30.484863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.805939, 14.581877, 30.459826>,  <14.758389, 14.816639, 30.444803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.805939, 14.581877, 30.459826>,  <14.885187, 14.190606, 30.484863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.805939, 14.581877, 30.459826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552375, -0.164177, -0.817269,
		-0.809710, -0.127341, 0.572847,
		-0.198120, 0.978177, -0.062596,
		14.746503, 14.875330, 30.441048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127639, 14.336494, 30.227564>,  <14.885187, 14.190606, 30.484863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.127639, 14.336494, 30.227564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.335543, 14.661254, 30.121229>,  <14.460285, 14.856110, 30.057428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.335543, 14.661254, 30.121229>,  <14.127639, 14.336494, 30.227564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335543, 14.661254, 30.121229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375983, -0.062028, -0.924548,
		-0.767129, 0.580494, 0.273020,
		0.519760, 0.811898, -0.265839,
		14.491470, 14.904823, 30.041477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752369, 14.665679, 29.776979>,  <14.127639, 14.336494, 30.227564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752369, 14.665679, 29.776979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.111570, 14.829715, 29.713209>,  <14.327091, 14.928137, 29.674948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.111570, 14.829715, 29.713209>,  <13.752369, 14.665679, 29.776979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111570, 14.829715, 29.713209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188809, 0.031885, -0.981496,
		-0.397418, 0.911488, 0.106062,
		0.898003, 0.410090, -0.159425,
		14.380971, 14.952742, 29.665382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.612670, 15.193192, 29.467232>,  <13.752369, 14.665679, 29.776979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.612670, 15.193192, 29.467232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.996339, 15.145888, 29.364468>,  <14.226541, 15.117507, 29.302809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.996339, 15.145888, 29.364468>,  <13.612670, 15.193192, 29.467232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996339, 15.145888, 29.364468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265874, -0.067331, -0.961654,
		0.096424, 0.990698, -0.096024,
		0.959173, -0.118257, -0.256908,
		14.284091, 15.110412, 29.287395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.031694, 25.367544, 14.022398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.836767, 25.349720, 13.673563>,  <18.719810, 25.339025, 13.464262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.836767, 25.349720, 13.673563>,  <19.031694, 25.367544, 14.022398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.836767, 25.349720, 13.673563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853013, -0.237929, -0.464499,
		-0.186796, -0.970260, 0.153958,
		-0.487316, -0.044562, -0.872088,
		18.690573, 25.336351, 13.411937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190474, 24.707916, 13.526428>,  <19.031694, 25.367544, 14.022398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190474, 24.707916, 13.526428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.097578, 25.028900, 13.306566>,  <19.041840, 25.221491, 13.174649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.097578, 25.028900, 13.306566>,  <19.190474, 24.707916, 13.526428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.097578, 25.028900, 13.306566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810525, -0.152730, -0.565439,
		-0.537692, -0.576828, -0.614945,
		-0.232240, 0.802461, -0.549655,
		19.027906, 25.269638, 13.141669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.615709, 24.464094, 14.039503>,  <19.190474, 24.707916, 13.526428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.615709, 24.464094, 14.039503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.771664, 24.513525, 13.674489>,  <19.865236, 24.543184, 13.455481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.771664, 24.513525, 13.674489>,  <19.615709, 24.464094, 14.039503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771664, 24.513525, 13.674489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635696, -0.753074, 0.169621,
		-0.666244, -0.646227, -0.372170,
		0.389885, 0.123578, -0.912534,
		19.888630, 24.550598, 13.400729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.753540, 23.969189, 13.467750>,  <19.615709, 24.464094, 14.039503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.753540, 23.969189, 13.467750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.529461, 23.874838, 13.785376>,  <19.395014, 23.818228, 13.975951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.529461, 23.874838, 13.785376>,  <19.753540, 23.969189, 13.467750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.529461, 23.874838, 13.785376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582570, -0.793665, 0.175236,
		0.588888, 0.560766, 0.582024,
		-0.560199, -0.235876, 0.794065,
		19.361401, 23.804075, 14.023595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.821377, 23.946877, 12.744264>,  <19.753540, 23.969189, 13.467750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.821377, 23.946877, 12.744264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.624548, 23.653831, 12.556159>,  <19.506451, 23.478004, 12.443296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.624548, 23.653831, 12.556159>,  <19.821377, 23.946877, 12.744264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624548, 23.653831, 12.556159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054512, -0.513196, 0.856538,
		-0.868846, 0.447114, 0.212593,
		-0.492072, -0.732611, -0.470262,
		19.476927, 23.434048, 12.415080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169182, 23.813025, 12.954191>,  <19.821377, 23.946877, 12.744264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169182, 23.813025, 12.954191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.289291, 23.452291, 12.829913>,  <19.361357, 23.235851, 12.755346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.289291, 23.452291, 12.829913>,  <19.169182, 23.813025, 12.954191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.289291, 23.452291, 12.829913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081683, -0.348842, 0.933615,
		-0.950349, -0.254962, -0.178413,
		0.300275, -0.901833, -0.310696,
		19.379374, 23.181742, 12.736705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761349, 23.284266, 12.747143>,  <19.169182, 23.813025, 12.954191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761349, 23.284266, 12.747143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.071619, 23.081900, 12.898074>,  <19.257782, 22.960480, 12.988632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.071619, 23.081900, 12.898074>,  <18.761349, 23.284266, 12.747143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071619, 23.081900, 12.898074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533734, -0.206755, 0.819988,
		-0.336834, -0.837436, -0.430401,
		0.775675, -0.505919, 0.377326,
		19.304321, 22.930124, 13.011272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582733, 22.790539, 13.141620>,  <18.761349, 23.284266, 12.747143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.582733, 22.790539, 13.141620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.958101, 22.751640, 13.274231>,  <19.183323, 22.728302, 13.353798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.958101, 22.751640, 13.274231>,  <18.582733, 22.790539, 13.141620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958101, 22.751640, 13.274231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341262, -0.410640, 0.845527,
		0.053917, -0.906597, -0.418538,
		0.938421, -0.097243, 0.331528,
		19.239628, 22.722467, 13.373689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823481, 22.037899, 13.192183>,  <18.582733, 22.790539, 13.141620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823481, 22.037899, 13.192183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.032173, 22.274902, 13.437696>,  <19.157389, 22.417105, 13.585003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.032173, 22.274902, 13.437696>,  <18.823481, 22.037899, 13.192183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032173, 22.274902, 13.437696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256376, -0.577312, 0.775231,
		0.813675, -0.561821, -0.149296,
		0.521732, 0.592510, 0.613782,
		19.188692, 22.452656, 13.621830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.285736, 21.627972, 13.625248>,  <18.823481, 22.037899, 13.192183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.285736, 21.627972, 13.625248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.218794, 21.972528, 13.817080>,  <19.178629, 22.179262, 13.932178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.218794, 21.972528, 13.817080>,  <19.285736, 21.627972, 13.625248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218794, 21.972528, 13.817080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296666, -0.507895, 0.808723,
		0.940202, -0.006929, 0.340546,
		-0.167358, 0.861391, 0.479579,
		19.168587, 22.230946, 13.960954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574499, 21.526709, 14.252334>,  <19.285736, 21.627972, 13.625248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574499, 21.526709, 14.252334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.310678, 21.815350, 14.336504>,  <19.152386, 21.988535, 14.387006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.310678, 21.815350, 14.336504>,  <19.574499, 21.526709, 14.252334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.310678, 21.815350, 14.336504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377803, -0.560270, 0.737131,
		0.649812, 0.406677, 0.642151,
		-0.659552, 0.721603, 0.210426,
		19.112812, 22.031830, 14.399632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665461, 21.672237, 15.030137>,  <19.574499, 21.526709, 14.252334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665461, 21.672237, 15.030137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.294487, 21.768795, 14.915875>,  <19.071903, 21.826729, 14.847319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.294487, 21.768795, 14.915875>,  <19.665461, 21.672237, 15.030137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294487, 21.768795, 14.915875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355794, -0.334151, 0.872785,
		0.115232, 0.911083, 0.395788,
		-0.927433, 0.241392, -0.285653,
		19.016256, 21.841213, 14.830179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.379461, 21.875391, 15.654333>,  <19.665461, 21.672237, 15.030137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.379461, 21.875391, 15.654333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.070475, 21.842209, 15.402488>,  <18.885082, 21.822300, 15.251381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.070475, 21.842209, 15.402488>,  <19.379461, 21.875391, 15.654333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070475, 21.842209, 15.402488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579980, -0.311696, 0.752641,
		-0.258685, 0.946554, 0.192661,
		-0.772467, -0.082958, -0.629613,
		18.838734, 21.817322, 15.213604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753489, 22.266758, 15.968685>,  <19.379461, 21.875391, 15.654333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753489, 22.266758, 15.968685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.602455, 22.007202, 15.704450>,  <18.511835, 21.851469, 15.545908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.602455, 22.007202, 15.704450>,  <18.753489, 22.266758, 15.968685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602455, 22.007202, 15.704450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670663, -0.300254, 0.678276,
		-0.638469, 0.699137, -0.321814,
		-0.377582, -0.648887, -0.660589,
		18.489180, 21.812536, 15.506273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.998884, 22.414076, 15.911334>,  <18.753489, 22.266758, 15.968685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.998884, 22.414076, 15.911334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.071217, 22.036879, 15.799571>,  <18.114616, 21.810560, 15.732513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.071217, 22.036879, 15.799571>,  <17.998884, 22.414076, 15.911334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071217, 22.036879, 15.799571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779485, -0.310653, 0.543966,
		-0.599753, 0.119427, -0.791223,
		0.180831, -0.942991, -0.279407,
		18.125465, 21.753981, 15.715749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374430, 22.109585, 15.782494>,  <17.998884, 22.414076, 15.911334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374430, 22.109585, 15.782494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.596071, 21.778337, 15.816412>,  <17.729055, 21.579590, 15.836763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.596071, 21.778337, 15.816412>,  <17.374430, 22.109585, 15.782494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596071, 21.778337, 15.816412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725112, -0.430113, 0.537788,
		-0.408876, -0.359482, -0.838804,
		0.554106, -0.828116, 0.084802,
		17.762302, 21.529902, 15.841850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868608, 21.701509, 15.687176>,  <17.374430, 22.109585, 15.782494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868608, 21.701509, 15.687176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.168203, 21.476181, 15.826712>,  <17.347960, 21.340984, 15.910433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.168203, 21.476181, 15.826712>,  <16.868608, 21.701509, 15.687176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168203, 21.476181, 15.826712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654905, -0.709333, 0.260666,
		0.100604, -0.423691, -0.900203,
		0.748985, -0.563323, 0.348839,
		17.392899, 21.307184, 15.931363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.715538, 20.969790, 15.488710>,  <16.868608, 21.701509, 15.687176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.715538, 20.969790, 15.488710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.979080, 20.974691, 15.789577>,  <17.137205, 20.977633, 15.970098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.979080, 20.974691, 15.789577>,  <16.715538, 20.969790, 15.488710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979080, 20.974691, 15.789577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533979, -0.696664, 0.479088,
		0.529881, -0.717293, -0.452458,
		0.658857, 0.012256, 0.752169,
		17.176737, 20.978369, 16.015228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025061, 20.318729, 15.524842>,  <16.715538, 20.969790, 15.488710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025061, 20.318729, 15.524842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.036316, 20.492708, 15.884849>,  <17.043068, 20.597095, 16.100853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.036316, 20.492708, 15.884849>,  <17.025061, 20.318729, 15.524842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036316, 20.492708, 15.884849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357909, -0.836297, 0.415342,
		0.933332, -0.333810, 0.132141,
		0.028136, 0.434947, 0.900016,
		17.044756, 20.623192, 16.154854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513474, 19.844133, 15.965064>,  <17.025061, 20.318729, 15.524842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.513474, 19.844133, 15.965064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.285536, 20.068298, 16.205469>,  <17.148773, 20.202797, 16.349712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.285536, 20.068298, 16.205469>,  <17.513474, 19.844133, 15.965064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285536, 20.068298, 16.205469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303329, -0.823175, 0.479973,
		0.763722, 0.091204, 0.639070,
		-0.569842, 0.560415, 0.601012,
		17.114584, 20.236423, 16.385773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741833, 19.725977, 16.680248>,  <17.513474, 19.844133, 15.965064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.741833, 19.725977, 16.680248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.380424, 19.888298, 16.735344>,  <17.163580, 19.985691, 16.768402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.380424, 19.888298, 16.735344>,  <17.741833, 19.725977, 16.680248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380424, 19.888298, 16.735344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293698, -0.820430, 0.490546,
		0.312071, 0.402765, 0.860460,
		-0.903523, 0.405801, 0.137741,
		17.109367, 20.010038, 16.776667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628883, 19.738981, 17.350155>,  <17.741833, 19.725977, 16.680248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.628883, 19.738981, 17.350155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.260084, 19.740038, 17.195280>,  <17.038805, 19.740671, 17.102356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.260084, 19.740038, 17.195280>,  <17.628883, 19.738981, 17.350155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.260084, 19.740038, 17.195280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239912, -0.788785, 0.565915,
		-0.303912, 0.614663, 0.727892,
		-0.921997, 0.002642, -0.387187,
		16.983484, 19.740831, 17.079124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191542, 19.517603, 17.900644>,  <17.628883, 19.738981, 17.350155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191542, 19.517603, 17.900644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.963907, 19.478571, 17.574059>,  <16.827326, 19.455153, 17.378107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.963907, 19.478571, 17.574059>,  <17.191542, 19.517603, 17.900644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963907, 19.478571, 17.574059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454546, -0.790101, 0.411253,
		-0.685220, 0.605160, 0.405283,
		-0.569088, -0.097579, -0.816466,
		16.793180, 19.449297, 17.329119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464354, 19.350908, 18.152008>,  <17.191542, 19.517603, 17.900644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464354, 19.350908, 18.152008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.488142, 19.220894, 17.774477>,  <16.502415, 19.142885, 17.547958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.488142, 19.220894, 17.774477>,  <16.464354, 19.350908, 18.152008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488142, 19.220894, 17.774477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284268, -0.911870, 0.296116,
		-0.956898, 0.250690, -0.146628,
		0.059473, -0.325035, -0.943830,
		16.505983, 19.123383, 17.491327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920100, 18.909105, 18.148035>,  <16.464354, 19.350908, 18.152008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920100, 18.909105, 18.148035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.122349, 18.797274, 17.821554>,  <16.243698, 18.730175, 17.625666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.122349, 18.797274, 17.821554>,  <15.920100, 18.909105, 18.148035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122349, 18.797274, 17.821554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175415, -0.959592, 0.220027,
		-0.844735, 0.031923, -0.534232,
		0.505621, -0.279577, -0.816201,
		16.274035, 18.713400, 17.576694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389174, 18.642212, 17.659843>,  <15.920100, 18.909105, 18.148035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389174, 18.642212, 17.659843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.755618, 18.503206, 17.579866>,  <15.975485, 18.419804, 17.531881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.755618, 18.503206, 17.579866>,  <15.389174, 18.642212, 17.659843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.755618, 18.503206, 17.579866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329738, -0.936754, 0.117322,
		-0.228066, -0.041552, -0.972759,
		0.916111, -0.347512, -0.199941,
		16.030451, 18.398952, 17.519884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368874, 18.041845, 17.129229>,  <15.389174, 18.642212, 17.659843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368874, 18.041845, 17.129229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.718462, 18.018475, 17.322210>,  <15.928215, 18.004452, 17.438000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.718462, 18.018475, 17.322210>,  <15.368874, 18.041845, 17.129229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.718462, 18.018475, 17.322210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207395, -0.942648, 0.261538,
		0.439503, -0.328635, -0.835964,
		0.873970, -0.058428, 0.482454,
		15.980653, 18.000946, 17.466946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.695789, 17.407173, 16.972919>,  <15.368874, 18.041845, 17.129229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.695789, 17.407173, 16.972919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.938877, 17.469564, 17.284393>,  <16.084730, 17.506998, 17.471277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.938877, 17.469564, 17.284393>,  <15.695789, 17.407173, 16.972919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938877, 17.469564, 17.284393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245911, -0.969290, 0.002237,
		0.755120, 0.190128, -0.627411,
		0.607718, 0.155977, 0.778685,
		16.121193, 17.516357, 17.517998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358711, 17.121077, 16.822165>,  <15.695789, 17.407173, 16.972919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.358711, 17.121077, 16.822165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.331696, 17.139406, 17.220831>,  <16.315487, 17.150404, 17.460030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.331696, 17.139406, 17.220831>,  <16.358711, 17.121077, 16.822165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331696, 17.139406, 17.220831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384374, -0.920642, 0.068374,
		0.920704, 0.387709, 0.044566,
		-0.067539, 0.045822, 0.996664,
		16.311434, 17.153152, 17.519831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971258, 16.839771, 17.048935>,  <16.358711, 17.121077, 16.822165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971258, 16.839771, 17.048935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.729465, 16.824947, 17.367239>,  <16.584391, 16.816053, 17.558222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.729465, 16.824947, 17.367239>,  <16.971258, 16.839771, 17.048935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729465, 16.824947, 17.367239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312592, -0.929835, 0.194148,
		0.732728, 0.366106, 0.573651,
		-0.604479, -0.037061, 0.795758,
		16.548122, 16.813829, 17.605967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435898, 16.432806, 17.485487>,  <16.971258, 16.839771, 17.048935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435898, 16.432806, 17.485487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.057001, 16.392643, 17.607243>,  <16.829662, 16.368546, 17.680296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.057001, 16.392643, 17.607243>,  <17.435898, 16.432806, 17.485487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.057001, 16.392643, 17.607243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161798, -0.969578, 0.183682,
		0.276687, 0.223241, 0.934670,
		-0.947241, -0.100406, 0.304390,
		16.772829, 16.362522, 17.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343021, 16.248089, 18.220051>,  <17.435898, 16.432806, 17.485487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.343021, 16.248089, 18.220051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.068611, 16.100756, 17.969069>,  <16.903965, 16.012356, 17.818480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.068611, 16.100756, 17.969069>,  <17.343021, 16.248089, 18.220051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068611, 16.100756, 17.969069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295971, -0.929089, 0.221799,
		-0.664658, -0.033549, 0.746394,
		-0.686026, -0.368331, -0.627456,
		16.862804, 15.990256, 17.780832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168638, 16.192657, 18.204338>,  <17.343021, 16.248089, 18.220051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168638, 16.192657, 18.204338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.956657, 15.853499, 18.210293>,  <17.829468, 15.650004, 18.213865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.956657, 15.853499, 18.210293>,  <18.168638, 16.192657, 18.204338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.956657, 15.853499, 18.210293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315027, 0.180540, -0.931753,
		0.787342, -0.498475, -0.362788,
		-0.529953, -0.847896, 0.014886,
		17.797670, 15.599131, 18.214758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.286474, 15.818646, 17.616892>,  <18.168638, 16.192657, 18.204338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.286474, 15.818646, 17.616892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.917252, 15.700141, 17.715029>,  <17.695717, 15.629038, 17.773911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.917252, 15.700141, 17.715029>,  <18.286474, 15.818646, 17.616892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917252, 15.700141, 17.715029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333042, 0.296382, -0.895121,
		0.192474, -0.907958, -0.372245,
		-0.923059, -0.296260, 0.245342,
		17.640335, 15.611262, 17.788631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.928808, 15.493600, 17.246485>,  <18.286474, 15.818646, 17.616892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.928808, 15.493600, 17.246485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.965815, 15.774899, 16.964525>,  <18.988018, 15.943678, 16.795349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.965815, 15.774899, 16.964525>,  <18.928808, 15.493600, 17.246485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965815, 15.774899, 16.964525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992452, -0.122362, 0.008184,
		-0.080497, -0.700336, -0.709260,
		0.092518, 0.703247, -0.704900,
		18.993570, 15.985873, 16.753056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.336954, 15.191793, 16.663668>,  <18.928808, 15.493600, 17.246485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.336954, 15.191793, 16.663668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.356590, 15.589904, 16.697166>,  <19.368372, 15.828771, 16.717266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.356590, 15.589904, 16.697166>,  <19.336954, 15.191793, 16.663668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.356590, 15.589904, 16.697166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996284, -0.054736, 0.066505,
		0.070774, 0.080172, -0.994265,
		0.049090, 0.995277, 0.083748,
		19.371317, 15.888487, 16.722290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694340, 15.382273, 16.097700>,  <19.336954, 15.191793, 16.663668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694340, 15.382273, 16.097700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.710629, 15.623875, 16.416077>,  <19.720402, 15.768836, 16.607101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.710629, 15.623875, 16.416077>,  <19.694340, 15.382273, 16.097700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.710629, 15.623875, 16.416077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985764, -0.154344, 0.066693,
		0.163132, 0.781892, -0.601692,
		0.040721, 0.604005, 0.795939,
		19.722845, 15.805077, 16.654858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.270798, 15.571373, 15.643162>,  <19.694340, 15.382273, 16.097700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.270798, 15.571373, 15.643162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.578749, 15.401621, 15.452504>,  <20.763519, 15.299769, 15.338110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.578749, 15.401621, 15.452504>,  <20.270798, 15.571373, 15.643162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.578749, 15.401621, 15.452504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409048, 0.901416, -0.141877,
		0.489864, -0.085742, 0.867572,
		0.769878, -0.424380, -0.476644,
		20.809711, 15.274307, 15.309511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853928, 16.081833, 15.729710>,  <20.270798, 15.571373, 15.643162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853928, 16.081833, 15.729710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.948513, 15.832179, 15.431840>,  <21.005264, 15.682386, 15.253118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.948513, 15.832179, 15.431840>,  <20.853928, 16.081833, 15.729710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.948513, 15.832179, 15.431840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549092, 0.718133, -0.427532,
		0.801613, -0.307800, 0.512519,
		0.236463, -0.624135, -0.744675,
		21.019451, 15.644938, 15.208437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507286, 16.032478, 15.768942>,  <20.853928, 16.081833, 15.729710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507286, 16.032478, 15.768942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.425886, 15.903563, 15.399138>,  <21.377047, 15.826213, 15.177257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.425886, 15.903563, 15.399138>,  <21.507286, 16.032478, 15.768942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425886, 15.903563, 15.399138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736084, 0.572262, -0.361521,
		0.645576, -0.754086, 0.120777,
		-0.203502, -0.322291, -0.924508,
		21.364836, 15.806875, 15.121786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.107746, 15.902852, 15.501650>,  <21.507286, 16.032478, 15.768942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.107746, 15.902852, 15.501650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.876127, 15.966017, 15.181707>,  <21.737156, 16.003916, 14.989742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.876127, 15.966017, 15.181707>,  <22.107746, 15.902852, 15.501650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.876127, 15.966017, 15.181707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692608, 0.612847, -0.380412,
		0.430118, -0.774263, -0.464238,
		-0.579045, 0.157913, -0.799856,
		21.702414, 16.013391, 14.941751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.572186, 16.055092, 14.916014>,  <22.107746, 15.902852, 15.501650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.572186, 16.055092, 14.916014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.220261, 16.206385, 14.800867>,  <22.009106, 16.297161, 14.731779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.220261, 16.206385, 14.800867>,  <22.572186, 16.055092, 14.916014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220261, 16.206385, 14.800867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473908, 0.744675, -0.469969,
		0.036609, -0.549908, -0.834423,
		-0.879813, 0.378234, -0.287867,
		21.956316, 16.319855, 14.714507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699638, 16.339361, 14.148705>,  <22.572186, 16.055092, 14.916014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699638, 16.339361, 14.148705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.393888, 16.522388, 14.330414>,  <22.210438, 16.632204, 14.439439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.393888, 16.522388, 14.330414>,  <22.699638, 16.339361, 14.148705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.393888, 16.522388, 14.330414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282664, 0.871038, -0.401739,
		-0.579511, -0.178673, -0.795137,
		-0.764375, 0.457568, 0.454272,
		22.164576, 16.659658, 14.466695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.338772, 16.728453, 13.683791>,  <22.699638, 16.339361, 14.148705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.338772, 16.728453, 13.683791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.309059, 16.875429, 14.054621>,  <22.291231, 16.963615, 14.277119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.309059, 16.875429, 14.054621>,  <22.338772, 16.728453, 13.683791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.309059, 16.875429, 14.054621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538076, 0.797474, -0.272962,
		-0.839617, 0.478561, -0.256950,
		-0.074282, 0.367443, 0.927075,
		22.286774, 16.985662, 14.332744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.869518, 16.934420, 13.239738>,  <22.338772, 16.728453, 13.683791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.869518, 16.934420, 13.239738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.850996, 16.891823, 12.842443>,  <22.839884, 16.866264, 12.604067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.850996, 16.891823, 12.842443>,  <22.869518, 16.934420, 13.239738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.850996, 16.891823, 12.842443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876475, 0.481328, -0.010747,
		0.479216, 0.870047, -0.115626,
		-0.046304, -0.106494, -0.993235,
		22.837105, 16.859875, 12.544473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.979616, 17.579460, 12.890509>,  <22.869518, 16.934420, 13.239738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.979616, 17.579460, 12.890509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.729174, 17.341726, 12.688613>,  <22.578909, 17.199085, 12.567475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.729174, 17.341726, 12.688613>,  <22.979616, 17.579460, 12.890509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.729174, 17.341726, 12.688613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703370, 0.709881, 0.036605,
		0.336548, 0.377936, -0.862496,
		-0.626104, -0.594334, -0.504738,
		22.541342, 17.163425, 12.537191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.913618, 17.809246, 12.213114>,  <22.979616, 17.579460, 12.890509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.913618, 17.809246, 12.213114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.604633, 17.629715, 12.392827>,  <22.419243, 17.521996, 12.500655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.604633, 17.629715, 12.392827>,  <22.913618, 17.809246, 12.213114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.604633, 17.629715, 12.392827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252459, 0.866189, 0.431255,
		-0.582724, 0.219702, -0.782409,
		-0.772462, -0.448829, 0.449284,
		22.372894, 17.495066, 12.527612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278599, 18.194050, 12.020743>,  <22.913618, 17.809246, 12.213114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278599, 18.194050, 12.020743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.295488, 18.004034, 12.372323>,  <22.305622, 17.890024, 12.583271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.295488, 18.004034, 12.372323>,  <22.278599, 18.194050, 12.020743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.295488, 18.004034, 12.372323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249015, 0.846969, 0.469718,
		-0.967579, -0.238705, -0.082532,
		0.042222, -0.475041, 0.878950,
		22.308155, 17.861523, 12.636008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.071798, 18.764437, 12.417457>,  <22.278599, 18.194050, 12.020743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.071798, 18.764437, 12.417457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.128366, 18.485807, 12.698820>,  <22.162308, 18.318630, 12.867639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.128366, 18.485807, 12.698820>,  <22.071798, 18.764437, 12.417457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128366, 18.485807, 12.698820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110859, 0.694937, 0.710474,
		-0.983723, -0.178453, 0.021055,
		0.141418, -0.696575, 0.703409,
		22.170792, 18.276834, 12.909842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.481054, 19.006170, 12.692490>,  <22.071798, 18.764437, 12.417457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.481054, 19.006170, 12.692490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.093805, 18.971811, 12.786601>,  <20.861456, 18.951197, 12.843068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.093805, 18.971811, 12.786601>,  <21.481054, 19.006170, 12.692490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093805, 18.971811, 12.786601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006012, 0.947054, 0.321017,
		-0.250397, 0.309370, -0.917383,
		-0.968125, -0.085897, 0.235280,
		20.803368, 18.946043, 12.857185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161304, 19.653221, 12.449229>,  <21.481054, 19.006170, 12.692490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161304, 19.653221, 12.449229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.895214, 19.494980, 12.702519>,  <20.735559, 19.400036, 12.854494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.895214, 19.494980, 12.702519>,  <21.161304, 19.653221, 12.449229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.895214, 19.494980, 12.702519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296907, 0.918318, 0.261799,
		-0.685071, -0.013854, -0.728344,
		-0.665225, -0.395602, 0.633227,
		20.695646, 19.376299, 12.892488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.504620, 19.913328, 12.298929>,  <21.161304, 19.653221, 12.449229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.504620, 19.913328, 12.298929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.488152, 19.810413, 12.685112>,  <20.478271, 19.748665, 12.916821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.488152, 19.810413, 12.685112>,  <20.504620, 19.913328, 12.298929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.488152, 19.810413, 12.685112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080522, 0.963988, 0.253462,
		-0.995902, -0.067305, -0.060405,
		-0.041171, -0.257287, 0.965458,
		20.475800, 19.733227, 12.974750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<10.175103, 16.898590, 25.763002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.489638, 16.651966, 25.747362>,  <10.678359, 16.503992, 25.737978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.489638, 16.651966, 25.747362>,  <10.175103, 16.898590, 25.763002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489638, 16.651966, 25.747362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074755, 0.157787, -0.984640,
		0.613258, 0.771336, 0.170165,
		0.786338, -0.616558, -0.039103,
		10.725539, 16.466999, 25.735632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.675054, 17.165701, 25.272434>,  <10.175103, 16.898590, 25.763002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.675054, 17.165701, 25.272434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.771435, 16.777493, 25.274639>,  <10.829264, 16.544567, 25.275961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.771435, 16.777493, 25.274639>,  <10.675054, 17.165701, 25.272434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.771435, 16.777493, 25.274639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002802, -0.006374, -0.999976,
		0.970533, 0.240931, -0.004256,
		0.240952, -0.970521, 0.005511,
		10.843720, 16.486336, 25.276293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.257113, 17.022202, 24.899267>,  <10.675054, 17.165701, 25.272434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.257113, 17.022202, 24.899267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.091712, 16.658901, 24.924850>,  <10.992471, 16.440920, 24.940201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.091712, 16.658901, 24.924850>,  <11.257113, 17.022202, 24.899267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.091712, 16.658901, 24.924850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072163, -0.102714, -0.992090,
		0.907638, -0.405619, 0.108015,
		-0.413505, -0.908253, 0.063956,
		10.967661, 16.386425, 24.944036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.709576, 16.471527, 24.511465>,  <11.257113, 17.022202, 24.899267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.709576, 16.471527, 24.511465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.351501, 16.295986, 24.542578>,  <11.136657, 16.190662, 24.561245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.351501, 16.295986, 24.542578>,  <11.709576, 16.471527, 24.511465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.351501, 16.295986, 24.542578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011674, -0.151374, -0.988408,
		0.445540, -0.885717, 0.130385,
		-0.895186, -0.438853, 0.077783,
		11.082946, 16.164330, 24.565912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768551, 15.928098, 24.186213>,  <11.709576, 16.471527, 24.511465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768551, 15.928098, 24.186213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.371264, 15.973819, 24.177713>,  <11.132891, 16.001251, 24.172615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.371264, 15.973819, 24.177713>,  <11.768551, 15.928098, 24.186213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.371264, 15.973819, 24.177713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001599, -0.169305, -0.985562,
		-0.116245, -0.978914, 0.167974,
		-0.993220, 0.114298, -0.021246,
		11.073298, 16.008110, 24.171339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575602, 15.424537, 23.788761>,  <11.768551, 15.928098, 24.186213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575602, 15.424537, 23.788761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.260035, 15.670333, 23.790062>,  <11.070694, 15.817811, 23.790842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.260035, 15.670333, 23.790062>,  <11.575602, 15.424537, 23.788761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.260035, 15.670333, 23.790062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004335, -0.000272, -0.999991,
		-0.614484, -0.788924, 0.002878,
		-0.788917, 0.614491, 0.003253,
		11.023359, 15.854680, 23.791039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.067592, 15.139758, 23.311785>,  <11.575602, 15.424537, 23.788761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.067592, 15.139758, 23.311785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.936336, 15.514971, 23.356365>,  <10.857582, 15.740098, 23.383114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.936336, 15.514971, 23.356365>,  <11.067592, 15.139758, 23.311785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.936336, 15.514971, 23.356365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067655, 0.094345, -0.993238,
		-0.942203, -0.333462, 0.032504,
		-0.328141, 0.938031, 0.111453,
		10.837893, 15.796380, 23.389801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.397818, 15.224609, 22.834049>,  <11.067592, 15.139758, 23.311785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.397818, 15.224609, 22.834049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.587359, 15.571069, 22.897608>,  <10.701084, 15.778945, 22.935743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.587359, 15.571069, 22.897608>,  <10.397818, 15.224609, 22.834049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.587359, 15.571069, 22.897608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160578, 0.262404, -0.951503,
		-0.865839, 0.425359, 0.263426,
		0.473854, 0.866149, 0.158896,
		10.729516, 15.830914, 22.945276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.930551, 15.602320, 22.552660>,  <10.397818, 15.224609, 22.834049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.930551, 15.602320, 22.552660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.269009, 15.813630, 22.580837>,  <10.472083, 15.940416, 22.597744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.269009, 15.813630, 22.580837>,  <9.930551, 15.602320, 22.552660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.269009, 15.813630, 22.580837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112891, 0.306837, -0.945043,
		-0.520859, 0.791691, 0.319266,
		0.846145, 0.528277, 0.070444,
		10.522852, 15.972113, 22.601971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.718063, 16.197948, 22.271355>,  <9.930551, 15.602320, 22.552660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.718063, 16.197948, 22.271355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.113746, 16.252552, 22.250051>,  <10.351155, 16.285315, 22.237270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.113746, 16.252552, 22.250051>,  <9.718063, 16.197948, 22.271355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.113746, 16.252552, 22.250051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104450, 0.402018, -0.909655,
		-0.102765, 0.905399, 0.411937,
		0.989207, 0.136507, -0.053256,
		10.410507, 16.293505, 22.234076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.766338, 16.807062, 21.833839>,  <9.718063, 16.197948, 22.271355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.766338, 16.807062, 21.833839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.102067, 16.590521, 21.813951>,  <10.303505, 16.460596, 21.802019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.102067, 16.590521, 21.813951>,  <9.766338, 16.807062, 21.833839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.102067, 16.590521, 21.813951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056586, 0.177958, -0.982410,
		0.540680, 0.821745, 0.179998,
		0.839323, -0.541355, -0.049719,
		10.353864, 16.428114, 21.799036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.295049, 17.308413, 21.553831>,  <9.766338, 16.807062, 21.833839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.295049, 17.308413, 21.553831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.377856, 16.927635, 21.463543>,  <10.427541, 16.699169, 21.409370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.377856, 16.927635, 21.463543>,  <10.295049, 17.308413, 21.553831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.377856, 16.927635, 21.463543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123084, 0.254227, -0.959281,
		0.970564, 0.170806, 0.169798,
		0.207018, -0.951942, -0.225720,
		10.439961, 16.642052, 21.395826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873071, 17.123459, 21.106356>,  <10.295049, 17.308413, 21.553831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873071, 17.123459, 21.106356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.621747, 16.817457, 21.049793>,  <10.470953, 16.633856, 21.015856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.621747, 16.817457, 21.049793>,  <10.873071, 17.123459, 21.106356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.621747, 16.817457, 21.049793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012300, 0.191512, -0.981413,
		0.777867, -0.614892, -0.129739,
		-0.628309, -0.765004, -0.141407,
		10.433254, 16.587955, 21.007372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.393938, 16.839937, 20.641529>,  <10.873071, 17.123459, 21.106356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.393938, 16.839937, 20.641529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.483804, 17.035866, 20.304579>,  <11.537723, 17.153423, 20.102407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.483804, 17.035866, 20.304579>,  <11.393938, 16.839937, 20.641529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.483804, 17.035866, 20.304579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212277, 0.819112, 0.532910,
		0.951034, -0.298542, 0.080046,
		0.224663, 0.489824, -0.842377,
		11.551203, 17.182814, 20.051867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.048529, 16.919603, 20.665894>,  <11.393938, 16.839937, 20.641529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.048529, 16.919603, 20.665894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.888567, 17.201689, 20.431715>,  <11.792590, 17.370941, 20.291208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.888567, 17.201689, 20.431715>,  <12.048529, 16.919603, 20.665894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888567, 17.201689, 20.431715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360620, 0.708290, 0.606859,
		0.842633, 0.031561, -0.537563,
		-0.399903, 0.705216, -0.585447,
		11.768596, 17.413254, 20.256081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542514, 17.460815, 20.579832>,  <12.048529, 16.919603, 20.665894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.542514, 17.460815, 20.579832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214807, 17.666538, 20.478413>,  <12.018182, 17.789972, 20.417561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214807, 17.666538, 20.478413>,  <12.542514, 17.460815, 20.579832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214807, 17.666538, 20.478413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242289, 0.711257, 0.659855,
		0.519707, 0.479167, -0.707321,
		-0.819268, 0.514308, -0.253549,
		11.969026, 17.820831, 20.402348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749734, 18.111568, 20.562717>,  <12.542514, 17.460815, 20.579832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749734, 18.111568, 20.562717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352356, 18.136423, 20.601101>,  <12.113930, 18.151337, 20.624132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352356, 18.136423, 20.601101>,  <12.749734, 18.111568, 20.562717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.352356, 18.136423, 20.601101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110958, 0.726184, 0.678487,
		-0.027527, 0.684686, -0.728318,
		-0.993444, 0.062136, 0.095961,
		12.054323, 18.155064, 20.629889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.660185, 18.868740, 20.673553>,  <12.749734, 18.111568, 20.562717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.660185, 18.868740, 20.673553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.306958, 18.705679, 20.766516>,  <12.095022, 18.607841, 20.822292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.306958, 18.705679, 20.766516>,  <12.660185, 18.868740, 20.673553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306958, 18.705679, 20.766516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106001, 0.655765, 0.747487,
		-0.457118, 0.635446, -0.622296,
		-0.883067, -0.407653, 0.232404,
		12.042038, 18.583384, 20.836237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.256081, 19.450163, 20.709347>,  <12.660185, 18.868740, 20.673553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.256081, 19.450163, 20.709347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106788, 19.151571, 20.929697>,  <12.017212, 18.972416, 21.061907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106788, 19.151571, 20.929697>,  <12.256081, 19.450163, 20.709347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.106788, 19.151571, 20.929697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065389, 0.571141, 0.818244,
		-0.925431, 0.341416, -0.164356,
		-0.373232, -0.746481, 0.550876,
		11.994818, 18.927628, 21.094959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.853629, 19.803492, 21.124708>,  <12.256081, 19.450163, 20.709347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.853629, 19.803492, 21.124708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.909146, 19.451214, 21.305866>,  <11.942457, 19.239847, 21.414560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.909146, 19.451214, 21.305866>,  <11.853629, 19.803492, 21.124708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.909146, 19.451214, 21.305866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209655, 0.473086, 0.855707,
		-0.967874, -0.023815, 0.250304,
		0.138794, -0.880694, 0.452895,
		11.950785, 19.187006, 21.441734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.330790, 19.829014, 21.684223>,  <11.853629, 19.803492, 21.124708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.330790, 19.829014, 21.684223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.634312, 19.576611, 21.748774>,  <11.816424, 19.425169, 21.787504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.634312, 19.576611, 21.748774>,  <11.330790, 19.829014, 21.684223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.634312, 19.576611, 21.748774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326949, 0.583316, 0.743536,
		-0.563312, -0.511438, 0.648931,
		0.758805, -0.631010, 0.161375,
		11.861953, 19.387308, 21.797186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.408515, 19.899591, 22.364298>,  <11.330790, 19.829014, 21.684223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.408515, 19.899591, 22.364298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.750731, 19.698753, 22.313782>,  <11.956061, 19.578251, 22.283472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.750731, 19.698753, 22.313782>,  <11.408515, 19.899591, 22.364298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.750731, 19.698753, 22.313782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389449, 0.463386, 0.795992,
		-0.341144, -0.730187, 0.591986,
		0.855541, -0.502097, -0.126289,
		12.007394, 19.548124, 22.275894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.637928, 19.817223, 23.031891>,  <11.408515, 19.899591, 22.364298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.637928, 19.817223, 23.031891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.952430, 19.769495, 22.789381>,  <12.141130, 19.740858, 22.643875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.952430, 19.769495, 22.789381>,  <11.637928, 19.817223, 23.031891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.952430, 19.769495, 22.789381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562454, 0.544444, 0.622275,
		0.255832, -0.830267, 0.495183,
		0.786254, -0.119320, -0.606274,
		12.188306, 19.733700, 22.607498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.183850, 19.530649, 23.379028>,  <11.637928, 19.817223, 23.031891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.183850, 19.530649, 23.379028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337092, 19.723433, 23.063828>,  <12.429037, 19.839104, 22.874706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337092, 19.723433, 23.063828>,  <12.183850, 19.530649, 23.379028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.337092, 19.723433, 23.063828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610585, 0.508000, 0.607554,
		0.693121, -0.713898, -0.099660,
		0.383104, 0.481959, -0.788001,
		12.452024, 19.868021, 22.827427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.828707, 19.353260, 23.432602>,  <12.183850, 19.530649, 23.379028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.828707, 19.353260, 23.432602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769882, 19.703960, 23.249437>,  <12.734588, 19.914381, 23.139540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769882, 19.703960, 23.249437>,  <12.828707, 19.353260, 23.432602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769882, 19.703960, 23.249437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483826, 0.467541, 0.739809,
		0.862720, -0.112752, -0.492952,
		-0.147061, 0.876751, -0.457909,
		12.725764, 19.966986, 23.112064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.403673, 19.765135, 23.485207>,  <12.828707, 19.353260, 23.432602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.403673, 19.765135, 23.485207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123650, 20.038933, 23.403835>,  <12.955635, 20.203211, 23.355013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123650, 20.038933, 23.403835>,  <13.403673, 19.765135, 23.485207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.123650, 20.038933, 23.403835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354253, 0.580256, 0.733354,
		0.620018, 0.441326, -0.648698,
		-0.700059, 0.684495, -0.203428,
		12.913631, 20.244282, 23.342806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716393, 20.264648, 23.715191>,  <13.403673, 19.765135, 23.485207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716393, 20.264648, 23.715191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361516, 20.439888, 23.657278>,  <13.148590, 20.545033, 23.622530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361516, 20.439888, 23.657278>,  <13.716393, 20.264648, 23.715191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.361516, 20.439888, 23.657278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216578, 0.672478, 0.707720,
		0.407414, 0.596526, -0.691499,
		-0.887191, 0.438098, -0.144782,
		13.095359, 20.571318, 23.613844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.830723, 20.990126, 23.564728>,  <13.716393, 20.264648, 23.715191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.830723, 20.990126, 23.564728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.464721, 20.930290, 23.714602>,  <13.245119, 20.894388, 23.804525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.464721, 20.930290, 23.714602>,  <13.830723, 20.990126, 23.564728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464721, 20.930290, 23.714602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171750, 0.695931, 0.697267,
		-0.365058, 0.702355, -0.611089,
		-0.915005, -0.149588, 0.374685,
		13.190219, 20.885414, 23.827007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340467, 21.159449, 24.140194>,  <13.830723, 20.990126, 23.564728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.340467, 21.159449, 24.140194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633207, 20.894209, 24.077332>,  <14.808851, 20.735065, 24.039614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633207, 20.894209, 24.077332>,  <14.340467, 21.159449, 24.140194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633207, 20.894209, 24.077332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188500, 0.024640, -0.981764,
		0.654878, 0.748127, -0.106961,
		0.731849, -0.663098, -0.157158,
		14.852762, 20.695280, 24.030184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.719926, 21.373228, 23.469797>,  <14.340467, 21.159449, 24.140194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.719926, 21.373228, 23.469797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853322, 20.998701, 23.513792>,  <14.933360, 20.773985, 23.540190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853322, 20.998701, 23.513792>,  <14.719926, 21.373228, 23.469797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853322, 20.998701, 23.513792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144224, -0.064625, -0.987433,
		0.931656, 0.345163, 0.113487,
		0.333491, -0.936315, 0.109989,
		14.953369, 20.717806, 23.546789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.351255, 21.263403, 23.020912>,  <14.719926, 21.373228, 23.469797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.351255, 21.263403, 23.020912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196149, 20.899834, 23.082224>,  <15.103085, 20.681692, 23.119011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196149, 20.899834, 23.082224>,  <15.351255, 21.263403, 23.020912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196149, 20.899834, 23.082224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000867, -0.165930, -0.986137,
		0.921757, -0.382524, 0.063554,
		-0.387767, -0.908924, 0.153279,
		15.079819, 20.627157, 23.128208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687534, 20.837433, 22.644447>,  <15.351255, 21.263403, 23.020912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687534, 20.837433, 22.644447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338914, 20.654423, 22.714951>,  <15.129742, 20.544617, 22.757254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338914, 20.654423, 22.714951>,  <15.687534, 20.837433, 22.644447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338914, 20.654423, 22.714951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087817, -0.208010, -0.974177,
		0.482375, -0.864524, 0.141113,
		-0.871552, -0.457527, 0.176259,
		15.077448, 20.517164, 22.767828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.710282, 20.106623, 22.319929>,  <15.687534, 20.837433, 22.644447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.710282, 20.106623, 22.319929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319247, 20.181160, 22.359114>,  <15.084626, 20.225882, 22.382626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319247, 20.181160, 22.359114>,  <15.710282, 20.106623, 22.319929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.319247, 20.181160, 22.359114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146308, -0.266771, -0.952590,
		-0.151374, -0.945574, 0.288055,
		-0.977589, 0.186342, 0.097963,
		15.025970, 20.237062, 22.388502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367337, 19.559595, 22.064472>,  <15.710282, 20.106623, 22.319929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367337, 19.559595, 22.064472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067659, 19.824177, 22.078251>,  <14.887853, 19.982925, 22.086517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067659, 19.824177, 22.078251>,  <15.367337, 19.559595, 22.064472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.067659, 19.824177, 22.078251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368938, -0.373557, -0.851081,
		-0.550084, -0.650334, 0.523903,
		-0.749194, 0.661453, 0.034445,
		14.842901, 20.022614, 22.088585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743173, 19.162369, 21.855738>,  <15.367337, 19.559595, 22.064472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743173, 19.162369, 21.855738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.673033, 19.546221, 21.767769>,  <14.630949, 19.776531, 21.714987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.673033, 19.546221, 21.767769>,  <14.743173, 19.162369, 21.855738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673033, 19.546221, 21.767769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315493, -0.266374, -0.910774,
		-0.932586, -0.090319, 0.349465,
		-0.175349, 0.959629, -0.219921,
		14.620428, 19.834110, 21.701792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.180225, 19.065929, 21.432964>,  <14.743173, 19.162369, 21.855738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.180225, 19.065929, 21.432964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328059, 19.433750, 21.379549>,  <14.416759, 19.654442, 21.347500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328059, 19.433750, 21.379549>,  <14.180225, 19.065929, 21.432964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328059, 19.433750, 21.379549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174749, -0.072363, -0.981950,
		-0.912617, 0.386249, 0.133946,
		0.369584, 0.919552, -0.133536,
		14.438934, 19.709616, 21.339489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664413, 19.455893, 21.070150>,  <14.180225, 19.065929, 21.432964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.664413, 19.455893, 21.070150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012936, 19.641273, 21.005602>,  <14.222049, 19.752502, 20.966873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012936, 19.641273, 21.005602>,  <13.664413, 19.455893, 21.070150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.012936, 19.641273, 21.005602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220377, 0.075708, -0.972472,
		-0.438475, 0.882883, 0.168099,
		0.871305, 0.463450, -0.161371,
		14.274327, 19.780308, 20.957191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.430225, 20.106739, 20.690689>,  <13.664413, 19.455893, 21.070150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.430225, 20.106739, 20.690689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.810753, 19.993668, 20.641563>,  <14.039069, 19.925825, 20.612087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.810753, 19.993668, 20.641563>,  <13.430225, 20.106739, 20.690689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.810753, 19.993668, 20.641563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140686, -0.043738, -0.989088,
		0.274224, 0.958216, -0.081379,
		0.951319, -0.282681, -0.122814,
		14.096148, 19.908863, 20.604719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733606, 20.722010, 20.400324>,  <13.430225, 20.106739, 20.690689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733606, 20.722010, 20.400324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890972, 20.779833, 20.037153>,  <13.985392, 20.814528, 19.819252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890972, 20.779833, 20.037153>,  <13.733606, 20.722010, 20.400324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.890972, 20.779833, 20.037153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807227, 0.526966, -0.265878,
		0.440010, 0.837502, 0.324009,
		0.393415, 0.144560, -0.907925,
		14.008997, 20.823200, 19.764776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.489302, 20.973692, 20.989269>,  <13.733606, 20.722010, 20.400324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.489302, 20.973692, 20.989269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718760, 20.650537, 20.935236>,  <13.856436, 20.456644, 20.902817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718760, 20.650537, 20.935236>,  <13.489302, 20.973692, 20.989269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.718760, 20.650537, 20.935236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731272, 0.430829, 0.528798,
		-0.369012, -0.402125, 0.837929,
		0.573647, -0.807887, -0.135081,
		13.890855, 20.408171, 20.894712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.386457, 19.358288, 29.265041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.621984, 19.679691, 29.230022>,  <15.763301, 19.872534, 29.209011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.621984, 19.679691, 29.230022>,  <15.386457, 19.358288, 29.265041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.621984, 19.679691, 29.230022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393413, 0.379530, 0.837367,
		0.706059, -0.458614, 0.539586,
		0.588817, 0.803511, -0.087546,
		15.798630, 19.920744, 29.203758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569040, 19.642508, 28.638498>,  <15.386457, 19.358288, 29.265041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.569040, 19.642508, 28.638498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.655692, 20.018211, 28.744978>,  <15.707684, 20.243633, 28.808867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.655692, 20.018211, 28.744978>,  <15.569040, 19.642508, 28.638498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.655692, 20.018211, 28.744978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113370, 0.295035, -0.948737,
		-0.969649, 0.175346, 0.170397,
		0.216630, 0.939259, 0.266201,
		15.720681, 20.299990, 28.824839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.001822, 20.113239, 28.360859>,  <15.569040, 19.642508, 28.638498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.001822, 20.113239, 28.360859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.337680, 20.327324, 28.397833>,  <15.539195, 20.455774, 28.420017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.337680, 20.327324, 28.397833>,  <15.001822, 20.113239, 28.360859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.337680, 20.327324, 28.397833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031983, 0.218617, -0.975286,
		-0.542193, 0.815938, 0.200679,
		0.839645, 0.535212, 0.092437,
		15.589573, 20.487888, 28.425564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884039, 20.817757, 28.160574>,  <15.001822, 20.113239, 28.360859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.884039, 20.817757, 28.160574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.280122, 20.772139, 28.128363>,  <15.517772, 20.744768, 28.109035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.280122, 20.772139, 28.128363>,  <14.884039, 20.817757, 28.160574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.280122, 20.772139, 28.128363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072252, 0.074930, -0.994568,
		0.119461, 0.990646, 0.065956,
		0.990206, -0.114047, -0.080527,
		15.577184, 20.737925, 28.104204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.123179, 21.457661, 27.703491>,  <14.884039, 20.817757, 28.160574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.123179, 21.457661, 27.703491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.398747, 21.168182, 27.687206>,  <15.564088, 20.994495, 27.677435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.398747, 21.168182, 27.687206>,  <15.123179, 21.457661, 27.703491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398747, 21.168182, 27.687206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222820, 0.264893, -0.938181,
		0.689740, 0.637259, 0.343743,
		0.688919, -0.723694, -0.040713,
		15.605423, 20.951075, 27.674992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615067, 21.786373, 27.485222>,  <15.123179, 21.457661, 27.703491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615067, 21.786373, 27.485222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.721273, 21.410343, 27.399656>,  <15.784998, 21.184725, 27.348316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.721273, 21.410343, 27.399656>,  <15.615067, 21.786373, 27.485222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721273, 21.410343, 27.399656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105845, 0.192113, -0.975648,
		0.958278, 0.281694, -0.048492,
		0.265518, -0.940075, -0.213914,
		15.800929, 21.128321, 27.335482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888865, 21.920181, 26.913490>,  <15.615067, 21.786373, 27.485222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888865, 21.920181, 26.913490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.840119, 21.523281, 26.923195>,  <15.810871, 21.285141, 26.929018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.840119, 21.523281, 26.923195>,  <15.888865, 21.920181, 26.913490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840119, 21.523281, 26.923195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040701, -0.019426, -0.998983,
		0.991712, -0.122729, -0.038018,
		-0.121866, -0.992250, 0.024260,
		15.803559, 21.225607, 26.930473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.291368, 21.673882, 26.337271>,  <15.888865, 21.920181, 26.913490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.291368, 21.673882, 26.337271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.033613, 21.392387, 26.456947>,  <15.878960, 21.223490, 26.528753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.033613, 21.392387, 26.456947>,  <16.291368, 21.673882, 26.337271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033613, 21.392387, 26.456947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219642, -0.204438, -0.953920,
		0.732475, -0.680411, -0.022832,
		-0.644390, -0.703737, 0.299192,
		15.840296, 21.181267, 26.546705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422297, 20.893364, 26.056650>,  <16.291368, 21.673882, 26.337271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.422297, 20.893364, 26.056650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.028368, 20.897066, 26.125980>,  <15.792011, 20.899288, 26.167578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.028368, 20.897066, 26.125980>,  <16.422297, 20.893364, 26.056650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028368, 20.897066, 26.125980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167016, -0.322383, -0.931759,
		0.047252, -0.946564, 0.319036,
		-0.984821, 0.009257, 0.173325,
		15.732922, 20.899843, 26.177979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.072527, 20.187868, 25.959953>,  <16.422297, 20.893364, 26.056650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.072527, 20.187868, 25.959953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.801262, 20.474676, 25.895485>,  <15.638503, 20.646761, 25.856804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.801262, 20.474676, 25.895485>,  <16.072527, 20.187868, 25.959953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.801262, 20.474676, 25.895485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122123, -0.326206, -0.937377,
		-0.724695, -0.616010, 0.308786,
		-0.678161, 0.717022, -0.161171,
		15.597814, 20.689783, 25.847134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470167, 19.861206, 25.783777>,  <16.072527, 20.187868, 25.959953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470167, 19.861206, 25.783777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.415710, 20.241810, 25.673435>,  <15.383037, 20.470173, 25.607231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.415710, 20.241810, 25.673435>,  <15.470167, 19.861206, 25.783777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415710, 20.241810, 25.673435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493407, -0.306578, -0.813977,
		-0.859078, 0.025291, 0.511219,
		-0.136142, 0.951509, -0.275853,
		15.374867, 20.527264, 25.590679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.909911, 19.773495, 25.326624>,  <15.470167, 19.861206, 25.783777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.909911, 19.773495, 25.326624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.014347, 20.155565, 25.270803>,  <15.077008, 20.384808, 25.237310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.014347, 20.155565, 25.270803>,  <14.909911, 19.773495, 25.326624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.014347, 20.155565, 25.270803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467800, -0.001261, -0.883833,
		-0.844391, 0.296042, 0.446501,
		0.261089, 0.955174, -0.139553,
		15.092673, 20.442118, 25.228937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324217, 20.162073, 25.103645>,  <14.909911, 19.773495, 25.326624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324217, 20.162073, 25.103645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.671547, 20.319719, 24.983191>,  <14.879945, 20.414307, 24.910917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.671547, 20.319719, 24.983191>,  <14.324217, 20.162073, 25.103645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.671547, 20.319719, 24.983191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284903, -0.100661, -0.953256,
		-0.406008, 0.913531, 0.024879,
		0.868325, 0.394118, -0.301137,
		14.932044, 20.437954, 24.892849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138831, 20.668837, 24.622202>,  <14.324217, 20.162073, 25.103645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138831, 20.668837, 24.622202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.526506, 20.587221, 24.567005>,  <14.759111, 20.538252, 24.533888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.526506, 20.587221, 24.567005>,  <14.138831, 20.668837, 24.622202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.526506, 20.587221, 24.567005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137262, 0.017789, -0.990375,
		0.204528, 0.978801, -0.010766,
		0.969189, -0.204037, -0.137991,
		14.817264, 20.526011, 24.525608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.736937, 21.142834, 25.040297>,  <14.138831, 20.668837, 24.622202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.736937, 21.142834, 25.040297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.459749, 21.431219, 25.041348>,  <13.293437, 21.604250, 25.041979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.459749, 21.431219, 25.041348>,  <13.736937, 21.142834, 25.040297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.459749, 21.431219, 25.041348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231107, -0.225585, 0.946415,
		0.682923, 0.655228, 0.322943,
		-0.692968, 0.720963, 0.002629,
		13.251859, 21.647509, 25.042137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950828, 21.665318, 25.566038>,  <13.736937, 21.142834, 25.040297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950828, 21.665318, 25.566038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.558715, 21.649284, 25.488642>,  <13.323447, 21.639664, 25.442204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.558715, 21.649284, 25.488642>,  <13.950828, 21.665318, 25.566038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558715, 21.649284, 25.488642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191501, -0.048720, 0.980282,
		-0.048720, 0.998008, 0.040083,
		-0.980282, -0.040083, -0.193493,
		13.264630, 21.637259, 25.430593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664706, 22.139502, 25.958792>,  <13.950828, 21.665318, 25.566038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.664706, 22.139502, 25.958792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.395439, 21.855755, 25.875227>,  <13.233879, 21.685507, 25.825089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.395439, 21.855755, 25.875227>,  <13.664706, 22.139502, 25.958792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395439, 21.855755, 25.875227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119574, -0.174376, 0.977392,
		-0.729757, 0.682931, 0.032563,
		-0.673169, -0.709365, -0.208912,
		13.193488, 21.642944, 25.812553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.184826, 22.231836, 26.493029>,  <13.664706, 22.139502, 25.958792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.184826, 22.231836, 26.493029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.094114, 21.868052, 26.353630>,  <13.039687, 21.649780, 26.269991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.094114, 21.868052, 26.353630>,  <13.184826, 22.231836, 26.493029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094114, 21.868052, 26.353630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333029, -0.263838, 0.905252,
		-0.915240, 0.321350, -0.243045,
		-0.226778, -0.909463, -0.348494,
		13.026081, 21.595213, 26.249083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.630099, 21.997410, 26.838413>,  <13.184826, 22.231836, 26.493029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.630099, 21.997410, 26.838413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.784815, 21.655239, 26.700634>,  <12.877645, 21.449938, 26.617968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.784815, 21.655239, 26.700634>,  <12.630099, 21.997410, 26.838413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.784815, 21.655239, 26.700634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145221, -0.425359, 0.893298,
		-0.910662, -0.295497, -0.288749,
		0.386789, -0.855425, -0.344446,
		12.900851, 21.398611, 26.597300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.210092, 21.486916, 27.098490>,  <12.630099, 21.997410, 26.838413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.210092, 21.486916, 27.098490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.560645, 21.311502, 27.018850>,  <12.770977, 21.206255, 26.971067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.560645, 21.311502, 27.018850>,  <12.210092, 21.486916, 27.098490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.560645, 21.311502, 27.018850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004414, -0.406067, 0.913833,
		-0.481593, -0.801747, -0.353935,
		0.876384, -0.438533, -0.199098,
		12.823561, 21.179943, 26.959122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120968, 20.804358, 27.277285>,  <12.210092, 21.486916, 27.098490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120968, 20.804358, 27.277285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.516685, 20.860722, 27.292488>,  <12.754115, 20.894541, 27.301611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.516685, 20.860722, 27.292488>,  <12.120968, 20.804358, 27.277285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.516685, 20.860722, 27.292488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036754, -0.492570, 0.869496,
		0.141244, -0.858789, -0.492475,
		0.989292, 0.140911, 0.038009,
		12.813473, 20.902994, 27.303890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329597, 20.234463, 27.492739>,  <12.120968, 20.804358, 27.277285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329597, 20.234463, 27.492739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.638419, 20.480078, 27.558327>,  <12.823712, 20.627447, 27.597679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.638419, 20.480078, 27.558327>,  <12.329597, 20.234463, 27.492739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.638419, 20.480078, 27.558327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198226, -0.477771, 0.855828,
		0.603852, -0.628244, -0.490585,
		0.772056, 0.614040, 0.163969,
		12.870036, 20.664289, 27.607517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866505, 19.800600, 27.694439>,  <12.329597, 20.234463, 27.492739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866505, 19.800600, 27.694439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.956495, 20.161970, 27.840427>,  <13.010489, 20.378792, 27.928020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.956495, 20.161970, 27.840427>,  <12.866505, 19.800600, 27.694439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.956495, 20.161970, 27.840427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160103, -0.403759, 0.900747,
		0.961120, -0.144214, -0.235478,
		0.224977, 0.903427, 0.364972,
		13.023989, 20.432999, 27.949919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.218648, 19.665262, 28.265354>,  <12.866505, 19.800600, 27.694439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.218648, 19.665262, 28.265354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.212461, 20.060472, 28.326759>,  <13.208750, 20.297598, 28.363602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.212461, 20.060472, 28.326759>,  <13.218648, 19.665262, 28.265354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212461, 20.060472, 28.326759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329282, -0.139933, 0.933805,
		0.944105, 0.064991, -0.323175,
		-0.015466, 0.988026, 0.153512,
		13.207822, 20.356880, 28.372812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.740525, 19.704855, 28.717854>,  <13.218648, 19.665262, 28.265354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.740525, 19.704855, 28.717854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.533892, 20.044666, 28.760635>,  <13.409911, 20.248554, 28.786304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.533892, 20.044666, 28.760635>,  <13.740525, 19.704855, 28.717854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533892, 20.044666, 28.760635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340285, 0.089066, 0.936095,
		0.785714, 0.519968, -0.335093,
		-0.516585, 0.849529, 0.106957,
		13.378916, 20.299524, 28.792723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.209828, 20.229176, 28.944880>,  <13.740525, 19.704855, 28.717854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.209828, 20.229176, 28.944880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.845738, 20.321262, 29.082569>,  <13.627284, 20.376514, 29.165182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.845738, 20.321262, 29.082569>,  <14.209828, 20.229176, 28.944880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.845738, 20.321262, 29.082569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373305, 0.096335, 0.922693,
		0.179260, 0.968359, -0.173628,
		-0.910225, 0.230218, 0.344224,
		13.572671, 20.390327, 29.185837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204939, 20.896448, 29.305470>,  <14.209828, 20.229176, 28.944880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204939, 20.896448, 29.305470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.890445, 20.686083, 29.435238>,  <13.701748, 20.559864, 29.513100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.890445, 20.686083, 29.435238>,  <14.204939, 20.896448, 29.305470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.890445, 20.686083, 29.435238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299617, 0.134715, 0.944501,
		-0.540429, 0.839802, 0.051655,
		-0.786235, -0.525913, 0.324423,
		13.654574, 20.528309, 29.532564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.843128, 21.379593, 29.784678>,  <14.204939, 20.896448, 29.305470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.843128, 21.379593, 29.784678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.757282, 20.995911, 29.858292>,  <13.705774, 20.765701, 29.902460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.757282, 20.995911, 29.858292>,  <13.843128, 21.379593, 29.784678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.757282, 20.995911, 29.858292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362354, 0.096784, 0.927002,
		-0.906995, 0.265635, 0.326800,
		-0.214615, -0.959203, 0.184036,
		13.692898, 20.708149, 29.913502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<17.892332, 12.915452, 29.151566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.841545, 13.310604, 29.115854>,  <17.811073, 13.547695, 29.094427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.841545, 13.310604, 29.115854>,  <17.892332, 12.915452, 29.151566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841545, 13.310604, 29.115854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484953, -0.140340, -0.863207,
		-0.865275, -0.066301, 0.496894,
		-0.126966, 0.987881, -0.089280,
		17.803455, 13.606968, 29.089069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144005, 13.033519, 28.935038>,  <17.892332, 12.915452, 29.151566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144005, 13.033519, 28.935038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.362654, 13.351068, 28.828478>,  <17.493843, 13.541598, 28.764542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.362654, 13.351068, 28.828478>,  <17.144005, 13.033519, 28.935038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.362654, 13.351068, 28.828478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449492, 0.009759, -0.893231,
		-0.706514, 0.608004, 0.362175,
		0.546622, 0.793874, -0.266398,
		17.526640, 13.589231, 28.748558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693848, 13.582539, 28.728844>,  <17.144005, 13.033519, 28.935038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693848, 13.582539, 28.728844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.047544, 13.675013, 28.566525>,  <17.259762, 13.730496, 28.469133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.047544, 13.675013, 28.566525>,  <16.693848, 13.582539, 28.728844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047544, 13.675013, 28.566525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448538, 0.178283, -0.875802,
		-0.130124, 0.956436, 0.261340,
		0.884241, 0.231184, -0.405799,
		17.312817, 13.744368, 28.444784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.561905, 14.157808, 28.289711>,  <16.693848, 13.582539, 28.728844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.561905, 14.157808, 28.289711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.900545, 14.008609, 28.137848>,  <17.103729, 13.919089, 28.046730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.900545, 14.008609, 28.137848>,  <16.561905, 14.157808, 28.289711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900545, 14.008609, 28.137848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319648, 0.214020, -0.923050,
		0.425552, 0.902811, 0.061960,
		0.846600, -0.373000, -0.379658,
		17.154526, 13.896708, 28.023951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726805, 14.625718, 27.769533>,  <16.561905, 14.157808, 28.289711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726805, 14.625718, 27.769533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.928497, 14.290970, 27.684305>,  <17.049513, 14.090121, 27.633169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.928497, 14.290970, 27.684305>,  <16.726805, 14.625718, 27.769533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928497, 14.290970, 27.684305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195956, 0.129414, -0.972036,
		0.841042, 0.531883, -0.098735,
		0.504232, -0.836871, -0.213068,
		17.079767, 14.039908, 27.620384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092020, 14.822248, 27.137352>,  <16.726805, 14.625718, 27.769533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092020, 14.822248, 27.137352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.090578, 14.422330, 27.145317>,  <17.089714, 14.182379, 27.150097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.090578, 14.422330, 27.145317>,  <17.092020, 14.822248, 27.137352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090578, 14.422330, 27.145317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193542, -0.018839, -0.980911,
		0.981085, -0.007388, -0.193434,
		-0.003603, -0.999795, 0.019912,
		17.089497, 14.122392, 27.151291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.491690, 14.635219, 26.633020>,  <17.092020, 14.822248, 27.137352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.491690, 14.635219, 26.633020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.288261, 14.298944, 26.707430>,  <17.166204, 14.097180, 26.752075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.288261, 14.298944, 26.707430>,  <17.491690, 14.635219, 26.633020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288261, 14.298944, 26.707430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006647, -0.212211, -0.977201,
		0.860994, -0.498213, 0.102336,
		-0.508571, -0.840685, 0.186024,
		17.135691, 14.046740, 26.763237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.853525, 14.072322, 26.257238>,  <17.491690, 14.635219, 26.633020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.853525, 14.072322, 26.257238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.474867, 13.966462, 26.330807>,  <17.247673, 13.902946, 26.374949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.474867, 13.966462, 26.330807>,  <17.853525, 14.072322, 26.257238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.474867, 13.966462, 26.330807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133292, -0.198084, -0.971080,
		0.293427, -0.943782, 0.152240,
		-0.946644, -0.264648, 0.183922,
		17.190874, 13.887068, 26.385983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695265, 13.498226, 25.837435>,  <17.853525, 14.072322, 26.257238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695265, 13.498226, 25.837435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.337141, 13.648599, 25.933012>,  <17.122267, 13.738822, 25.990358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.337141, 13.648599, 25.933012>,  <17.695265, 13.498226, 25.837435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.337141, 13.648599, 25.933012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302354, -0.118961, -0.945743,
		-0.327111, -0.918979, 0.220172,
		-0.895310, 0.375933, 0.238943,
		17.068548, 13.761378, 26.004696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350885, 13.273532, 25.213520>,  <17.695265, 13.498226, 25.837435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350885, 13.273532, 25.213520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.072901, 13.520162, 25.361502>,  <16.906111, 13.668139, 25.450291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.072901, 13.520162, 25.361502>,  <17.350885, 13.273532, 25.213520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072901, 13.520162, 25.361502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597811, -0.209543, -0.773766,
		-0.399565, -0.758897, 0.514221,
		-0.694960, 0.616576, 0.369951,
		16.864412, 13.705134, 25.472486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.662468, 12.823870, 25.195908>,  <17.350885, 13.273532, 25.213520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.662468, 12.823870, 25.195908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.561195, 13.210099, 25.219799>,  <16.500431, 13.441836, 25.234133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.561195, 13.210099, 25.219799>,  <16.662468, 12.823870, 25.195908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561195, 13.210099, 25.219799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613580, -0.112540, -0.781572,
		-0.747943, -0.234527, 0.620950,
		-0.253181, 0.965573, 0.059728,
		16.485241, 13.499771, 25.237717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961949, 12.924219, 25.107658>,  <16.662468, 12.823870, 25.195908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961949, 12.924219, 25.107658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.091133, 13.287510, 25.001209>,  <16.168644, 13.505485, 24.937340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.091133, 13.287510, 25.001209>,  <15.961949, 12.924219, 25.107658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091133, 13.287510, 25.001209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528157, -0.060374, -0.846998,
		-0.785332, 0.414102, 0.460188,
		0.322960, 0.908226, -0.266124,
		16.188021, 13.559978, 24.921371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.362668, 13.308951, 24.967220>,  <15.961949, 12.924219, 25.107658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.362668, 13.308951, 24.967220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.679828, 13.450713, 24.768944>,  <15.870124, 13.535770, 24.649979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.679828, 13.450713, 24.768944>,  <15.362668, 13.308951, 24.967220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679828, 13.450713, 24.768944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519608, -0.031690, -0.853817,
		-0.318305, 0.934555, 0.159025,
		0.792899, 0.354405, -0.495690,
		15.917697, 13.557034, 24.620237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.163424, 13.931067, 24.550255>,  <15.362668, 13.308951, 24.967220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.163424, 13.931067, 24.550255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.488971, 13.757277, 24.395927>,  <15.684299, 13.653003, 24.303331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.488971, 13.757277, 24.395927>,  <15.163424, 13.931067, 24.550255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488971, 13.757277, 24.395927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415524, 0.028942, -0.909122,
		0.406156, 0.900219, -0.156979,
		0.813866, -0.434474, -0.385818,
		15.733130, 13.626934, 24.280182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.866947, 14.625605, 24.780434>,  <15.163424, 13.931067, 24.550255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.866947, 14.625605, 24.780434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.503600, 14.732506, 24.909084>,  <14.285592, 14.796646, 24.986275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.503600, 14.732506, 24.909084>,  <14.866947, 14.625605, 24.780434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.503600, 14.732506, 24.909084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390311, 0.265814, 0.881476,
		0.150084, 0.926239, -0.345769,
		-0.908368, 0.267253, 0.321627,
		14.231090, 14.812681, 25.005573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989639, 15.148356, 25.138704>,  <14.866947, 14.625605, 24.780434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989639, 15.148356, 25.138704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.640990, 15.029534, 25.294670>,  <14.431801, 14.958241, 25.388250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.640990, 15.029534, 25.294670>,  <14.989639, 15.148356, 25.138704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.640990, 15.029534, 25.294670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365847, 0.135181, 0.920805,
		-0.326238, 0.945243, -0.009151,
		-0.871622, -0.297054, 0.389916,
		14.379504, 14.940418, 25.411644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797484, 15.764955, 25.589584>,  <14.989639, 15.148356, 25.138704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797484, 15.764955, 25.589584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.615327, 15.430511, 25.711922>,  <14.506033, 15.229845, 25.785324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.615327, 15.430511, 25.711922>,  <14.797484, 15.764955, 25.589584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.615327, 15.430511, 25.711922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186067, 0.246562, 0.951097,
		-0.870630, 0.490030, 0.043289,
		-0.455393, -0.836109, 0.305843,
		14.478709, 15.179679, 25.803675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.374910, 15.944180, 26.130774>,  <14.797484, 15.764955, 25.589584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.374910, 15.944180, 26.130774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.398211, 15.548597, 26.185280>,  <14.412190, 15.311248, 26.217983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.398211, 15.548597, 26.185280>,  <14.374910, 15.944180, 26.130774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398211, 15.548597, 26.185280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030759, 0.134656, 0.990415,
		-0.997828, -0.061883, -0.022575,
		0.058250, -0.988958, 0.136267,
		14.415686, 15.251910, 26.226160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.771971, 15.702971, 26.570862>,  <14.374910, 15.944180, 26.130774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.771971, 15.702971, 26.570862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.042239, 15.412418, 26.621204>,  <14.204400, 15.238087, 26.651409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.042239, 15.412418, 26.621204>,  <13.771971, 15.702971, 26.570862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.042239, 15.412418, 26.621204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089841, 0.088313, 0.992033,
		-0.731708, -0.681596, -0.005588,
		0.675672, -0.726380, 0.125855,
		14.244941, 15.194505, 26.658960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.499728, 15.273207, 27.113495>,  <13.771971, 15.702971, 26.570862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.499728, 15.273207, 27.113495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.890356, 15.187462, 27.105921>,  <14.124733, 15.136015, 27.101377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.890356, 15.187462, 27.105921>,  <13.499728, 15.273207, 27.113495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.890356, 15.187462, 27.105921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009347, -0.130153, 0.991450,
		-0.214997, -0.968043, -0.129107,
		0.976570, -0.214366, -0.018934,
		14.183328, 15.123153, 27.100241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.579282, 14.634557, 27.581497>,  <13.499728, 15.273207, 27.113495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.579282, 14.634557, 27.581497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.945051, 14.796165, 27.571705>,  <14.164513, 14.893129, 27.565830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.945051, 14.796165, 27.571705>,  <13.579282, 14.634557, 27.581497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.945051, 14.796165, 27.571705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123295, -0.220428, 0.967579,
		0.385525, -0.887795, -0.251378,
		0.914423, 0.404019, -0.024480,
		14.219378, 14.917370, 27.564362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963089, 14.165298, 27.928730>,  <13.579282, 14.634557, 27.581497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.963089, 14.165298, 27.928730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.163977, 14.510559, 27.949690>,  <14.284510, 14.717715, 27.962267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.163977, 14.510559, 27.949690>,  <13.963089, 14.165298, 27.928730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163977, 14.510559, 27.949690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165382, -0.155352, 0.973917,
		0.848778, -0.480454, -0.220770,
		0.502219, 0.863151, 0.052401,
		14.314642, 14.769505, 27.965410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492582, 14.003057, 28.413250>,  <13.963089, 14.165298, 27.928730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492582, 14.003057, 28.413250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.465725, 14.401837, 28.397343>,  <14.449611, 14.641106, 28.387798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.465725, 14.401837, 28.397343>,  <14.492582, 14.003057, 28.413250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465725, 14.401837, 28.397343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370951, 0.061945, 0.926584,
		0.926222, 0.047461, -0.373979,
		-0.067143, 0.996950, -0.039769,
		14.445582, 14.700922, 28.385412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101267, 14.277711, 28.726131>,  <14.492582, 14.003057, 28.413250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101267, 14.277711, 28.726131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.825382, 14.562980, 28.776222>,  <14.659851, 14.734141, 28.806276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.825382, 14.562980, 28.776222>,  <15.101267, 14.277711, 28.726131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825382, 14.562980, 28.776222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395691, 0.226388, 0.890043,
		0.606403, 0.663426, -0.438339,
		-0.689713, 0.713172, 0.125229,
		14.618468, 14.776931, 28.813791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496922, 14.750237, 29.050060>,  <15.101267, 14.277711, 28.726131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496922, 14.750237, 29.050060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.120935, 14.858429, 29.133297>,  <14.895344, 14.923344, 29.183239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.120935, 14.858429, 29.133297>,  <15.496922, 14.750237, 29.050060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.120935, 14.858429, 29.133297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291100, 0.317239, 0.902563,
		0.178109, 0.908956, -0.376931,
		-0.939967, 0.270479, 0.208094,
		14.838945, 14.939572, 29.195724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574111, 15.317989, 29.468580>,  <15.496922, 14.750237, 29.050060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574111, 15.317989, 29.468580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.186575, 15.243577, 29.533989>,  <14.954053, 15.198930, 29.573235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.186575, 15.243577, 29.533989>,  <15.574111, 15.317989, 29.468580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.186575, 15.243577, 29.533989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113298, 0.254221, 0.960487,
		-0.220251, 0.949086, -0.225223,
		-0.968841, -0.186031, 0.163522,
		14.895923, 15.187768, 29.583046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.240304, 15.883574, 29.801886>,  <15.574111, 15.317989, 29.468580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.240304, 15.883574, 29.801886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.988992, 15.581899, 29.878267>,  <14.838204, 15.400893, 29.924095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.988992, 15.581899, 29.878267>,  <15.240304, 15.883574, 29.801886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988992, 15.581899, 29.878267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024141, 0.226427, 0.973729,
		-0.777612, 0.616385, -0.124053,
		-0.628280, -0.754189, 0.190952,
		14.800508, 15.355642, 29.935553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.583226, 16.113445, 30.108982>,  <15.240304, 15.883574, 29.801886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.583226, 16.113445, 30.108982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.657928, 15.735435, 30.216349>,  <14.702750, 15.508628, 30.280769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.657928, 15.735435, 30.216349>,  <14.583226, 16.113445, 30.108982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.657928, 15.735435, 30.216349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187870, 0.302537, 0.934439,
		-0.964275, -0.124084, 0.234042,
		0.186756, -0.945026, 0.268417,
		14.713955, 15.451926, 30.296873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869588, 16.118198, 30.331478>,  <14.583226, 16.113445, 30.108982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869588, 16.118198, 30.331478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.641538, 16.443420, 30.378633>,  <13.504707, 16.638554, 30.406927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.641538, 16.443420, 30.378633>,  <13.869588, 16.118198, 30.331478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641538, 16.443420, 30.378633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572943, -0.290642, -0.766331,
		-0.588807, -0.504447, 0.631537,
		-0.570124, 0.813056, 0.117887,
		13.470500, 16.687338, 30.414000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.235728, 15.911451, 30.347389>,  <13.869588, 16.118198, 30.331478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.235728, 15.911451, 30.347389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.190809, 16.299068, 30.259439>,  <13.163858, 16.531639, 30.206671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.190809, 16.299068, 30.259439>,  <13.235728, 15.911451, 30.347389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.190809, 16.299068, 30.259439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633354, -0.240302, -0.735607,
		-0.765671, 0.056651, 0.640733,
		-0.112297, 0.969044, -0.219872,
		13.157121, 16.589781, 30.193478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.532643, 16.132948, 30.296368>,  <13.235728, 15.911451, 30.347389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.532643, 16.132948, 30.296368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.747097, 16.398548, 30.087883>,  <12.875770, 16.557909, 29.962791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.747097, 16.398548, 30.087883>,  <12.532643, 16.132948, 30.296368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747097, 16.398548, 30.087883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573597, -0.166437, -0.802051,
		-0.619312, 0.728973, 0.291636,
		0.536134, 0.664001, -0.521213,
		12.907937, 16.597748, 29.931519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.044918, 16.452459, 29.925331>,  <12.532643, 16.132948, 30.296368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.044918, 16.452459, 29.925331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.389221, 16.521641, 29.733839>,  <12.595803, 16.563150, 29.618944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.389221, 16.521641, 29.733839>,  <12.044918, 16.452459, 29.925331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.389221, 16.521641, 29.733839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488114, 0.013713, -0.872672,
		-0.144367, 0.984834, 0.096224,
		0.860757, 0.172953, -0.478732,
		12.647449, 16.573526, 29.590219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.857173, 16.985325, 29.469227>,  <12.044918, 16.452459, 29.925331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.857173, 16.985325, 29.469227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.191981, 16.833595, 29.311487>,  <12.392866, 16.742558, 29.216843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.191981, 16.833595, 29.311487>,  <11.857173, 16.985325, 29.469227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191981, 16.833595, 29.311487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370576, 0.137271, -0.918602,
		0.402580, 0.915025, -0.025669,
		0.837020, -0.379323, -0.394349,
		12.443088, 16.719799, 29.193182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.021687, 17.480564, 28.958427>,  <11.857173, 16.985325, 29.469227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.021687, 17.480564, 28.958427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.240815, 17.158915, 28.866096>,  <12.372293, 16.965925, 28.810698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.240815, 17.158915, 28.866096>,  <12.021687, 17.480564, 28.958427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.240815, 17.158915, 28.866096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418394, -0.024411, -0.907938,
		0.724458, 0.593964, -0.349812,
		0.547821, -0.804121, -0.230826,
		12.405162, 16.917679, 28.796848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410761, 17.540560, 28.263130>,  <12.021687, 17.480564, 28.958427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410761, 17.540560, 28.263130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.399539, 17.144506, 28.318054>,  <12.392806, 16.906876, 28.351007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.399539, 17.144506, 28.318054>,  <12.410761, 17.540560, 28.263130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.399539, 17.144506, 28.318054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502143, -0.104814, -0.858409,
		0.864329, -0.093031, -0.494247,
		-0.028054, -0.990131, 0.137309,
		12.391123, 16.847467, 28.359247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648439, 17.210699, 27.637070>,  <12.410761, 17.540560, 28.263130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648439, 17.210699, 27.637070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.445186, 16.926638, 27.831997>,  <12.323234, 16.756201, 27.948954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.445186, 16.926638, 27.831997>,  <12.648439, 17.210699, 27.637070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.445186, 16.926638, 27.831997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510295, -0.207567, -0.834575,
		0.693829, -0.672752, -0.256917,
		-0.508135, -0.710155, 0.487318,
		12.292746, 16.713591, 27.978193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703705, 16.646967, 27.167780>,  <12.648439, 17.210699, 27.637070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703705, 16.646967, 27.167780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.393153, 16.570063, 27.407871>,  <12.206822, 16.523920, 27.551926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.393153, 16.570063, 27.407871>,  <12.703705, 16.646967, 27.167780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.393153, 16.570063, 27.407871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483089, -0.430123, -0.762640,
		0.404799, -0.882060, 0.241058,
		-0.776378, -0.192263, 0.600226,
		12.160239, 16.512384, 27.587938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.497043, 15.975659, 26.959433>,  <12.703705, 16.646967, 27.167780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.497043, 15.975659, 26.959433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.198341, 16.157459, 27.153666>,  <12.019121, 16.266539, 27.270205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.198341, 16.157459, 27.153666>,  <12.497043, 15.975659, 26.959433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.198341, 16.157459, 27.153666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664458, -0.477675, -0.574737,
		-0.029267, -0.751835, 0.658701,
		-0.746753, 0.454500, 0.485582,
		11.974316, 16.293810, 27.299339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.855672, 15.592085, 26.988668>,  <12.497043, 15.975659, 26.959433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.855672, 15.592085, 26.988668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.680821, 15.944127, 27.062788>,  <11.575912, 16.155352, 27.107260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.680821, 15.944127, 27.062788>,  <11.855672, 15.592085, 26.988668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.680821, 15.944127, 27.062788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661817, -0.175244, -0.728895,
		-0.609031, -0.441253, 0.659073,
		-0.437126, 0.880105, 0.185299,
		11.549684, 16.208158, 27.118378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.038768, 15.516001, 27.073204>,  <11.855672, 15.592085, 26.988668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.038768, 15.516001, 27.073204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.115695, 15.887761, 26.947201>,  <11.161852, 16.110817, 26.871599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.115695, 15.887761, 26.947201>,  <11.038768, 15.516001, 27.073204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.115695, 15.887761, 26.947201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703665, -0.093138, -0.704401,
		-0.684009, 0.357129, 0.636074,
		0.192319, 0.929400, -0.315006,
		11.173390, 16.166580, 26.852699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.384029, 15.813811, 26.956127>,  <11.038768, 15.516001, 27.073204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.384029, 15.813811, 26.956127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.642408, 16.031872, 26.742376>,  <10.797436, 16.162708, 26.614126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.642408, 16.031872, 26.742376>,  <10.384029, 15.813811, 26.956127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.642408, 16.031872, 26.742376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585458, -0.095450, -0.805064,
		-0.489889, 0.832886, 0.257508,
		0.645947, 0.545152, -0.534379,
		10.836192, 16.195417, 26.582062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.969799, 16.087971, 26.361643>,  <10.384029, 15.813811, 26.956127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.969799, 16.087971, 26.361643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.350669, 16.154509, 26.259119>,  <10.579190, 16.194431, 26.197605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.350669, 16.154509, 26.259119>,  <9.969799, 16.087971, 26.361643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.350669, 16.154509, 26.259119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277467, 0.119402, -0.953287,
		-0.127972, 0.978812, 0.159847,
		0.952174, 0.166346, -0.256307,
		10.636321, 16.204412, 26.182226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.121331, 5.553051, 14.839484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.275467, 5.198205, 14.941105>,  <7.367949, 4.985298, 15.002077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.275467, 5.198205, 14.941105>,  <7.121331, 5.553051, 14.839484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.275467, 5.198205, 14.941105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229220, -0.358704, -0.904870,
		0.893852, 0.290448, -0.341567,
		0.385339, -0.887114, 0.254052,
		7.391069, 4.932071, 15.017321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.630620, 5.331650, 14.355198>,  <7.121331, 5.553051, 14.839484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.630620, 5.331650, 14.355198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.363536, 5.062311, 14.482170>,  <7.203285, 4.900707, 14.558353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.363536, 5.062311, 14.482170>,  <7.630620, 5.331650, 14.355198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.363536, 5.062311, 14.482170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223632, -0.225281, -0.948281,
		0.710036, -0.704166, -0.000160,
		-0.667711, -0.673349, 0.317431,
		7.163223, 4.860306, 14.577399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.848835, 5.825817, 13.878593>,  <7.630620, 5.331650, 14.355198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.848835, 5.825817, 13.878593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.879374, 6.177972, 13.691366>,  <7.897697, 6.389265, 13.579030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.879374, 6.177972, 13.691366>,  <7.848835, 5.825817, 13.878593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.879374, 6.177972, 13.691366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805804, 0.221999, 0.548996,
		0.587241, -0.419086, -0.692471,
		0.076348, 0.880388, -0.468068,
		7.902278, 6.442088, 13.550946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.570410, 5.994142, 13.864938>,  <7.848835, 5.825817, 13.878593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.570410, 5.994142, 13.864938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.378743, 6.340417, 13.806996>,  <8.263743, 6.548182, 13.772232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.378743, 6.340417, 13.806996>,  <8.570410, 5.994142, 13.864938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.378743, 6.340417, 13.806996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780621, 0.495764, 0.380591,
		0.401286, 0.069291, -0.913328,
		-0.479167, 0.865689, -0.144853,
		8.234993, 6.600124, 13.763540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.034936, 6.470369, 13.727644>,  <8.570410, 5.994142, 13.864938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.034936, 6.470369, 13.727644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.736556, 6.709856, 13.844330>,  <8.557528, 6.853548, 13.914341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.736556, 6.709856, 13.844330>,  <9.034936, 6.470369, 13.727644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.736556, 6.709856, 13.844330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645272, 0.541283, 0.539107,
		0.164873, 0.590382, -0.790105,
		-0.745949, 0.598717, 0.291714,
		8.512772, 6.889471, 13.931844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.316095, 7.250912, 13.781252>,  <9.034936, 6.470369, 13.727644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.316095, 7.250912, 13.781252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.968838, 7.250654, 13.979776>,  <8.760483, 7.250499, 14.098891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.968838, 7.250654, 13.979776>,  <9.316095, 7.250912, 13.781252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.968838, 7.250654, 13.979776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374470, 0.655443, 0.655871,
		-0.325727, 0.755245, -0.568777,
		-0.868144, -0.000645, 0.496312,
		8.708394, 7.250461, 14.128670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.042606, 7.348054, 13.927168>,  <9.316095, 7.250912, 13.781252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.042606, 7.348054, 13.927168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.026639, 7.735867, 13.830492>,  <10.017058, 7.968555, 13.772487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.026639, 7.735867, 13.830492>,  <10.042606, 7.348054, 13.927168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026639, 7.735867, 13.830492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842913, -0.097214, -0.529195,
		-0.536567, -0.224848, -0.813350,
		-0.039919, 0.969532, -0.241690,
		10.014664, 8.026727, 13.757985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.811532, 7.603220, 13.203714>,  <10.042606, 7.348054, 13.927168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.811532, 7.603220, 13.203714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.100504, 7.825046, 13.368906>,  <10.273888, 7.958142, 13.468021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.100504, 7.825046, 13.368906>,  <9.811532, 7.603220, 13.203714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100504, 7.825046, 13.368906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561829, -0.122654, -0.818110,
		-0.403042, 0.823051, -0.400180,
		0.722430, 0.554565, 0.412979,
		10.317233, 7.991416, 13.492800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.538163, 8.278719, 13.050731>,  <9.811532, 7.603220, 13.203714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.538163, 8.278719, 13.050731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.495147, 8.589166, 12.802190>,  <9.469337, 8.775434, 12.653066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.495147, 8.589166, 12.802190>,  <9.538163, 8.278719, 13.050731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.495147, 8.589166, 12.802190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288254, 0.573790, 0.766599,
		0.951496, 0.261547, 0.162013,
		-0.107541, 0.776117, -0.621351,
		9.462885, 8.822001, 12.615785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.693092, 8.908861, 13.437200>,  <9.538163, 8.278719, 13.050731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.693092, 8.908861, 13.437200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.474614, 9.018341, 13.120527>,  <9.343527, 9.084029, 12.930524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.474614, 9.018341, 13.120527>,  <9.693092, 8.908861, 13.437200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.474614, 9.018341, 13.120527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533379, 0.615110, 0.580643,
		0.645893, 0.739411, -0.189985,
		-0.546196, 0.273699, -0.791681,
		9.310756, 9.100451, 12.883023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.675138, 9.665806, 13.288422>,  <9.693092, 8.908861, 13.437200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.675138, 9.665806, 13.288422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.335005, 9.477724, 13.193901>,  <9.130924, 9.364875, 13.137189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.335005, 9.477724, 13.193901>,  <9.675138, 9.665806, 13.288422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.335005, 9.477724, 13.193901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516017, 0.656941, 0.549686,
		-0.103230, 0.589352, -0.801254,
		-0.850335, -0.470205, -0.236300,
		9.079905, 9.336662, 13.123011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.200604, 10.246633, 12.912438>,  <9.675138, 9.665806, 13.288422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.200604, 10.246633, 12.912438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.009201, 9.934048, 13.072612>,  <8.894359, 9.746497, 13.168715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.009201, 9.934048, 13.072612>,  <9.200604, 10.246633, 12.912438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.009201, 9.934048, 13.072612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669494, 0.619767, 0.409471,
		-0.568161, -0.072152, -0.819748,
		-0.478509, -0.781462, 0.400432,
		8.865648, 9.699609, 13.192741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.538756, 10.447579, 12.815459>,  <9.200604, 10.246633, 12.912438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.538756, 10.447579, 12.815459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.486653, 10.178125, 13.106457>,  <8.455392, 10.016453, 13.281055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.486653, 10.178125, 13.106457>,  <8.538756, 10.447579, 12.815459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.486653, 10.178125, 13.106457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642598, 0.616135, 0.455463,
		-0.755051, -0.408159, -0.513132,
		-0.130258, -0.673635, 0.727495,
		8.447577, 9.976035, 13.324705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.766818, 10.311105, 12.940045>,  <8.538756, 10.447579, 12.815459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.766818, 10.311105, 12.940045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.934978, 10.196977, 13.284570>,  <8.035874, 10.128500, 13.491284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.934978, 10.196977, 13.284570>,  <7.766818, 10.311105, 12.940045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.934978, 10.196977, 13.284570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702654, 0.498210, 0.508000,
		-0.574057, -0.818767, 0.008966,
		0.420400, -0.285321, 0.861310,
		8.061099, 10.111381, 13.542963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.227644, 10.376108, 13.388844>,  <7.766818, 10.311105, 12.940045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.227644, 10.376108, 13.388844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.540949, 10.334287, 13.633979>,  <7.728932, 10.309194, 13.781059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.540949, 10.334287, 13.633979>,  <7.227644, 10.376108, 13.388844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.540949, 10.334287, 13.633979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467495, 0.550750, 0.691464,
		-0.409815, -0.828096, 0.382503,
		0.783262, -0.104554, 0.612837,
		7.775928, 10.302920, 13.817830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.947508, 10.128837, 13.965665>,  <7.227644, 10.376108, 13.388844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.947508, 10.128837, 13.965665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.295471, 10.277767, 14.095053>,  <7.504249, 10.367126, 14.172686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.295471, 10.277767, 14.095053>,  <6.947508, 10.128837, 13.965665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.295471, 10.277767, 14.095053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493014, 0.637759, 0.591778,
		0.014040, -0.674268, 0.738354,
		0.869908, 0.372327, 0.323469,
		7.556444, 10.389465, 14.192094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.888669, 10.196670, 14.791154>,  <6.947508, 10.128837, 13.965665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.888669, 10.196670, 14.791154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.173567, 10.443349, 14.657056>,  <7.344506, 10.591356, 14.576597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.173567, 10.443349, 14.657056>,  <6.888669, 10.196670, 14.791154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.173567, 10.443349, 14.657056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425201, 0.759065, 0.492974,
		0.558489, -0.208572, 0.802862,
		0.712245, 0.616699, -0.335245,
		7.387240, 10.628359, 14.556482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.083309, 10.640820, 15.350143>,  <6.888669, 10.196670, 14.791154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.083309, 10.640820, 15.350143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.208068, 10.855280, 15.036389>,  <7.282923, 10.983956, 14.848137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.208068, 10.855280, 15.036389>,  <7.083309, 10.640820, 15.350143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.208068, 10.855280, 15.036389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217626, 0.843934, 0.490320,
		0.924856, 0.017773, 0.379902,
		0.311898, 0.536152, -0.784386,
		7.301637, 11.016126, 14.801074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.631471, 11.020210, 15.649963>,  <7.083309, 10.640820, 15.350143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.631471, 11.020210, 15.649963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.548506, 11.197445, 15.301102>,  <7.498727, 11.303785, 15.091784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.548506, 11.197445, 15.301102>,  <7.631471, 11.020210, 15.649963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.548506, 11.197445, 15.301102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013267, 0.892735, 0.450386,
		0.978164, 0.081844, -0.191043,
		-0.207413, 0.443086, -0.872155,
		7.486282, 11.330371, 15.039455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.035249, 11.539895, 15.596032>,  <7.631471, 11.020210, 15.649963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.035249, 11.539895, 15.596032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.752155, 11.639963, 15.331751>,  <7.582299, 11.700004, 15.173182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.752155, 11.639963, 15.331751>,  <8.035249, 11.539895, 15.596032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.752155, 11.639963, 15.331751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119310, 0.879449, 0.460798,
		0.696333, 0.404951, -0.592567,
		-0.707733, 0.250169, -0.660704,
		7.539835, 11.715014, 15.133539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.335912, 12.137831, 15.173168>,  <8.035249, 11.539895, 15.596032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.335912, 12.137831, 15.173168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.937684, 12.110756, 15.147066>,  <7.698747, 12.094511, 15.131405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.937684, 12.110756, 15.147066>,  <8.335912, 12.137831, 15.173168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.937684, 12.110756, 15.147066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087693, 0.918817, 0.384818,
		0.033910, 0.388836, -0.920683,
		-0.995570, -0.067688, -0.065256,
		7.639013, 12.090449, 15.127489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.096784, 12.641169, 14.736950>,  <8.335912, 12.137831, 15.173168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.096784, 12.641169, 14.736950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.739661, 12.549804, 14.892242>,  <7.525388, 12.494985, 14.985418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.739661, 12.549804, 14.892242>,  <8.096784, 12.641169, 14.736950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.739661, 12.549804, 14.892242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189642, 0.972392, 0.135981,
		-0.408573, 0.047780, -0.911474,
		-0.892807, -0.228412, 0.388232,
		7.471819, 12.481280, 15.008712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.619834, 12.987117, 14.271461>,  <8.096784, 12.641169, 14.736950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.619834, 12.987117, 14.271461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.457162, 12.932503, 14.632786>,  <7.359558, 12.899734, 14.849580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.457162, 12.932503, 14.632786>,  <7.619834, 12.987117, 14.271461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.457162, 12.932503, 14.632786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233540, 0.971453, 0.041692,
		-0.883215, -0.194003, -0.426958,
		-0.406682, -0.136535, 0.903310,
		7.335157, 12.891542, 14.903779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.057512, 13.311293, 14.285829>,  <7.619834, 12.987117, 14.271461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.057512, 13.311293, 14.285829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.146358, 13.254815, 14.671726>,  <7.199665, 13.220929, 14.903265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.146358, 13.254815, 14.671726>,  <7.057512, 13.311293, 14.285829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.146358, 13.254815, 14.671726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074034, 0.984161, 0.161079,
		-0.972206, -0.107202, 0.208143,
		0.222114, -0.141193, 0.964743,
		7.212992, 13.212458, 14.961149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.760851, 13.864877, 14.610295>,  <7.057512, 13.311293, 14.285829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.760851, 13.864877, 14.610295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.007118, 13.725510, 14.893013>,  <7.154878, 13.641890, 15.062644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.007118, 13.725510, 14.893013>,  <6.760851, 13.864877, 14.610295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.007118, 13.725510, 14.893013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211001, 0.937079, 0.278141,
		-0.759232, -0.022107, 0.650445,
		0.615667, -0.348418, 0.706795,
		7.191818, 13.620984, 15.105052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.489921, 14.070523, 15.293463>,  <6.760851, 13.864877, 14.610295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.489921, 14.070523, 15.293463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886940, 14.032364, 15.323789>,  <7.125151, 14.009468, 15.341984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886940, 14.032364, 15.323789>,  <6.489921, 14.070523, 15.293463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.886940, 14.032364, 15.323789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049825, 0.885505, 0.461951,
		-0.111205, -0.454731, 0.883659,
		0.992548, -0.095400, 0.075815,
		7.184704, 14.003744, 15.346533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.637846, 14.297425, 16.023214>,  <6.489921, 14.070523, 15.293463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.637846, 14.297425, 16.023214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.991524, 14.302838, 15.836447>,  <7.203731, 14.306087, 15.724386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.991524, 14.302838, 15.836447>,  <6.637846, 14.297425, 16.023214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.991524, 14.302838, 15.836447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105488, 0.967973, 0.227815,
		0.455049, -0.250687, 0.854451,
		0.884196, 0.013533, -0.466920,
		7.256783, 14.306898, 15.696371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.028034, 14.695772, 16.423586>,  <6.637846, 14.297425, 16.023214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.028034, 14.695772, 16.423586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.230385, 14.714933, 16.079077>,  <7.351795, 14.726430, 15.872371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.230385, 14.714933, 16.079077>,  <7.028034, 14.695772, 16.423586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.230385, 14.714933, 16.079077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155639, 0.977001, 0.145756,
		0.848449, -0.207783, 0.486787,
		0.505877, 0.047904, -0.861275,
		7.382148, 14.729304, 15.820694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.595509, 15.089865, 16.584595>,  <7.028034, 14.695772, 16.423586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.595509, 15.089865, 16.584595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.600093, 15.078083, 16.184795>,  <7.602844, 15.071013, 15.944915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.600093, 15.078083, 16.184795>,  <7.595509, 15.089865, 16.584595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.600093, 15.078083, 16.184795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286443, 0.957772, -0.024941,
		0.958029, -0.286014, 0.019414,
		0.011461, -0.029455, -0.999500,
		7.603532, 15.069246, 15.884945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.364264, 15.196412, 16.335966>,  <7.595509, 15.089865, 16.584595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.364264, 15.196412, 16.335966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.101176, 15.316156, 16.059477>,  <7.943324, 15.388003, 15.893583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.101176, 15.316156, 16.059477>,  <8.364264, 15.196412, 16.335966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.101176, 15.316156, 16.059477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388109, 0.921137, 0.029638,
		0.645582, -0.248775, -0.722035,
		-0.657720, 0.299362, -0.691221,
		7.903860, 15.405965, 15.852111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.671170, 15.663793, 15.934743>,  <8.364264, 15.196412, 16.335966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.671170, 15.663793, 15.934743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.286129, 15.744102, 15.861984>,  <8.055104, 15.792287, 15.818329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.286129, 15.744102, 15.861984>,  <8.671170, 15.663793, 15.934743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.286129, 15.744102, 15.861984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202718, 0.979204, 0.008023,
		0.179724, -0.029151, -0.983285,
		-0.962603, 0.200772, -0.181896,
		7.997348, 15.804333, 15.807416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.311596, 15.942330, 16.330837>,  <8.671170, 15.663793, 15.934743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.311596, 15.942330, 16.330837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.443051, 16.011145, 16.702299>,  <9.521925, 16.052433, 16.925177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.443051, 16.011145, 16.702299>,  <9.311596, 15.942330, 16.330837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.443051, 16.011145, 16.702299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033080, -0.980570, 0.193361,
		0.943876, -0.094266, -0.316563,
		0.328640, 0.172037, 0.928655,
		9.541643, 16.062756, 16.980896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.732672, 15.454191, 16.425873>,  <9.311596, 15.942330, 16.330837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.732672, 15.454191, 16.425873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.636431, 15.565224, 16.797907>,  <9.578686, 15.631844, 17.021128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.636431, 15.565224, 16.797907>,  <9.732672, 15.454191, 16.425873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.636431, 15.565224, 16.797907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184609, -0.953830, 0.236912,
		0.952906, -0.114701, 0.280739,
		-0.240603, 0.277582, 0.930085,
		9.564250, 15.648499, 17.076933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.100513, 15.042380, 16.897018>,  <9.732672, 15.454191, 16.425873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.100513, 15.042380, 16.897018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.797662, 15.152646, 17.133921>,  <9.615952, 15.218805, 17.276062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.797662, 15.152646, 17.133921>,  <10.100513, 15.042380, 16.897018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.797662, 15.152646, 17.133921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130282, -0.952111, 0.276607,
		0.640145, 0.132266, 0.756783,
		-0.757127, 0.275663, 0.592257,
		9.570523, 15.235345, 17.311598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.257104, 14.873057, 17.598017>,  <10.100513, 15.042380, 16.897018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.257104, 14.873057, 17.598017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.860211, 14.908188, 17.633263>,  <9.622076, 14.929266, 17.654409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.860211, 14.908188, 17.633263>,  <10.257104, 14.873057, 17.598017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.860211, 14.908188, 17.633263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066682, -0.973376, 0.219301,
		0.105029, 0.211722, 0.971670,
		-0.992231, 0.087826, 0.088115,
		9.562542, 14.934536, 17.659697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.049644, 14.484217, 18.219831>,  <10.257104, 14.873057, 17.598017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.049644, 14.484217, 18.219831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.734240, 14.505299, 17.974730>,  <9.544996, 14.517948, 17.827669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.734240, 14.505299, 17.974730>,  <10.049644, 14.484217, 18.219831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.734240, 14.505299, 17.974730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185236, -0.970409, 0.154899,
		-0.586459, 0.235644, 0.774943,
		-0.788513, 0.052705, -0.612755,
		9.497685, 14.521111, 17.790903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.461111, 14.049394, 18.580692>,  <10.049644, 14.484217, 18.219831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.461111, 14.049394, 18.580692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.363484, 14.087019, 18.194618>,  <9.304908, 14.109594, 17.962975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.363484, 14.087019, 18.194618>,  <9.461111, 14.049394, 18.580692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.363484, 14.087019, 18.194618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183516, -0.981781, -0.049275,
		-0.952236, 0.165101, 0.256883,
		-0.244067, 0.094063, -0.965186,
		9.290264, 14.115238, 17.905062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.784979, 13.616696, 18.588100>,  <9.461111, 14.049394, 18.580692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.784979, 13.616696, 18.588100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.940232, 13.671424, 18.223545>,  <9.033384, 13.704260, 18.004810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.940232, 13.671424, 18.223545>,  <8.784979, 13.616696, 18.588100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.940232, 13.671424, 18.223545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040280, -0.985455, -0.165091,
		-0.920722, 0.100788, -0.376977,
		0.388134, 0.136818, -0.911391,
		9.056672, 13.712469, 17.950129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.892464, 12.960628, 18.335119>,  <8.784979, 13.616696, 18.588100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.892464, 12.960628, 18.335119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.035176, 13.135243, 18.004753>,  <9.120804, 13.240013, 17.806534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.035176, 13.135243, 18.004753>,  <8.892464, 12.960628, 18.335119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.035176, 13.135243, 18.004753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172612, -0.899685, -0.400965,
		-0.918102, 0.000494, -0.396343,
		0.356782, 0.436540, -0.825917,
		9.142211, 13.266206, 17.756977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.482599, 12.594190, 17.616993>,  <8.892464, 12.960628, 18.335119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.482599, 12.594190, 17.616993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.852534, 12.742963, 17.585138>,  <9.074495, 12.832227, 17.566027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.852534, 12.742963, 17.585138>,  <8.482599, 12.594190, 17.616993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.852534, 12.742963, 17.585138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274073, -0.796802, -0.538508,
		-0.263742, 0.476207, -0.838849,
		0.924838, 0.371933, -0.079634,
		9.129986, 12.854543, 17.561249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.605612, 12.365588, 16.979307>,  <8.482599, 12.594190, 17.616993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.605612, 12.365588, 16.979307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.971683, 12.470845, 17.101427>,  <9.191325, 12.533999, 17.174698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.971683, 12.470845, 17.101427>,  <8.605612, 12.365588, 16.979307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.971683, 12.470845, 17.101427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400177, -0.683544, -0.610430,
		0.048054, 0.680825, -0.730868,
		0.915177, 0.263143, 0.305298,
		9.246236, 12.549788, 17.193016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.092166, 12.604846, 16.401020>,  <8.605612, 12.365588, 16.979307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.092166, 12.604846, 16.401020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.333100, 12.488617, 16.698412>,  <9.477661, 12.418880, 16.876846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.333100, 12.488617, 16.698412>,  <9.092166, 12.604846, 16.401020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.333100, 12.488617, 16.698412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346138, -0.744196, -0.571279,
		0.719291, 0.601448, -0.347678,
		0.602335, -0.290572, 0.743478,
		9.513801, 12.401445, 16.921455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.798066, 12.523902, 16.168205>,  <9.092166, 12.604846, 16.401020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.798066, 12.523902, 16.168205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.790521, 12.278831, 16.484249>,  <9.785994, 12.131789, 16.673876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.790521, 12.278831, 16.484249>,  <9.798066, 12.523902, 16.168205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.790521, 12.278831, 16.484249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265582, -0.764930, -0.586812,
		0.963904, 0.198770, 0.177145,
		-0.018863, -0.612677, 0.790108,
		9.784862, 12.095029, 16.721281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.298386, 12.044959, 15.967390>,  <9.798066, 12.523902, 16.168205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.298386, 12.044959, 15.967390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.105318, 11.869163, 16.270409>,  <9.989477, 11.763684, 16.452219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.105318, 11.869163, 16.270409>,  <10.298386, 12.044959, 15.967390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.105318, 11.869163, 16.270409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318542, -0.893829, -0.315597,
		0.815820, 0.088981, 0.571420,
		-0.482669, -0.439492, 0.757547,
		9.960517, 11.737315, 16.497673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.780273, 11.638475, 16.355173>,  <10.298386, 12.044959, 15.967390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.780273, 11.638475, 16.355173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.415605, 11.509975, 16.457666>,  <10.196803, 11.432876, 16.519161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.415605, 11.509975, 16.457666>,  <10.780273, 11.638475, 16.355173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.415605, 11.509975, 16.457666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271864, -0.939116, -0.210121,
		0.308133, -0.121901, 0.943501,
		-0.911671, -0.321249, 0.256232,
		10.142103, 11.413601, 16.534536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873762, 11.126676, 16.795643>,  <10.780273, 11.638475, 16.355173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873762, 11.126676, 16.795643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.508287, 11.069821, 16.643341>,  <10.289002, 11.035708, 16.551960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.508287, 11.069821, 16.643341>,  <10.873762, 11.126676, 16.795643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.508287, 11.069821, 16.643341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261517, -0.922750, -0.283092,
		-0.311105, -0.358232, 0.880275,
		-0.913686, -0.142136, -0.380756,
		10.234181, 11.027181, 16.529114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.573205, 10.534235, 17.078751>,  <10.873762, 11.126676, 16.795643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.573205, 10.534235, 17.078751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.372793, 10.563054, 16.733780>,  <10.252546, 10.580346, 16.526798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.372793, 10.563054, 16.733780>,  <10.573205, 10.534235, 17.078751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.372793, 10.563054, 16.733780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227499, -0.950516, -0.211574,
		-0.834993, -0.302207, 0.459846,
		-0.501030, 0.072048, -0.862426,
		10.222485, 10.584668, 16.475052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.264224, 9.932220, 16.962687>,  <10.573205, 10.534235, 17.078751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.264224, 9.932220, 16.962687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.246007, 10.084886, 16.593414>,  <10.235077, 10.176485, 16.371851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.246007, 10.084886, 16.593414>,  <10.264224, 9.932220, 16.962687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.246007, 10.084886, 16.593414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112178, -0.916339, -0.384368,
		-0.992644, -0.121065, -0.001083,
		-0.045541, 0.381662, -0.923179,
		10.232345, 10.199385, 16.316460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.897883, 9.392083, 16.531080>,  <10.264224, 9.932220, 16.962687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.897883, 9.392083, 16.531080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.032469, 9.643250, 16.250362>,  <10.113220, 9.793949, 16.081932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.032469, 9.643250, 16.250362>,  <9.897883, 9.392083, 16.531080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.032469, 9.643250, 16.250362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131089, -0.769218, -0.625395,
		-0.932527, 0.118426, -0.341128,
		0.336464, 0.627916, -0.701793,
		10.133409, 9.831624, 16.039825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.590582, 9.079689, 15.863362>,  <9.897883, 9.392083, 16.531080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.590582, 9.079689, 15.863362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.892450, 9.318164, 15.753796>,  <10.073571, 9.461249, 15.688055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.892450, 9.318164, 15.753796>,  <9.590582, 9.079689, 15.863362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.892450, 9.318164, 15.753796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269331, -0.662197, -0.699254,
		-0.598274, 0.453932, -0.660313,
		0.754671, 0.596188, -0.273918,
		10.118852, 9.497021, 15.671620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.639471, 9.148138, 15.146532>,  <9.590582, 9.079689, 15.863362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.639471, 9.148138, 15.146532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.015091, 9.254615, 15.233550>,  <10.240463, 9.318501, 15.285761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.015091, 9.254615, 15.233550>,  <9.639471, 9.148138, 15.146532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.015091, 9.254615, 15.233550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339793, -0.622604, -0.704915,
		-0.052198, 0.735871, -0.675107,
		0.939051, 0.266192, 0.217545,
		10.296806, 9.334473, 15.298814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.981253, 9.369127, 14.482176>,  <9.639471, 9.148138, 15.146532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.981253, 9.369127, 14.482176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.288453, 9.284189, 14.723866>,  <10.472774, 9.233227, 14.868879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.288453, 9.284189, 14.723866>,  <9.981253, 9.369127, 14.482176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.288453, 9.284189, 14.723866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424484, -0.537680, -0.728501,
		0.479572, 0.815972, -0.322801,
		0.768000, -0.212345, 0.604223,
		10.518853, 9.220486, 14.905132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<13.366122, 21.394745, 30.585861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.402019, 20.998926, 30.540712>,  <13.423556, 20.761435, 30.513622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.402019, 20.998926, 30.540712>,  <13.366122, 21.394745, 30.585861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.402019, 20.998926, 30.540712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420334, -0.065114, 0.905030,
		-0.902921, -0.128664, 0.410097,
		0.089742, -0.989548, -0.112874,
		13.428941, 20.702063, 30.506849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.997555, 21.032732, 31.053335>,  <13.366122, 21.394745, 30.585861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.997555, 21.032732, 31.053335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.298417, 20.790379, 30.949669>,  <13.478934, 20.644966, 30.887468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.298417, 20.790379, 30.949669>,  <12.997555, 21.032732, 31.053335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.298417, 20.790379, 30.949669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316441, -0.012894, 0.948524,
		-0.578037, -0.795449, 0.182028,
		0.752155, -0.605884, -0.259166,
		13.524064, 20.608614, 30.871920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073710, 20.608618, 31.572369>,  <12.997555, 21.032732, 31.053335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073710, 20.608618, 31.572369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.419450, 20.539841, 31.383333>,  <13.626893, 20.498573, 31.269913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.419450, 20.539841, 31.383333>,  <13.073710, 20.608618, 31.572369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419450, 20.539841, 31.383333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430725, -0.231936, 0.872171,
		-0.259579, -0.957413, -0.126410,
		0.864347, -0.171949, -0.472587,
		13.678754, 20.488258, 31.241558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.321258, 19.931931, 31.913761>,  <13.073710, 20.608618, 31.572369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.321258, 19.931931, 31.913761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.614766, 20.137487, 31.736000>,  <13.790872, 20.260822, 31.629343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.614766, 20.137487, 31.736000>,  <13.321258, 19.931931, 31.913761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.614766, 20.137487, 31.736000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538329, -0.040736, 0.841750,
		0.414466, -0.856887, -0.306534,
		0.733771, 0.513892, -0.444403,
		13.834897, 20.291655, 31.602678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846987, 19.511614, 31.980192>,  <13.321258, 19.931931, 31.913761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846987, 19.511614, 31.980192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.003499, 19.875456, 31.924309>,  <14.097406, 20.093761, 31.890778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.003499, 19.875456, 31.924309>,  <13.846987, 19.511614, 31.980192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.003499, 19.875456, 31.924309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505625, -0.085642, 0.858492,
		0.768923, -0.406552, -0.493429,
		0.391280, 0.909605, -0.139711,
		14.120883, 20.148336, 31.882395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631195, 19.402756, 32.102718>,  <13.846987, 19.511614, 31.980192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631195, 19.402756, 32.102718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.576988, 19.799023, 32.108494>,  <14.544464, 20.036783, 32.111958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.576988, 19.799023, 32.108494>,  <14.631195, 19.402756, 32.102718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.576988, 19.799023, 32.108494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510427, 0.057318, 0.858009,
		0.849176, 0.123646, -0.513432,
		-0.135518, 0.990670, 0.014439,
		14.536333, 20.096224, 32.112827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.289059, 19.732359, 32.007530>,  <14.631195, 19.402756, 32.102718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.289059, 19.732359, 32.007530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.033240, 19.958254, 32.216164>,  <14.879749, 20.093790, 32.341343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.033240, 19.958254, 32.216164>,  <15.289059, 19.732359, 32.007530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.033240, 19.958254, 32.216164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541788, -0.150236, 0.826979,
		0.545386, 0.811481, -0.209884,
		-0.639546, 0.564736, 0.521588,
		14.841376, 20.127674, 32.372639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620147, 20.173384, 32.356686>,  <15.289059, 19.732359, 32.007530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620147, 20.173384, 32.356686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.284288, 20.200209, 32.572277>,  <15.082773, 20.216303, 32.701633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.284288, 20.200209, 32.572277>,  <15.620147, 20.173384, 32.356686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.284288, 20.200209, 32.572277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542839, 0.070860, 0.836842,
		0.017928, 0.995229, -0.095901,
		-0.839645, 0.067062, 0.538979,
		15.032394, 20.220327, 32.733971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680983, 20.699127, 32.826435>,  <15.620147, 20.173384, 32.356686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680983, 20.699127, 32.826435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.384184, 20.494354, 32.999580>,  <15.206105, 20.371490, 33.103466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.384184, 20.494354, 32.999580>,  <15.680983, 20.699127, 32.826435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.384184, 20.494354, 32.999580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424507, 0.140959, 0.894385,
		-0.518880, 0.847382, 0.112727,
		-0.741996, -0.511932, 0.432860,
		15.161585, 20.340775, 33.129440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592657, 20.998425, 33.598030>,  <15.680983, 20.699127, 32.826435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592657, 20.998425, 33.598030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.414715, 20.640282, 33.606426>,  <15.307949, 20.425396, 33.611462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.414715, 20.640282, 33.606426>,  <15.592657, 20.998425, 33.598030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.414715, 20.640282, 33.606426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409013, -0.182258, 0.894142,
		-0.796750, 0.406350, 0.447291,
		-0.444857, -0.895356, 0.020988,
		15.281258, 20.371675, 33.612724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696671, 20.811869, 34.232742>,  <15.592657, 20.998425, 33.598030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696671, 20.811869, 34.232742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.577957, 20.457417, 34.090366>,  <15.506729, 20.244745, 34.004940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.577957, 20.457417, 34.090366>,  <15.696671, 20.811869, 34.232742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577957, 20.457417, 34.090366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320569, -0.443550, 0.836958,
		-0.899531, 0.134293, 0.415704,
		-0.296783, -0.886131, -0.355937,
		15.488922, 20.191578, 33.983585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.312166, 20.482851, 34.807232>,  <15.696671, 20.811869, 34.232742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.312166, 20.482851, 34.807232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.425762, 20.165798, 34.591423>,  <15.493919, 19.975567, 34.461937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.425762, 20.165798, 34.591423>,  <15.312166, 20.482851, 34.807232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425762, 20.165798, 34.591423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379201, -0.423971, 0.822469,
		-0.880657, -0.438161, 0.180163,
		0.283990, -0.792631, -0.539524,
		15.510960, 19.928009, 34.429565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.890782, 19.807283, 34.924961>,  <15.312166, 20.482851, 34.807232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.890782, 19.807283, 34.924961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.278494, 19.773952, 34.832390>,  <15.511121, 19.753954, 34.776848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.278494, 19.773952, 34.832390>,  <14.890782, 19.807283, 34.924961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.278494, 19.773952, 34.832390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190792, -0.339109, 0.921197,
		-0.155236, -0.937050, -0.312793,
		0.969278, -0.083325, -0.231423,
		15.569278, 19.748955, 34.762962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138362, 19.060442, 34.928181>,  <14.890782, 19.807283, 34.924961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138362, 19.060442, 34.928181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.371157, 19.367983, 35.034126>,  <15.510834, 19.552507, 35.097694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.371157, 19.367983, 35.034126>,  <15.138362, 19.060442, 34.928181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371157, 19.367983, 35.034126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065593, -0.280266, 0.957679,
		0.810549, -0.574729, -0.112679,
		0.581986, 0.768855, 0.264867,
		15.545753, 19.598639, 35.113586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506259, 18.772991, 34.315216>,  <15.138362, 19.060442, 34.928181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.506259, 18.772991, 34.315216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.556354, 18.529043, 34.628235>,  <15.586411, 18.382675, 34.816044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.556354, 18.529043, 34.628235>,  <15.506259, 18.772991, 34.315216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.556354, 18.529043, 34.628235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510136, -0.716083, -0.476431,
		0.850927, -0.339539, -0.400795,
		0.125236, -0.609868, 0.782545,
		15.593925, 18.346083, 34.862999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767045, 18.205839, 34.145145>,  <15.506259, 18.772991, 34.315216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.767045, 18.205839, 34.145145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.573084, 18.107031, 34.480728>,  <15.456707, 18.047745, 34.682079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.573084, 18.107031, 34.480728>,  <15.767045, 18.205839, 34.145145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573084, 18.107031, 34.480728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521181, -0.688719, -0.504020,
		0.702310, -0.681649, 0.205219,
		-0.484903, -0.247022, 0.838957,
		15.427613, 18.032925, 34.732414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891720, 17.520763, 34.214226>,  <15.767045, 18.205839, 34.145145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891720, 17.520763, 34.214226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.553673, 17.627775, 34.399357>,  <15.350844, 17.691982, 34.510433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.553673, 17.627775, 34.399357>,  <15.891720, 17.520763, 34.214226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.553673, 17.627775, 34.399357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495300, -0.717599, -0.489622,
		0.201136, -0.643024, 0.738961,
		-0.845117, 0.267527, 0.462825,
		15.300138, 17.708033, 34.538204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598962, 16.882914, 34.249100>,  <15.891720, 17.520763, 34.214226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598962, 16.882914, 34.249100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.297321, 17.128117, 34.343380>,  <15.116337, 17.275238, 34.399948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.297321, 17.128117, 34.343380>,  <15.598962, 16.882914, 34.249100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.297321, 17.128117, 34.343380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621437, -0.549902, -0.558053,
		-0.212477, -0.567303, 0.795626,
		-0.754102, 0.613005, 0.235702,
		15.071091, 17.312017, 34.414089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030914, 16.459185, 34.084614>,  <15.598962, 16.882914, 34.249100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030914, 16.459185, 34.084614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.851174, 16.808203, 34.161293>,  <14.743330, 17.017614, 34.207298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.851174, 16.808203, 34.161293>,  <15.030914, 16.459185, 34.084614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.851174, 16.808203, 34.161293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721031, -0.227536, -0.654479,
		-0.527446, -0.432307, 0.731376,
		-0.449350, 0.872547, 0.191694,
		14.716370, 17.069967, 34.218800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.276786, 16.393776, 34.209476>,  <15.030914, 16.459185, 34.084614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.276786, 16.393776, 34.209476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.332130, 16.762951, 34.065784>,  <14.365337, 16.984455, 33.979568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.332130, 16.762951, 34.065784>,  <14.276786, 16.393776, 34.209476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.332130, 16.762951, 34.065784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612503, -0.205291, -0.763345,
		-0.778265, 0.325646, 0.536897,
		0.138361, 0.922936, -0.359230,
		14.373638, 17.039831, 33.958015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.566566, 16.519041, 33.793179>,  <14.276786, 16.393776, 34.209476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.566566, 16.519041, 33.793179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.847063, 16.778969, 33.675884>,  <14.015362, 16.934925, 33.605507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.847063, 16.778969, 33.675884>,  <13.566566, 16.519041, 33.793179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847063, 16.778969, 33.675884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325063, -0.074639, -0.942742,
		-0.634500, 0.756414, 0.158892,
		0.701244, 0.649820, -0.293240,
		14.057436, 16.973915, 33.587914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221758, 16.879642, 33.343323>,  <13.566566, 16.519041, 33.793179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221758, 16.879642, 33.343323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.602953, 16.958742, 33.251488>,  <13.831670, 17.006201, 33.196388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.602953, 16.958742, 33.251488>,  <13.221758, 16.879642, 33.343323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602953, 16.958742, 33.251488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238353, 0.021418, -0.970942,
		-0.187085, 0.980019, 0.067545,
		0.952988, 0.197748, -0.229584,
		13.888849, 17.018066, 33.182613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250139, 17.564281, 33.080521>,  <13.221758, 16.879642, 33.343323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.250139, 17.564281, 33.080521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.565823, 17.363728, 32.938667>,  <13.755233, 17.243395, 32.853558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.565823, 17.363728, 32.938667>,  <13.250139, 17.564281, 33.080521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.565823, 17.363728, 32.938667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275615, 0.226864, -0.934114,
		0.548804, 0.834952, 0.040854,
		0.789209, -0.501386, -0.354629,
		13.802586, 17.213312, 32.832279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.410509, 17.964104, 32.534657>,  <13.250139, 17.564281, 33.080521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.410509, 17.964104, 32.534657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.646596, 17.648645, 32.465748>,  <13.788248, 17.459370, 32.424400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.646596, 17.648645, 32.465748>,  <13.410509, 17.964104, 32.534657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.646596, 17.648645, 32.465748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282892, -0.002195, -0.959149,
		0.756052, 0.614842, -0.224397,
		0.590218, -0.788647, -0.172274,
		13.823662, 17.412052, 32.414066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659784, 18.146914, 31.864225>,  <13.410509, 17.964104, 32.534657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659784, 18.146914, 31.864225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.740948, 17.759739, 31.923454>,  <13.789646, 17.527433, 31.958992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.740948, 17.759739, 31.923454>,  <13.659784, 18.146914, 31.864225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.740948, 17.759739, 31.923454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023935, -0.146271, -0.988955,
		0.978905, 0.204211, -0.006512,
		0.202908, -0.967937, 0.148073,
		13.801820, 17.469358, 31.967876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226950, 17.951805, 31.359274>,  <13.659784, 18.146914, 31.864225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.226950, 17.951805, 31.359274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.046107, 17.610666, 31.463776>,  <13.937602, 17.405983, 31.526478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.046107, 17.610666, 31.463776>,  <14.226950, 17.951805, 31.359274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046107, 17.610666, 31.463776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161563, -0.209756, -0.964313,
		0.877210, -0.478182, -0.042956,
		-0.452107, -0.852845, 0.261257,
		13.910475, 17.354813, 31.542152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518283, 17.430698, 31.002691>,  <14.226950, 17.951805, 31.359274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518283, 17.430698, 31.002691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.155677, 17.292809, 31.100176>,  <13.938113, 17.210073, 31.158667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.155677, 17.292809, 31.100176>,  <14.518283, 17.430698, 31.002691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.155677, 17.292809, 31.100176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192592, -0.176035, -0.965360,
		0.375687, -0.922050, 0.093187,
		-0.906514, -0.344726, 0.243713,
		13.883722, 17.189390, 31.173290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453493, 16.771112, 30.666203>,  <14.518283, 17.430698, 31.002691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453493, 16.771112, 30.666203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.084422, 16.920673, 30.703859>,  <13.862980, 17.010410, 30.726454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.084422, 16.920673, 30.703859>,  <14.453493, 16.771112, 30.666203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.084422, 16.920673, 30.703859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155148, -0.136507, -0.978414,
		-0.352983, -0.917366, 0.183963,
		-0.922677, 0.373905, 0.094143,
		13.807619, 17.032845, 30.732101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.322366, 16.027884, 30.942148>,  <14.453493, 16.771112, 30.666203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.322366, 16.027884, 30.942148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.555572, 15.710479, 30.872370>,  <14.695495, 15.520036, 30.830503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.555572, 15.710479, 30.872370>,  <14.322366, 16.027884, 30.942148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555572, 15.710479, 30.872370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265715, -0.016677, 0.963907,
		-0.767783, -0.608323, 0.201126,
		0.583013, -0.793514, -0.174445,
		14.730475, 15.472425, 30.820036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.262612, 15.681655, 31.548254>,  <14.322366, 16.027884, 30.942148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.262612, 15.681655, 31.548254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.602254, 15.540224, 31.391279>,  <14.806039, 15.455365, 31.297094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.602254, 15.540224, 31.391279>,  <14.262612, 15.681655, 31.548254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.602254, 15.540224, 31.391279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329568, -0.225983, 0.916688,
		-0.412804, -0.907697, -0.075355,
		0.849104, -0.353578, -0.392435,
		14.856985, 15.434151, 31.273548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412834, 15.147097, 31.932455>,  <14.262612, 15.681655, 31.548254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.412834, 15.147097, 31.932455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.759682, 15.229956, 31.751261>,  <14.967791, 15.279671, 31.642544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.759682, 15.229956, 31.751261>,  <14.412834, 15.147097, 31.932455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.759682, 15.229956, 31.751261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490752, -0.199637, 0.848120,
		0.085253, -0.957724, -0.274766,
		0.867119, 0.207147, -0.452985,
		15.019817, 15.292100, 31.615366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.963112, 14.596017, 32.036469>,  <14.412834, 15.147097, 31.932455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.963112, 14.596017, 32.036469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.167319, 14.928303, 31.947666>,  <15.289844, 15.127674, 31.894386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.167319, 14.928303, 31.947666>,  <14.963112, 14.596017, 32.036469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167319, 14.928303, 31.947666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743198, -0.296439, 0.599817,
		0.432467, -0.471209, -0.768723,
		0.510518, 0.830714, -0.222002,
		15.320475, 15.177517, 31.881065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.608331, 14.368617, 31.939390>,  <14.963112, 14.596017, 32.036469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.608331, 14.368617, 31.939390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.647272, 14.758924, 32.017773>,  <15.670637, 14.993109, 32.064800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.647272, 14.758924, 32.017773>,  <15.608331, 14.368617, 31.939390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.647272, 14.758924, 32.017773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735432, -0.203189, 0.646416,
		0.670569, 0.081181, -0.737392,
		0.097354, 0.975768, 0.195955,
		15.676478, 15.051655, 32.076561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286488, 14.448087, 32.050980>,  <15.608331, 14.368617, 31.939390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286488, 14.448087, 32.050980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.172714, 14.795143, 32.214100>,  <16.104450, 15.003377, 32.311970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.172714, 14.795143, 32.214100>,  <16.286488, 14.448087, 32.050980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.172714, 14.795143, 32.214100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695030, -0.106360, 0.711070,
		0.660326, 0.485683, -0.572784,
		-0.284433, 0.867640, 0.407796,
		16.087385, 15.055435, 32.336437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929941, 14.699334, 32.352238>,  <16.286488, 14.448087, 32.050980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929941, 14.699334, 32.352238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.631746, 14.902628, 32.524723>,  <16.452829, 15.024604, 32.628216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.631746, 14.902628, 32.524723>,  <16.929941, 14.699334, 32.352238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.631746, 14.902628, 32.524723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513601, 0.025690, 0.857645,
		0.424806, 0.860836, -0.280181,
		-0.745489, 0.508234, 0.431212,
		16.408100, 15.055099, 32.654087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.614922, 14.853523, 32.061077>,  <16.929941, 14.699334, 32.352238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.614922, 14.853523, 32.061077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.901114, 14.581182, 31.998432>,  <18.072828, 14.417776, 31.960846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.901114, 14.581182, 31.998432>,  <17.614922, 14.853523, 32.061077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901114, 14.581182, 31.998432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125148, 0.095637, -0.987518,
		0.687333, 0.726148, -0.016781,
		0.715479, -0.680854, -0.156610,
		18.115757, 14.376925, 31.951448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.760059, 14.991232, 31.406626>,  <17.614922, 14.853523, 32.061077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.760059, 14.991232, 31.406626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.960335, 14.648117, 31.453121>,  <18.080500, 14.442248, 31.481018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.960335, 14.648117, 31.453121>,  <17.760059, 14.991232, 31.406626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.960335, 14.648117, 31.453121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011679, -0.140967, -0.989945,
		0.865548, 0.494298, -0.080599,
		0.500689, -0.857787, 0.116241,
		18.110542, 14.390781, 31.487993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463371, 14.992579, 31.178562>,  <17.760059, 14.991232, 31.406626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463371, 14.992579, 31.178562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.350096, 14.613527, 31.119501>,  <18.282131, 14.386096, 31.084064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.350096, 14.613527, 31.119501>,  <18.463371, 14.992579, 31.178562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350096, 14.613527, 31.119501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034696, 0.163978, -0.985854,
		0.958437, -0.274058, -0.079315,
		-0.283187, -0.947631, -0.147654,
		18.265141, 14.329238, 31.075205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761387, 14.777507, 30.610060>,  <18.463371, 14.992579, 31.178562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761387, 14.777507, 30.610060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.479864, 14.493656, 30.623243>,  <18.310951, 14.323346, 30.631153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.479864, 14.493656, 30.623243>,  <18.761387, 14.777507, 30.610060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.479864, 14.493656, 30.623243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009393, -0.037098, -0.999267,
		0.710330, -0.703600, 0.019444,
		-0.703806, -0.709627, 0.032961,
		18.268723, 14.280768, 30.633131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.925304, 14.423616, 30.055265>,  <18.761387, 14.777507, 30.610060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.925304, 14.423616, 30.055265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.566214, 14.265466, 30.132996>,  <18.350760, 14.170575, 30.179634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.566214, 14.265466, 30.132996>,  <18.925304, 14.423616, 30.055265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566214, 14.265466, 30.132996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123146, -0.198305, -0.972373,
		0.422988, -0.896857, 0.129334,
		-0.897728, -0.395376, 0.194325,
		18.296896, 14.146853, 30.191294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890564, 13.803321, 29.692924>,  <18.925304, 14.423616, 30.055265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890564, 13.803321, 29.692924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.500097, 13.865871, 29.753113>,  <18.265818, 13.903401, 29.789227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.500097, 13.865871, 29.753113>,  <18.890564, 13.803321, 29.692924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500097, 13.865871, 29.753113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189570, -0.276962, -0.941995,
		-0.105630, -0.948071, 0.300005,
		-0.976169, 0.156375, 0.150471,
		18.207247, 13.912784, 29.798254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443043, 13.253790, 29.580580>,  <18.890564, 13.803321, 29.692924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443043, 13.253790, 29.580580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.207634, 13.567114, 29.500511>,  <18.066389, 13.755108, 29.452469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.207634, 13.567114, 29.500511>,  <18.443043, 13.253790, 29.580580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.207634, 13.567114, 29.500511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217717, -0.391994, -0.893834,
		-0.778616, -0.482459, 0.401236,
		-0.588521, 0.783310, -0.200173,
		18.031078, 13.802107, 29.440460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.005945, 17.395163, 30.794794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.353199, 17.566761, 30.894638>,  <16.561552, 17.669720, 30.954544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.353199, 17.566761, 30.894638>,  <16.005945, 17.395163, 30.794794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353199, 17.566761, 30.894638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213272, 0.776543, -0.592870,
		-0.448172, 0.461456, 0.765637,
		0.868134, 0.428997, 0.249610,
		16.613640, 17.695459, 30.969521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704026, 18.032583, 30.790453>,  <16.005945, 17.395163, 30.794794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704026, 18.032583, 30.790453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.103252, 18.017271, 30.770863>,  <16.342789, 18.008083, 30.759109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.103252, 18.017271, 30.770863>,  <15.704026, 18.032583, 30.790453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103252, 18.017271, 30.770863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003929, 0.825139, -0.564916,
		0.062037, 0.563631, 0.823694,
		0.998066, -0.038282, -0.048975,
		16.402672, 18.005787, 30.756170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968583, 18.678759, 30.943243>,  <15.704026, 18.032583, 30.790453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968583, 18.678759, 30.943243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.196033, 18.477425, 30.682991>,  <16.332504, 18.356625, 30.526840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.196033, 18.477425, 30.682991>,  <15.968583, 18.678759, 30.943243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196033, 18.477425, 30.682991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046541, 0.769992, -0.636353,
		0.821278, 0.392128, 0.414413,
		0.568627, -0.503336, -0.650628,
		16.366621, 18.326424, 30.487803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074938, 19.353010, 31.005297>,  <15.968583, 18.678759, 30.943243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.074938, 19.353010, 31.005297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.407078, 19.569818, 31.057045>,  <16.606361, 19.699903, 31.088095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.407078, 19.569818, 31.057045>,  <16.074938, 19.353010, 31.005297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407078, 19.569818, 31.057045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523830, 0.838416, -0.150538,
		-0.190062, 0.057230, 0.980103,
		0.830349, 0.542019, 0.129372,
		16.656183, 19.732424, 31.095856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972404, 19.738913, 31.594093>,  <16.074938, 19.353010, 31.005297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.972404, 19.738913, 31.594093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.175358, 19.896269, 31.287420>,  <16.297131, 19.990683, 31.103416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.175358, 19.896269, 31.287420>,  <15.972404, 19.738913, 31.594093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175358, 19.896269, 31.287420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649790, 0.759031, -0.040562,
		0.565979, 0.518763, 0.640744,
		0.507387, 0.393392, -0.766682,
		16.327574, 20.014286, 31.057415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.949314, 20.414114, 31.729639>,  <15.972404, 19.738913, 31.594093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.949314, 20.414114, 31.729639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.070986, 20.395477, 31.349049>,  <16.143990, 20.384296, 31.120695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.070986, 20.395477, 31.349049>,  <15.949314, 20.414114, 31.729639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070986, 20.395477, 31.349049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382364, 0.908842, -0.166743,
		0.872509, 0.414530, 0.258637,
		0.304180, -0.046591, -0.951475,
		16.162239, 20.381500, 31.063606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065296, 21.024111, 31.452202>,  <15.949314, 20.414114, 31.729639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065296, 21.024111, 31.452202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.061300, 20.848192, 31.092985>,  <16.058903, 20.742641, 30.877455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.061300, 20.848192, 31.092985>,  <16.065296, 21.024111, 31.452202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061300, 20.848192, 31.092985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420743, 0.816566, -0.395215,
		0.907125, 0.373896, -0.193201,
		-0.009992, -0.439797, -0.898042,
		16.058302, 20.716253, 30.823572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753107, 21.437016, 31.232456>,  <16.065296, 21.024111, 31.452202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753107, 21.437016, 31.232456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.034081, 21.162554, 31.156794>,  <17.202665, 20.997877, 31.111397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.034081, 21.162554, 31.156794>,  <16.753107, 21.437016, 31.232456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034081, 21.162554, 31.156794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314763, -0.061111, -0.947201,
		0.638365, 0.724886, -0.258902,
		0.702435, -0.686153, -0.189156,
		17.244810, 20.956709, 31.100046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006964, 21.612104, 30.539349>,  <16.753107, 21.437016, 31.232456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006964, 21.612104, 30.539349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.120646, 21.236431, 30.616459>,  <17.188854, 21.011026, 30.662725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.120646, 21.236431, 30.616459>,  <17.006964, 21.612104, 30.539349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120646, 21.236431, 30.616459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007958, -0.203371, -0.979070,
		0.958731, 0.276720, -0.065272,
		0.284203, -0.939184, 0.192776,
		17.205906, 20.954676, 30.674292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612659, 21.545321, 30.161453>,  <17.006964, 21.612104, 30.539349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612659, 21.545321, 30.161453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.426552, 21.195395, 30.215446>,  <17.314888, 20.985439, 30.247843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.426552, 21.195395, 30.215446>,  <17.612659, 21.545321, 30.161453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426552, 21.195395, 30.215446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118205, -0.089722, -0.988927,
		0.877241, -0.476073, -0.061663,
		-0.465269, -0.874817, 0.134983,
		17.286972, 20.932949, 30.255941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685860, 21.202246, 29.474176>,  <17.612659, 21.545321, 30.161453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.685860, 21.202246, 29.474176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.410219, 20.974655, 29.653690>,  <17.244835, 20.838100, 29.761398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.410219, 20.974655, 29.653690>,  <17.685860, 21.202246, 29.474176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410219, 20.974655, 29.653690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442139, -0.160562, -0.882459,
		0.574155, -0.806527, -0.140923,
		-0.689101, -0.568976, 0.448784,
		17.203489, 20.803963, 29.788326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.630320, 20.539354, 29.065561>,  <17.685860, 21.202246, 29.474176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.630320, 20.539354, 29.065561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.279026, 20.610651, 29.243071>,  <17.068251, 20.653429, 29.349577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.279026, 20.610651, 29.243071>,  <17.630320, 20.539354, 29.065561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.279026, 20.610651, 29.243071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472156, -0.175723, -0.863823,
		-0.075985, -0.968170, 0.238482,
		-0.878234, 0.178238, 0.443774,
		17.015556, 20.664124, 29.376202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695621, 19.846466, 29.439846>,  <17.630320, 20.539354, 29.065561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695621, 19.846466, 29.439846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.947866, 19.587559, 29.268559>,  <18.099213, 19.432215, 29.165785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.947866, 19.587559, 29.268559>,  <17.695621, 19.846466, 29.439846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.947866, 19.587559, 29.268559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146947, -0.442199, 0.884798,
		-0.762060, -0.620890, -0.183742,
		0.630612, -0.647268, -0.428220,
		18.137051, 19.393379, 29.140093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544050, 19.253300, 29.808170>,  <17.695621, 19.846466, 29.439846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544050, 19.253300, 29.808170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.899065, 19.179312, 29.639378>,  <18.112074, 19.134918, 29.538103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.899065, 19.179312, 29.639378>,  <17.544050, 19.253300, 29.808170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899065, 19.179312, 29.639378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328944, -0.386907, 0.861452,
		-0.322605, -0.903377, -0.282551,
		0.887537, -0.184966, -0.421979,
		18.165325, 19.123821, 29.512783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750587, 18.470928, 30.029844>,  <17.544050, 19.253300, 29.808170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750587, 18.470928, 30.029844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.082293, 18.669098, 29.926405>,  <18.281317, 18.788000, 29.864342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.082293, 18.669098, 29.926405>,  <17.750587, 18.470928, 30.029844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082293, 18.669098, 29.926405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484455, -0.406585, 0.774591,
		0.278610, -0.767621, -0.577179,
		0.829264, 0.495426, -0.258599,
		18.331072, 18.817726, 29.848825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319664, 17.905302, 29.880413>,  <17.750587, 18.470928, 30.029844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319664, 17.905302, 29.880413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.484562, 18.259861, 29.964655>,  <18.583500, 18.472597, 30.015200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.484562, 18.259861, 29.964655>,  <18.319664, 17.905302, 29.880413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484562, 18.259861, 29.964655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659057, -0.449739, 0.602809,
		0.629046, -0.109702, -0.769589,
		0.412243, 0.886397, 0.210606,
		18.608234, 18.525780, 30.027836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.102537, 17.769287, 29.728493>,  <18.319664, 17.905302, 29.880413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.102537, 17.769287, 29.728493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.072254, 18.100052, 29.951376>,  <19.054085, 18.298512, 30.085106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.072254, 18.100052, 29.951376>,  <19.102537, 17.769287, 29.728493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072254, 18.100052, 29.951376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614561, -0.401362, 0.679134,
		0.785228, 0.393855, -0.477802,
		-0.075708, 0.826914, 0.557209,
		19.049541, 18.348125, 30.118538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772860, 17.880795, 29.940952>,  <19.102537, 17.769287, 29.728493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772860, 17.880795, 29.940952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.521414, 18.039366, 30.208591>,  <19.370546, 18.134508, 30.369175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.521414, 18.039366, 30.208591>,  <19.772860, 17.880795, 29.940952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.521414, 18.039366, 30.208591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631457, -0.242057, 0.736662,
		0.453992, 0.885582, -0.098166,
		-0.628613, 0.396426, 0.669098,
		19.332830, 18.158293, 30.409321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.191872, 18.064146, 30.485674>,  <19.772860, 17.880795, 29.940952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.191872, 18.064146, 30.485674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.831385, 18.096628, 30.655951>,  <19.615093, 18.116117, 30.758116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.831385, 18.096628, 30.655951>,  <20.191872, 18.064146, 30.485674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.831385, 18.096628, 30.655951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388705, -0.282848, 0.876873,
		0.191611, 0.955721, 0.223343,
		-0.901218, 0.081204, 0.425690,
		19.561020, 18.120989, 30.783657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.231850, 18.550955, 31.021868>,  <20.191872, 18.064146, 30.485674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.231850, 18.550955, 31.021868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.926001, 18.304842, 31.098581>,  <19.742491, 18.157175, 31.144609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.926001, 18.304842, 31.098581>,  <20.231850, 18.550955, 31.021868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926001, 18.304842, 31.098581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398605, -0.217650, 0.890922,
		-0.506427, 0.757665, 0.411674,
		-0.764622, -0.615282, 0.191785,
		19.696613, 18.120256, 31.156116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.062408, 18.736298, 31.671911>,  <20.231850, 18.550955, 31.021868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.062408, 18.736298, 31.671911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.913528, 18.368605, 31.620567>,  <19.824200, 18.147989, 31.589762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.913528, 18.368605, 31.620567>,  <20.062408, 18.736298, 31.671911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.913528, 18.368605, 31.620567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402920, -0.284608, 0.869859,
		-0.836136, 0.272042, 0.476309,
		-0.372199, -0.919234, -0.128359,
		19.801868, 18.092834, 31.582060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632978, 18.526775, 32.252640>,  <20.062408, 18.736298, 31.671911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632978, 18.526775, 32.252640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.733149, 18.171619, 32.098270>,  <19.793251, 17.958527, 32.005650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.733149, 18.171619, 32.098270>,  <19.632978, 18.526775, 32.252640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733149, 18.171619, 32.098270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329510, -0.296660, 0.896335,
		-0.910336, -0.351629, 0.218278,
		0.250423, -0.887891, -0.385925,
		19.808275, 17.905252, 31.982492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472105, 18.097473, 32.763866>,  <19.632978, 18.526775, 32.252640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472105, 18.097473, 32.763866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.709635, 17.851345, 32.556499>,  <19.852152, 17.703669, 32.432079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.709635, 17.851345, 32.556499>,  <19.472105, 18.097473, 32.763866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.709635, 17.851345, 32.556499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378109, -0.355328, 0.854854,
		-0.710216, -0.703650, 0.021655,
		0.593824, -0.615319, -0.518416,
		19.887781, 17.666750, 32.400974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274158, 17.441845, 33.015759>,  <19.472105, 18.097473, 32.763866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274158, 17.441845, 33.015759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.646708, 17.417404, 32.872196>,  <19.870237, 17.402739, 32.786057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.646708, 17.417404, 32.872196>,  <19.274158, 17.441845, 33.015759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.646708, 17.417404, 32.872196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267965, -0.552304, 0.789402,
		-0.246460, -0.831400, -0.498027,
		0.931371, -0.061103, -0.358907,
		19.926119, 17.399073, 32.764523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.416437, 16.768234, 33.235420>,  <19.274158, 17.441845, 33.015759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.416437, 16.768234, 33.235420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.754637, 16.950155, 33.123497>,  <19.957556, 17.059307, 33.056343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.754637, 16.950155, 33.123497>,  <19.416437, 16.768234, 33.235420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754637, 16.950155, 33.123497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493726, -0.466248, 0.734062,
		0.203394, -0.758794, -0.618758,
		0.845497, 0.454801, -0.279804,
		20.008286, 17.086596, 33.039555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007580, 16.172255, 33.266674>,  <19.416437, 16.768234, 33.235420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007580, 16.172255, 33.266674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.140215, 16.547430, 33.307304>,  <20.219797, 16.772535, 33.331680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.140215, 16.547430, 33.307304>,  <20.007580, 16.172255, 33.266674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140215, 16.547430, 33.307304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468580, -0.257182, 0.845157,
		0.818829, -0.232650, -0.524779,
		0.331589, 0.937940, 0.101573,
		20.239693, 16.828812, 33.337776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.039518, 15.719351, 33.985996>,  <20.007580, 16.172255, 33.266674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.039518, 15.719351, 33.985996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.780170, 15.452388, 34.132523>,  <19.624561, 15.292210, 34.220440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.780170, 15.452388, 34.132523>,  <20.039518, 15.719351, 33.985996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780170, 15.452388, 34.132523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400018, -0.110745, -0.909792,
		0.647770, -0.736412, -0.195172,
		-0.648367, -0.667408, 0.366315,
		19.585661, 15.252166, 34.242416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130850, 15.112142, 33.603783>,  <20.039518, 15.719351, 33.985996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130850, 15.112142, 33.603783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.761436, 15.066185, 33.750141>,  <19.539787, 15.038610, 33.837955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.761436, 15.066185, 33.750141>,  <20.130850, 15.112142, 33.603783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761436, 15.066185, 33.750141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323164, -0.280612, -0.903782,
		0.206514, -0.952920, 0.222025,
		-0.923535, -0.114893, 0.365900,
		19.484377, 15.031717, 33.859913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890957, 14.363046, 33.609379>,  <20.130850, 15.112142, 33.603783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890957, 14.363046, 33.609379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.545742, 14.562537, 33.641479>,  <19.338614, 14.682232, 33.660740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.545742, 14.562537, 33.641479>,  <19.890957, 14.363046, 33.609379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.545742, 14.562537, 33.641479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258808, -0.300132, -0.918117,
		-0.433808, -0.813136, 0.388100,
		-0.863035, 0.498730, 0.080247,
		19.286831, 14.712156, 33.665554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319067, 13.792346, 33.470623>,  <19.890957, 14.363046, 33.609379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.319067, 13.792346, 33.470623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.151373, 14.152435, 33.423565>,  <19.050756, 14.368488, 33.395332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.151373, 14.152435, 33.423565>,  <19.319067, 13.792346, 33.470623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151373, 14.152435, 33.423565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285349, -0.253670, -0.924244,
		-0.861868, -0.353909, 0.363225,
		-0.419237, 0.900222, -0.117642,
		19.025602, 14.422502, 33.388271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592863, 13.678570, 33.404186>,  <19.319067, 13.792346, 33.470623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.592863, 13.678570, 33.404186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.687599, 14.025141, 33.228363>,  <18.744440, 14.233083, 33.122868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.687599, 14.025141, 33.228363>,  <18.592863, 13.678570, 33.404186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687599, 14.025141, 33.228363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410982, -0.320612, -0.853405,
		-0.880341, 0.382771, 0.280153,
		0.236838, 0.866426, -0.439560,
		18.758650, 14.285069, 33.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.960428, 14.055733, 33.176208>,  <18.592863, 13.678570, 33.404186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.960428, 14.055733, 33.176208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.261562, 14.188135, 32.948639>,  <18.442244, 14.267576, 32.812099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.261562, 14.188135, 32.948639>,  <17.960428, 14.055733, 33.176208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261562, 14.188135, 32.948639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565776, -0.116269, -0.816320,
		-0.336355, 0.936438, 0.099743,
		0.752837, 0.331006, -0.568922,
		18.487413, 14.287436, 32.777962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674526, 14.502440, 32.689396>,  <17.960428, 14.055733, 33.176208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674526, 14.502440, 32.689396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.021381, 14.412642, 32.511555>,  <18.229494, 14.358764, 32.404850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.021381, 14.412642, 32.511555>,  <17.674526, 14.502440, 32.689396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021381, 14.412642, 32.511555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492497, -0.253368, -0.832617,
		0.074271, 0.940960, -0.330269,
		0.867139, -0.224496, -0.444603,
		18.281523, 14.345294, 32.378174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.292810, 15.081669, 32.952984>,  <17.674526, 14.502440, 32.689396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.292810, 15.081669, 32.952984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.906120, 15.126327, 33.045048>,  <16.674107, 15.153121, 33.100285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.906120, 15.126327, 33.045048>,  <17.292810, 15.081669, 32.952984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906120, 15.126327, 33.045048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234623, 0.028452, 0.971670,
		0.101933, 0.993341, -0.053700,
		-0.966727, 0.111644, 0.230160,
		16.616102, 15.159820, 33.114098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296547, 15.614510, 33.450340>,  <17.292810, 15.081669, 32.952984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.296547, 15.614510, 33.450340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.958223, 15.410405, 33.512615>,  <16.755228, 15.287943, 33.549980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.958223, 15.410405, 33.512615>,  <17.296547, 15.614510, 33.450340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.958223, 15.410405, 33.512615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053588, 0.209094, 0.976426,
		-0.530786, 0.834214, -0.149510,
		-0.845810, -0.510261, 0.155688,
		16.704481, 15.257327, 33.559322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804390, 16.007257, 33.861126>,  <17.296547, 15.614510, 33.450340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804390, 16.007257, 33.861126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.683924, 15.636408, 33.950333>,  <16.611643, 15.413898, 34.003857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.683924, 15.636408, 33.950333>,  <16.804390, 16.007257, 33.861126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.683924, 15.636408, 33.950333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014123, 0.238185, 0.971117,
		-0.953467, 0.289319, -0.084828,
		-0.301168, -0.927126, 0.223015,
		16.593573, 15.358270, 34.017239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302567, 16.049305, 34.340622>,  <16.804390, 16.007257, 33.861126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302567, 16.049305, 34.340622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.414539, 15.666073, 34.365028>,  <16.481724, 15.436134, 34.379673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.414539, 15.666073, 34.365028>,  <16.302567, 16.049305, 34.340622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414539, 15.666073, 34.365028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041852, 0.075673, 0.996254,
		-0.959107, -0.276331, 0.061281,
		0.279933, -0.958079, 0.061014,
		16.498520, 15.378650, 34.383331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809465, 15.691984, 34.781586>,  <16.302567, 16.049305, 34.340622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809465, 15.691984, 34.781586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.154161, 15.489771, 34.798744>,  <16.360979, 15.368443, 34.809040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.154161, 15.489771, 34.798744>,  <15.809465, 15.691984, 34.781586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154161, 15.489771, 34.798744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074537, -0.042523, 0.996311,
		-0.501846, -0.861758, -0.074324,
		0.861740, -0.505534, 0.042893,
		16.412683, 15.338111, 34.811611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.751359, 15.241822, 35.378651>,  <15.809465, 15.691984, 34.781586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.751359, 15.241822, 35.378651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.146200, 15.203893, 35.327061>,  <16.383104, 15.181135, 35.296108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.146200, 15.203893, 35.327061>,  <15.751359, 15.241822, 35.378651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.146200, 15.203893, 35.327061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135351, 0.064160, 0.988718,
		-0.085479, -0.993424, 0.076167,
		0.987104, -0.094824, -0.128976,
		16.442331, 15.175446, 35.288368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927603, 14.872161, 35.980042>,  <15.751359, 15.241822, 35.378651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.927603, 14.872161, 35.980042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.276838, 15.003848, 35.836193>,  <16.486380, 15.082861, 35.749882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.276838, 15.003848, 35.836193>,  <15.927603, 14.872161, 35.980042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.276838, 15.003848, 35.836193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364604, 0.048833, 0.929881,
		0.323696, -0.942990, -0.077399,
		0.873089, 0.329219, -0.359625,
		16.538765, 15.102613, 35.728306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454004, 14.481577, 36.305908>,  <15.927603, 14.872161, 35.980042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454004, 14.481577, 36.305908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.605249, 14.838729, 36.208096>,  <16.695997, 15.053020, 36.149410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.605249, 14.838729, 36.208096>,  <16.454004, 14.481577, 36.305908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605249, 14.838729, 36.208096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394767, 0.083410, 0.914988,
		0.837371, -0.442500, -0.320941,
		0.378113, 0.892881, -0.244529,
		16.718683, 15.106593, 36.134735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226528, 14.473811, 36.435795>,  <16.454004, 14.481577, 36.305908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226528, 14.473811, 36.435795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.094635, 14.851402, 36.441212>,  <17.015499, 15.077957, 36.444462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.094635, 14.851402, 36.441212>,  <17.226528, 14.473811, 36.435795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094635, 14.851402, 36.441212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407459, 0.129353, 0.904016,
		0.851619, 0.303603, -0.427284,
		-0.329732, 0.943977, 0.013546,
		16.995716, 15.134596, 36.445274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<11.569719, 13.430943, 20.759441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.412580, 13.701251, 21.008923>,  <11.318295, 13.863436, 21.158611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.412580, 13.701251, 21.008923>,  <11.569719, 13.430943, 20.759441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.412580, 13.701251, 21.008923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754825, -0.150443, 0.638441,
		0.525270, 0.721597, -0.450986,
		-0.392849, 0.675770, 0.623702,
		11.294724, 13.903982, 21.196033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.144912, 13.713558, 21.188238>,  <11.569719, 13.430943, 20.759441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.144912, 13.713558, 21.188238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.870170, 13.912719, 21.400021>,  <11.705324, 14.032215, 21.527090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.870170, 13.912719, 21.400021>,  <12.144912, 13.713558, 21.188238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.870170, 13.912719, 21.400021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613301, 0.006166, 0.789825,
		0.389989, 0.867212, -0.309598,
		-0.686855, 0.497900, 0.529458,
		11.664113, 14.062089, 21.558857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317999, 14.366401, 21.317926>,  <12.144912, 13.713558, 21.188238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.317999, 14.366401, 21.317926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.066940, 14.270155, 21.614079>,  <11.916305, 14.212407, 21.791769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.066940, 14.270155, 21.614079>,  <12.317999, 14.366401, 21.317926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.066940, 14.270155, 21.614079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707076, 0.221732, 0.671474,
		-0.325733, 0.944955, 0.030964,
		-0.627647, -0.240615, 0.740381,
		11.878646, 14.197970, 21.836193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623117, 14.693317, 21.889355>,  <12.317999, 14.366401, 21.317926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623117, 14.693317, 21.889355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.360702, 14.458699, 22.079334>,  <12.203252, 14.317928, 22.193321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.360702, 14.458699, 22.079334>,  <12.623117, 14.693317, 21.889355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.360702, 14.458699, 22.079334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489049, 0.148937, 0.859447,
		-0.574841, 0.796105, 0.189141,
		-0.656040, -0.586544, 0.474950,
		12.163890, 14.282736, 22.221819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.400205, 15.102173, 22.489962>,  <12.623117, 14.693317, 21.889355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.400205, 15.102173, 22.489962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.271079, 14.735463, 22.584040>,  <12.193604, 14.515437, 22.640488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.271079, 14.735463, 22.584040>,  <12.400205, 15.102173, 22.489962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.271079, 14.735463, 22.584040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360397, 0.110714, 0.926205,
		-0.875160, 0.383756, 0.294663,
		-0.322814, -0.916773, 0.235197,
		12.174235, 14.460431, 22.654598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.163679, 15.128532, 23.111479>,  <12.400205, 15.102173, 22.489962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.163679, 15.128532, 23.111479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.244147, 14.737577, 23.085415>,  <12.292428, 14.503004, 23.069777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.244147, 14.737577, 23.085415>,  <12.163679, 15.128532, 23.111479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.244147, 14.737577, 23.085415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407432, 0.022998, 0.912946,
		-0.890803, -0.210204, 0.402845,
		0.201169, -0.977387, -0.065157,
		12.304498, 14.444362, 23.065868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.931334, 14.738737, 23.729877>,  <12.163679, 15.128532, 23.111479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.931334, 14.738737, 23.729877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.242079, 14.550994, 23.561979>,  <12.428526, 14.438348, 23.461241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.242079, 14.550994, 23.561979>,  <11.931334, 14.738737, 23.729877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.242079, 14.550994, 23.561979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476570, 0.002593, 0.879133,
		-0.411540, -0.883004, 0.225697,
		0.776863, -0.469359, -0.419746,
		12.475138, 14.410187, 23.436056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.018263, 14.003683, 24.080818>,  <11.931334, 14.738737, 23.729877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.018263, 14.003683, 24.080818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.360369, 14.147759, 23.931803>,  <12.565632, 14.234205, 23.842394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.360369, 14.147759, 23.931803>,  <12.018263, 14.003683, 24.080818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.360369, 14.147759, 23.931803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466900, -0.223782, 0.855527,
		0.224785, -0.905640, -0.359566,
		0.855264, 0.360191, -0.372541,
		12.616948, 14.255816, 23.820040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.513772, 13.964665, 24.618738>,  <12.018263, 14.003683, 24.080818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.513772, 13.964665, 24.618738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748857, 14.100772, 24.325123>,  <12.889908, 14.182436, 24.148954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748857, 14.100772, 24.325123>,  <12.513772, 13.964665, 24.618738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.748857, 14.100772, 24.325123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775237, 0.022784, 0.631259,
		0.231521, -0.940053, -0.250398,
		0.587712, 0.340267, -0.734039,
		12.925170, 14.202852, 24.104912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.188464, 13.646208, 24.764046>,  <12.513772, 13.964665, 24.618738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.188464, 13.646208, 24.764046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.248643, 13.977071, 24.547462>,  <13.284750, 14.175589, 24.417513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.248643, 13.977071, 24.547462>,  <13.188464, 13.646208, 24.764046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.248643, 13.977071, 24.547462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663816, 0.321342, 0.675342,
		0.732608, -0.461031, -0.500736,
		0.150446, 0.827158, -0.541457,
		13.293777, 14.225218, 24.385025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.871543, 13.733564, 24.617916>,  <13.188464, 13.646208, 24.764046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.871543, 13.733564, 24.617916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721266, 14.102277, 24.579605>,  <13.631100, 14.323504, 24.556618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721266, 14.102277, 24.579605>,  <13.871543, 13.733564, 24.617916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721266, 14.102277, 24.579605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675721, 0.343191, 0.652396,
		0.634237, 0.180382, -0.751802,
		-0.375692, 0.921782, -0.095777,
		13.608559, 14.378812, 24.550873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.477501, 14.103014, 24.507030>,  <13.871543, 13.733564, 24.617916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.477501, 14.103014, 24.507030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195408, 14.354709, 24.637695>,  <14.026152, 14.505726, 24.716095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195408, 14.354709, 24.637695>,  <14.477501, 14.103014, 24.507030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195408, 14.354709, 24.637695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679217, 0.467551, 0.565738,
		0.203252, 0.620851, -0.757121,
		-0.705232, 0.629237, 0.326662,
		13.983838, 14.543480, 24.735693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037274, 14.277543, 23.937208>,  <14.477501, 14.103014, 24.507030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037274, 14.277543, 23.937208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.310600, 13.992221, 23.874886>,  <15.474596, 13.821028, 23.837492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.310600, 13.992221, 23.874886>,  <15.037274, 14.277543, 23.937208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.310600, 13.992221, 23.874886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359513, -0.142979, -0.922121,
		0.635476, 0.686114, -0.354142,
		0.683315, -0.713305, -0.155808,
		15.515594, 13.778230, 23.828144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491610, 14.516159, 23.367151>,  <15.037274, 14.277543, 23.937208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.491610, 14.516159, 23.367151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519404, 14.117459, 23.383448>,  <15.536081, 13.878240, 23.393227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519404, 14.117459, 23.383448>,  <15.491610, 14.516159, 23.367151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519404, 14.117459, 23.383448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219961, -0.055145, -0.973949,
		0.973031, 0.058716, -0.223078,
		0.069488, -0.996751, 0.040743,
		15.540251, 13.818434, 23.395670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970952, 14.288321, 22.793011>,  <15.491610, 14.516159, 23.367151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.970952, 14.288321, 22.793011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.762346, 13.963468, 22.897673>,  <15.637183, 13.768556, 22.960470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.762346, 13.963468, 22.897673>,  <15.970952, 14.288321, 22.793011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762346, 13.963468, 22.897673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318403, -0.099271, -0.942743,
		0.791608, -0.574965, -0.206814,
		-0.521514, -0.812133, 0.261655,
		15.605892, 13.719828, 22.976170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.978366, 13.885445, 22.189732>,  <15.970952, 14.288321, 22.793011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.978366, 13.885445, 22.189732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.717996, 13.674562, 22.408216>,  <15.561773, 13.548032, 22.539307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.717996, 13.674562, 22.408216>,  <15.978366, 13.885445, 22.189732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.717996, 13.674562, 22.408216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508020, -0.232138, -0.829474,
		0.564102, -0.817412, -0.116728,
		-0.650925, -0.527209, 0.546212,
		15.522718, 13.516399, 22.572081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946038, 13.193078, 21.827744>,  <15.978366, 13.885445, 22.189732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946038, 13.193078, 21.827744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608887, 13.279547, 22.024853>,  <15.406596, 13.331429, 22.143118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608887, 13.279547, 22.024853>,  <15.946038, 13.193078, 21.827744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608887, 13.279547, 22.024853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524761, -0.127543, -0.841640,
		-0.119033, -0.968003, 0.220909,
		-0.842886, 0.216108, 0.492789,
		15.356023, 13.344398, 22.172684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407755, 12.799610, 21.428478>,  <15.946038, 13.193078, 21.827744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407755, 12.799610, 21.428478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.206517, 13.060095, 21.655748>,  <15.085774, 13.216386, 21.792110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.206517, 13.060095, 21.655748>,  <15.407755, 12.799610, 21.428478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.206517, 13.060095, 21.655748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676460, 0.112436, -0.727846,
		-0.537865, -0.750521, 0.383952,
		-0.503094, 0.651211, 0.568173,
		15.055589, 13.255458, 21.826200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718299, 12.618244, 21.452337>,  <15.407755, 12.799610, 21.428478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.718299, 12.618244, 21.452337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.695082, 13.008492, 21.536999>,  <14.681151, 13.242641, 21.587795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.695082, 13.008492, 21.536999>,  <14.718299, 12.618244, 21.452337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.695082, 13.008492, 21.536999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834447, 0.068969, -0.546755,
		-0.548023, -0.208348, 0.810100,
		-0.058044, 0.975620, 0.211652,
		14.677669, 13.301178, 21.600494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897156, 12.792397, 21.462366>,  <14.718299, 12.618244, 21.452337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897156, 12.792397, 21.462366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.106096, 13.133137, 21.446850>,  <14.231461, 13.337580, 21.437540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.106096, 13.133137, 21.446850>,  <13.897156, 12.792397, 21.462366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.106096, 13.133137, 21.446850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783009, 0.461131, -0.417438,
		-0.337706, 0.248423, 0.907877,
		0.522352, 0.851848, -0.038790,
		14.262802, 13.388691, 21.435213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434943, 13.264101, 21.598005>,  <13.897156, 12.792397, 21.462366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.434943, 13.264101, 21.598005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713041, 13.500347, 21.434149>,  <13.879900, 13.642095, 21.335835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713041, 13.500347, 21.434149>,  <13.434943, 13.264101, 21.598005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713041, 13.500347, 21.434149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718707, 0.563543, -0.407284,
		-0.009696, 0.577576, 0.816280,
		0.695246, 0.590615, -0.409643,
		13.921615, 13.677531, 21.311256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.149094, 13.926971, 21.630836>,  <13.434943, 13.264101, 21.598005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.149094, 13.926971, 21.630836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.452771, 13.959024, 21.372471>,  <13.634977, 13.978256, 21.217451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.452771, 13.959024, 21.372471>,  <13.149094, 13.926971, 21.630836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.452771, 13.959024, 21.372471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566649, 0.569608, -0.595361,
		0.320210, 0.818000, 0.477850,
		0.759193, 0.080133, -0.645914,
		13.680530, 13.983065, 21.178698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.423576, 14.709571, 21.618084>,  <13.149094, 13.926971, 21.630836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.423576, 14.709571, 21.618084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.508045, 14.531749, 21.269882>,  <13.558726, 14.425056, 21.060961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.508045, 14.531749, 21.269882>,  <13.423576, 14.709571, 21.618084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.508045, 14.531749, 21.269882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566174, 0.670339, -0.479679,
		0.796777, 0.594151, -0.110138,
		0.211172, -0.444555, -0.870504,
		13.571397, 14.398382, 21.008732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558226, 15.326111, 21.109661>,  <13.423576, 14.709571, 21.618084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558226, 15.326111, 21.109661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494074, 14.991036, 20.900831>,  <13.455583, 14.789991, 20.775534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494074, 14.991036, 20.900831>,  <13.558226, 15.326111, 21.109661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494074, 14.991036, 20.900831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686352, 0.474762, -0.550928,
		0.709366, 0.269969, -0.651089,
		-0.160379, -0.837686, -0.522074,
		13.445960, 14.739731, 20.744209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629944, 15.526553, 20.445301>,  <13.558226, 15.326111, 21.109661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629944, 15.526553, 20.445301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.448775, 15.174717, 20.387087>,  <13.340074, 14.963615, 20.352160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.448775, 15.174717, 20.387087>,  <13.629944, 15.526553, 20.445301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.448775, 15.174717, 20.387087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528326, 0.396287, -0.750885,
		0.718145, -0.263203, -0.644198,
		-0.452922, -0.879592, -0.145534,
		13.312899, 14.910839, 20.343426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.630352, 15.332662, 19.735996>,  <13.629944, 15.526553, 20.445301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.630352, 15.332662, 19.735996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309047, 15.143905, 19.881371>,  <13.116263, 15.030650, 19.968596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309047, 15.143905, 19.881371>,  <13.630352, 15.332662, 19.735996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309047, 15.143905, 19.881371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560410, 0.392082, -0.729529,
		0.201763, -0.789677, -0.579398,
		-0.803264, -0.471892, 0.363435,
		13.068068, 15.002337, 19.990400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354209, 15.851805, 19.166779>,  <13.630352, 15.332662, 19.735996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354209, 15.851805, 19.166779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117327, 15.736594, 18.865759>,  <12.975198, 15.667468, 18.685146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117327, 15.736594, 18.865759>,  <13.354209, 15.851805, 19.166779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.117327, 15.736594, 18.865759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588340, -0.792709, -0.159587,
		-0.550589, -0.537264, 0.638904,
		-0.592206, -0.288026, -0.752551,
		12.939665, 15.650187, 18.639994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667615, 16.136055, 19.872026>,  <13.354209, 15.851805, 19.166779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667615, 16.136055, 19.872026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.819540, 16.481989, 19.740692>,  <13.910695, 16.689548, 19.661892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.819540, 16.481989, 19.740692>,  <13.667615, 16.136055, 19.872026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.819540, 16.481989, 19.740692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738746, -0.069942, 0.670345,
		0.556774, -0.497160, -0.665458,
		0.379812, 0.864835, -0.328334,
		13.933484, 16.741440, 19.642193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.354777, 16.181215, 20.222004>,  <13.667615, 16.136055, 19.872026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.354777, 16.181215, 20.222004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289842, 16.550974, 20.083941>,  <14.250880, 16.772829, 20.001102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289842, 16.550974, 20.083941>,  <14.354777, 16.181215, 20.222004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.289842, 16.550974, 20.083941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705641, 0.353266, 0.614226,
		0.689722, -0.143845, -0.709642,
		-0.162339, 0.924398, -0.345158,
		14.241140, 16.828293, 19.980392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008829, 16.445568, 19.824066>,  <14.354777, 16.181215, 20.222004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.008829, 16.445568, 19.824066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.779459, 16.719763, 20.003529>,  <14.641837, 16.884279, 20.111206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.779459, 16.719763, 20.003529>,  <15.008829, 16.445568, 19.824066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.779459, 16.719763, 20.003529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782951, 0.297305, 0.546441,
		0.241189, 0.664620, -0.707183,
		-0.573425, 0.685485, 0.448658,
		14.607431, 16.925409, 20.138126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486794, 17.056475, 20.062082>,  <15.008829, 16.445568, 19.824066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486794, 17.056475, 20.062082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158895, 17.120426, 20.282064>,  <14.962156, 17.158798, 20.414053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158895, 17.120426, 20.282064>,  <15.486794, 17.056475, 20.062082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158895, 17.120426, 20.282064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563258, 0.398921, 0.723604,
		-0.103698, 0.902940, -0.417069,
		-0.819748, 0.159881, 0.549956,
		14.912971, 17.168390, 20.447052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.594304, 17.763308, 20.404549>,  <15.486794, 17.056475, 20.062082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.594304, 17.763308, 20.404549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291695, 17.610355, 20.616758>,  <15.110129, 17.518583, 20.744083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291695, 17.610355, 20.616758>,  <15.594304, 17.763308, 20.404549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.291695, 17.610355, 20.616758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404653, 0.363581, 0.839086,
		-0.513739, 0.849467, -0.120326,
		-0.756524, -0.382381, 0.530525,
		15.064737, 17.495642, 20.775915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433102, 18.228788, 20.781330>,  <15.594304, 17.763308, 20.404549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433102, 18.228788, 20.781330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300917, 17.912046, 20.986761>,  <15.221605, 17.722002, 21.110020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300917, 17.912046, 20.986761>,  <15.433102, 18.228788, 20.781330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300917, 17.912046, 20.986761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452988, 0.344308, 0.822346,
		-0.828007, 0.504399, 0.244920,
		-0.330462, -0.791855, 0.513576,
		15.201778, 17.674490, 21.140835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198540, 18.493500, 21.399181>,  <15.433102, 18.228788, 20.781330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198540, 18.493500, 21.399181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237391, 18.099752, 21.457954>,  <15.260702, 17.863504, 21.493217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237391, 18.099752, 21.457954>,  <15.198540, 18.493500, 21.399181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.237391, 18.099752, 21.457954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479196, 0.175644, 0.859954,
		-0.872317, -0.013117, 0.488764,
		0.097128, -0.984366, 0.146932,
		15.266530, 17.804443, 21.502033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847267, 18.415945, 22.034882>,  <15.198540, 18.493500, 21.399181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.847267, 18.415945, 22.034882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110991, 18.119781, 21.982565>,  <15.269224, 17.942083, 21.951176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110991, 18.119781, 21.982565>,  <14.847267, 18.415945, 22.034882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.110991, 18.119781, 21.982565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464659, 0.264482, 0.845069,
		-0.591105, -0.617934, 0.518414,
		0.659308, -0.740410, -0.130792,
		15.308783, 17.897659, 21.943327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823816, 18.003185, 22.626505>,  <14.847267, 18.415945, 22.034882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823816, 18.003185, 22.626505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165545, 17.893587, 22.449842>,  <15.370583, 17.827827, 22.343845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165545, 17.893587, 22.449842>,  <14.823816, 18.003185, 22.626505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165545, 17.893587, 22.449842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470498, 0.046668, 0.881166,
		-0.220825, -0.960598, 0.168784,
		0.854323, -0.273997, -0.441654,
		15.421843, 17.811388, 22.317347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112037, 17.613285, 23.081709>,  <14.823816, 18.003185, 22.626505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112037, 17.613285, 23.081709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420204, 17.700558, 22.842093>,  <15.605104, 17.752922, 22.698322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420204, 17.700558, 22.842093>,  <15.112037, 17.613285, 23.081709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420204, 17.700558, 22.842093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614265, -0.002467, 0.789096,
		0.170689, -0.975905, -0.135922,
		0.770418, 0.218182, -0.599043,
		15.651329, 17.766012, 22.662380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566113, 17.110682, 23.251112>,  <15.112037, 17.613285, 23.081709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.566113, 17.110682, 23.251112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767539, 17.416929, 23.090988>,  <15.888394, 17.600677, 22.994913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767539, 17.416929, 23.090988>,  <15.566113, 17.110682, 23.251112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767539, 17.416929, 23.090988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436491, 0.174408, 0.882642,
		0.745587, -0.619198, -0.246362,
		0.503563, 0.765621, -0.400310,
		15.918608, 17.646616, 22.970896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232807, 16.996630, 23.407667>,  <15.566113, 17.110682, 23.251112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.232807, 16.996630, 23.407667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202250, 17.390680, 23.346098>,  <16.183916, 17.627110, 23.309156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202250, 17.390680, 23.346098>,  <16.232807, 16.996630, 23.407667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202250, 17.390680, 23.346098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475492, 0.171685, 0.862804,
		0.876397, -0.007279, -0.481535,
		-0.076392, 0.985125, -0.153925,
		16.179333, 17.686218, 23.299921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935211, 17.338684, 23.458612>,  <16.232807, 16.996630, 23.407667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935211, 17.338684, 23.458612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674717, 17.632832, 23.533579>,  <16.518421, 17.809320, 23.578558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674717, 17.632832, 23.533579>,  <16.935211, 17.338684, 23.458612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674717, 17.632832, 23.533579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634798, 0.392556, 0.665531,
		0.415840, 0.552389, -0.722457,
		-0.651236, 0.735369, 0.187415,
		16.479345, 17.853441, 23.589804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340540, 17.801525, 23.682682>,  <16.935211, 17.338684, 23.458612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340540, 17.801525, 23.682682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988182, 17.944237, 23.807093>,  <16.776768, 18.029863, 23.881739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988182, 17.944237, 23.807093>,  <17.340540, 17.801525, 23.682682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988182, 17.944237, 23.807093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452752, 0.443567, 0.773475,
		0.138000, 0.822166, -0.552268,
		-0.880893, 0.356780, 0.311025,
		16.723915, 18.051271, 23.900400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460835, 18.417133, 23.994150>,  <17.340540, 17.801525, 23.682682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.460835, 18.417133, 23.994150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094116, 18.342098, 24.135172>,  <16.874084, 18.297077, 24.219784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094116, 18.342098, 24.135172>,  <17.460835, 18.417133, 23.994150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094116, 18.342098, 24.135172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239853, 0.447197, 0.861676,
		-0.319302, 0.874543, -0.364995,
		-0.916797, -0.187589, 0.352552,
		16.819077, 18.285822, 24.240938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085461, 19.076061, 24.206764>,  <17.460835, 18.417133, 23.994150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085461, 19.076061, 24.206764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.921270, 18.768320, 24.402561>,  <16.822756, 18.583675, 24.520039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.921270, 18.768320, 24.402561>,  <17.085461, 19.076061, 24.206764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.921270, 18.768320, 24.402561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224025, 0.435264, 0.871985,
		-0.883924, 0.467588, -0.006311,
		-0.410476, -0.769355, 0.489492,
		16.798128, 18.537514, 24.549408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743597, 19.384607, 24.733816>,  <17.085461, 19.076061, 24.206764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743597, 19.384607, 24.733816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.711588, 19.017313, 24.888962>,  <16.692383, 18.796936, 24.982050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.711588, 19.017313, 24.888962>,  <16.743597, 19.384607, 24.733816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711588, 19.017313, 24.888962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229018, 0.361768, 0.903701,
		-0.970128, 0.161144, 0.181343,
		-0.080022, -0.918236, 0.387866,
		16.687582, 18.741842, 25.005322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440159, 19.497599, 25.311399>,  <16.743597, 19.384607, 24.733816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.440159, 19.497599, 25.311399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.610508, 19.143267, 25.385086>,  <16.712717, 18.930668, 25.429298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.610508, 19.143267, 25.385086>,  <16.440159, 19.497599, 25.311399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610508, 19.143267, 25.385086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174925, 0.280374, 0.943818,
		-0.887713, -0.369721, 0.274357,
		0.425872, -0.885831, 0.184218,
		16.738270, 18.877518, 25.440351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369982, 19.438892, 25.972540>,  <16.440159, 19.497599, 25.311399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.369982, 19.438892, 25.972540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.652525, 19.160715, 25.919746>,  <16.822050, 18.993809, 25.888071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.652525, 19.160715, 25.919746>,  <16.369982, 19.438892, 25.972540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.652525, 19.160715, 25.919746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409053, 0.248859, 0.877921,
		-0.577698, -0.674113, 0.460257,
		0.706357, -0.695443, -0.131983,
		16.864431, 18.952082, 25.880152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383171, 19.075537, 26.584753>,  <16.369982, 19.438892, 25.972540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383171, 19.075537, 26.584753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733797, 18.996347, 26.409283>,  <16.944174, 18.948833, 26.304001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733797, 18.996347, 26.409283>,  <16.383171, 19.075537, 26.584753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733797, 18.996347, 26.409283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467000, 0.129476, 0.874727,
		-0.116376, -0.971618, 0.205948,
		0.876566, -0.197975, -0.438677,
		16.996767, 18.936954, 26.277679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.498981, 18.572962, 27.046814>,  <16.383171, 19.075537, 26.584753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.498981, 18.572962, 27.046814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827747, 18.716208, 26.869633>,  <17.025007, 18.802155, 26.763325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827747, 18.716208, 26.869633>,  <16.498981, 18.572962, 27.046814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827747, 18.716208, 26.869633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466357, 0.023427, 0.884286,
		0.327054, -0.933383, -0.147754,
		0.821916, 0.358116, -0.442952,
		17.074322, 18.823643, 26.736748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077740, 18.168793, 27.325193>,  <16.498981, 18.572962, 27.046814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077740, 18.168793, 27.325193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.222382, 18.521448, 27.203896>,  <17.309166, 18.733042, 27.131117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.222382, 18.521448, 27.203896>,  <17.077740, 18.168793, 27.325193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.222382, 18.521448, 27.203896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620489, 0.015192, 0.784068,
		0.695871, -0.471681, -0.541553,
		0.361603, 0.881638, -0.303245,
		17.330862, 18.785940, 27.112923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744402, 18.079071, 27.497599>,  <17.077740, 18.168793, 27.325193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744402, 18.079071, 27.497599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745808, 18.471548, 27.420401>,  <17.746651, 18.707035, 27.374083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745808, 18.471548, 27.420401>,  <17.744402, 18.079071, 27.497599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.745808, 18.471548, 27.420401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664039, 0.142012, 0.734088,
		0.747690, -0.130735, -0.651051,
		0.003514, 0.981193, -0.192994,
		17.746862, 18.765905, 27.362503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482611, 18.316450, 27.283024>,  <17.744402, 18.079071, 27.497599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482611, 18.316450, 27.283024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.267929, 18.630949, 27.405508>,  <18.139120, 18.819649, 27.478998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.267929, 18.630949, 27.405508>,  <18.482611, 18.316450, 27.283024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267929, 18.630949, 27.405508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666527, 0.172532, 0.725241,
		0.517388, 0.593335, -0.616654,
		-0.536703, 0.786248, 0.306208,
		18.106918, 18.866823, 27.497370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949806, 18.929295, 27.309107>,  <18.482611, 18.316450, 27.283024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949806, 18.929295, 27.309107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630039, 19.016935, 27.532866>,  <18.438179, 19.069519, 27.667120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630039, 19.016935, 27.532866>,  <18.949806, 18.929295, 27.309107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630039, 19.016935, 27.532866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599682, 0.234932, 0.764976,
		0.036187, 0.946996, -0.319200,
		-0.799419, 0.219101, 0.559396,
		18.390213, 19.082666, 27.700684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.065569, 19.563309, 27.581869>,  <18.949806, 18.929295, 27.309107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.065569, 19.563309, 27.581869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.817135, 19.365606, 27.825167>,  <18.668074, 19.246984, 27.971146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.817135, 19.365606, 27.825167>,  <19.065569, 19.563309, 27.581869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.817135, 19.365606, 27.825167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526014, 0.312441, 0.791005,
		-0.580999, 0.811229, 0.065932,
		-0.621087, -0.494255, 0.608246,
		18.630808, 19.217329, 28.007641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674566, 20.045807, 28.087255>,  <19.065569, 19.563309, 27.581869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674566, 20.045807, 28.087255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.670050, 19.691334, 28.272537>,  <18.667339, 19.478651, 28.383705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.670050, 19.691334, 28.272537>,  <18.674566, 20.045807, 28.087255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.670050, 19.691334, 28.272537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676308, 0.334440, 0.656321,
		-0.736532, 0.320677, 0.595555,
		-0.011290, -0.886181, 0.463202,
		18.666662, 19.425480, 28.411497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
