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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<-0.762728, 4.317537, 0.222377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.606625, 4.526657, 0.525528>,  <-0.512963, 4.652129, 0.707419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.606625, 4.526657, 0.525528>,  <-0.762728, 4.317537, 0.222377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.606625, 4.526657, 0.525528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904220, -0.372702, -0.208517,
		0.173450, 0.766664, -0.618175,
		0.390258, 0.522799, 0.757878,
		-0.489547, 4.683497, 0.752891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.160089, 4.680590, -0.057011>,  <-0.762728, 4.317537, 0.222377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.160089, 4.680590, -0.057011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.089180, 4.597519, 0.327789>,  <-0.046635, 4.547677, 0.558669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.089180, 4.597519, 0.327789>,  <-0.160089, 4.680590, -0.057011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.089180, 4.597519, 0.327789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841668, -0.474614, -0.257557,
		0.510068, 0.855343, 0.090659,
		0.177272, -0.207677, 0.962001,
		-0.035998, 4.535216, 0.616390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.513274, 4.741069, 0.092427>,  <-0.160089, 4.680590, -0.057011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.513274, 4.741069, 0.092427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.427166, 4.458374, 0.362000>,  <0.375501, 4.288757, 0.523743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.427166, 4.458374, 0.362000>,  <0.513274, 4.741069, 0.092427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.427166, 4.458374, 0.362000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902256, -0.407969, -0.139625,
		0.373621, 0.578001, 0.725481,
		-0.215270, -0.706737, 0.673930,
		0.362585, 4.246353, 0.564179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.769316, 4.812781, 0.794352>,  <0.513274, 4.741069, 0.092427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.769316, 4.812781, 0.794352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.749107, 4.448471, 0.630432>,  <0.736982, 4.229885, 0.532080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.749107, 4.448471, 0.630432>,  <0.769316, 4.812781, 0.794352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.749107, 4.448471, 0.630432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991891, 0.002156, -0.127075,
		0.116620, -0.412897, 0.903280,
		-0.050521, -0.910775, -0.409801,
		0.733951, 4.175239, 0.507492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.259187, 4.400859, 1.153800>,  <0.769316, 4.812781, 0.794352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.259187, 4.400859, 1.153800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.169563, 4.201630, 0.818726>,  <1.115789, 4.082092, 0.617681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.169563, 4.201630, 0.818726>,  <1.259187, 4.400859, 1.153800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.169563, 4.201630, 0.818726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972578, -0.169280, -0.159489,
		-0.062366, -0.850451, 0.522344,
		-0.224060, -0.498074, -0.837687,
		1.102345, 4.052207, 0.567419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.513315, 3.670550, 1.168053>,  <1.259187, 4.400859, 1.153800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.513315, 3.670550, 1.168053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.483513, 3.774231, 0.782875>,  <1.465632, 3.836439, 0.551768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.483513, 3.774231, 0.782875>,  <1.513315, 3.670550, 1.168053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.483513, 3.774231, 0.782875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933323, -0.321971, -0.158880,
		-0.351222, -0.910576, -0.217930,
		-0.074506, 0.259201, -0.962945,
		1.461161, 3.851991, 0.493991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.953087, 3.222053, 0.811003>,  <1.513315, 3.670550, 1.168053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.953087, 3.222053, 0.811003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.909798, 3.512589, 0.539497>,  <1.883824, 3.686910, 0.376594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.909798, 3.512589, 0.539497>,  <1.953087, 3.222053, 0.811003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.909798, 3.512589, 0.539497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955844, -0.111626, -0.271851,
		-0.273223, -0.678213, -0.682185,
		-0.108224, 0.726338, -0.678764,
		1.877331, 3.730490, 0.335868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.113721, 2.917039, 0.147353>,  <1.953087, 3.222053, 0.811003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.113721, 2.917039, 0.147353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.168549, 3.313110, 0.136345>,  <2.201445, 3.550753, 0.129740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.168549, 3.313110, 0.136345>,  <2.113721, 2.917039, 0.147353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.168549, 3.313110, 0.136345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936295, -0.138580, -0.322720,
		-0.323364, 0.018469, -0.946095,
		0.137070, 0.990179, -0.027519,
		2.209670, 3.610164, 0.128089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.712590, 3.113138, 0.084118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.766369, 3.504089, 0.149422>,  <3.798636, 3.738660, 0.188604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.766369, 3.504089, 0.149422>,  <3.712590, 3.113138, 0.084118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.766369, 3.504089, 0.149422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986039, 0.115624, 0.119825,
		0.098237, -0.177091, 0.979279,
		0.134448, 0.977379, 0.163260,
		3.806703, 3.797303, 0.198400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.392615, 3.481829, 0.775422>,  <3.712590, 3.113138, 0.084118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.392615, 3.481829, 0.775422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424461, 3.692535, 0.436913>,  <3.443569, 3.818959, 0.233807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424461, 3.692535, 0.436913>,  <3.392615, 3.481829, 0.775422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.424461, 3.692535, 0.436913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994563, 0.099146, -0.031854,
		0.067125, 0.844209, 0.531795,
		0.079617, 0.526765, -0.846274,
		3.448346, 3.850565, 0.183030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.959141, 4.050717, 0.829360>,  <3.392615, 3.481829, 0.775422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.959141, 4.050717, 0.829360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.995596, 4.011108, 0.432999>,  <3.017469, 3.987343, 0.195182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.995596, 4.011108, 0.432999>,  <2.959141, 4.050717, 0.829360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.995596, 4.011108, 0.432999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964241, 0.239892, -0.112656,
		0.248865, 0.965736, -0.073617,
		0.091136, -0.099021, -0.990903,
		3.022937, 3.981402, 0.135728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.737413, 4.672411, 0.488046>,  <2.959141, 4.050717, 0.829360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.737413, 4.672411, 0.488046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.686607, 4.344162, 0.265175>,  <2.656124, 4.147213, 0.131452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.686607, 4.344162, 0.265175>,  <2.737413, 4.672411, 0.488046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.686607, 4.344162, 0.265175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991239, 0.125522, 0.041093,
		0.036216, 0.557515, -0.829376,
		-0.127015, -0.820623, -0.557177,
		2.648503, 4.097975, 0.098022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.193714, 4.842189, -0.062848>,  <2.737413, 4.672411, 0.488046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.193714, 4.842189, -0.062848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.217691, 4.444641, -0.025688>,  <2.232078, 4.206112, -0.003392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.217691, 4.444641, -0.025688>,  <2.193714, 4.842189, -0.062848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.217691, 4.444641, -0.025688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997311, -0.055700, 0.047629,
		-0.042162, -0.095505, -0.994536,
		0.059944, -0.993869, 0.092900,
		2.235675, 4.146480, 0.002181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.700239, 4.569859, -0.611907>,  <2.193714, 4.842189, -0.062848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.700239, 4.569859, -0.611907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.771030, 4.316513, -0.310570>,  <1.813505, 4.164505, -0.129767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.771030, 4.316513, -0.310570>,  <1.700239, 4.569859, -0.611907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.771030, 4.316513, -0.310570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981493, -0.170459, 0.087264,
		0.073145, -0.754846, -0.651810,
		0.176978, -0.633365, 0.753345,
		1.824124, 4.126503, -0.084566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.179099, 4.143908, -0.749208>,  <1.700239, 4.569859, -0.611907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.179099, 4.143908, -0.749208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.280891, 4.045776, -0.375031>,  <1.341967, 3.986898, -0.150524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.280891, 4.045776, -0.375031>,  <1.179099, 4.143908, -0.749208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.280891, 4.045776, -0.375031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963807, -0.143823, 0.224478,
		0.079469, -0.958713, -0.273046,
		0.254480, -0.245324, 0.935444,
		1.357236, 3.972178, -0.094398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.801034, 3.521468, -0.667487>,  <1.179099, 4.143908, -0.749208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.801034, 3.521468, -0.667487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.878927, 3.693237, -0.314743>,  <0.925663, 3.796299, -0.103097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.878927, 3.693237, -0.314743>,  <0.801034, 3.521468, -0.667487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.878927, 3.693237, -0.314743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900363, -0.278428, 0.334400,
		0.389134, -0.859112, 0.332418,
		0.194733, 0.429424, 0.881859,
		0.937347, 3.822064, -0.050185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
