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
	<0.724430, 0.951091, 3.353385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.675409, 1.068130, 2.974045>,  <0.645997, 1.138354, 2.746441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.675409, 1.068130, 2.974045>,  <0.724430, 0.951091, 3.353385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.675409, 1.068130, 2.974045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403745, 0.858211, 0.316961,
		0.906626, 0.421736, 0.012961,
		-0.122551, 0.292598, -0.948350,
		0.638644, 1.155910, 2.689540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.078134, 1.569132, 3.312018>,  <0.724430, 0.951091, 3.353385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.078134, 1.569132, 3.312018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.785612, 1.598469, 3.040779>,  <0.610099, 1.616071, 2.878036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.785612, 1.598469, 3.040779>,  <1.078134, 1.569132, 3.312018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.785612, 1.598469, 3.040779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061454, 0.983072, 0.172603,
		0.679277, 0.167898, -0.714418,
		-0.731305, 0.073341, -0.678096,
		0.566221, 1.620471, 2.837350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.239195, 2.157367, 2.855449>,  <1.078134, 1.569132, 3.312018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.239195, 2.157367, 2.855449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.850727, 2.072224, 2.898384>,  <0.617646, 2.021138, 2.924145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.850727, 2.072224, 2.898384>,  <1.239195, 2.157367, 2.855449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.850727, 2.072224, 2.898384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194639, 0.967981, 0.158521,
		-0.137643, 0.133058, -0.981504,
		-0.971169, -0.212859, 0.107338,
		0.559376, 2.008366, 2.930585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.771051, 2.570960, 2.386835>,  <1.239195, 2.157367, 2.855449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.771051, 2.570960, 2.386835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.627697, 2.461315, 2.743805>,  <0.541685, 2.395529, 2.957987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.627697, 2.461315, 2.743805>,  <0.771051, 2.570960, 2.386835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.627697, 2.461315, 2.743805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000468, 0.955871, 0.293786,
		-0.933574, 0.105706, -0.342442,
		-0.358385, -0.274111, 0.892425,
		0.520181, 2.379082, 3.011533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.196625, 3.014388, 2.496155>,  <0.771051, 2.570960, 2.386835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.196625, 3.014388, 2.496155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.372044, 2.872879, 2.826614>,  <0.477295, 2.787974, 3.024890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.372044, 2.872879, 2.826614>,  <0.196625, 3.014388, 2.496155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.372044, 2.872879, 2.826614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021012, 0.914975, 0.402962,
		-0.898463, -0.194077, 0.393826,
		0.438546, -0.353772, 0.826149,
		0.503608, 2.766747, 3.074459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.094911, 3.361929, 2.985679>,  <0.196625, 3.014388, 2.496155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.094911, 3.361929, 2.985679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.226154, 3.212238, 3.171448>,  <0.418793, 3.122424, 3.282909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.226154, 3.212238, 3.171448>,  <-0.094911, 3.361929, 2.985679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.226154, 3.212238, 3.171448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137991, 0.874056, 0.465817,
		-0.580251, -0.309808, 0.753211,
		0.802662, -0.374227, 0.464421,
		0.466953, 3.099970, 3.310774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.124701, 3.699196, 3.689436>,  <-0.094911, 3.361929, 2.985679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.124701, 3.699196, 3.689436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.265295, 3.614754, 3.661636>,  <0.499292, 3.564088, 3.644956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.265295, 3.614754, 3.661636>,  <-0.124701, 3.699196, 3.689436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.265295, 3.614754, 3.661636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222045, 0.938735, 0.263578,
		0.009599, -0.272418, 0.962131,
		0.974990, -0.211106, -0.069500,
		0.557792, 3.551422, 3.640786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.175815, 4.057370, 4.248352>,  <-0.124701, 3.699196, 3.689436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.175815, 4.057370, 4.248352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.487068, 3.975452, 4.010841>,  <0.673820, 3.926302, 3.868335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.487068, 3.975452, 4.010841>,  <0.175815, 4.057370, 4.248352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.487068, 3.975452, 4.010841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472401, 0.813840, 0.338380,
		0.413941, -0.543805, 0.730021,
		0.778132, -0.204794, -0.593776,
		0.720508, 3.914014, 3.832709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.619373, 5.042590, 3.858249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.012207, 4.986397, 3.808014>,  <1.247908, 4.952681, 3.777873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.012207, 4.986397, 3.808014>,  <0.619373, 5.042590, 3.858249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.012207, 4.986397, 3.808014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163517, -0.966577, -0.197464,
		-0.093651, 0.214462, -0.972232,
		0.982085, -0.140484, -0.125589,
		1.306833, 4.944252, 3.770337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.706256, 4.645337, 3.255377>,  <0.619373, 5.042590, 3.858249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.706256, 4.645337, 3.255377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.993481, 4.597527, 3.529633>,  <1.165815, 4.568841, 3.694186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.993481, 4.597527, 3.529633>,  <0.706256, 4.645337, 3.255377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.993481, 4.597527, 3.529633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168708, -0.985654, 0.004860,
		0.675223, -0.119163, -0.727925,
		0.718061, -0.119525, 0.685640,
		1.208899, 4.561669, 3.735324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.261504, 4.357758, 2.930602>,  <0.706256, 4.645337, 3.255377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.261504, 4.357758, 2.930602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.228554, 4.276665, 3.320908>,  <1.208783, 4.228009, 3.555091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.228554, 4.276665, 3.320908>,  <1.261504, 4.357758, 2.930602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.228554, 4.276665, 3.320908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130898, -0.968408, -0.212255,
		0.987968, -0.145210, 0.053237,
		-0.082376, -0.202733, 0.975763,
		1.203841, 4.215845, 3.613636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.792499, 3.762824, 3.129757>,  <1.261504, 4.357758, 2.930602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.792499, 3.762824, 3.129757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.461239, 3.778305, 3.353424>,  <1.262483, 3.787594, 3.487624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.461239, 3.778305, 3.353424>,  <1.792499, 3.762824, 3.129757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.461239, 3.778305, 3.353424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198385, -0.953276, -0.227835,
		0.524223, -0.299612, 0.797134,
		-0.828151, 0.038703, 0.559168,
		1.212794, 3.789916, 3.521174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.816758, 3.225923, 3.461117>,  <1.792499, 3.762824, 3.129757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.816758, 3.225923, 3.461117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.430790, 3.319427, 3.508926>,  <1.199209, 3.375530, 3.537612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.430790, 3.319427, 3.508926>,  <1.816758, 3.225923, 3.461117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.430790, 3.319427, 3.508926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225414, -0.971028, 0.079335,
		0.134605, 0.049609, 0.989657,
		-0.964919, 0.233761, 0.119523,
		1.141314, 3.389556, 3.544783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.477143, 2.738929, 3.967898>,  <1.816758, 3.225923, 3.461117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.477143, 2.738929, 3.967898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.174217, 2.864441, 3.738808>,  <0.992462, 2.939748, 3.601353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.174217, 2.864441, 3.738808>,  <1.477143, 2.738929, 3.967898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.174217, 2.864441, 3.738808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377549, -0.925955, -0.008071,
		-0.532851, 0.210120, 0.819706,
		-0.757315, 0.313780, -0.572727,
		0.947023, 2.958575, 3.566990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.967226, 2.441631, 4.216840>,  <1.477143, 2.738929, 3.967898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.967226, 2.441631, 4.216840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.827484, 2.535469, 3.853981>,  <0.743639, 2.591772, 3.636266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.827484, 2.535469, 3.853981>,  <0.967226, 2.441631, 4.216840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.827484, 2.535469, 3.853981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385547, -0.918384, -0.089021,
		-0.853994, 0.318648, 0.411288,
		-0.349354, 0.234595, -0.907148,
		0.722678, 2.605848, 3.581837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.327157, 2.216009, 4.227776>,  <0.967226, 2.441631, 4.216840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.327157, 2.216009, 4.227776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.405376, 2.226265, 3.835632>,  <0.452308, 2.232419, 3.600346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.405376, 2.226265, 3.835632>,  <0.327157, 2.216009, 4.227776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.405376, 2.226265, 3.835632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349405, -0.932237, -0.094076,
		-0.916339, 0.360939, -0.173338,
		0.195548, 0.025641, -0.980359,
		0.464041, 2.233957, 3.541525>
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
