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
	<0.719812, 1.024182, 1.334491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.858707, 1.337563, 1.128334>,  <0.942045, 1.525591, 1.004640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.858707, 1.337563, 1.128334>,  <0.719812, 1.024182, 1.334491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.858707, 1.337563, 1.128334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603098, 0.234296, 0.762482,
		0.718122, -0.575595, -0.391141,
		0.347238, 0.783451, -0.515393,
		0.962879, 1.572598, 0.973716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.470743, 1.031676, 1.132432>,  <0.719812, 1.024182, 1.334491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.470743, 1.031676, 1.132432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.318111, 1.396111, 1.194809>,  <1.226532, 1.614771, 1.232235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.318111, 1.396111, 1.194809>,  <1.470743, 1.031676, 1.132432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.318111, 1.396111, 1.194809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540532, 0.083087, 0.837210,
		0.749814, 0.403755, -0.524176,
		-0.381580, 0.911086, 0.155943,
		1.203637, 1.669436, 1.241592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.939757, 1.584488, 1.255704>,  <1.470743, 1.031676, 1.132432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.939757, 1.584488, 1.255704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.606262, 1.682213, 1.453773>,  <1.406165, 1.740847, 1.572615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.606262, 1.682213, 1.453773>,  <1.939757, 1.584488, 1.255704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.606262, 1.682213, 1.453773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539759, 0.171596, 0.824145,
		0.116378, 0.954393, -0.274935,
		-0.833736, 0.244311, 0.495173,
		1.356141, 1.755506, 1.602325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.177046, 2.016058, 1.688030>,  <1.939757, 1.584488, 1.255704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.177046, 2.016058, 1.688030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.845299, 1.880966, 1.866058>,  <1.646250, 1.799911, 1.972875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.845299, 1.880966, 1.866058>,  <2.177046, 2.016058, 1.688030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.845299, 1.880966, 1.866058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368206, 0.268736, 0.890059,
		-0.420205, 0.902064, -0.098527,
		-0.829368, -0.337729, 0.445070,
		1.596488, 1.779647, 1.999579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.942216, 2.588698, 2.107014>,  <2.177046, 2.016058, 1.688030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.942216, 2.588698, 2.107014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.791069, 2.252373, 2.262062>,  <1.700381, 2.050577, 2.355091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.791069, 2.252373, 2.262062>,  <1.942216, 2.588698, 2.107014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.791069, 2.252373, 2.262062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313204, 0.277892, 0.908118,
		-0.871275, 0.464552, 0.158340,
		-0.377866, -0.840814, 0.387620,
		1.677709, 2.000129, 2.378348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.486151, 2.867029, 2.637886>,  <1.942216, 2.588698, 2.107014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.486151, 2.867029, 2.637886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.581753, 2.482964, 2.695797>,  <1.639114, 2.252524, 2.730544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.581753, 2.482964, 2.695797>,  <1.486151, 2.867029, 2.637886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.581753, 2.482964, 2.695797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185088, 0.191414, 0.963900,
		-0.953215, -0.203580, 0.223464,
		0.239005, -0.960165, 0.144778,
		1.653454, 2.194914, 2.739230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.070413, 2.706804, 3.253284>,  <1.486151, 2.867029, 2.637886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.070413, 2.706804, 3.253284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.380550, 2.454750, 3.236427>,  <1.566633, 2.303518, 3.226314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.380550, 2.454750, 3.236427>,  <1.070413, 2.706804, 3.253284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.380550, 2.454750, 3.236427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284080, 0.288393, 0.914400,
		-0.564041, -0.720945, 0.402612,
		0.775342, -0.630134, -0.042141,
		1.613153, 2.265710, 3.223785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.076185, 2.362868, 3.891793>,  <1.070413, 2.706804, 3.253284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.076185, 2.362868, 3.891793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.442310, 2.333771, 3.733345>,  <1.661985, 2.316313, 3.638276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.442310, 2.333771, 3.733345>,  <1.076185, 2.362868, 3.891793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.442310, 2.333771, 3.733345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394968, 0.354473, 0.847555,
		0.078761, -0.932232, 0.353185,
		0.915313, -0.072742, -0.396121,
		1.716904, 2.311948, 3.614509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.981270, 3.183027, 4.463670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.347976, 3.036392, 4.400230>,  <2.568000, 2.948411, 4.362167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.347976, 3.036392, 4.400230>,  <1.981270, 3.183027, 4.463670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.347976, 3.036392, 4.400230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336290, -0.494154, -0.801699,
		0.215520, 0.788305, -0.576303,
		0.916766, -0.366588, -0.158599,
		2.623006, 2.926416, 4.352651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.189686, 3.244854, 3.750617>,  <1.981270, 3.183027, 4.463670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.189686, 3.244854, 3.750617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387158, 2.930115, 3.898750>,  <2.505642, 2.741271, 3.987631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387158, 2.930115, 3.898750>,  <2.189686, 3.244854, 3.750617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.387158, 2.930115, 3.898750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379317, -0.578034, -0.722493,
		0.782558, 0.216207, -0.583830,
		0.493681, -0.786849, 0.370334,
		2.535263, 2.694060, 4.009851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659905, 2.889005, 3.258166>,  <2.189686, 3.244854, 3.750617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659905, 2.889005, 3.258166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.515018, 2.627922, 3.524330>,  <2.428086, 2.471272, 3.684029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.515018, 2.627922, 3.524330>,  <2.659905, 2.889005, 3.258166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.515018, 2.627922, 3.524330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476875, -0.483614, -0.733967,
		0.800868, -0.583174, -0.136086,
		-0.362218, -0.652707, 0.665412,
		2.406353, 2.432110, 3.723953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.917974, 2.182923, 3.057039>,  <2.659905, 2.889005, 3.258166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.917974, 2.182923, 3.057039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.558018, 2.193520, 3.231163>,  <2.342045, 2.199878, 3.335638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.558018, 2.193520, 3.231163>,  <2.917974, 2.182923, 3.057039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.558018, 2.193520, 3.231163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394196, -0.476409, -0.785903,
		0.186567, -0.878824, 0.439159,
		-0.899890, 0.026491, 0.435311,
		2.288051, 2.201467, 3.361756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.608474, 1.495926, 3.011956>,  <2.917974, 2.182923, 3.057039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.608474, 1.495926, 3.011956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.300320, 1.738380, 3.091057>,  <2.115428, 1.883853, 3.138517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.300320, 1.738380, 3.091057>,  <2.608474, 1.495926, 3.011956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.300320, 1.738380, 3.091057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586737, -0.552619, -0.591905,
		-0.249494, -0.572023, 0.781372,
		-0.770385, 0.606137, 0.197752,
		2.069205, 1.920222, 3.150382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.961617, 1.017212, 3.098221>,  <2.608474, 1.495926, 3.011956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.961617, 1.017212, 3.098221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.825383, 1.382599, 3.009155>,  <1.743643, 1.601831, 2.955716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.825383, 1.382599, 3.009155>,  <1.961617, 1.017212, 3.098221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825383, 1.382599, 3.009155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593549, -0.392560, -0.702564,
		-0.729179, -0.107120, 0.675888,
		-0.340585, 0.913467, -0.222665,
		1.723208, 1.656639, 2.942356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.246611, 0.917424, 2.949068>,  <1.961617, 1.017212, 3.098221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.246611, 0.917424, 2.949068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.364348, 1.250931, 2.762222>,  <1.434989, 1.451035, 2.650115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.364348, 1.250931, 2.762222>,  <1.246611, 0.917424, 2.949068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.364348, 1.250931, 2.762222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631340, -0.197299, -0.749988,
		-0.717477, 0.515660, 0.468318,
		0.294340, 0.833767, -0.467114,
		1.452650, 1.501061, 2.622088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.607539, 1.295389, 2.696779>,  <1.246611, 0.917424, 2.949068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.607539, 1.295389, 2.696779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.904271, 1.419838, 2.459160>,  <1.082310, 1.494507, 2.316589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.904271, 1.419838, 2.459160>,  <0.607539, 1.295389, 2.696779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.904271, 1.419838, 2.459160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597512, -0.095466, -0.796156,
		-0.304414, 0.945563, 0.115081,
		0.741830, 0.311123, -0.594047,
		1.126819, 1.513175, 2.280946>
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
